package Persistencia;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class manejaExperto {

    conexionOracle conexion = null;

    boolean con = false;

    PreparedStatement ps = null;

    /**
     * Implementa operaciones sobre la tabla EXPERTO
     *
     * @param c conexión con Oracle
     */
    public manejaExperto(conexionOracle c) {
        if (c == null) {
            JOptionPane.showMessageDialog(null, "No estas conectado a la base de datos", "ERROR!", JOptionPane.ERROR_MESSAGE);
            con = true;
        } else {
            conexion = c;
        }
    }

    /**
     * Devuelve una lista con todos los expertos cuyo país se pase por parámetro
     *
     * @param pais
     * @throws SQLException si ocurre alguna anomalía
     * @return ArrayList
     */
    public ArrayList<experto> listaExpertosPorPais(String pais) throws SQLException {
        ArrayList<experto> array = new ArrayList();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM EXPERTO WHERE PAIS=?");

            ps.setString(1, pais);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                array.add(new experto(rs.getString("CODEXPERTO"), rs.getString("NOMBRE"), rs.getString("PAIS"), rs.getString("SEXO"), rs.getString("ESPECIALIDAD")));
            }
            ps.close();
            return array;
        }
        return null;
    }

    /**
     * Comprueba si existe un experto
     *
     * @param codExperto
     * @throws SQLException si ocurre alguna anomalía
     */
    public boolean existeExperto(String codExperto) throws SQLException {
        if (!con) {

            ps = conexion.getConexionOracle().prepareStatement("SELECT CODEXPERTO FROM EXPERTO WHERE CODEXPERTO=?");
            ps.setString(1, codExperto);
            ResultSet rs = ps.executeQuery();
            boolean existe = rs.next();
            ps.close();
            return existe;
        }
        return false;
    }

    /**
     * inserta un experto
     *
     * @param exp
     * @throws SQLException si ocurre alguna anomalía
     */
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
    }

    /**
     * Devuelve una lista con todos los Expertos sin filtrar
     *
     * @return Lista de Expertos
     * @throws SQLException si ocurre alguna anomalía
     */
    public ArrayList<experto> listaExpertos() throws SQLException {

        ArrayList<experto> array = new ArrayList();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM EXPERTO");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                array.add(new experto(rs.getString("CODEXPERTO"), rs.getString("NOMBRE"), rs.getString("PAIS"), rs.getString("SEXO"), rs.getString("ESPECIALIDAD")));
            }
            ps.close();
            return array;
        }
        return null;

    }

    /**
     * Cuenta la cantidad de Expertos de un Sexo determinado
     *
     * @param sexo Sexo
     * @return Cantidad de Expertos con el Sexo especificado
     * @throws SQLException si ocurre alguna anomalía
     */
    public int sexoExperto(String sexo) throws SQLException {
        if (!con) {
            CallableStatement stmt = conexion.getConexionOracle().prepareCall("{? = call fSexoExperto(?)}");
            stmt.setString(2, sexo);
            stmt.registerOutParameter(1, Types.INTEGER);
            stmt.executeUpdate();
            int res = stmt.getInt(1);
            stmt.close();
            return res;
        }
        return 0;
    }

    /**
     * Elimina a un Experto por su Código de Experto
     *
     * @param cod Código de Experto
     * @throws SQLException si ocurre alguna anomalía
     */
    public void elimnarexp(String cod) throws SQLException {
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("DELETE FROM EXPERTO WHERE CODEXPERTO = ?");
            ps.setString(1, cod);
            ps.executeUpdate();
            ps.close();
        }
    }

}
