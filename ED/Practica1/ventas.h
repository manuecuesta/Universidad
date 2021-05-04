#ifndef _ventas_h_
    #define _ventas_h_
    #include <fstream>

    using namespace std;

    typedef char cadena[101];

    struct Sfecha {

        int dia;
        int mes;
        int anno;

    };

    struct venta {

     Sfecha fecha;
     int unidades;
     int producto;
     float importe;

    };

    class ventas
    {

      fstream detalle;
      cadena fichero;
      cadena ficheroresumen;


        public:

           void anadirventa(int num);
           void mostrarventas();
           void resumirfichero();
           void estadisticas(int tipo,int annoini,int annofin);
           bool asignar(cadena Fichero,cadena FicheroResumen);

    };

#endif // _ventas_h_
