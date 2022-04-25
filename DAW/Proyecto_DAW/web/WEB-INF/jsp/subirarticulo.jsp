<!DOCTYPE html>

<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("logueado").equals("1")) {%>

<html>
    <head>
        <title>Subir articulo</title>
        <meta charset="utf-8" />
        <meta http-equiv="expires" content="0">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="contenedor">

            <nav></nav>      
        </div>

        <div class="contact_form" id="contact_form">

            <div class="formulario" id="formulario">      
                <h1>Subir artículo</h1>
                <h3>Rellena toda la información para poder publicar tu artículo</h3>

                <form action="/Proyecto_DAW/articulo" enctype="multipart/form-data" method="POST">      
                    
                    <p>
                        <a >Selecciona la categoria de tu articulo
                            <span class="obligatorio">*</span>
                        <select name="categoria" required="obligatorio">
                            <option value="F1">Formula 1</option> 
                            <option value="F2">Formula 2</option> 
                            <option value="COCHESCALLE">Coches de calle</option>
                            <option value="OTROS">Otros</option>
                        </select></a></br> 
                    </p>

                    <p>
                        <label for="titulo1" class="colocar_nombre">Titulo
                            <span class="obligatorio">*</span>
                        </label>
                        <input type="text" name="titulo_user" required="obligatorio" placeholder="Escribe el titulo">
                    </p>  

                    <p>
                        <label for="texto1" class="colocar_mensaje">Cuerpo del articulo
                            <span class="obligatorio">*</span>
                        </label>                     
                        <textarea type="text" name="texto_user" required="obligatorio" placeholder="Escribe aqui tu artículo..."></textarea> 
                    </p>



                    <p>
                        <a>Sube la imagen de tu artículo en formato (jpg, png o jpeg)
                            <span class="obligatorio">*</span>
                            <input type="file" accept=".jpg, .png, .jpeg" name="fichero"/></br> 
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

        <script src="../js/subirarticulo.js"></script>

    </body>
</html>

<% } else {
        response.sendRedirect(request.getContextPath()+"/Controlador/error");
    }

%>
