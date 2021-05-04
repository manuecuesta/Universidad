#ifndef _quebrado_h_
    #define _quebrado_h_

    class quebrado {
     int numerador, denominador;
    public:
     quebrado() { numerador=0; denominador=1; }
     quebrado(int n, int d=1);
     int getnumerador() { return numerador; }
     int getdenominador() {return denominador; }
     void valor(int n, int d=1);
     quebrado operator+(quebrado q);
     quebrado operator-(quebrado q);
     quebrado operator*(quebrado q);
     quebrado operator/(quebrado q);
     quebrado operator-();
     int operator==(quebrado q);
     void mostrar();
    };
    int mcd(int a, int b);
    int mcm(int a, int b);

#endif // _quebrado_h_
