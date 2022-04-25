/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.daw.practica5;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Manuel
 */
public class Conexion {
    
    private final Connection link;
    
    public Conexion() throws SQLException {
        link = DriverManager.getConnection("jdbc:derby://localhost:1527/javaweb_db", "user_web", "web");
    }
    
    public void Desconexion() throws SQLException {
        link.close();
    }

    public DatabaseMetaData informacionBD() throws SQLException {
        return link.getMetaData();
    }
    
    public Connection getConexion() {
        return link;
    }
    
}
