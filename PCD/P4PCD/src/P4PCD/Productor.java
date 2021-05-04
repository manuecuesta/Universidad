package P4PCD;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Productor extends Thread {

    private final ICola cola;

    public Productor(ICola c) {
        this.cola = c;
    }

    @Override
    public void run() {
        Random r = new Random();
        r.setSeed(System.nanoTime());
        float valor;
        try {
            for (int i = 0; i < 15; i++) {
                int t = r.nextInt(3000) + 1000;
                Thread.sleep(t);
                valor = r.nextFloat();
                cola.Acola(valor);
                System.out.println("Hilo " + getId() + " Inserto: " + valor);
            }
        } catch (InterruptedException e) {
            System.out.println("Hilo " + getId() + " productor interrumpido");
        } catch (Exception e) {
            System.out.println("Hilo " + getId() + " Error al insertar: " + e.getMessage());
        }
    }
}
