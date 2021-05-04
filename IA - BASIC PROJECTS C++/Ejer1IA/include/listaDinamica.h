#ifndef LISTADINAMICA_H_INCLUDED
#define LISTADINAMICA_H_INCLUDED

#include <cstdlib>
#include <cstring>

#define INCREMENTO 2

struct nodo{
     int id;
     int precio;
     struct nodo *izq, *der;
};
class lista{
    nodo *elementos; // elementos de la lista
    int n;// nº de elementos que tiene la lista
    int Tama; // tamaño de la tabla en cada momento
public:
    lista(); // constructor de la clase
    ~lista();// destructor de la clase
    lista(nodo &e);
    void vaciar();
    bool esvacia();
    int longitud();
    bool pertenece(nodo &e);
    void insertar(int i, nodo &e);
    void eliminar(int i);
    void modificar(int i, nodo &e);
    nodo &observar(int i);
    int posicion(nodo &e);
};

void copiarpeluquero(nodo &destino,nodo &origen);
bool compararpeluquero(nodo &p1,nodo &p2);

#endif // LISTADINAMICA_H_INCLUDED
