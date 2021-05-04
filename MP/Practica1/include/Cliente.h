#ifndef CLIENTE_H
#define CLIENTE_H
#include "Fecha.h"


class Cliente
{
    public:

        Cliente(long int dni, char *nombre, Fecha f);
        ~Cliente();
        Cliente& operator=(const Cliente &c);//operador de asignacion
        void setNombre(char *nombre);
        void setFecha(Fecha f);
        long int getDni() const {return dni;}
        const char* getNombre() const {return nombre;}
        Fecha getFecha() const {return fechaAlta;}
        bool operator==(const Cliente &c) const;



    private:

        long int dni;
        char *nombre; //como hay memoria dinamica el constructor de copia hay que implementarlo
        Fecha fechaAlta; //tambien hay que implementar el operador de asignacion y el destructor

};

std::ostream& operator<<(std::ostream& s, const Cliente &o);


#endif // CLIENTES_H
