/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p5.pcd;

import java.util.Random;

/**
 *
 * @author cuest
 */
public class Viajes extends Thread{
    
    Agencia agencia;
    public Viajes(Agencia a){
        this.agencia = a;
    }
    
    @Override
    public void run() {
        System.out.println("Inicio del hilo de viajes: "+getId());
        Random r = new Random();
        r.setSeed(System.nanoTime());
        try {
            agencia.EntraViaje();
            Thread.sleep(3000+r.nextInt(2000));
            agencia.SaleViaje();
            
        } catch (InterruptedException ex) {
            System.out.println("ERROR: " + ex.getMessage());
        }
        
    }
    
}
