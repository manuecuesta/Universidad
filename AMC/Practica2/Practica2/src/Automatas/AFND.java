/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Automatas;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author cuest
 */
public class AFND {

    private Set<String> transiciones;
    private Set<String> transicionesLambda;
    private Set<String> estadosFinales;
    private String estadoInicial;

    public AFND() {
        estadosFinales = new HashSet();
        transiciones = new HashSet();
        transicionesLambda = new HashSet();
        estadoInicial = "";

    }

    public Set<String> gettrans() {
        return transiciones;
    }
    
    public Set<String> gettransLambda(){
        return transicionesLambda;
    }
    
    public String getinicial(){
        return estadoInicial;
    }
    
    public Set<String> getfinales(){
        return estadosFinales;
    }
    
    public void setinicial(String inicial){
        estadoInicial=inicial;
    }
    
    public void agregartransicion(String e1, char simbolo, HashSet e2){
        while(e2.iterator().hasNext()){
            añadirTransicion(e1, simbolo, e2.iterator().next().toString());
        }
    }
    
    public void añadirTransicion(String partida, char simbolo, String resultado) {
        String x=partida+" "+simbolo+" "+resultado;
        transiciones.add(x);
        
    }
    
    public boolean esFinal(String estado){
        return estadosFinales.contains(estado);
    }
    
    public boolean esFinal(HashSet<String> macroestado) {
        for (String estado : macroestado) {
            if (this.esFinal(estado)) {
                return true;
            }
        }

        return false;
    }
    


}
