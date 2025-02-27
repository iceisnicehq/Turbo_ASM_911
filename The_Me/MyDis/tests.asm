.MODEL SMALL
.486
.data          
.code       
org 100h
start:
        mov     eax, [EBP*4]
        mov     eax, ss:[ebp*4]
        mov     eax, ds:[ebp*4]
        mov     ax, word ptr SS:[EBP+ebx*2]
        mov     eax, dword ptr SS:[ESP+ebx*2] 
        mov     ax, word ptr DS:[EBP+ebx*2]
        mov     eax, dword ptr DS:[ESP+ebx*2]
        AAD
        BTC     DS:[EAX*4],EAX
        BTC     DS:[EBX*4],AX 
        BTC     SS:[EBP*4],AX 
        BTC     word ptr SS:[EBP],0FFH  
        BTC     dword ptr SS:[ESP],0FFH 
        BTC     [EBP*4+00000001H],EBP
        BTC     SS:[EBP*4+00000100H],EBP
        BTC     DS:[BX+0FEDCH],AX  
        BTC     word ptr DS:[EBX+EBP+0FFEEDDCCH],0A0H 
        BTC     word ptr SS:[EBP+EAX],0FFH
        BTC     dword ptr SS:[EBP+EAX*8],0FFH
        BTC     word ptr SS:[ESP+EAX],0FFH
        BTC     dword ptr SS:[ESP+EAX*8],0FFH
        BTC     word ptr SS:[ESP+EBP],0FFH
        BTC     dword ptr SS:[ESP+EBP*8],0FFH
        LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH  
        LOCK BTC     word ptr SS:[EAX+EBP*8+87654321H],0FFH
        LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX
        LOCK BTC     DS:[EAX+EBP*8+87654321H],AX 
        LOCK BTC     dword ptr SS:[EBP+EBX*4+12345678H],9AH
        LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
        LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
        LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H 
aac:
        JNS     haha
        JO      aac   
haha:
        BTC     CS:[DI],CX    
        LOCK BTC     DS:[BX+SI+1234H],SI
        BTC     SS:[EBP*4],AX 
        LOCK BTC     DS:[DI+1234H],DI   
        BTC     CS:[BX+DI],SI 
        BTC     SS:[EBP],EAX  
        BTC     DS:[ECX+EDX*4+00000100H],EDI 
        LOCK BTC     DS:[BX+DI],ESI
        BTC     EBP,ECX  
        BTC     DS:[EBX+EBP*4+12345678H],ESI 
        BTC     FS:[BX+SI],SP 
        BTC     CS:[BX+SI],DI 
        BTC     FS:[BX+DI],DX 
        BTC     FS:[BX+DI],SI 
        BTC     AX,SI
        LOCK BTC     SS:[BP+1234H],DX   
        BTC     DX,AX
        BTC     SS:[BP+DI+1234H],CX
        BTC     dword ptr SS:[ESP+EBP*8],0FFH
        LOCK BTC     SS:[BP+1234H],EDX  
        LOCK BTC     DS:[BX+DI],CX 
        LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
        BTC     ES:[BX+SI],SI 
        BTC     EBX,ECX  
        BTC     FS:[EDX],ESI  
        BTC     FS:[SI],CX    
        LOCK BTC     DS:[DI],ESI
        BTC     CS:[EAX],EBX  
        BTC     DS:[EAX+EAX*2+00000100H],CX  
        BTC     ESP,EBP  
        BTC     DS:[SI],DX    
        BTC     CS:[BP+DI],SI 
        BTC     DS:[EDX+EBX*8],AX  
        BTC     SS:[BP+DI],CX 
        BTC     DS:[BP+DI],SI 
        BTC     SP,01H
        LOCK BTC     DS:[SI],BP
        BTC     GS:[SI],SI    
        BTC     CS:[BX+DI],CX 
        BTC     FS:[DI],BX    
        BTC     GS:[BP],SP    
        BTC     DS:[SI],SI    
        BTC     SS:[SI],SP    
        LOCK BTC     DS:[BX+DI],BX 
        BTC     EBP,EDI  
        BTC     SS:[ESP+EBP],DI
        BTC     SS:[ESP+EBP],EBX
        BTC     DS:[BP+DI],BP 
        BTC     CS:[EBX],EBX  
        BTC     GS:[BP],AX    
        BTC     ESI,0FFH 
        LOCK BTC     DS:[DI],EDX
        LOCK BTC     DS:[EAX+EAX*4+00004321H],AX  
        BTC     CS:[BP],AX    
        LOCK BTC     SS:[BP+DI],EAX
        BTC     DS:[BX+DI+1234H],DX
        BTC     DS:[SI+1234H],CX
        BTC     DS:[EBX+EBP*4+12345678H],SI  
        LOCK BTC     SS:[BP+1234H],EDI  
        AAD
        BTC     GS:[BX+SI],DI 
        BTC     ES:[BP+SI],SI 
        BTC     SS:[ESP+EBP],BX
        BTC     CS:[EBP],EBX  
        BTC     DS:[BX+DI],SP 
        BTC     DS:[SI+1234H],DI
        LOCK BTC     SS:[BP+DI+1234H],BX
        BTC     dword ptr SS:[ESP],0FFH 
        BTC     FS:[SI],AX    
        LOCK BTC     DS:[BX+SI],CX 
        BTC     DS:[SI+1234H],BP
        BTC     EDI,ESI  
        LOCK BTC     SS:[BP+DI+1234H],ECX 
        BTC     DS:[EDI],EDX  
        LOCK BTC     DS:[BX+SI+1234H],EAX 
        BTC     DS:[BP+SI],SI 
        BTC     GS:[BP+DI],AX 
        BTC     SS:[BP],SP    
        BTC     DS:[SI+1234H],DX
        LOCK BTC     SS:[BP+DI],EDI
        BTC     SP,DI
        BTC     DS:[EAX+EAX*2+00000100H],EBX 
        BTC     FS:[BP+SI],DX 
        BTC     DS:[BP+DI],DI 
        BTC     BP,DI
        BTC     CS:[BP],SP    
        LOCK BTC     SS:[BP+DI],ESP
        BTC     SS:[BX+DI],SI 
        LOCK BTC     SS:[BP+DI],EBX
        BTC     CS:[SI],BP    
        BTC     dword ptr FS:[0123H],01H
        BTC     FS:[DI],SI    
        BTC     SS:[DI],SP    
        BTC     CS:[DI],DX    
        BTC     GS:[EDI],EDI  
        BTC     ECX,ESP  
        BTC     ES:[BP+SI],SP 
        LOCK BTC     DS:[BX+SI+1234H],EDI 
        LOCK BTC     DS:[DI],CX
        BTC     dword ptr DS:[SI],0B0H  
        BTC     CS:[DI],DI    
        BTC     DS:[BP+DI],BX 
        BTC     DS:[ECX+EDX*4+00000100H],ESP 
        BTC     SS:[EDX],EBP  
        BTC     GS:[EAX],EDI  
        BTC     GS:[BX+DI],DX 
        BTC     SS:[BP+DI],BP 
        BTC     ES:[BP],DI    
        LOCK BTC     DS:[BX+SI+1234H],DX
        LOCK BTC     DS:[BX+DI+1234H],BX
        BTC     word ptr SS:[BP+SI],0A0H
        BTC     FS:[ECX],ESI  
        BTC     SS:[BP+SI],CX 
        BTC     ES:[SI],AX    
        BTC     FS:[BP],CX    
        LOCK BTC     DS:[DI],DX
        BTC     ES:[BX+DI],CX 
        LOCK BTC     SS:[EBP+00004321H],AX
        BTC     DS:[BP],BX    
        BTC     GS:[BX+DI],AX 
        BTC     SS:[BP+1234H],CX
        BTC     DS:[DI],DI    
        LOCK BTC     DS:[ESI+00004321H],AX
        BTC     DI,0FFH  
        LOCK BTC     SS:[BP+1234H],EAX  
        LOCK BTC     DS:[SI],DI
        BTC     ES:[BP],SP    
        LOCK BTC     DS:[SI],CX
        BTC     GS:[DI],CX    
        BTC     FS:[SI],BP    
        LOCK BTC     DS:[DI+1234H],SI   
        BTC     DS:[DI+1234H],BP
        BTC     DS:[EDX],EDX  
        LOCK BTC     DS:[BX+DI+1234H],SP
        BTC     SS:[BP+DI+1234H],DI
        BTC     SS:[SI],BP    
        BTC     SS:[BP+DI],DI 
        BTC     CS:[BX+SI],CX 
        BTC     DS:[EBX+ECX*2+01H],ESI  
        BTC     GS:[EBX],EDI  
        LOCK BTC     DS:[EDI+00004321H],AX
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX
        BTC     DS:[EAX],EDX  
        BTC     SS:[EBP+EBP],BP
        LOCK BTC     DS:[SI+1234H],BP   
        LOCK BTC     DS:[BX+SI+1234H],DI
        BTC     SS:[EBP+EBP+10203040H],DI 
        LOCK BTC     SS:[BP+1234H],EBP  
        BTC     EBP,EBP  
        LOCK BTC     DS:[DI],EBX
        BTC     GS:[BX+SI],SI 
        LOCK BTC     SS:[BP+SI+1234H],DI
        LOCK BTC     SS:[BP],EDI
        BTC     DS:[BX+0FEDCH],AX  
        BTC     DS:[EDX+EBX*8],ESI 
        BTC     DS:[BX+SI],CX 
        BTC     EBP,EAX  
        BTC     DS:[EBX+ECX*2+01H],BX   
        BTC     DI,SP
        LOCK BTC     DS:[DI],BP
        BTC     CS:[BP],CX    
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI
        BTC     SS:[BP+DI],BX 
        BTC     SS:[SI],AX    
        BTC     word ptr DS:[BX+DI],0A0H
        LOCK BTC     DS:[DI+1234H],ESP  
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX
        BTC     SS:[EAX],EBP  
        BTC     DI,BP
        LOCK BTC     SS:[BP+DI],SP 
        BTC     SS:[SI],DI    
        BTC     SS:[EBP+EBP],EDX
        BTC     BX,SI
        BTC     FS:[ESI],ESI  
        BTC     CS:[BP+SI],DI 
        BTC     DS:[EAX+EAX*2+00000100H],SP  
        BTC     CS:[SI],SI    
        BTC     BP,BP
        BTC     DS:[BP+SI],BX 
        BTC     GS:[BP+SI],SI 
        BTC     DS:[EBX],EAX  
        BTC     GS:[BX+SI],SP 
        BTC     CS:[EDI],EBX  
        BTC     EAX,0FFH 
        BTC     SS:[BX+DI],DX 
        BTC     DS:[EBX+ECX*2+01H],DI   
        BTC     SS:[ESP+EBP],SI
        BTC     SS:[BX+SI],AX 
        LOCK BTC     SS:[BP+DI+1234H],SP
        BTC     SS:[BP+DI],SP 
        LOCK BTC     SS:[BP+DI+1234H],SI
        BTC     SS:[BP],DI    
        BTC     DS:[BX+SI],DX 
        BTC     DS:[BX+DI+1234H],CX
        BTC     FS:[BP+DI],DX 
        BTC     FS:[BX+DI],BX 
        BTC     ES:[ESI],ESP  
        BTC     EAX,EDI  
        LOCK BTC     DS:[BX+DI],EBX
        BTC     SS:[ESP+EBP],EDX
        BTC     SI,SI
        BTC     DS:[EBX+EBP*4+12345678H],EBX 
        BTC     CS:[DI],SP    
        BTC     FS:[SI],BX    
        LOCK BTC     SS:[BP],SP
        BTC     DS:[SI+1234H],BX
        BTC     CX,CX
        BTC     ESI,ESI  
        BTC     GS:[BP+SI],DX 
        LOCK BTC     SS:[EBP*8+000000B0H],AX 
        BTC     DS:[DI+1234H],DX
        BTC     dword ptr GS:[12345678H],10H 
        BTC     DX,01H
        LOCK BTC     DS:[ECX*4+00004321H],AX 
        BTC     DS:[DI+1234H],BX
        LOCK BTC     SS:[BP],EBX
        LOCK BTC     SS:[BP+DI],EBP
        BTC     DI,BX
        LOCK BTC     SS:[BP],ECX
        BTC     DX,BP
        BTC     word ptr SS:[EBP+EAX],0FFH
        BTC     ES:[DI],DX    
        BTC     SS:[BP+DI+1234H],DX
        LOCK BTC     DS:[DI+1234H],DX   
        BTC     SS:[EBP+EBP],EBP
        LOCK BTC     DS:[SI],ESP
        BTC     ESP,ESP  
        BTC     DS:[BX+SI+1234H],CX
        LOCK BTC     DS:[EAX+EAX*4+00004321H],AX  
        BTC     GS:[EDX],EDI  
        BTC     SS:[BX+SI],BX 
        LOCK BTC     DS:[BX+SI+1234H],ESP 
        LOCK BTC     DS:[DI+1234H],EBP  
        LOCK BTC     SS:[BP+DI+1234H],EBP 
        BTC     SP,BP
        BTC     dword ptr SS:[12345678H],10H 
        BTC     SS:[BP+1234H],SI
        BTC     SS:[BX+SI],SP 
        BTC     DS:[BX+DI+1234H],AX
        BTC     GS:[BP],DI    
        LOCK BTC     DS:[EDI+00004321H],AX
        BTC     SS:[ESP+EBP],BP
        LOCK BTC     SS:[BP],DI
        BTC     EDI,EDI  
        BTC     SS:[BP],AX    
        LOCK BTC     SS:[BP+1234H],ECX  
        BTC     SP,BX
        BTC     DS:[BP],CX    
        BTC     SI,BX
        BTC     DS:[EBX+ECX*2+01H],EDX  
        BTC     DS:[SI+1234H],AX
        LOCK BTC     DS:[BX+DI],ESP
        LOCK BTC     SS:[BP+DI],DX 
        BTC     FS:[BX+SI],SI 
        BTC     SS:[SI],SI    
        BTC     SS:[BP+SI],AX 
        BTC     DS:[ECX+EDX*4+00000100H],ECX 
        BTC     SS:[EBP+EBP+10203040H],SI 
        BTC     SS:[BX+DI],AX 
        LOCK BTC     SS:[BP+SI+1234H],AX
        BTC     BP,SI
        BTC     DS:[EBX+00001234H],ECX  
        BTC     DS:[EBX+EBP*4+12345678H],ECX 
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX 
        BTC     DS:[EDX+00001234H],ECX  
        BTC     CS:[BP+DI],SP 
        BTC     EDX,EAX  
        BTC     DS:[ECX+EDX*4+00000100H],DI  
        LOCK BTC     SS:[BP+SI+1234H],BX
        LOCK BTC     DS:[BX+SI],EDI
        BTC     DS:[EBX+EBP*4+12345678H],EAX 
        BTC     FS:[BX+DI],BP 
        BTC     ES:[BP+SI],DX 
        BTC     GS:[SI],AX    
        BTC     DS:[BP+SI],DX 
        BTC     SS:[DI],SI    
        BTC     EDI,EBX  
        BTC     CS:[BP+SI],BP 
        LOCK BTC     SS:[BP+DI+1234H],CX
        BTC     word ptr SS:[ESP+EAX],0FFH
        BTC     AX,0FFH  
        LOCK BTC     DS:[DI+1234H],EDX  
        BTC     DS:[EDI+00001234H],ECX  
        BTC     SS:[BP+1234H],DI
        LOCK BTC     DS:[DI],DI
        BTC     CS:[SI],DI    
        BTC     SS:[BX+DI],BX 
        LOCK BTC     SS:[BP+1234H],SP   
        BTC     ES:[BP],BP    
        BTC     SS:[ESP+EBP+00001234H],ECX
        LOCK BTC     DS:[BX+DI],EAX
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX
        BTC     SS:[DI],AX    
        BTC     SS:[BX+DI],BP 
        BTC     DS:[EBX+ECX*2+01H],EAX  
        BTC     BP,CX
        BTC     DS:[EDX],EAX  
        LOCK BTC     dword ptr SS:[EBP+EBX*4+12345678H],9AH
        BTC     FS:[BP],AX    
        LOCK BTC     DS:[ESI*4+00004321H],AX
        BTC     SP,DX
        BTC     CS:[BP+SI],CX 
        BTC     EDX,EBX  
        LOCK BTC     SS:[BP+DI+1234H],ESI 
        BTC     SS:[BP+SI],SP 
        BTC     BX,DI
        BTC     GS:[BX+SI],BP 
        BTC     FS:[SI],DX    
        BTC     SS:[EBP+EBP+10203040H],ESP
        BTC     DS:[ECX+EDX*4+00000100H],EDX 
        BTC     CS:[SI],AX    
        BTC     DS:[BX+SI+1234H],SP
        BTC     SS:[EBP*4+00000100H],EBP
        BTC     DS:[BX+SI],DI 
        BTC     FS:[DI],CX    
        BTC     GS:[SI],BX    
        BTC     CS:[ESI],EBX  
        BTC     BP,SP
        BTC     GS:[BX+DI],SP 
        BTC     FS:[BX+DI],SP 
        BTC     SS:[ESP+EBP],ECX
        BTC     ES:[BX+SI],BP 
        BTC     DS:[EBX],EDX  
        BTC     DS:[BX+SI+1234H],BP
        BTC     DS:[DI+1234H],SI
        BTC     FS:[DI],SP    
        BTC     ES:[BP+SI],CX 
        BTC     DS:[EBX+ECX*2+01H],EBX  
        LOCK BTC     DS:[DI+1234H],EAX  
        BTC     word ptr DS:[BX+SI],0A0H
        BTC     SS:[BP+DI],AX 
        BTC     ESI,ECX  
        LOCK BTC     SS:[BP],BX
        BTC     EDI,EBP  
        BTC     CX,BX
        BTC     CS:[BP+DI],DX 
        BTC     AX,DX
        BTC     BX,DX
        LOCK BTC     DS:[SI+1234H],SI   
        BTC     FS:[SI],SI    
        BTC     SS:[ESP+EBP],ESI
        BTC     ESP,0FFH 
        LOCK BTC     DS:[BX+DI],BP 
        BTC     DS:[ECX+EDX*4+00000100H],SP  
        LOCK BTC     DS:[DI+1234H],BP   
        LOCK BTC     DS:[DI+1234H],CX   
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI 
        BTC     SS:[EBP+EBP],CX
        LOCK BTC     SS:[BP+SI],EBX
        BTC     SI,AX
        BTC     CS:[BX+DI],AX 
        BTC     ESI,01H  
        BTC     DS:[ECX+EDX*4+00000100H],DX  
        BTC     ES:[BP],AX    
        LOCK BTC     SS:[BP+SI],ESP
        LOCK BTC     SS:[BP+SI],SI 
        BTC     BX,0FFH  
        BTC     word ptr DS:[DI],0A0H   
        BTC     SS:[DI],CX    
        BTC     DS:[BP+DI],CX 
        BTC     DS:[EDX+EBX*8],BX  
        LOCK BTC     SS:[BP+SI+1234H],SP
        BTC     CS:[BX+DI],SP 
        BTC     DX,DI
        BTC     ES:[DI],SI    
        BTC     ES:[BX+DI],BP 
        LOCK BTC     DS:[DI],EBP
        BTC     SS:[ESP+EBP],SP
        BTC     SS:[BP+SI+1234H],AX
        BTC     FS:[BP+DI],AX 
        BTC     DS:[EBX+ECX*2+01H],CX   
        BTC     dword ptr SS:[12345678H],10H 
        BTC     DS:[EBX+EBP*4+12345678H],DI  
        LOCK BTC     DS:[SI+1234H],EDX  
        LOCK BTC     DS:[SI],ECX
        BTC     EDX,ESI  
        BTC     FS:[BP],BX    
        BTC     GS:[SI],SP    
        BTC     DS:[BX+SI],BP 
        BTC     ES:[SI],SP    
        BTC     DS:[BX+DI],DI 
        BTC     GS:[DI],SP    
        BTC     GS:[BX+DI],CX 
        LOCK BTC     DS:[ESI+00004321H],AX
        BTC     DS:[1234H],AX 
        BTC     SS:[EBP+EBP+10203040H],BX 
        BTC     SS:[EBP+EBP],SI
        BTC     BP,AX
        LOCK BTC     DS:[SI+1234H],ESI  
        BTC     DX,SI
        BTC     FS:[SI],DI    
        BTC     DS:[BX+SI],AX 
        LOCK BTC     DS:[BX+SI],EBP
        BTC     DS:[BX+DI],AX 
        LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
        LOCK BTC     DS:[SI+1234H],EDI  
        BTC     dword ptr DS:[BX+DI],0B0H 
        BTC     FS:[EBX],ESI  
        BTC     ECX,EBP  
        BTC     DS:[EDX+EBX*8],SP  
        BTC     CS:[ESP+ECX],EBX
        LOCK BTC     DS:[BX+SI+1234H],BX
        BTC     ES:[BX+SI],DI 
        BTC     DS:[EAX+00001234H],ECX  
        BTC     ES:[BX+SI],SP 
        LOCK BTC     DS:[BX+SI],BP 
        BTC     SS:[DI],BP    
        LOCK BTC     DS:[EAX+EBP*8+87654321H],AX 
        BTC     DS:[EAX+EAX*2+00000100H],AX  
        BTC     CS:[BX+SI],DX 
        BTC     EAX,01H  
        BTC     DS:[SI],CX    
        BTC     SS:[EBP+EBP+10203040H],EAX
        BTC     SS:[BP+SI],AX 
        LOCK BTC     SS:[BP+DI+1234H],AX
        BTC     ESP,EDI  
        BTC     CS:[DI],AX    
        BTC     SS:[BP],SI    
        BTC     ES:[EDI],ESP  
        LOCK BTC     SS:[BP+SI+1234H],ESP 
        BTC     DS:[ESP+EDX],EDX
        BTC     dword ptr SS:[EAX+EBP*8],0FFH
        BTC     FS:[EDI],ESI  
        BTC     DS:[EDX+EBX*8],EAX 
        BTC     GS:[BP+SI],CX 
        LOCK BTC     DS:[BX+DI],EDX
        BTC     DS:[BP],DI    
        LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H 
        BTC     word ptr SS:[EBP],0FFH  
        LOCK BTC     DS:[BX+SI+1234H],ESI 
        BTC     CS:[SI],DX    
        BTC     DS:[DI],AX    
        BTC     DS:[BP+SI],SP 
        LOCK BTC     SS:[BP+DI+1234H],DX
        LOCK BTC     DS:[BX+SI+1234H],BP
        BTC     SS:[BP],DX    
        BTC     SS:[BX+SI],DX 
        BTC     DS:[EBX+EBP*4+12345678H],EDI 
        BTC     GS:[BP+DI],SI 
        BTC     DS:[BX+SI],SP 
        BTC     SS:[BX+SI],DI 
        LOCK BTC     SS:[BP+SI],EAX
        BTC     BP,01H
        BTC     CS:[ECX],EBX  
        LOCK BTC     DS:[DI+1234H],EBX  
        BTC     CX,BP
        LOCK BTC     DS:[BX+SI+1234H],CX
        BTC     SS:[ECX],EBP  
        BTC     ES:[BP+DI],BX 
        LOCK BTC     SS:[BP+DI+1234H],BP
        LOCK BTC     SS:[BP+DI+1234H],ESP 
        BTC     dword ptr DS:[BX+SI],0B0H 
        BTC     CS:[BX+DI],BX 
        BTC     ES:[BP+SI],BP 
        BTC     GS:[BP],SI    
        BTC     DS:[BP+SI],CX 
        BTC     EAX,EBP  
        BTC     DS:[BX+DI],DX 
        BTC     CS:[BP+DI],BP 
        BTC     SS:[ESP+EAX],EAX
        BTC     ES:[BP],CX    
        BTC     DS:[EDI],EAX  
        LOCK BTC     DS:[BX+SI],EAX
        BTC     SS:[ESP+EBP],ESP
        LOCK BTC     DS:[BX+SI],DI 
        BTC     DS:[EBX+ECX*2+01H],SP   
        BTC     ES:[ESP],ESP  
        BTC     SI,DI
        BTC     ES:[BP],SI    
        BTC     ES:[BP],DX    
        BTC     GS:[BX+DI],BX 
        LOCK BTC     DS:[SI],EDI
        BTC     EBX,EBP  
        LOCK BTC     SS:[BP+DI],ESI
        BTC     EAX,EDX  
        BTC     FS:[SI],SP    
        LOCK BTC     SS:[BP+1234H],EBX  
        BTC     word ptr SS:[BP+DI],0A0H
        BTC     SS:[EBP+EBP],EBX
        BTC     dword ptr SS:[EBP+EAX*8],0FFH
        BTC     ESI,EDX  
        BTC     ES:[EBP],ESP  
        BTC     ES:[DI],AX    
        LOCK BTC     DS:[SI+1234H],ESP  
        BTC     SS:[BP+DI+1234H],AX
        BTC     dword ptr SS:[BP+DI],0B0H 
        BTC     FS:[BX+DI],CX 
        BTC     CS:[BP],BP    
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP 
        BTC     ES:[BP+SI],BX 
        BTC     SS:[BP+1234H],AX
        LOCK BTC     SS:[BP+SI+1234H],EAX 
        BTC     FS:[BP],DX    
        LOCK BTC     SS:[BP+SI],DI 
        BTC     DS:[EAX+EAX*2+00000100H],ECX 
        BTC     GS:[DI],DI    
        LOCK BTC     SS:[BP+1234H],AX   
        BTC     SS:[BP+1234H],BP
        BTC     SS:[SI],CX    
        BTC     CX,01H
        BTC     SS:[BP],CX    
        BTC     DS:[ECX+EDX*4+00000100H],BX  
        BTC     DS:[EBX+ECX*2+01H],SI   
        BTC     DS:[EDX+EBX*8],SI  
        BTC     SS:[BP+1234H],BX
        LOCK BTC     DS:[BX+SI+1234H],EDX 
        BTC     DS:[ECX+EDX*4+00000100H],EBP 
        LOCK BTC     DS:[SI],EBX
        BTC     DS:[EBX+EBP*4+12345678H],DX  
        BTC     SS:[BP+SI],BP 
        LOCK BTC     DS:[SI+1234H],CX   
        BTC     DS:[EAX+EAX*2+00000100H],SI  
        BTC     FS:[BP+DI],BX 
        BTC     EAX,EAX  
        LOCK BTC     SS:[BP+SI+1234H],CX
        LOCK BTC     DS:[BX+DI+1234H],DX
        BTC     FS:[BP+DI],SI 
        BTC     ES:[SI],CX    
        BTC     DS:[DI],BX    
        BTC     GS:[DI],BX    
        BTC     SS:[EBP+EBP],ECX
        BTC     FS:[BX+DI],AX 
        BTC     DX,DX
        BTC     SS:[BP+SI+1234H],BX
        BTC     DS:[SI+1234H],SP
        LOCK BTC     DS:[SI+1234H],EAX  
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP 
        BTC     CS:[BP+DI],AX 
        BTC     SP,SI
        BTC     SS:[BP+DI],SI 
        BTC     DS:[EBX+ECX*2+01H],BP   
        BTC     SS:[ESP+EBP],EDI
        BTC     DS:[EAX+EAX*2+00000100H],EBP 
        LOCK BTC     DS:[DI],ECX
        BTC     DS:[EDX+EBX*8],ECX 
        BTC     DS:[EBX+ECX*2+01H],ESP  
        LOCK BTC     SS:[BP+1234H],CX   
        BTC     ES:[DI],BP    
        BTC     DS:[ESI],EDX  
        LOCK BTC     SS:[BP+SI+1234H],EBP 
        LOCK BTC     DS:[DI+1234H],BX   
        BTC     CS:[BX+SI],SP 
        BTC     FS:[DI],BP    
        BTC     ES:[BX+DI],SI 
        BTC     EDI,ECX  
        LOCK BTC     DS:[DI],EDI
        BTC     GS:[ECX],EDI  
        BTC     DS:[BP],DX    
        BTC     EBP,0FFH 
        BTC     SS:[BP+DI+1234H],BP
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESI
        BTC     CS:[BP+DI],DI 
        BTC     AX,CX
        LOCK BTC     DS:[BX+DI+1234H],EDX 
        LOCK BTC     SS:[BP+SI],BP 
        BTC     ES:[BX+SI],BX 
        BTC     EDX,ECX  
        BTC     DS:[DI+1234H],DI
        BTC     SS:[BP+1234H],SP
        BTC     DS:[EAX+EAX*2+00000100H],EDI 
        BTC     ESP,EDX  
        LOCK BTC     DS:[SI+1234H],AX   
        BTC     DS:[ECX],EAX  
        BTC     DS:[EAX+EAX*2+00000100H],ESP 
        BTC     CS:[DI],BP    
        BTC     SS:[EBP+EBP+10203040H],AX 
        BTC     FS:[BX+SI],AX 
        BTC     EAX,ECX  
        BTC     DI,AX
        BTC     DS:[EDX+EBX*8],EDI 
        BTC     SS:[BX+DI],DI 
        BTC     FS:[EAX],ESI  
        LOCK BTC     SS:[BP+SI],EDI
        LOCK BTC     SS:[BP+DI],BP 
        BTC     ESI,EBP  
        BTC     ES:[BP+DI],DI 
        BTC     FS:[DI],DI    
        BTC     ES:[1234H],AX 
        BTC     SS:[DI],DX    
        BTC     DS:[12345678H],AX  
        BTC     ES:[DI],SP    
        LOCK BTC     SS:[BP+SI+1234H],EDI 
        BTC     CS:[BP+SI],BX 
        LOCK BTC     SS:[BP+SI],DX 
        LOCK BTC     SS:[BP+SI],EBP
        BTC     DS:[BP+SI],DI 
        BTC     DS:[BP+DI],SP 
        BTC     SI,BP
        BTC     EDX,ESP  
        BTC     DS:[EBX+ECX*2+01H],AX   
        BTC     BX,BX
        BTC     SS:[EBP+EBP+10203040H],ECX
        BTC     GS:[BP],BP    
        BTC     SS:[ESP+EBP],CX
        BTC     FS:[BX+SI],BP 
        LOCK BTC     DS:[SI],SP
        BTC     DS:[DI+1234H],CX
        BTC     DS:[DI],DX    
        LOCK BTC     DS:[EAX+EAX*8+00004321H],AX  
        BTC     DS:[DI],SP    
        BTC     DS:[DI+1234H],AX
        BTC     word ptr CS:[EBX+EBP+0FFEEDDCCH],0A0H 
        BTC     EDX,EBP  
        BTC     SS:[BP+SI],BX 
        BTC     CS:[BX+SI],SI 
        BTC     GS:[BP+DI],SP 
        BTC     ES:[BP+DI],CX 
        BTC     DS:[EBX+EBP*4+12345678H],EBP 
        BTC     DS:[EAX+EAX*2+00000100H],DI  
        LOCK BTC     DS:[SI+1234H],EBX  
        LOCK BTC     DS:[BX+DI+1234H],ESI 
        BTC     SS:[BP+SI],DI 
        BTC     CS:[BP+SI],AX 
        BTC     FS:[BP],SI    
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI 
        BTC     BP,DX
        BTC     DX,0FFH  
        BTC     ES:[BX+DI],AX 
        BTC     SS:[EDI],EBP  
        BTC     DS:[BX+DI+1234H],BP
        BTC     SS:[BP+SI+1234H],DI
        BTC     DS:[BX+DI+1234H],SI
        BTC     AX,01H
        BTC     CX,0FFH  
        BTC     DS:[EAX+EAX*2+00000100H],ESI 
        BTC     DI,01H
        BTC     SP,0FFH  
        BTC     ESI,ESP  
        LOCK BTC     DS:[BX+SI],DX 
        BTC     ES:[BX+DI],DX 
        BTC     DS:[EBX+EBP*4+12345678H],BX  
        LOCK BTC     word ptr SS:[EAX+EBP*8+87654321H],0FFH
        BTC     SS:[EBP+EBP+10203040H],DX 
        BTC     CS:[12345678H],AX  
        BTC     CS:[BX+SI],BP 
        BTC     SS:[EBP+EBP+10203040H],ESI
        BTC     SS:[BP+DI+1234H],SP
        BTC     GS:[BX+DI],SI 
        BTC     SS:[DI],BX    
        LOCK BTC     SS:[BP],EDX
        BTC     ES:[EAX],ESP  
        BTC     EBP,ESI  
        BTC     DS:[BX+SI+1234H],BX
        BTC     DS:[EAX+EAX*2+00000100H],BP  
        LOCK BTC     SS:[BP],SI
        BTC     GS:[SI],DX    
        LOCK BTC     DS:[BX+SI],EBX
        BTC     DS:[ESI],EAX  
        BTC     GS:[BP+SI],DI 
        BTC     CX,DI
        LOCK BTC     SS:[BP+SI],CX 
        BTC     DS:[EDX+EBX*8],EBP 
        BTC     SS:[BP+DI+1234H],BX
        LOCK BTC     SS:[BP+SI],SP 
        BTC     FS:[DI],DX    
        BTC     DX,BX
        BTC     FS:[BP+SI],BP 
        BTC     DS:[EDX+EBX*8],DX  
        LOCK BTC     DS:[BX+DI],SI 
        BTC     ES:[BX+SI],AX 
        LOCK BTC     SS:[BP+SI],ECX
        BTC     DI,DX
        BTC     GS:[SI],CX    
        BTC     DS:[ECX+EDX*4+00000100H],ESI 
        BTC     ES:[1234H],AX 
        BTC     EDI,EDX  
        LOCK BTC     DS:[SI],EDX
        LOCK BTC     SS:[BP+DI],EDX
        BTC     SS:[EBP+EBP],ESI
        BTC     DI,CX
        LOCK BTC     DS:[BX+DI],EBP
        LOCK BTC     DS:[EAX+EAX+00004321H],AX    
        BTC     EDI,0FFH 
        BTC     CS:[BX+DI],BP 
        BTC     ES:[BP+SI],DI 
        BTC     CS:[SI],BX    
        BTC     DS:[ECX+EDX*4+00000100H],EAX 
        BTC     DS:[BP],BP    
        BTC     CS:[EDX],EBX  
        BTC     DS:[SI],BP    
        LOCK BTC     SS:[BP+DI],CX 
        LOCK BTC     DS:[SI],EAX
        BTC     AX,BP
        BTC     ES:[BX+DI],DI 
        BTC     SI,CX
        LOCK BTC     SS:[BP+SI+1234H],EDX 
        BTC     ES:[SI],BX    
        BTC     FS:[BP+DI],SP 
        BTC     DS:[BX+DI],CX 
        BTC     ECX,ESI  
        BTC     SS:[EBP+EBP],EAX
        BTC     CX,SP
        LOCK BTC     DS:[EAX+EAX*2+00004321H],AX  
        BTC     SS:[EBP*4+00000001H],EBP
        BTC     GS:[SI],DI    
        BTC     ECX,EBX  
        BTC     SS:[BP+SI+1234H],SI
        BTC     DS:[EAX+EAX*2+00000100H],DX  
        BTC     DS:[BX+SI],SI 
        BTC     CS:[BP],BX    
        BTC     ES:[BP+DI],BP 
        BTC     ES:[BX+DI],SP 
        BTC     DS:[BP+DI],DX 
        BTC     GS:[DI],BP    
        BTC     word ptr SS:[EAX+EBP],0FFH
        BTC     SS:[EBX],EBP  
        BTC     ECX,EAX  
        BTC     FS:[BX+SI],DX 
        LOCK BTC     SS:[BP+SI],EDX
        BTC     SS:[ESP+EBP],DX
        BTC     FS:[BP+DI],BP 
        BTC     ESP,EBX  
        BTC     DS:[ECX+EDX*4+00000100H],BP  
        BTC     GS:[DI],AX    
        BTC     DS:[BP],AX    
        LOCK BTC     DS:[BX+DI+1234H],CX
        BTC     ECX,EDX  
        BTC     CS:[BP+SI],DX 
        BTC     ES:[SI],DX    
        BTC     EAX,ESI  
        BTC     DS:[EDX+EBX*8],ESP 
        LOCK BTC     DS:[BX+DI],SP 
        LOCK BTC     DS:[BX+DI+1234H],AX
        BTC     DS:[EBX*4],AX 
        BTC     CS:[BX+SI],AX 
        BTC     BX,BP
        BTC     EDX,01H  
        BTC     ES:[BP+DI],AX 
        BTC     SS:[EBP+EBP+10203040H],EDX
        BTC     GS:[BX+SI],CX 
        BTC     DX,CX
        LOCK BTC     DS:[BX+SI],ESP
        BTC     BX,01H
        BTC     ESI,EDI  
        LOCK BTC     DS:[BX+SI],SI 
        LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH  
        BTC     DS:[ECX+00001234H],ECX  
        BTC     SS:[EBP+EBP],EDI
        BTC     SS:[BP],BX    
        BTC     dword ptr SS:[ESP+EAX*8],0FFH
        LOCK BTC     DS:[BX+DI+1234H],DI
        LOCK BTC     DS:[BX+SI+1234H],EBP 
        BTC     FS:[BX+SI],CX 
        LOCK BTC     DS:[BX+DI+1234H],ECX 
        BTC     SI,DX
        BTC     SS:[BP+DI],AX 
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP
        BTC     ESP,EAX  
        BTC     SS:[EBP],EBP  
        BTC     GS:[SI],BP    
        LOCK BTC     SS:[BP+1234H],BP   
        BTC     SS:[BP+SI+1234H],BP
        LOCK BTC     DS:[BX+DI],EDI
        LOCK BTC     SS:[BP+DI+1234H],EDX 
        LOCK BTC     DS:[BX+DI+1234H],EBP 
        BTC     CS:[BP],SI    
        LOCK BTC     SS:[BP+SI+1234H],SI
        BTC     EBX,01H  
        BTC     AX,DI
        BTC     DS:[SI],AX    
        BTC     DS:[DI],BP    
        BTC     SS:[BP+DI],DX 
        BTC     EBX,EAX  
        BTC     SS:[DI],DI    
        LOCK BTC     SS:[BP+1234H],BX   
        BTC     EBP,EDX  
        BTC     DI,DI
        LOCK BTC     DS:[DI],SP
        BTC     SS:[BP],AX    
        BTC     SS:[EBP+EBP+10203040H],SP 
        BTC     DI,SI
        LOCK BTC     DS:[BX+SI],ESI
        BTC     EBX,EDX  
        BTC     ESI,EBX  
        BTC     ES:[BP+DI],DX 
        BTC     ES:[DI],DI    
        LOCK BTC     SS:[BP+DI+1234H],EAX 
        BTC     CS:[BP],DI    
        BTC     DS:[BX+DI],BP 
        LOCK BTC     DS:[DI],ESP
        LOCK BTC     DS:[BX+SI+1234H],SP
        BTC     FS:[BP],DI    
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP
        LOCK BTC     DS:[DI],BX
        LOCK BTC     SS:[BP+SI],BX 
        LOCK BTC     DS:[SI+1234H],BX   
        BTC     DS:[EBX+ECX*2+01H],EDI  
        BTC     EBP,ESP  
        LOCK BTC     DS:[SI],EBP
        BTC     DS:[EBX+EBP*4+12345678H],EDX 
        BTC     EDX,0FFH 
        LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX
        BTC     CS:[DI],BX    
        BTC     SS:[SI],BX    
        BTC     DS:[BX+SI+1234H],DI
        BTC     DS:[EDX+EBX*8],EBX 
        BTC     SS:[BP+SI+1234H],DX
        BTC     dword ptr ES:[0123H],01H
        BTC     FS:[DI],AX    
        BTC     DS:[EAX*4],EAX
        BTC     CS:[BP+SI],SI 
        BTC     DS:[EBP],EDX  
        LOCK BTC     DS:[SI+1234H],EBP  
        LOCK BTC     DS:[BX+DI],DI 
        BTC     DS:[DI],SI    
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX 
        BTC     DS:[BX+SI+1234H],DX
        LOCK BTC     DS:[EAX+EAX*2+00004321H],AX  
        BTC     CS:[BP],DX    
        BTC     EDI,EAX  
        BTC     EBP,01H  
        BTC     DS:[EAX],EAX  
        BTC     DS:[BX+SI+1234H],SI
        BTC     GS:[BX+SI],DX 
        BTC     GS:[BP],CX    
        BTC     SS:[BX+SI],CX 
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX 
        BTC     GS:[BX+DI],BP 
        BTC     CS:[BP+DI],BX 
        BTC     ES:[BP+DI],SI 
        BTC     EBX,ESI  
        BTC     FS:[BP+DI],DI 
        BTC     SS:[EBP+EBP+10203040H],CX 
        LOCK BTC     DS:[BX+SI],BX 
        BTC     DS:[ECX+EDX*4+00000100H],EBX 
        BTC     ES:[BP+SI],AX 
        BTC     DS:[BP+DI],AX 
        BTC     GS:[BP],DX    
        LOCK BTC     DS:[BX+DI],ECX
        LOCK BTC     SS:[BP+1234H],ESI  
        BTC     EBX,ESP  
        BTC     GS:[BP+DI],CX 
        BTC     EAX,EBX  
        BTC     SS:[BX+DI],SP 
        BTC     ES:[EDX],ESP  
        BTC     DS:[DI],CX    
        LOCK BTC     SS:[BP+SI+1234H],DX
        LOCK BTC     DS:[BX+DI+1234H],EDI 
        BTC     GS:[BX+SI],BX 
        BTC     EAX,ESP  
        BTC     EBP,EBX  
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX
        LOCK BTC     DS:[DI+1234H],ECX  
        BTC     DS:[BP],SP    
        LOCK BTC     DS:[SI+1234H],DX   
        BTC     SS:[ESP+EBP],EBP
        BTC     CS:[SI],SP    
        LOCK BTC     DS:[BX+DI+1234H],ESP 
        BTC     DS:[BX+DI+1234H],DI
        BTC     EDX,EDI  
        BTC     DS:[ECX+EDX*4+00000100H],SI  
        BTC     FS:[BP+DI],CX 
        BTC     GS:[BP],BX    
        LOCK BTC     SS:[BP+1234H],DI   
        BTC     SS:[EBP+EBP],SP
        BTC     GS:[BP+SI],SP 
        BTC     GS:[BP+SI],BP 
        BTC     EDI,ESP  
        BTC     FS:[BP+SI],DI 
        BTC     SP,SP
        BTC     DS:[EBX+EBP*4+12345678H],AX  
        BTC     ES:[SI],SI    
        BTC     DS:[EBX+EBP*4+12345678H],SP  
        BTC     SS:[ESP+EBP],EAX
        LOCK BTC     DS:[DI],SI
        BTC     FS:[BP+SI],AX 
        BTC     DS:[ESI+00001234H],ECX  
        BTC     SS:[SI],DX    
        BTC     ES:[BX+SI],DX 
        LOCK BTC     DS:[EAX+EAX*8+00004321H],AX  
        LOCK BTC     DS:[BX+DI],DX 
        LOCK BTC     SS:[BP+SI+1234H],BP
        BTC     SS:[EBP+EBP],AX
        BTC     dword ptr SS:[BP+SI],0B0H 
        BTC     ES:[ECX],ESP  
        BTC     ES:[BP+DI],SP 
        BTC     SP,CX
        LOCK BTC     DS:[DI+1234H],EDI  
        BTC     DS:[BX+DI],BX 
        BTC     SS:[BP+SI+1234H],CX
        BTC     ES:[BP],BX    
        BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX 
        BTC     EBX,EBX  
        BTC     CS:[BP+DI],CX 
        BTC     GS:[BP+DI],BP 
        BTC     CS:[BX+DI],DI 
        BTC     DS:[BP+SI],AX 
        BTC     SS:[EBP+00001234H],ECX  
        BTC     DS:[SI],DI    
        BTC     AX,SP
        LOCK BTC     DS:[DI+1234H],AX   
        LOCK BTC     SS:[BP+SI+1234H],EBX 
        LOCK BTC     SS:[BP+SI+1234H],ECX 
        BTC     ES:[BX+DI],BX 
        LOCK BTC     DS:[DI+1234H],ESI  
        LOCK BTC     SS:[BP],ESI
        BTC     word ptr SS:[ESP+EBP],0FFH
        LOCK BTC     DS:[BX+SI],ECX
        BTC     DS:[SI+1234H],SI
        LOCK BTC     SS:[BP+SI+1234H],ESI 
        BTC     DS:[BX+SI+1234H],AX
        BTC     FS:[BP],SP    
        BTC     dword ptr DS:[DI],0B0H  
        LOCK BTC     DS:[DI+1234H],SP   
        BTC     SS:[BP+SI],SI 
        BTC     SI,01H
        BTC     ES:[DI],CX    
        BTC     DS:[EDX+EBX*8],DI  
        BTC     EBX,EDI  
        BTC     ECX,ECX  
        BTC     GS:[BP+SI],AX 
        BTC     BX,CX
        BTC     CS:[SI],CX    
        BTC     DS:[SI],SP    
        BTC     DS:[SI],AX    
        BTC     ESP,ECX  
        BTC     SS:[EBP+EBP],DI
        LOCK BTC     DS:[BX+SI],EDX
        BTC     BX,SP
        BTC     SS:[EBP+EBP],BX
        BTC     GS:[EBP],EDI  
        BTC     FS:[BP+SI],SI 
        LOCK BTC     SS:[BP],EBP
        BTC     SS:[EBP+EBP+10203040H],EBP
        LOCK BTC     DS:[BX+SI+1234H],ECX 
        BTC     GS:[ESI],EDI  
        BTC     DS:[EBX+ECX*2+01H],DX   
        BTC     FS:[BX+SI],DI 
        BTC     BX,AX
        BTC     SS:[BP+1234H],DX
        BTC     FS:[BX+SI],BX 
        LOCK BTC     DS:[EDI*2+87654321H],AX 
        BTC     GS:[BP+DI],BX 
        LOCK BTC     DS:[SI],ESI
        LOCK BTC     DS:[BX+SI+1234H],EBX 
        BTC     ES:[EBX],ESP  
        BTC     ES:[BX+SI],CX 
        BTC     DS:[EAX+EAX*2+00000100H],EDX 
        BTC     DS:[BP+SI],BP 
        BTC     DS:[EDX+EBX*8],BP  
        BTC     ES:[SI],BP    
        BTC     DS:[DI+1234H],SP
        LOCK BTC     DS:[BX+DI+1234H],EAX 
        BTC     GS:[DI],SI    
        BTC     SS:[BX+SI],BP 
        LOCK BTC     DS:[BX+DI+1234H],BP
        BTC     GS:[DI],DX    
        BTC     ES:[DI],BX    
        BTC     SS:[ESP+EBP],AX
        LOCK BTC     SS:[BP],BP
        BTC     ES:[SI],DI    
        BTC     FS:[BP+SI],SP 
        LOCK BTC     SS:[BP+DI],DI 
        BTC     DX,SP
        BTC     GS:[BX+SI],AX 
        BTC     CS:[DI],SI    
        BTC     CS:[BX+SI],BX 
        BTC     DS:[ECX+EDX*4+00000100H],CX  
        BTC     ECX,01H  
        LOCK BTC     SS:[BP+1234H],SI   
        BTC     DS:[EAX+EAX*2+00000100H],EAX 
        BTC     DS:[SI],BX    
        BTC     SS:[BP+SI+1234H],SP
        LOCK BTC     SS:[EBX+EBP*8+00004321H],AX  
        LOCK BTC     SS:[BP+DI+1234H],DI
        LOCK BTC     DS:[BX+SI+1234H],AX
        BTC     ECX,0FFH 
        LOCK BTC     DS:[SI],DX
        BTC     FS:[BX+DI],DI 
        BTC     ESP,ESI  
        BTC     DS:[DI],AX    
        LOCK BTC     SS:[BP],EAX
        BTC     SS:[BX+DI],CX 
        BTC     DS:[ECX+EDX*4+00000100H],AX  
        BTC     SS:[EBP+EBP],ESP
        BTC     EDI,01H  
        BTC     dword ptr ES:[0123H],01H
        LOCK BTC     SS:[BP],ESP
        LOCK BTC     DS:[SI+1234H],ECX  
        LOCK BTC     DS:[SI+1234H],SP   
        LOCK BTC     SS:[BP+1234H],ESP  
        BTC     SS:[EBP+EBP+10203040H],EDI
        BTC     DS:[EBX+ECX*2+01H],ECX  
        BTC     GS:[BP+DI],DI 
        BTC     BP,BX
        BTC     EBX,0FFH 
        LOCK BTC     DS:[EAX+EAX+00004321H],AX    
        BTC     dword ptr SS:[BP],0B0H  
        BTC     word ptr SS:[BP],0A0H   
        BTC     EDX,EDX  
        BTC     DS:[EBX+EBP*4+12345678H],ESP 
        BTC     DS:[EDX+EBX*8],CX  
        BTC     FS:[BP],BP    
        BTC     DS:[BX+DI],SI 
        BTC     CS:[BP+SI],SP 
        BTC     AX,AX
        LOCK BTC     DS:[BX+DI+1234H],EBX 
        BTC     DS:[EBX+ECX*2+01H],EBP  
        BTC     DS:[EBX+EBP*4+12345678H],BP  
        BTC     SS:[EBP+EBP+10203040H],BP 
        BTC     CX,DX
        BTC     SS:[12345678H],AX  
        LOCK BTC     SS:[BP+SI],ESI
        BTC     FS:[BP+SI],BX 
        LOCK BTC     SS:[BP+DI+1234H],EBX 
        BTC     SS:[EBP+EBP],DX
        LOCK BTC     SS:[BP+DI+1234H],EDI 
        LOCK BTC     SS:[BP],CX
        LOCK BTC     DS:[SI],BX
        LOCK BTC     DS:[SI],SI
        LOCK BTC     DS:[DI],EAX
        BTC     DS:[EAX+EAX*2+00000100H],BX  
        BTC     ESP,01H  
        LOCK BTC     SS:[BP+DI],BX 
        BTC     SS:[BP],BP    
        BTC     DS:[ECX],EDX  
        BTC     DS:[BX+SI],BX 
        BTC     DS:[BX+DI+1234H],BX
        BTC     SS:[BP+DI+1234H],SI
        BTC     CX,AX
        BTC     FS:[EBP],ESI  
        BTC     word ptr DS:[SI],0A0H   
        BTC     DS:[BX+SI],AX 
        LOCK BTC     DS:[BX+DI+1234H],SI
        BTC     SS:[ESI],EBP  
        BTC     FS:[BP+SI],CX 
        BTC     BP,0FFH
        BTC     SS:[EBP+EBP+10203040H],EBX
        BTC     DS:[EDX+EBX*8],EDX 
        BTC     CX,SI
        BTC     GS:[BP+DI],DX 
        BTC     DS:[BP],SI    
        BTC     SI,SP
        BTC     ECX,EDI  
        BTC     DS:[EBX+EBP*4+12345678H],CX  
        BTC     AX,BX
        BTC     SP,AX
        BTC     DS:[BX+DI+1234H],SP
        LOCK BTC     SS:[BP],DX
        LOCK BTC     SS:[BP+DI],SI 
        LOCK BTC     SS:[BP+DI],ECX
        LOCK BTC     DS:[SI+1234H],DI   
        BTC     GS:[BX+DI],DI 
        BTC     SS:[BX+SI],SI 
        BTC     GS:[BP+SI],BX 
        BTC     SI,0FFH  
        BTC     ESI,EAX  
        BTC     SS:[BP+SI],DX 
        BTC     CS:[BX+DI],DX 
        LOCK BTC     DS:[BX+SI],SP 
        BTC     DS:[BX+DI],AX 
END start