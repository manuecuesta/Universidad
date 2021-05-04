package Persistencia;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import oracle.jdbc.OracleTypes;

public class manejaColabora {

    conexionOracle conexion = null;
    boolean con = false;

    PreparedStatement ps = null;

    /**
     * Implementa operaciones sobre la tabla COLABORA
     *
     * @param c conexión con Oracle
     */
    public manejaColabora(conexionOracle c) {
        if (c == null) {
            JOptionPane.showMessageDialog(null, "No estas conectado a la base de datos", "ERROR!", JOptionPane.ERROR_MESSAGE);
            con = true;
        } else {
            conexion = c;
        }
    }

    /**
     * Comprueba si existe una colaboración en la tabla de COLABORA dado su
     * código
     *
     * @param codExperto, codCaso caso
     * @throws SQLException si ocurre alguna anomalía
     */
    public boolean existeColaboracion(String codExperto, String codCaso) throws SQLException {
        boolean existe = false;
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT CODEXPERTO, CODCASO FROM COLABORA WHERE CODEXPERTO=? CODCASO=?");
            ps.setString(1, codExperto);
            ps.setString(2, codCaso);
            ResultSet rs = ps.executeQuery();
            existe = rs.next();
            ps.close();
        }
        return existe;
    }

    /**
     * Inserta una colaboración en la tabla COLABORA
     *
     * @param col
     * @throws SQLException si ocurre alguna anomalía
     */
    public void insertaColaboracion(colabora col) throws SQLException {
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("INSERT INTO COLABORA VALUES (?,?,?,?)");
            System.out.println(col.getCodCaso());
            ps.setString(1, col.getCodExperto());
            ps.setString(2, col.getCodCaso());
            ps.setString(3, col.getFecha());
            ps.setString(4, col.getDescripcionColaboracion());
            ps.executeUpdate();
            ps.close();
        }
    }

    /**
     * Devuelve la lista de las Colaboraciones filtradas por Experto
     *
     * @param codexperto Código de Experto para filtrar
     * @return Lista de Colaboraciones
     * @throws SQLException
     */
    public ArrayList<colabora> listaColaboraPorExperto(String codexperto) throws SQLException {
        ArrayList<colabora> lista = new ArrayList<>();
        if (!con) {

            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM COLABORA WHERE CODEXPERTO=?");
            ps.setString(1, codexperto);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                lista.add(new colabora(rs.getString("CODEXPERTO"), rs.getString("CODCASO"), rs.getString("FECHA"), rs.getString("DESCRIPCION_COLABORACION")));
            }
            ps.close();

        }
        return lista;
    }

    /**
     * Devuelve la lista de Colaboraciones filtrada por Caso
     *
     * @param codcaso Código del Caso
     * @return Lista de Colaboraciones por Caso
     * @throws SQLException si ocurre alguna anomalía
     */
    public ResultSet listaColaboradoresPorCaso(String codcaso) throws SQLException {
        if (!con) {
            CallableStatement stmt = conexion.getConexionOracle().prepareCall("{call PCOLABORADORESCASO(?, ?)}");
            stmt.setString(1, codcaso);
            stmt.registerOutParameter(2, OracleTypes.CURSOR);
            stmt.executeUpdate();
            return (ResultSet) stmt.getObject(2);
        }
        return null;
    }

    /**
     * Devuelve la lista de Colaboraciones sin filtrar
     *
     * @return Lista de Colaboraciones
     * @throws SQLException si ocurre alguna anomalía
     */
    public ArrayList<colabora> listacolaboraciones() throws SQLException {
        ArrayList<colabora> lista = new ArrayList<>();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM COLABORA");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                lista.add(new colabora(rs.getString("CODEXPERTO"), rs.getString("CODCASO"), rs.getString("FECHA"), rs.getString("DESCRIPCION_COLABORACION")));
            }
            ps.close();
            return lista;
        }
        return null;
    }

    /**
     * Elimina una Colaboración
     *
     * @param codexperto Código del Experto
     * @param codcaso Código del Caso
     * @param fecha Fecha de la Colaboración
     * @throws SQLException si ocurre alguna anomalía
     */
    public void elimnarcolaboracion(String codexperto, String codcaso, String fecha) throws SQLException {
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("DELETE FROM COLABORA WHERE CODEXPERTO = ? AND CODCASO = ? AND FECHA = ?");
            ps.setString(1, codexperto);
            ps.setString(2, codcaso);
            ps.setString(3, fecha);
            ps.executeUpdate();
            ps.close();
        }
    }
    
    public ArrayList<colabora> ordenarcol() throws SQLException {
        ArrayList<colabora> lista = new ArrayList<>();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM COLABORA INNER JOIN EXPERTO USING(CODEXPERTO) ORDER BY ESPECIALIDAD ASC");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                lista.add(new colabora(rs.getString("CODEXPERTO"), rs.getString("CODCASO"), rs.getString("FECHA"), rs.getString("DESCRIPCION_COLABORACION")));
            }
            ps.close();
            return lista;
        }
        return null;
    }

}
