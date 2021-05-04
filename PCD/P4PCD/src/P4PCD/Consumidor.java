package P4PCD;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Consumidor implements Runnable {

    private final ICola cola;

    public Consumidor(ICola c) {
        this.cola = c;
    }

    @Override
    public void run() {
        Object num;
        Random r = new Random();
        r.setSeed(System.nanoTime());
        try {
            for (int i = 0; i < 10; i++) {

                int t = r.nextInt(3000) + 1000;
                Thread.sleep(t);
                num = cola.Desacola();
                System.out.println("Hilo " + Thread.currentThread().getId() + " extrajo: " + num);
            }
        } catch (InterruptedException ex) {
            System.out.println("Hilo " + Thread.currentThread().getId() + " consumidor interrumpido");
        } catch (Exception e) {
            System.out.println("Hilo " + Thread.currentThread().getId() + " Error al extraer: " + e.getMessage());
        }
    }

}
