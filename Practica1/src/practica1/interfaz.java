package practica1;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import javax.swing.*;
import java.awt.event.*;
import java.util.ArrayList;

public class interfaz extends JFrame implements ActionListener{
    private JLabel titulo;
    private JLabel nombre;
    private static linea linea;
    private static ArrayList<linea> lineas=new ArrayList();
    JButton salir;
    JButton Elegir;
    JPanel grafica;
    
    public void interfaz(){
        setLayout(null);
        setTitle("Practica 1 AMC");
        titulo = new JLabel("Practica 1 AMC");
        titulo.setBounds(350, 20, 300, 30);
        add(titulo);
        nombre = new JLabel("Manuel Cuesta Rojas");
        nombre.setBounds(330, 25, 300, 50);
        add(nombre);
        salir = new JButton("Salir");
        salir.setBounds(650, 700, 100, 30);
        add(salir);
        salir.addActionListener(this); 
        Elegir = new JButton("Elegir fichero");
        Elegir.setBounds(50, 700, 100, 30);
        add(Elegir);
        Elegir.addActionListener(this);
        
        
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == Elegir){
            String ruta=null;
            JFileChooser filec = new JFileChooser();
            filec.showOpenDialog(filec);
            try {
                ruta = filec.getSelectedFile().getAbsolutePath();
            } catch (NullPointerException ex) {
                System.out.println("ERROR: No se ha seleccionado ningún fichero");
            } catch (Exception ex) {
                System.out.println("ERROR: " + ex.getMessage());
            }            
            ficheros f = new ficheros();
            f.cargafichero(ruta);
            repaint();
        }
        if(e.getSource() == salir){
            System.exit(0);
        }
        
    }
    
    @Override
    public void paint(Graphics g) {
        super.paint(g);
        ficheros f = new ficheros();
        Graphics2D g2d = (Graphics2D) g;
        double x, y;
        
        //Línea
        g2d.setColor(Color.white);
        g2d.fillRect(95, 100, 600, 600);
        x=escalax();
        y=escalay();
        for(int i=0; i<f.puntos.size(); i++) { 
            g2d.setColor(Color.black);
            int z= (int)(95+(f.puntos.get(i).getX()*x));
            int w= (int)(100+(f.puntos.get(i).getY()*y));
            g2d.fillOval(z, w, 5, 5);
        }
        if(linea!=null) {
            g2d.setColor(Color.BLUE);
            g2d.drawLine((int)(95+(linea.getpunto1().getX()*x)), (int)(100+(linea.getpunto1().getY()*y)), (int)(95+(linea.getpunto2().getX()*x)), (int) (100+(linea.getpunto2().getY()*y)));
        }
        
        if(lineas!=null){
            for(int i=0; i<lineas.size(); i++) {
                g2d.setColor(Color.BLUE);
                g2d.drawLine((int)(95+(lineas.get(0).getpunto1().getX()*x)), (int)(100+(lineas.get(0).getpunto1().getY()*y)), (int)(95+(lineas.get(0).getpunto2().getX()*x)), (int) (100+(lineas.get(0).getpunto2().getY()*y)));    
                g2d.drawLine((int)(95+(lineas.get(1).getpunto1().getX()*x)), (int)(100+(lineas.get(1).getpunto1().getY()*y)), (int)(95+(lineas.get(1).getpunto2().getX()*x)), (int) (100+(lineas.get(1).getpunto2().getY()*y))); 
                g2d.drawLine((int)(95+(lineas.get(2).getpunto1().getX()*x)), (int)(100+(lineas.get(2).getpunto1().getY()*y)), (int)(95+(lineas.get(2).getpunto2().getX()*x)), (int) (100+(lineas.get(2).getpunto2().getY()*y))); 
            }
        }
        
    }
    
    public void pintarlinea(Punto x, Punto y) {
        linea = new linea(x, y);
        repaint();
    }
    public void pintartriangulo(triangulo t) {
        linea linea1 = new linea(t.getlinea(0).getpunto1(), t.getlinea(0).getpunto2());
        linea linea2 = new linea(t.getlinea(1).getpunto1(), t.getlinea(1).getpunto2());
        linea linea3 = new linea(t.getlinea(2).getpunto1(), t.getlinea(2).getpunto2());
        lineas.add(linea1);
        lineas.add(linea2);
        lineas.add(linea3);
        repaint();
    }
    
    public double escalax() {
        double xf=0, xm=0;
        for(int i=0; i<ficheros.puntos.size(); i++) {
            if(ficheros.puntos.get(i).getX()>xf) {
                xf = ficheros.puntos.get(i).getX();
            }
            if(ficheros.puntos.get(i).getX()<xm) {
                xm = ficheros.puntos.get(i).getX();
            }
        }
        return 600/(xf-xm);
    }
    public double escalay() {
        double yf=0, ym=0;
        ficheros f = new ficheros();
        for(int i=0; i<ficheros.puntos.size(); i++) {
            if(ficheros.puntos.get(i).getY()>yf) {
                yf=ficheros.puntos.get(i).getY();
            }
            if(ficheros.puntos.get(i).getY()<ym) {
                ym = ficheros.puntos.get(i).getY();
            }
        } 
        return 600/(yf-ym);
    }
}
