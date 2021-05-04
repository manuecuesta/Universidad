package Persistencia;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import javax.swing.JOptionPane;

public class manejaCaso {

    conexionOracle conexion = null;
    boolean con;

    PreparedStatement ps = null;

    /**
     * Implementa operaciones sobre la tabla CASO
     *
     * @param c conexión con Oracle
     */
    public manejaCaso(conexionOracle c) {
        if (c == null) {
            JOptionPane.showMessageDialog(null, "No estas conectado a la base de datos", "ERROR!", JOptionPane.ERROR_MESSAGE);
            con = true;
        } else {
            conexion = c;
        }
    }

    /**
     * Comprueba si existe un caso en la tabla de CASO_POLICIAL dado un código
     * de caso
     *
     * @param codCaso código del caso a buscar
     * @throws SQLException si ocurre alguna anomalía
     */
    public boolean existeCaso(String codCaso) throws SQLException {
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT CODCASO FROM CASO_POLICIAL WHERE CODCASO=?");
            ps.setString(1, codCaso);
            ResultSet rs = ps.executeQuery();
            boolean existe = rs.next();
            ps.close();
            return existe;
        }
        return false;
    }

    /**
     * Inserta caso en la tabla de CASO_POLICIAL
     *
     * @param cs caso a insertar
     * @throws SQLException si ocurre alguna anomalía
     */
    public void insertaCaso(caso cs) throws SQLException {
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("INSERT INTO CASO_POLICIAL VALUES (?,?,?,?)");
            ps.setString(1, cs.getCodCaso());
            ps.setString(2, cs.getNombre());
            ps.setString(3, cs.getFechaInicio());
            ps.setString(4, cs.getFechaFin());
            ps.executeUpdate();
            ps.close();
        }
    }

    /**
     * Devuelve la lista de Casos sin filtrar
     *
     * @return Lista de Casos
     * @throws SQLException si ocurre alguna anomalía
     */
    public ArrayList<caso> listacasos() throws SQLException {

        ArrayList<caso> array = new ArrayList();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM CASO_POLICIAL");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                array.add(new caso(rs.getString("CODCASO"), rs.getString("NOMBRE"), rs.getString("FECHA_INICIO"), rs.getString("FECHA_FIN")));
            }
            ps.close();
            return array;
        }
        return null;

    }

    /**
     * Elimina un Caso por su Código
     *
     * @param cod Código del Caso a eliminar
     * @throws SQLException si ocurre alguna anomalía
     */
    public void elimnarcaso(String cod) throws SQLException {
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("DELETE FROM CASO_POLICIAL WHERE CODCASO = ?");
            ps.setString(1, cod);
            ps.executeUpdate();
            ps.close();
        }
    }

    public ArrayList<caso> casofinalizado(String fecha) throws SQLException, ParseException {

        ArrayList<caso> array = new ArrayList();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM CASO_POLICIAL");

            ResultSet rs = ps.executeQuery();

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");

            Date convertido = formato.parse(fecha);
            Date fin = null;
            Date inicio = null;
            while (rs.next()) {
                String fecha1 = rs.getString("FECHA_FIN");
                String fecha2 = rs.getString("FECHA_INICIO");
                Calendar calendar1 = Calendar.getInstance();
                calendar1.setTime(convertido);

                if (fecha1 != null) {
                    fin = formato.parse(fecha1);
                    inicio = formato.parse(fecha2);
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(inicio);

                    System.out.println(calendar.get(Calendar.YEAR));

                    if (calendar.get(Calendar.YEAR) == calendar1.get(Calendar.YEAR)) {
                        array.add(new caso(rs.getString("CODCASO"), rs.getString("NOMBRE"), rs.getString("FECHA_INICIO"), rs.getString("FECHA_FIN")));
                    }
                }
            }
            ps.close();
            return array;
        }
        return null;
    }

    public ArrayList<caso> casofinalizadonada() throws SQLException, ParseException {

        ArrayList<caso> array = new ArrayList();
        if (!con) {
            ps = conexion.getConexionOracle().prepareStatement("SELECT * FROM CASO_POLICIAL");

            ResultSet rs = ps.executeQuery();

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");

            Date fin = null;
            while (rs.next()) {
                if (rs.getString("FECHA_FIN") != null) {
                    String fecha1 = rs.getString("FECHA_FIN");
                    if (fecha1 != null) {
                        array.add(new caso(rs.getString("CODCASO"), rs.getString("NOMBRE"), rs.getString("FECHA_INICIO"), rs.getString("FECHA_FIN")));
                    }
                }
            }

            ps.close();
            return array;
        }
        return null;
    }

}
