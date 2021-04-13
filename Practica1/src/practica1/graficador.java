package practica1;

import java.awt.*;

public class graficador {
    
    private interfaz i;
    
    public graficador(interfaz i) {
        this.i=i;
    }
    
    public void canvas() {
        
        Canvas canvas = new Canvas();
        canvas.setBackground(Color.red);
        canvas.setBounds(50, 75, 500, 400);
        i.add(canvas);
        canvas.setVisible(true);
        
    }
    
}
