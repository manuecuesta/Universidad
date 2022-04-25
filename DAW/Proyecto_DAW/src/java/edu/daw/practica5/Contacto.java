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

/**
 *
 * @author Manuel
 */
public class Contacto {
    
    public boolean anadirinfo(String nombre, String mail, String mensaje, String tel, String asunto) {
        PreparedStatement ps = null;

        Conexion con;
        try {
            con = new Conexion();
            
            ps = con.getConexion().prepareStatement("INSERT INTO CONTACTO (NOMBRE, MAIL, MENSAJE, TELEFONO, ASUNTO) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, mail);
            ps.setString(3, mensaje);
            ps.setString(4, tel);
            ps.setString(5, asunto);
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
