.MODEL TINY
.486
.CODE
    ORG     100H
START:
	CWD
	SAR    byte ptr DS:[EDX+EBP*8+10040H],CL
	SAR    word ptr DS:[ECX+ECX*8+0A5678H],2H
	SAR    dword ptr DS:[ESI+EDI*8+0B1234H],CL
	SAR    byte ptr DS:[EDX+EBP*8+0AADH],1H
	SAR    word ptr DS:[ECX+ECX*8+10040H],CL
	SAR    dword ptr FS:[ESI+EDI*8+15678H],2H
	SAR    byte ptr FS:[EDX+EBP*8+56H],CL
	SAR    word ptr FS:[ECX+ECX*8+99678H],1H
	SAR    dword ptr FS:[ESI+EDI*8+11234H],CL
	SAR    byte ptr FS:[EDX+EBP*8+56678H],2H
	SAR    word ptr FS:[ECX+ECX*8+98234H],CL
	SAR    dword ptr FS:[ESI+EDI*8+95678H],1H
	LOCK   SAR    dword ptr FS:[ESP+EBP+10H],1H
	SAR    byte ptr DS:[SI],CL
	SAR    word ptr DS:[DI],11H
	SAR    dword ptr SS:[BP],CL
	SAR    byte ptr DS:[BX+SI],11H
	SAR    word ptr DS:[BX+DI],CL
	SAR    dword ptr SS:[BP+SI+1H],23H
	SAR    byte ptr SS:[BP+DI+222H],CL
	SAR    word ptr DS:[SI+4321H],12H
	SAR    dword ptr DS:[DI+5678H],CL
	SAR    byte ptr FS:[BX+0ABABH],0AAH
	SAR    word ptr CS:[BP+0CDCDH],CL
	SAR    dword ptr DS:[SI+12H],53H
	SAR    byte ptr SS:[DI+34H],61H
	SAR    word ptr FS:[BX+4321H],CL
	SAR    dword ptr ES:[BP+5678H],22H
	SAR    byte ptr FS:[EDX],CL
	SAR    word ptr CS:[EBP],1H
	SAR    dword ptr DS:[ECX],CL
	SAR    byte ptr SS:[ECX],0H
	SAR    word ptr FS:[ESI],CL
	SAR    dword ptr ES:[ESP],1H
	SAR    byte ptr DS:[EDX+EBP],CL
	SAR    word ptr DS:[ECX+ECX],2H
	SAR    dword ptr DS:[ESI+EDI],CL
	SAR    byte ptr FS:[EDX+0ABCABCDH],1H
	SAR    word ptr FS:[EBP+0FEDCB00H],CL
	SAR    dword ptr FS:[ECX+12134H],2H
	SAR    byte ptr FS:[ECX+565678H],CL
	SAR    word ptr FS:[ESI+4321H],1H
	SAR    dword ptr FS:[EDI+11118H],CL
	SAR    byte ptr FS:[EDX+EBP*8],2H
	SAR    word ptr FS:[ECX+ECX*4],CL
	SAR    dword ptr FS:[ESI+EDI*2],1H
	SAR    AL,CL
	SAR    BX,CL
	SAR    ECX,CL
	SAR    DL,11H
	SAR    SP,22H
	SAR    EBP,33H
	MOV    byte ptr SS:[BP+SI+12H],13H
	LOCK   MOV    dword ptr FS:[ESP+EBP*8+101010H],10101010H
	MOV    DS,AX
	MOV    SS,SP
	MOV    FS:[BX+SI],AL
	MOV    BL,CL
	MOV    CS:[BX+SI],BX
	MOV    CX,SI
	MOV    AL,DS:[BX+SI]
	MOV    AX,DS:[BX+SI]
	MOV    SS:[4321H],FS
	MOV    FS,DX
	MOV    DS,SP
	MOV    ESP,SS
	MOV    AL,ES:[10H]
	MOV    AX,CS:[133332H]
	MOV    EDX,DS:[0ABCDEFH]
	MOV    SS:[0AH],AL
	MOV    ES:[4321H],AX
	MOV    BH,10H
	MOV    BX,1000H
	MOV    DS:[EDX+EBP*8],AL
	MOV    DS:[EDX+EBP*8],AL
	MOV    DS:[ESP],AL
	MOV    DS:[ESP],AL
	MOV    SS:[BP+12H],AL
	MOV    SS:[BP+12H],AL
	MOV    DS:[12H],AL
	MOV    DS:[4321H],AX
	MOV    DS:[12345678H],EDX
	MOV    AL,56H
	MOV    BH,BL
	MOV    DX,DS:[4321H]
	MOV    DX,DS:[BX+SI]
	MOV    DI,FS:[BX+DI]
	MOV    BX,AX
	MOV    BP,CS:[SI]
	MOV    BX,DS:[DI]
	MOV    CX,FS:[SI]
	MOV    BP,DS:[BX+SI]
	MOV    BH,CL
	MOV    CX,DS:[BP+DI+222H]
	MOV    SI,CS:[DI]
	MOV    BP,FS:[SI]
	MOV    CX,DS:[BX+SI]
	MOV    SI,FS:[BP+SI+1H]
	MOV    DI,CS:[DI]
	MOV    SS:[EBP+0AH],ESI
	MOV    SS:[ECX+EDX+0C8H],ECX
	MOV    FS:[ESI+EBP*8+4268H],EBP
	MOV    SS:[ECX+EDX+0C8H],CX
	MOV    EDX,DS:[BX+1010H]
	MOV    EDX,DS:[EDX+1010H]
	MOV    AL,CH
	MOV    AL,DS:[BX]
	MOV    AL,DS:[BX+10H]
	MOV    EDX,DS:[BX]
	MOV    EDX,DS:[EDX+10H]
	MOV    DS:[BX+SI+10H],BX
	MOV    DS:[EDX+7080910H],BX
	MOV    DL,AL
	MOV    DS:[BX],DH
	MOV    DS:[BX],AL
	MOV    AL,0B0H
	MOV    CL,0B1H
	MOV    DL,0B2H
	MOV    BL,0B3H
	MOV    BP,9900H
	MOV    DI,90H
	MOV    EDX,99H
	MOV    SI,0F66H
	MOV    DI,9A1H
	MOV    AX,DS:[8H]
	MOV    EDX,DS:[108H]
	MOV    AL,DS:[7H]
	MOV    DS:[1099H],AL
	MOV    DS:[106H],AX
	MOV    DS:[10706H],EDX
	MOV    DS:[1006H],EDX
	MOV    DS:[16H],AX
	MOV    byte ptr DS:[EAX],10H
	MOV    word ptr DS:[EBX],1000H
	MOV    dword ptr DS:[ECX],100000H
	MOV    byte ptr DS:[EDX],0CH
	MOV    word ptr DS:[EBP],7C0H
	MOV    dword ptr DS:[ESI],0C20000H
	MOV    word ptr DS:[EDI],7C0H
	MOV    AX,FS:[1H]
	MOV    AX,DS:[EDX+EDX]
	MOV    AX,DS:[EDX+EDX*8]
	MOV    AX,DS:[EDX+EDX*8]
	MOV    AX,DS:[EDX+EDX*8]
	MOV    AX,DS:[ESI]
	MOV    FS:[EDX+EDX*8],AX
	MOV    AX,DS:[EBP+1H]
	MOV    AX,FS:[BP]
	MOV    AX,DS:[EDX+EDX+1H]
	MOV    DS:[ECX+1H],AX
	MOV    DS:[ECX+1H],AX
	MOV    DS:[EBP+1H],AX
	MOV    FS:[BP],AX
	MOV    DS:[EDI+1H],AX
	MOV    AX,DS:[EDX+135H]
	MOV    AX,DS:[EDX+EDX*8+135H]
	MOV    AX,DS:[ESI+135H]
	MOV    AX,DS:[EDI+135H]
	MOV    DS:[EDX+135H],AX
	MOV    DS:[EBP+135H],AX
	MOV    FS:[BP+135H],AX
	MOV    DS:[EDX+EDX*4+135H],AX
	MOV    DS:[ESI+135H],AX
	MOV    DS:[EDI+135H],AX
	MOV    AL,1H
	MOV    CL,1H
	MOV    SI,111H
	MOV    DI,111H
	MOV    EBP,10FFFH
	MOV    ESI,10FFFH
	MOV    EDI,10FFFH
	MOV    byte ptr DS:[BX+SI],1H
	MOV    dword ptr SS:[BP+DI+135H],1H
	MOV    dword ptr DS:[SI+135H],1H
	MOV    word ptr DS:[BP+1H],135H
	MOV    word ptr DS:[BX+1H],135H
	MOV    dword ptr SS:[BP+SI+1H],135H
	MOV    dword ptr SS:[BP+DI+222H],135H
	MOV    dword ptr DS:[BX+135H],135H
	MOV    EDX,807H
	MOV    AL,5H
	MOV    AL,0H
	MOV    SS,AX
	MOV    SS,DS:[BX]
	MOV    SS,DS:[EBP+0AH]
	MOV    FS,DX
	MOV    DS:[BX],SS
	MOV    DS:[EBP+0AH],SS
	MOV    AL,AL
	MOV    AL,CL
	MOV    AL,BL
	MOV    CL,BH
	MOV    CL,DH
	MOV    DH,DL
	MOV    DH,DH
	MOV    BH,DH
	MOV    SP,SP
	MOV    SP,BP
	MOV    DI,AX
	MOV    EDX,ECX
	MOV    EDX,ECX
	MOV    ESP,ECX
	MOV    EBP,EDI
	MOV    AL,SS:[BP+SI+1H]
	MOV    AL,SS:[BP+DI+222H]
	MOV    AL,DS:[SI]
	MOV    AL,DS:[DI]
	MOV    BH,DS:[BX+DI]
	MOV    BH,SS:[BP+SI+1H]
	MOV    BH,SS:[BP+DI+222H]
	MOV    BH,DS:[SI]
	MOV    BH,DS:[DI]
	MOV    BH,DS:[BX]
	MOV    DS:[BX+SI],AL
	MOV    DS:[BX+DI],AL
	MOV    SS:[BP+SI+1H],AL
	MOV    SS:[BP+DI+222H],AL
	MOV    DS:[SI],AL
	MOV    DS:[DI],AL
	MOV    DS:[DI],SI
	MOV    DS:[BX],SI
	MOV    DS:[BX+SI],DI
	MOV    DS:[BX+DI],DI
	MOV    SS:[BP+SI+1H],DI
	MOV    SS:[BP+DI+222H],DI
	MOV    DS:[SI],DI
	MOV    DS:[DI],DI
	MOV    DS:[BX],DI
	MOV    EDX,DS:[BX+SI]
	MOV    EDX,DS:[BX+DI]
	MOV    EDX,SS:[BP+SI+1H]
	MOV    EDX,SS:[BP+DI+222H]
	MOV    EDX,DS:[SI]
	MOV    EDX,DS:[DI]
	MOV    EDX,DS:[BX]
	MOV    CS:[BX+SI],EBP
	MOV    FS:[BX+DI],EBP
	MOV    SS:[BP+SI+1H],EBP
	MOV    DS:[BX],EBP
	MOV    FS:[BX+SI],ESI
	MOV    ES:[BX+DI],ESI
	MOV    SS:[BP+SI+1H],ESI
	MOV    SS:[BP+DI+222H],ESI
	MOV    DS:[SI],ESI
	MOV    DS:[DI],ESI
	MOV    AX,DS:[SI+1H]
	MOV    AX,DS:[DI+1H]
	MOV    AX,DS:[BX+1H]
	MOV    DS:[BX+SI+1H],AX
	MOV    DS:[BX+SI+111H],AX
	MOV    DS:[BX+DI+111H],AX
END START
