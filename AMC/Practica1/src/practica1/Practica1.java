package practica1;

import javax.swing.*;

/**
 *
 * @author cuest
 */
public class Practica1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        interfaz i = new interfaz();
        
        i.interfaz();
        i.setBounds(0,0,800,800);
        i.setResizable(false);
        i.setVisible(true);
        i.setLocationRelativeTo(null); //se muestra en el centro   
    }
    
}
