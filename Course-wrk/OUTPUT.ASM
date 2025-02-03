	DAS
	MOV	[EAX+EBP*2], AL
	MOV	[EAX+EBP*2], AL
	MOV	[ESP], AL
	MOV	[ESP], AL
	MOV	[BP+012h], AL
	MOV	[BP+012h], AL
	MOV	[00012h], AL	MOV	[01234h], AX
	MOV	[012345678h], EAX
	MOV	AL, 056h	MOV	AH, BL
	MOV	DX, [01234h]
	MOV	DX, [BX+SI]
	MOV	DI, ES:[BX+DI]
	MOV	BX, AX
	MOV	BP, CS:[SI]
	MOV	BX, [DI]
	MOV	CX, FS:[SI]
	MOV	BP, [BX+SI]
	MOV	AH, CL
	MOV	CX, DS:[BP+DI]
	MOV	SI, CS:[DI]
	MOV	BP, ES:[SI]
	MOV	CX, [BX+SI]
	MOV	SI, ES:[BP+SI]
	MOV	DI, CS:[DI]
	MOV	[EBP+00Ah], ESI	ROL	dword ptr [EBP+00Ah], 010h
	ROL	dword ptr SS:[EDX+EAX+0000000C8h], 015h
	ROL	dword ptr ES:[ESI+EBP*4+000004268h], 1h
	ROL	word ptr SS:[EDX+EAX+0000000C8h], CL
	MOV	SS:[EDX+EAX+0000000C8h], ECX	MOV	ES:[ESI+EBP*4+000004268h], EBX	MOV	SS:[EDX+EAX+0000000C8h], CX
	ROL	byte ptr SS:[BX+SI], 010h
	ROL	byte ptr [01000h], 030h
	MOV	EAX, [BX+1010h]	MOV	EAX, [EAX+00001010h]	MOV	AL, CH
	MOV	AL, [BX]
	MOV	AL, [BX+010h]
	MOV	EAX, [BX]	MOV	EAX, [EAX+010h]	MOV	[BX+SI+010h], BX
	MOV	[EAX+007080910h], BX
	MOV	DL, AL
	MOV	[BX], DH
	MOV	[BX], AL
	ROL	AL, 1h
	ROL	CL, 1h
	ROL	DL, 1h
	ROL	BL, 1h
	ROL	AH, 1h
	ROL	CH, 1h
	ROL	DH, 1h
	ROL	BH, 1h
	ROL	AL, 1h
	ROL	CL, 1h
	ROL	DL, 1h
	ROL	BL, 1h
	ROL	AH, 1h
	ROL	CH, 1h
	ROL	DH, 1h
	ROL	BH, 1h
	ROL	AL, 015h	ROL	CL, 015h	ROL	DL, 015h	ROL	BL, 015h	ROL	AH, 015h	ROL	CH, 015h	ROL	DH, 015h	ROL	BH, 015h	ROL	AX, 1h
	ROL	CX, 1h
	ROL	DX, 1h
	ROL	BX, 1h
	ROL	SP, 1h
	ROL	BP, 1h
	ROL	SI, 1h
	ROL	DI, 1h
	ROL	AX, 1h
	ROL	CX, 1h
	ROL	DX, 1h
	ROL	BX, 1h
	ROL	SP, 1h
	ROL	BP, 1h
	ROL	SI, 1h
	ROL	DI, 1h
	ROL	AX, 016h	ROL	CX, 016h	ROL	DX, 016h	ROL	BX, 016h	ROL	SP, 016h	ROL	BP, 016h	ROL	SI, 016h	ROL	DI, 016h	ROL	EAX, 1h	ROL	ECX, 1h	ROL	EDX, 1h	ROL	EBX, 1h	ROL	ESP, 1h	ROL	EBP, 1h	ROL	ESI, 1h	ROL	EDI, 1h	ROL	EAX, 1h	ROL	ECX, 1h	ROL	EDX, 1h	ROL	EBX, 1h	ROL	ESP, 1h	ROL	EBP, 1h	ROL	ESI, 1h	ROL	EDI, 1h	ROL	EAX, 017h	ROL	ECX, 017h	ROL	EDX, 017h	ROL	EBX, 017h	ROL	ESP, 017h	ROL	EBP, 017h	ROL	ESI, 017h	ROL	EDI, 017h	ROL	byte ptr [BX], 1h
	ROL	word ptr [BX], 1h
	ROL	dword ptr [EDI], 1h
	ROL	byte ptr [BX], CL
	ROL	word ptr [BX], CL
	ROL	dword ptr [EDI], CL
	ROL	byte ptr [BX], 010h
	ROL	word ptr [BX], 010h
	ROL	dword ptr [BX], 010h
	ROL	byte ptr [BX+SI], 1h
	ROL	byte ptr [BX+DI], 1h
	ROL	byte ptr [BP+SI], 1h
	ROL	byte ptr [BP+DI], 1h
	ROL	byte ptr [SI], 1h
	ROL	byte ptr [DI], 1h
	ROL	byte ptr [01000h], 1h
	ROL	byte ptr [BX], 1h
	ROL	byte ptr [BX+SI+0C8h], 1h
	ROL	byte ptr [BX+DI+0C8h], 1h
	ROL	byte ptr [BP+SI+0C8h], 1h
	ROL	byte ptr [BP+DI+0C8h], 1h
	ROL	byte ptr [SI+0C8h], 1h
	ROL	byte ptr [DI+0C8h], 1h
	ROL	byte ptr [BP+0C8h], 1h
	ROL	byte ptr [BX+0C8h], 1h
	ROL	byte ptr [BX+SI+0C8C7h], 1h
	ROL	byte ptr [BX+DI+0C8C7h], 1h
	ROL	byte ptr [BP+SI+0C8C7h], 1h
	ROL	byte ptr [BP+DI+0C8C7h], 1h
	ROL	byte ptr [SI+0C8C7h], 1h
	ROL	byte ptr [DI+0C8C7h], 1h
	ROL	byte ptr [BP+0C8C7h], 1h
	ROL	byte ptr [BX+0C8C7h], 1h
	ROL	byte ptr [BX+SI], CL
	ROL	byte ptr [BX+DI], CL
	ROL	byte ptr [BP+SI], CL
	ROL	byte ptr [BP+DI], CL
	ROL	byte ptr [SI], CL
	ROL	byte ptr [DI], CL
	ROL	byte ptr [01000h], CL
	ROL	byte ptr [BX], CL
	ROL	byte ptr [BX+SI+0C8h], CL
	ROL	byte ptr [BX+DI+0C8h], CL
	ROL	byte ptr [BP+SI+0C8h], CL
	ROL	byte ptr [BP+DI+0C8h], CL
	ROL	byte ptr [SI+0C8h], CL
	ROL	byte ptr [DI+0C8h], CL
	ROL	byte ptr [BP+0C8h], CL
	ROL	byte ptr [BX+0C8h], CL
	ROL	byte ptr [BX+SI+0C8C7h], CL
	ROL	byte ptr [BX+DI+0C8C7h], CL
	ROL	byte ptr [BP+SI+0C8C7h], CL
	ROL	byte ptr [BP+DI+0C8C7h], CL
	ROL	byte ptr [SI+0C8C7h], CL
	ROL	byte ptr [DI+0C8C7h], CL
	ROL	byte ptr [BP+0C8C7h], CL
	ROL	byte ptr [BX+01000h], CL
	ROL	byte ptr [BX+SI], 015h
	ROL	byte ptr [BX+DI], 015h
	ROL	byte ptr [BP+SI], 015h
	ROL	byte ptr [BP+DI], 015h
	ROL	byte ptr [SI], 015h
	ROL	byte ptr [DI], 015h
	ROL	byte ptr [01000h], 030h
	ROL	byte ptr [BX], 015h
	ROL	byte ptr [BX+SI+0C8h], 015h
	ROL	byte ptr [BX+DI+0C8h], 015h
	ROL	byte ptr [BP+SI+0C8h], 015h
	ROL	byte ptr [BP+DI+0C8h], 015h
	ROL	byte ptr [SI+0C8h], 015h
	ROL	byte ptr [DI+0C8h], 015h
	ROL	byte ptr [BP+0C8h], 015h
	ROL	byte ptr [BX+0C8h], 015h
	ROL	byte ptr [BX+SI+0C8C7h], 015h
	ROL	byte ptr [BX+DI+0C8C7h], 015h
	ROL	byte ptr [BP+SI+0C8C7h], 015h
	ROL	byte ptr [BP+DI+0C8C7h], 015h
	ROL	byte ptr [SI+0C8C7h], 015h
	ROL	byte ptr [DI+0C8C7h], 015h
	ROL	byte ptr [BP+0C8C7h], 015h
	ROL	byte ptr [BX+0C8C7h], 015h
	ROL	byte ptr [BX], 1h
	ROL	byte ptr SS:[BX], 1h
	ROL	byte ptr CS:[BX], 1h
	ROL	byte ptr ES:[BX], 1h
	ROL	word ptr FS:[BX], 1h
	ROL	dword ptr GS:[EDI], 1h
	ROL	byte ptr [BX], 015h
	ROL	byte ptr SS:[BX], 015h
	ROL	byte ptr CS:[BX], 015h
	ROL	byte ptr ES:[BX], 015h
	ROL	word ptr FS:[BX], 015h
	ROL	dword ptr GS:[BX], 015h
	MOV	AL, 0B0h	MOV	CL, 0B1h	MOV	DL, 0B2h	MOV	BL, 0B3h	MOV	AH, 0B4h	MOV	CH, 0B5h	MOV	DH, 0B6h	MOV	BH, 0B7h	MOV	AX, 0B800h	MOV	CX, 0B900h	MOV	DX, 0BA00h	MOV	BX, 0BB00h	MOV	SP, 0BC00h	MOV	BP, 0BD00h	MOV	SI, 0BE00h	MOV	DI, 0BF00h	MOV	EAX, 0B8000000h	MOV	ECX, 0B9000000h	MOV	EDX, 0BA000000h	MOV	EBX, 0BB000000h	MOV	ESP, 0BC000000h	MOV	EBP, 0BD000000h	MOV	ESI, 0BE000000h	MOV	EDI, 0BF000000h	MOV	AX, [01008h]
	MOV	AX, [000001008h]
	MOV	EAX, [000001008h]	MOV	AL, [01007h]	MOV	[01009h], AL	MOV	[01006h], AX
	MOV	[01006h], EAX
	MOV	[000001006h], EAX
	MOV	[000001006h], AX
	MOV	byte ptr [BX], 010h
	MOV	word ptr [BX], 01000h
	MOV	dword ptr [BX], 010000000h
	MOV	byte ptr [EAX], 0C2h
	MOV	word ptr [EAX], 0C200h
	MOV	dword ptr [EAX], 0C2000000h
	MOV	EAX, 010090807h	MOV	AL, 005h	MOV	AL, 000h
	ROL	word ptr [EAX+ECX*2+010h], 015h
	ROL	word ptr [ECX+ECX*4+010h], 015h
	ROL	word ptr [EDX+ECX*8+010h], 015h
	ROL	word ptr [EBX+ECX*4+010h], 015h
	ROL	word ptr [ESP+ECX*8+010h], 015h
	ROL	word ptr [ESI+ECX*2+010h], 015h
	ROL	word ptr [EDI+ECX*2+010h], 015h
	ROL	word ptr [EAX+EAX], 010h
	ROL	word ptr [EBP+EBX+010h], 010h
	ROL	word ptr [EBP+EBX+010h], 010h
	ROL	dword ptr [EBP+EBX+010h], 010h
	ROL	word ptr [ESP+EBX+010h], 010h
	ROL	word ptr [EBP+EBX+010h], 1h
	ROL	word ptr [EBP+EBX+010h], CL
	MOV	SS, AX
	MOV	SS, [BX]
	MOV	SS, [EBX+00Ah]
	MOV	AX, SS
	MOV	[BX], SS
	MOV	[EBX+00Ah], SS
