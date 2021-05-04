/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p6pcd;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cuest
 */
public class Robotr extends Thread {
    
    private final semaforo silom1, silom2;
    private final Canvas canvas;

    
    Robotr(semaforo SiloM1, semaforo SiloM2, Canvas canvas) {
        this.silom1 = SiloM1;
        this.silom2 = SiloM2;
        this.canvas = canvas;
    }
    
    @Override
    public void run() {
        int m1, m2;
        
        Random r = new Random();
        r.setSeed(System.nanoTime());
        
        while(true) {
        
            m1=3+r.nextInt(3);
            m2=3+r.nextInt(3);

            try {     
                for (int i=0; i<m1; i++) {
                    canvas.agregar(1);
                    silom1.SIGNAL();
                }

                for (int i=0; i<m2; i++) {
                    canvas.agregar(2);
                    silom2.SIGNAL();        

                }

                sleep(4000);

            }catch(InterruptedException e) {
                System.out.println("ERROR: "+ e.getMessage());
            }
        }
    }
}
