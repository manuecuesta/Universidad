/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import edu.daw.practica5.Articulos;
import edu.daw.practica5.Comentarios;
import edu.daw.practica5.Favoritos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
public class Controlador extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            String accion;
            accion = request.getPathInfo();
            String vista = null;
            
            HttpSession sesion = request.getSession();
            String logueado = (String) sesion.getAttribute("logueado");
            Articulos art = new Articulos();
            Comentarios coment = new Comentarios();
            Favoritos fav = new Favoritos();
            ArrayList<Comentarios> comentarios;
            ArrayList<Articulos> articulos;
            switch (accion) {
                case "/articulos":
                    articulos = art.devolver("TODOS");
                    request.setAttribute("articulostodos", articulos);
                    vista = "/WEB-INF/jsp/articulos.jsp";
                    break;
                case "/login":
                    vista = "/WEB-INF/jsp/login.jsp";
                    break;
                case "/inicio":
                    response.sendRedirect("/Proyecto_DAW");
                    break;
                case "/articulos-f1":
                    articulos = art.devolver("F1");
                    request.setAttribute("articulosf1", articulos);
                    vista = "/WEB-INF/jsp/f1.jsp";
                    break;
                case "/articulos-f2":
                    articulos = art.devolver("F2");
                    request.setAttribute("articulosf2", articulos);
                    vista = "/WEB-INF/jsp/f2.jsp";
                    break;
                case "/cochescalle":
                    articulos = art.devolver("COCHESCALLE");
                    request.setAttribute("articuloscalle", articulos);
                    vista = "/WEB-INF/jsp/cochescalle.jsp";
                    break;
                case "/otros":
                    articulos = art.devolver("OTROS");
                    request.setAttribute("articulosotros", articulos);
                    vista = "/WEB-INF/jsp/otros.jsp";
                    break;
                case "/contacto":
                    response.sendRedirect("/Proyecto_DAW#contact-form");
                    break;
                case "/cuenta":
                    if (logueado!=null && logueado.equals("1")) {
                        
                        String mail = (String) sesion.getAttribute("user");
                        articulos = art.devolvercuenta1(mail);
                        request.setAttribute("articuloscuenta", articulos);
                        vista = "/WEB-INF/jsp/cuenta.jsp";
                    } else vista="/WEB-INF/jsp/error.jsp";
                    break;
                case "/favoritos":
                    if (logueado!=null && logueado.equals("1")) {
                        articulos = fav.devolverlista((String) sesion.getAttribute("user"));
                        request.setAttribute("fav", articulos);
                        vista = "/WEB-INF/jsp/favoritos.jsp";
                    } else vista="/WEB-INF/jsp/error.jsp";
                    break;
                case "/subirarticulo":
                    if (logueado!=null && logueado.equals("1")) {
                        vista = "/WEB-INF/jsp/subirarticulo.jsp";
                    } else vista="/WEB-INF/jsp/error.jsp";
                    break;
                case "/registrar":
                    vista = "/WEB-INF/jsp/registrar.jsp";
                    break;
                case "/verarticulo":
                    String id = request.getParameter("id");
                    int id1 = Integer.parseInt(id);
                    request.setAttribute("verarticulo", art.getarticulo(id1));
                    vista = "/WEB-INF/jsp/verarticulo.jsp";
                    break;
                default:
                    vista = "/WEB-INF/jsp/error.jsp";
                    break;
            }
            if (vista!=null) {
                RequestDispatcher rd = request.getRequestDispatcher(vista);
                rd.forward(request, response);
            }

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
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
