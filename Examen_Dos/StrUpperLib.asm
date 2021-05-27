	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	.CODE

	; Funcion que conbvierte una cadena a mayusuclas
	; void StrUpper(char *cad)
StrUpper PROC, pCad:DWORD

	PUSH ECX
	PUSH ESI
	
	MOV ECX, 0				; i = 0
	MOV ESI, [pCad]			; apuntar (p) al primer elemento de pCad[0] (ESI <-- [pCad])
Ini_For:
	MOV AL, [ESI]			; leemos el primer caracter de la cadena
	CMP AL, 0				; AL - 0 (resta)
	JE	Fin_For				; Si z = 0, entonces ya se acabo la cadena, por lo que saltamos a Fin_For  
	; SI Z /= 0, entonces entramos al cuerpo del for.
	INC ECX					; i <-- i + 1
	INC ESI					; movemos el apuntador (p)
	JMP Ini_For				; volvemos a realizar otro ciclo, hasta que z = 0 
Fin_For:
	MOV EAX, ECX			; return i  
	POP ESI
	POP ECX
	RET 
StrUpper ENDP

	END