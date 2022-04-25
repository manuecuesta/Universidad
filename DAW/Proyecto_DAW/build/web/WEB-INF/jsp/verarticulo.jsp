<%@page import="edu.daw.practica5.Comentarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.daw.practica5.Articulos"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Articulos</title>
        <meta charset="utf-8" />
        <meta http-equiv="expires" content="0">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/articulos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="contenedor">

            <nav></nav>      
        </div>

        <%

            Articulos articulos = (Articulos) request.getAttribute("verarticulo");

        %> <div class="contenedor_articulos"> <%            String imagen = articulos.getImagen();
            String[] d = imagen.split("web/");

            %><div class="div_articulos">
                <a><h1><%out.println(articulos.getTitulo());%></h1></a><br>
                <img src="../<%out.println(d[1]);%>"/><br>
                <a id="texto"><%out.println(articulos.getTexto());%></a><br>
                <%
                    HttpSession sesion = request.getSession();

                %>
                <div style="overflow-x: auto;">
                    <table class="default">

                        <%                            Comentarios coment = new Comentarios();

                            ArrayList<Comentarios> comentarios = coment.leercomentarios(articulos.getId());

                            if (comentarios.size() > 0) {
                        %>
                        <tr>
                            <th>Creador</th>
                            <th>Comentario</th>
                        </tr>
                        <%}

                            for (int x = 0; x < comentarios.size(); x++) {

                        %>

                        <tr>

                            <td><%out.println(comentarios.get(x).getCreador());%></td>
                            <td><%out.println(comentarios.get(x).getComentario());%></td>
                        </tr>

                        <%}%>

                    </table>
                </div>

                <%if (sesion.getAttribute("logueado") != null && sesion.getAttribute("logueado").equals("1")) {%>    



                <form action="/Proyecto_DAW/comentar" method="post">    
                    <p>
                        <label for="mensaje" class="colocar_mensaje">
                        </label>                     
                        <textarea name="comentario" class="texto_mensaje" id="comentario" placeholder="Deja aquí tu comentario..."></textarea> 
                    </p>
                    <%int id = articulos.getId();
                        String id1 = Integer.toString(id);
                    %>
                    <input name="id" type="hidden" value="<%out.print(articulos.getId());%>">
                    <button type="submit" id="enviar"><p>Enviar</p></button>

                </form>
                <button type="submit" id="fav" name="fav" onclick="ajax(<%out.println(articulos.getId());%>)" id="enviar"><p>Añadir a favoritos</p></button>



            </div><%
                }

            %>


        </div>


        <%            
            sesion = request.getSession();
            if (sesion.getAttribute("logueado") != null && sesion.getAttribute("logueado").equals("1")) {%>
        <script src="../js/articuloslogueado.js"></script>
        <script src="../js/jquery.js"></script>
        <%} else {%>
        <script src="../js/articulos.js"></script>
        <script src="../js/jquery.js"></script>
        <%}
        %>

    </body>
</html>
