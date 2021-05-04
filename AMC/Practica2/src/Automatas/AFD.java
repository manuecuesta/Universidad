package Automatas;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import javax.swing.JTextArea;

/**
 *
 * @author Manuel Cuesta Y Jorge Lara
 * @version 1.0
 * 
 */
public class AFD implements Proceso {

    private Set<String> estados, estadosFinales, simbolos;
    private String estadoInicial;
    private Set<String> transiciones;

    public AFD() {
        estados = new HashSet<>();
        estadosFinales = new HashSet<>();
        simbolos = new HashSet<>();
        estadoInicial = null;
        transiciones = new HashSet<>();

    }

    public void setInicial(String estadoInicial) {
        this.estadoInicial = estadoInicial;
    }
    
    public void setfinal(String fin) {
        estadosFinales.add(fin);
    }

    public void añadirEstados(String[] estados) {
        this.estados.addAll(Arrays.asList(estados));
    }
    
    public void añadirEstados(String estado) {
        this.estados.add(estado);
    }

    public void añadirFinales(String[] estados) {
        estadosFinales.addAll(Arrays.asList(estados));
    }

    public void añadirTransicion(String partida, String simbolo, String resultado) {
        String x = partida + " " + simbolo + " " + resultado;
        transiciones.add(x);
        if (!simbolos.contains(simbolo)) {
            simbolos.add(simbolo);
        }
    }
    
 /**
 *
 * Metodo que devuelve estado final
 * @return estadosFinales
 * 
 */
    
    @Override
    public boolean esFinal(String estado) {
        return this.estadosFinales.contains(estado);
    }

    public Set<String> getEstados() {
        return estados;
    }

    public Set<String> getEstadosFinales() {
        return estadosFinales;
    }

    public Set<String> getSimbolos() {
        return simbolos;
    }

    public String getEstadoInicial() {
        return estadoInicial;
    }

    public Set<String> getTransiciones() {
        return transiciones;
    }

    public String getTransicion(String estado, char simbolo) {
        for (String t : this.transiciones) {
            String[] partes = t.split(" ");

            if (partes[0].equals(estado) && partes[1].equals(String.valueOf(simbolo))) {
                return partes[2];
            }
        }

        return "";
    }

    @Override
    public String toString() {
        return (" " + this.estadoInicial + " '" + this.estados + "' " + this.estadosFinales);
    }

    @Override
    public boolean reconocer(String cadena, JTextArea jTextresultado) throws Exception {
        String pos = "";
        pos = this.getEstadoInicial();
        String f = pos.toString();
        char[] caracteres = cadena.toCharArray();
        boolean resultado = false;

        for (int i = 0; i < caracteres.length; i++) {
            String transiciones[] = new String[this.getTransiciones().size()];
            this.getTransiciones().toArray(transiciones);

            boolean encontrado = false;

            for (String transicione : transiciones) {
                String partes[] = transicione.split(" ");
                if (partes[0].equals(pos) && partes[1].equals(String.valueOf(caracteres[i]))) {
                    pos = partes[2];
                    encontrado = true;
                    f = f + "->" + pos.toString();
                    jTextresultado.append(f);
                    jTextresultado.append("\n");

                    break;
                }
            }

            if (!encontrado) {
                resultado = false;
                return resultado;
            }

            if (i == caracteres.length - 1) {
                String finales[] = new String[this.getEstadosFinales().size()];
                this.getEstadosFinales().toArray(finales);
                for (String finale : finales) {
                    if (finale.equals(pos)) {
                        resultado = true;
                        return resultado;
                    }
                }
            }

        }
        return resultado;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
        AFD copia = null;
        try {
            copia = (AFD) super.clone(); 
        } catch (CloneNotSupportedException ex) {
            System.out.println("Clone no soportado");
        }
        
        copia.estadosFinales = new HashSet<>();
        for (String estado : this.estadosFinales) {
            copia.estadosFinales.add(estado);
        }

        copia.transiciones = new HashSet<>();
        for (String t : this.transiciones) {
            copia.transiciones.add(t);
        }

        return copia;
    }

}
