package practica1;

public class Punto {
    
    private final double x, y;
    
    public Punto(double x, double y) {
       this.x=x;
       this.y=y;
    }
    
    public double getX(){
        return x;
    }
    
    public double getY(){
        return y;
    }
    
    public float distancia(Punto p) {
        return (float) Math.sqrt(Math.pow(x-p.x, 2)+Math.pow(y-p.y, 2));
    }
        
    @Override
    public String toString(){
        return "("+x+", "+y+")";
    }
}
