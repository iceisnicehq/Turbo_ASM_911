.model tiny
.486
.data
A db 12h
B dw 1234h
.code
org 100h   
start:
DAS
MOV [EAX+EBP*2], AL
MOV ss:[EAX+EBP*2], AL
MOV [ESP], AL
MOV ss:[ESP], AL
MOV [BP+12h], AL
MOV ss:[BP+12h], AL
	db	0A2h, 12h, 00h;MOV [12h], AL
	db	0A3h, 34h, 12h;MOV [1234h], AX
	db	66h,67h,0A3h,78h,56h,34h,12h;MOV [12345678h], EAX
MOV AL, 056h
MOV AH, BL
	db	08Bh, 016h, 34h, 12h 	;MOV CX, [1234h]
MOV DX, DS:[BX+SI]
MOV DI, ES:[BX+DI]
MOV BX, AX
MOV BP, CS:[SI]
MOV BX, DS:[DI]
MOV CX, FS:[SI]
MOV BP, DS:[BX+SI]
MOV AH, CL
MOV CX, DS:[BP+DI]
MOV SI, CS:[DI]
MOV BP, ES:[SI]
MOV CX, DS:[BX+SI]
MOV SI, ES:[BP+SI]
MOV DI, CS:[DI]

MOV [EBP+10], ESI 
ROL dword ptr [EBP+10], 10h 
ROL dword ptr ss:[EDX+EAX+200],15h
ROL dword ptr es:[ESI+EBP*4+17000],1h
ROL word ptr ss:[EDX+EAX+200],CL

MOV ss:[EDX+EAX+200],ECX
MOV es:[ESI+EBP*4+17000],EBX
MOV ss:[EDX+EAX+200],CX

ROL byte ptr ss:[BX+SI], 10h
		db	0C0h, 016h, 0h, 10h, 30h;ROL byte ptr [1000h], 30h
		
MOV EAX,[BX+1010h]
MOV EAX,[EAX+1010h]
	
	
MOV AL,CH
MOV AL,[BX]
MOV AL,[BX+10h]
MOV EAX,[BX]
MOV EAX,[EAX+10h]
	db	089h, 058h, 010h	;MOV [BX+SI+10],BX
	db	067h, 089h, 098h, 010h,09h,08h,07h	;MOV [BX+SI+10],BX
	db	088h,0C2h	;MOV dl,al
	db	088h,037h	;MOV [BX],DH 
MOV [BX], AL

ROL AL, 1h
ROL CL, 1h
ROL DL, 1h
ROL BL, 1h
ROL AH, 1h
ROL CH, 1h
ROL DH, 1h
ROL BH, 1h

ROL AL, CL
ROL CL, CL
ROL DL, CL
ROL BL, CL
ROL AH, CL
ROL CH, CL
ROL DH, CL
ROL BH, CL

ROL AL, 15h
ROL CL, 15h
ROL DL, 15h
ROL BL, 15h
ROL AH, 15h
ROL CH, 15h
ROL DH, 15h
ROL BH, 15h

ROL AX, 1h
ROL CX, 1h
ROL DX, 1h
ROL BX, 1h
ROL SP, 1h
ROL BP, 1h
ROL SI, 1h
ROL DI, 1h

ROL AX, CL
ROL CX, CL
ROL DX, CL
ROL BX, CL
ROL SP, CL
ROL BP, CL
ROL SI, CL
ROL DI, CL

ROL AX, 16h
ROL CX, 16h
ROL DX, 16h
ROL BX, 16h
ROL SP, 16h
ROL BP, 16h
ROL SI, 16h
ROL DI, 16h

ROL EAX, 1h
ROL ECX, 1h
ROL EDX, 1h
ROL EBX, 1h
ROL ESP, 1h
ROL EBP, 1h
ROL ESI, 1h
ROL EDI, 1h

ROL EAX, CL
ROL ECX, CL
ROL EDX, CL
ROL EBX, CL
ROL ESP, CL
ROL EBP, CL
ROL ESI, CL
ROL EDI, CL

ROL EAX, 17h
ROL ECX, 17h
ROL EDX, 17h
ROL EBX, 17h
ROL ESP, 17h
ROL EBP, 17h
ROL ESI, 17h
ROL EDI, 17h

ROL byte ptr [BX], 1h
ROL word ptr [BX], 1h
ROL dword ptr [BX], 1h

ROL byte ptr [BX], CL
ROL word ptr [BX], CL
ROL dword ptr [BX], CL

ROL byte ptr [BX], 10h
ROL word ptr [BX], 10h
ROL dword ptr [BX], 10h

ROL byte ptr [BX+SI], 1h
ROL byte ptr [BX+DI], 1h
ROL byte ptr [BP+SI], 1h
ROL byte ptr [BP+DI], 1h
ROL byte ptr [SI], 1h
ROL byte ptr [DI], 1h
	db	0D0h, 016h, 0h, 10h ;ROL byte ptr [1000h], 1h
ROL byte ptr [BX], 1h

	db	0D0h, 050h, 0C8h ; ROL byte ptr [BX+SI+0C8h], 1h
	db	0D0h, 051h, 0C8h ; ROL byte ptr [BX+DI+0C8h], 1h
	db	0D0h, 052h, 0C8h ; ROL byte ptr [BP+SI+0C8h], 1h
	db	0D0h, 053h, 0C8h ; ROL byte ptr [BP+DI+0C8h], 1h
	db	0D0h, 054h, 0C8h ; ROL byte ptr [SI+0C8h], 1h
	db	0D0h, 055h, 0C8h ; ROL byte ptr [DI+0C8h], 1h
	db	0D0h, 056h, 0C8h ; ROL byte ptr [BP+0C8h], 1h
	db	0D0h, 057h, 0C8h ; ROL byte ptr [BX+0C8h], 1h

ROL byte ptr [BX+SI+0C8C7h], 1h
ROL byte ptr [BX+DI+0C8C7h], 1h
ROL byte ptr [BP+SI+0C8C7h], 1h
ROL byte ptr [BP+DI+0C8C7h], 1h
ROL byte ptr [SI+0C8C7h], 1h
ROL byte ptr [DI+0C8C7h], 1h
ROL byte ptr [BP+0C8C7h], 1h
ROL byte ptr [BX+0C8C7h], 1h

ROL byte ptr [BX+SI], CL
ROL byte ptr [BX+DI], CL
ROL byte ptr [BP+SI], CL
ROL byte ptr [BP+DI], CL
ROL byte ptr [SI], CL
ROL byte ptr [DI], CL
	db	0D2h, 016h, 0h, 10h ;ROL byte ptr [1000h], CL
ROL byte ptr [BX], CL

	db	0D2h, 050h, 0C8h ; ROL byte ptr [BX+DI+0C8h], CL
	db	0D2h, 051h, 0C8h ; ROL byte ptr [BP+SI+0C8h], CL
	db	0D2h, 052h, 0C8h ; ROL byte ptr [BP+SI+0C8h], CL
	db	0D2h, 053h, 0C8h ; ROL byte ptr [BP+DI+0C8h], CL
	db	0D2h, 054h, 0C8h ; ROL byte ptr [SI+0C8h], CL
	db	0D2h, 055h, 0C8h ; ROL byte ptr [DI+0C8h], CL
	db	0D2h, 056h, 0C8h ; ROL byte ptr [BP+0C8h], CL
	db	0D2h, 057h, 0C8h ; ROL byte ptr [BX+0C8h], CL

ROL byte ptr [BX+SI+0C8C7h], CL
ROL byte ptr [BX+DI+0C8C7h], CL
ROL byte ptr [BP+SI+0C8C7h], CL
ROL byte ptr [BP+DI+0C8C7h], CL
ROL byte ptr [SI+0C8C7h], CL
ROL byte ptr [DI+0C8C7h], CL
ROL byte ptr [BP+0C8C7h], CL
ROL byte ptr [BX+01000h], CL

ROL byte ptr [BX+SI], 015h
ROL byte ptr [BX+DI], 015h
ROL byte ptr [BP+SI], 015h
ROL byte ptr [BP+DI], 015h
ROL byte ptr [SI], 015h
ROL byte ptr [DI], 015h
	db	0C0h, 016h, 0h, 10h, 30h;ROL byte ptr [1000h], 30h
ROL byte ptr [BX], 015h

	db	0C0h, 050h, 0C8h, 015h ; ROL byte ptr [BX+SI+0C8h], 15h
	db	0C0h, 051h, 0C8h, 015h ; ROL byte ptr [BX+DI+0C8h], 15h
	db	0C0h, 052h, 0C8h, 015h ; ROL byte ptr [BP+SI+0C8h], 15h
	db	0C0h, 053h, 0C8h, 015h ; ROL byte ptr [BP+DI+0C8h], 15h
	db	0C0h, 054h, 0C8h, 015h ; ROL byte ptr [SI+0C8h], 15h
	db	0C0h, 055h, 0C8h, 015h ; ROL byte ptr [DI+0C8h], 15h
	db	0C0h, 056h, 0C8h, 015h ; ROL byte ptr [BP+0C8h], 15h
	db	0C0h, 057h, 0C8h, 015h ; ROL byte ptr [BX+0C8h], 15h

ROL byte ptr [BX+SI+0C8C7h], 15h
ROL byte ptr [BX+DI+0C8C7h], 15h
ROL byte ptr [BP+SI+0C8C7h], 15h
ROL byte ptr [BP+DI+0C8C7h], 15h
ROL byte ptr [SI+0C8C7h], 15h
ROL byte ptr [DI+0C8C7h], 15h
ROL byte ptr [BP+0C8C7h], 15h
ROL byte ptr [BX+0C8C7h], 15h

ROL byte ptr ds:[BX], 1h
ROL byte ptr ss:[BX], 1h
ROL byte ptr cs:[BX], 1h
ROL byte ptr es:[BX], 1h
ROL word ptr fs:[BX], 1h
ROL dword ptr gs:[BX], 1h

ROL byte ptr ds:[BX], 15h
ROL byte ptr ss:[BX], 15h
ROL byte ptr cs:[BX], 15h
ROL byte ptr es:[BX], 15h
ROL word ptr fs:[BX], 15h
ROL dword ptr gs:[BX], 15h

MOV AL, 0B0h
MOV CL, 0B1h
MOV DL, 0B2h
MOV BL, 0B3h
MOV AH, 0B4h
MOV CH, 0B5h
MOV DH, 0B6h
MOV BH, 0B7h

MOV AX, 0B800h
MOV CX, 0B900h
MOV DX, 0BA00h
MOV BX, 0BB00h
MOV SP, 0BC00h
MOV BP, 0BD00h
MOV SI, 0BE00h
MOV DI, 0BF00h

MOV EAX, 0B8000000h
MOV ECX, 0B9000000h
MOV EDX, 0BA000000h
MOV EBX, 0BB000000h
MOV ESP, 0BC000000h
MOV EBP, 0BD000000h
MOV ESI, 0BE000000h
MOV EDI, 0BF000000h

	db	0A1h,8h,10h ;MOV AX, word ptr [1008h]
	db	067h,0A1h,8h,10h,00h,00h ;MOV AX, word ptr [1008h]
	db	066h,067h,0A1h,8h,10h,00h,00h ;MOV AX, word ptr [1008h]
	db	0A0h,7h,10h ;MOV AL, byte ptr [1007h]
	db	0A2h,9h,10h ;MOV byte ptr [1009h], AL
	db	0A3h,6h,10h ;MOV word ptr [1006h], AX
	db	066h,0A3h,6h,10h ;MOV dword ptr [1006h], EAX
	db	066h,067h,0A3h,6h,10h,00h,00h	;MOV dword ptr [1006h], EAX
	db	067h,0A3h,6h,10h,00h,00h	;MOV dword ptr [1006h], EAX

MOV byte ptr [BX], 10h
MOV word ptr [BX], 1000h
MOV dword ptr [BX], 10000000h

MOV byte ptr [EAX], 0C2h
MOV word ptr [EAX], 0C200h
MOV dword ptr [EAX], 0C2000000h

MOV EAX,10090807h
MOV AL, 5
	db	0C6h,0C0h,00h	;MOV al,0

ROL	word ptr [EAX+ECX*2+10h], 15h
ROL	word ptr [ECX+ECX*4+10h], 15h
ROL	word ptr [EDX+ECX*8+10h], 15h
ROL	word ptr [EBX+ECX*4+10h], 15h
ROL	word ptr [ESP+ECX*8+10h], 15h
ROL	word ptr [ESI+ECX*2+10h], 15h
ROL	word ptr [EDI+ECX*2+10h], 15h
	db	067h, 0C1h, 14h, 00h, 10h  ;ROL word ptr [EAX+EAX],10h (sib)
ROL word ptr [EBP+10h+EBX], 10h
ROL word ptr [EBP+10h+EBX], 10h
ROL dword ptr [EBP+10h+EBX], 10h
ROL word ptr [ESP+10h+EBX], 10h
ROL word ptr [EBP+10h+EBX], 1h
ROL word ptr [EBP+10h+EBX], CL

MOV ss,ax
MOV ss,[bx]
MOV SS,[EBX+10]
MOV ax,ss
MOV [bx], ss
MOV [EBX+10], SS
end start
