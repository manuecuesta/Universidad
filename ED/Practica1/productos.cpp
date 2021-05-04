#include <iostream>
#include <fstream>
#include <string.h>

#include "productos.h"

using namespace std;

productos::productos(cadena Fichero, cadena FicheroVentas) {

    producto paux;
    maxcatalogo=0;
    numproductos=0;

    strcpy(fichero, Fichero);

    resumen.open(Fichero, ios::binary | ios::in | ios::out);

    if (resumen.fail()) {

        resumen.clear();
        resumen.open(Fichero, ios::binary | ios::out); //crea el fichero si falla
        resumen.close();
        resumen.open(Fichero, ios::binary | ios::in | ios::out);

    }

    resumen.read((char *) &paux, sizeof(producto));

    while(!resumen.eof()) {

        maxcatalogo++;

        if (paux.tipo!=-1) {

            numproductos++;

        }

        resumen.read((char *) &paux, sizeof(producto));

    }

    resumen.close();
    ven.asignar(FicheroVentas, Fichero);

}

productos::~productos() {

}

int productos::getmaxcatalogo() {

    return maxcatalogo;

}

void productos::setmaxcatalogo(int num) {

    maxcatalogo=num;

}

void productos::mostrarproductos() {

    producto paux;

    this->resumen.open(fichero, ios::in | ios::out | ios::binary);

    if (!resumen.fail()) {

        this->resumen.read((char *) &paux, sizeof(producto));

        while (!resumen.eof()) {


            cout << "Producto: " << paux.nombre << endl;
            cout << "Ultima venta: " << paux.ultimaventa.dia << " / " << paux.ultimaventa.mes << " / " << paux.ultimaventa.anno << " / " << endl;
            cout << "Importe: " << paux.importe << endl;
            cout << "Unidades: " << paux.unidades << endl;
            cout << "Tipo de producto: " << paux.tipo << endl;
            cout << "--------------------------------------------------------------------------" << endl;
            this->resumen.read((char *) &paux, sizeof(producto));

        }

        this->resumen.close();

    }





}
bool productos::anadirventa(){

    int num;
    cout << "Introduce el codigo del producto" << endl;
    cin >> num;

    ven.anadirventa(num);
}

void productos::actualizarresumen() {






}
