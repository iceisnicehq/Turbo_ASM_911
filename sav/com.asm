.model tiny
.486
.code
    org 100h
Start:
    SAHF
    SHL     AL,CL
    SHL     BX,CL
    SHL     ECX,CL
    SHL     DL,1H
    SHL     SP,02H
    SHL     EBP,03H
    SHL     byte ptr DS:[SI],CL
    SHL     word ptr DS:[DI],1H
    SHL     dword ptr SS:[BP],CL
    SHL     byte ptr DS:[BX+SI],1H
    SHL     word ptr DS:[BX+DI],CL
    SHL     dword ptr SS:[BP+SI],02H
    SHL     byte ptr SS:[BP+DI],CL
    SHL     word ptr DS:[SI+1234H],1H
    SHL     dword ptr DS:[DI+5678H],CL
    SHL     byte ptr ES:[BX+0AAAAH],0AAH
    SHL     word ptr CS:[BP+0BBBBH],CL
    SHL     dword ptr DS:[SI+12H],03H
    SHL     byte ptr SS:[DI+34H],1H
    SHL     word ptr FS:[BX+1234H],CL
    SHL     dword ptr GS:[BP+5678H],02H
    SHL     byte ptr ES:[EAX],CL
    SHL     word ptr CS:[EBX],1H
    SHL     dword ptr DS:[ECX],CL
    SHL     byte ptr SS:[EDX],00H
    SHL     word ptr FS:[ESI],CL
    SHL     dword ptr GS:[ESP],1H
    SHL     byte ptr DS:[EAX+EBX],CL
    SHL     word ptr DS:[ECX+EDX],02H
    SHL     dword ptr DS:[ESI+EDI],CL
    SHL     byte ptr FS:[EAX+0ABCDABCDH],1H
    SHL     word ptr FS:[EBX+0FEDCBA00H],CL
    SHL     dword ptr FS:[ECX+12341234H],02H
    SHL     byte ptr FS:[EDX+56785678H],CL
    SHL     word ptr FS:[ESI+20201234H],1H
    SHL     dword ptr FS:[EDI+11115678H],CL
    SHL     byte ptr FS:[EAX+EBX*2],02H
    SHL     word ptr FS:[ECX+EDX*4],CL
    SHL     dword ptr FS:[ESI+EDI*8],1H
    SHL     byte ptr DS:[EAX+EBX*2+10203040H],CL
    SHL     word ptr DS:[ECX+EDX*4+0AAAA5678H],02H
    SHL     dword ptr DS:[ESI+EDI*8+0BBBB1234H],CL
    SHL     byte ptr DS:[EAX+EBX*2+0ABCDABCDH],1H
    SHL     word ptr DS:[ECX+EDX*4+10203040H],CL
    SHL     dword ptr ES:[ESI+EDI*8+12345678H],02H
    SHL     byte ptr ES:[EAX+EBX*2+56781234H],CL
    SHL     word ptr ES:[ECX+EDX*4+99995678H],1H
    SHL     dword ptr ES:[ESI+EDI*8+12341234H],CL
    SHL     byte ptr ES:[EAX+EBX*2+56785678H],02H
    SHL     word ptr ES:[ECX+EDX*4+98761234H],CL
    SHL     dword ptr ES:[ESI+EDI*8+98765678H],1H
    LOCK SHL     dword ptr ES:[ESP+EBP+10H],1H
    XADD    AL,BL
    XADD    AX,CX
    XADD    EAX,EDX
    XADD    BL,CL
    XADD    BX,DX
    XADD    EBX,ECX
    XADD    CL,DL
    XADD    CX,SI
    XADD    ECX,ESI
    XADD    DL,AH
    XADD    DX,DI
    XADD    EDX,EDI
    XADD    DS:[SI],AL
    XADD    DS:[DI],BX
    XADD    SS:[BP],ECX
    XADD    DS:[BX+SI],DL
    XADD    DS:[BX+DI],SI
    XADD    SS:[BP+SI],EDX
    XADD    SS:[BP+DI],BH
    XADD    DS:[SI+1234H],DI
    XADD    CS:[DI+5678H],EBP
    XADD    CS:[BX+0CCCCH],CL
    XADD    SS:[BP+00AAH],SP
    XADD    CS:[SI+12H],ESI
    XADD    CS:[DI+56H],DH
    XADD    CS:[BX+1234H],BP
    XADD    SS:[BP],EDI
    XADD    DS:[EAX],BL
    XADD    DS:[EBX],CX
    XADD    DS:[ECX],EDX
    XADD    DS:[EDX],AH
    XADD    DS:[ESI],DI
    XADD    DS:[ESP],ESP
    XADD    SS:[EAX+EBX],CL
    XADD    SS:[ECX+EDX],SI
    XADD    SS:[ESI+EDI],EBP
    XADD    SS:[EAX+0AAAABBBBH],DL
    XADD    SS:[EBX+11111111H],BP
    XADD    SS:[ECX+12341234H],ESI
    XADD    SS:[EDX+EDX],BH
    XADD    DS:[EBP+ESI+12345678H],DI
    XADD    DS:[EDI+12345678H],EBP
    XADD    DS:[EAX+EBX*2],CL
    XADD    DS:[ECX+EDX*4],SI
    XADD    DS:[ESI+EDI*8],EBP
    XADD    CS:[EAX+EBX*2+0ABCD1234H],DL
    XADD    ES:[ECX+EDX*4+0ABCD5678H],BP
    XADD    DS:[ESI+EDI*8+0ABCD1234H],ESI
    XADD    SS:[EAX+EBX*2+1BCD5678H],BH
    XADD    FS:[ECX+EDX*4+2BCD1234H],DI
    XADD    GS:[ESI+EDI*8+3BCD5678H],EBP
    LOCK XADD    DS:[EBP+EBP*8],EBP
end Start