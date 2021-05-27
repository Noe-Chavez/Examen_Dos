	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	temCad DWORD 10 DUP (0)

	.CODE

	; Funcion que conbvierte una cadena a mayusuclas
	; int* StrUpper(char *cad)
StrUpper PROC, pCad:DWORD

	PUSH ECX
	PUSH ESI
	PUSH EDI
	
	MOV EDI, OFFSET temCad  ; cargamos la direccion de memoria de tempCad en le registro EDI 
	MOV ECX, 0				; i = 0
	MOV ESI, [pCad]			; apuntar (p) al primer elemento de pCad[0] (ESI <-- [pCad])

Ini_For:
	MOV AL, [ESI]			; leemos el primer caracter de la cadena AL<--pCad[i]
	CMP AL, 0				; AL - 0 (resta)
	JE	Fin_For				; Si z = 0, entonces ya se acabo la cadena, por lo que saltamos a Fin_For  
	; SI Z /= 0, entonces entramos al cuerpo del for.
	;MOV [EDI], AL			; cargamos lo que hay en EDI <-- AL
	SUB AL, 20h				; 20h = 32 decimal
	MOV [EDI], AL			; tempCad[i] = AL
	INC EDI
	INC ECX					; i <-- i + 1
	INC ESI					; movemos el apuntador (p)
	JMP Ini_For				; volvemos a realizar otro ciclo, hasta que z = 0 

Fin_For:
	MOV EAX, ESI			; no olvidar que el el return regresa la primera dirección de memoria de pCad.  
	
	POP EDI
	POP ESI
	POP ECX
	
	RET 

StrUpper ENDP

	END