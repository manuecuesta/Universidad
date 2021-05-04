/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Aplicacion;

import Persistencia.caso;
import Persistencia.colabora;
import Persistencia.conexionOracle;
import Persistencia.experto;
import Persistencia.manejaCaso;
import Persistencia.manejaColabora;
import Persistencia.manejaExperto;
import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDateChooser;
import com.toedter.calendar.demo.DateChooserPanel;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author cuest
 */
public class gestioncompleta extends javax.swing.JFrame {

    private final conexionOracle conexion;
    private final DefaultTableModel Colaboraciones;
    private final DefaultTableModel Casos;
    private final DefaultTableModel Expertos;

    public gestioncompleta(conexionOracle conexion) throws SQLException {
        initComponents();
        setLocationRelativeTo(getParent());
        setTitle("Gestión Completa de la BD");
        this.conexion = conexion;
        Colaboraciones = new DefaultTableModel();
        Expertos = new DefaultTableModel();
        Casos = new DefaultTableModel();

        if (conexion != null) {

            colaboraciones.setModel(Colaboraciones);
            String[] nombreColumnas = {"Experto", "Caso", "Fecha", "Descripción"};
            Colaboraciones.setColumnIdentifiers(nombreColumnas);
            colaboraciones.getTableHeader().setResizingAllowed(false);

            tablacolaboraciones();

            casos.setModel(Casos);
            String[] nombreColumnas1 = {"Código", "Nombre", "Fecha de inicio", "Fecha final"};
            Casos.setColumnIdentifiers(nombreColumnas1);
            casos.getTableHeader().setResizingAllowed(false);

            tablacasos();

            experto.setModel(Expertos);
            String[] nombreColumnas2 = {"Código", "Nombre", "País", "Sexo", "Especialidad"};
            Expertos.setColumnIdentifiers(nombreColumnas2);
            experto.getTableHeader().setResizingAllowed(false);

            tablaexpertos();

            experto.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
                @Override
                public void valueChanged(ListSelectionEvent e) {
                    codexpcol.setText(experto.getSelectedRow() == -1 ? "" : (String) experto.getValueAt(experto.getSelectedRow(), 0));
                }
            });
            casos.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
                @Override
                public void valueChanged(ListSelectionEvent e) {
                    codcasocol.setText(casos.getSelectedRow() == -1 ? "" : (String) casos.getValueAt(casos.getSelectedRow(), 0));
                }
            });
        }

    }

    public void tablacasos() throws SQLException {

        manejaCaso mc = new manejaCaso(conexion);

        ArrayList<caso> casos = mc.listacasos();
        for (caso caso : casos) {
            String[] fila = {caso.getCodCaso(), caso.getNombre(), caso.getFechaInicio(), caso.getFechaFin()};
            Casos.addRow(fila);
        }

    }
    
    public void tablacasos(ArrayList<caso> c) throws SQLException {

        manejaCaso mc = new manejaCaso(conexion);

        ArrayList<caso> casos = c;
        for (caso caso : casos) {
            String[] fila = {caso.getCodCaso(), caso.getNombre(), caso.getFechaInicio(), caso.getFechaFin()};
            Casos.addRow(fila);
        }

    }

    public void tablacolaboraciones() throws SQLException {

        manejaColabora mcol = new manejaColabora(conexion);

        ArrayList<colabora> colaboraciones = mcol.listacolaboraciones();
        for (colabora colabora : colaboraciones) {
            String[] fila = {colabora.getCodExperto(), colabora.getCodCaso(), colabora.getFecha(), colabora.getDescripcionColaboracion()};
            Colaboraciones.addRow(fila);
        }

    }

    public void tablacolaboraciones(ArrayList<colabora> col) throws SQLException {

        manejaColabora mcol = new manejaColabora(conexion);

        ArrayList<colabora> colaboraciones = col;
        for (colabora colabora : colaboraciones) {
            String[] fila = {colabora.getCodExperto(), colabora.getCodCaso(), colabora.getFecha(), colabora.getDescripcionColaboracion()};
            Colaboraciones.addRow(fila);
        }

    }

    public void tablaexpertos() throws SQLException {

        manejaExperto me = new manejaExperto(conexion);

        ArrayList<experto> expertos = me.listaExpertos();
        for (experto experto : expertos) {
            String[] fila = {experto.getCodExperto(), experto.getNombre(), experto.getPais(), experto.getSexo(), experto.getEspecialidad()};
            Expertos.addRow(fila);
        }

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        codexp = new javax.swing.JTextField();
        nomexp = new javax.swing.JTextField();
        paisexp = new javax.swing.JTextField();
        sexexp = new javax.swing.JTextField();
        espexp = new javax.swing.JTextField();
        insertarexp = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        codcaso = new javax.swing.JTextField();
        insertarcaso = new javax.swing.JButton();
        nomcaso = new javax.swing.JTextField();
        listartodo = new javax.swing.JButton();
        limpiartodo = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        casos = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        colaboraciones = new javax.swing.JTable();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        eliminarexp = new javax.swing.JButton();
        eliminarcaso = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        experto = new javax.swing.JTable();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        insertarcol = new javax.swing.JButton();
        codexpcol = new javax.swing.JTextField();
        codcasocol = new javax.swing.JTextField();
        desccol = new javax.swing.JTextField();
        eliminarcol = new javax.swing.JButton();
        jDatecolaboracion = new com.toedter.calendar.JDateChooser();
        finicio = new com.toedter.calendar.JDateChooser();
        ffin = new com.toedter.calendar.JDateChooser();
        ordenarespecialidad = new javax.swing.JButton();
        finalizados = new javax.swing.JButton();
        introducirfecha = new javax.swing.JTextField();
        jLabel16 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel1.setText("Código");

        jLabel2.setText("Nombre");

        jLabel3.setText("País");

        jLabel4.setText("Sexo");

        jLabel5.setText("Especialidad");

        codexp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                codexpActionPerformed(evt);
            }
        });

        paisexp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                paisexpActionPerformed(evt);
            }
        });

        insertarexp.setText("Insertar Experto");
        insertarexp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                insertarexpActionPerformed(evt);
            }
        });

        jLabel6.setText("Código");

        jLabel7.setText("Nombre");

        jLabel8.setText("Fecha de inicio");

        jLabel9.setText("Fecha de fin");

        insertarcaso.setText("Insertar caso policial");
        insertarcaso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                insertarcasoActionPerformed(evt);
            }
        });

        listartodo.setText("Listar todo");
        listartodo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                listartodoActionPerformed(evt);
            }
        });

        limpiartodo.setText("Limpiar todo");
        limpiartodo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                limpiartodoActionPerformed(evt);
            }
        });

        casos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(casos);

        colaboraciones.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(colaboraciones);

        jLabel10.setText("Listado de expertos");

        jLabel11.setText("Listado de casos policiales");

        eliminarexp.setText("Eliminar Experto");
        eliminarexp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                eliminarexpActionPerformed(evt);
            }
        });

        eliminarcaso.setText("Eliminar Caso");
        eliminarcaso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                eliminarcasoActionPerformed(evt);
            }
        });

        experto.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane3.setViewportView(experto);

        jLabel12.setText("Código del experto");

        jLabel13.setText("Código del caso");

        jLabel14.setText("Fecha de incorporación");

        jLabel15.setText("Descripción");

        insertarcol.setText("Insertar colaboración");
        insertarcol.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                insertarcolActionPerformed(evt);
            }
        });

        codexpcol.setEditable(false);
        codexpcol.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                codexpcolActionPerformed(evt);
            }
        });

        codcasocol.setEditable(false);

        eliminarcol.setText("Eliminar Colaboración");
        eliminarcol.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                eliminarcolActionPerformed(evt);
            }
        });

        jDatecolaboracion.setDateFormatString("dd/MM/yyyy");

        finicio.setDateFormatString("dd/MM/yyyy");

        ffin.setDateFormatString("dd/MM/yyyy");

        ordenarespecialidad.setText("Ordenar por especialidad");
        ordenarespecialidad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ordenarespecialidadActionPerformed(evt);
            }
        });

        finalizados.setText("Finalizados");
        finalizados.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                finalizadosActionPerformed(evt);
            }
        });

        jLabel16.setText("Introduce la fecha");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(52, 52, 52)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel5)
                            .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.LEADING))
                        .addGap(41, 41, 41)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(codexp, javax.swing.GroupLayout.PREFERRED_SIZE, 88, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(insertarexp))
                            .addComponent(nomexp)
                            .addComponent(paisexp)
                            .addComponent(espexp)
                            .addComponent(sexexp, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel8)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(layout.createSequentialGroup()
                                    .addGap(33, 33, 33)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel6)
                                        .addComponent(jLabel7)))
                                .addComponent(jLabel9, javax.swing.GroupLayout.Alignment.TRAILING)))
                        .addGap(30, 30, 30))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(61, 61, 61)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel13)
                            .addComponent(jLabel12)
                            .addComponent(jLabel14)
                            .addComponent(jLabel15))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(codexpcol, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(codcasocol, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 39, Short.MAX_VALUE)
                                .addComponent(insertarcol))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(desccol)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jDatecolaboracion, javax.swing.GroupLayout.PREFERRED_SIZE, 131, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(0, 0, Short.MAX_VALUE)))))
                        .addGap(124, 124, 124))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(71, 71, 71)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 121, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(eliminarexp))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 362, Short.MAX_VALUE)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel11)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(31, 31, 31)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(eliminarcol, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(ordenarespecialidad, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 452, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(finicio, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(ffin, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(codcaso, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(27, 27, 27)
                                .addComponent(insertarcaso))
                            .addComponent(nomcaso, javax.swing.GroupLayout.Alignment.LEADING))
                        .addGap(164, 164, 164)
                        .addComponent(listartodo)
                        .addGap(33, 33, 33)
                        .addComponent(limpiartodo))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(eliminarcaso)
                        .addGap(27, 27, 27)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel16)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(introducirfecha, javax.swing.GroupLayout.PREFERRED_SIZE, 116, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(finalizados, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap())
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(71, 71, 71)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(677, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(15, 15, 15)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel1)
                                    .addComponent(codexp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(insertarexp))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel2)
                                    .addComponent(nomexp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel3)
                                    .addComponent(paisexp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4)
                                    .addComponent(sexexp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(listartodo)
                                .addComponent(limpiartodo))))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel6)
                                    .addComponent(codcaso, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(insertarcaso))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel7)
                                    .addComponent(nomcaso, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addComponent(jLabel8))
                            .addComponent(finicio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel9)
                            .addComponent(ffin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(espexp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(eliminarcaso)
                    .addComponent(eliminarexp)
                    .addComponent(finalizados)
                    .addComponent(introducirfecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(53, 53, 53)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel12)
                            .addComponent(insertarcol)
                            .addComponent(codexpcol, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel13)
                            .addComponent(codcasocol, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel14)
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel15)
                                    .addComponent(desccol, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addComponent(jDatecolaboracion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel16)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 21, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(ordenarespecialidad)
                                .addGap(27, 27, 27)
                                .addComponent(eliminarcol))
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(31, 31, 31))))
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(276, 276, 276)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(310, Short.MAX_VALUE)))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void codexpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_codexpActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_codexpActionPerformed

    private void insertarexpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_insertarexpActionPerformed
        manejaExperto me = new manejaExperto(conexion);
        experto e = new experto(codexp.getText(), nomexp.getText(), paisexp.getText(), sexexp.getText(), espexp.getText());
        try {
            me.insertaExperto(e);
            limpiartablas();
            tablacasos();
            tablacolaboraciones();
            tablaexpertos();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_insertarexpActionPerformed

    private void eliminarexpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_eliminarexpActionPerformed
        int sel = experto.getSelectedRow();
        if (sel != -1) {
            try {
                String codExperto = (String) experto.getValueAt(sel, 0);
                manejaExperto me = new manejaExperto(conexion);
                me.elimnarexp(codExperto);
                limpiartablas();
                tablaexpertos();
                tablacolaboraciones();
                tablacasos();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
            }
        } else
            JOptionPane.showMessageDialog(null, "Selecciona un experto", "ERROR!", JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_eliminarexpActionPerformed

    private void paisexpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_paisexpActionPerformed

    }//GEN-LAST:event_paisexpActionPerformed

    private void insertarcasoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_insertarcasoActionPerformed
        manejaCaso mc = new manejaCaso(conexion);
        SimpleDateFormat espFecha = new SimpleDateFormat("dd/MM/yyyy");

        if (finicio.getDate() != null && ffin.getDate() != null) {
            caso e = new caso(codcaso.getText(), nomcaso.getText(), espFecha.format(finicio.getDate()), espFecha.format(ffin.getDate()));
            try {
                mc.insertaCaso(e);
                limpiartablas();
                tablacasos();
                tablacolaboraciones();
                tablaexpertos();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
            }
        } else
            JOptionPane.showMessageDialog(null, "Fecha no introducida", "ERROR!", JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_insertarcasoActionPerformed

    private void insertarcolActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_insertarcolActionPerformed
        manejaColabora mc = new manejaColabora(conexion);

        SimpleDateFormat espFecha = new SimpleDateFormat("dd/MM/yyyy");

        if (jDatecolaboracion.getDate() != null) {
            colabora e = new colabora(codexpcol.getText(), codcasocol.getText(), espFecha.format(jDatecolaboracion.getDate()), desccol.getText());
            try {
                mc.insertaColaboracion(e);
                limpiartablas();
                tablacasos();
                tablacolaboraciones();
                tablaexpertos();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
            }
        } else
            JOptionPane.showMessageDialog(null, "Fecha no introducida", "ERROR!", JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_insertarcolActionPerformed

    private void listartodoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_listartodoActionPerformed
        try {
            limpiartablas();
            tablacasos();
            tablacolaboraciones();
            tablaexpertos();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_listartodoActionPerformed

    private void limpiartodoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_limpiartodoActionPerformed
        limpiartablas();
    }//GEN-LAST:event_limpiartodoActionPerformed

    private void eliminarcasoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_eliminarcasoActionPerformed
        int sel = casos.getSelectedRow();
        if (sel != -1) {
            try {
                String codcaso = (String) casos.getValueAt(sel, 0);
                manejaCaso mc = new manejaCaso(conexion);
                mc.elimnarcaso(codcaso);
                limpiartablas();
                tablaexpertos();
                tablacolaboraciones();
                tablacasos();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
            }
        } else
            JOptionPane.showMessageDialog(null, "Selecciona un caso", "ERROR!", JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_eliminarcasoActionPerformed

    private void eliminarcolActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_eliminarcolActionPerformed
        int sel = colaboraciones.getSelectedRow();
        if (sel != -1) {
            try {
                String codexperto = (String) colaboraciones.getValueAt(sel, 0);
                String codcaso = (String) colaboraciones.getValueAt(sel, 1);
                String fecha = (String) colaboraciones.getValueAt(sel, 2);
                SimpleDateFormat espFecha = new SimpleDateFormat("dd/MM/yyyy");
                SimpleDateFormat isoFecha = new SimpleDateFormat("yyyy-MM-dd");
                manejaColabora mc = new manejaColabora(conexion);
                mc.elimnarcolaboracion(codexperto, codcaso, espFecha.format(isoFecha.parse(fecha)));
                limpiartablas();
                tablaexpertos();
                tablacolaboraciones();
                tablacasos();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "", JOptionPane.ERROR_MESSAGE);
            } catch (ParseException ex) {
                Logger.getLogger(gestioncompleta.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else
            JOptionPane.showMessageDialog(null, "Selecciona una colaboracion", "ERROR!", JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_eliminarcolActionPerformed

    private void codexpcolActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_codexpcolActionPerformed
    }//GEN-LAST:event_codexpcolActionPerformed

    private void ordenarespecialidadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ordenarespecialidadActionPerformed
        try {
            manejaColabora mc = new manejaColabora(conexion);
            ArrayList<colabora> col = new ArrayList<>();
            col = mc.ordenarcol();
            limpiartablas();
            tablaexpertos();
            tablacasos();
            tablacolaboraciones(col);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR!", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_ordenarespecialidadActionPerformed

    private void finalizadosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_finalizadosActionPerformed
        manejaCaso mc = new manejaCaso(conexion);
        ArrayList<caso> c=new ArrayList<>();

        String i = introducirfecha.getText();
        char[] cad=i.toCharArray();
        if (cad.length==0) {
            try {
                c=mc.casofinalizadonada();
                limpiartablas();
                tablaexpertos();
                tablacolaboraciones();
                tablacasos(c);
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR!", JOptionPane.ERROR_MESSAGE);
            } catch (ParseException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR!", JOptionPane.ERROR_MESSAGE);
            }
        } else if (cad.length!=4) {
            JOptionPane.showMessageDialog(null, "Introduce un año con 4 caracteres", "ERROR!", JOptionPane.ERROR_MESSAGE);
        } else {
            try {
                c=mc.casofinalizado(introducirfecha.getText()+"-01-01");
                limpiartablas();
                tablaexpertos();
                tablacolaboraciones();
                tablacasos(c);
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR!", JOptionPane.ERROR_MESSAGE);
            } catch (ParseException ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage(), "ERROR!", JOptionPane.ERROR_MESSAGE);
            }
        }
    }//GEN-LAST:event_finalizadosActionPerformed

    public void limpiartablas() {
        while (Colaboraciones.getRowCount() > 0) {
            Colaboraciones.removeRow(0);
        }
        while (Expertos.getRowCount() > 0) {
            Expertos.removeRow(0);
        }
        while (Casos.getRowCount() > 0) {
            Casos.removeRow(0);
        }
    }

    private Date eliminarHora(Date fecha) {
        Calendar cal = Calendar.getInstance(); // locale-specific
        cal.setTime(fecha);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return new Date(cal.getTimeInMillis());
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable casos;
    private javax.swing.JTextField codcaso;
    private javax.swing.JTextField codcasocol;
    private javax.swing.JTextField codexp;
    private javax.swing.JTextField codexpcol;
    private javax.swing.JTable colaboraciones;
    private javax.swing.JTextField desccol;
    private javax.swing.JButton eliminarcaso;
    private javax.swing.JButton eliminarcol;
    private javax.swing.JButton eliminarexp;
    private javax.swing.JTextField espexp;
    private javax.swing.JTable experto;
    private com.toedter.calendar.JDateChooser ffin;
    private javax.swing.JButton finalizados;
    private com.toedter.calendar.JDateChooser finicio;
    private javax.swing.JButton insertarcaso;
    private javax.swing.JButton insertarcol;
    private javax.swing.JButton insertarexp;
    private javax.swing.JTextField introducirfecha;
    private com.toedter.calendar.JDateChooser jDatecolaboracion;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JButton limpiartodo;
    private javax.swing.JButton listartodo;
    private javax.swing.JTextField nomcaso;
    private javax.swing.JTextField nomexp;
    private javax.swing.JButton ordenarespecialidad;
    private javax.swing.JTextField paisexp;
    private javax.swing.JTextField sexexp;
    // End of variables declaration//GEN-END:variables
}
