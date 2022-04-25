/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.daw.practica5;

import Servlets.cambiarnombre;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
public class Cambiar {
    
    public boolean cambiarnombre(String nuevo, String correo) {
        
        try {
            Conexion con;
            PreparedStatement ps = null;
            con = new Conexion();
            ps = con.getConexion().prepareStatement("UPDATE USUARIOS SET NOMBRE=? WHERE CORREO like ?");
            ps.setString(1, nuevo);
            ps.setString(2, correo);
            ps.execute();
            
            ps.close();
            con.Desconexion();
            
            return true;
            
        }   catch (SQLException ex) {
            Logger.getLogger(cambiarnombre.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
        
    }
    
    public boolean cambiarpass(String nueva, String correo) {
        
        try {
            Conexion con;
            PreparedStatement ps = null;
            con = new Conexion();
            ps = con.getConexion().prepareStatement("UPDATE USUARIOS SET PASSWORD=? WHERE CORREO like ?");
            String pass;
            Cifrado cif = new Cifrado();
            pass = cif.cifrar(nueva);
            ps.setString(1, pass);
            ps.setString(2, correo);
            ps.execute();
            
            ps.close();
            con.Desconexion();
            
            return true;
        
        }   catch (SQLException ex) {
            Logger.getLogger(cambiarnombre.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
        
    }
    
    public boolean cambiarcorreo(String nuevo, String correo) {
        try {
            Conexion con;
            PreparedStatement ps = null;
            con = new Conexion();
            ps = con.getConexion().prepareStatement("UPDATE USUARIOS SET CORREO=? WHERE CORREO like ?");
            ps.setString(1, nuevo);
            ps.setString(2, correo);
            ps.execute();
            
            ps.close();
            con.Desconexion();
            
            return true;
            
        }   catch (SQLException ex) {
            Logger.getLogger(cambiarnombre.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
        
    }
    
}
