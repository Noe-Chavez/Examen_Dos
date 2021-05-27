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
	
	MOV ECX, 0				; i = 0
	MOV ESI, [pCad]			; apuntar (p) al primer elemento de pCad[0] (ESI <-- [pCad])

Ini_For:

	MOV AL, [ESI]			; leemos el primer caracter de la cadena AL<--pCad[i]
	CMP AL, 0				; AL - 0 (resta)
	JE	Fin_For				; Si z = 0, entonces ya se acabo la cadena, por lo que saltamos a Fin_For  
	; SI Z /= 0, entonces entramos al cuerpo del for.
	SUB AL, 20h				; 20h = 32 decimal
	MOV [ESI], AL			; pCad[i] = AL su equivalente en mayuscula
	INC EDI					; incremetntamos el apuntador pCad
	INC ECX					; i <-- i + 1
	INC ESI					; movemos el apuntador (p)
	JMP Ini_For				; volvemos a realizar otro ciclo, hasta que z = 1 

Fin_For:
	;MOV EAX, [pCad]			; return pCad  
	
	POP ESI
	POP ECX
	
	RET 

StrUpper ENDP

	END