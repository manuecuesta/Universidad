#include <iostream>
#include <cstdlib>

#include "peluqueria.h"


using namespace std;

int main() {

    int opcion;
    peluqueria p;

    do {

    system("cls");

    cout << "Practica 1" << endl;
    cout << "\n\t1 Leer Fichero (Rescatar Copia)" << endl;
    cout << "\t2 Insertar peluquero" << endl;
    cout << "\t3 Insertar cliente" << endl;
    cout << "\t4 Retirar peluquero" << endl;
    cout << "\t5 Atender cliente" << endl;
    cout << "\t6 Mostrar peluqueria" << endl;
    cout << "\t7 Eliminar un cliente" << endl;
    cout << "\t8 Volcar a fichero (Crear copia)" << endl;
    cout << "\t0 Salir" << endl;

    cout << "\n\tIntroduce una opcion: "; cin >> opcion;

    switch(opcion) {

        case 0: break;

        case 1: system("cls");
                p.AbrirPeluqueria("inicial.dat");
                system("pause");
                break;

        case 2: {
                system("cls");
                peluquero aux;
                cin.ignore();
                cout << "Introduce los datos del peluquero: " << endl;
                cout << "\tIntroduce el nombre: ";
                cin.getline(aux.Nombre, sizeof(cadena));
                cout << "\n\tIntroduce los apellidos: ";
                cin.getline(aux.Apellidos, sizeof(cadena));
                cout << "\n\tIntroduce el codigo del peluquero: ";
                cin >> aux.Codigo;
                cout << "\n\tIntroduce el tipo de servicio del peluquero: ";
                cin >> aux.TipoServicio;

                while (!aux.Col.esvacia()) {

                    aux.Col.desencolar();

                }

                p.IncorporarPeluquero(aux);
                cout << "Peluquero introducido correctamente" << endl;
                system("pause");
                }
                break;

        case 3: {
                system("cls");
                cliente caux;
                cin.ignore();
                cout << "Introduce los datos del cliente: " << endl;
                cout << "\tIntroduce el nombre: ";
                cin.getline(caux.Nombre, sizeof(cadena));
                cout << "\n\tIntroduce los apellidos: ";
                cin.getline(caux.Apellidos, sizeof(cadena));
                cout << "\n\tIntroduce el tipo de servicio del cliente: ";
                cin >> caux.TipoServicio;
                cout << "\n\tIntroduce la edad del cliente: ";
                cin >> caux.Edad;
                cout << "\n\tIntroduce la hora de llegada del cliente en minutos: ";
                cin >> caux.HoraLlegada;

                p.IncorporarCliente(caux);
                cout << "Peluquero introducido correctamente" << endl;
                system("pause");
                }
                break;

        case 4: {
                system("cls");

                int codigo;

                cout << "Introduce el codigo del peluquero que deseas retirar: ";
                cin >> codigo;

                p.RetirarPeluquero(codigo);
                system("pause");
                }
                break;

        case 5: {
                system("cls");
                int codigo;
                cout << "Introduce el codigo del peluquero: ";
                cin >> codigo;
                p.AtenderCliente(codigo);
                cout << "El cliente ha dejado de estar en la cola" << endl;
                }
                break;

        case 6: system("cls");
                p.Mostrar();
                system("pause");
                break;

        case 7: {

                system("cls");

                cadena Nombre, Apellidos;

                cin.ignore();

                cout << "Introduce el nombre del cliente que desea retirar: ";
                cin.getline(Nombre, sizeof(cadena));
                cout << "Introduce los apellidos del cliente que desea retirar: ";
                cin.getline(Apellidos, sizeof(cadena));

                p.EliminarCliente(Nombre, Apellidos);

                system("pause");
                break;

                }

        case 8: system("cls");
                p.VolcarPeluqueria("inicial.dat");
                cout << "Datos guardados correctamente en el fichero" << endl;
                system("pause");
                break;

    }

    } while (opcion != 0);
    return 0;
}
