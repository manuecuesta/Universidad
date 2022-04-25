/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.daw.practica5;

import Servlets.articulo;
import Servlets.registrar;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Manuel
 */
public final class Articulos {

    String creador;
    String titulo;
    String texto;
    String Imagen;
    String categoria;
    int id;
    Date fecha;

    public Articulos() {
        super();
    }

    public Articulos(int id, String creador, String titulo, String texto, String imagen, String categoria, Date fecha) {
        setId(id);
        setCreador(creador);
        setTitulo(titulo);
        setTexto(texto);
        setImagen(imagen);
        setCategoria(categoria);
        setFecha(fecha);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCreador() {
        return creador;
    }

    public void setCreador(String creador) {
        this.creador = creador;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public ArrayList<Articulos> devolver(String tipo) throws SQLException {

        ArrayList<Articulos> articulos = new ArrayList<Articulos>();
        Conexion con;
        PreparedStatement ps = null;
        con = new Conexion();
        switch (tipo) {
            case "TODOS":
                ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS");
                break;
            case "F1":
                ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS WHERE CATEGORIA LIKE 'F1'");
                break;
            case "F2":
                ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS WHERE CATEGORIA LIKE 'F2'");
                break;
            case "COCHESCALLE":
                ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS WHERE CATEGORIA LIKE 'COCHESCALLE'");
                break;
            case "OTROS":
                ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS WHERE CATEGORIA LIKE 'OTROS'");
                break;
        }

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            articulos.add(new Articulos(rs.getInt("ID"), rs.getString("CREADOR"), rs.getString("TITULO"), rs.getString("TEXTO"), rs.getString("IMAGEN"), rs.getString("CATEGORIA"), rs.getDate("FECHA")));
        }
        ps.close();
        con.Desconexion();

        return articulos;

    }

    public Articulos getarticulo(int id) throws SQLException {

        ArrayList<Articulos> articulos = new ArrayList<Articulos>();
        Conexion con;
        PreparedStatement ps = null;
        con = new Conexion();
        ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS WHERE ID = ?");
        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();
        Articulos art = null;

        if (rs.next()) {
            art = new Articulos(rs.getInt("ID"), rs.getString("CREADOR"), rs.getString("TITULO"), rs.getString("TEXTO"), rs.getString("IMAGEN"), rs.getString("CATEGORIA"), rs.getDate("FECHA"));
        }

        ps.close();
        con.Desconexion();

        return art;

    }

    public ArrayList<Articulos> devolvercuenta1(String mail) throws SQLException {

        ArrayList<Articulos> articulos = new ArrayList<Articulos>();

        Conexion con;
        PreparedStatement ps = null;
        con = new Conexion();
        ps = con.getConexion().prepareStatement("SELECT * FROM ARTICULOS WHERE CREADOR like ?");
        ps.setString(1, mail);

        ResultSet rs = ps.executeQuery();
        Articulos art = null;

        if (rs.next()) {
            art = new Articulos(rs.getInt("ID"), rs.getString("CREADOR"), rs.getString("TITULO"), rs.getString("TEXTO"), rs.getString("IMAGEN"), rs.getString("CATEGORIA"), rs.getDate("FECHA"));
            articulos.add(art);
        }

        ps.close();
        con.Desconexion();

        return articulos;

    }

    public boolean subirarticulo(String creador, String path, String titulo, String categoria, String texto, String filename) {
        PreparedStatement ps = null;
        Conexion con;

        String x = this.getClass().getResource("").getPath();

        String[] f = x.split("Proyecto_DAW/");
        x = f[0] + "Proyecto_DAW/web/images";
        
        File directorio = new File(x + "/articulos_images/" + creador);

        if (!directorio.exists()) {
            directorio.mkdirs();
        }

        try {

            con = new Conexion();

            String localizacion = null;

            ps = con.getConexion().prepareStatement("INSERT INTO ARTICULOS (CREADOR, TITULO, TEXTO, FECHA, IMAGEN, CATEGORIA) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, creador);
            ps.setString(2, titulo);
            ps.setString(3, texto);
            ps.setString(5, x + "/articulos_images/" + creador + "/" + filename);
            ps.setString(6, categoria);

            Timestamp tiempo = new Timestamp(System.currentTimeMillis());
            ps.setTimestamp(4, tiempo);

            ps.executeUpdate();
            ps.close();

            con.Desconexion();
            
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(articulo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
