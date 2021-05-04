/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p8pcd;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Clientes extends Thread {

    delegacion del;
    String tipo1;
    long id;
    boolean registrador, oficial;

    public Clientes(delegacion delegacion, String tip) {

        del = delegacion;
        tipo1 = tip;
        id=Thread.currentThread().getId();
        registrador=false;
        oficial=false;

    }
    
    public Clientes(long id, boolean a) {
        
        this.id=id;
        if (a==true) {
            tipo1="registro";
        } else if (a==false) {
            tipo1="nota";
        }
        
    }

    @Override
    public void run() {
        Random r = new Random();
        r.setSeed(System.nanoTime());
        try {
            if (tipo1.equals("nota")) {
                
                del.entranota();
                Thread.sleep(4000 + r.nextInt(2000));
                del.sale();

            } else if (tipo1.equals("registro")) {

                del.entraregistro();
                Thread.sleep(4000 + r.nextInt(2000));
                del.sale();

            }
        } catch (InterruptedException ex) {
            Logger.getLogger(Clientes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void atendidoRegistrador() {
        registrador=true;
    }
    
    public void atendidooficial() {
        oficial=true;
    }
    
    public boolean atendidoporregistrador() {
        if (registrador==true) {
            return true;
        } else return false;
    }
    
    public boolean atendidoporoficial() {
        if (oficial==true) {
            return true;
        } else return false;
    }
    
    public boolean gettipoatencion() {
        if (registrador==true) {
            return true;
        } else return false;
    }
    
    public boolean gettipocliente() {
        if (tipo1.equals("registro")) {
            return true;
        } else return false;
    }
    
    public long getId() {
        return id;
    }
  
}

