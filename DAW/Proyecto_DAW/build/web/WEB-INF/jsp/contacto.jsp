<!DOCTYPE html>
<html>
    <head>
        <title>Stats F1</title>
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

        <aside id="formulario">
            
            <form action="/Proyecto_DAW/registrar" method="post">
                <ul>
                    <li><h2>Registrate</h2></li>
                    <li>
                        <label for="name">Nombre:</label>
                        <input type="text" id="name" name="name">
                    </li>
                    <li>
                        <label for="Direccion">Direccion:</label>
                        <input type="text" id="Direccion" name="Direccion">
                    </li>
                    <li>
                        <label for="mail">Correo electronico:</label>
                        <input type="email" id="mail" name="user_mail">
                    </li>
                    <li>
                        <label for="pass">Contraseña:</label>
                        <input type="password" id="pass" name="pass">
                    </li>
                    <li>
                        <label for="CP">Codigo Postal:</label>
                        <input type="text" id="CP" name="CP">
                    </li><!-- comment -->
                    <li>
                        <label for="telefono">Telefono:</label>
                        <input type="tel" id="telefono" name="telefono">
                    </li>
                    <li>
                        <button id="boton" type="submit">Registrarse</button>
                    </li>

                </ul>
            </form>

        </aside>

        <footer id="pie">
            <p>&copy; Manuel Cuesta Rojas</p>
        </footer>


        <script src="../js/login.js"></script>

    </body>
</html>
