/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p5.pcd;

import java.util.LinkedList;
import java.util.Queue;

/**
 *
 * @author cuest
 */
public class Agencia {
    
    private Thread A, B;
    Object a,b;
    private final Queue<Thread> colaviajes, colaentradas;
    private final Canvasagencia canvas;
    
    public Agencia(Canvasagencia canvas) {
        colaviajes = new LinkedList<>();
        colaentradas = new LinkedList<>();
        A=null;
        B=null;
        this.canvas=canvas;
    }
    
    public synchronized void EntraViaje() throws InterruptedException {
        Thread cliente= Thread.currentThread();
        canvas.representa(A, B, colaviajes, colaentradas);
        colaviajes.add(cliente);
        while(colaviajes.element() != cliente ||(A != null && B != null)) {
            wait();
        }
        colaviajes.remove();
        if(A == null){
            A = cliente;
        }else if(B == null){
            B = cliente;
        }
        canvas.representa(A, B, colaviajes, colaentradas);

    }
        
     public synchronized void SaleViaje() {
        Thread cliente= Thread.currentThread();
        if(cliente == A){
            A = null;
        }else if(cliente == B){
            B = null;
        }
        canvas.representa(A, B, colaviajes, colaentradas);
        notifyAll();
    }
    public synchronized void EntraEntradas() throws InterruptedException{
        Thread cliente= Thread.currentThread();
        canvas.representa(A, B, colaviajes, colaentradas);
        colaentradas.add(cliente);
        while(colaentradas.element() != cliente || !(A == null && colaviajes.isEmpty()) && B != null){
            wait();
        }
        colaentradas.remove();
        if (B == null) {
            B=cliente;
        } else if (A==null && colaviajes.isEmpty()) {
            A=cliente;
        }
        
        canvas.representa(A, B, colaviajes, colaentradas);
    }
    public synchronized void SaleEntradas() {
        Thread cliente= Thread.currentThread();
        if(cliente == A){
            A = null;
        }else if(cliente == B){
            B = null;
        }
        canvas.representa(A, B, colaviajes, colaentradas);
        notifyAll();
    }  
     
}
  