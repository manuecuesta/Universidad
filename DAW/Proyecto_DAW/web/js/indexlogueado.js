/* Dibujando el menú */
/* El menú está almacenado en un array, pero podría ser también un JSON*/
/* Se recorre la estructura creando una cadena con el contenido HTML */

let menu = [{name: "Inicio", url: "./Controlador/inicio", options: []},
    {name: "Articulos", url: "#", options: [
            {name: "Todos", url: "./Controlador/articulos", options: []},
            {name: "Formula 1", url: "./Controlador/articulos-f1", options: []},
            {name: "Formula 2", url: "./Controlador/articulos-f2", options: []},
            {name: "Coches de calle", url: "./Controlador/cochescalle", options: []},
            {name: "Otros", url: "./Controlador/otros", options: []}]},
    {name: "Contacto", url: "./Controlador/contacto", options: []},
    {name: "Cuenta", url: "",id: "cerrar_sesion", options: [{name: "Ver mi cuenta", url: "./Controlador/cuenta", options: []},
            {name: "Favoritos", url: "./Controlador/favoritos"},
            {name: "Crear articulo", url: "./Controlador/subirarticulo"},
            {name: "Cerrar Sesion", url: "./cerrar_sesion"}]},
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

