/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import edu.daw.practica5.Cifrado;
import edu.daw.practica5.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manuel
 */
public class registrar extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registrar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registrar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            System.out.println("hola");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String nombre = request.getParameter("name");
        String direccion = request.getParameter("Direccion");
        String mail = request.getParameter("user_mail");
        String pass = request.getParameter("pass");
        Cifrado cifrado = new Cifrado();
        
        String contraseñacifrada = cifrado.cifrar(pass);
        
        String cp = request.getParameter("CP");
        String telefono = request.getParameter("telefono");
        
        Usuarios user = new Usuarios();
        
        if (user.registrarusuario(nombre, direccion, mail, contraseñacifrada, cp, telefono)==true) {
            response.sendRedirect(request.getContextPath()+"/Controlador/login");
        } else {
            response.sendRedirect(request.getContextPath()+"/Controlador/registrar");
        }
        
        
        
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
