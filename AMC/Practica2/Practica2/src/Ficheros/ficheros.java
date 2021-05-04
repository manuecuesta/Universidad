package Ficheros;

import Automatas.AFD;
import Automatas.AFND;
import java.io.*;

public class ficheros {

    
    File archivo;
    FileReader fr;
    BufferedReader br;

    public ficheros() {
        archivo = null;
        fr = null;
        br = null;
    }

    public AFD cargafichero(String archivo1) throws FileNotFoundException, IOException {

        archivo = new File(archivo1);
        fr = new FileReader(archivo);
        br = new BufferedReader(fr);
        AFD automata = new AFD();

        String line;
        boolean modoTransiciones = false;
        while ((line = br.readLine()) != null) {
            if (line.trim().equals("FIN")) {
                modoTransiciones = false;
            } else if (modoTransiciones) {
                String[] partes = line.trim().split("'");
                automata.añadirTransicion(partes[0].trim(), partes[1], partes[2].trim());
            } else {
                if (line.startsWith("ESTADOS:")) {
                    automata.añadirEstados(line.substring(8).trim().split(" "));
                } else if (line.startsWith("INICIAL:")) {
                    automata.setInicial(line.substring(8).trim());
                } else if (line.startsWith("FINALES:")) {
                    automata.añadirFinales(line.substring(8).trim().split(" "));
                } else if (line.startsWith("TRANSICIONES:")) {
                    modoTransiciones = true;
                }
            }
        }

        return automata;
    }
 /*   
        public AFND cargaficheroafnd(String archivo1) throws FileNotFoundException, IOException {

        archivo = new File(archivo1);
        fr = new FileReader(archivo);
        br = new BufferedReader(fr);
        AFND automata = new AFND();

        String line;
        boolean modoTransiciones = false;
        while ((line = br.readLine()) != null) {
            if (line.trim().equals("FIN")) {
                modoTransiciones = false;
            } else if (modoTransiciones) {
                String[] partes = line.trim().split("'");
                automata.añadirTransicion(partes[0].trim(), partes[1], partes[2].trim());
            } else {
                if (line.startsWith("ESTADOS:")) {
                    automata.añadirEstados(line.substring(8).trim().split(" "));
                } else if (line.startsWith("INICIAL:")) {
                    automata.setInicial(line.substring(8).trim());
                } else if (line.startsWith("FINALES:")) {
                    automata.añadirFinales(line.substring(8).trim().split(" "));
                } else if (line.startsWith("TRANSICIONES:")) {
                    modoTransiciones = true;
                }
            }
        }

        return automata;
    }
*/
        
}
