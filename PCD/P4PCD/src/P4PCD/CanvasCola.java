/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P4PCD;

import java.awt.Canvas;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cuest
 */
public class CanvasCola extends Canvas{
    
    int head, tail, capacidad, numelementos;
    String mensaje;
    Object[] datos;
    
    public CanvasCola(int ancho, int alto, int capacidad) {
        setSize(new Dimension(alto, ancho));
        this.setBackground(Color.cyan);
        repaint();
        head = tail = numelementos = 0;
        datos = new Object[capacidad];
        mensaje = "";
        this.capacidad = capacidad;
    }
    
    public CanvasCola() {
        setSize(new Dimension(1200, 400));
        this.setBackground(Color.cyan);
        repaint();   
    }
    
    @Override
    public void paint(Graphics g) {
        Image offscreen = createImage(getWidth(), getHeight());
        Graphics og = offscreen.getGraphics();

        og.setColor(Color.BLACK);
        Font f1 = new Font("Sans", Font.ITALIC + Font.BOLD, 20);

        og.setFont(f1);
        //og.drawString("Valor de contador 1 --> " + contadores[0], 50, 50);
        //og.drawString("Valor de contador 2 --> " + contadores[1], 50, 100);
        og.drawImage(offscreen, 0, 0, null);
        og.setColor(Color.BLACK);
        og.drawRect(100, 125, 100, 100);
        og.drawRect(200, 125, 100, 100);
        og.drawRect(300, 125, 100, 100);
        og.drawRect(400, 125, 100, 100);
        og.drawRect(500, 125, 100, 100);
        og.drawRect(600, 125, 100, 100);
        og.drawRect(700, 125, 100, 100);
        og.drawRect(800, 125, 100, 100);
        og.drawRect(900, 125, 100, 100);
        og.drawRect(1000, 125, 100, 100);
        og.drawString("1", 140, 100);
        og.drawString("2", 240, 100);
        og.drawString("3", 340, 100);
        og.drawString("4", 440, 100);
        og.drawString("5", 540, 100);
        og.drawString("6", 640, 100);
        og.drawString("7", 740, 100);
        og.drawString("8", 840, 100);
        og.drawString("9", 940, 100);
        og.drawString("10", 1040, 100);
        
        og.setColor(Color.red);
        og.drawString("▲", 100*tail+140, 250);
        og.drawString("Tail", 100*tail+130, 270);
        og.setColor(Color.black);
        og.drawString("▼", 100*head+140, 75);
        og.drawString("Head", 100*head+125, 50);
        
        if ("COLA LLENA".equals(mensaje)) {
            og.setColor(Color.red);
            og.drawString("COLA LLENA", 100, 300);
        } else if ("COLA VACIA".equals(mensaje)) {
            og.setColor(Color.red);
            og.drawString("COLA VACIA", 975, 300);
        }
        
        Font f2 = new Font("Sans", Font.ITALIC + Font.BOLD, 15);
        og.setFont(f2);
        og.setColor(Color.BLACK);
        for(int i=0; i<capacidad; i++) {
            if(datos[i]!=null) {
                og.drawString(datos[i].toString(), 100*i+110, 185);   
            }
        }
        
        
        g.drawImage(offscreen, 0, 0, null);
        
    }
    
    @Override
    public void update(Graphics g) {
        paint(g);
    }
    
    public void avisa(String mensaje) throws InterruptedException {
        this.mensaje=mensaje;
        repaint();
    }
    
    public void representa(Object[] buf, int head, int tail, int numele) {
        this.head = head;
        this.tail = tail;
        this.numelementos = numele;
        System.arraycopy(buf, 0, datos, 0, capacidad);
        this.mensaje = "";
        repaint();
    }
    
    
}
