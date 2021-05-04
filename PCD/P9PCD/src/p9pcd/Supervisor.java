/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p9pcd;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Clase Supervisor
 * Genera los 10 callable Calculador y los introduce en un ThreadPull con una cantidad de hilos determinada.
 * Revisa el resultado de los Calculadores y detiene el ThreadPull cuando encuentra una coincidencia.
 * Colorea en el cambias el número final encontrado
 * 
 * @author borja
 */
public class Supervisor extends Thread {

    private final Thread callback;
    private final Canvas canvas;
    private final int threads;
    private final String hash;

    /**
     * 
     * @param hash Hash a romper
     * @param threads Cantidad de hilos que se podran ejecutar concurrentemente
     * @param canvas Canvas en el que se dibujará el progreso
     * @param callback Hilo que se ejecuta cuando la busqueda termina
     */
    public Supervisor(String hash, int threads, Canvas canvas, Thread callback) {
        this.hash = hash;
        this.threads = threads;
        this.canvas = canvas;
        this.callback = callback;
    }

    @Override
    public void run() {
        canvas.nuevo();
        ExecutorService thp = Executors.newFixedThreadPool(threads);
        Future[] resultados = new Future[10];
        for (int i = 0; i < 10; i++) {
            resultados[i] = thp.submit(new Calculador(hash, (int)1e5*i, (int)1e5*(i+1)-1, i, canvas));
        }
        int respuesta = -1;
        try {
            int i = 0;
            while(i < 10 && respuesta == -1) {
               respuesta = (int) resultados[i].get();
               i++;
            }
            canvas.resultado(i-1);
        } catch (InterruptedException | ExecutionException ex) {
            Logger.getLogger(Supervisor.class.getName()).log(Level.SEVERE, null, ex);
        }
        thp.shutdownNow();
        callback.start();
    }
}