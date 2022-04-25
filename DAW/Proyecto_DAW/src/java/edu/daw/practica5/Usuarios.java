/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.daw.practica5;

import Servlets.login;
import Servlets.registrar;
import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author usuario
 */
@Entity
public class Usuarios implements Serializable {
    

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String nombre;
    private String correo;
 

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuarios)) {
            return false;
        }
        Usuarios other = (Usuarios) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.daw.practica5.Usuarios[ id=" + id + " ]";
    }
    
    void setNombre(String name) {
        this.nombre=name;
    }

    void setCorreo(String email) {
        this.correo=email;
    }
 /*   
     public void insertaExperto(experto exp) throws SQLException {
        if (!con) {
            System.out.println("Insertando datos");
            ps = conexion.getConexionOracle().prepareStatement("INSERT INTO EXPERTO (CODEXPERTO, NOMBRE, PAIS, SEXO, ESPECIALIDAD) VALUES (?,?,?,?,?)");
            ps.setString(1, exp.getCodExperto());
            ps.setString(2, exp.getNombre());
            ps.setString(3, exp.getPais());
            ps.setString(4, exp.getSexo());
            ps.setString(5, exp.getEspecialidad());
            ps.executeUpdate();
            ps.close();
        }
    }*/
    
     PreparedStatement ps = null;
     
    public void add_usuario(String nombre, String edad, Conexion con) throws SQLException {
        ps = con.getConexion().prepareStatement("INSERT INTO USUARIOS (NOMBRE, EDAD) VALUES (?,?)");
        ps.setString(1, nombre);
        ps.setString(2, edad);
        ps.executeUpdate();
        ps.close();
    }
    
    public boolean registrarusuario(String nombre, String direccion, String mail, String contraseñacifrada, String cp, String telefono) {
        PreparedStatement ps = null;

        Conexion con;
        try {
            con = new Conexion();
            ps = con.getConexion().prepareStatement("SELECT COUNT(*) AS CANTIDAD FROM USUARIOS WHERE CORREO LIKE ?");
            
            ps.setString(1, mail);
            ResultSet rs = ps.executeQuery();
            int cantidad=0;
            if (rs.next()) {
                cantidad = rs.getInt("CANTIDAD");
            }
            
            ps.close();
            if (cantidad == 0) {
                
                ps = con.getConexion().prepareStatement("INSERT INTO USUARIOS (NOMBRE, CORREO, PASSWORD, DIRECCION, CP, TELEFONO) VALUES (?, ?, ?, ?, ?, ?)");
                Cifrado cifrado = new Cifrado();
                ps.setString(1, nombre);
                ps.setString(2, mail);
                ps.setString(3, contraseñacifrada);
                ps.setString(4, direccion);
                ps.setString(5, cp);
                ps.setString(6, telefono);
                ps.executeUpdate();
                ps.close();
                
                con.Desconexion();
                return true;
            } else {
                con.Desconexion();
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean loguearusuario(String correo, String pass) {
        
        try {
                Conexion con;
                PreparedStatement ps = null;
                con = new Conexion();
                ps = con.getConexion().prepareStatement("SELECT * FROM USUARIOS WHERE CORREO like ?");
                ps.setString(1, correo);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    String password = rs.getString("PASSWORD");
                    Cifrado cifrar=new Cifrado();
                    ps.close();
                    if (cifrar.descifrar(pass, password)==true) {
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } catch (SQLException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return false;
        
    }
    
    
}
