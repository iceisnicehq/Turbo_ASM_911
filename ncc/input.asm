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
	NEG    EAX,FS:[10101010H]
	NEG    EAX,FS:[EAX+ECX+1010H]
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
	NEG    AX,BX
	NEG    EAX,EBX
	NEG    CX,DS:[SI]
	NEG    ECX,DS:[EDI]
	NEG    DX,SS:[BP+SI]
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
	NEG    AX,DS:[BX+SI]
	NEG    EAX,FS:[EDI]
	NEG    CX,SS:[BP+DI]
	NEG    ECX,GS:[EBP+ESI]
	NEG    DX,ES:[SI]
	NEG    EDX,CS:[EDI]
	NEG    EAX,DS:[EBX+ECX*4]
	NEG    ECX,ES:[EDI+ESI]
	NEG    DX,CS:[BP+SI]
	NEG    EDX,FS:[EBP+EDI*8]
	NEG    AX,SS:[SI]
	NEG    EAX,ES:[EAX+EBX*4]
	NEG    AX,DS:[BX+1234H]
	NEG    EAX,SS:[EDI+5678H]
	NEG    CX,GS:[BP+100H]
	NEG    ECX,FS:[EBP+1000H]
	NEG    DX,CS:[SI+0ABCDH]
	NEG    EDX,CS:[ESI+0ABCDH]
	NEG    AX,DS:[BX+SI]
	NEG    EAX,FS:[EDI+ESI]
	NEG    CX,SS:[BP+DI]
	NEG    ECX,GS:[EBP+EDI*8]
	NEG    DX,ES:[DI]
	NEG    EDX,CS:[EAX+EBX*4]
	NEG    AX,DS:[BX+SI+1234H]
	NEG    EAX,FS:[EDI+ESI+5678H]
	NEG    CX,SS:[BP+DI+100H]
	NEG    ECX,GS:[EBP+EDI*8+1000H]
	NEG    DX,ES:[DI+0ABCDH]
	NEG    EDX,CS:[EAX+EBX*4+0ABCDH]
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
