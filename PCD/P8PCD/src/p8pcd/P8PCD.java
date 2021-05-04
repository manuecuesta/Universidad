/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p8pcd;

import java.awt.Color;
import java.util.Random;
import javax.swing.JFrame;
import javax.swing.WindowConstants;

/**
 *
 * @author cuest
 */
public class P8PCD {

    private static final int MAX_CLIENTES = 25;
    
    public static void main(String[] args) throws InterruptedException {
        Canvas canvas=new Canvas();
        JFrame f = new JFrame();
        canvas.setSize(600, 600);
        canvas.setBackground(Color.CYAN);
        f.setSize(1000, 600);
        f.add(canvas);
        f.setTitle("Practica 8:     Manuel Cuesta Rojas");
        f.setResizable(false);
        f.setLocationRelativeTo(null);
        f.setVisible(true);
        f.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        
        delegacion delegacion = new delegacion(canvas);
        
        Random r = new Random();
        r.setSeed(System.nanoTime());
        
        Thread[] clientes = new Thread[MAX_CLIENTES];
        for (int i = 0; i < MAX_CLIENTES; i++) {
            clientes[i] = new Thread(new Clientes(delegacion, "nota"));
          /* if (r.nextDouble()<0.35) {
                clientes[i] = new Thread(new Clientes(delegacion, "registro"));
            } else {
                clientes[i] = new Thread(new Clientes(delegacion, "nota"));
            }*/
            clientes[i].start();
            Thread.sleep(1000+r.nextInt(1000));
        }
        for (int i = 0; i < MAX_CLIENTES; i++) {
            clientes[i].join();
        }
        
        Thread.sleep(5000);
        System.exit(0);
    }
    
}
