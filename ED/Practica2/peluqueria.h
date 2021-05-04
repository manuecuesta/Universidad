#ifndef _peluqueria_h_
    #define _peluqueria_h_

    #include "lista.h"

    using namespace std;

    struct peluquerof {

    int Codigo;
    cadena Apellidos;
    cadena Nombre;
    int TipoServicio;

    };

    class peluqueria
    {
        lista l; //lista de los peluqueros que están atendiendo a los clientes

        public:

        void AbrirPeluqueria(char *nombrefichero);
        void IncorporarPeluquero(peluquero t);
        bool RetirarPeluquero(int codigo);
        bool EliminarCliente(cadena Nombre, cadena Apelllidos);
        bool IncorporarCliente(cliente cli);
        void Mostrar();
        bool AtenderCliente(int CodigoPeluquero);
        void VolcarPeluqueria(char *nombrefichero);
        int colamenor(int tiposervicio);
        int colamayor(int tiposervicio);
        int peluqueroservicio(int tiposervicio);
        int nclientes(int tiposervicio);
    };

#endif
