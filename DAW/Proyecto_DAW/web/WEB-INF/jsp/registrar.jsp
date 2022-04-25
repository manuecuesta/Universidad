<!DOCTYPE html>
<html>
    <head>
        <title>Resgistrate</title>
        <meta charset="utf-8" />
        <meta http-equiv="expires" content="0">
        <meta http-equiv="Cache-Control" content="no-cache">
        <meta http-equiv="Pragma" CONTENT="no-cache">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="contenedor">

            <nav></nav>      
        </div>

        <div id="formulario">
            
            <form id="registrar" action="/Proyecto_DAW/registrar" method="post">
                <ul>
                    <li>
                        <label for="name">Nombre:
                        <span class="obligatorio">*</span></label>
                        <input type="text" id="nombre" name="name">
                        <p class="color" id="nombre1"></p><br>
                    </li>
                    <li>
                        <label for="Direccion">Direccion:
                        <span class="obligatorio">*</span></label>
                        <input type="text" id="direccion" name="Direccion">
                        <p class="color" id="direccion1"></p><br>
                    </li>
                    <li>
                        <label for="mail">Correo electronico:
                        <span class="obligatorio">*</span></label>
                        <input type="email" id="mail" name="user_mail">
                        <p class="color" id="mail1"></p><br>
                    </li>
                    <li>
                        <label for="pass">Contraseña:
                        <span  id="spanClave">*</span></label>
                        <input type="password" id="pass" name="pass">
                        <p class="color" id="pass11"></p><br>
                    </li>
                    <li>
                        <label for="pass">Contraseña:
                        <span  id="spanClave">*</span></label>
                        <input type="password" id="pass1" name="pass1">
                    </li>
                    <li>
                        <label for="CP">Codigo Postal:
                        <span class="obligatorio">*</span></label>
                        <input type="text" id="cp" name="CP">
                        <p class="color" id="cp1"></p><br>
                    </li><!-- comment -->
                    <li>
                        <label for="telefono">Telefono:
                        <span class="obligatorio">*</span></label>
                        <input type="tel" id="telefono" name="telefono">
                        <p class="color" id="telefono1"></p><br>
                    </li>
                    <p class="aviso">
                    <span class="obligatorio"> * </span>los campos son obligatorios.
                    </p> 
                    <li>
                        <button id="boton" type="submit" onclick="comprobar(event)">Registrarse</button>
                    </li>

                </ul>
            </form>

        </div>

        <footer id="pie">
            <p>&copy; Manuel Cuesta Rojas</p>
        </footer>


        <script src="../js/login.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

    </body>
</html>
