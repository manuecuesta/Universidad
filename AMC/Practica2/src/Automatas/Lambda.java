package Automatas;

import java.util.HashSet;

/**
 *
 * @author Manuel Cuesta Y Jorge Lara
 * @version 1.0
 * 
 */

public class Lambda {

    private final String origen;
    private final HashSet<String> destinos;
    
    public Lambda(String origen, HashSet<String> destinos) {
        this.origen = origen;
        this.destinos = destinos;
        
    }
    
    
    public String getOrigen() {
        return origen;
    }
    
    public HashSet<String> getDestinos() {
        return destinos;
    }
}
