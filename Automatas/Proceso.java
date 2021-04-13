package Automatas;

import javax.swing.JTextArea;

/**
 *
 * @author Manuel Cuesta Y Jorge Lara
 * @version 1.0
 * 
 */
public interface Proceso {
    public abstract boolean esFinal(String estado);
    public abstract boolean reconocer(String cadena, JTextArea jTextresultado) throws Exception;
}
