	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	temCad DWORD 10 DUP (0)

	.CODE

	; Funcion que conbvierte una cadena a mayusuclas
	; int* StrUpper(char *cad)
StrCopy PROC, pCad:DWORD

StrCopy ENDP

	END