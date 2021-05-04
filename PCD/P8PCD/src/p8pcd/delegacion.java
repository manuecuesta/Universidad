/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p8pcd;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;



public class delegacion {
    
    private final Condition Registro, Nota;
    private final ReentrantLock l;
    int noficiales;
    int nregistro;
    Canvas canvas;

    public delegacion(Canvas canvas) {
        this.l = new ReentrantLock(true);
        Registro = l.newCondition();
        Nota = l.newCondition();
        noficiales=0;
        nregistro=0;
        this.canvas=canvas;
    }
    
    public void entranota() {
        l.lock();
        try {
            canvas.entraClienteNota();
            if (canvas.registradorocupado() && canvas.oficialesocupados() || canvas.clientesregistro>0 && canvas.oficialesocupados()) {  
                Nota.await();
            }
            if (!canvas.oficialesocupados()) {
                canvas.clientesnota--;
                canvas.atenderoficial();
            }else if (!canvas.registradorocupado()) {
                canvas.clientesnota--;
                canvas.atenderregistrador();
                
            }
                                   
        } catch (Exception ex) {
            System.out.println("ERROR: "+ex.getMessage());
        } finally {
            l.unlock();
        }
    }
    
    public void entraregistro() {
        l.lock();
        try {
            canvas.entraClienteRegistro();
            if (canvas.oficialesocupados() || canvas.registradorocupado()) {
                Registro.await();
            }
            canvas.clientesregistro--;
            canvas.atenderambos();
            
        } catch (Exception ex) {
            System.out.println("ERROR: "+ex.getMessage());
        } finally {
            l.unlock();
        }
    }
    
    public void sale() {
        l.lock();
        try {
            canvas.sale();
            if (!canvas.oficialesocupados() && !canvas.registradorocupado()) {
                if (canvas.clientesregistro>0) {
                    Registro.signal();
                } else {
                    Nota.signal();
                    Nota.signal();
                }
            } else {
                if (canvas.clientesregistro<0 || !canvas.oficialesocupados()) {
                    Nota.signal();
                }
            }
        } catch (Exception ex) {
            System.out.println("ERROR: "+ex.getMessage());
        } finally {
            l.unlock();
        }
    }
        
}
    
