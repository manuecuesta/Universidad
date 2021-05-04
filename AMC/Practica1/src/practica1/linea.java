package practica1;

import java.util.ArrayList;

public class linea {
    
    private ArrayList<Punto> linea = new ArrayList();
    
    public linea(Punto x, Punto y) {
        linea.add(x);
        linea.add(y);   
    }
    
    public Punto getpunto1() {
       return linea.get(0);
    }
    
    public Punto getpunto2() {
       return linea.get(1);
    }    
    public double distancia() {
         return (float) Math.sqrt(Math.pow(linea.get(0).getX()-linea.get(1).getX(), 2)+Math.pow(linea.get(0).getY()-linea.get(1).getY(), 2));
    }
}
