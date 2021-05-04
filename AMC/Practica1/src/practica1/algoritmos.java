/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica1;

import java.util.ArrayList;

/**
 *
 * @author cuest
 */
public class algoritmos {
    
    ArrayList<Punto> punto = new ArrayList();
    
    public algoritmos(ArrayList<Punto> p) {
        punto=p;        
    }
    
    public linea exlinea() {
        Punto x=null, y=null;
        int i=0;
        interfaz inte=new interfaz();
        double distancia=0;
        for(int j=0; j<punto.size(); j++) {
            for (int w=0; w<punto.size(); w++) {
                if (punto.get(j).distancia(punto.get(w))<distancia && punto.get(j)!=punto.get(w)) {
                    distancia=punto.get(j).distancia(punto.get(w));
                    x=punto.get(j);
                    y=punto.get(w);
                    inte.pintarlinea(x, y);
                    inte.repaint();
                }else if (distancia==0) {
                    distancia=punto.get(j).distancia(punto.get(w));
                    x=punto.get(j);
                    y=punto.get(w); 
                    inte.pintarlinea(x, y);
                }
            }   
        }   
        System.out.println("punto"+x+"punto"+y);
        linea linea=new linea(x, y);
        return linea;
    }
    
    public triangulo extriangulo() {
        double perimetro=0;
        interfaz inte=new interfaz();
        triangulo tri=null;
        for (int i=0; i<punto.size(); i++) {
            for (int j=0; j<punto.size(); j++) {
                for (int w=0; w<punto.size(); w++) {
                    if (punto.get(i)!=punto.get(j) && punto.get(j)!=punto.get(w) && punto.get(i)!=punto.get(w)) {
                        if(!enlinea(punto.get(i), punto.get(j), punto.get(w))) {
                            linea l = new linea(punto.get(i), punto.get(j));
                            linea l1 = new linea(punto.get(j), punto.get(w));
                            linea l2 = new linea(punto.get(w), punto.get(i));
                            triangulo t = new triangulo(l, l1, l2);
                            if(t.perimetro()<perimetro && perimetro!=0) {
                                perimetro=t.perimetro();
                                tri=t;
                            } else if (perimetro==0) {
                                perimetro=t.perimetro();
                                tri=t;
                            }else if (t.perimetro()==perimetro) {
                                if (t.area()>tri.area()) {
                                    tri=t;
                                    perimetro=t.perimetro();
                                }
                            }
                        }
                    }
                }
            }
        }
        tri.mostrar();
        inte.pintartriangulo(tri);
        return tri;
    }
    
    public boolean enlinea(Punto x, Punto y, Punto z) {
        boolean a=false;
        if (x.getX()==y.getX() && z.getX()==x.getX() && z.getX()==y.getX()) {
            a=true;
        } else if (x.getY()==y.getY() && z.getY()==x.getY() && z.getY()==y.getY()) {
            a=true;
        }
        return a;
    }  
}
