/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p6pcd;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;

/**
 *
 * @author cuest
 */
public class Canvas extends java.awt.Canvas{
    
    int M1=0, M2=0;
    int am1, am2;
    int bm1, bm2;

    public Canvas() {
        
        M1=0;
        M2=0;
              
        
    }
    
    boolean fabricara=false;
    boolean fabricarb=false;
    
    @Override
    public void paint(Graphics og) {
        
        Image offs = createImage(getWidth(), getHeight());
        Graphics g = offs.getGraphics();
        
        g.drawRect(100, 75, 150, 400);
        g.drawRect(350, 75, 150, 400);
        g.setColor(Color.red);
        Font f=new Font("hola", 1, 25);
        g.setFont(f);        
        g.drawString("Fabricando", 700, 400);
        g.drawString("M1", 160, 100);
        g.drawString("M2", 410, 100);
        int x=0;
        int y=0;
        int cont=0;
        for(int i=0; i<M1; i++) {
            g.setColor(Color.red);
            if (cont==5) {
                x++;
                y=0;
                cont=0;
            }
            g.fillOval(105+x*10, 200+y*10, 10, 10);
            y++;
            cont++;
        }
        x=0;
        y=0;
        cont=0;
        for(int i=0; i<M2; i++) {
            g.setColor(Color.black);
            if (cont==5) {
                x++;
                y=0;
                cont=0;
            }
            g.fillOval(355+x*10, 200+y*10, 10, 10); 
            y++;
            cont++;
            
        }
        
        if (fabricara==true) {
            g.setColor(Color.red);
            g.drawString("A", 710, 450);        
        }
        
        if (fabricarb==true) {
            g.setColor(Color.black);
            g.drawString("B", 800, 450);   
        }
        g.setColor(Color.GRAY);
        g.drawString("SITUACIÓN", 700, 100);
        g.setColor(Color.red);
        g.drawString("A", 700, 150);
        g.drawString("M1", 780, 150);
        g.drawString("M2", 880, 150);
        g.setColor(Color.black);
        String a1=String.valueOf(am1);
        String a2=String.valueOf(am2);
        g.drawString(a1, 740, 150);
        g.drawString(a2, 840, 150);
        
        g.setColor(Color.black);
        g.drawString("B", 700, 200);
        g.setColor(Color.red);
        g.drawString("M1", 780, 200);
        g.drawString("M2", 880, 200);
        g.setColor(Color.black);
        String b1=String.valueOf(bm1);
        String b2=String.valueOf(bm2);
        g.drawString(b1, 740, 200);
        g.drawString(b2, 840, 200);
        
        og.drawImage(offs, 0, 0, null);
        
    }    
    
    public void agregar(int tipo) {
        if (tipo==1) {
            M1++;
        } else if (tipo==2) {
            M2++;
        }
        repaint();
    }
    
    public void eliminar(int tipo) {
        if (tipo==1) {
            M1--;
        } else if (tipo==2) {
            M2--;
        }
        repaint();
    }
    
    @Override
    public void update(Graphics g) {
        paint(g);
    }
    
    public void fabricar(String robot) {
        if (robot.equals("A")) {
            fabricara=true;
        } else if (robot.equals("B")) {
            fabricarb=true;
        }
        
        repaint();
        
    }
    
    public void fabricarf(String robot) {
        if (robot.equals("A")) {
            fabricara=false;
        } else if (robot.equals("B")) {
            fabricarb=false;
        }
        
        repaint();
        
    }
        
    
    public void actualizar(String robot, int m1, int m2) {
        if (robot.equals("A")) {
            am1=m1;
            am2=m2;
        } else if (robot.equals("B")) {
            bm1=m1;
            bm2=m2;
        }
        repaint();
        
    }
    
}
