.MODEL TINY
.486
.CODE
    ORG     100H
START:
	CWDE
	NEG    byte ptr DS:[123H]
	NEG    AX
	NEG    word ptr DS:[EBX+11H]
	NEG    EBX
	NEG    dword ptr GS:[EBP]
	NEG    byte ptr FS:[ESP+1010h]
	NEG    AL
	NEG    BX
	NEG    DH
	NEG    byte ptr SS:[SI]
	NEG    word ptr DS:[BP]
	NEG    dword ptr DS:[EAX+EBP*8]
	NEG    word ptr CS:[EBP*4]
	NEG    dword ptr DS:[EBX+EDX]
	NEG    word ptr FS:[11111H]
	NEG    byte ptr FS:[EDX+EBX+1214H]
	NEG    byte ptr SS:[BP+SI]
	NEG    BP
	NEG    word ptr SS:[BP]
	NEG    ESP
	NEG    dword ptr ES:[ESP]
	NEG    dword ptr FS:[ESP+EBP]
	NEG    dword ptr GS:[ESP+EBP*4+1H]
	NEG    AX
	NEG    EAX
	NEG    AH
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
	CALL   REL8
	CALL   $-1H
	CALL   $+1234H
	CALL   $-1001H
	CALL   $+99H
	CALL   $+12345678H
	CALL   REL8
	CALL   $+212H
	CALL   START
	CALL   $-212H
	CALL   AX
	CALL   EBX
	CALL   CX
	CALL   EDX
	CALL   word ptr SS:[BX+SI]
	CALL   dword ptr ES:[EBX+EAX]
        CALL   word ptr FS:[BX+DI+1H]
	CALL   dword ptr DS:[EDX]
	CALL   word ptr FS:[EBP]
	CALL   dword ptr GS:[EAX+EAX*8+1H]
	CALL   word ptr GS:[EBX*2]
	CALL   dword ptr GS:[ECX]
	CALL   word ptr FS:[BP+SI]
	CALL   dword ptr GS:[EBX+ESI+10101H]
	CALL   word ptr DS:[BX+100H]
	CALL   dword ptr GS:[EBX+EDI*8+1010H]
	CALL   word ptr SS:[BX+1010H]
	CALL   dword ptr SS:[EBX+ESI+111H]
	CALL   word ptr ES:[DI+10H]
	CALL   dword ptr CS:[EDI*8+1111H]
	DB     66h, 0E8h, 10h, 10h, 10h, 10h
	DB     66h, 0E8h, 0FFh, 0FFh, 0FFh, 0FFh
	DB     9Ah, 56h, 78h, 12h, 34h
	DB     66h, 9Ah, 0AAh, 0BBh, 0CCh, 0DDh, 0EEh, 0FFh
END START
