    mask_prefix             =  MASK prefix  ; 1000 0000b
    mask_sib                =  MASK sib     ; 0100 0000b
    mask_modrm              =  MASK modrm   ; 0010 0000b
    mask_ext                =  MASK ext     ; 0001 0000b   
    mask_size               =  MASK size66  ; 0000 1000b
    mask_addr               =  MASK addr67  ; 0000 0100b
    mask_segovr             =  1 
    mask_regular            =  0FDh 
    mask_aad                =  0FEh
    mask_unknown            =  0FFh


    .MODEL TINY
    .486
    .CODE 
        ORG 100H        
    START:
        BTC     [EAX*4], EAX
        BTC     [EBX*4], AX
        BTC     [EBP*4], AX
        BTC     [EBP*4+01H], EBP
        BTC     [EBP*4+100H], EBP
        BTC     word ptr [EAX+EBP], 0FFH
        BTC     dword ptr [EAX+EBP*8], 0FFH
        BTC     word ptr [EBP+EAX], 0FFH
        BTC     dword ptr [EBP+EAX*8], 0FFH
        BTC     word ptr [ESP+EAX], 0FFH
        BTC     dword ptr [ESP+EAX*8], 0FFH
        BTC     word ptr [ESP+EBP], 0FFH
        BTC     dword ptr [ESP+EBP*8], 0FFH
        BTC     word ptr [EBP], 0FFH
        BTC     dword ptr [ESP], 0FFH
        BTC     [BX+SI],AX
        BTC     [BX+DI],AX
        BTC     [BP+SI],AX
        BTC     [BP+DI],AX
        BTC     [BP],AX
        BTC     [SI],AX
        BTC     [DI],AX
        BTC     [BX + 0FEDCh], AX
        LOCK BTC     dword ptr [EAX+EBX*8+0A7654321H], 0FFH
        LOCK BTC     word ptr [EAX+EBP*8+87654321H],0FFH
        LOCK BTC     CS:[EAX+EBX*8+0B7654321H], EAX
        LOCK BTC     DS:[EAX+EBP*8+87654321H], AX
        BTC     word ptr ES:[1234H], AX
        BTC     word ptr SS:[12345678H], AX
        BTC     dword ptr FS:[123H], 01H
        BTC     dword ptr GS:[12345678H], 10H
        BTC     DS:[1234H],AX
        BTC     DS:[12345678H],AX
        BTC     dword ptr ES:[0123H],01H
        BTC     dword ptr SS:[12345678H],10H
        BTC     ES:[1234H],AX
        BTC     CS:[12345678H],AX
        BTC     dword ptr ES:[0123H],01H
        BTC     dword ptr SS:[12345678H],10H
        BTC     word ptr [BX+SI],0A0H
        BTC     dword ptr [BX+SI],0B0H
        BTC     word ptr [BX+DI],0A0H
        BTC     dword ptr [BX+DI],0B0H
        BTC     word ptr [BP+SI],0A0H
        BTC     dword ptr [BP+SI],0B0H
        BTC     word ptr [BP+DI],0A0H
        BTC     dword ptr [BP+DI],0B0H
        BTC     word ptr [BP],0A0H
        BTC     dword ptr [BP],0B0H
        BTC     word ptr [DI],0A0H
        BTC     dword ptr [DI],0B0H
        BTC     word ptr [SI],0A0H
        BTC     dword ptr [SI],0B0H
        BTC     [EAX+EAX*2+00000100H],AX
        BTC     DS:[EBX+EBP*4+12345678H],AX
        BTC     [EBP+EBP],AX
        BTC     [ESP+EBP],AX
        BTC     [EDX+EBX*8],AX
        BTC     [EBX+ECX*2+01H],AX
        BTC     [ECX+EDX*4+00000100H],AX
        BTC     [EAX+EAX*8+0A0B0C0D0H],AX
        BTC     [EBP+EBP+10203040H],AX
        LOCK BTC     [BX+SI+1234H],AX
        LOCK BTC     [BX+DI+1234H],AX
        LOCK BTC     [BP+SI+1234H],AX
        LOCK BTC     [BP+DI+1234H],AX
        LOCK BTC     [BP+1234H],AX
        LOCK BTC     [SI+1234H],AX
        LOCK BTC     [DI+1234H],AX
        BTC     [EAX+EAX*2+00000100H],CX
        BTC     DS:[EBX+EBP*4+12345678H],CX
        BTC     [EBP+EBP],CX
        BTC     [ESP+EBP],CX
        BTC     [EDX+EBX*8],CX
        BTC     [EBX+ECX*2+01H],CX
        BTC     [ECX+EDX*4+00000100H],CX
        BTC     [EAX+EAX*8+0A0B0C0D0H],CX
        BTC     [EBP+EBP+10203040H],CX
        LOCK BTC     [BX+SI],CX
        LOCK BTC     [BX+DI],CX
        LOCK BTC     [BP+SI],CX
        LOCK BTC     [BP+DI],CX
        LOCK BTC     [BP],CX
        LOCK BTC     [SI],CX
        LOCK BTC     [DI],CX
        LOCK BTC     [BX+SI+1234H],CX
        LOCK BTC     [BX+DI+1234H],CX
        LOCK BTC     [BP+SI+1234H],CX
        LOCK BTC     [BP+DI+1234H],CX
        LOCK BTC     [BP+1234H],CX
        LOCK BTC     [SI+1234H],CX
        LOCK BTC     [DI+1234H],CX
        BTC     [EAX+EAX*2+00000100H],DX
        BTC     DS:[EBX+EBP*4+12345678H],DX
        BTC     [EBP+EBP],DX
        BTC     [ESP+EBP],DX
        BTC     [EDX+EBX*8],DX
        BTC     [EBX+ECX*2+01H],DX
        BTC     [ECX+EDX*4+00000100H],DX
        BTC     [EAX+EAX*8+0A0B0C0D0H],DX
        BTC     [EBP+EBP+10203040H],DX
        LOCK BTC     [BX+SI],DX
        LOCK BTC     [BX+DI],DX
        LOCK BTC     [BP+SI],DX
        LOCK BTC     [BP+DI],DX
        LOCK BTC     [BP],DX
        LOCK BTC     [SI],DX
        LOCK BTC     [DI],DX
        LOCK BTC     [BX+SI+1234H],DX
        LOCK BTC     [BX+DI+1234H],DX
        LOCK BTC     [BP+SI+1234H],DX
        LOCK BTC     [BP+DI+1234H],DX
        LOCK BTC     [BP+1234H],DX
        LOCK BTC     [SI+1234H],DX
        LOCK BTC     [DI+1234H],DX
        BTC     [EAX+EAX*2+00000100H],BX
        BTC     DS:[EBX+EBP*4+12345678H],BX
        BTC     [EBP+EBP],BX
        BTC     [ESP+EBP],BX
        BTC     [EDX+EBX*8],BX
        BTC     [EBX+ECX*2+01H],BX
        BTC     [ECX+EDX*4+00000100H],BX
        BTC     [EAX+EAX*8+0A0B0C0D0H],BX
        BTC     [EBP+EBP+10203040H],BX
        LOCK BTC     [BX+SI],BX
        LOCK BTC     [BX+DI],BX
        LOCK BTC     [BP+SI],BX
        LOCK BTC     [BP+DI],BX
        LOCK BTC     [BP],BX
        LOCK BTC     [SI],BX
        LOCK BTC     [DI],BX
        LOCK BTC     [BX+SI+1234H],BX
        LOCK BTC     [BX+DI+1234H],BX
        LOCK BTC     [BP+SI+1234H],BX
        LOCK BTC     [BP+DI+1234H],BX
        LOCK BTC     [BP+1234H],BX
        LOCK BTC     [SI+1234H],BX
        LOCK BTC     [DI+1234H],BX
        BTC     [EAX+EAX*2+00000100H],SP
        BTC     DS:[EBX+EBP*4+12345678H],SP
        BTC     [EBP+EBP],SP
        BTC     [ESP+EBP],SP
        BTC     [EDX+EBX*8],SP
        BTC     [EBX+ECX*2+01H],SP
        BTC     [ECX+EDX*4+00000100H],SP
        BTC     [EAX+EAX*8+0A0B0C0D0H],SP
        BTC     [EBP+EBP+10203040H],SP
        LOCK BTC     [BX+SI],SP
        LOCK BTC     [BX+DI],SP
        LOCK BTC     [BP+SI],SP
        LOCK BTC     [BP+DI],SP
        LOCK BTC     [BP],SP
        LOCK BTC     [SI],SP
        LOCK BTC     [DI],SP
        LOCK BTC     [BX+SI+1234H],SP
        LOCK BTC     [BX+DI+1234H],SP
        LOCK BTC     [BP+SI+1234H],SP
        LOCK BTC     [BP+DI+1234H],SP
        LOCK BTC     [BP+1234H],SP
        LOCK BTC     [SI+1234H],SP
        LOCK BTC     [DI+1234H],SP
        BTC     [EAX+EAX*2+00000100H],BP
        BTC     DS:[EBX+EBP*4+12345678H],BP
        BTC     [EBP+EBP],BP
        BTC     [ESP+EBP],BP
        BTC     [EDX+EBX*8],BP
        BTC     [EBX+ECX*2+01H],BP
        BTC     [ECX+EDX*4+00000100H],BP
        BTC     [EAX+EAX*8+0A0B0C0D0H],BP
        BTC     [EBP+EBP+10203040H],BP
        LOCK BTC     [BX+SI],BP
        LOCK BTC     [BX+DI],BP
        LOCK BTC     [BP+SI],BP
        LOCK BTC     [BP+DI],BP
        LOCK BTC     [BP],BP
        LOCK BTC     [SI],BP
        LOCK BTC     [DI],BP
        LOCK BTC     [BX+SI+1234H],BP
        LOCK BTC     [BX+DI+1234H],BP
        LOCK BTC     [BP+SI+1234H],BP
        LOCK BTC     [BP+DI+1234H],BP
        LOCK BTC     [BP+1234H],BP
        LOCK BTC     [SI+1234H],BP
        LOCK BTC     [DI+1234H],BP
        BTC     [EAX+EAX*2+00000100H],SI
        BTC     DS:[EBX+EBP*4+12345678H],SI
        BTC     [EBP+EBP],SI
        BTC     [ESP+EBP],SI
        BTC     [EDX+EBX*8],SI
        BTC     [EBX+ECX*2+01H],SI
        BTC     [ECX+EDX*4+00000100H],SI
        BTC     [EAX+EAX*8+0A0B0C0D0H],SI
        BTC     [EBP+EBP+10203040H],SI
        LOCK BTC     [BX+SI],SI
        LOCK BTC     [BX+DI],SI
        LOCK BTC     [BP+SI],SI
        LOCK BTC     [BP+DI],SI
        LOCK BTC     [BP],SI
        LOCK BTC     [SI],SI
        LOCK BTC     [DI],SI
        LOCK BTC     [BX+SI+1234H],SI
        LOCK BTC     [BX+DI+1234H],SI
        LOCK BTC     [BP+SI+1234H],SI
        LOCK BTC     [BP+DI+1234H],SI
        LOCK BTC     [BP+1234H],SI
        LOCK BTC     [SI+1234H],SI
        LOCK BTC     [DI+1234H],SI
        BTC     [EAX+EAX*2+00000100H],DI
        BTC     DS:[EBX+EBP*4+12345678H],DI
        BTC     [EBP+EBP],DI
        BTC     [ESP+EBP],DI
        BTC     [EDX+EBX*8],DI
        BTC     [EBX+ECX*2+01H],DI
        BTC     [ECX+EDX*4+00000100H],DI
        BTC     [EAX+EAX*8+0A0B0C0D0H],DI
        BTC     [EBP+EBP+10203040H],DI
        LOCK BTC     [BX+SI],DI
        LOCK BTC     [BX+DI],DI
        LOCK BTC     [BP+SI],DI
        LOCK BTC     [BP+DI],DI
        LOCK BTC     [BP],DI
        LOCK BTC     [SI],DI
        LOCK BTC     [DI],DI
        LOCK BTC     [BX+SI+1234H],DI
        LOCK BTC     [BX+DI+1234H],DI
        LOCK BTC     [BP+SI+1234H],DI
        LOCK BTC     [BP+DI+1234H],DI
        LOCK BTC     [BP+1234H],DI
        LOCK BTC     [SI+1234H],DI
        LOCK BTC     [DI+1234H],DI
        BTC     EAX,EAX
        BTC     ECX,EAX
        BTC     EDX,EAX
        BTC     EBX,EAX
        BTC     ESP,EAX
        BTC     EBP,EAX
        BTC     ESI,EAX
        BTC     EDI,EAX
        BTC     [EAX],EAX
        BTC     [EAX+00001234H],ECX
        BTC     CS:[EAX],EBX
        BTC     [EAX],EDX
        BTC     ES:[EAX],ESP
        BTC     SS:[EAX],EBP
        BTC     FS:[EAX],ESI
        BTC     GS:[EAX],EDI
        BTC     [EAX+EAX*2+00000100H],EAX
        BTC     DS:[EBX+EBP*4+12345678H],EAX
        BTC     [EBP+EBP],EAX
        BTC     [ESP+EBP],EAX
        BTC     [EDX+EBX*8],EAX
        BTC     [EBX+ECX*2+01H],EAX
        BTC     [ECX+EDX*4+00000100H],EAX
        BTC     [EAX+EAX*8+0A0B0C0D0H],EAX
        BTC     [EBP+EBP+10203040H],EAX
        LOCK BTC     [BX+SI],EAX
        LOCK BTC     [BX+DI],EAX
        LOCK BTC     [BP+SI],EAX
        LOCK BTC     [BP+DI],EAX
        LOCK BTC     [BP],EAX
        LOCK BTC     [SI],EAX
        LOCK BTC     [DI],EAX
        LOCK BTC     [BX+SI+1234H],EAX
        LOCK BTC     [BX+DI+1234H],EAX
        LOCK BTC     [BP+SI+1234H],EAX
        LOCK BTC     [BP+DI+1234H],EAX
        LOCK BTC     [BP+1234H],EAX
        LOCK BTC     [SI+1234H],EAX
        LOCK BTC     [DI+1234H],EAX
        BTC     EAX,01H
        BTC     EAX,ECX
        BTC     ECX,ECX
        BTC     EDX,ECX
        BTC     EBX,ECX
        BTC     ESP,ECX
        BTC     EBP,ECX
        BTC     ESI,ECX
        BTC     EDI,ECX
        BTC     [ECX],EAX
        BTC     [ECX+00001234H],ECX
        BTC     CS:[ECX],EBX
        BTC     [ECX],EDX
        BTC     ES:[ECX],ESP
        BTC     SS:[ECX],EBP
        BTC     FS:[ECX],ESI
        BTC     GS:[ECX],EDI
        BTC     [EAX+EAX*2+00000100H],ECX
        BTC     DS:[EBX+EBP*4+12345678H],ECX
        BTC     [EBP+EBP],ECX
        BTC     [ESP+EBP],ECX
        BTC     [EDX+EBX*8],ECX
        BTC     [EBX+ECX*2+01H],ECX
        BTC     [ECX+EDX*4+00000100H],ECX
        BTC     [EAX+EAX*8+0A0B0C0D0H],ECX
        BTC     [EBP+EBP+10203040H],ECX
        LOCK BTC     [BX+SI],ECX
        LOCK BTC     [BX+DI],ECX
        LOCK BTC     [BP+SI],ECX
        LOCK BTC     [BP+DI],ECX
        LOCK BTC     [BP],ECX
        LOCK BTC     [SI],ECX
        LOCK BTC     [DI],ECX
        LOCK BTC     [BX+SI+1234H],ECX
        LOCK BTC     [BX+DI+1234H],ECX
        LOCK BTC     [BP+SI+1234H],ECX
        LOCK BTC     [BP+DI+1234H],ECX
        LOCK BTC     [BP+1234H],ECX
        LOCK BTC     [SI+1234H],ECX
        LOCK BTC     [DI+1234H],ECX
        BTC     ECX,01H
        BTC     EAX,EDX
        BTC     ECX,EDX
        BTC     EDX,EDX
        BTC     EBX,EDX
        BTC     ESP,EDX
        BTC     EBP,EDX
        BTC     ESI,EDX
        BTC     EDI,EDX
        BTC     [EDX],EAX
        BTC     [EDX+00001234H],ECX
        BTC     CS:[EDX],EBX
        BTC     [EDX],EDX
        BTC     ES:[EDX],ESP
        BTC     SS:[EDX],EBP
        BTC     FS:[EDX],ESI
        BTC     GS:[EDX],EDI
        BTC     [EAX+EAX*2+00000100H],EDX
        BTC     DS:[EBX+EBP*4+12345678H],EDX
        BTC     [EBP+EBP],EDX
        BTC     [ESP+EBP],EDX
        BTC     [EDX+EBX*8],EDX
        BTC     [EBX+ECX*2+01H],EDX
        BTC     [ECX+EDX*4+00000100H],EDX
        BTC     [EAX+EAX*8+0A0B0C0D0H],EDX
        BTC     [EBP+EBP+10203040H],EDX
        LOCK BTC     [BX+SI],EDX
        LOCK BTC     [BX+DI],EDX
        LOCK BTC     [BP+SI],EDX
        LOCK BTC     [BP+DI],EDX
        LOCK BTC     [BP],EDX
        LOCK BTC     [SI],EDX
        LOCK BTC     [DI],EDX
        LOCK BTC     [BX+SI+1234H],EDX
        LOCK BTC     [BX+DI+1234H],EDX
        LOCK BTC     [BP+SI+1234H],EDX
        LOCK BTC     [BP+DI+1234H],EDX
        LOCK BTC     [BP+1234H],EDX
        LOCK BTC     [SI+1234H],EDX
        LOCK BTC     [DI+1234H],EDX
        BTC     EDX,01H
        BTC     EAX,EBX
        BTC     ECX,EBX
        BTC     EDX,EBX
        BTC     EBX,EBX
        BTC     ESP,EBX
        BTC     EBP,EBX
        BTC     ESI,EBX
        BTC     EDI,EBX
        BTC     [EBX],EAX
        BTC     [EBX+00001234H],ECX
        BTC     CS:[EBX],EBX
        BTC     [EBX],EDX
        BTC     ES:[EBX],ESP
        BTC     SS:[EBX],EBP
        BTC     FS:[EBX],ESI
        BTC     GS:[EBX],EDI
        BTC     [EAX+EAX*2+00000100H],EBX
        BTC     DS:[EBX+EBP*4+12345678H],EBX
        BTC     [EBP+EBP],EBX
        BTC     [ESP+EBP],EBX
        BTC     [EDX+EBX*8],EBX
        BTC     [EBX+ECX*2+01H],EBX
        BTC     [ECX+EDX*4+00000100H],EBX
        BTC     [EAX+EAX*8+0A0B0C0D0H],EBX
        BTC     [EBP+EBP+10203040H],EBX
        LOCK BTC     [BX+SI],EBX
        LOCK BTC     [BX+DI],EBX
        LOCK BTC     [BP+SI],EBX
        LOCK BTC     [BP+DI],EBX
        LOCK BTC     [BP],EBX
        LOCK BTC     [SI],EBX
        LOCK BTC     [DI],EBX
        LOCK BTC     [BX+SI+1234H],EBX
        LOCK BTC     [BX+DI+1234H],EBX
        LOCK BTC     [BP+SI+1234H],EBX
        LOCK BTC     [BP+DI+1234H],EBX
        LOCK BTC     [BP+1234H],EBX
        LOCK BTC     [SI+1234H],EBX
        LOCK BTC     [DI+1234H],EBX
        BTC     EBX,01H
        BTC     EAX,ESP
        BTC     ECX,ESP
        BTC     EDX,ESP
        BTC     EBX,ESP
        BTC     ESP,ESP
        BTC     EBP,ESP
        BTC     ESI,ESP
        BTC     EDI,ESP
        BTC     [ESP+EAX],EAX
        BTC     [ESP+EBP+00001234H],ECX
        BTC     CS:[ESP+ECX],EBX
        BTC     DS:[ESP+EDX],EDX
        BTC     ES:[ESP],ESP
        BTC     [EAX+EAX*2+00000100H],ESP
        BTC     DS:[EBX+EBP*4+12345678H],ESP
        BTC     [EBP+EBP],ESP
        BTC     [ESP+EBP],ESP
        BTC     [EDX+EBX*8],ESP
        BTC     [EBX+ECX*2+01H],ESP
        BTC     [ECX+EDX*4+00000100H],ESP
        BTC     [EAX+EAX*8+0A0B0C0D0H],ESP
        BTC     [EBP+EBP+10203040H],ESP
        LOCK BTC     [BX+SI],ESP
        LOCK BTC     [BX+DI],ESP
        LOCK BTC     [BP+SI],ESP
        LOCK BTC     [BP+DI],ESP
        LOCK BTC     [BP],ESP
        LOCK BTC     [SI],ESP
        LOCK BTC     [DI],ESP
        LOCK BTC     [BX+SI+1234H],ESP
        LOCK BTC     [BX+DI+1234H],ESP
        LOCK BTC     [BP+SI+1234H],ESP
        LOCK BTC     [BP+DI+1234H],ESP
        LOCK BTC     [BP+1234H],ESP
        LOCK BTC     [SI+1234H],ESP
        LOCK BTC     [DI+1234H],ESP
        BTC     ESP,01H
        BTC     EAX,EBP
        BTC     ECX,EBP
        BTC     EDX,EBP
        BTC     EBX,EBP
        BTC     ESP,EBP
        BTC     EBP,EBP
        BTC     ESI,EBP
        BTC     EDI,EBP
        BTC     [EBP],EAX
        BTC     [EBP+00001234H],ECX
        BTC     CS:[EBP],EBX
        BTC     DS:[EBP],EDX
        BTC     ES:[EBP],ESP
        BTC     [EBP],EBP
        BTC     FS:[EBP],ESI
        BTC     GS:[EBP],EDI
        BTC     [EAX+EAX*2+00000100H],EBP
        BTC     DS:[EBX+EBP*4+12345678H],EBP
        BTC     [EBP+EBP],EBP
        BTC     [ESP+EBP],EBP
        BTC     [EDX+EBX*8],EBP
        BTC     [EBX+ECX*2+01H],EBP
        BTC     [ECX+EDX*4+00000100H],EBP
        BTC     [EAX+EAX*8+0A0B0C0D0H],EBP
        BTC     [EBP+EBP+10203040H],EBP
        LOCK BTC     [BX+SI],EBP
        LOCK BTC     [BX+DI],EBP
        LOCK BTC     [BP+SI],EBP
        LOCK BTC     [BP+DI],EBP
        LOCK BTC     [BP],EBP
        LOCK BTC     [SI],EBP
        LOCK BTC     [DI],EBP
        LOCK BTC     [BX+SI+1234H],EBP
        LOCK BTC     [BX+DI+1234H],EBP
        LOCK BTC     [BP+SI+1234H],EBP
        LOCK BTC     [BP+DI+1234H],EBP
        LOCK BTC     [BP+1234H],EBP
        LOCK BTC     [SI+1234H],EBP
        LOCK BTC     [DI+1234H],EBP
        BTC     EBP,01H
        BTC     EAX,ESI
        BTC     ECX,ESI
        BTC     EDX,ESI
        BTC     EBX,ESI
        BTC     ESP,ESI
        BTC     EBP,ESI
        BTC     ESI,ESI
        BTC     EDI,ESI
        BTC     [ESI],EAX
        BTC     [ESI+00001234H],ECX
        BTC     CS:[ESI],EBX
        BTC     [ESI],EDX
        BTC     ES:[ESI],ESP
        BTC     SS:[ESI],EBP
        BTC     FS:[ESI],ESI
        BTC     GS:[ESI],EDI
        BTC     [EAX+EAX*2+00000100H],ESI
        BTC     DS:[EBX+EBP*4+12345678H],ESI
        BTC     [EBP+EBP],ESI
        BTC     [ESP+EBP],ESI
        BTC     [EDX+EBX*8],ESI
        BTC     [EBX+ECX*2+01H],ESI
        BTC     [ECX+EDX*4+00000100H],ESI
        BTC     [EAX+EAX*8+0A0B0C0D0H],ESI
        BTC     [EBP+EBP+10203040H],ESI
        LOCK BTC     [BX+SI],ESI
        LOCK BTC     [BX+DI],ESI
        LOCK BTC     [BP+SI],ESI
        LOCK BTC     [BP+DI],ESI
        LOCK BTC     [BP],ESI
        LOCK BTC     [SI],ESI
        LOCK BTC     [DI],ESI
        LOCK BTC     [BX+SI+1234H],ESI
        LOCK BTC     [BX+DI+1234H],ESI
        LOCK BTC     [BP+SI+1234H],ESI
        LOCK BTC     [BP+DI+1234H],ESI
        LOCK BTC     [BP+1234H],ESI
        LOCK BTC     [SI+1234H],ESI
        LOCK BTC     [DI+1234H],ESI
        BTC     ESI,01H
        BTC     EAX,EDI
        BTC     ECX,EDI
        BTC     EDX,EDI
        BTC     EBX,EDI
        BTC     ESP,EDI
        BTC     EBP,EDI
        BTC     ESI,EDI
        BTC     EDI,EDI
        BTC     [EDI],EAX
        BTC     [EDI+00001234H],ECX
        BTC     CS:[EDI],EBX
        BTC     [EDI],EDX
        BTC     ES:[EDI],ESP
        BTC     SS:[EDI],EBP
        BTC     FS:[EDI],ESI
        BTC     GS:[EDI],EDI
        BTC     [EAX+EAX*2+00000100H],EDI
        BTC     DS:[EBX+EBP*4+12345678H],EDI
        BTC     [EBP+EBP],EDI
        BTC     [ESP+EBP],EDI
        BTC     [EDX+EBX*8],EDI
        BTC     [EBX+ECX*2+01H],EDI
        BTC     [ECX+EDX*4+00000100H],EDI
        BTC     [EAX+EAX*8+0A0B0C0D0H],EDI
        BTC     [EBP+EBP+10203040H],EDI
        LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H
        LOCK BTC     [BX+SI],EDI
        LOCK BTC     [BX+DI],EDI
        LOCK BTC     [BP+SI],EDI
        LOCK BTC     [BP+DI],EDI
        LOCK BTC     [BP],EDI
        LOCK BTC     [SI],EDI
        LOCK BTC     [DI],EDI
        LOCK BTC     [BX+SI+1234H],EDI
        LOCK BTC     [BX+DI+1234H],EDI
        LOCK BTC     [BP+SI+1234H],EDI
        LOCK BTC     [BP+DI+1234H],EDI
        LOCK BTC     [BP+1234H],EDI
        LOCK BTC     [SI+1234H],EDI
        LOCK BTC     [DI+1234H],EDI
        BTC     EDI,01H
        BTC     AX,AX
        BTC     CX,AX
        BTC     DX,AX
        BTC     BX,AX
        BTC     SP,AX
        BTC     BP,AX
        BTC     SI,AX
        BTC     DI,AX
        BTC     [BX+SI+1234H],AX
        BTC     [BX+DI+1234H],AX
        BTC     [BP+SI+1234H],AX
        BTC     [BP+DI+1234H],AX
        BTC     [BP+1234H],AX
        BTC     [SI+1234H],AX
        BTC     [DI+1234H],AX
        BTC     CS:[BX+SI],AX
        BTC     CS:[BX+DI],AX
        BTC     CS:[BP+SI],AX
        BTC     CS:[BP+DI],AX
        BTC     CS:[BP],AX
        BTC     CS:[SI],AX
        BTC     CS:[DI],AX
        BTC     [BX+SI],AX
        BTC     [BX+DI],AX
        BTC     DS:[BP+SI],AX
        BTC     DS:[BP+DI],AX
        BTC     DS:[BP],AX
        BTC     [SI],AX
        BTC     [DI],AX
        BTC     ES:[BX+SI],AX
        BTC     ES:[BX+DI],AX
        BTC     ES:[BP+SI],AX
        BTC     ES:[BP+DI],AX
        BTC     ES:[BP],AX
        BTC     ES:[SI],AX
        BTC     ES:[DI],AX
        BTC     SS:[BX+SI],AX
        BTC     SS:[BX+DI],AX
        BTC     [BP+SI],AX
        BTC     [BP+DI],AX
        BTC     [BP],AX
        BTC     SS:[SI],AX
        BTC     SS:[DI],AX
        BTC     FS:[BX+SI],AX
        BTC     FS:[BX+DI],AX
        BTC     FS:[BP+SI],AX
        BTC     FS:[BP+DI],AX
        BTC     FS:[BP],AX
        BTC     FS:[SI],AX
        BTC     FS:[DI],AX
        BTC     GS:[BX+SI],AX
        BTC     GS:[BX+DI],AX
        BTC     GS:[BP+SI],AX
        BTC     GS:[BP+DI],AX
        BTC     GS:[BP],AX
        BTC     GS:[SI],AX
        BTC     GS:[DI],AX
        BTC     AX,01H
        BTC     AX,0FFH
        BTC     AX,CX
        BTC     CX,CX
        BTC     DX,CX
        BTC     BX,CX
        BTC     SP,CX
        BTC     BP,CX
        BTC     SI,CX
        BTC     DI,CX
        BTC     [BX+SI+1234H],CX
        BTC     [BX+DI+1234H],CX
        BTC     [BP+SI+1234H],CX
        BTC     [BP+DI+1234H],CX
        BTC     [BP+1234H],CX
        BTC     [SI+1234H],CX
        BTC     [DI+1234H],CX
        BTC     CS:[BX+SI],CX
        BTC     CS:[BX+DI],CX
        BTC     CS:[BP+SI],CX
        BTC     CS:[BP+DI],CX
        BTC     CS:[BP],CX
        BTC     CS:[SI],CX
        BTC     CS:[DI],CX
        BTC     [BX+SI],CX
        BTC     [BX+DI],CX
        BTC     DS:[BP+SI],CX
        BTC     DS:[BP+DI],CX
        BTC     DS:[BP],CX
        BTC     [SI],CX
        BTC     [DI],CX
        BTC     ES:[BX+SI],CX
        BTC     ES:[BX+DI],CX
        BTC     ES:[BP+SI],CX
        BTC     ES:[BP+DI],CX
        BTC     ES:[BP],CX
        BTC     ES:[SI],CX
        BTC     ES:[DI],CX
        BTC     SS:[BX+SI],CX
        BTC     SS:[BX+DI],CX
        BTC     [BP+SI],CX
        BTC     [BP+DI],CX
        BTC     [BP],CX
        BTC     SS:[SI],CX
        BTC     SS:[DI],CX
        BTC     FS:[BX+SI],CX
        BTC     FS:[BX+DI],CX
        BTC     FS:[BP+SI],CX
        BTC     FS:[BP+DI],CX
        BTC     FS:[BP],CX
        BTC     FS:[SI],CX
        BTC     FS:[DI],CX
        BTC     GS:[BX+SI],CX
        BTC     GS:[BX+DI],CX
        BTC     GS:[BP+SI],CX
        BTC     GS:[BP+DI],CX
        BTC     GS:[BP],CX
        BTC     GS:[SI],CX
        BTC     GS:[DI],CX
        BTC     CX,01H
        BTC     CX,0FFH
        BTC     AX,DX
        BTC     CX,DX
        BTC     DX,DX
        BTC     BX,DX
        BTC     SP,DX
        BTC     BP,DX
        BTC     SI,DX
        BTC     DI,DX
        BTC     [BX+SI+1234H],DX
        BTC     [BX+DI+1234H],DX
        BTC     [BP+SI+1234H],DX
        BTC     [BP+DI+1234H],DX
        BTC     [BP+1234H],DX
        BTC     [SI+1234H],DX
        BTC     [DI+1234H],DX
        BTC     CS:[BX+SI],DX
        BTC     CS:[BX+DI],DX
        BTC     CS:[BP+SI],DX
        BTC     CS:[BP+DI],DX
        BTC     CS:[BP],DX
        BTC     CS:[SI],DX
        BTC     CS:[DI],DX
        BTC     [BX+SI],DX
        BTC     [BX+DI],DX
        BTC     DS:[BP+SI],DX
        BTC     DS:[BP+DI],DX
        BTC     DS:[BP],DX
        BTC     [SI],DX
        BTC     [DI],DX
        BTC     ES:[BX+SI],DX
        BTC     ES:[BX+DI],DX
        BTC     ES:[BP+SI],DX
        BTC     ES:[BP+DI],DX
        BTC     ES:[BP],DX
        BTC     ES:[SI],DX
        BTC     ES:[DI],DX
        BTC     SS:[BX+SI],DX
        BTC     SS:[BX+DI],DX
        BTC     [BP+SI],DX
        BTC     [BP+DI],DX
        BTC     [BP],DX
        BTC     SS:[SI],DX
        BTC     SS:[DI],DX
        BTC     FS:[BX+SI],DX
        BTC     FS:[BX+DI],DX
        BTC     FS:[BP+SI],DX
        BTC     FS:[BP+DI],DX
        BTC     FS:[BP],DX
        BTC     FS:[SI],DX
        BTC     FS:[DI],DX
        BTC     GS:[BX+SI],DX
        BTC     GS:[BX+DI],DX
        BTC     GS:[BP+SI],DX
        BTC     GS:[BP+DI],DX
        BTC     GS:[BP],DX
        BTC     GS:[SI],DX
        BTC     GS:[DI],DX
        BTC     DX,01H
        BTC     DX,0FFH
        BTC     AX,BX
        BTC     CX,BX
        BTC     DX,BX
        BTC     BX,BX
        BTC     SP,BX
        BTC     BP,BX
        BTC     SI,BX
        BTC     DI,BX
        BTC     [BX+SI+1234H],BX
        BTC     [BX+DI+1234H],BX
        BTC     [BP+SI+1234H],BX
        BTC     [BP+DI+1234H],BX
        BTC     [BP+1234H],BX
        BTC     [SI+1234H],BX
        BTC     [DI+1234H],BX
        BTC     CS:[BX+SI],BX
        BTC     CS:[BX+DI],BX
        BTC     CS:[BP+SI],BX
        BTC     CS:[BP+DI],BX
        BTC     CS:[BP],BX
        BTC     CS:[SI],BX
        BTC     CS:[DI],BX
        BTC     [BX+SI],BX
        BTC     [BX+DI],BX
        BTC     DS:[BP+SI],BX
        BTC     DS:[BP+DI],BX
        BTC     DS:[BP],BX
        BTC     [SI],BX
        BTC     [DI],BX
        BTC     ES:[BX+SI],BX
        BTC     ES:[BX+DI],BX
        BTC     ES:[BP+SI],BX
        BTC     ES:[BP+DI],BX
        BTC     ES:[BP],BX
        BTC     ES:[SI],BX
        BTC     ES:[DI],BX
        BTC     SS:[BX+SI],BX
        BTC     SS:[BX+DI],BX
        BTC     [BP+SI],BX
        BTC     [BP+DI],BX
        BTC     [BP],BX
        BTC     SS:[SI],BX
        BTC     SS:[DI],BX
        BTC     FS:[BX+SI],BX
        BTC     FS:[BX+DI],BX
        BTC     FS:[BP+SI],BX
        BTC     FS:[BP+DI],BX
        BTC     FS:[BP],BX
        BTC     FS:[SI],BX
        BTC     FS:[DI],BX
        BTC     GS:[BX+SI],BX
        BTC     GS:[BX+DI],BX
        BTC     GS:[BP+SI],BX
        BTC     GS:[BP+DI],BX
        BTC     GS:[BP],BX
        BTC     GS:[SI],BX
        BTC     GS:[DI],BX
        BTC     BX,01H
        BTC     BX,0FFH
        BTC     AX,SP
        BTC     CX,SP
        BTC     DX,SP
        BTC     BX,SP
        BTC     SP,SP
        BTC     BP,SP
        BTC     SI,SP
        BTC     DI,SP
        BTC     [BX+SI+1234H],SP
        BTC     [BX+DI+1234H],SP
        BTC     [BP+SI+1234H],SP
        BTC     [BP+DI+1234H],SP
        BTC     [BP+1234H],SP
        BTC     [SI+1234H],SP
        BTC     [DI+1234H],SP
        BTC     CS:[BX+SI],SP
        BTC     CS:[BX+DI],SP
        BTC     CS:[BP+SI],SP
        BTC     CS:[BP+DI],SP
        BTC     CS:[BP],SP
        BTC     CS:[SI],SP
        BTC     CS:[DI],SP
        BTC     [BX+SI],SP
        BTC     [BX+DI],SP
        BTC     DS:[BP+SI],SP
        BTC     DS:[BP+DI],SP
        BTC     DS:[BP],SP
        BTC     [SI],SP
        BTC     [DI],SP
        BTC     ES:[BX+SI],SP
        BTC     ES:[BX+DI],SP
        BTC     ES:[BP+SI],SP
        BTC     ES:[BP+DI],SP
        BTC     ES:[BP],SP
        BTC     ES:[SI],SP
        BTC     ES:[DI],SP
        BTC     SS:[BX+SI],SP
        BTC     SS:[BX+DI],SP
        BTC     [BP+SI],SP
        BTC     [BP+DI],SP
        BTC     [BP],SP
        BTC     SS:[SI],SP
        BTC     SS:[DI],SP
        BTC     FS:[BX+SI],SP
        BTC     FS:[BX+DI],SP
        BTC     FS:[BP+SI],SP
        BTC     FS:[BP+DI],SP
        BTC     FS:[BP],SP
        BTC     FS:[SI],SP
        BTC     FS:[DI],SP
        BTC     GS:[BX+SI],SP
        BTC     GS:[BX+DI],SP
        BTC     GS:[BP+SI],SP
        BTC     GS:[BP+DI],SP
        BTC     GS:[BP],SP
        BTC     GS:[SI],SP
        BTC     GS:[DI],SP
        BTC     SP,01H
        BTC     SP,0FFH
        BTC     AX,BP
        BTC     CX,BP
        BTC     DX,BP
        BTC     BX,BP
        BTC     SP,BP
        BTC     BP,BP
        BTC     SI,BP
        BTC     DI,BP
        BTC     [BX+SI+1234H],BP
        BTC     [BX+DI+1234H],BP
        BTC     [BP+SI+1234H],BP
        BTC     [BP+DI+1234H],BP
        BTC     [BP+1234H],BP
        BTC     [SI+1234H],BP
        BTC     [DI+1234H],BP
        BTC     CS:[BX+SI],BP
        BTC     CS:[BX+DI],BP
        BTC     CS:[BP+SI],BP
        BTC     CS:[BP+DI],BP
        BTC     CS:[BP],BP
        BTC     CS:[SI],BP
        BTC     CS:[DI],BP
        BTC     [BX+SI],BP
        BTC     [BX+DI],BP
        BTC     DS:[BP+SI],BP
        BTC     DS:[BP+DI],BP
        BTC     DS:[BP],BP
        BTC     [SI],BP
        BTC     [DI],BP
        BTC     ES:[BX+SI],BP
        BTC     ES:[BX+DI],BP
        BTC     ES:[BP+SI],BP
        BTC     ES:[BP+DI],BP
        BTC     ES:[BP],BP
        BTC     ES:[SI],BP
        BTC     ES:[DI],BP
        BTC     SS:[BX+SI],BP
        BTC     SS:[BX+DI],BP
        BTC     [BP+SI],BP
        BTC     [BP+DI],BP
        BTC     [BP],BP
        BTC     SS:[SI],BP
        BTC     SS:[DI],BP
        BTC     FS:[BX+SI],BP
        BTC     FS:[BX+DI],BP
        BTC     FS:[BP+SI],BP
        BTC     FS:[BP+DI],BP
        BTC     FS:[BP],BP
        BTC     FS:[SI],BP
        BTC     FS:[DI],BP
        BTC     GS:[BX+SI],BP
        BTC     GS:[BX+DI],BP
        BTC     GS:[BP+SI],BP
        BTC     GS:[BP+DI],BP
        BTC     GS:[BP],BP
        BTC     GS:[SI],BP
        BTC     GS:[DI],BP
        BTC     BP,01H
        BTC     BP,0FFH
        BTC     AX,SI
        BTC     CX,SI
        BTC     DX,SI
        BTC     BX,SI
        BTC     SP,SI
        BTC     BP,SI
        BTC     SI,SI
        BTC     DI,SI
        BTC     [BX+SI+1234H],SI
        BTC     [BX+DI+1234H],SI
        BTC     [BP+SI+1234H],SI
        BTC     [BP+DI+1234H],SI
        BTC     [BP+1234H],SI
        BTC     [SI+1234H],SI
        BTC     [DI+1234H],SI
        BTC     CS:[BX+SI],SI
        BTC     CS:[BX+DI],SI
        BTC     CS:[BP+SI],SI
        BTC     CS:[BP+DI],SI
        BTC     CS:[BP],SI
        BTC     CS:[SI],SI
        BTC     CS:[DI],SI
        BTC     [BX+SI],SI
        BTC     [BX+DI],SI
        BTC     DS:[BP+SI],SI
        BTC     DS:[BP+DI],SI
        BTC     DS:[BP],SI
        BTC     [SI],SI
        BTC     [DI],SI
        BTC     ES:[BX+SI],SI
        BTC     ES:[BX+DI],SI
        BTC     ES:[BP+SI],SI
        BTC     ES:[BP+DI],SI
        BTC     ES:[BP],SI
        BTC     ES:[SI],SI
        BTC     ES:[DI],SI
        BTC     SS:[BX+SI],SI
        BTC     SS:[BX+DI],SI
        BTC     [BP+SI],SI
        BTC     [BP+DI],SI
        BTC     [BP],SI
        BTC     SS:[SI],SI
        BTC     SS:[DI],SI
        BTC     FS:[BX+SI],SI
        BTC     FS:[BX+DI],SI
        BTC     FS:[BP+SI],SI
        BTC     FS:[BP+DI],SI
        BTC     FS:[BP],SI
        BTC     FS:[SI],SI
        BTC     FS:[DI],SI
        BTC     GS:[BX+SI],SI
        BTC     GS:[BX+DI],SI
        BTC     GS:[BP+SI],SI
        BTC     GS:[BP+DI],SI
        BTC     GS:[BP],SI
        BTC     GS:[SI],SI
        BTC     GS:[DI],SI
        BTC     SI,01H
        BTC     SI,0FFH
        BTC     AX,DI
        BTC     CX,DI
        BTC     DX,DI
        BTC     BX,DI
        BTC     SP,DI
        BTC     BP,DI
        BTC     SI,DI
        BTC     DI,DI
        BTC     [BX+SI+1234H],DI
        BTC     [BX+DI+1234H],DI
        BTC     [BP+SI+1234H],DI
        BTC     [BP+DI+1234H],DI
        BTC     [BP+1234H],DI
        BTC     [SI+1234H],DI
        BTC     [DI+1234H],DI
        BTC     CS:[BX+SI],DI
        BTC     CS:[BX+DI],DI
        BTC     CS:[BP+SI],DI
        BTC     CS:[BP+DI],DI
        BTC     CS:[BP],DI
        BTC     CS:[SI],DI
        BTC     CS:[DI],DI
        BTC     [BX+SI],DI
        BTC     [BX+DI],DI
        BTC     DS:[BP+SI],DI
        BTC     DS:[BP+DI],DI
        BTC     DS:[BP],DI
        BTC     [SI],DI
        BTC     [DI],DI
        BTC     ES:[BX+SI],DI
        BTC     ES:[BX+DI],DI
        BTC     ES:[BP+SI],DI
        BTC     ES:[BP+DI],DI
        BTC     ES:[BP],DI
        BTC     ES:[SI],DI
        BTC     ES:[DI],DI
        BTC     SS:[BX+SI],DI
        BTC     SS:[BX+DI],DI
        BTC     [BP+SI],DI
        BTC     [BP+DI],DI
        BTC     [BP],DI
        BTC     SS:[SI],DI
        BTC     SS:[DI],DI
        BTC     FS:[BX+SI],DI
        BTC     FS:[BX+DI],DI
        BTC     FS:[BP+SI],DI
        BTC     FS:[BP+DI],DI
        BTC     FS:[BP],DI
        BTC     FS:[SI],DI
        BTC     FS:[DI],DI
        BTC     GS:[BX+SI],DI
        BTC     GS:[BX+DI],DI
        BTC     GS:[BP+SI],DI
        BTC     GS:[BP+DI],DI
        BTC     GS:[BP],DI
        BTC     GS:[SI],DI
        BTC     GS:[DI],DI
        BTC     DI,01H
        BTC     DI,0FFH
        BTC     EAX,0FFH
        BTC     ECX,0FFH
        BTC     EDX,0FFH
        BTC     EBX,0FFH
        BTC     ESP,0FFH
        BTC     EBP,0FFH
        BTC     ESI,0FFH
        BTC     EDI,0FFH
JO      $+013AH                                             ; 0F 80 36 01
JNO     $-14DFH                                             ; 0F 81 1D EB
JB      $+0132H                                             ; 0F 82 2E 01
JNB     $-14E7H                                             ; 0F 83 15 EB
JZ      $+012AH                                             ; 0F 84 26 01
JNZ     $-14EFH                                             ; 0F 85 0D EB
JBE     $+0122H                                             ; 0F 86 1E 01
JNBE    $-14F7H                                             ; 0F 87 05 EB
JS      $+011AH                                             ; 0F 88 16 01
JNS     $-14FFH                                             ; 0F 89 FD EA
JP      $+0112H                                             ; 0F 8A 0E 01
JNP     $-1507H                                             ; 0F 8B F5 EA
JL      $+010AH                                             ; 0F 8C 06 01
JNL     $-150FH                                             ; 0F 8D ED EA
JLE     $+0102H                                             ; 0F 8E FE 00
JNLE    $-1517H                                             ; 0F 8F E5 EA
JO      $                                                   ; 70 FE
JNO     $-0002H                                             ; 71 FC
JB      $-0004H                                             ; 72 FA
JNB     $-0006H                                             ; 73 F8
JZ      $-0008H                                             ; 74 F6
JNZ     $-000AH                                             ; 75 F4
JBE     $-000CH                                             ; 76 F2
JNBE    $-000EH                                             ; 77 F0
JS      $-0010H                                             ; 78 EE
JNS     $-0012H                                             ; 79 EC
JP      $-0014H                                             ; 7A EA
JNP     $-0016H                                             ; 7B E8
JL      $-0018H                                             ; 7C E6
JNL     $-001AH                                             ; 7D E4
JLE     $-001CH                                             ; 7E E2
JNLE    $-001EH                                             ; 7F E0
JCXZ    $-0020H                                             ; E3 DE
JECXZ   $+0002H                                             ; 67 E3 00
JCC_REL8F:
        LOCK BTC     [EAX+EAX+00004321H],AX
        LOCK BTC     [EAX+EAX*2+00004321H],AX
        LOCK BTC     [EAX+EAX*4+00004321H],AX
        LOCK BTC     [EAX+EAX*8+00004321H],AX
        LOCK BTC     [ESI+00004321H],AX
        LOCK BTC     [EDI+00004321H],AX
        LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
        LOCK BTC     [EAX+EAX+00004321H],AX
        LOCK BTC     [EAX+EAX*2+00004321H],AX
        LOCK BTC     [EAX+EAX*4+00004321H],AX
        LOCK BTC     [EAX+EAX*8+00004321H],AX
        LOCK BTC     [ESI+00004321H],AX
        LOCK BTC     [EDI+00004321H],AX
        LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
        LOCK BTC	[EBX + EBP*8 + 4321H], AX
        LOCK BTC	[EBP + 4321H], AX
        LOCK BTC	[ECX*4 + 4321H], AX
        LOCK BTC	[EBP*8+0B0H], AX
        LOCK BTC	[ESI*4 + 4321H], AX
        LOCK BTC	[EDI*2 + 87654321H], AX
        LOCK BTC	DWORD PTR SS:[EBP + EBX*4 + 12345678H], 9AH
JCC_REL16:
        AAD
    END     START