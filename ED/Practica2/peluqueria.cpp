#include <iostream>
#include <fstream>
#include <string.h>

#include "peluqueria.h"
#include "lista.h"

using namespace std;

int peluqueria::colamenor(int tiposervicio) {

    int itemp=-1;
    int j=1;

    while (j<=l.longitud()) {

        if (tiposervicio==l.observar(j).TipoServicio) {

            if (itemp==-1) {

                itemp=j;

            } else {

                if (l.observar(j).Col.longitud() < l.observar(itemp).Col.longitud()) {

                    itemp=j;

                }

            }

        }

        j++;

    }

    return itemp;
}

int peluqueria::colamayor(int tiposervicio) {

    int itemp=-1;
    int j=1;

    while (j<=l.longitud()) {

        if (tiposervicio==l.observar(j).TipoServicio) {

            if (itemp==-1) {

                itemp=j;

            } else {

                if (l.observar(j).Col.longitud() > l.observar(itemp).Col.longitud()) {

                    itemp=j;

                }

            }

        }

        j++;

    }

    return itemp;
}

int peluqueria::peluqueroservicio(int tiposervicio) {

    int i=1;
    int temp=0;

    while (i<=l.longitud()) {

        if (tiposervicio==l.observar(i).TipoServicio) {

            temp++;

        }

        i++;

    }

    return temp;

}

int peluqueria::nclientes(int tiposervicio) {

    int i=1;
    int temp=0;

    while (i<=l.longitud()) {

        if (tiposervicio==l.observar(i).TipoServicio) {

            temp+=l.observar(i).Col.longitud();

        }

        i++;

    }

    return temp;

}

void peluqueria::AbrirPeluqueria(char *nombrefichero) {

    int i=l.longitud();

    while (!l.esvacia()) {

        l.eliminar(i);
        i--;

    }

    int np=0;
    int npe=0;
    peluquerof paux;
    peluquero aux;
    cliente temp;

    ifstream fich(nombrefichero, ios::binary);
    if (!fich.fail()){
        fich.clear();
        fich.seekg(0, ios::beg);

        fich.read((char *) &np, sizeof(int));

        for (int i=0; i<np; i++) {

            fich.read((char *) &paux, sizeof(peluquerof));
            strcpy(aux.Apellidos,paux.Apellidos);
            strcpy(aux.Nombre, paux.Nombre);
            aux.Codigo=paux.Codigo;
            aux.TipoServicio=paux.TipoServicio;
            IncorporarPeluquero(aux);
            //l.insertar(i+1,aux);

        }


        fich.read((char *) &npe, sizeof(int));

        for (int j=0; j<npe; j++) {

            fich.read((char *) &temp, sizeof(cliente));
            IncorporarCliente(temp);

        }




    } else {

        cout << "Error al abrir el fichero" << endl;
        fich.clear();

    }

    fich.close();
    Mostrar();
}

void peluqueria::IncorporarPeluquero(peluquero t) {

    bool encontrado=false;

    int noclientes=0;
    int npeluqueros=0;
    int repartir=0;
    peluquero aux;

    int i=1;

    while (encontrado==false && i<=l.longitud()) {


        if (l.observar(i).Codigo>t.Codigo)
            encontrado=true;
        else
            i++;

    }

    npeluqueros = (peluqueroservicio(t.TipoServicio)+1);
    noclientes = nclientes(t.TipoServicio);

    if (npeluqueros!=0 && noclientes!=0) {

        repartir=noclientes/(npeluqueros);

    }

    while (repartir>0) {

        int temp=0;
        temp = colamayor(t.TipoServicio);
        l.copiarpeluquero(aux, l.observar(temp));
        t.Col.encolar(aux.Col.primero());
        aux.Col.desencolar();
        l.modificar(temp, aux);

        repartir--;

    }

    l.insertar(i, t);

}

void peluqueria::Mostrar() {

    int i=1;

    peluquero aux;

    while (i<=l.longitud()) {

        l.copiarpeluquero(aux, l.observar(i));

        cout << "\nPeluquero " << aux.Codigo <<": " << aux.Apellidos << ", " << aux.Nombre << "\tTipo de servicio: " << aux.TipoServicio << endl;
        cout << "Clientes: " << endl;
        cout << "\tApellidos\t\t\tNombre\t\tEdad\tTipo de servicio\tHora de llegada\n" << endl;

        while (!aux.Col.esvacia()) {

            cout << "\t" << aux.Col.primero().Apellidos << "\t\t\t" << aux.Col.primero().Nombre << "\t\t" << aux.Col.primero().Edad << "\t" << aux.Col.primero().TipoServicio << "\t\t\t" << aux.Col.primero().HoraLlegada << endl;
            aux.Col.desencolar();

        }

        i++;

    }

}

bool peluqueria::IncorporarCliente(cliente cli) {

    peluquero temp;
    bool incorporar=false;

    int i=1;
    int itemp=-1;

    while(incorporar==false) {

        if (cli.TipoServicio==l.observar(i).TipoServicio) {

            if (l.observar(i).Col.esvacia()) {

                l.copiarpeluquero(temp, l.observar(i));
                temp.Col.encolar(cli);
                l.modificar(i, temp);
                incorporar=true;

            } else {


                //Busqueda de la cola menor
                itemp=colamenor(cli.TipoServicio);

                l.copiarpeluquero(temp, l.observar(itemp));
                temp.Col.encolar(cli);
                l.modificar(itemp, temp);
                incorporar=true;

            }

        }

        i++;

    }

    if (incorporar==true) {

        return true;

    } else return false;

}

bool peluqueria::EliminarCliente(cadena Nombre, cadena Apelllidos) {

    int i=1;
    int itemp;
    int temp=0;
    bool encontrado=false;
    peluquero aux;


    while(i<=l.longitud() && !encontrado) {

        l.copiarpeluquero(aux, l.observar(i));
        temp=1;
        while (temp<=aux.Col.longitud()) {

            if (strcmp(aux.Col.primero().Nombre, Nombre)==0 && strcmp(aux.Col.primero().Apellidos, Apelllidos)==0) {

                aux.Col.desencolar();
                encontrado=true;
                itemp=i;

            } else {

                aux.Col.encolar(aux.Col.primero());
                aux.Col.desencolar();

            }

            temp++;

        }

        i++;

    }
    if (encontrado) {

        l.modificar(itemp, aux);

    }

}

bool peluqueria::AtenderCliente(int CodigoPeluquero) {

    int i=1;
    bool encontrado=false;
    peluquero aux;
    int itemp;

    while(i<=l.longitud() && !encontrado) {

        l.copiarpeluquero(aux, l.observar(i));

        if (aux.Codigo==CodigoPeluquero) {

            aux.Col.desencolar();
            itemp=i;
            encontrado=true;

        }

        i++;

    }

    if (encontrado==true) {

        l.modificar(itemp, aux);
        return true;

    } else return false;

}

bool peluqueria::RetirarPeluquero(int codigo) {

    int i=1;
    peluquero aux;
    bool encontrado=false;

    while (i<=l.longitud() && encontrado==false) {

        l.copiarpeluquero(aux, l.observar(i));

        if (aux.Codigo==codigo) {

            encontrado=true;

            if (peluqueroservicio(aux.TipoServicio)<=1) {

                cout << "El peluquero no se puede retirar" << endl;

            } else {

                l.eliminar(i);

                while (!aux.Col.esvacia()) {

                    l.observar(colamenor(aux.TipoServicio)).Col.encolar(aux.Col.primero());
                    aux.Col.desencolar();

                }

                cout << "Peluquero retirado correctamente" << endl;
            }

        }

        i++;

    }

}

void peluqueria::VolcarPeluqueria(char *nombrefichero) {

    int i=1;
    int x=1;
    int z=1;
    int noclientes=0;
    peluquero aux;
    peluquerof faux;
    cliente caux;

    fstream fich(nombrefichero, ios::binary | ios::in | ios::out);

    fich.clear();

    if (!fich.fail()) {

        fich.seekp(0, ios::beg);

        int n=l.longitud();

        fich.write((char *) &n, sizeof(int));

        while (i<=l.longitud()) {

            strcpy(faux.Nombre, l.observar(i).Nombre);
            strcpy(faux.Apellidos, l.observar(i).Apellidos);
            faux.Codigo=l.observar(i).Codigo;
            faux.TipoServicio=l.observar(i).TipoServicio;

            fich.write((char *) &faux, sizeof(peluquerof));

            i++;

        }

        while (z<=l.longitud()) {

            int t=0;

            l.copiarpeluquero(aux, l.observar(z));

            while (!aux.Col.esvacia()) {

                noclientes++;
                aux.Col.desencolar();
                t++;

            }

            z++;

        }

        fich.write((char *) &noclientes, sizeof(int));

        while (x<=l.longitud()) {

            l.copiarpeluquero(aux, l.observar(x));

            while (!aux.Col.esvacia()) {

                strcpy(caux.Nombre, aux.Col.primero().Nombre);
                strcpy(caux.Apellidos, aux.Col.primero().Apellidos);
                caux.Edad=aux.Col.primero().Edad;
                caux.HoraLlegada=aux.Col.primero().HoraLlegada;
                caux.TipoServicio=aux.Col.primero().TipoServicio;

                fich.write((char *) &caux, sizeof (cliente));
                aux.Col.desencolar();

            }

            x++;

        }


    }else{
        fich.clear();
    }
    fich.close();





}




