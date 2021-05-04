/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p8pcd;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.util.ArrayList;

/**
 *
 * @author cuest
 */
public class Canvas extends java.awt.Canvas{
    
    int oficiales;
    int registrador;
    int clientesnota;
    int clientesregistro;
    
    
    private final ArrayList<Clientes> cola;
    
    public Canvas() {
        oficiales=2;
        registrador=1;
        clientesnota=0;
        clientesregistro=0;
        cola=new ArrayList<>();
        
        
    }
    
    public void  atenderoficial() {
        long id = Thread.currentThread().getId();

        Clientes c = cola.stream().filter(Clientes -> Clientes.getId() == id).findFirst().orElse(null);
        c.atendidooficial();
        oficiales--;
        repaint();        
    }
    
    public void atenderregistrador() {
        long id = Thread.currentThread().getId();
        Clientes c = cola.stream().filter(Clientes -> Clientes.getId() == id).findFirst().orElse(null);
        c.atendidoRegistrador();
        registrador--;
        repaint();
    }
    
    public void atenderambos() {
        long id = Thread.currentThread().getId();
        Clientes c = cola.stream().filter(Clientes -> Clientes.getId() == id).findFirst().orElse(null);
        c.atendidoRegistrador();
        c.atendidooficial();
        registrador--;
        oficiales--;
        repaint();
    }
    
    public void sale() {
        long id = Thread.currentThread().getId();
        Clientes c = cola.stream().filter(Clientes -> Clientes.getId() == id).findFirst().orElse(null);
        if (c.atendidoporregistrador()) {
            registrador++;
        }
        if (c.atendidoporoficial()) {
            oficiales++;
        }
        cola.remove(c);
        repaint();
    }
    
    
    public Boolean oficialesocupados() {
        if (oficiales==0) {
            return true;
        } else return false;
    }
    
    public Boolean registradorocupado() {
        if (registrador==0) {
            return true;
        } else return false;
    }
    
    public void entraClienteRegistro() {
        cola.add(new Clientes(Thread.currentThread().getId(), true));
        clientesregistro++;
        repaint();
    }
    
    public void entraClienteNota() {
        cola.add(new Clientes(Thread.currentThread().getId(), false));
        clientesnota++;
        repaint();
    }
    
    
    
    
    @Override
    public void paint(Graphics og) {
        
        Image offs = createImage(getWidth(), getHeight());
        Graphics g = offs.getGraphics();
        System.out.println("numero oficiales: "+oficiales+ " numero de registradores: "+ registrador);
        
        Font f=new Font("arial", Font.BOLD, 22);
        g.setFont(f);
        g.drawString("Tipo de clientes (Simbolo):", 100, 50);
        g.drawString("Nota:", 400, 50);
        g.drawString("©", 500, 50);
        g.drawString("Registro:", 400, 100);
        g.setColor(Color.red);
        g.drawString("®", 500, 100);
        g.setColor(Color.black);
        g.drawLine(0, 140, 1000, 140);
        g.drawString("OFICIAL", 250, 200);
        g.drawString("REGISTRADOR", 600, 200);
        int j=0;
        int h=0;
        int z=0;
        for (int i = 0; i < cola.size(); i++) {
            Clientes c = cola.get(i);
            
            if (c.gettipocliente()==true) {
                //registrador
                if (c.atendidoporoficial() && c.atendidoporregistrador()) {
                    g.setColor(Color.red);
                    g.drawString("® "+c.getId(), 675, 250);
                    g.drawString("® "+c.getId(), 285, 350);
                    g.setColor(Color.black);
                }
                
            } else if (c.gettipocliente()==false) {
                //nota
                if (c.atendidoporoficial()) {
                    g.drawString("© "+c.getId(), 285, 250+z*25);
                    z++;
                }

                if (c.atendidoporregistrador()) {
                    g.drawString("© "+c.getId(), 675, 250);
                }
                
                
                
            }
            
            if (!c.atendidoporoficial() && !c.atendidoporregistrador()) {
                if (c.gettipocliente()==false) {
                    String id = Long.toString(c.getId());
                    g.drawString(id, 250+50*j, 450);
                    j++;
                }else if (c.gettipocliente()==true) {
                    g.setColor(Color.red);
                    String id = Long.toString(c.getId());
                    g.drawString(id, 250+50*j, 450);
                    j++;
                    g.setColor(Color.black);
                }
                    
            }
            
            
        }
        
        g.drawString("Cola (Clientes): ", 50, 450);
        
        
        
        
        og.drawImage(offs, 0, 0, null);        
        
    }
    
    @Override
    public void update(Graphics g) {
        paint(g);
    }
    
}
