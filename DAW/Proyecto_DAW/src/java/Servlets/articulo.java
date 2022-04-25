/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import edu.daw.practica5.Articulos;
import edu.daw.practica5.Conexion;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
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
import javax.servlet.http.Part;

/**
 *
 * @author Manuel
 */
public class articulo extends HttpServlet {

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
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("logueado").equals("1")) {
            response.setContentType("text/html;charset=UTF-8");
            try ( PrintWriter out = response.getWriter()) {
                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet articulo</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet articulo at " + request.getContextPath() + "</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/jsp/error.jsp");
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
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("logueado").equals("1")) {

        } else {
            response.sendRedirect(request.getContextPath() + "/jsp/error.jsp");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void actualizarbd(String nombre, String localizacion, String mail) {
        try {
            PreparedStatement ps = null;

            Conexion con;
            con = new Conexion();
            ps = con.getConexion().prepareStatement("INSERT INTO DOCUMENTOS (NOMBRE, LOCALIZACION, CORREO) VALUES (?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, localizacion);
            ps.setString(3, mail);
            ps.executeUpdate();
            ps.close();
            con.Desconexion();
        } catch (SQLException ex) {
            Logger.getLogger(articulo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("logueado").equals("1")) {
            request.getHeaderNames();

            Part filePart = request.getPart("fichero");

            InputStream fileInputStream = filePart.getInputStream();
            String creador = (String) sesion.getAttribute("user");
            String titulo = request.getParameter("titulo_user");
            String texto = request.getParameter("texto_user");
            String categoria = request.getParameter("categoria");

            Articulos art = new Articulos();
            art.subirarticulo(creador, texto, titulo, categoria, texto, filePart.getSubmittedFileName());

            String x = this.getClass().getResource("").getPath();

            String[] f = x.split("Proyecto_DAW/");
            x = f[0] + "Proyecto_DAW/web/images";

            File fileToSave = new File(x + "/articulos_images/" + creador + "/" + filePart.getSubmittedFileName());

            Files.copy(fileInputStream, fileToSave.toPath(), StandardCopyOption.REPLACE_EXISTING);

            response.sendRedirect(request.getContextPath() + "/Controlador/inicio");

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
