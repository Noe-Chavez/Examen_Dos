#include <iostream>

//extern "C" int Suma(int a, int b);
//extern "C" int BuscarCaracter(char* cadena, char caracter);

using namespace std;

extern "C" int StrLength(char* cad);
extern "C" void StrUpper(char* cad);
extern "C" void StrLower(char* cad);
extern "C" void StrCopy(char* cad1, char* cad2);
extern "C" void StrCat(char* cad1, char* cad2);

int main()
{
    char cad[] = "holamundo";
    char cad2[] = "HOLAMUNDO";
    char copia[] = "Sin copiar";
    
    cout << "1) Obtiene el numero de caracteres que tiene la cadena." << endl;
    cout <<  "La cadena tiene " << StrLength(cad) << " caracteres" << endl;

    cout << "2) Convierte a mayusculas una cadena." << endl;
    StrUpper(cad);
    cout << "La cadena en mayusculas es: " << cad << endl;

    cout << "3) Conviernte a minusculas una cadena" << endl;
    StrLower(cad2);
    cout << "La cadena a munusculas es: " << cad2 << endl;

    cout << "4) Copia el contenido de una cadena" << endl;
    StrCopy(cad, copia);
    cout << "La copia de la cadena es: " << copia << endl;

    cout << "5) Concatena dos cadenas" << endl;
    StrCat(cad, cad2);
    cout << "La concatenacion de la cadena es: " << cad << endl;
    
}