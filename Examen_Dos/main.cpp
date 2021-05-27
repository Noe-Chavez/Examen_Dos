#include <iostream>

//extern "C" int Suma(int a, int b);
//extern "C" int BuscarCaracter(char* cadena, char caracter);

using namespace std;

extern "C" int StrLength(char* cad);
extern "C" void StrUpper(char* cad);
//extern "C" void StrLower(char* cad);

int main()
{
    char cad[] = "hola mundo";
    //char cad2[] = "HOLA MUNDO";
    
    cout << "1.a) Obtiene el numero de caracteres que tiene la cadena." << endl;
    cout <<  "La cadena tiene " << StrLength(cad) << " caracteres" << endl;

    cout << "2.a) Convierte a mayusculas una cadena." << endl;
    StrUpper(cad);
    cout << "La cadena en mayusculas es: " << cad << endl;
    
}