/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.sql.*;

public class conexionOracle {

    private final Connection link;
    
    /**
     * Establece la conexión con el servidor
     *
     * @throws SQLException Exception si ocurre cualquier anormalidad
     */

    public conexionOracle() throws SQLException {
        link = DriverManager.getConnection("jdbc:oracle:thin:@172.17.20.75:1521:rabida", "DDSI_003", "DDSI_003");
    }
    
    public conexionOracle(String usuario, String contraseña) throws SQLException {
        link = DriverManager.getConnection("jdbc:oracle:thin:@172.17.20.75:1521:rabida", usuario, contraseña);
    }

    /**
     * Implementa la desconexión con el servidor
     *
     * @throws SQLException si ocurre cualquier anormalidad
     */
    
    public void DesconexionOracle() throws SQLException {
        link.close();
    }

    public DatabaseMetaData informacionBD() throws SQLException {
        return link.getMetaData();
    }
    
     /**
     * Devuelve la propiedad Connection
     *
     * @return link
     */
    
    public Connection getConexionOracle() {
        return link;
    }
    
    /**
     * Inicia una transacción
     *
     * @throws SQLException si ocurre cualquier anormalidad
     */
    
    public void inicioTransaccion() throws SQLException {
        link.setAutoCommit(false);
    }
    
    /**
     * Finaliza una transacción con commint
     *
     * @throws SQLException si ocurre cualquier anormalidad
     */

    public void finTransaccionCommit() throws SQLException {
        link.commit();
        link.setAutoCommit(true);
    }
    
    /**
     * Finaliza una transacción con rollback
     *
     * @throws SQLException si ocurre cualquier anormalidad
     */

    public void finTransaccionRollback() throws SQLException {
        link.rollback();
        link.setAutoCommit(true);
    }
}