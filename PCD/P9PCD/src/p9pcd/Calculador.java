/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p9pcd;

import java.util.concurrent.Callable;
import org.apache.commons.codec.digest.DigestUtils;


public class Calculador implements Callable<Integer>{
    
    private final String hash;
    private final int inicio, fin, id;
    private final Canvas canvas;
    
   public Calculador(String hash, int inicio, int fin, int id, Canvas canvas) {
        this.hash = hash;
        this.inicio = inicio;
        this.fin = fin;
        this.id = id;
        this.canvas = canvas;
    }
   
   @Override
    public Integer call() throws Exception {
        int i = inicio;
        int resultado = -1;
        while(i <= fin && resultado == -1 && !Thread.interrupted()){
            canvas.actualizar(id, i);
            if(hash.equals(DigestUtils.sha256Hex(String.valueOf(i)))) {
                resultado=i;
            } else {
                i++;
            }
        }
        return resultado;
    }
}
