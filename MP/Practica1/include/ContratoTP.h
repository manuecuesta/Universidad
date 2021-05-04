#ifndef CONTRATOTP_H
#define CONTRATOTP_H

#include <contrato.h>

#define precioExcesoMinutos 0.15


class ContratoTP : public Contrato
{

    int minutosHablados;
    static int limiteMinutos;
    static float precio;


    public:

        ContratoTP(long int dni, Fecha f, int m);
        int getLimiteMinutos() {return this->limiteMinutos;}
        float getPrecio() {return this->precio;}
        void setTarifaPlana(int limitemin, float precio);
        void setPrecio(float precio);
        void setLimiteMinutos(int minutos);
        void ver() const;
        float factura() const;

};

std::ostream& operator<<(std::ostream& s, const ContratoTP &o);

#endif // CONTRATOTP_H
