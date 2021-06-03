	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	.CODE

	; Funcion que suma los elementos del vector 
	; int Sumar(int *lista, int N);
Sumar PROC, pArray:DWORD, numElem:DWORD
	
Sumar ENDP

	END