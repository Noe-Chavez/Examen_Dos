	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	.CODE

	; Funcion que suma los elementos del vector 
	; int Sumar(int *lista, int N);
Sumar PROC, pArray:DWORD, numElem:DWORD
	PUSH ESI
	PUSH ECX
	PUSH EDX
	MOV ESI, [pArray]		; cargando el primer elemento del arreglo al registro CBX
	MOV ECX, 0				; i = 0
	MOV EAX, 0
	MOV EDX, numElem		; cantidad de elementos en el arreglo
ciclo:
	CMP ECX, EDX			; compara ECX (i) y EDX (numElement)
	JE fin_ciclo			; sí ECX == EDX, se sale del ciclo
	MOV EAX, [ESI]			; leemos el primer elemento del array
	ADD EAX, [ESI + 8]
	INC ESI					; movemos el apuntador (pArray)
	INC ECX					; i++
	JMP ciclo
fin_ciclo:
	; Finalizar ciclo
	; para regresar el valor se deben colocar en el registro EAX
	POP EDX
	POP ECX
	POP ESI
	RET
Sumar ENDP
	END