/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import edu.daw.practica5.Usuarios;
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
public class login extends HttpServlet {

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

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("login") != null) {
            String user_mail = request.getParameter("user_mail");
            String pass = request.getParameter("pass");
            HttpSession sesion = request.getSession();

            Usuarios user = new Usuarios();

            if (user.loguearusuario(user_mail, pass) == true) {
                sesion.setAttribute("logueado", "1");
                sesion.setAttribute("user", user_mail);
                sesion.setAttribute("logincorrecto", "ok");
                response.sendRedirect(request.getContextPath() + "/Controlador/inicio");
            } else {
                sesion.setAttribute("loginincorrecto", "ok");
                response.sendRedirect(request.getContextPath()+"/Controlador/login");
            }

        }

        /*
        if (request.getParameter("login")!=null) {
            try {
                String user_mail=request.getParameter("user_mail");
                String pass=request.getParameter("pass");
                HttpSession sesion = request.getSession();
                Conexion con;
                PreparedStatement ps = null;
                con = new Conexion();
                ps = con.getConexion().prepareStatement("SELECT * FROM USUARIOS WHERE CORREO like ?");
                ps.setString(1, user_mail);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    String password = rs.getString("PASSWORD");
                    Cifrado cifrar=new Cifrado();
                    ps.close();
                    if (cifrar.descifrar(pass, password)==true) {
                        sesion.setAttribute("logueado", "1");
                        sesion.setAttribute("user", user_mail);
                        sesion.setAttribute("logincorrecto", "ok");
                        response.sendRedirect(request.getContextPath()+"/Controlador/inicio");
                    } else {
                        response.sendRedirect(request.getContextPath()+"/Controlador/login");
                        sesion.setAttribute("loginincorrecto", "ok");
                    }
                } else {
                    response.sendRedirect(request.getContextPath()+"/Controlador/login");
                }
            } catch (SQLException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
        }*/
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
