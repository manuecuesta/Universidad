#include <iostream>
#include <vector>
#include <conio.h>
#include <string.h>
#include <stdlib.h>

using namespace std;

int M[3][3];


int fila[] = {0, 2, 2, 2, 1, 1, 1, 0, 0, 0};
int col[] = {0, 0, 1, 2, 0, 1, 2, 0, 1, 2};


///Funciones para comprobar ganadores

bool ComprobarFila(int ficha, int fila){
	return M[fila][0] == ficha && M[fila][1] == ficha && M[fila][2] == ficha;
}
bool ComprobarColumna(int ficha, int columna){
	return M[0][columna] == ficha && M[1][columna] == ficha & M[2][columna] == ficha;
}
bool ComprobarDiagonal(int ficha, int fila, int columna){
    bool diagonal;
	if(fila == 1 && columna == 1)
		diagonal = (M[0][0] == ficha && M[1][1] == ficha && M[2][2] == ficha) || (M[2][0] == ficha && M[1][1] == ficha && M[0][2] == ficha);
	else if((fila == 0 && columna == 0) || (fila == 2 && columna == 2))
		diagonal = M[0][0] == ficha && M[1][1] == ficha && M[2][2] == ficha;
	else if((fila == 2 && columna == 0) || (fila == 0 && columna == 2))
		diagonal = M[2][0] == ficha && M[1][1] == ficha && M[0][2] == ficha;
	else
		diagonal = false;
    return diagonal;
}
///este check es opcional el otro puede hacer su funcion, pero al ser mas facil de entender lo dejo
///solo comprueba si alguien ha ganado
int check(int torn) {

    torn++;

    for (int i=0; i<3; i++) {
        for (int j=0; j<3; j++) {
            if(ComprobarDiagonal(torn, i, j)!=false) {
                return torn;
            }
        }
        if ((ComprobarColumna(torn, i) or ComprobarFila(torn, i))!=false) {

            return torn;
        }
    }
    return -1;

}///si hay algun ganador lo devuelve si no devuelve -1

int incfi[] = {0, 1, 1, -1};
int inccol[] = {1, 1, 0, 1};

int comprobar() {///evaluamos las distintaas posibilidades que tiene la IA para hacer sus movimientos y devolvemos si ha ganado o no
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            for (int d = 0; d < 4; d++) {
                string s;
                int f = i, c = j;
                for (int h = 0; h < 3; h++) {
                    if (f < 0 or f >= 3 or c < 0 or c >= 3) break;
                    s += char(M[f][c] + '0');
                    f += incfi[d];
                    c += inccol[d];
                }
                if (s == "111") return 1;
                else if (s == "222") return 2;
            }
        }
    }
    return -1;
}


///Hago uso de los distintos bucles para poder mostrar las lineas y las distintas opciones que hay almacenadas en la tabla
void dibujar() {
    system("cls");
    for (int i = 0; i < 10; i++) cout << endl;
            cout << "\t\t\t\t\tBuena suerte la necesitaras\n" << endl;
            for (int i = 0; i < 3; i++) {
                cout << "\t\t\t\t\t\t ";
                for (int j = 0; j < 3; j++) {
                    if (M[i][j] == 0) cout << "  ";
                    else if (M[i][j] == 1) cout << " X";
                    else cout << " O";
                    if (j != 2) cout << " |";
                }
                cout << endl;
                if (i != 2) cout << "\t\t\t\t\t\t-------------" << endl;

            }
}

int minimax(int &x, int &y, int torn) { ///algoritmo minmax
    int mejor = -2;
    int z, t;
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (M[i][j] != 0) continue;  ///posicion vacia continuo
            M[i][j] = torn;
            if (comprobar() == torn) {
                x = i;
                y = j;
                M[i][j] = 0;
                return 1;
            }
            int aux = minimax(z, t, (torn == 1)?2:1); ///llamada recursiva al metodo
            if (aux == -2 or aux == 0) {
                if (mejor < 0) {
                    mejor = 0;
                    x = i;
                    y = j;
                }
            }
            else if (aux == -1) {
                if (mejor < 1) {
                    mejor = 1;
                    x = i;
                    y = j;
                    M[i][j] = 0;
                    return mejor;
                }
            }
            else if (aux == 1) {
                if (mejor < -1) {
                    mejor = -1;
                    x = i;
                    y = j;
                }
            }
            M[i][j] = 0;
        }
    }
    return mejor;
}

void tira_pc() {
    int x, y;
    minimax(x, y, 1);
    M[x][y] = 1;
}

void tira_pc2() {
    int x, y;
    minimax(x, y, 1);
    M[x][y] = 2;
}

void tirajugador() {
    int pos = -1;
    while (pos < 1) {
        cout << "\n\n\t\t\t\t\tIntroduce tu movimiento: ";
        cin >> pos;
        cout << endl;
        if (pos < 1 or pos > 9) pos = -1;
        else if (M[fila[pos]][col[pos]] != 0) pos = -1;
    }
    M[fila[pos]][col[pos]] = 2;
}

void tirajugador2() {
    int pos = -1;
    while (pos < 1) {

        cout << "\n\n\t\t\t\t\tIntroduce tu movimiento: ";
        cin >> pos;
        cout << endl;
        if (pos < 1 or pos > 9) pos = -1;
        else if (M[fila[pos]][col[pos]] != 0) pos = -1;
    }
    M[fila[pos]][col[pos]] = 1;
}

int main() {

    int opc;

    do {
        system("cls");
        cout << "Opcion 1: Caso resuelto(Ejemplo) en el pdf\nOpcion 2: Enfrentate al ordenador\n";
        cout << "Opcion 3: Dos jugadores\nOpcion 4: Prueba de mi ejercicio propuesto\nOpcion 0: Salir\nIntroduce una opcion: ";
        cout << "\n\n\n\nLas diferentes opciones de movimiento" << endl;
        cout<<endl<<"\t\t7|8|9";
        cout<<endl<<"\t\t4|5|6";
        cout<<endl<<"\t\t1|2|3"<<endl;
        cin >> opc;

        switch(opc) {

        case 1:{

            memset(M, 0, sizeof(M));
            M[fila[9]][col[9]]=1;
            M[fila[8]][col[8]]=2;
            M[fila[7]][col[7]]=2;
            M[fila[6]][col[6]]=1;
            M[fila[3]][col[3]]=2;
            M[fila[2]][col[2]]=1;
            int win = -1, torn = 1;
            int qtt = 0;
            dibujar();
            system("pause");
            while ((win = check(torn)) < 0 and qtt < 9) {
                if (torn == 1) tira_pc();
                else tirajugador();
                torn = 1 - torn;
                dibujar();
                ++qtt;
                }
            if (win == 1) cout << "Gana el ordenador" << endl;
            else if (win == 2) cout << "Ganas tu" << endl;
            else cout << "Empate" << endl;
            system("pause");
            break;}

        case 2:{
            memset(M, 0, sizeof(M));
            int win = -1, torn = 0;
            int qtt = 0;
            dibujar();
            while ((win = check(torn)) < 0 and qtt < 9) {
                if (torn == 1) tira_pc();
                else tirajugador();
                torn = 1 - torn;
                dibujar();
                ++qtt;
                }
            if (win == 1) cout << "Gana el ordenador" << endl;
            else if (win == 2) cout << "Ganas tu" << endl;
            else cout << "Empate" << endl;
            system("pause");
            break;}
        case 3:{
            memset(M, 0, sizeof(M));
            int win = -1, torn = 0;
            int qtt = 0;
            dibujar();
            while ((win = check(torn)) < 0 and qtt < 9) {
                if (torn == 1) tirajugador2();
                else tirajugador();
                torn = 1 - torn;
                dibujar();
                ++qtt;
                }
            if (win == 1) cout << "Gana jugador 2" << endl;
            else if (win == 2) cout << "Gana Jugador 1" << endl;
            else cout << "Empate" << endl;
            system("pause");
            break;}

        case 4:{
            memset(M, 0, sizeof(M));
            M[fila[9]][col[9]]=1;
            M[fila[8]][col[8]]=2;
            M[fila[7]][col[7]]=2;
            M[fila[6]][col[6]]=2;
            M[fila[3]][col[3]]=1;
            M[fila[4]][col[4]]=1;
            int win = -1, torn = 1;
            int qtt = 0;
            dibujar();
            system("pause");
            while ((win = check(torn)) < 0 and qtt < 9) {
                if (torn == 1) tira_pc();
                else tirajugador();
                torn = 1 - torn;
                dibujar();
                ++qtt;
                }
            if (win == 1) cout << "Gana el ordenador" << endl;
            else if (win == 2) cout << "Ganas tu" << endl;
            else cout << "Empate" << endl;
            system("pause");
            break;}

        case 0:
            return 0;

        }

    } while(opc!=0);

}


