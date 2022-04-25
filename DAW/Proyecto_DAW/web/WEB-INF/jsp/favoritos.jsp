<%@page import="java.util.ArrayList"%>
<%@page import="edu.daw.practica5.Articulos"%>
<%@page import="edu.daw.practica5.Favoritos"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.daw.practica5.Conexion"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("logueado").equals("1")) { 
%>

<html>
    <head>
        <title>Favoritos</title>
        <meta charset="utf-8" />
        <meta http-equiv="expires" content="0">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/cuenta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="contenedor">

            <nav></nav>      
        </div>

        <div style="overflow-x: auto;">

        <table id="tabla">
            <tr>
                <td>Titulo</td>
                <td>Creador</td>
            </tr>
            
            
            <%
                
                ArrayList<Articulos> articulos = (ArrayList<Articulos>) request.getAttribute("fav");

                for (int i = 0; i < articulos.size(); i++) {

            %>
            <tr>
                <td><%out.println(articulos.get(i).getTitulo());%></td>
                <td><%out.println(articulos.get(i).getCreador());%></td>
                <td><button type="submit" id="eliminar" name="eliminar" onclick="ajaxeliminar(<%out.println(articulos.get(i).getId());%>)" id="enviar"><p>Eliminar</p></button></td>
            </tr>
            <%
                }
            %>
        </table>
        
    </div>

        <footer id="pie">
            <p>&copy; Manuel Cuesta Rojas</p>
        </footer>


        <script src="../js/favoritos.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

    </body>

</html>


<% } else {
        response.sendRedirect(request.getContextPath()+"/Controlador/error");
    }

%>
