#include <iostream>
#include "Fecha.h"

using namespace std;


Fecha::Fecha(int d, int m, int a)
{

    int diasmes[]={0,31,28,31,30,31,30,31,31,30,31,30,31};

    this->anio=a;

    if (m<1) {

        m=1;

    }
    else {
        if (m>12) {

            m=12;

        }

    }


    if (this->bisiesto()) {

        diasmes[2]=29;

    }

    if (d<1) {

        d=1;

    } else
        if (d>diasmes[m]) {

            d=diasmes[m];

        }

    this->dia=d;
    this->mes=m;

}

bool Fecha::bisiesto() const {

    bool esbisiesto=false;

    if (this->anio%400==0) {

        return esbisiesto=true;

    } else {

        if (this->anio%4==0 && this->anio%100!=0) {

            return esbisiesto=true;

        } else return esbisiesto=false;

    }

}

void Fecha::ver() const {

    cout << this->dia << "/" << this->mes << "/" << this->anio;

}

void Fecha::setFecha(int d, int m, int a) {

    Fecha(d, m, a);

}

Fecha Fecha::operator++() {

    Fecha t = Fecha(*this)+1;

    this->dia = t.dia;
    this->mes = t.mes;
    this->anio = t.anio;

    return *this;

}

Fecha Fecha::operator+(int i) const {

    int dmax[] = {0,31,28,31,30,31,30,31,31,30,31,30,31};

    int a = getAnio();
    int m = getMes();
    int d = getDia();

    d=d+i;

    if (bisiesto()==true) {

        dmax[mes]=29;

    }

    if (d < 1) {

        d=1;

    } else if (d > dmax[m]){

        if (m>12) {

            m=1;
            d=1;
            a++;


        } else {

            m++;

        }

    } else d++;


    return Fecha(d, m, a);

}

Fecha Fecha::operator++(int i) {

    Fecha copiar(this->dia, this->mes, this->anio);

    ++(*this);

    return copiar;

}

Fecha operator+(int i, const Fecha &f) {

    return f+i;

}

std::ostream& operator<<(std::ostream& s, const Fecha &o) {
    s << (o.dia<10?"0":"") << o.dia << "/" << (o.mes<10?"0":"") << o.mes << "/" << o.anio;
    return s;

}


