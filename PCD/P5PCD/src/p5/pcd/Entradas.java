/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p5.pcd;

import java.util.Random;

public class Entradas implements Runnable{
    
    Agencia agencia;
    public Entradas(Agencia a){
        this.agencia = a;
    }
    
    @Override
    public void run() {
        System.out.println("Inicio del hilo de entradas: "+Thread.currentThread().getId());
        Random r = new Random();
        r.setSeed(System.nanoTime());
        try {
            agencia.EntraEntradas();
            Thread.sleep(2000+r.nextInt(1000));
            agencia.SaleEntradas();
        }catch(InterruptedException e) {
            System.out.println("ERROR: "+e.getMessage());
        }
        
    }
   

}
