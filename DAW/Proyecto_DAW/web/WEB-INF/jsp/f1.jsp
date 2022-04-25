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

            ArrayList<Articulos> articulos = (ArrayList<Articulos>) request.getAttribute("articulosf1");

        %> <div class="contenedor_articulos"> <%            for (int i = 0; i < articulos.size(); i++) {

                String imagen = articulos.get(i).getImagen();
                String[] d = imagen.split("web/");

            %><div class="div_articulos">
                <a><h1><%out.println(articulos.get(i).getTitulo());%></h1></a><br>
                <img src="../<%out.println(d[1]);%>"/><br>
                <form action="/Proyecto_DAW/Controlador/verarticulo" method="post">
                    <input id="id" name="id" type="hidden" value="<%out.print(articulos.get(i).getId());%>">
                <button type="submit">Ver artículo</button>
                </form>
                <%}
                    HttpSession sesion = request.getSession();

                %>


            </div>


            <%            sesion = request.getSession();
                if (sesion.getAttribute("logueado") != null && sesion.getAttribute("logueado").equals("1")) {%>
            <script src="../js/articuloslogueado.js"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
            <%} else {%>
            <script src="../js/articulos.js"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
            <%}
            %>

    </body>
</html>
