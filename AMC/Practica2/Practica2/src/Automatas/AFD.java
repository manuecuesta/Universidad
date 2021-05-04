/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Automatas;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author cuest
 */
public class AFD {

    public static AFD[] toArray(AFD[] afd) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private final Set<String> estados, estadosFinales, simbolos;
    private String estadoInicial;
    private final Set<String> transiciones;
    
    
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

    public void añadirEstados(String[] estados) {
        this.estados.addAll(Arrays.asList(estados));
    }

    public void añadirFinales(String[] estados) {
        estadosFinales.addAll(Arrays.asList(estados));
    }
    
    public void añadirTransicion(String partida, String simbolo, String resultado) {
        String x=partida+" "+simbolo+" "+resultado;
        transiciones.add(x);
        if (!simbolos.contains(simbolo)) {
            simbolos.add(simbolo);
        }
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
    
    @Override
    public String toString() {
        return (" " + this.estadoInicial + " '" + this.estados + "' " + this.estadosFinales);
    }
   
}
