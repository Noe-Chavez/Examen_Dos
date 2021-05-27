#include <iostream>

//extern "C" int Suma(int a, int b);
//extern "C" int BuscarCaracter(char* cadena, char caracter);

using namespace std;

extern "C" int StrLength(char* cad);
extern "C" int* StrUpper(char* cad);

int main()
{
    char cad[] = "hola mundo";
    int *p;
    
    cout << "1.a) Obtiene el numero de caracteres que tiene la cadena." << endl;
    cout <<  "La cadena tiene " << StrLength(cad) << " caracteres" << endl;

    cout << "2.a) Convierte a mayusculas una cadena." << endl;
    p = StrUpper(cad);
    for (int i = 0; i < StrLength(cad); i++)
    {
        cout << p[i];
    }

    
}