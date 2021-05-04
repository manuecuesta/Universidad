/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P4PCD;

/**
 *
 * @author cuest
 */
public class ColaLenta implements ICola{
    private int head;
    private int tail;
    private final int capacidad;
    private int numelementos;
    private final Object[] datos;
    private final CanvasCola canvas;
    
    ColaLenta(int capacidad, CanvasCola c) {
        this.capacidad=capacidad;
        datos = new Object[capacidad];
        tail=0;
        head=0;
        numelementos=0;       
        this.canvas=c;
    }
    
    @Override
    public int GetNum(){
        return numelementos;
    }
    
    @Override
    public synchronized void Acola(Object elemento) throws Exception {
        int nv=0;
        while (colallena()){
            canvas.avisa("COLA LLENA");
            if (nv>=3) {
                System.out.println("Fin del hilo: "+Thread.currentThread().getId());
                throw new Exception("No hay espacio en la cola para insertar el elemento");
            }
            nv++;
            System.out.println("Hilo "+Thread.currentThread().getId()+" espere para insertar, Intento: " + nv);          
            wait();
            
        }
        datos[tail] = elemento;
        tail = (tail + 1) % capacidad;
        numelementos++;
        canvas.representa(datos, head, tail, numelementos);
        notifyAll();        
    }
    
    @Override
    public synchronized Object Desacola() throws Exception{
        int nv=0;
        while (colavacia()) {
            canvas.avisa("COLA VACIA");   
            if (nv>=3) {
                System.out.println("Fin del hilo: "+Thread.currentThread().getId());
                throw new Exception("La cola esta vacia");
            } 
            nv++;
            System.out.println("Hilo "+Thread.currentThread().getId()+" espere para extraer, Intento: " + nv);
            wait();
        }
        Object primero = datos[head];
        datos[head] = null;       
        head = (head + 1) % capacidad;      
        numelementos--;
        canvas.representa(datos, head, tail, numelementos);
        notifyAll();
        return primero;        
    }
    
    @Override
    public Object Primero() throws Exception {
        if(numelementos==0) {
            throw new Exception("La cola esta vacia");
        }
        return datos[head];
    }
    
    public void vercola() throws Exception{
        if(numelementos==0) {
            throw new Exception("La cola esta vacia");
        }
        for(int i=0; i<numelementos; i++) {
            System.out.println("Cola[" +i+ "]: " + datos[i]);
        }
    }
    
        private boolean colavacia() {
        return numelementos == 0;
    }

    private boolean colallena() {
        return numelementos == capacidad;
    }
}
