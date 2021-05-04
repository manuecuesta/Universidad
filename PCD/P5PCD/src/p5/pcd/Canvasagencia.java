/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p5.pcd;

import java.awt.Canvas;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.util.LinkedList;
import java.util.Queue;

public class Canvasagencia extends Canvas{
    private Thread A, B;
    private Queue<Thread> colaViajes, colaEntradas;
    Font fuente1=new Font("", Font.BOLD, 25);
    
    public Canvasagencia(){
        A = null;
        B = null;
        colaViajes = new LinkedList<>();
        colaEntradas = new LinkedList<>();
    }
    
    @Override
    public void paint(Graphics og){
        Image offs = createImage(getWidth(), getHeight());
        Graphics g = offs.getGraphics();
        
        g.setColor(Color.black);
        Font fuente=new Font("", Font.BOLD, 30);
       
        g.setFont(fuente);
        g.drawString("A", 100, 50);
        g.drawString("B", 450, 50);
        g.setColor(Color.red);
        g.drawString("Viajes", 10, getHeight()-10);
        g.setColor(Color.black);
        g.drawString("Entradas", 10, getHeight()-50);
        
        if(A != null){
            long a =A.getId();
            if (A.getClass()==Viajes.class) {
                dibujarcliente(g, 100, 70, "Viajes", a);
                } else {
                    dibujarcliente(g, 100, 70, "Entradas", a);
            }
        }
        if(B != null){
            long a =B.getId();
            if (B.getClass()==Viajes.class) {
                dibujarcliente(g, 450, 70, "Viajes", a);
                } else {
                    dibujarcliente(g, 450, 70, "Entradas", a);
            }
        }
               
        int i=0;
        for (Thread cliente : colaViajes) {
            long a = cliente.getId();
            dibujarcliente(g, 150+(i++)*70, getHeight()-30, "Viajes", a);
            
        }
        i=0;
        for (Thread cliente : colaEntradas) {
            long a = cliente.getId();
            dibujarcliente(g, 150+(i++)*70, getHeight()-70, "Entradas", a);
        }
        
        og.drawImage(offs, 0, 0, null);
    }
    
    @Override
    public void update(Graphics g){
        paint(g);
    }
    
    public void dibujarcliente(Graphics g, int x, int y, String t, long id) {
        if("Viajes".equals(t)) {
            g.setColor(Color.red);
        } else if ("Entradas".equals(t)){
            g.setColor(Color.black);
        }
        g.setFont(fuente1);
        g.drawString("▲", x, y+20);
        String str = Long.toString(id);
        g.drawString(str, x+30, y+20);
    }
    
    
    public void representa(Thread A, Thread B, Queue<Thread> colaViajes, Queue<Thread> colaEntradas){
        this.A = A;
        this.B = B;
        this.colaViajes = new LinkedList<>(colaViajes);
        this.colaEntradas = new LinkedList<>(colaEntradas);
        repaint();
    }
    
}
