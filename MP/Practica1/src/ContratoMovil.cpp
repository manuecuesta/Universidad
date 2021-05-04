#include "ContratoMovil.h"
#include <cstring>

ContratoMovil::ContratoMovil(long int dni, Fecha d, float p, int m, char *nac) :Contrato(dni , d)///llama al padre y le pasa los atributos
{
    ///es de la clase no del padre
    this->precioMinuto=p;
    this->nacionalidad=nac;    //this->muinutosHablados=m; // error strwamcpy
    this->nacionalidad= new char [strlen(nac)+1];
    strcpy(this->nacionalidad,nac);

}

ContratoMovil::~ContratoMovil()
{
    delete []this->nacionalidad;
}

//ContratoMovil::ContratoMovil(const ContratoMovil &other)
//{
//    //copy ctor
//    this->precioMinuto=p;
//    this->nacionalidad=nac;    //this->muinutosHablados=m; // error strwamcpy
//    this->nacionalidad= new char [strlen(nac)+1];
//    strcpy(this->nacionalidad,nac);
//
//}

ContratoMovil& ContratoMovil::operator=(const ContratoMovil& rhs)
{
    if (this == &rhs) return *this; // handle self assignment
    //assignment operator
    return *this;
}

std::ostream& operator<<(std::ostream& s, const ContratoMovil &o) {
    s << o.getDniContrato() << " (" << o.getIdContrato() << " - " << o.getFechaContrato() << ") " << o.getMinutosHablados() << "m, " << o.getNacionalidad() << " " << o.getPrecioMinuto() << " - " << o.factura() << "e"; //TODO: Intentar imprimir el euro
    return s;
}
