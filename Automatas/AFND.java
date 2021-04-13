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

public class AFND implements Proceso{

    private Set<String> transiciones;
    private Set<Lambda> transicionesLambda;
    private Set<String> estadosFinales;
    private Set<String> estados;
    private String estadoInicial;

    public AFND() {
        estadosFinales = new HashSet();
        transiciones = new HashSet();
        transicionesLambda = new HashSet();
        estados = new HashSet();
        estadoInicial = "";

    }
    
    public void añadirEstados(String estado) {
        this.estados.add(estado);
    }

    public Set<String> gettrans() {
        return transiciones;
    }

    public Set<Lambda> gettransLambda() {
        return transicionesLambda;
    }

    public Set<String> getfinales() {
        return estadosFinales;
    }

    public String getiniciales() {
        return estadoInicial;
    }

    public Set<String> getestados() {
        return estados;
    }

    public void agregarTrL(String e1, HashSet e2) {
        this.transicionesLambda.add(new Lambda(e1, e2));
    }

    public void setTrL(Lambda f) {
        transicionesLambda.add(f);
    }

    public void setinicial(String inicial) {
        estadoInicial = inicial;
    }

    public void setfinales(String[] fin) {
        estadosFinales.addAll(Arrays.asList(fin));
    }

    public void setestados(String[] in) {
        estados.addAll(Arrays.asList(in));
    }

    public void agregartransicion(String e1, String simbolo, HashSet e2) {
        int i = 0;
        while (i < e2.size()) {
            añadirTransicion(e1, simbolo, e2.iterator().next().toString());
            i++;
        }
    }

    public void añadirTransicion(String partida, String simbolo, String resultado) {
        String x = partida + " " + simbolo + " " + resultado;
        transiciones.add(x);
    }

    @Override
    public boolean esFinal(String estado) {
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

    public boolean reconocer(String cadena, JTextArea jTextresultado) throws Exception {

        char[] simbolo = cadena.toCharArray();
        HashSet<String> estado = new HashSet();
        estado.add(this.getiniciales());
        estado = L_clausura(estado); 
        String f = estado.toString();
        jTextresultado.append(f+"\n");
        for (int i = 0; i < simbolo.length; i++) {

            estado = getTransicion(estado, simbolo[i]); 

            for (String estado_accesible : L_clausura(estado)) {
                estado.add(estado_accesible); 
                
                
            }
            f=estado.toString();
            jTextresultado.append(f+"\n");
            

            if (estado.isEmpty()) {
                throw new Exception("Error: transicion con caracter '" + simbolo[i] + "' no válida!");
            }

        }

        return esFinal(estado);
    }

    public HashSet<String> getTransicion(HashSet<String> macroestado, char simbolo) {
        HashSet<String> solucion = new HashSet();

        for (String estado : macroestado) {
            for (String estado2 : this.getTransicion(estado, simbolo)) {
                solucion.add(estado2);

            }
        }

        return solucion;
    }

    public HashSet<String> getTransicion(String estado, char simbolo) {

        String tran[] = new String[transiciones.size()];
        transiciones.toArray(tran);
        for (String t : transiciones) {
            String partes[] = t.split(" ");
            if (partes[0].equals(estado) && partes[1].equals(String.valueOf(simbolo))) {
                String destino = "";
                    if (partes[2].equals("")) {
                        destino = partes[3];
                    } else {
                        destino = partes[2];
                    }
                HashSet<String> mf = new HashSet<String>(Arrays.asList(destino));
                return mf;
            }

        }

        return new HashSet<>(); //Si no se encuentra
    }

    public HashSet<String> L_clausura(String estado) {
        HashSet<String> solucion = new HashSet<>();
        solucion.add(estado);                  

        transicionesLambda.forEach((Lambda) -> {
            if (Lambda.getOrigen().equals(estado)) {
                Lambda.getDestinos().forEach((estado_destino) -> {
                   
                    if (!estado_destino.equals(Lambda.getOrigen()))
                    {
                        solucion.addAll(L_clausura(estado_destino));
                        
                    }
                });
            }
        });

        return solucion;
    }

    public HashSet<String> L_clausura(HashSet<String> estados) { 
        HashSet<String> solucion = new HashSet();

        estados.forEach((estado) -> {
            HashSet<String> valores = L_clausura(estado); 

            for (String valor : valores) {
                solucion.add(valor);
            }

        });

        return solucion;
    }
    
        @Override
    public Object clone() {
        AFND copia = null;
        try {
            copia = (AFND) super.clone();
        } catch (CloneNotSupportedException ex) {
            System.out.println("Clone no soportado");
        }
        
        copia.estadosFinales = new HashSet<String>();
        for (String estado : this.estadosFinales) {
            copia.estadosFinales.add(estado);
        }

        copia.transiciones = new HashSet<>();
        for (String t : this.transiciones) {
            copia.transiciones.add(t);
        }

        copia.transicionesLambda= new HashSet<Lambda>();
        for (Lambda tl : this.transicionesLambda) {
            copia.transicionesLambda.add(tl);
        }

        return copia;
    }

    

}
