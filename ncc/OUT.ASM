CWDE
NEG	EAX
NEG	word ptr CS:[EAX+EBX*4+0ABCDH]
NEG	dword ptr DS:[BX+SI]
NEG	word ptr FS:[EBP+EDI*8]
NEG	byte ptr CS:[EDI]
NEG	dword ptr ES:[DI+0ABCDH]
NEG	AL
NEG	word ptr ES:[SI]
NEG	word ptr FS:[11111H]
NEG	word ptr DS:[BP]
NEG	word ptr SS:[BP+DI]
NEG	dword ptr GS:[ESP+EBP*4+1H]
NEG	dword ptr FS:[ESP+EBP]
NEG	byte ptr SS:[BP+DI]
NEG	byte ptr SS:[SI]
NEG	byte ptr FS:[EDX+EBX+1214H]
NEG	dword ptr DS:[EAX+EBP*8]
NEG	word ptr SS:[EDI+5678H]
NEG	word ptr DS:[EBX+ECX*4]
NEG	dword ptr FS:[EDI+ESI]
NEG	dword ptr GS:[BP+100H]
NEG	dword ptr CS:[ESI+0ABCDH]
NEG	EBX
NEG	DH
NEG	dword ptr ES:[ESP]
NEG	byte ptr DS:[BX+1234H]
NEG	AX
NEG	word ptr CS:[SI+0ABCDH]
NEG	dword ptr ES:[EDI+ESI]
NEG	word ptr CS:[EBP*4]
NEG	byte ptr ES:[DI]
NEG	dword ptr SS:[BP+DI+100H]
NEG	word ptr SS:[BX+SI+1234H]
NEG	dword ptr DS:[EBX+EDX]
NEG	ESP
NEG	byte ptr FS:[EDI]
NEG	word ptr SS:[BP]
NEG	byte ptr DS:[123H]
NEG	byte ptr GS:[EBP+ESI]
NEG	byte ptr CS:[BP+SI]
NEG	AH
NEG	byte ptr GS:[EBP+EDI*8]
NEG	word ptr FS:[EDI+ESI+5678H]
NEG	word ptr ES:[EAX+EBX*4]
NEG	BX
NEG	BP
NEG	word ptr DS:[EBX+11H]
NEG	byte ptr FS:[ESP+1010H]
NEG	word ptr CS:[EAX+EBX*4]
NEG	dword ptr GS:[EBP]
NEG	byte ptr SS:[BP+SI]
NEG	word ptr GS:[EBP+EDI*8+1000H]
NEG	byte ptr FS:[EBP+1000H]
CALL	word ptr ES:[DI+10H]
CALL	dword ptr ES:[EBX+EAX]
CALL	$-112H
CALL	$-0CH
CALL	dword ptr GS:[EBX+ESI+10101H]
CALL	AX
CALL	$-1AH
CALL	$+212H
CALL	$-1H
CALL	word ptr DS:[BX+100H]
CALL	dword ptr SS:[EBX+ESI+111H]
CALL	dword ptr GS:[EAX+EAX*8+1H]
CALL	$+1234H
CALL	word ptr SS:[BX+1010H]
CALL	$+0ABCH
CALL	$-1001H
CALL	word ptr FS:[BX+DI+1H]
CALL	EBX
CALL	word ptr FS:[EBP]
CALL	CX
CALL	dword ptr DS:[EDX]
CALL	dword ptr GS:[EBX+EDI*8+1010H]
CALL	dword ptr CS:[EDI*8+1111H]
CALL	word ptr FS:[BP+SI]
CALL	word ptr GS:[EBX*2]
CALL	word ptr SS:[BX+SI]
CALL	$-212H
CALL	3412H:7856H
CALL	EDX
CALL	0FFEEH:0DDCCBBAAH
CALL	dword ptr GS:[ECX]
CALL	$+10101016H
CALL	$+99H
CALL	$+5H
