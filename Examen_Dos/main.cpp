#include <iostream>

//extern "C" int Suma(int a, int b);
//extern "C" int BuscarCaracter(char* cadena, char caracter);

using namespace std;

extern "C" int StrLength(char* cad);
extern "C" void StrUpper(char* cad);

int main()
{
    char cad[] = "Hola Mundo";
    cout << "1.a) Obtiene el numero de caracteres que tiene la cadena." << endl;
    cout <<  "La cadena tiene " << StrLength(cad) << " caracteres" << endl;
    
}