/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.daw.practica5;

import Servlets.registrar;
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
public class Favoritos {

    int art = 0;

    public Favoritos() {

    }

    public Favoritos(int articulo) {
        this.art = articulo;
    }

    public int getArt() {
        return art;
    }

    public void setArt(int art) {
        this.art = art;
    }

    public ArrayList<Favoritos> devolver(String nombre) {
        ArrayList<Favoritos> fav = new ArrayList<Favoritos>();
        try {

            Conexion con;
            PreparedStatement ps = null;
            con = new Conexion();
            ps = con.getConexion().prepareStatement("SELECT * FROM FAV WHERE USUARIO LIKE ?");
            ps.setString(1, nombre);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                fav.add(new Favoritos(rs.getInt("ARTICULO")));
            }

            ps.close();
            con.Desconexion();

            return fav;
        } catch (SQLException ex) {
            Logger.getLogger(Favoritos.class.getName()).log(Level.SEVERE, null, ex);
        }

        return fav;

    }

    public ArrayList<Articulos> devolverlista(String nombre) throws SQLException {

        ArrayList<Favoritos> fav;
        fav = devolver(nombre);
        ArrayList<Articulos> articulos = new ArrayList<>();
        Articulos art = new Articulos();
        for (int i = 0; i < fav.size(); i++) {
            articulos.add(art.getarticulo(fav.get(i).getArt()));
        }

        return articulos;

    }

    public boolean anadirfav(String usuario, int id) {
        PreparedStatement ps = null;

        Conexion con;
        try {
            con = new Conexion();
            ps = con.getConexion().prepareStatement("SELECT COUNT(*) AS CANTIDAD FROM FAV WHERE USUARIO LIKE ? AND ARTICULO = ?");


            ps.setString(1, usuario);
            ps.setInt(2, id);
            ResultSet rs = ps.executeQuery();
            int cantidad = 0;
            while (rs.next()) {
                cantidad = rs.getInt("CANTIDAD");
            }

            ps.close();
            if (cantidad == 0) {
                ps = con.getConexion().prepareStatement("INSERT INTO FAV (USUARIO, ARTICULO) VALUES (?, ?)");

                ps.setString(1, usuario);
                ps.setInt(2, id);

                ps.executeUpdate();
                ps.close();
                
                con.Desconexion();
                return true;
            }
            con.Desconexion();
        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

}
