#include <iostream>
#include <cstdlib>
#include "listaDinamica.h"
using namespace std;

typedef struct nodo *Arbol;

Arbol crearNodo(int x)
{
     Arbol nuevoNodo = new(struct nodo);
     nuevoNodo->id = x;
     nuevoNodo->izq = NULL;
     nuevoNodo->der = NULL;

     return nuevoNodo;
}

Arbol crearNodo(int x, int precio)
{
     Arbol nuevoNodo = new(struct nodo);
     nuevoNodo->precio = precio;
     nuevoNodo->id = x;
     nuevoNodo->izq = NULL;
     nuevoNodo->der = NULL;

     return nuevoNodo;
}

void insertar(nodo *&arbol, int x) {

    if (arbol==NULL) {

        nodo *nuevo_nodo = crearNodo(x);
        arbol=nuevo_nodo;
        arbol->precio=0;

    }
}

void insertar(nodo *&arbol, int x, int precio) {

    if (arbol==NULL) {

        nodo *nuevo_nodo = crearNodo(x, precio);
        arbol=nuevo_nodo;

    } else {
        int valor=arbol->id;
        if (x<valor) {

            insertar(arbol->izq, x, precio);

        } else if (x>=valor) {

            insertar(arbol->der, x, precio);

        }
    }

}

void verArbol(nodo *arbol, int n)
{
     if(arbol==NULL) {
          return;
     } else {
         verArbol(arbol->der, n+1);

         for(int i=0; i<n; i++) {
             cout<<"   ";
         }
         cout<< arbol->id<<endl;
         verArbol(arbol->izq, n+1);

     }

}

void verArbolprecio(nodo *arbol, int n)
{
     if(arbol==NULL) {
          return;
     } else {
         verArbolprecio(arbol->der, n+1);

         for(int i=0; i<n; i++) {
             cout<<"   ";
         }
         cout<< arbol->precio <<endl;
         verArbolprecio(arbol->izq, n+1);

     }

}
int n=0;
int vec[500];

int confirmar(nodo *arbol) {

    for (int i=0; i<n; i++) {

        if (arbol->id==vec[i]) {

            return i;

        }

    }

    return -1;

}

int temp=0;
nodo *nodo_copia;
int coste=0;
int mejor=0;
void mejorcamino(nodo *arbol) {

    if (temp==0) {

        nodo_copia = arbol;

    }
    if (temp!=0) {
        cout << arbol->id << " ";
        }

    temp++;

    if (arbol->der!=NULL | arbol->izq!=NULL) {

        if (vec[0]==NULL) {

            vec[0]=-2;
            return mejorcamino(arbol);

        } else {
            int a;
            int b;
            if (arbol->der!=NULL) {
                a=arbol->der->precio;}
            if (arbol->izq!=NULL) {
                b=arbol->izq->precio;}


            if (a <= b && confirmar(arbol)==-1) {

                if(confirmar(arbol->der)==-1 && confirmar(arbol->izq)!=-1) {

                    vec[n+1]=arbol->der->id;
                    n++;
                    coste+=arbol->precio;
                    mejorcamino(arbol->der);


                } else if (confirmar(arbol->izq)==-1 && confirmar(arbol->der)!=-1) {

                    vec[n+1]=arbol->izq->id;
                    n++;
                    coste+=arbol->precio;
                    mejorcamino(arbol->izq);

                } else {

                    vec[n+1]=arbol->der->id;
                    n++;
                    coste+=arbol->precio;
                    if(arbol->der!=NULL) {

                    mejorcamino(arbol->der);}

                }

            } else if (a > b && confirmar(arbol)==-1) {
                if(confirmar(arbol->der)==-1 && confirmar(arbol->izq)!=-1) {

                    vec[n+1]=arbol->der->id;
                    n++;
                    coste+=arbol->precio;
                    mejorcamino(arbol->der);

                } else if (confirmar(arbol->izq)==-1 && confirmar(arbol->der)!=-1) {

                    vec[n+1]=arbol->izq->id;
                    n++;
                    coste+=arbol->precio;
                    mejorcamino(arbol->izq);

                } else {
                    vec[n+1]=arbol->izq->id;
                    n++;
                    coste+=arbol->precio;
                    if(arbol->izq!=NULL) {

                    mejorcamino(arbol->izq);}
                }

            }


        }

    } else {

        coste+=arbol->precio;
        if (mejor==0) {

            mejor=coste;

        } else if (coste<mejor) {

            mejor=coste;

        }
        cout << "Coste camino: " << coste << endl;
        cout << "\n" << endl;
        coste=0;
        mejorcamino(nodo_copia);



    }

}








int main()
{
    Arbol arbol = NULL;   // creado Arbol

    int n;
    int x;
    int cost;

    int opt;
    do {

        system("Cls");
        cout << "Leer la informacion proporcionada por la opcion 9 puede ayudar en la ejecucion del programa" << endl;
        cout << "1.-Insertar arbol" << endl;
        cout << "2.-Insertar arbol del ejercicio ##ADVERTENCIA: EL ARBOL ACTUAL SERA ELIMINADO" << endl;
        cout << "3.-Ver arbol actual" << endl;
        cout << "4.-Caminos" << endl;
        cout << "5.-Coste mejor camino" << endl;
        cout << "9.-Informacion ##IMPORTANTE LEER ESTA INFORMACION PARA ENTENDER ALGUNOS FUNCIONAMIENTO DEL PROGRAMA" << endl;
        cout << "0.-Salir" << endl;
        cout << "Introduce que deseas hacer: ";

        cin >> opt;

        switch(opt) {

            case 1:
                cout << "\n\t\t  ..[ ARBOL BINARIO DE BUSQUEDA ]..  \n\n";

                cout << "Numero de nodos del arbol a insertar:  ";
                cin >> n;
                cout << endl;

                cout << "Id del primer nodo: " << 1 << ": ";
                cin >> x;
                insertar(arbol, x);

                for(int i=1; i<n; i++)
                {

                    cout << "Id del nodo: " << i+1 << ": ";
                    cin >> x;
                    insertar(arbol, x);
                    cout << "Coste para al nodo: " << i+1 << ": ";
                    cin >> cost;
                    insertar(arbol, x, cost);


                }

                cout << "\n Mostrando ABB \n\n";
                verArbol(arbol, 0);
                verArbolprecio(arbol, 0);


                cout << endl << endl;
                system("Pause");
                system("cls");
                break;

            case 2:
                arbol=NULL;
                insertar(arbol, 0);
                insertar(arbol, 1, 3);
                insertar(arbol, 3, 2);
                insertar(arbol, 5, 1);
                insertar(arbol, 6, 2);
                insertar(arbol, 2, 3);
                insertar(arbol, 5, 1);
                insertar(arbol, 6, 2);

                break;



            case 3:
                cout << "Arbol(id de los nodos): \n\n" << endl;
                verArbol(arbol, 0);
                cout << "\n\nArbol de precios: \n\n" << endl;
                verArbolprecio(arbol, 0);
                system("Pause");
                system("cls");
                break;

            case 4:
                cout << "Caminos: " << endl;
                mejorcamino(arbol);
                system("Pause");
                system("cls");
                break;

            case 5:
                cout << "Coste mejor camino: " << mejor << endl;
                system("Pause");
                system("cls");
                break;

            case 9:
                system("cls");
                cout << "\t\t\t\t-----Informacion general de la aplicacion-----\n" << endl;
                cout << "Nota: Los distintos nodos insertados al arbol seran ordenados adecuadamente" << endl;
                cout << "Nota: Si desea introducir su propio arbol se recomienda hacer recorridos en orden descendente de izquierda a derecha, para que la incersion sea correcta" << endl;
                cout << "Nota: Esta ultima anotacion se debe a que el algoritmo ordena el arbol teniendo en cuenta el valor de la raiz, es decir del nodo en el que se encuentra" << endl;
                cout << "Nota: El metodo(heuristica) que usaremos para resolver el problema de ir buscando los caminos mas prometedores es decir, los que tienen menor coste" << endl;
                cout << "Nota: Si al mostrar los caminos alguno se muestra a medias esto es debido a que ya se ha pasado por el ultimo nodo que muestra y cuando el programa lo detecta termina la ejecucion" << endl;
                cout << "\n\nProblema planteado: Somos un grupo de 3 personas que estamos haciendo senderismo por una colina la cual tiene una pendiente cambiante. Queremos encontrar el mejor camino posible para hacer el menor esfuerzo posible para llegar a la cima ya que todavia nos queda un largo camino" << endl;
                cout << "\n\nCada camino tiene su propia id y coste(porcentaje)" << endl;
                system("pause");
                system("cls");

            case 0:
                return 0;

        }



    }while(opt != 0);

    return 0;
}
