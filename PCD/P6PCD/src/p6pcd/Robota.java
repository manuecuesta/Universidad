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
public class Robota extends Thread{

    private final semaforo silom1, silom2;
    private final Canvas canvas;

    
    Robota(semaforo SiloM1, semaforo SiloM2, Canvas canvas) {
        
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
                for (int j=0; j<3; j++) {
                    silom1.WAIT();
                    canvas.eliminar(1);
                    canvas.actualizar("A", ++x, y);
                }
                
                for (int j=0; j<2; j++) {
                    silom2.WAIT();
                    canvas.eliminar(2);  
                    canvas.actualizar("A", x, ++y);
                }
                
                canvas.fabricar("A");
                Thread.sleep(1000+r.nextInt(2000));
                canvas.fabricarf("A");
                
                
            }
            
        }catch (Exception e) {
            System.out.println("ERROR: "+e.getMessage());
        }
        
        
        
    }
    
}
