#ifndef _matriz_h_
    #define _matriz_h_
    #include "quebrado.h"
    #include "complejo.h"
    #define M 5

    typedef complejo tipoelemento;

    class matriz {
    private:
     tipoelemento celda[M][M];
     int fila,col;
    public:
     matriz(int f=0, int c=0);
     int getfila() { return fila; }
     int getcol() { return col; }
     bool operator==(matriz m);
     matriz operator*(matriz m);
     matriz operator+(matriz m);
     matriz operator-(matriz m);
     matriz operator-();
     void mostrar();
     void cargar();
     void cargar(char cad[]);
    };

#endif // _matriz_h_
