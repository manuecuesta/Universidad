#include <iostream>
#include <string.h>

#include "lista.h"

#define INCREMENTO 4

void lista::copiarpeluquero(peluquero &destino,peluquero &origen) {

    strcpy(destino.Nombre, origen.Nombre);
    strcpy(destino.Apellidos, origen.Apellidos);
    destino.Codigo=origen.Codigo;
    destino.TipoServicio=origen.TipoServicio;

    while (!destino.Col.esvacia()) {

        destino.Col.desencolar();

    }

    for (int i=1; i<=origen.Col.longitud(); i++) {

        destino.Col.encolar(origen.Col.primero());
        origen.Col.encolar(origen.Col.primero());
        origen.Col.desencolar();

    }

}


lista::lista()  {
    elementos=new peluquero[INCREMENTO];
    if (elementos!=NULL) {

        Tama=INCREMENTO;
        n=0;

    } else {

        Tama=n=-1;

    }
}

lista::~lista() {

    if (elementos!=NULL) {

        delete [] elementos;


    }

    elementos=NULL;
    Tama=n=0;

}

void lista::insertar(int i, peluquero &e)
{
    int pos;
    if (n==Tama) {
        peluquero *NuevaZona=new peluquero[Tama+INCREMENTO];
        if (NuevaZona!=NULL) {

            for (int i=0;i<n; i++) {

                copiarpeluquero(NuevaZona[i], elementos[i]);

            }

            Tama+=INCREMENTO;
            delete [] elementos;
            elementos=NuevaZona;

        }

    }

if (n<Tama) {

    for (pos=n-1; pos>=i-1; pos--) {

        copiarpeluquero(elementos[pos+1], elementos[pos]);  // Desplazamiento

        }

    copiarpeluquero(elementos[i-1], e);
    n++;

    }

}

void lista::modificar(int i, peluquero &e) {

    copiarpeluquero(elementos[i-1], e);

}

bool lista::esvacia() {

    return (n == 0);

}

void lista::eliminar(int i)
{
    while (i<n)  {
        copiarpeluquero(elementos[i-1], elementos[i]); // Desplazamiento
        i++;
    }

    n--;

    if (Tama-n>=INCREMENTO && Tama>INCREMENTO) {

        peluquero *NuevaZona=new peluquero[Tama-INCREMENTO];

        if (NuevaZona!=NULL) {

            Tama-=INCREMENTO;
            for (int i=0;i<Tama; i++) {
                copiarpeluquero(NuevaZona[i],elementos[i]);
            }
            delete [] elementos;
            elementos=NuevaZona;


        }

    }

}

int lista::posicion(peluquero &e) {

    int i=0;

    while (elementos[i].Codigo!=e.Codigo && i < n) {

        i++;

    }

    return (i == n ? -1 : i+1);

}

bool lista::pertenece(peluquero &e) {

    return (posicion(e) != -1);

}

int lista::longitud() {

    return n;

}




