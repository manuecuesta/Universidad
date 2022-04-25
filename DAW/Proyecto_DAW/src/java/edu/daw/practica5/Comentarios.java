/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.daw.practica5;

import Servlets.login;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
public final class Comentarios {

    int articulo;
    String comentario;
    String creador;
    Date fecha;

    public int getArticulo() {
        return articulo;
    }

    public void setArticulo(int articulo) {
        this.articulo = articulo;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getCreador() {
        return creador;
    }

    public void setCreador(String creador) {
        this.creador = creador;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Comentarios(int id, String comentario, String creador, Date fecha) {
        setArticulo(id);
        setComentario(comentario);
        setCreador(creador);
        setFecha(fecha);
    }
    public Comentarios() {
        
    }

    public ArrayList<Comentarios> leercomentarios(int id) {
        ArrayList<Comentarios> comentarios = new ArrayList<>();

        try {
            Conexion con;
            PreparedStatement ps = null;
            con = new Conexion();
            ps = con.getConexion().prepareStatement("SELECT * FROM COMENTARIOS WHERE ARTICULO = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                comentarios.add(new Comentarios(rs.getInt("ARTICULO"), rs.getString("COMENTARIO"), rs.getString("CREADOR"), rs.getDate("FECHA")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }

        return comentarios;

    }

}
