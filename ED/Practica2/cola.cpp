#include <iostream>

#include "cola.h"

#define INCREMENTO 4

cola::cola() {

    elementos=new cliente[INCREMENTO];

    if (elementos!=NULL)   {

        ne=fin=inicio=0;
        Tama=INCREMENTO;

    }
    else   {

        ne=fin=inicio=-1;
        Tama=-1;

    }

}
cola::~cola() {

    if (elementos!=NULL) {

        delete [] elementos;

    }

    elementos=NULL;
    ne=fin=inicio=-1;
    Tama=0;

}

void cola::encolar(cliente e) {

    if (ne==Tama) {
        cliente *NuevaZona=new cliente[Tama+INCREMENTO];
        if (NuevaZona!=NULL) {

            for (int i=0;i<ne; i++) {

                NuevaZona[i]=elementos[inicio];
                inicio++;

                inicio=(inicio+1)%Tama;

                }

            inicio=0;
            fin=ne;
            Tama+=INCREMENTO;
            delete [] elementos;
            elementos=NuevaZona;

          }

    }

    if (ne<Tama) {

        fin -= fin/Tama;
        elementos[fin]=e;
        fin=(fin+1)%Tama;
        ne++;

    }

}

void cola::desencolar()
{
    inicio=(inicio+1)%Tama;
    if (inicio==Tama) {
        inicio=0;
    }
    ne--;

    if (Tama-ne>=INCREMENTO && Tama>INCREMENTO) {

        cliente *NuevaZona=new cliente[Tama-INCREMENTO];
        if (NuevaZona!=NULL) {
            for (int i=0;i<ne; i++) {
                NuevaZona[i]=elementos[inicio];
                inicio=(inicio+1)%Tama;
            }

            Tama-=INCREMENTO;
            inicio=0;
            fin=Tama;
            if(elementos != NULL)
                delete [] elementos;
            elementos=NuevaZona;

        }
    }
}

cliente cola::primero() {

    return elementos[inicio];

}

bool cola::esvacia() {

    return (ne==0);

}

int cola::longitud() {

    return ne;

}
