#ifndef CONTRATO_H
#define CONTRATO_H
#include "Fecha.h"
#include <iostream>

using namespace std;



class Contrato
{

    private:

        static int contador;///es comun a todos los objetos contrato
        int idContrato;///tiene el valor de contador
        long int dniContrato;
        Fecha fechaContrato;

        int minutosHablados;


    public:

        Contrato(long int dni, Fecha);
        ~Contrato();
        int getContrato() const {return this->idContrato;}
        long int getDniContrato() const {return this->dniContrato;}
        Fecha getFechaContrato() const {return this->fechaContrato;}
        int getMinutosHablados() const {return this->minutosHablados;}
        void setDniContrato(long int dni) {this->dniContrato=dni;}
        void setFechaContrato(Fecha f) {this->fechaContrato=f;}
        void setMinutosHablados(int minutosHablados) {this->minutosHablados=minutosHablados;}
        void ver() const;


};

ostream& operator<<(ostream &s, const Contrato &c);

#endif // CONTRATO_H
