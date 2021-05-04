/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p9pcd;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;

/**
 *
 * @author cuest
 */
public class Canvas extends java.awt.Canvas{
    
    int numeros[];
    int resultado;
    
    public Canvas() {
        numeros=new int[10];
        resultado=-1;
    }
    
    @Override
    public void paint(Graphics og) {
        
        Image offs = createImage(getWidth(), getHeight());
        Graphics g = offs.getGraphics();
        g.drawString("Hilo 1", 50, 100);
        if (resultado==0) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[0]), 50, 150);
        g.setColor(Color.black);
        g.drawString("Hilo 2", 150, 100);
        if (resultado==1) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[1]), 150, 150);
        g.setColor(Color.black);
        g.drawString("Hilo 3", 250, 100);
        if (resultado==2) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[2]), 250, 150);
        g.setColor(Color.black);
        g.drawString("Hilo 4", 350, 100);
        if (resultado==3) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[3]), 350, 150);
        g.setColor(Color.black);
        g.drawString("Hilo 5", 450, 100);
        if (resultado==4) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[4]), 450, 150);
        g.setColor(Color.black);
        g.drawString("Hilo 6", 50, 300);
        if (resultado==5) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[5]), 50, 350);
        g.setColor(Color.black);
        g.drawString("Hilo 7", 150, 300);
        if (resultado==6) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[6]), 150, 350);
        g.setColor(Color.black);
        g.drawString("Hilo 8", 250, 300);
        if (resultado==7) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[7]), 250, 350);
        g.setColor(Color.black);
        g.drawString("Hilo 9", 350, 300);
        if (resultado==8) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[8]), 350, 350);
        g.setColor(Color.black);
        g.drawString("Hilo 10", 450, 300);
        if (resultado==9) {
            g.setColor(Color.red);
        }
        g.drawString(String.valueOf(numeros[9]), 450, 350);
        
        
        
        
        og.drawImage(offs, 0, 0, null); 
        
    }
    
    public void actualizar(int hilo, int numero) {
        numeros[hilo]=numero;
        repaint();
    }
    
    @Override
    public void update(Graphics g) {
        paint(g);
    }
    
    public void nuevo() {
        numeros=new int[10];
    }
    
    public void resultado(int id) {
        resultado=id;
        repaint();
    }
    
}
