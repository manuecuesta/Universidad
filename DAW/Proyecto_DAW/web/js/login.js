let menu = [{name: "Inicio", url: "../Controlador/inicio", options: []},
    {name: "Contacto", url: "../Controlador/contacto", options: []},
];

let menuHTML = '<ul class="menu">';

for (let i in menu) {
    menuHTML += "<li id=" + menu[i].id + "><a href='" + menu[i].url + "'>" + menu[i].name + "</a>";
    for (let j in menu[i].options) {
        if (j == 0) {
            menuHTML += "<ul>";
        }
        menuHTML += "<li><a href='" + menu[i].options[j].url + "'>" + menu[i].options[j].name + "</a>";
        for (let k in menu[i].options[j].options) {
            if (k == 0) {
                menuHTML += "<ul>";
            }
            menuHTML += "<li><a>" + menu[i].options[j].options[k] + "</a></li>";
            if (k == menu[i].options[j].options.length - 1) {
                menuHTML += "</ul>";
            }
        }
        menuHTML += "</li>";
        if (j == menu[i].options.length - 1) {
            menuHTML += "</ul>";
        }

    }
    menuHTML += "</li>";
}
menuHTML += "</ul>";

let nav = document.getElementsByTagName("nav")[0];
nav.innerHTML = menuHTML;


function comprobar(event) {
    
    email = $('#mail').val();
    nombre = $('#nombre').val();
    direccion = $('#direccion').val();
    emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    if (emailRegex.test(email.toString())){
    } else {
        event.preventDefault();
        document.getElementById("mail1").innerHTML="Introduce una dirección de correo electrónico valida";
    }
    
    if (nombre.toString()==="") {
        event.preventDefault();
        document.getElementById("direccion1").innerHTML="Introduce una dirección";
    }
    
    if (nombre.toString()==="") {
        event.preventDefault();
        document.getElementById("nombre1").innerHTML="Introduce un nombre";
    }
    
    pass = $('#pass').val();
    pass1 = $('#pass1').val();
    
    if (pass1.toString()!==pass.toString()) {
        event.preventDefault();
        document.getElementById("pass11").innerHTML="Las contraseñas no coinciden";
    }
    
    cp = $('#cp').val();
    
    if (cp.toString()==="") {
        event.preventDefault();
        document.getElementById("cp1").innerHTML="Introduce un Codigo Postal";
    }
    
    telefono = $('#telefono').val();
    
    if (telefono.toString()==="") {
        event.preventDefault();
        document.getElementById("telefono1").innerHTML="Introduce un telefono";
    }
    
}