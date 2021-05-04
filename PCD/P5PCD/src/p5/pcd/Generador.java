/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p5.pcd;

import java.awt.Color;
import java.util.Random;
import javax.swing.JFrame;
import javax.swing.WindowConstants;

/**
 *
 * @author cuest
 */
public class Generador {
        private static final int MAX_CLIENTES = 50;
        
        public static void main(String[] args) throws InterruptedException {
        JFrame f = new JFrame();
        Canvasagencia canvas = new Canvasagencia();
        canvas.setSize(600, 600);
        canvas.setBackground(Color.CYAN);
        f.setSize(600, 600);
        f.add(canvas);
        f.setTitle("Practica 5:     Manuel Cuesta Rojas");
        f.setResizable(false);
        f.setLocationRelativeTo(null);
        f.setVisible(true);
        f.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        
        Random r = new Random();
        r.setSeed(System.nanoTime());
        Agencia a = new Agencia(canvas);
        Thread[] hilos = new Thread[MAX_CLIENTES];
        for (int i = 0; i < MAX_CLIENTES; i++) {
            if (r.nextInt(10)<3) {
                hilos[i]=new Viajes(a);
            } else {
                hilos[i]=new Thread(new Entradas(a));
                
            }
            hilos[i].start();
            Thread.sleep(1000+r.nextInt(2000));
        }
        for (int i = 0; i < MAX_CLIENTES; i++) {
            hilos[i].join();
        }
    }
    
}

