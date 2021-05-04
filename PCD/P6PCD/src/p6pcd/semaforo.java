package p6pcd;

public class semaforo {
    private int estado;
    public semaforo(int inicial){
        estado = inicial;
    }
    public synchronized void WAIT() throws InterruptedException{
        Thread.sleep(500);
        while (estado == 0) {
            wait();
        }
        estado--;
    }
    public synchronized void SIGNAL() throws InterruptedException{
        Thread.sleep(100);
        estado++;
        notify();
    }
}
