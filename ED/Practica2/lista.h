#ifndef _lista_h_
    #define _lista_h_
    #include <fstream>
    #include "cola.h"

    using namespace std;

    typedef char cadena[50];
    struct peluquero
    {
        int Codigo;
        cadena Apellidos;
        cadena Nombre;
        int TipoServicio;
        cola Col;
    };

    class lista
    {
        peluquero *elementos; // elementos de la lista
        int n; // n� de elementos que tiene la lista
        int Tama; // tama�o de la tabla en cada momento
        public:
        lista(); // constructor de la clase
        ~lista(); // destructor de la clase
        lista(peluquero &e);
        bool esvacia();
        int longitud();
        //void anadirIzq(peluquero e); No necesario implementar
        //void anadirDch(peluquero e); No necesario implementar
        //void eliminarIzq(); No necesario implementar
        //void eliminarDch(); No necesario implementar
        //peluquero observarIzq(); No necesario implementar
        //peluquero observarDch(); No necesario implementar
        //void concatenar(lista l); No necesario implementar
        bool pertenece(peluquero &e);
        void insertar(int i, peluquero &e);
        void eliminar(int i);
        void modificar(int i, peluquero &e);
        peluquero &observar(int i) {return(elementos[i-1]);};
        int posicion(peluquero &e);
        void copiarpeluquero(peluquero &destino,peluquero &origen);
    };

#endif
