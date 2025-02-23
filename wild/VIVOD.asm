	AAA
	MOV	[000000010h*2], AL
	MOV	[000000010h*2], AL
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
	MOV	[EBP+00Ah], ESI	RCL	dword ptr [EBP+00Ah], 010h
	RCL	dword ptr SS:[EDX+EAX+0000000C8h], 015h
	RCL	dword ptr ES:[ESI+EBP*4+000004268h], 1h
	RCL	word ptr SS:[EDX+EAX+0000000C8h], CL
	MOV	SS:[EDX+EAX+0000000C8h], ECX	MOV	ES:[ESI+EBP*4+000004268h], EBX	MOV	SS:[EDX+EAX+0000000C8h], CX
	RCL	byte ptr SS:[BX+SI], 010h
	RCL	byte ptr [01000h], 030h
	MOV	EAX, [BX+1010h]	MOV	EAX, [EAX+00001010h]	MOV	AL, CH
	MOV	AL, [BX]
	MOV	AL, [BX+010h]
	MOV	EAX, [BX]	MOV	EAX, [EAX+010h]	MOV	[BX+SI+010h], BX
	MOV	[EAX+007080910h], BX
	MOV	DL, AL
	MOV	[BX], DH
	MOV	[BX], AL
	RCL	AL, 1h
	RCL	CL, 1h
	RCL	DL, 1h
	RCL	BL, 1h
	RCL	AH, 1h
	RCL	CH, 1h
	RCL	DH, 1h
	RCL	BH, 1h
	RCL	AL, 1h
	RCL	CL, 1h
	RCL	DL, 1h
	RCL	BL, 1h
	RCL	AH, 1h
	RCL	CH, 1h
	RCL	DH, 1h
	RCL	BH, 1h
	RCL	AL, 015h	RCL	CL, 015h	RCL	DL, 015h	RCL	BL, 015h	RCL	AH, 015h	RCL	CH, 015h	RCL	DH, 015h	RCL	BH, 015h	RCL	AX, 1h
	RCL	CX, 1h
	RCL	DX, 1h
	RCL	BX, 1h
	RCL	SP, 1h
	RCL	BP, 1h
	RCL	SI, 1h
	RCL	DI, 1h
	RCL	AX, 1h
	RCL	CX, 1h
	RCL	DX, 1h
	RCL	BX, 1h
	RCL	SP, 1h
	RCL	BP, 1h
	RCL	SI, 1h
	RCL	DI, 1h
	RCL	AX, 016h	RCL	CX, 016h	RCL	DX, 016h	RCL	BX, 016h	RCL	SP, 016h	RCL	BP, 016h	RCL	SI, 016h	RCL	DI, 016h	RCL	EAX, 1h	RCL	ECX, 1h	RCL	EDX, 1h	RCL	EBX, 1h	RCL	ESP, 1h	RCL	EBP, 1h	RCL	ESI, 1h	RCL	EDI, 1h	RCL	EAX, 1h	RCL	ECX, 1h	RCL	EDX, 1h	RCL	EBX, 1h	RCL	ESP, 1h	RCL	EBP, 1h	RCL	ESI, 1h	RCL	EDI, 1h	RCL	EAX, 017h	RCL	ECX, 017h	RCL	EDX, 017h	RCL	EBX, 017h	RCL	ESP, 017h	RCL	EBP, 017h	RCL	ESI, 017h	RCL	EDI, 017h	RCL	byte ptr [BX], 1h
	RCL	word ptr [BX], 1h
	RCL	dword ptr [EDI], 1h
	RCL	byte ptr [BX], CL
	RCL	word ptr [BX], CL
	RCL	dword ptr [EDI], CL
	RCL	byte ptr [BX], 010h
	RCL	word ptr [BX], 010h
	RCL	dword ptr [BX], 010h
	RCL	byte ptr [BX+SI], 1h
	RCL	byte ptr [BX+DI], 1h
	RCL	byte ptr [BP+SI], 1h
	RCL	byte ptr [BP+DI], 1h
	RCL	byte ptr [SI], 1h
	RCL	byte ptr [DI], 1h
	RCL	byte ptr [01000h], 1h
	RCL	byte ptr [BX], 1h
	RCL	byte ptr [BX+SI+0C8h], 1h
	RCL	byte ptr [BX+DI+0C8h], 1h
	RCL	byte ptr [BP+SI+0C8h], 1h
	RCL	byte ptr [BP+DI+0C8h], 1h
	RCL	byte ptr [SI+0C8h], 1h
	RCL	byte ptr [DI+0C8h], 1h
	RCL	byte ptr [BP+0C8h], 1h
	RCL	byte ptr [BX+0C8h], 1h
	RCL	byte ptr [BX+SI+0C8C7h], 1h
	RCL	byte ptr [BX+DI+0C8C7h], 1h
	RCL	byte ptr [BP+SI+0C8C7h], 1h
	RCL	byte ptr [BP+DI+0C8C7h], 1h
	RCL	byte ptr [SI+0C8C7h], 1h
	RCL	byte ptr [DI+0C8C7h], 1h
	RCL	byte ptr [BP+0C8C7h], 1h
	RCL	byte ptr [BX+0C8C7h], 1h
	RCL	byte ptr [BX+SI], CL
	RCL	byte ptr [BX+DI], CL
	RCL	byte ptr [BP+SI], CL
	RCL	byte ptr [BP+DI], CL
	RCL	byte ptr [SI], CL
	RCL	byte ptr [DI], CL
	RCL	byte ptr [01000h], CL
	RCL	byte ptr [BX], CL
	RCL	byte ptr [BX+SI+0C8h], CL
	RCL	byte ptr [BX+DI+0C8h], CL
	RCL	byte ptr [BP+SI+0C8h], CL
	RCL	byte ptr [BP+DI+0C8h], CL
	RCL	byte ptr [SI+0C8h], CL
	RCL	byte ptr [DI+0C8h], CL
	RCL	byte ptr [BP+0C8h], CL
	RCL	byte ptr [BX+0C8h], CL
	RCL	byte ptr [BX+SI+0C8C7h], CL
	RCL	byte ptr [BX+DI+0C8C7h], CL
	RCL	byte ptr [BP+SI+0C8C7h], CL
	RCL	byte ptr [BP+DI+0C8C7h], CL
	RCL	byte ptr [SI+0C8C7h], CL
	RCL	byte ptr [DI+0C8C7h], CL
	RCL	byte ptr [BP+0C8C7h], CL
	RCL	byte ptr [BX+01000h], CL
	RCL	byte ptr [BX+SI], 015h
	RCL	byte ptr [BX+DI], 015h
	RCL	byte ptr [BP+SI], 015h
	RCL	byte ptr [BP+DI], 015h
	RCL	byte ptr [SI], 015h
	RCL	byte ptr [DI], 015h
	RCL	byte ptr [01000h], 030h
	RCL	byte ptr [BX], 015h
	RCL	byte ptr [BX+SI+0C8h], 015h
	RCL	byte ptr [BX+DI+0C8h], 015h
	RCL	byte ptr [BP+SI+0C8h], 015h
	RCL	byte ptr [BP+DI+0C8h], 015h
	RCL	byte ptr [SI+0C8h], 015h
	RCL	byte ptr [DI+0C8h], 015h
	RCL	byte ptr [BP+0C8h], 015h
	RCL	byte ptr [BX+0C8h], 015h
	RCL	byte ptr [BX+SI+0C8C7h], 015h
	RCL	byte ptr [BX+DI+0C8C7h], 015h
	RCL	byte ptr [BP+SI+0C8C7h], 015h
	RCL	byte ptr [BP+DI+0C8C7h], 015h
	RCL	byte ptr [SI+0C8C7h], 015h
	RCL	byte ptr [DI+0C8C7h], 015h
	RCL	byte ptr [BP+0C8C7h], 015h
	RCL	byte ptr [BX+0C8C7h], 015h
	RCL	byte ptr [BX], 1h
	RCL	byte ptr SS:[BX], 1h
	RCL	byte ptr CS:[BX], 1h
	RCL	byte ptr ES:[BX], 1h
	RCL	word ptr FS:[BX], 1h
	RCL	dword ptr GS:[EDI], 1h
	RCL	byte ptr [BX], 015h
	RCL	byte ptr SS:[BX], 015h
	RCL	byte ptr CS:[BX], 015h
	RCL	byte ptr ES:[BX], 015h
	RCL	word ptr FS:[BX], 015h
	RCL	dword ptr GS:[BX], 015h
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
	RCL	word ptr [EAX+ECX*2+010h], 015h
	RCL	word ptr [ECX+ECX*4+010h], 015h
	RCL	word ptr [EDX+ECX*8+010h], 015h
	RCL	word ptr [EBX+ECX*4+010h], 015h
	RCL	word ptr [ESP+ECX*8+010h], 015h
	RCL	word ptr [ESI+ECX*2+010h], 015h
	RCL	word ptr [EDI+ECX*2+010h], 015h
	RCL	word ptr [EAX+EAX], 010h
	RCL	word ptr [EBP+EBX+010h], 010h
	RCL	word ptr [EBP+EBX+010h], 010h
	RCL	dword ptr [EBP+EBX+010h], 010h
	RCL	word ptr [ESP+EBX+010h], 010h
	RCL	word ptr [EBP+EBX+010h], 1h
	RCL	word ptr [EBP+EBX+010h], CL
	MOV	SS, AX
	MOV	SS, [BX]
	MOV	SS, [EBX+00Ah]
	MOV	AX, SS
	MOV	[BX], SS
	MOV	[EBX+00Ah], SS
