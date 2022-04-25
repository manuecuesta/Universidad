/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.daw.practica5;

import Servlets.registrar;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
public class Eliminarbd {
    
    public boolean eliminararticulo(String id1) {
        
        PreparedStatement ps = null;

        Conexion con;
        try {
            con = new Conexion();

            ps = con.getConexion().prepareStatement("DELETE FROM ARTICULOS WHERE ID = ?");           
            int id = Integer.parseInt(id1);
            ps.setInt(1, id);
            ps.executeUpdate();
            
            ps = con.getConexion().prepareStatement("DELETE FROM FAV WHERE ARTICULO = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
            
            ps = con.getConexion().prepareStatement("DELETE FROM COMENTARIOS WHERE ARTICULO = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
            
            ps.close();

            con.Desconexion();
            
            return true;
            

        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
        
    }
    
    public boolean eliminarfav(int id, String correo) {
        
        PreparedStatement ps = null;

        Conexion con;
        try {
            con = new Conexion();

            ps = con.getConexion().prepareStatement("DELETE FROM FAV WHERE ARTICULO = ? AND USUARIO LIKE ?");
            ps.setInt(1, id);
            ps.setString(2, correo);
            ps.executeUpdate();
            ps.close();

            con.Desconexion();
            
            return true;
            

        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
        
    }
    
}
