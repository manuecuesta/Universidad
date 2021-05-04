#ifndef CONTRATOMOVIL_H
#define CONTRATOMOVIL_H

#include <contrato.h>
#include <iostream>
#include <cstring>


class ContratoMovil : public Contrato
{
    float precioMinuto;
    int minutosHablados;
    char *nacionalidad;


    public:
        ContratoMovil(long int dni, Fecha d, float p, int m, char *nac);
        virtual ~ContratoMovil();
        ContratoMovil(const ContratoMovil& other);
        ContratoMovil& operator=(const ContratoMovil& other);
        const char* getNacionalidad() {return this->nacionalidad;}
        float getPrecioMinuto() {return this->precioMinuto;}
        void setNacionalidad (char *nac) {strcpy(this->nacionalidad, nac);}
        void setPrecioMinuto(int precio) {this->precioMinuto=precio;}

};

std::ostream& operator<<(std::ostream& s, const ContratoMovil &o);

#endif // CONTRATOMOVIL_H
