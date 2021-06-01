	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	.CODE

	; Funcion que copia una cadena a otra cadena
	; void StrCopy(char *cad, char *cadCopy)
StrCat PROC, pCad:DWORD, pCad2:DWORD

	PUSH ECX
	PUSH ESI
	PUSH EBX
	
	MOV EBX, [pC ad2]		; cargando el primer elemento del arreglo al registro CBX
	MOV ESI, [pCad]			; apuntar (p) al primer elemento de pCad[0] (ESI <-- [pCad])
	MOV ECX, 0				; i = 0
Ini_For:
	MOV AL, [ESI]			; leemos el primer caracter de la cadena
	CMP AL, 0				; AL - 0 (resta)
	JE	Fin_For				; Si z = 0, entonces ya se acabo la cadena, por lo que saltamos a Fin_For  
	; SI Z /= 0, entonces entramos al cuerpo del for
	; Codigo
	INC ECX					; i <-- i + 1
	INC ESI					; movemos el apuntador (p) para pCad
	INC EBX					; movemos el apuntador (p) para pCad2
	JMP Ini_For				; volvemos a realizar otro ciclo, hasta que z = 0 
Fin_For: 
	POP ECX
	POP ESI
	POP EBX
	RET

StrCat ENDP

	END