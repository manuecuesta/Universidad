<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="utf-8" />
        <meta http-equiv="expires" content="0">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <script>
        function logueado() {
            alert("Correo o contraseña incorrecto!");
        }

    </script>

    <%
        HttpSession sesion = request.getSession();
        String a = (String) sesion.getAttribute("loginincorrecto");
        if (a != null && a.equals("ok")) {%>
    <%
        sesion.setAttribute("loginincorrecto", "no");
    %>
    <body onload="logueado()">

        <%} else {
        sesion.setAttribute("loginincorrecto", "no");%>
    <body>
        <%}%>
        <div id="contenedor">

            <nav></nav>      
        </div>


        <div id="formulario">

            <form action="/Proyecto_DAW/login" method="post">       
                <p>
                    <label for="user_mail" class="colocar_email">Email
                        <span class="obligatorio">*</span>
                    </label>
                    <input type="email" name="user_mail" id="mail" required="obligatorio" placeholder="Escribe tu Email">
                </p>

                <p>
                    <label for="pass" class="colocar_telefono">Contraseña
                        <span class="obligatorio">*</span>
                    </label>
                    <input type="password" name="pass" id="pass" placeholder="Escribe tu contraseña">
                </p>                    

                <button id="boton" type="submit" onclick="comprobar(event)" name="login">Iniciar Sesión</button><br>
                <a href="../Controlador/registrar">¡Resgistrate!</a>
                <p class="aviso">
                    <span class="obligatorio"> * </span>los campos son obligatorios.
                </p>   

            </form>
        </div>

        <div id="icono"></div>

        <style>
            div #icono{
                padding: 5%;
                width: 35px;
                height: 5px;
                background-color: black;
                margin: 6px 0;
            }
        </style>

        <footer id="pie">
            <p>&copy; Manuel Cuesta Rojas</p>
        </footer>


        <script src="../js/login.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

    </body>

</html>
