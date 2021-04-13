package practica1;

import java.util.ArrayList;

public class triangulo {
    
    ArrayList<linea> array=new ArrayList();
    private double area;
    
    public triangulo(linea x, linea y, linea z) {
        array.add(x);
        array.add(z);
        array.add(y);
        area=0;
    }
    
    public double area() {
        Punto p1=null,p2=null,p3=null;
        for(int i=0; i<array.size(); i++) {
            if (array.get(i).getpunto1()!=p1 && array.get(i).getpunto1()!=p2 && array.get(i).getpunto1()!=p3) {
                if(p1==null) {
                    p1=array.get(i).getpunto1();
                } else if(p2==null) {
                    p2=array.get(i).getpunto1();
                }else if(p3==null) {
                    p3=array.get(i).getpunto1();
                }
            }
            if (array.get(i).getpunto2()!=p1 && array.get(i).getpunto2()!=p2 && array.get(i).getpunto2()!=p3) {
                if(p1==null) {
                    p1=array.get(i).getpunto2();
                } else if(p2==null) {
                    p2=array.get(i).getpunto2();
                }else if(p3==null) {
                    p3=array.get(i).getpunto2();
                }
            }
                
                
        }
        this.area = Math.abs((p1.getX()) * (p2.getY() - p3.getY()) + p2.getX() * (p3.getY() - p1.getY()) + p3.getX() * (p1.getY() - p2.getY())) / 2d;
        return area;
    }
    
    public double perimetro() {
        double a = array.get(0).getpunto1().distancia(array.get(0).getpunto2());
        double b = array.get(1).getpunto1().distancia(array.get(1).getpunto2());
        double c = array.get(2).getpunto1().distancia(array.get(2).getpunto2());
        return a+b+c;
    }
    
    public void mostrar() {
        System.out.println(array.get(0).getpunto1()+" "+array.get(0).getpunto2());
        System.out.println(array.get(1).getpunto1()+" "+array.get(1).getpunto2());
        System.out.println(array.get(2).getpunto1()+" "+array.get(2).getpunto2());
    }
    
    public linea getlinea(int x) {
        return array.get(x);
    }
}
