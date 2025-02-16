.MODEL TINY
.486
.CODE
    ORG     100H
START:
	CDQ
	IMUL    word ptr DS:[1H]
	IMUL    AX,100H
	IMUL    BX,CX,0ABCDH
	IMUL    SP,BP,1H
	IMUL    SI,DI,0H
	IMUL    EAX,12345678H
	IMUL    ESP,EBP,10101010H
	IMUL    DX,SS:[BX+SI],0FH
	IMUL    EDX,DS:[BP+SI],0H
	IMUL    EDX,0H
	IMUL    EDX,FS:[ESP+EAX*4+12345678H],12345H
	IMUL    ECX,GS:[EDI*2],11H
	IMUL    EAX,DS:[EAX+100H]
	IMUL    ECX,EBX
	IMUL    EDX,GS:[EBP]
	IMUL    ESP,ES:[ESP]
	IMUL    AL
	IMUL    BH
	IMUL    CL
	IMUL    DH
	IMUL    byte ptr SS:[SI]
	IMUL    byte ptr DS:[BP]
	IMUL    byte ptr DS:[EBP*8]
	IMUL    word ptr CS:[ESP+EBP]
	IMUL    dword ptr DS:[EBX+EDX+1H]
	IMUL    EAX,FS:[10101010H]
	IMUL    EAX,FS:[EAX+ECX+1010H]
	IMUL    byte ptr SS:[BP+SI]
	IMUL    BP
	IMUL    word ptr SS:[BP]
	IMUL    ESP
	IMUL    dword ptr DS:[ESP]
	IMUL    dword ptr DS:[ESP+EBP]
	IMUL    dword ptr DS:[ESP+EBP*4+100H]
	IMUL    AX,16H
	IMUL    AX,BX,16H
	IMUL    EAX,EBX,16H
	IMUL    EAX,16H
	IMUL    EAX,EBX,1H
	IMUL    EAX,DS:[BX+SI],1H
	IMUL    EAX,DS:[EAX],100H
	IMUL    EAX,DS:[EAX],0AAAAH
	IMUL    EAX,DS:[EAX+EBX*8],0AAAAH
	IMUL    AL
	IMUL    byte ptr SS:[BP+SI]
	IMUL    BP
	IMUL    word ptr SS:[BP]
	IMUL    ESP
	IMUL    dword ptr DS:[ESP]
	IMUL    dword ptr DS:[ESP+EBP]
	IMUL    dword ptr DS:[ESP+EBP*4+100H]
	IMUL    AX,BX,1234H
	IMUL    EAX,EBX,12345678H
	IMUL    CX,DX,0ABCDH
	IMUL    ECX,EDX,0FFH
	IMUL    SI,DI,100H
	IMUL    ESI,EDI,100H
	IMUL    AX,BX,12H
	IMUL    EAX,EBX,12H
	IMUL    CX,DX,0ABH
	IMUL    ECX,EDX,0FFH
	IMUL    SI,DI,10H
	IMUL    ESI,EDI,10H
	IMUL    AX,BX
	IMUL    EAX,EBX
	IMUL    CX,DS:[SI]
	IMUL    ECX,DS:[EDI]
	IMUL    DX,SS:[BP+SI]
	IMUL    EDX,DS:[EBP+ESI]
	IMUL    AL
	IMUL    BL
	IMUL    byte ptr DS:[SI]
	IMUL    byte ptr DS:[EDI]
	IMUL    byte ptr SS:[BP+DI]
	IMUL    byte ptr DS:[EBP+ESI]
	IMUL    AX
	IMUL    EAX
	IMUL    word ptr DS:[SI]
	IMUL    dword ptr DS:[EDI]
	IMUL    word ptr SS:[BP+DI]
	IMUL    dword ptr DS:[EBP+ESI]
	IMUL    AX,DS:[BX+SI]
	IMUL    EAX,FS:[EDI]
	IMUL    CX,SS:[BP+DI]
	IMUL    ECX,GS:[EBP+ESI]
	IMUL    DX,ES:[SI]
	IMUL    EDX,CS:[EDI]
	IMUL    EAX,DS:[EBX+ECX*4]
	IMUL    ECX,ES:[EDI+ESI]
	IMUL    DX,CS:[BP+SI]
	IMUL    EDX,FS:[EBP+EDI*8]
	IMUL    AX,SS:[SI]
	IMUL    EAX,ES:[EAX+EBX*4]
	IMUL    AX,DS:[BX+1234H]
	IMUL    EAX,SS:[EDI+5678H]
	IMUL    CX,GS:[BP+100H]
	IMUL    ECX,FS:[EBP+1000H]
	IMUL    DX,CS:[SI+0ABCDH]
	IMUL    EDX,CS:[ESI+0ABCDH]
	IMUL    AX,DS:[BX+SI]
	IMUL    EAX,FS:[EDI+ESI]
	IMUL    CX,SS:[BP+DI]
	IMUL    ECX,GS:[EBP+EDI*8]
	IMUL    DX,ES:[DI]
	IMUL    EDX,CS:[EAX+EBX*4]
	IMUL    AX,DS:[BX+SI+1234H]
	IMUL    EAX,FS:[EDI+ESI+5678H]
	IMUL    CX,SS:[BP+DI+100H]
	IMUL    ECX,GS:[EBP+EDI*8+1000H]
	IMUL    DX,ES:[DI+0ABCDH]
	IMUL    EDX,CS:[EAX+EBX*4+0ABCDH]
REL8:
	JMP     $
	JMP     $-12H
	JMP     $-1111H
    JMP     $+1000H
    JMP     $+1H
    JMP     $+111H
    JMP     REL8
	JMP     START
    JMP     $+12H
    JMP     $-12H
    JMP     BX
    JMP     EBX
    JMP     CX
    JMP     ECX
    JMP     word ptr CS:[BX]
    JMP     dword ptr DS:[EBX]
    JMP     word ptr DS:[BX]
    JMP     dword ptr DS:[EBX]
    JMP     word ptr FS:[BX]
    JMP     dword ptr FS:[EBX]
    JMP     word ptr GS:[EBX]
    JMP     dword ptr GS:[EBX]
    JMP     word ptr FS:[BX+SI]
    JMP     dword ptr GS:[EBX+ESI]
    JMP     word ptr DS:[BX+DI+100H]
    JMP     dword ptr DS:[EBX+EDI*8+1000H]
    JMP     word ptr FS:[BX+SI]
    JMP     dword ptr GS:[EBX+ESI]
    JMP     word ptr ES:[BX+DI+100H]
    JMP     dword ptr CS:[EBX+EDI*8+1000H]
    DB      0EAH,78H,56H,34H,12H
    DB      066H,0EAH,78H,56H,34H,12H,0CDH,0ABH
END START
