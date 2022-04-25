<%@page import="javax.enterprise.inject.Model"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.daw.practica5.Articulos"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.daw.practica5.Conexion"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("logueado").equals("1")) {%>

<html>
    <head>
        <title>Cuenta</title>
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

        <div id="cambios">

            <p>
                <label for="nombre" class="colocar_nombre"><h1>Cambiar nombre</h1>
                </label>
                <input type="text" name="nombre" id="nombre" placeholder="Escribe tu nombre">
                <button id="cambiarnombre" onclick="ajaxcambiarnombre()">Cambiar nombre</button>
            </p><br>

            <p>
                <label for="contraseña" class="colocar_nombre"><h1>Cambiar contraseña</h1>
                </label>
                <input type="password" name="pass" id="pass" required="obligatorio" placeholder="Escribe tu contraseña">
                <button id="cambiarnombre" onclick="ajaxcambiarpass()">Cambiar contraseña</button>
            </p><br>

            <p>
                <label for="nombre" class="colocar_nombre"><h1>Cambiar correo electrónico</h1>
                </label>
                <input type="email" name="correo" id="correo" required="obligatorio" placeholder="Escribe tu correo electrónico">
                <button id="cambiarnombre" onclick="ajaxcambiarcorreo()">Cambiar correo</button>
            </p><br>

            <%

                ArrayList<Articulos> articulos = (ArrayList<Articulos>) request.getAttribute("articuloscuenta");

                for (int i = 0; i < articulos.size(); i++) {

            %>
            <table>
                <tr>
                    <th>Articulo</th>
                    <th>Opción</th>
                </tr>
                <tr>
                    <td><%out.println(articulos.get(i).getTitulo());%></td>
                    <td><button type="submit" id="eliminar" name="eliminar" onclick="ajaxeliminar(<%out.println(articulos.get(i).getId());%>)" id="enviar"><p>Eliminar</p></button></td>
                </tr>
            </table>
            <%
                }
            %>

        </div>




        <script src="../js/cuenta.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

    </body>

</html>


<% } else {
        response.sendRedirect(request.getContextPath() + "/Controlador/error");
    }

%>
