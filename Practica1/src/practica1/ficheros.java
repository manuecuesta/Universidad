package practica1;

import java.io.*;
import java.util.ArrayList;

public class ficheros {
    
    ArrayList<String> aux = new ArrayList<>();
    static ArrayList<Punto> puntos = new ArrayList<>();
    File archivo;
    FileReader fr;
    BufferedReader br;
    ficheros() {
        archivo = null;
        fr = null;
        br = null;
    }
    
    public void cargafichero(String archivo1){
        puntos.clear();
        
        try {
            archivo = new File(archivo1);
            fr =  new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea;
            Boolean cord=false;
            
            while((linea=br.readLine())!=null){
                if(linea.equals("NODE_COORD_SECTION")) {
                    cord=true;
                }else if(linea.equals("EOF") | linea.equals("")) {
                    cord=false;
                }else if(cord==true) {
                    aux.add(linea);
                }
            }
            string2punto(aux);
            algoritmos a = new algoritmos(puntos);
            a.extriangulo();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            try{
                if(null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }    
    }
    
    public void string2punto(ArrayList<String> l) {
        double x,y;
        for(int i=0; i<l.size(); i++) {
            String cadena = l.get(i);
            String[] partes = cadena.split(" ");
            x=Double.parseDouble(partes[1]);
            y=Double.parseDouble(partes[2]);
            Punto p = new Punto(x, y);
            puntos.add(p);
        }    
    }
}