/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
public class cerrar_sesion extends HttpServlet {

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
        sesion.setAttribute("logueado", "0");
        sesion.removeAttribute((String) sesion.getAttribute("logueado"));
        sesion.removeAttribute((String) sesion.getAttribute("user"));
        response.sendRedirect(request.getContextPath()+"/Controlador/inicio");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        sesion.setAttribute("logueado", "0");
        sesion.removeAttribute((String) sesion.getAttribute("logueado"));
        sesion.removeAttribute((String) sesion.getAttribute("user"));
        response.sendRedirect(request.getContextPath()+"/Controlador/inicio");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        sesion.setAttribute("logueado", "0");
        sesion.removeAttribute((String) sesion.getAttribute("logueado"));
        sesion.removeAttribute((String) sesion.getAttribute("user"));
        response.sendRedirect(request.getContextPath()+"/Controlador/inicio");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
