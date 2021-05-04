/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P4PCD;

import java.awt.Canvas;

/**
 *
 * @author cuest
 */
public class Frame extends java.awt.Frame {

    /**
     * Creates new form Frame
     */
    public Frame() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                exitForm(evt);
            }
        });

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * Exit the Application
     */
    private void exitForm(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_exitForm
        System.exit(0);
    }//GEN-LAST:event_exitForm

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) throws InterruptedException {
        
        int ancho=1200, alto=400;
        
        CanvasCola can = new CanvasCola(ancho, alto, 10);
        
        Frame jFrame = new Frame();
        jFrame.setSize(ancho, alto);
        jFrame.setVisible(true);
        jFrame.add(can);
        jFrame.setResizable(false);
        jFrame.setTitle("Practica 3 | Manuel Cuesta Rojas");
        
        ColaLenta cola = new ColaLenta(10, can);
        Thread p = new Productor(cola);
        Thread p1 = new Productor(cola);
        Thread p2 = new Productor(cola);
        Thread p3 = new Productor(cola);
        Consumidor c = new Consumidor(cola);
        Thread consumidor1 = new Thread(c);
        p.start();
        p1.start();
        p2.start();
        p3.start();
        consumidor1.start();
        
        consumidor1.join();
        
        p.interrupt();
        p1.interrupt();
        p2.interrupt();
        p3.interrupt();
        
        p.join();
        p1.join();
        p2.join();
        p3.join();
        
        Thread.sleep(5000);
        System.exit(0);
        
        
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}