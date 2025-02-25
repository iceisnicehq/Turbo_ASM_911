.MODEL TINY
.486
.CODE
    ORG     100H
START:
	CWDE
	NEG    word ptr DS:[1H]
	NEG    AX
	NEG    DS:[EAX+100H]
	NEG    EBX
	NEG    GS:[EBP]
	NEG    ES:[ESP]
	NEG    AL
	NEG    BH
	NEG    CL
	NEG    DH
	NEG    byte ptr SS:[SI]
	NEG    byte ptr DS:[BP]
	NEG    byte ptr DS:[EBP*8]
	NEG    word ptr CS:[ESP+EBP]
	NEG    dword ptr DS:[EBX+EDX+1H]
	NEG    FS:[10101010H]
	NEG    FS:[EAX+ECX+1010H]
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
	NEG    DS:[SI]
	NEG    DS:[EDI]
	NEG    SS:[BP+SI]
	NEG    DS:[EBP+ESI]
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
	NEG    DS:[BX+SI]
	NEG    FS:[EDI]
	NEG    SS:[BP+DI]
	NEG    GS:[EBP+ESI]
	NEG    ES:[SI]
	NEG    CS:[EDI]
	NEG    DS:[EBX+ECX*4]
	NEG    ES:[EDI+ESI]
	NEG    CS:[BP+SI]
	NEG    FS:[EBP+EDI*8]
	NEG    SS:[SI]
	NEG    ES:[EAX+EBX*4]
	NEG    DS:[BX+1234H]
	NEG    SS:[EDI+5678H]
	NEG    GS:[BP+100H]
	NEG    FS:[EBP+1000H]
	NEG    CS:[SI+0ABCDH]
	NEG    CS:[ESI+0ABCDH]
	NEG    DS:[BX+SI]
	NEG    FS:[EDI+ESI]
	NEG    SS:[BP+DI]
	NEG    GS:[EBP+EDI*8]
	NEG    ES:[DI]
	NEG    CS:[EAX+EBX*4]
	NEG    SS:[BX+SI+1234H]
	NEG    FS:[EDI+ESI+5678H]
	NEG    SS:[BP+DI+100H]
	NEG    GS:[EBP+EDI*8+1000H]
	NEG    ES:[DI+0ABCDH]
	NEG    CS:[EAX+EBX*4+0ABCDH]
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
END START
