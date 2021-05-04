/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p6pcd;

import java.awt.Color;
import static java.lang.Thread.sleep;
import javax.swing.JFrame;
import javax.swing.WindowConstants;

/**
 *
 * @author cuest
 */
public class P6PCD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws InterruptedException {
        Canvas canvas=new Canvas();
        JFrame f = new JFrame();
        canvas.setSize(600, 600);
        canvas.setBackground(Color.CYAN);
        f.setSize(1000, 600);
        f.add(canvas);
        f.setTitle("Practica 6:     Manuel Cuesta Rojas");
        f.setResizable(false);
        f.setLocationRelativeTo(null);
        f.setVisible(true);
        f.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        
        semaforo SiloM1 = new semaforo(0), SiloM2 = new semaforo(0);
        
        Thread RR = new Robotr(SiloM1, SiloM2, canvas);
        Thread RA = new Robota(SiloM1, SiloM2, canvas);
        Thread RB = new Thread(new Robotb(SiloM1, SiloM2, canvas));
        
        RR.start();
        RA.start();
        RB.start();
        
        RA.join();
        RB.join();
        RR.interrupt();
        RR.join();
        
        sleep(5000);
        System.exit(0);
        
        
    }
    
}
