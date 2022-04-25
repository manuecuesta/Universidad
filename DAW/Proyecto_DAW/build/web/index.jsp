<!DOCTYPE html>

<html>
    <head>
        <title>Inicio</title>
        <meta charset="utf-8" />
        <meta http-equiv="expires" content="0">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="./css/index.css" rel="stylesheet" type="text/css"/>
    </head>

    <script>
        function logueado() {
            alert("Has inciado sesion de forma correcta");
        }

    </script>

    <%
        HttpSession sesion = request.getSession();
        String a = (String) sesion.getAttribute("logincorrecto");
        if (a != null && a.equals("ok")) {%>
        <%
            sesion.setAttribute("logincorrecto", "no");
        %>
            <body onload="logueado()">

        <%} else {%>
    <body>
        <%}%>
        <div id="contenedor">

            <nav id="nav" name="nav"></nav>

        </div>

        <div class="contact_form" id="contact_form">

            <div class="formulario" id="formulario">      
                <h1>Formulario de contacto</h1>
                <h3>Escríbenos y en breve nos pondremos en contacto contigo</h3>


                <form action="/Proyecto_DAW/contacto" method="post">       


                    <p>
                        <label for="nombre" class="colocar_nombre">Nombre
                            <span class="obligatorio">*</span>
                        </label>
                        <input type="text" name="user_nombre" id="user_nombre" required="obligatorio" placeholder="Escribe tu nombre">
                    </p>

                    <p>
                        <label for="email" class="colocar_email">Email
                            <span class="obligatorio">*</span>
                        </label>
                        <input type="email" name="user_mail" id="user_mail" required="obligatorio" placeholder="Escribe tu Email">
                    </p>

                    <p>
                        <label for="telefone" class="colocar_telefono">Teléfono
                        </label>
                        <input type="tel" name="user_tel" id="user_tel" placeholder="Escribe tu teléfono">
                    </p>    

                    <p>
                        <label for="asunto" class="colocar_asunto">Asunto
                            <span class="obligatorio">*</span>
                        </label>
                        <input type="text" name="user_asunto" id="user_asunto" required="obligatorio" placeholder="Escribe un asunto">
                    </p>    

                    <p>
                        <label for="mensaje" class="colocar_mensaje">Mensaje
                            <span class="obligatorio">*</span>
                        </label>                     
                        <textarea name="user_mensaje" class="texto_mensaje" id="user_mensaje" required="obligatorio" placeholder="Deja aquí tu comentario..."></textarea> 
                    </p>                    

                    <button type="submit" name="enviar_formulario" id="enviar"><p>Enviar</p></button>

                    <p class="aviso">
                        <span class="obligatorio"> * </span>los campos son obligatorios.
                    </p>          

                </form>
            </div>  
        </div>

        <footer id="pie">
            <p>&copy; Manuel Cuesta Rojas</p>
        </footer>





        <%
            if (sesion.getAttribute("logueado") != null && sesion.getAttribute("logueado").equals("1")) {%>
        <script src="./js/indexlogueado.js"></script>
        <%} else {%>
        <script src="./js/index.js"></script>
        <%}
        %>

    </body>
</html>
