#include "Contrato.h"
#include <iostream>

using namespace std;

int Contrato::contador=1;

Contrato::Contrato(long int dni, Fecha f): idContrato(contador), fechaContrato(f)///es como si pusieramos  this->idContrato=contador;
{

    this->idContrato=contador++;
    this->dniContrato=dni;


}

Contrato::~Contrato(){}

void Contrato::ver() const {

     cout << "Dni: " << getDniContrato() << endl;
     cout << "IdContrato: " << getContrato() << endl;
     cout << "Fecha Contrato: " << getFechaContrato() << endl;
     cout << "Minutos Hablados: " << getMinutosHablados() << endl;

}

ostream& operator<<(ostream &s, const Contrato &c) {
  s << c.getDniContrato() << " (" << c.getIdContrato() << " - " << c.getFechaContrato() << " )";
  return s;
}


