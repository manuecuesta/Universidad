/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p6pcd;

import java.util.Random;

/**
 *
 * @author cuest
 */
public class Robotb implements Runnable {

    private final semaforo silom1, silom2;
    private final Canvas canvas;

    
    Robotb(semaforo SiloM1, semaforo SiloM2, Canvas canvas) {
        
        this.silom1 = SiloM1;
        this.silom2 = SiloM2;
        this.canvas = canvas;
        
    }
    
    
    
    @Override
    public void run() {
        
        Random r = new Random();
        r.setSeed(System.nanoTime());
        
        try {
            for(int i=0; i<10; i++) {
                int x=0;
                int y=0;
                for (int j=0; j<1; j++) {
                    silom1.WAIT();
                    canvas.eliminar(1); 
                    canvas.actualizar("B", ++x, y);
                }
                
                for (int j=0; j<3; j++) {
                    silom2.WAIT();
                    canvas.eliminar(2); 
                    canvas.actualizar("B", x, ++y);
                }
                
                canvas.fabricar("B");
                Thread.sleep(1000+r.nextInt(2000));
                canvas.fabricarf("B");
                
                
                
            }
            
        }catch (Exception e) {
            System.out.println("ERROR: "+e.getMessage());
        }
        
        
        
    }
    
}
