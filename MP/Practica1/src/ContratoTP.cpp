#include "ContratoTP.h"

float ContratoTP::precio=10;
int ContratoTP::limiteMinutos=300;

ContratoTP::ContratoTP(long int dni, Fecha f,int m) : Contrato(dni, f){

    this->minutosHablados=m;

}

void ContratoTP::setTarifaPlana(int limitemin, float precio) {

    setLimiteMinutos(limitemin);
    setPrecio(precio);

}

void ContratoTP::setLimiteMinutos(int minutos) {

    limiteMinutos=minutos;

}

void ContratoTP::setPrecio(float precio) {

    precio=precio;

}

void ContratoTP::ver() const {

    cout << "Precio: " << precio << endl;
    cout << "Limite de minutos: " << limiteMinutos << endl;


}

float ContratoTP::factura() const {

    float exc=0;

    if (limiteMinutos-minutosHablados>0) {

        exc=limiteMinutos-minutosHablados;

    } else  {

        exc=0;

    }

    return precio+(exc*precioExcesoMinutos);

}

std::ostream& operator<<(std::ostream& s, const ContratoTP &o) {
    s << o.getDniContrato() << " (" << o.getIdContrato() << " - " << o.getFechaContrato() << ")" << o.getMinutosHablados() << "m, " << o.getLimiteMinutos() << "(" << o.getPrecio() << ") " << " - " << o.factura() << "e"; //TODO: Intentar imprimir el euro
    return s;
}
