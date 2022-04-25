/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import com.sun.xml.ws.security.impl.policy.Constants;
import edu.daw.practica5.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
public class comentar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet comentar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet comentar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PreparedStatement ps = null;

        Conexion con;
        try {
            con = new Conexion();

            ps = con.getConexion().prepareStatement("INSERT INTO COMENTARIOS (ARTICULO, COMENTARIO, CREADOR, FECHA) VALUES (?, ?, ?, ?)");
            response.getHeaderNames();
            String comentario = request.getParameter("comentario");
            String id = request.getParameter("id");
            HttpSession sesion = request.getSession();
            String usuario = (String) sesion.getAttribute("user");

            //ps.setString(1, nombre);
            int articulo = Integer.valueOf(id);
            ps.setInt(1, articulo);
            ps.setString(2, comentario);
            ps.setString(3, usuario);
            Timestamp tiempo = new Timestamp(System.currentTimeMillis());
            ps.setTimestamp(4, tiempo);
            ps.executeUpdate();
            ps.close();

            response.sendRedirect(request.getContextPath()+"/Controlador/articulos");

            con.Desconexion();

        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
