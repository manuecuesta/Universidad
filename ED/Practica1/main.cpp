#include <iostream>
#include <cstdlib>
#include "productos.h"


using namespace std;

int main() {

    ventas obventa;
    productos obproducto("resumen.dat", "ventas.dat");
    obventa.asignar("ventas.dat", "resumen.dat");
    /*productos p("resumen.dat","Ventas.dat");*/
    int opcion;
    int num;

    do {

    system("cls");

    cout << "Practica 1" << endl;
    cout << "\n\t1 Ver fichero detalles ventas" << endl;
    cout << "\t2 Ver fichero productos" << endl;
    cout << "\t3 Añadir venta" << endl;
    cout << "\t4 Crear resumen ventas" << endl;
    cout << "\t5 Obtener estadisticas (tipo producto y periodo)" << endl;
    cout << "\t0 Salir" << endl;

    cout << "\n\tIntroduce una opcion: "; cin >> opcion;

    switch(opcion) {

        case 0: break;

        case 1: system("cls");
                cout << "Hola" << endl;
                system("Pause");
        break;

        case 2: system("cls");
                obproducto.mostrarproductos();
                system("Pause");
                break;

        case 3: system("cls");
                cout << "Introduce el codigo del producto" << endl;
                cin >> num;
                obventa.anadirventa(num);
                system("pause");
                break;

        case 4: system("cls");
                obventa.mostrarventas();
                system("Pause");
        break;

        case 5: break;

    }

    } while (opcion != 0);
    return 0;
}
