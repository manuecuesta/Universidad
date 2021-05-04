#ifndef FECHA_H
#define FECHA_H
#include <iostream>


class Fecha
{
    public:

        Fecha(int d, int m, int a); //como no tiene memoria dinamica no hace falta
                                    //implemetar el constructor de copia
                                    //ni el operador de asignacion ni el destructor
        void setFecha(int d, int m, int a);
        int getDia() const {return this->dia;}
        int getMes() const {return this->mes;}
        int getAnio() const {return this->anio;}
        bool bisiesto() const;
        void ver() const;
        Fecha operator++(); //++f
        Fecha operator++(int i);//f++
        Fecha operator+(int i) const; //f+1 --> f.operator+(1)
        friend std::ostream& operator<<(std::ostream& s, const Fecha &o);



    private:

        int dia;
        int mes;
        int anio;

};

Fecha operator+(int i, const Fecha &f); //i+f --> operator+(i,f)

std::ostream& operator<<(std::ostream& s, const Fecha &o);

#endif // FECHA_H
