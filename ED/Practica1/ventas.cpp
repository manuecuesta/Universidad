#include <iostream>
#include <fstream>
#include <string.h>

#include "ventas.h"
#include "productos.h"

using namespace std;

bool ventas::asignar(cadena Fichero, cadena FicheroResumen) {

    strcpy(fichero, Fichero);
    strcpy(ficheroresumen, FicheroResumen);

    detalle.open(Fichero, ios::binary | ios::in | ios::out);

    if (detalle.fail()) {

        detalle.clear();
        detalle.open(Fichero, ios::binary | ios::out); //crea el fichero si falla
        detalle.close();

    } else {

        detalle.close();
        return true;


    }

    this->detalle.close();

}

void ventas::mostrarventas() {

    venta ventaux;
    producto paux;

    ifstream fpaux(ficheroresumen, ios::binary);

    this->detalle.open(fichero, ios::in | ios::out | ios::binary);

    if (!detalle.fail()) {

        this->detalle.read((char *) &ventaux, sizeof(venta));

        while (!detalle.eof()) {

            fpaux.seekg((ventaux.producto-1)*sizeof(producto), ios::beg);
            fpaux.read((char *) &paux, sizeof(producto));

            cout << "Fecha de venta: " << ventaux.fecha.dia << " / " << ventaux.fecha.mes << " / " << ventaux.fecha.anno << " / " << endl;
            cout << "Producto: " << paux.nombre << endl;
            cout << "Unidades: " << ventaux.unidades << endl;
            cout << "Importe: " << ventaux.importe << endl;
            cout << "--------------------------------------------------------------------------" << endl;
            this->detalle.read((char *) &ventaux, sizeof(venta));

        }

        this->detalle.close();

    }


}

void ventas::anadirventa(int num) {

    venta aux;
    venta vaux;
    int totalp=0;
    int i=0;
    venta *tabla=new venta[101];
    venta *tablav;
    venta *tablavaux;
    int importe_temp;
    int unidades;
    int dia;
    int mes;
    int ano;


    this->detalle.open(fichero, ios::in | ios::out | ios::binary);

    if(!detalle.fail()) {

        cout << "Introduce las unidades vendidas del producto: " << endl;
        cin >> unidades;
        cout << "Introduce el dia de la venta: " << endl;
        cin >> dia;
        cout << "Introduce el mes de la venta: " << endl;
        cin >> mes;
        cout << "Introduce el año de la venta: " << endl;
        cin >> ano;
        cout << "Datos introducidos correctamente" << endl;
        vaux.unidades=unidades;
        vaux.importe=importe_temp;
        vaux.producto=num;
        vaux.fecha.anno=ano;
        vaux.fecha.mes=mes;
        vaux.fecha.dia=dia;
        //this->detalle.read((char *) &aux, sizeof(venta));

        this->detalle.seekg(0,ios::end);//posicionamos al final

        totalp=this->detalle.tellg();
        totalp=totalp/sizeof(venta);//calculamos numero de elementos;

        bool noencontrado=true;

        this->detalle.seekg((sizeof(venta))*(totalp-1),ios::beg);//leemos el ultimo elemento
        this->detalle.read((char *) &aux, sizeof(venta));

        /******************************************************/
        int element=0;
        while(totalp!=0 && noencontrado){
            if((aux.fecha.anno*365+aux.fecha.mes*30+aux.fecha.dia)<(ano*365+mes*30+dia)){
                noencontrado=false;
            }else{
                element++;
                tablavaux=new venta[element];
                tablavaux[element-1]=aux;
                //delete [] tablav;
                tablav=tablavaux;
                totalp--;
                this->detalle.seekg((sizeof(venta))*(totalp-1),ios::beg);
                this->detalle.read((char *) &aux, sizeof(venta));
            }

        }
        this->detalle.seekp((sizeof(venta))*(totalp),ios::beg);
        this->detalle.write((char *) &vaux, sizeof(venta));
        for(int x=element-1;x>=0;x--){
            this->detalle.write((char *) &tablav[x], sizeof(venta));
        }


        /*********************************************************/
        /*
            if ((aux.fecha.anno*365+aux.fecha.mes*30+aux.fecha.dia)<(ano*365+mes*30+dia)) {

                    vaux.unidades=unidades;
                    vaux.importe=importe_temp;
                    vaux.producto=num;
                    vaux.fecha.anno=ano;
                    vaux.fecha.mes=mes;
                    vaux.fecha.dia=dia;

                    this->detalle.seekg(0,ios::end);
                    this->detalle.write((char *) &vaux, sizeof(venta));

            } else {

                vaux.fecha.dia=aux.fecha.dia;
                vaux.fecha.mes=aux.fecha.mes;
                vaux.fecha.anno=aux.fecha.anno;
                vaux.importe=aux.importe;
                vaux.producto=aux.producto;
                vaux.unidades=aux.unidades;
                tabla[i]=vaux;
                i++;


                this->detalle.seekg((sizeof(venta))*(totalp-1),ios::beg);
                this->detalle.read((char *) &aux, sizeof(venta));

                while ((aux.fecha.anno*365+aux.fecha.mes*30+aux.fecha.dia)>(ano*365+mes*30+dia) && totalp>=0) {

                    vaux.fecha.dia=aux.fecha.dia;
                    vaux.fecha.mes=aux.fecha.mes;
                    vaux.fecha.anno=aux.fecha.anno;
                    vaux.importe=aux.importe;
                    vaux.producto=aux.producto;
                    vaux.unidades=aux.unidades;

                    tabla[i]=vaux;
                    i++;

                    this->detalle.seekg((sizeof(venta))*(totalp-1),ios::beg);
                    this->detalle.read((char *) &aux, sizeof(venta));

                }


                for (int x=i; x>=0; x--) {

                    if (totalp==0) {

                        this->detalle.seekg(0 ,ios::beg);

                        tabla[x]=vaux;
                        vaux.fecha.dia=aux.fecha.dia;
                        vaux.fecha.mes=aux.fecha.mes;
                        vaux.fecha.anno=aux.fecha.anno;
                        vaux.importe=aux.importe;
                        vaux.producto=aux.producto;
                        vaux.unidades=aux.unidades;

                        this->detalle.seekg(0 ,ios::beg);
                        this->detalle.write((char *) &vaux, sizeof(venta));

                    } else {

                        this->detalle.seekg((sizeof(venta))*(totalp),ios::beg);

                        totalp++;

                        tabla[x]=vaux;
                        vaux.fecha.dia=aux.fecha.dia;
                        vaux.fecha.mes=aux.fecha.mes;
                        vaux.fecha.anno=aux.fecha.anno;
                        vaux.importe=aux.importe;
                        vaux.producto=aux.producto;
                        vaux.unidades=aux.unidades;

                        this->detalle.seekg((sizeof(venta))*(totalp),ios::beg);
                        this->detalle.write((char *) &vaux, sizeof(venta));

                    }


            }

        }*/

    }

    this->detalle.close();

}

void ventas::resumirfichero() {
/*
    venta fichero;

    int totalp=0;
    int ventastemp=0;
    int unidadestemp=0;
    int importetotaltemp=0;
    int importe=0;
    int dia=0;
    int mes=0;
    int ano=0;

    totalp=this->detalle.tellg();
    totalp=totalp/sizeof(venta);

    this->detalle.open("Ventas.dat", ios::in | ios::out | ios::binary);

    if (!detalle.fail()) {

        this->detalle.seekg(0 , ios::beg);
        this->detalle.read((char *) &fichero, sizeof(venta));

        for (i=0; i<productos.getnumproductos(); i++) {

                    this->detalle.seekg(0, ios::beg);
                    if (i==fichero.producto) {

                        fichero.fecha.dia=dia;
                        fichero.fecha.mes=mes;
                        fichero.fecha.anno=ano;
                        fichero.importe=importe;
                        fichero.unidades=unidadestemp;

                }


            }





    }



*/

}





/*
    void vector::Burbuja(int inicio, int fin)
        {
        int pos,ele;
        for (pos=inicio; pos<fin; pos++)
            for (ele=fin; ele>pos; ele--)
                if(celda[ele-1]>celda[ele])
                    intercambiar(celda[ele-1],celda[ele]);//Funciín genérica que tendrá que ser implementada
        }
*/


