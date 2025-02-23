.model tiny
.486
.data
A db 12h
B dw 1234h
.code
org 100h   
start:
AAA
;//////////////////////Случайные проверки
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
RCL dword ptr [EBP+10], 10h 
RCL dword ptr ss:[EDX+EAX+200],15h
RCL dword ptr es:[ESI+EBP*4+17000],1h
RCL word ptr ss:[EDX+EAX+200],CL

MOV ss:[EDX+EAX+200],ECX
MOV es:[ESI+EBP*4+17000],EBX
MOV ss:[EDX+EAX+200],CX

RCL byte ptr ss:[BX+SI], 10h
		db	0C0h, 016h, 0h, 10h, 30h;RCL byte ptr [1000h], 30h
		
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
;//////////////////////
;//////////////////////Проверка на регистры с RCL
RCL AL, 1h
RCL CL, 1h
RCL DL, 1h
RCL BL, 1h
RCL AH, 1h
RCL CH, 1h
RCL DH, 1h
RCL BH, 1h

RCL AL, CL
RCL CL, CL
RCL DL, CL
RCL BL, CL
RCL AH, CL
RCL CH, CL
RCL DH, CL
RCL BH, CL

RCL AL, 15h
RCL CL, 15h
RCL DL, 15h
RCL BL, 15h
RCL AH, 15h
RCL CH, 15h
RCL DH, 15h
RCL BH, 15h

RCL AX, 1h
RCL CX, 1h
RCL DX, 1h
RCL BX, 1h
RCL SP, 1h
RCL BP, 1h
RCL SI, 1h
RCL DI, 1h

RCL AX, CL
RCL CX, CL
RCL DX, CL
RCL BX, CL
RCL SP, CL
RCL BP, CL
RCL SI, CL
RCL DI, CL

RCL AX, 16h
RCL CX, 16h
RCL DX, 16h
RCL BX, 16h
RCL SP, 16h
RCL BP, 16h
RCL SI, 16h
RCL DI, 16h

RCL EAX, 1h
RCL ECX, 1h
RCL EDX, 1h
RCL EBX, 1h
RCL ESP, 1h
RCL EBP, 1h
RCL ESI, 1h
RCL EDI, 1h

RCL EAX, CL
RCL ECX, CL
RCL EDX, CL
RCL EBX, CL
RCL ESP, CL
RCL EBP, CL
RCL ESI, CL
RCL EDI, CL

RCL EAX, 17h
RCL ECX, 17h
RCL EDX, 17h
RCL EBX, 17h
RCL ESP, 17h
RCL EBP, 17h
RCL ESI, 17h
RCL EDI, 17h
;//////////////////////
;//////////////////////Проверка на byte/word/dword ptr с RCL
RCL byte ptr [BX], 1h
RCL word ptr [BX], 1h
RCL dword ptr [BX], 1h

RCL byte ptr [BX], CL
RCL word ptr [BX], CL
RCL dword ptr [BX], CL

RCL byte ptr [BX], 10h
RCL word ptr [BX], 10h
RCL dword ptr [BX], 10h
;//////////////////////
;//////////////////////Проверка на 16-ти разрядную память с RCL
RCL byte ptr [BX+SI], 1h
RCL byte ptr [BX+DI], 1h
RCL byte ptr [BP+SI], 1h
RCL byte ptr [BP+DI], 1h
RCL byte ptr [SI], 1h
RCL byte ptr [DI], 1h
	db	0D0h, 016h, 0h, 10h ;RCL byte ptr [1000h], 1h
RCL byte ptr [BX], 1h

	db	0D0h, 050h, 0C8h ; RCL byte ptr [BX+SI+0C8h], 1h
	db	0D0h, 051h, 0C8h ; RCL byte ptr [BX+DI+0C8h], 1h
	db	0D0h, 052h, 0C8h ; RCL byte ptr [BP+SI+0C8h], 1h
	db	0D0h, 053h, 0C8h ; RCL byte ptr [BP+DI+0C8h], 1h
	db	0D0h, 054h, 0C8h ; RCL byte ptr [SI+0C8h], 1h
	db	0D0h, 055h, 0C8h ; RCL byte ptr [DI+0C8h], 1h
	db	0D0h, 056h, 0C8h ; RCL byte ptr [BP+0C8h], 1h
	db	0D0h, 057h, 0C8h ; RCL byte ptr [BX+0C8h], 1h

RCL byte ptr [BX+SI+0C8C7h], 1h
RCL byte ptr [BX+DI+0C8C7h], 1h
RCL byte ptr [BP+SI+0C8C7h], 1h
RCL byte ptr [BP+DI+0C8C7h], 1h
RCL byte ptr [SI+0C8C7h], 1h
RCL byte ptr [DI+0C8C7h], 1h
RCL byte ptr [BP+0C8C7h], 1h
RCL byte ptr [BX+0C8C7h], 1h

RCL byte ptr [BX+SI], CL
RCL byte ptr [BX+DI], CL
RCL byte ptr [BP+SI], CL
RCL byte ptr [BP+DI], CL
RCL byte ptr [SI], CL
RCL byte ptr [DI], CL
	db	0D2h, 016h, 0h, 10h ;RCL byte ptr [1000h], CL
RCL byte ptr [BX], CL

	db	0D2h, 050h, 0C8h ; RCL byte ptr [BX+DI+0C8h], CL
	db	0D2h, 051h, 0C8h ; RCL byte ptr [BP+SI+0C8h], CL
	db	0D2h, 052h, 0C8h ; RCL byte ptr [BP+SI+0C8h], CL
	db	0D2h, 053h, 0C8h ; RCL byte ptr [BP+DI+0C8h], CL
	db	0D2h, 054h, 0C8h ; RCL byte ptr [SI+0C8h], CL
	db	0D2h, 055h, 0C8h ; RCL byte ptr [DI+0C8h], CL
	db	0D2h, 056h, 0C8h ; RCL byte ptr [BP+0C8h], CL
	db	0D2h, 057h, 0C8h ; RCL byte ptr [BX+0C8h], CL

RCL byte ptr [BX+SI+0C8C7h], CL
RCL byte ptr [BX+DI+0C8C7h], CL
RCL byte ptr [BP+SI+0C8C7h], CL
RCL byte ptr [BP+DI+0C8C7h], CL
RCL byte ptr [SI+0C8C7h], CL
RCL byte ptr [DI+0C8C7h], CL
RCL byte ptr [BP+0C8C7h], CL
RCL byte ptr [BX+01000h], CL

RCL byte ptr [BX+SI], 015h
RCL byte ptr [BX+DI], 015h
RCL byte ptr [BP+SI], 015h
RCL byte ptr [BP+DI], 015h
RCL byte ptr [SI], 015h
RCL byte ptr [DI], 015h
	db	0C0h, 016h, 0h, 10h, 30h;RCL byte ptr [1000h], 30h
RCL byte ptr [BX], 015h

	db	0C0h, 050h, 0C8h, 015h ; RCL byte ptr [BX+SI+0C8h], 15h
	db	0C0h, 051h, 0C8h, 015h ; RCL byte ptr [BX+DI+0C8h], 15h
	db	0C0h, 052h, 0C8h, 015h ; RCL byte ptr [BP+SI+0C8h], 15h
	db	0C0h, 053h, 0C8h, 015h ; RCL byte ptr [BP+DI+0C8h], 15h
	db	0C0h, 054h, 0C8h, 015h ; RCL byte ptr [SI+0C8h], 15h
	db	0C0h, 055h, 0C8h, 015h ; RCL byte ptr [DI+0C8h], 15h
	db	0C0h, 056h, 0C8h, 015h ; RCL byte ptr [BP+0C8h], 15h
	db	0C0h, 057h, 0C8h, 015h ; RCL byte ptr [BX+0C8h], 15h

RCL byte ptr [BX+SI+0C8C7h], 15h
RCL byte ptr [BX+DI+0C8C7h], 15h
RCL byte ptr [BP+SI+0C8C7h], 15h
RCL byte ptr [BP+DI+0C8C7h], 15h
RCL byte ptr [SI+0C8C7h], 15h
RCL byte ptr [DI+0C8C7h], 15h
RCL byte ptr [BP+0C8C7h], 15h
RCL byte ptr [BX+0C8C7h], 15h
;//////////////////////
;//////////////////////Проверка на сегменты памяти с RCL
RCL byte ptr ds:[BX], 1h
RCL byte ptr ss:[BX], 1h
RCL byte ptr cs:[BX], 1h
RCL byte ptr es:[BX], 1h
RCL word ptr fs:[BX], 1h
RCL dword ptr gs:[BX], 1h

RCL byte ptr ds:[BX], 15h
RCL byte ptr ss:[BX], 15h
RCL byte ptr cs:[BX], 15h
RCL byte ptr es:[BX], 15h
RCL word ptr fs:[BX], 15h
RCL dword ptr gs:[BX], 15h
;//////////////////////
;//////////////////////Проверка MOV с опкодом B0-BF
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
;//////////////////////
;//////////////////////Проверка MOV с опкодом A0-A3
	db	0A1h,8h,10h ;MOV AX, word ptr [1008h]
	db	067h,0A1h,8h,10h,00h,00h ;MOV AX, word ptr [1008h]
	db	066h,067h,0A1h,8h,10h,00h,00h ;MOV AX, word ptr [1008h]
	db	0A0h,7h,10h ;MOV AL, byte ptr [1007h]
	db	0A2h,9h,10h ;MOV byte ptr [1009h], AL
	db	0A3h,6h,10h ;MOV word ptr [1006h], AX
	db	066h,0A3h,6h,10h ;MOV dword ptr [1006h], EAX
	db	066h,067h,0A3h,6h,10h,00h,00h	;MOV dword ptr [1006h], EAX
	db	067h,0A3h,6h,10h,00h,00h	;MOV dword ptr [1006h], EAX
;//////////////////////
;//////////////////////Проверка MOV с опкодом C6-C7
MOV byte ptr [BX], 10h
MOV word ptr [BX], 1000h
MOV dword ptr [BX], 10000000h

MOV byte ptr [EAX], 0C2h
MOV word ptr [EAX], 0C200h
MOV dword ptr [EAX], 0C2000000h

MOV EAX,10090807h
MOV AL, 5
	db	0C6h,0C0h,00h	;MOV al,0
;//////////////////////
;//////////////////////Проверка на байт SIB с RCL
RCL	word ptr [EAX+ECX*2+10h], 15h
RCL	word ptr [ECX+ECX*4+10h], 15h
RCL	word ptr [EDX+ECX*8+10h], 15h
RCL	word ptr [EBX+ECX*4+10h], 15h
RCL	word ptr [ESP+ECX*8+10h], 15h
RCL	word ptr [ESI+ECX*2+10h], 15h
RCL	word ptr [EDI+ECX*2+10h], 15h
	db	067h, 0C1h, 14h, 00h, 10h  ;RCL word ptr [EAX+EAX],10h (sib)
RCL word ptr [EBP+10h+EBX], 10h
RCL word ptr [EBP+10h+EBX], 10h
RCL dword ptr [EBP+10h+EBX], 10h
RCL word ptr [ESP+10h+EBX], 10h
RCL word ptr [EBP+10h+EBX], 1h
RCL word ptr [EBP+10h+EBX], CL
;//////////////////////
;//////////////////////Проверка на MOV с опкодом 8C,8E
MOV ss,ax
MOV ss,[bx]
MOV SS,[EBX+10]
MOV ax,ss
MOV [bx], ss
MOV [EBX+10], SS
;//////////////////////
end start