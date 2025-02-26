.MODEL TINY
.486
.CODE
    ORG     100H
START:
	CWDE
	NEG    word ptr DS:[1H]
	NEG    AX
	NEG    word ptr DS:[EAX+100H]
	NEG    EBX
	NEG    dword ptr GS:[EBP]
	NEG    byte ptr ES:[ESP]
	NEG    AL
	NEG    BH
	NEG    CL
	NEG    DH
	NEG    byte ptr SS:[SI]
	NEG    byte ptr DS:[BP]
	NEG    byte ptr DS:[EBP*8]
	NEG    word ptr CS:[ESP+EBP]
	NEG    dword ptr DS:[EBX+EDX+1H]
	NEG    word ptr FS:[10101010H]
	NEG    byte ptr FS:[EAX+ECX+1010H]
	NEG    byte ptr SS:[BP+SI]
	NEG    BP
	NEG    word ptr SS:[BP]
	NEG    ESP
	NEG    dword ptr DS:[ESP]
	NEG    dword ptr DS:[ESP+EBP]
	NEG    dword ptr DS:[ESP+EBP*4+100H]
	NEG    AX
	NEG    EAX
	NEG    AL
	NEG    byte ptr SS:[BP+SI]
	NEG    BP
	NEG    word ptr SS:[BP]
	NEG    ESP
	NEG    dword ptr DS:[ESP]
	NEG    dword ptr DS:[ESP+EBP]
	NEG    dword ptr DS:[ESP+EBP*4+100H]
	NEG    byte ptr DS:[SI]
	NEG    word ptr DS:[EDI]
	NEG    word ptr SS:[BP+SI]
	NEG    byte ptr DS:[EBP+ESI]
	NEG    AL
	NEG    BL
	NEG    byte ptr DS:[SI]
	NEG    byte ptr DS:[EDI]
	NEG    byte ptr SS:[BP+DI]
	NEG    byte ptr DS:[EBP+ESI]
	NEG    AX
	NEG    EAX
	NEG    word ptr DS:[SI]
	NEG    dword ptr DS:[EDI]
	NEG    word ptr SS:[BP+DI]
	NEG    dword ptr DS:[EBP+ESI]
	NEG    dword ptr DS:[BX+SI]
	NEG    byte ptr FS:[EDI]
	NEG    word ptr SS:[BP+DI]
	NEG    byte ptr GS:[EBP+ESI]
	NEG    word ptr ES:[SI]
	NEG    byte ptr CS:[EDI]
	NEG    word ptr DS:[EBX+ECX*4]
	NEG    dword ptr ES:[EDI+ESI]
	NEG    byte ptr CS:[BP+SI]
	NEG    word ptr FS:[EBP+EDI*8]
	NEG    byte ptr SS:[SI]
	NEG    word ptr ES:[EAX+EBX*4]
	NEG    byte ptr DS:[BX+1234H]
	NEG    word ptr SS:[EDI+5678H]
	NEG    dword ptr GS:[BP+100H]
	NEG    byte ptr FS:[EBP+1000H]
	NEG    word ptr CS:[SI+0ABCDH]
	NEG    dword ptr CS:[ESI+0ABCDH]
	NEG    dword ptr DS:[BX+SI]
	NEG    dword ptr FS:[EDI+ESI]
	NEG    byte ptr SS:[BP+DI]
	NEG    byte ptr GS:[EBP+EDI*8]
	NEG    byte ptr ES:[DI]
	NEG    word ptr CS:[EAX+EBX*4]
	NEG    word ptr SS:[BX+SI+1234H]
	NEG    word ptr FS:[EDI+ESI+5678H]
	NEG    dword ptr SS:[BP+DI+100H]
	NEG    word ptr GS:[EBP+EDI*8+1000H]
	NEG    dword ptr ES:[DI+0ABCDH]
	NEG    word ptr CS:[EAX+EBX*4+0ABCDH]
REL8:
	CALL   $
	CALL   $-12H
	CALL   $-1111H
	CALL   $+1000H
	CALL   $+1H
	CALL   $+111H
	CALL   REL8
	CALL   START
	CALL   $+12H
	CALL   $-12H
	CALL   BX
	CALL   EBX
	CALL   CX
	CALL   ECX
	CALL   word ptr CS:[BX]
	CALL   dword ptr DS:[EBX]
        CALL   word ptr DS:[BX]
	CALL   dword ptr DS:[EBX]
	CALL   word ptr FS:[BX]
	CALL   dword ptr FS:[EBX]
	CALL   word ptr GS:[EBX]
	CALL   dword ptr GS:[EBX]
	CALL   word ptr FS:[BX+SI]
	CALL   dword ptr GS:[EBX+ESI]
	CALL   word ptr DS:[BX+DI+100H]
	CALL   dword ptr DS:[EBX+EDI*8+1000H]
	CALL   word ptr FS:[BX+SI]
	CALL   dword ptr GS:[EBX+ESI]
	CALL   word ptr ES:[BX+DI+100H]
	CALL   dword ptr CS:[EBX+EDI*8+1000H]
	DB     66h, 0E8h, 10h, 10h, 10h, 10h
	DB     66h, 0E8h, 0FFh, 0FFh, 0FFh, 0FFh
	DB     9Ah, 56h, 78h, 12h, 34h
	DB     66h, 9Ah, 0AAh, 0BBh, 0CCh, 0DDh, 0EEh, 0FFh
END START
