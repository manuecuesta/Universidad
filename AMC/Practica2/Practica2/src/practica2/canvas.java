/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica2;

import java.awt.Canvas;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;

/**
 *
 * @author cuest
 */
public class canvas extends Canvas  {
    
    private JButton aceptar;
    private JButton fichero;
    
    public canvas() {       
        
    }
    
    
    @Override
    public void paint(Graphics og) {
        
        Image offs = createImage(getWidth(), getHeight());
        Graphics g = offs.getGraphics();
        
        
        
        og.drawImage(offs, 0, 0, null);
    }

    public void actionPerformed(ActionEvent e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
