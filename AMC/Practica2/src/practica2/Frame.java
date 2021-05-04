package practica2;

import Automatas.AFD;
import Automatas.AFND;
import Automatas.Lambda;
import Ficheros.ficheros;
import Grafico.grafica;
import com.mxgraph.swing.mxGraphComponent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Manuel Cuesta Y Jorge Lara
 * @version 1.0
 *
 */
public class Frame extends javax.swing.JFrame {

    private DefaultTableModel tablaestado = new DefaultTableModel();
    private AFD automata;
    private AFND automataAFND;
    private String selec;
    private Grafico.grafica grafica = new grafica();
    private String estadoActual = "";
    private HashSet<String> estadosActuales = new HashSet();
    private int indice = 0;
    private String v = "";
    private boolean carga = false;

    public Frame() {
        initComponents();

        String[] columnasTabla = {"Estado/Simbolo", "0", "1"};
        tablaestado.setColumnIdentifiers(columnasTabla);
        Jtablaestados.getTableHeader().setResizingAllowed(false);
        Jtablaestados.setModel(tablaestado);

    }

    public void limpiartabla() {

        while (tablaestado.getRowCount() > 0) {
            tablaestado.removeRow(0);
        }

    }

    public void actualizartabla() {

        if (selec == "AFD") {

            limpiartabla();

            String transiciones[] = new String[automata.getTransiciones().size()];

            automata.getTransiciones().toArray(transiciones);

            for (int i = 0; i < transiciones.length; i++) {

                String partes[] = transiciones[i].split(" ");
                boolean encontrado = false;
                int lugar = 0;
                for (int x = 0; x < tablaestado.getRowCount(); x++) {
                    if (partes[0].equals(tablaestado.getValueAt(x, 0))) {
                        encontrado = true;
                        lugar = x;
                    }
                }

                if (partes[1].equals("0")) {
                    String[] columnasTabla = {partes[0], partes[2], " "};
                    if (!encontrado) {
                        tablaestado.addRow(columnasTabla);
                    } else {
                        tablaestado.setValueAt(partes[2], lugar, 1);
                    }
                } else if (partes[1].equals("1")) {
                    String[] columnasTabla = {partes[0], " ", partes[2]};
                    if (!encontrado) {
                        tablaestado.addRow(columnasTabla);
                    } else {
                        tablaestado.setValueAt(partes[2], lugar, 2);
                    }

                }

            }

        } else if (selec == "AFND") {

            limpiartabla();

            String transiciones[] = new String[automataAFND.gettrans().size()];

            automataAFND.gettrans().toArray(transiciones);

            String[] cTabla = {"Estado/Simbolo", "0", "1", "Lambda"};
            tablaestado.setColumnIdentifiers(cTabla);

            for (int i = 0; i < transiciones.length; i++) {

                String partes[] = transiciones[i].split(" ");
                boolean encontrado = false;
                int lugar = 0;
                for (int x = 0; x < tablaestado.getRowCount(); x++) {
                    if (partes[0].equals(tablaestado.getValueAt(x, 0))) {
                        encontrado = true;
                        lugar = x;
                    }
                }

                Lambda lamda[] = new Lambda[automataAFND.gettransLambda().size()];
                automataAFND.gettransLambda().toArray(lamda);
                String lamdaf = "";

                if (partes[1].equals("0")) {

                    int z = 0;
                    for (int x = 0; x < lamda.length; x++) {
                        if (lamda[x].getOrigen().equals(partes[0])) {
                            z++;
                        }
                    }
                    ArrayList<String> lamdaput = new ArrayList();
                    for (int x = 0; x < lamda.length; x++) {
                        if (lamda[x].getOrigen().equals(partes[0])) {
                            lamdaput.add(lamda[x].getDestinos().toString());
                        }
                    }

                    for (int x = 0; x < lamdaput.size(); x++) {
                        lamdaf = lamdaf + " " + lamdaput.get(x);
                    }

                    String destino = "";
                    if (partes[2].equals("")) {
                        destino = partes[3];
                    } else {
                        destino = partes[2];
                    }

                    String[] columnasTabla = {partes[0], destino, " ", lamdaf};

                    if (!encontrado) {
                        tablaestado.addRow(columnasTabla);
                    } else {
                        tablaestado.setValueAt(destino, lugar, 1);
                    }
                } else if (partes[1].equals("1")) {

                    ArrayList<String> lamdaput = new ArrayList();
                    for (int x = 0; x < lamda.length; x++) {
                        if (lamda[x].getOrigen().equals(partes[0])) {
                            lamdaput.add(lamda[x].getDestinos().toString());
                        }
                    }

                    for (int x = 0; x < lamdaput.size(); x++) {
                        lamdaf = lamdaf + " " + lamdaput.get(x);
                    }

                    String destino = "";
                    if (partes[2].equals("")) {
                        destino = partes[3];
                    } else {
                        destino = partes[2];
                    }
                    String[] columnasTabla = {partes[0], " ", destino, lamdaf};

                    if (!encontrado) {
                        tablaestado.addRow(columnasTabla);
                    } else {
                        tablaestado.setValueAt(destino, lugar, 2);
                    }

                }

            }

        }

    }

    public void actualizargrafica() {
        mxGraphComponent gr = null;
        if (selec == "AFD") {

            gr = grafica.generaAFD(automata, automata.getEstados());

        } else if (selec == "AFND") {
            gr = grafica.generaAFND(automataAFND, automataAFND.getestados());
        }
        scrollrepresentacion.add(gr);
        scrollrepresentacion.getViewport().add(gr);
        scrollrepresentacion.revalidate();
        scrollrepresentacion.repaint();
    }

    //devuelve false si la cadena es rechazada
    public boolean comprobarcadena(String cadena) throws Exception {
        boolean resultado = false;
        String pos = "";
        char[] caracteres = cadena.toCharArray();

        for (int i = 0; i < cadena.length(); i++) {
            if (caracteres[i] != '0' && caracteres[i] != '1') {
                JOptionPane.showMessageDialog(this, "ERROR: La cadena de caracteres solo puede tener 0 y 1", "ERROR", JOptionPane.ERROR_MESSAGE);
                break;
            }
        }
        jTextresultado.setText("");
        if (selec.equals("AFD")) {
            resultado = automata.reconocer(cadena, jTextresultado);

        } else if (selec.equals("AFND")) {
            resultado = automataAFND.reconocer(cadena, jTextresultado);

        }
        return resultado;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        Jtablaestados = new javax.swing.JTable();
        scrollrepresentacion = new javax.swing.JScrollPane();
        jLabel1 = new javax.swing.JLabel();
        jComboBoxautomata = new javax.swing.JComboBox<>();
        Salir = new javax.swing.JButton();
        cadena = new java.awt.Label();
        introducircadena = new javax.swing.JTextField();
        ejecutarcadena = new javax.swing.JButton();
        cadenapaso = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTextresultado = new javax.swing.JTextArea();
        jButtonSiguiente = new javax.swing.JButton();
        jLabelResultado = new javax.swing.JLabel();
        jTextFieldinsertarorigen = new javax.swing.JTextField();
        jTextFieldsimbolo = new javax.swing.JTextField();
        jTextFielddestino = new javax.swing.JTextField();
        insertar = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        jButton1.setText("Abrir Fichero");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        Jtablaestados.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane1.setViewportView(Jtablaestados);

        jLabel1.setText("Tipo de Autómata");

        jComboBoxautomata.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Tipo", "AFD", "AFND" }));
        jComboBoxautomata.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jComboBoxautomataItemStateChanged(evt);
            }
        });

        Salir.setText("Salir");
        Salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SalirActionPerformed(evt);
            }
        });

        cadena.setText("Cadena: ");

        ejecutarcadena.setText("Analizar cadena");
        ejecutarcadena.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ejecutarcadenaActionPerformed(evt);
            }
        });

        cadenapaso.setText("Analizar cadena paso a paso");
        cadenapaso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cadenapasoActionPerformed(evt);
            }
        });

        jTextresultado.setEditable(false);
        jTextresultado.setColumns(20);
        jTextresultado.setRows(5);
        jScrollPane3.setViewportView(jTextresultado);

        jButtonSiguiente.setText("Siguiente");
        jButtonSiguiente.setEnabled(false);
        jButtonSiguiente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSiguienteActionPerformed(evt);
            }
        });

        jTextFielddestino.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFielddestinoActionPerformed(evt);
            }
        });

        insertar.setText("Insertar");
        insertar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                insertarActionPerformed(evt);
            }
        });

        jLabel2.setText("Origen");

        jLabel3.setText("Simbolo");

        jLabel4.setText("Destino");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(Salir, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 369, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(cadena, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(cadenapaso, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jComboBoxautomata, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGroup(layout.createSequentialGroup()
                                                .addComponent(introducircadena, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(ejecutarcadena, javax.swing.GroupLayout.PREFERRED_SIZE, 169, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(28, 28, 28)
                                        .addComponent(jButtonSiguiente)
                                        .addGap(35, 35, 35)
                                        .addComponent(jLabelResultado))))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(120, 120, 120)
                                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 361, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(scrollrepresentacion, javax.swing.GroupLayout.PREFERRED_SIZE, 414, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(24, 24, 24)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jTextFieldinsertarorigen, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jTextFielddestino, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jTextFieldsimbolo, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(insertar))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel2)
                                        .addGap(26, 26, 26)
                                        .addComponent(jLabel3)
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel4)))
                                .addGap(0, 0, Short.MAX_VALUE)))))
                .addGap(34, 34, 34))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(33, 33, 33)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(scrollrepresentacion, javax.swing.GroupLayout.PREFERRED_SIZE, 404, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jLabel4))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextFieldinsertarorigen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jTextFieldsimbolo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jTextFielddestino, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(insertar))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jButton1)
                            .addComponent(Salir)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 243, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(jComboBoxautomata, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(cadena, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(introducircadena, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(ejecutarcadena)))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(cadenapaso)
                            .addComponent(jButtonSiguiente)
                            .addComponent(jLabelResultado))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(35, 35, 35))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed

        String ruta = null;
        JFileChooser filec = new JFileChooser();
        filec.showOpenDialog(filec);
        try {
            ruta = filec.getSelectedFile().getAbsolutePath();
        } catch (NullPointerException ex) {
            System.out.println("ERROR: No se ha seleccionado ningún fichero");
        } catch (Exception ex) {
            System.out.println("ERROR: " + ex.getMessage());
        }

        ficheros f = new ficheros();
        jTextresultado.setText("");
        try {
            if (selec == "AFD") {
                jTextresultado.append("ejecutandose afd\n");
                automata = f.cargafichero(ruta);
                jTextresultado.append("afd abierto\n");
                jTextresultado.append("Estados: " + automata.getEstados() + "\n");
                jTextresultado.append("Inicial: " + automata.getEstadoInicial() + "\n");
                jTextresultado.append("Finales: " + automata.getEstadosFinales() + "\n");
                jTextresultado.append("Transiciones: " + automata.getTransiciones() + "\n");

            } else if (selec == "AFND") {
                jTextresultado.append("afnd ejecutandose\n");
                automataAFND = f.cargaficheroA(ruta);
                jTextresultado.append("Estados: " + automataAFND.getestados().toString() + "\n");
                jTextresultado.append("Inicial: " + automataAFND.getiniciales() + "\n");
                jTextresultado.append("Finales: " + automataAFND.getfinales().toString() + "\n");

                Lambda lamda[] = new Lambda[automataAFND.gettransLambda().size()];
                automataAFND.gettransLambda().toArray(lamda);
                //jTextresultado.append("Lambda: \n");

                for (int x = 0; x < lamda.length; x++) {
                    jTextresultado.append(lamda[x].getOrigen() + " " + lamda[x].getDestinos() + "\n");
                }

            }
            actualizartabla();
            actualizargrafica();
            carga = true;

        } catch (IOException ex) {
            Logger.getLogger(Frame.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jComboBoxautomataItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jComboBoxautomataItemStateChanged
        if (evt.getSource() == jComboBoxautomata)
            selec = jComboBoxautomata.getSelectedItem().toString();
    }//GEN-LAST:event_jComboBoxautomataItemStateChanged

    private void SalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SalirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_SalirActionPerformed

    private void ejecutarcadenaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ejecutarcadenaActionPerformed

        if (!introducircadena.getText().isEmpty() && carga) {
            String cadena = introducircadena.getText();
            boolean a;
            try {
                a = comprobarcadena(cadena);
                if (a) {
                    JOptionPane.showMessageDialog(this, "Cadena aceptada", "", JOptionPane.YES_NO_CANCEL_OPTION);
                } else {
                    JOptionPane.showMessageDialog(this, "Cadena rechazada", "", JOptionPane.ERROR_MESSAGE);
                }
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(this, "Cadena rechazada", "", JOptionPane.ERROR_MESSAGE);
            }
        } else {
            JOptionPane.showMessageDialog(this, "Cadena vacia o no cargado el automata", "", JOptionPane.ERROR_MESSAGE);
        }


    }//GEN-LAST:event_ejecutarcadenaActionPerformed

    private void cadenapasoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cadenapasoActionPerformed

        if (!introducircadena.getText().isEmpty() && carga) {
            String cadena = introducircadena.getText();
            jTextresultado.setText("");
            try {
                char[] caracteres = cadena.toCharArray();
                for (int i = 0; i < cadena.length(); i++) {
                    if (caracteres[i] != '0' && caracteres[i] != '1') {
                        JOptionPane.showMessageDialog(this, "ERROR: La cadena de caracteres solo puede tener 0 y 1", "ERROR", JOptionPane.ERROR_MESSAGE);
                        break;
                    }
                }
                if (indice == 0) {
                    jButtonSiguiente.setEnabled(true);
                    cadenapaso.setText("Reiniciar");
                    if (selec.equals("AFD")) {
                        estadoActual = automata.getEstadoInicial();

                        scrollrepresentacion.getViewport().add(grafica.simularAFD(automata, automata.getEstados(), estadoActual));
                        v = estadoActual;
                        jTextresultado.append(v + "\n");

                    } else if (selec.equals("AFND")) {

                        estadosActuales.addAll(automataAFND.L_clausura(automataAFND.getiniciales()));
                        scrollrepresentacion.getViewport().add(grafica.simularAFND(automataAFND, automataAFND.getestados(), estadosActuales));
                        jTextresultado.append(estadosActuales.toString() + "\n");

                    }

                } else { //reiniciamos
                    indice = 0;
                    cadenapaso.setText("Iniciar");
                    jButtonSiguiente.setEnabled(false);
                    estadoActual = "";
                    estadosActuales.clear();
                    v = "";
                    jTextresultado.setText("");
                    jLabelResultado.setText("");

                    if (selec.equals("AFD")) {
                        scrollrepresentacion.getViewport().add(grafica.generaAFD(automata, automata.getEstados()));
                    } else if (selec.equals("AFND")) {
                        scrollrepresentacion.getViewport().add(grafica.generaAFND(automataAFND, automataAFND.getestados()));
                    }

                }
            } catch (Exception ex) {
                Logger.getLogger(Frame.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            JOptionPane.showMessageDialog(this, "Cadena vacia o no cargado el automata", "", JOptionPane.ERROR_MESSAGE);
        }

    }//GEN-LAST:event_cadenapasoActionPerformed

    private void jButtonSiguienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSiguienteActionPerformed
        char[] caracteres = introducircadena.getText().toCharArray();
        if (indice != caracteres.length) {

            if (selec.equals("AFD")) {
                estadoActual = automata.getTransicion(estadoActual, introducircadena.getText().charAt(indice));
                v = v + "->" + estadoActual;
                jTextresultado.append(v + "\n");
                try {
                    scrollrepresentacion.getViewport().add(grafica.simularAFD(automata, automata.getEstados(), estadoActual));
                } catch (Exception ex) {
                    Logger.getLogger(Frame.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else if (selec.equals("AFND")) {
                estadosActuales = automataAFND.getTransicion(estadosActuales, introducircadena.getText().charAt(indice));
                estadosActuales = automataAFND.L_clausura(estadosActuales);
                jTextresultado.append(estadosActuales + "\n");
                scrollrepresentacion.getViewport().add(grafica.simularAFND(automataAFND, automataAFND.getestados(), estadosActuales));
            }
            indice++;
        } else {
            jButtonSiguiente.setEnabled(false);
            if (selec.equals("AFD") && automata.esFinal(estadoActual)) {
                jLabelResultado.setText("RECONOCIDA");
            } else if (selec.equals("AFD") && !automata.esFinal(estadoActual)) {
                jLabelResultado.setText("NO RECONOCIDA");
            } else if (selec.equals("AFND") && automataAFND.esFinal(estadosActuales)) {
                jLabelResultado.setText("RECONOCIDA");
            } else {
                jLabelResultado.setText("NO RECONOCIDA");
            }
        }

    }//GEN-LAST:event_jButtonSiguienteActionPerformed

    private void jTextFielddestinoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFielddestinoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFielddestinoActionPerformed

    private void insertarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_insertarActionPerformed

        if (!jTextFielddestino.getText().equals("") && !jTextFieldinsertarorigen.getText().equals("") && !jTextFieldsimbolo.getText().equals("")) {

            if (selec.equals("AFD")) {
                if (automata == null) {
                    automata = new Automatas.AFD();
                    automata.setInicial(jTextFieldinsertarorigen.getText());
                    automata.setfinal(jTextFieldsimbolo.getText());
                    carga = true;
                }
                automata.añadirEstados(jTextFieldinsertarorigen.getText());
                automata.añadirEstados(jTextFieldsimbolo.getText());
                automata.añadirTransicion(jTextFieldinsertarorigen.getText(), jTextFielddestino.getText(), jTextFieldsimbolo.getText());
                actualizartabla();
                actualizargrafica();
            } else {
                if (automataAFND == null) {
                    carga = true;
                    automataAFND = new Automatas.AFND();
                    automataAFND.setinicial(jTextFieldinsertarorigen.getText());
                    String[] a = new String[1];
                    a[0] = jTextFieldsimbolo.getText();
                    automataAFND.setfinales(a);
                }
                automataAFND.añadirEstados(jTextFieldinsertarorigen.getText());
                automataAFND.añadirEstados(jTextFieldsimbolo.getText());
                if (jTextFielddestino.getText().equals("l") || jTextFielddestino.getText().equals("L")) {
                    HashSet<String> a = new HashSet();
                    a.add(jTextFieldsimbolo.getText());
                    automataAFND.agregarTrL(jTextFieldinsertarorigen.getText(), a);
                } else if (!jTextFielddestino.equals("l")) {
                    automataAFND.añadirTransicion(jTextFieldinsertarorigen.getText(), jTextFielddestino.getText(), jTextFieldsimbolo.getText());
                }
                actualizartabla();
                actualizargrafica();
            }
        } else {
            JOptionPane.showMessageDialog(this, "Campo vacio", "", JOptionPane.ERROR_MESSAGE);
        }

        jTextFielddestino.setText("");
        jTextFieldinsertarorigen.setText("");
        jTextFieldsimbolo.setText("");

    }//GEN-LAST:event_insertarActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Frame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Frame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Frame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Frame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        Frame f = new Frame();
        f.setVisible(true);
        f.setLocationRelativeTo(null);
        f.setTitle("Practica 2        Manuel Cuesta Rojas | Jorge Lara Ochoa");

    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable Jtablaestados;
    private javax.swing.JButton Salir;
    private java.awt.Label cadena;
    private javax.swing.JButton cadenapaso;
    private javax.swing.JButton ejecutarcadena;
    private javax.swing.JButton insertar;
    private javax.swing.JTextField introducircadena;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonSiguiente;
    private javax.swing.JComboBox<String> jComboBoxautomata;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabelResultado;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextField jTextFielddestino;
    private javax.swing.JTextField jTextFieldinsertarorigen;
    private javax.swing.JTextField jTextFieldsimbolo;
    private javax.swing.JTextArea jTextresultado;
    private javax.swing.JScrollPane scrollrepresentacion;
    // End of variables declaration//GEN-END:variables
}
