BTS    dword ptr DS:[EAX*4], EAX
BTS    word ptr DS:[EBX*4], AX
BTS    word ptr DS:[EBP*4], AX
BTS    word ptr SS:[EBP], 0FFh
BTS    dword ptr DS:[ESP], 0FFh
BTS    dword ptr DS:[EBP*4 + 00000001h], EBP
BTS    dword ptr DS:[EBP*4 + 00000100h], EBP
BTS    word ptr DS:[BX + 0FEDCh], AX
BTS    word ptr CS:[EBX + EBP + 0FFEEDDCCh], 0A0h
BTS    word ptr DS:[EBP + EAX + 00h], 0FFh
BTS    dword ptr DS:[EBP + EAX*8 + 00h], 0FFh
BTS    word ptr DS:[ESP + EAX], 0FFh
BTS    dword ptr DS:[ESP + EAX*8], 0FFh
BTS    word ptr DS:[ESP + EBP], 0FFh
BTS    dword ptr DS:[ESP + EBP*8], 0FFh
BTS    word ptr DS:[BX + SI], AX
BTS    word ptr DS:[BX + DI], AX
BTS    word ptr SS:[BP + SI], AX
BTS    word ptr SS:[BP + DI], AX
BTS    word ptr SS:[BP], AX
BTS    word ptr DS:[SI], AX
BTS    word ptr DS:[DI], AX
BTS    word ptr ES:[1234h], AX
BTS    word ptr SS:[1234005678h], AX
BTS    dword ptr FS:[0123h], 01h
BTS    dword ptr GS:[1234005678h], 10h
BTS    word ptr DS:[1234h], AX
BTS    word ptr DS:[1234005678h], AX
BTS    dword ptr ES:[0123h], 01h
BTS    dword ptr SS:[1234005678h], 10h
BTS    word ptr ES:[1234h], AX
BTS    word ptr CS:[1234005678h], AX
BTS    dword ptr ES:[0123h], 01h
BTS    dword ptr SS:[1234005678h], 10h
BTS    word ptr DS:[BX + SI], 0A0h
BTS    dword ptr DS:[BX + SI], 0B0h
BTS    word ptr DS:[BX + DI], 0A0h
BTS    dword ptr DS:[BX + DI], 0B0h
BTS    word ptr SS:[BP + SI], 0A0h
BTS    dword ptr SS:[BP + SI], 0B0h
BTS    word ptr SS:[BP + DI], 0A0h
BTS    dword ptr SS:[BP + DI], 0B0h
BTS    word ptr SS:[BP], 0A0h
BTS    dword ptr SS:[BP], 0B0h
BTS    word ptr DS:[DI], 0A0h
BTS    dword ptr DS:[DI], 0B0h
BTS    word ptr DS:[SI], 0A0h
BTS    dword ptr DS:[SI], 0B0h
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], AX
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], AX
BTS    word ptr DS:[EBP + EBP + 00h], AX
BTS    word ptr DS:[ESP + EBP], AX
BTS    word ptr DS:[EDX + EBX*8], AX
BTS    word ptr DS:[EBX + ECX*2 + 01h], AX
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], AX
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], AX
BTS    word ptr DS:[EBP + EBP + 10203040h], AX
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], CX
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], CX
BTS    word ptr DS:[EBP + EBP + 00h], CX
BTS    word ptr DS:[ESP + EBP], CX
BTS    word ptr DS:[EDX + EBX*8], CX
BTS    word ptr DS:[EBX + ECX*2 + 01h], CX
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], CX
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], CX
BTS    word ptr DS:[EBP + EBP + 10203040h], CX
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], DX
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], DX
BTS    word ptr DS:[EBP + EBP + 00h], DX
BTS    word ptr DS:[ESP + EBP], DX
BTS    word ptr DS:[EDX + EBX*8], DX
BTS    word ptr DS:[EBX + ECX*2 + 01h], DX
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], DX
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], DX
BTS    word ptr DS:[EBP + EBP + 10203040h], DX
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], BX
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], BX
BTS    word ptr DS:[EBP + EBP + 00h], BX
BTS    word ptr DS:[ESP + EBP], BX
BTS    word ptr DS:[EDX + EBX*8], BX
BTS    word ptr DS:[EBX + ECX*2 + 01h], BX
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], BX
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], BX
BTS    word ptr DS:[EBP + EBP + 10203040h], BX
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], SP
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], SP
BTS    word ptr DS:[EBP + EBP + 00h], SP
BTS    word ptr DS:[ESP + EBP], SP
BTS    word ptr DS:[EDX + EBX*8], SP
BTS    word ptr DS:[EBX + ECX*2 + 01h], SP
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], SP
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], SP
BTS    word ptr DS:[EBP + EBP + 10203040h], SP
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], BP
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], BP
BTS    word ptr DS:[EBP + EBP + 00h], BP
BTS    word ptr DS:[ESP + EBP], BP
BTS    word ptr DS:[EDX + EBX*8], BP
BTS    word ptr DS:[EBX + ECX*2 + 01h], BP
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], BP
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], BP
BTS    word ptr DS:[EBP + EBP + 10203040h], BP
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], SI
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], SI
BTS    word ptr DS:[EBP + EBP + 00h], SI
BTS    word ptr DS:[ESP + EBP], SI
BTS    word ptr DS:[EDX + EBX*8], SI
BTS    word ptr DS:[EBX + ECX*2 + 01h], SI
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], SI
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], SI
BTS    word ptr DS:[EBP + EBP + 10203040h], SI
BTS    word ptr DS:[EAX + EAX*2 + 00000100h], DI
BTS    word ptr DS:[EBX + EBP*4 + 12345678h], DI
BTS    word ptr DS:[EBP + EBP + 00h], DI
BTS    word ptr DS:[ESP + EBP], DI
BTS    word ptr DS:[EDX + EBX*8], DI
BTS    word ptr DS:[EBX + ECX*2 + 01h], DI
BTS    word ptr DS:[ECX + EDX*4 + 00000100h], DI
BTS    word ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], DI
BTS    word ptr DS:[EBP + EBP + 10203040h], DI
BTS    EAX, EAX
BTS    ECX, EAX
BTS    EDX, EAX
BTS    EBX, EAX
BTS    ESP, EAX
BTS    EBP, EAX
BTS    ESI, EAX
BTS    EDI, EAX
BTS    dword ptr DS:[EAX], EAX
BTS    dword ptr DS:[EAX + 00001234h], ECX
BTS    dword ptr CS:[EAX], EBX
BTS    dword ptr DS:[EAX], EDX
BTS    dword ptr ES:[EAX], ESP
BTS    dword ptr SS:[EAX], EBP
BTS    dword ptr FS:[EAX], ESI
BTS    dword ptr GS:[EAX], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], EAX
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], EAX
BTS    dword ptr DS:[EBP + EBP + 00h], EAX
BTS    dword ptr DS:[ESP + EBP], EAX
BTS    dword ptr DS:[EDX + EBX*8], EAX
BTS    dword ptr DS:[EBX + ECX*2 + 01h], EAX
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], EAX
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], EAX
BTS    dword ptr DS:[EBP + EBP + 10203040h], EAX
BTS    EAX, 01h
BTS    EAX, ECX
BTS    ECX, ECX
BTS    EDX, ECX
BTS    EBX, ECX
BTS    ESP, ECX
BTS    EBP, ECX
BTS    ESI, ECX
BTS    EDI, ECX
BTS    dword ptr DS:[ECX], EAX
BTS    dword ptr DS:[ECX + 00001234h], ECX
BTS    dword ptr CS:[ECX], EBX
BTS    dword ptr DS:[ECX], EDX
BTS    dword ptr ES:[ECX], ESP
BTS    dword ptr SS:[ECX], EBP
BTS    dword ptr FS:[ECX], ESI
BTS    dword ptr GS:[ECX], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], ECX
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], ECX
BTS    dword ptr DS:[EBP + EBP + 00h], ECX
BTS    dword ptr DS:[ESP + EBP], ECX
BTS    dword ptr DS:[EDX + EBX*8], ECX
BTS    dword ptr DS:[EBX + ECX*2 + 01h], ECX
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], ECX
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], ECX
BTS    dword ptr DS:[EBP + EBP + 10203040h], ECX
BTS    ECX, 01h
BTS    EAX, EDX
BTS    ECX, EDX
BTS    EDX, EDX
BTS    EBX, EDX
BTS    ESP, EDX
BTS    EBP, EDX
BTS    ESI, EDX
BTS    EDI, EDX
BTS    dword ptr DS:[EDX], EAX
BTS    dword ptr DS:[EDX + 00001234h], ECX
BTS    dword ptr CS:[EDX], EBX
BTS    dword ptr DS:[EDX], EDX
BTS    dword ptr ES:[EDX], ESP
BTS    dword ptr SS:[EDX], EBP
BTS    dword ptr FS:[EDX], ESI
BTS    dword ptr GS:[EDX], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], EDX
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], EDX
BTS    dword ptr DS:[EBP + EBP + 00h], EDX
BTS    dword ptr DS:[ESP + EBP], EDX
BTS    dword ptr DS:[EDX + EBX*8], EDX
BTS    dword ptr DS:[EBX + ECX*2 + 01h], EDX
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], EDX
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], EDX
BTS    dword ptr DS:[EBP + EBP + 10203040h], EDX
BTS    EDX, 01h
BTS    EAX, EBX
BTS    ECX, EBX
BTS    EDX, EBX
BTS    EBX, EBX
BTS    ESP, EBX
BTS    EBP, EBX
BTS    ESI, EBX
BTS    EDI, EBX
BTS    dword ptr DS:[EBX], EAX
BTS    dword ptr DS:[EBX + 00001234h], ECX
BTS    dword ptr CS:[EBX], EBX
BTS    dword ptr DS:[EBX], EDX
BTS    dword ptr ES:[EBX], ESP
BTS    dword ptr SS:[EBX], EBP
BTS    dword ptr FS:[EBX], ESI
BTS    dword ptr GS:[EBX], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], EBX
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], EBX
BTS    dword ptr DS:[EBP + EBP + 00h], EBX
BTS    dword ptr DS:[ESP + EBP], EBX
BTS    dword ptr DS:[EDX + EBX*8], EBX
BTS    dword ptr DS:[EBX + ECX*2 + 01h], EBX
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], EBX
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], EBX
BTS    dword ptr DS:[EBP + EBP + 10203040h], EBX
BTS    EBX, 01h
BTS    EAX, ESP
BTS    ECX, ESP
BTS    EDX, ESP
BTS    EBX, ESP
BTS    ESP, ESP
BTS    EBP, ESP
BTS    ESI, ESP
BTS    EDI, ESP
BTS    dword ptr DS:[ESP + EAX], EAX
BTS    dword ptr DS:[ESP + EBP + 00001234h], ECX
BTS    dword ptr CS:[ESP + ECX], EBX
BTS    dword ptr DS:[ESP + EDX], EDX
BTS    dword ptr ES:[ESP], ESP
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], ESP
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], ESP
BTS    dword ptr DS:[EBP + EBP + 00h], ESP
BTS    dword ptr DS:[ESP + EBP], ESP
BTS    dword ptr DS:[EDX + EBX*8], ESP
BTS    dword ptr DS:[EBX + ECX*2 + 01h], ESP
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], ESP
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], ESP
BTS    dword ptr DS:[EBP + EBP + 10203040h], ESP
BTS    ESP, 01h
BTS    EAX, EBP
BTS    ECX, EBP
BTS    EDX, EBP
BTS    EBX, EBP
BTS    ESP, EBP
BTS    EBP, EBP
BTS    ESI, EBP
BTS    EDI, EBP
BTS    dword ptr SS:[EBP], EAX
BTS    dword ptr SS:[EBP + 00001234h], ECX
BTS    dword ptr CS:[EBP], EBX
BTS    dword ptr DS:[EBP], EDX
BTS    dword ptr ES:[EBP], ESP
BTS    dword ptr SS:[EBP], EBP
BTS    dword ptr FS:[EBP], ESI
BTS    dword ptr GS:[EBP], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], EBP
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], EBP
BTS    dword ptr DS:[EBP + EBP + 00h], EBP
BTS    dword ptr DS:[ESP + EBP], EBP
BTS    dword ptr DS:[EDX + EBX*8], EBP
BTS    dword ptr DS:[EBX + ECX*2 + 01h], EBP
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], EBP
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], EBP
BTS    dword ptr DS:[EBP + EBP + 10203040h], EBP
BTS    EBP, 01h
BTS    EAX, ESI
BTS    ECX, ESI
BTS    EDX, ESI
BTS    EBX, ESI
BTS    ESP, ESI
BTS    EBP, ESI
BTS    ESI, ESI
BTS    EDI, ESI
BTS    dword ptr DS:[ESI], EAX
BTS    dword ptr DS:[ESI + 00001234h], ECX
BTS    dword ptr CS:[ESI], EBX
BTS    dword ptr DS:[ESI], EDX
BTS    dword ptr ES:[ESI], ESP
BTS    dword ptr SS:[ESI], EBP
BTS    dword ptr FS:[ESI], ESI
BTS    dword ptr GS:[ESI], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], ESI
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], ESI
BTS    dword ptr DS:[EBP + EBP + 00h], ESI
BTS    dword ptr DS:[ESP + EBP], ESI
BTS    dword ptr DS:[EDX + EBX*8], ESI
BTS    dword ptr DS:[EBX + ECX*2 + 01h], ESI
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], ESI
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], ESI
BTS    dword ptr DS:[EBP + EBP + 10203040h], ESI
BTS    ESI, 01h
BTS    EAX, EDI
BTS    ECX, EDI
BTS    EDX, EDI
BTS    EBX, EDI
BTS    ESP, EDI
BTS    EBP, EDI
BTS    ESI, EDI
BTS    EDI, EDI
BTS    dword ptr DS:[EDI], EAX
BTS    dword ptr DS:[EDI + 00001234h], ECX
BTS    dword ptr CS:[EDI], EBX
BTS    dword ptr DS:[EDI], EDX
BTS    dword ptr ES:[EDI], ESP
BTS    dword ptr SS:[EDI], EBP
BTS    dword ptr FS:[EDI], ESI
BTS    dword ptr GS:[EDI], EDI
BTS    dword ptr DS:[EAX + EAX*2 + 00000100h], EDI
BTS    dword ptr DS:[EBX + EBP*4 + 12345678h], EDI
BTS    dword ptr DS:[EBP + EBP + 00h], EDI
BTS    dword ptr DS:[ESP + EBP], EDI
BTS    dword ptr DS:[EDX + EBX*8], EDI
BTS    dword ptr DS:[EBX + ECX*2 + 01h], EDI
BTS    dword ptr DS:[ECX + EDX*4 + 00000100h], EDI
BTS    dword ptr DS:[EAX + EAX*8 + 0A0B0C0D0h], EDI
BTS    dword ptr DS:[EBP + EBP + 10203040h], EDI
BTS    word ptr DS:[EAX + EBP], 0FFh
BTS    dword ptr DS:[EAX + EBP*8], 0FFh
BTS    EDI, 01h
BTS    AX, AX
BTS    CX, AX
BTS    DX, AX
BTS    BX, AX
BTS    SP, AX
BTS    BP, AX
BTS    SI, AX
BTS    DI, AX
BTS    word ptr DS:[BX + SI + 1234h], AX
BTS    word ptr DS:[BX + DI + 1234h], AX
BTS    word ptr SS:[BP + SI + 1234h], AX
BTS    word ptr SS:[BP + DI + 1234h], AX
BTS    word ptr SS:[BP + 1234h], AX
BTS    word ptr DS:[SI + 1234h], AX
BTS    word ptr DS:[DI + 1234h], AX
BTS    word ptr CS:[BX + SI], AX
BTS    word ptr CS:[BX + DI], AX
BTS    word ptr CS:[BP + SI], AX
BTS    word ptr CS:[BP + DI], AX
BTS    word ptr CS:[BP], AX
BTS    word ptr CS:[SI], AX
BTS    word ptr CS:[DI], AX
BTS    word ptr DS:[BX + SI], AX
BTS    word ptr DS:[BX + DI], AX
BTS    word ptr DS:[BP + SI], AX
BTS    word ptr DS:[BP + DI], AX
BTS    word ptr DS:[BP], AX
BTS    word ptr DS:[SI], AX
BTS    word ptr DS:[DI], AX
BTS    word ptr ES:[BX + SI], AX
BTS    word ptr ES:[BX + DI], AX
BTS    word ptr ES:[BP + SI], AX
BTS    word ptr ES:[BP + DI], AX
BTS    word ptr ES:[BP], AX
BTS    word ptr ES:[SI], AX
BTS    word ptr ES:[DI], AX
BTS    word ptr SS:[BX + SI], AX
BTS    word ptr SS:[BX + DI], AX
BTS    word ptr SS:[BP + SI], AX
BTS    word ptr SS:[BP + DI], AX
BTS    word ptr SS:[BP], AX
BTS    word ptr SS:[SI], AX
BTS    word ptr SS:[DI], AX
BTS    word ptr FS:[BX + SI], AX
BTS    word ptr FS:[BX + DI], AX
BTS    word ptr FS:[BP + SI], AX
BTS    word ptr FS:[BP + DI], AX
BTS    word ptr FS:[BP], AX
BTS    word ptr FS:[SI], AX
BTS    word ptr FS:[DI], AX
BTS    word ptr GS:[BX + SI], AX
BTS    word ptr GS:[BX + DI], AX
BTS    word ptr GS:[BP + SI], AX
BTS    word ptr GS:[BP + DI], AX
BTS    word ptr GS:[BP], AX
BTS    word ptr GS:[SI], AX
BTS    word ptr GS:[DI], AX
BTS    AX, 01h
BTS    AX, 0FFh
BTS    AX, CX
BTS    CX, CX
BTS    DX, CX
BTS    BX, CX
BTS    SP, CX
BTS    BP, CX
BTS    SI, CX
BTS    DI, CX
BTS    word ptr DS:[BX + SI + 1234h], CX
BTS    word ptr DS:[BX + DI + 1234h], CX
BTS    word ptr SS:[BP + SI + 1234h], CX
BTS    word ptr SS:[BP + DI + 1234h], CX
BTS    word ptr SS:[BP + 1234h], CX
BTS    word ptr DS:[SI + 1234h], CX
BTS    word ptr DS:[DI + 1234h], CX
BTS    word ptr CS:[BX + SI], CX
BTS    word ptr CS:[BX + DI], CX
BTS    word ptr CS:[BP + SI], CX
BTS    word ptr CS:[BP + DI], CX
BTS    word ptr CS:[BP], CX
BTS    word ptr CS:[SI], CX
BTS    word ptr CS:[DI], CX
BTS    word ptr DS:[BX + SI], CX
BTS    word ptr DS:[BX + DI], CX
BTS    word ptr DS:[BP + SI], CX
BTS    word ptr DS:[BP + DI], CX
BTS    word ptr DS:[BP], CX
BTS    word ptr DS:[SI], CX
BTS    word ptr DS:[DI], CX
BTS    word ptr ES:[BX + SI], CX
BTS    word ptr ES:[BX + DI], CX
BTS    word ptr ES:[BP + SI], CX
BTS    word ptr ES:[BP + DI], CX
BTS    word ptr ES:[BP], CX
BTS    word ptr ES:[SI], CX
BTS    word ptr ES:[DI], CX
BTS    word ptr SS:[BX + SI], CX
BTS    word ptr SS:[BX + DI], CX
BTS    word ptr SS:[BP + SI], CX
BTS    word ptr SS:[BP + DI], CX
BTS    word ptr SS:[BP], CX
BTS    word ptr SS:[SI], CX
BTS    word ptr SS:[DI], CX
BTS    word ptr FS:[BX + SI], CX
BTS    word ptr FS:[BX + DI], CX
BTS    word ptr FS:[BP + SI], CX
BTS    word ptr FS:[BP + DI], CX
BTS    word ptr FS:[BP], CX
BTS    word ptr FS:[SI], CX
BTS    word ptr FS:[DI], CX
BTS    word ptr GS:[BX + SI], CX
BTS    word ptr GS:[BX + DI], CX
BTS    word ptr GS:[BP + SI], CX
BTS    word ptr GS:[BP + DI], CX
BTS    word ptr GS:[BP], CX
BTS    word ptr GS:[SI], CX
BTS    word ptr GS:[DI], CX
BTS    CX, 01h
BTS    CX, 0FFh
BTS    AX, DX
BTS    CX, DX
BTS    DX, DX
BTS    BX, DX
BTS    SP, DX
BTS    BP, DX
BTS    SI, DX
BTS    DI, DX
BTS    word ptr DS:[BX + SI + 1234h], DX
BTS    word ptr DS:[BX + DI + 1234h], DX
BTS    word ptr SS:[BP + SI + 1234h], DX
BTS    word ptr SS:[BP + DI + 1234h], DX
BTS    word ptr SS:[BP + 1234h], DX
BTS    word ptr DS:[SI + 1234h], DX
BTS    word ptr DS:[DI + 1234h], DX
BTS    word ptr CS:[BX + SI], DX
BTS    word ptr CS:[BX + DI], DX
BTS    word ptr CS:[BP + SI], DX
BTS    word ptr CS:[BP + DI], DX
BTS    word ptr CS:[BP], DX
BTS    word ptr CS:[SI], DX
BTS    word ptr CS:[DI], DX
BTS    word ptr DS:[BX + SI], DX
BTS    word ptr DS:[BX + DI], DX
BTS    word ptr DS:[BP + SI], DX
BTS    word ptr DS:[BP + DI], DX
BTS    word ptr DS:[BP], DX
BTS    word ptr DS:[SI], DX
BTS    word ptr DS:[DI], DX
BTS    word ptr ES:[BX + SI], DX
BTS    word ptr ES:[BX + DI], DX
BTS    word ptr ES:[BP + SI], DX
BTS    word ptr ES:[BP + DI], DX
BTS    word ptr ES:[BP], DX
BTS    word ptr ES:[SI], DX
BTS    word ptr ES:[DI], DX
BTS    word ptr SS:[BX + SI], DX
BTS    word ptr SS:[BX + DI], DX
BTS    word ptr SS:[BP + SI], DX
BTS    word ptr SS:[BP + DI], DX
BTS    word ptr SS:[BP], DX
BTS    word ptr SS:[SI], DX
BTS    word ptr SS:[DI], DX
BTS    word ptr FS:[BX + SI], DX
BTS    word ptr FS:[BX + DI], DX
BTS    word ptr FS:[BP + SI], DX
BTS    word ptr FS:[BP + DI], DX
BTS    word ptr FS:[BP], DX
BTS    word ptr FS:[SI], DX
BTS    word ptr FS:[DI], DX
BTS    word ptr GS:[BX + SI], DX
BTS    word ptr GS:[BX + DI], DX
BTS    word ptr GS:[BP + SI], DX
BTS    word ptr GS:[BP + DI], DX
BTS    word ptr GS:[BP], DX
BTS    word ptr GS:[SI], DX
BTS    word ptr GS:[DI], DX
BTS    DX, 01h
BTS    DX, 0FFh
BTS    AX, BX
BTS    CX, BX
BTS    DX, BX
BTS    BX, BX
BTS    SP, BX
BTS    BP, BX
BTS    SI, BX
BTS    DI, BX
BTS    word ptr DS:[BX + SI + 1234h], BX
BTS    word ptr DS:[BX + DI + 1234h], BX
BTS    word ptr SS:[BP + SI + 1234h], BX
BTS    word ptr SS:[BP + DI + 1234h], BX
BTS    word ptr SS:[BP + 1234h], BX
BTS    word ptr DS:[SI + 1234h], BX
BTS    word ptr DS:[DI + 1234h], BX
BTS    word ptr CS:[BX + SI], BX
BTS    word ptr CS:[BX + DI], BX
BTS    word ptr CS:[BP + SI], BX
BTS    word ptr CS:[BP + DI], BX
BTS    word ptr CS:[BP], BX
BTS    word ptr CS:[SI], BX
BTS    word ptr CS:[DI], BX
BTS    word ptr DS:[BX + SI], BX
BTS    word ptr DS:[BX + DI], BX
BTS    word ptr DS:[BP + SI], BX
BTS    word ptr DS:[BP + DI], BX
BTS    word ptr DS:[BP], BX
BTS    word ptr DS:[SI], BX
BTS    word ptr DS:[DI], BX
BTS    word ptr ES:[BX + SI], BX
BTS    word ptr ES:[BX + DI], BX
BTS    word ptr ES:[BP + SI], BX
BTS    word ptr ES:[BP + DI], BX
BTS    word ptr ES:[BP], BX
BTS    word ptr ES:[SI], BX
BTS    word ptr ES:[DI], BX
BTS    word ptr SS:[BX + SI], BX
BTS    word ptr SS:[BX + DI], BX
BTS    word ptr SS:[BP + SI], BX
BTS    word ptr SS:[BP + DI], BX
BTS    word ptr SS:[BP], BX
BTS    word ptr SS:[SI], BX
BTS    word ptr SS:[DI], BX
BTS    word ptr FS:[BX + SI], BX
BTS    word ptr FS:[BX + DI], BX
BTS    word ptr FS:[BP + SI], BX
BTS    word ptr FS:[BP + DI], BX
BTS    word ptr FS:[BP], BX
BTS    word ptr FS:[SI], BX
BTS    word ptr FS:[DI], BX
BTS    word ptr GS:[BX + SI], BX
BTS    word ptr GS:[BX + DI], BX
BTS    word ptr GS:[BP + SI], BX
BTS    word ptr GS:[BP + DI], BX
BTS    word ptr GS:[BP], BX
BTS    word ptr GS:[SI], BX
BTS    word ptr GS:[DI], BX
BTS    BX, 01h
BTS    BX, 0FFh
BTS    AX, SP
BTS    CX, SP
BTS    DX, SP
BTS    BX, SP
BTS    SP, SP
BTS    BP, SP
BTS    SI, SP
BTS    DI, SP
BTS    word ptr DS:[BX + SI + 1234h], SP
BTS    word ptr DS:[BX + DI + 1234h], SP
BTS    word ptr SS:[BP + SI + 1234h], SP
BTS    word ptr SS:[BP + DI + 1234h], SP
BTS    word ptr SS:[BP + 1234h], SP
BTS    word ptr DS:[SI + 1234h], SP
BTS    word ptr DS:[DI + 1234h], SP
BTS    word ptr CS:[BX + SI], SP
BTS    word ptr CS:[BX + DI], SP
BTS    word ptr CS:[BP + SI], SP
BTS    word ptr CS:[BP + DI], SP
BTS    word ptr CS:[BP], SP
BTS    word ptr CS:[SI], SP
BTS    word ptr CS:[DI], SP
BTS    word ptr DS:[BX + SI], SP
BTS    word ptr DS:[BX + DI], SP
BTS    word ptr DS:[BP + SI], SP
BTS    word ptr DS:[BP + DI], SP
BTS    word ptr DS:[BP], SP
BTS    word ptr DS:[SI], SP
BTS    word ptr DS:[DI], SP
BTS    word ptr ES:[BX + SI], SP
BTS    word ptr ES:[BX + DI], SP
BTS    word ptr ES:[BP + SI], SP
BTS    word ptr ES:[BP + DI], SP
BTS    word ptr ES:[BP], SP
BTS    word ptr ES:[SI], SP
BTS    word ptr ES:[DI], SP
BTS    word ptr SS:[BX + SI], SP
BTS    word ptr SS:[BX + DI], SP
BTS    word ptr SS:[BP + SI], SP
BTS    word ptr SS:[BP + DI], SP
BTS    word ptr SS:[BP], SP
BTS    word ptr SS:[SI], SP
BTS    word ptr SS:[DI], SP
BTS    word ptr FS:[BX + SI], SP
BTS    word ptr FS:[BX + DI], SP
BTS    word ptr FS:[BP + SI], SP
BTS    word ptr FS:[BP + DI], SP
BTS    word ptr FS:[BP], SP
BTS    word ptr FS:[SI], SP
BTS    word ptr FS:[DI], SP
BTS    word ptr GS:[BX + SI], SP
BTS    word ptr GS:[BX + DI], SP
BTS    word ptr GS:[BP + SI], SP
BTS    word ptr GS:[BP + DI], SP
BTS    word ptr GS:[BP], SP
BTS    word ptr GS:[SI], SP
BTS    word ptr GS:[DI], SP
BTS    SP, 01h
BTS    SP, 0FFh
BTS    AX, BP
BTS    CX, BP
BTS    DX, BP
BTS    BX, BP
BTS    SP, BP
BTS    BP, BP
BTS    SI, BP
BTS    DI, BP
BTS    word ptr DS:[BX + SI + 1234h], BP
BTS    word ptr DS:[BX + DI + 1234h], BP
BTS    word ptr SS:[BP + SI + 1234h], BP
BTS    word ptr SS:[BP + DI + 1234h], BP
BTS    word ptr SS:[BP + 1234h], BP
BTS    word ptr DS:[SI + 1234h], BP
BTS    word ptr DS:[DI + 1234h], BP
BTS    word ptr CS:[BX + SI], BP
BTS    word ptr CS:[BX + DI], BP
BTS    word ptr CS:[BP + SI], BP
BTS    word ptr CS:[BP + DI], BP
BTS    word ptr CS:[BP], BP
BTS    word ptr CS:[SI], BP
BTS    word ptr CS:[DI], BP
BTS    word ptr DS:[BX + SI], BP
BTS    word ptr DS:[BX + DI], BP
BTS    word ptr DS:[BP + SI], BP
BTS    word ptr DS:[BP + DI], BP
BTS    word ptr DS:[BP], BP
BTS    word ptr DS:[SI], BP
BTS    word ptr DS:[DI], BP
BTS    word ptr ES:[BX + SI], BP
BTS    word ptr ES:[BX + DI], BP
BTS    word ptr ES:[BP + SI], BP
BTS    word ptr ES:[BP + DI], BP
BTS    word ptr ES:[BP], BP
BTS    word ptr ES:[SI], BP
BTS    word ptr ES:[DI], BP
BTS    word ptr SS:[BX + SI], BP
BTS    word ptr SS:[BX + DI], BP
BTS    word ptr SS:[BP + SI], BP
BTS    word ptr SS:[BP + DI], BP
BTS    word ptr SS:[BP], BP
BTS    word ptr SS:[SI], BP
BTS    word ptr SS:[DI], BP
BTS    word ptr FS:[BX + SI], BP
BTS    word ptr FS:[BX + DI], BP
BTS    word ptr FS:[BP + SI], BP
BTS    word ptr FS:[BP + DI], BP
BTS    word ptr FS:[BP], BP
BTS    word ptr FS:[SI], BP
BTS    word ptr FS:[DI], BP
BTS    word ptr GS:[BX + SI], BP
BTS    word ptr GS:[BX + DI], BP
BTS    word ptr GS:[BP + SI], BP
BTS    word ptr GS:[BP + DI], BP
BTS    word ptr GS:[BP], BP
BTS    word ptr GS:[SI], BP
BTS    word ptr GS:[DI], BP
BTS    BP, 01h
BTS    BP, 0FFh
BTS    AX, SI
BTS    CX, SI
BTS    DX, SI
BTS    BX, SI
BTS    SP, SI
BTS    BP, SI
BTS    SI, SI
BTS    DI, SI
BTS    word ptr DS:[BX + SI + 1234h], SI
BTS    word ptr DS:[BX + DI + 1234h], SI
BTS    word ptr SS:[BP + SI + 1234h], SI
BTS    word ptr SS:[BP + DI + 1234h], SI
BTS    word ptr SS:[BP + 1234h], SI
BTS    word ptr DS:[SI + 1234h], SI
BTS    word ptr DS:[DI + 1234h], SI
BTS    word ptr CS:[BX + SI], SI
BTS    word ptr CS:[BX + DI], SI
BTS    word ptr CS:[BP + SI], SI
BTS    word ptr CS:[BP + DI], SI
BTS    word ptr CS:[BP], SI
BTS    word ptr CS:[SI], SI
BTS    word ptr CS:[DI], SI
BTS    word ptr DS:[BX + SI], SI
BTS    word ptr DS:[BX + DI], SI
BTS    word ptr DS:[BP + SI], SI
BTS    word ptr DS:[BP + DI], SI
BTS    word ptr DS:[BP], SI
BTS    word ptr DS:[SI], SI
BTS    word ptr DS:[DI], SI
BTS    word ptr ES:[BX + SI], SI
BTS    word ptr ES:[BX + DI], SI
BTS    word ptr ES:[BP + SI], SI
BTS    word ptr ES:[BP + DI], SI
BTS    word ptr ES:[BP], SI
BTS    word ptr ES:[SI], SI
BTS    word ptr ES:[DI], SI
BTS    word ptr SS:[BX + SI], SI
BTS    word ptr SS:[BX + DI], SI
BTS    word ptr SS:[BP + SI], SI
BTS    word ptr SS:[BP + DI], SI
BTS    word ptr SS:[BP], SI
BTS    word ptr SS:[SI], SI
BTS    word ptr SS:[DI], SI
BTS    word ptr FS:[BX + SI], SI
BTS    word ptr FS:[BX + DI], SI
BTS    word ptr FS:[BP + SI], SI
BTS    word ptr FS:[BP + DI], SI
BTS    word ptr FS:[BP], SI
BTS    word ptr FS:[SI], SI
BTS    word ptr FS:[DI], SI
BTS    word ptr GS:[BX + SI], SI
BTS    word ptr GS:[BX + DI], SI
BTS    word ptr GS:[BP + SI], SI
BTS    word ptr GS:[BP + DI], SI
BTS    word ptr GS:[BP], SI
BTS    word ptr GS:[SI], SI
BTS    word ptr GS:[DI], SI
BTS    SI, 01h
BTS    SI, 0FFh
BTS    AX, DI
BTS    CX, DI
BTS    DX, DI
BTS    BX, DI
BTS    SP, DI
BTS    BP, DI
BTS    SI, DI
BTS    DI, DI
BTS    word ptr DS:[BX + SI + 1234h], DI
BTS    word ptr DS:[BX + DI + 1234h], DI
BTS    word ptr SS:[BP + SI + 1234h], DI
BTS    word ptr SS:[BP + DI + 1234h], DI
BTS    word ptr SS:[BP + 1234h], DI
BTS    word ptr DS:[SI + 1234h], DI
BTS    word ptr DS:[DI + 1234h], DI
BTS    word ptr CS:[BX + SI], DI
BTS    word ptr CS:[BX + DI], DI
BTS    word ptr CS:[BP + SI], DI
BTS    word ptr CS:[BP + DI], DI
BTS    word ptr CS:[BP], DI
BTS    word ptr CS:[SI], DI
BTS    word ptr CS:[DI], DI
BTS    word ptr DS:[BX + SI], DI
BTS    word ptr DS:[BX + DI], DI
BTS    word ptr DS:[BP + SI], DI
BTS    word ptr DS:[BP + DI], DI
BTS    word ptr DS:[BP], DI
BTS    word ptr DS:[SI], DI
BTS    word ptr DS:[DI], DI
BTS    word ptr ES:[BX + SI], DI
BTS    word ptr ES:[BX + DI], DI
BTS    word ptr ES:[BP + SI], DI
BTS    word ptr ES:[BP + DI], DI
BTS    word ptr ES:[BP], DI
BTS    word ptr ES:[SI], DI
BTS    word ptr ES:[DI], DI
BTS    word ptr SS:[BX + SI], DI
BTS    word ptr SS:[BX + DI], DI
BTS    word ptr SS:[BP + SI], DI
BTS    word ptr SS:[BP + DI], DI
BTS    word ptr SS:[BP], DI
BTS    word ptr SS:[SI], DI
BTS    word ptr SS:[DI], DI
BTS    word ptr FS:[BX + SI], DI
BTS    word ptr FS:[BX + DI], DI
BTS    word ptr FS:[BP + SI], DI
BTS    word ptr FS:[BP + DI], DI
BTS    word ptr FS:[BP], DI
BTS    word ptr FS:[SI], DI
BTS    word ptr FS:[DI], DI
BTS    word ptr GS:[BX + SI], DI
BTS    word ptr GS:[BX + DI], DI
BTS    word ptr GS:[BP + SI], DI
BTS    word ptr GS:[BP + DI], DI
BTS    word ptr GS:[BP], DI
BTS    word ptr GS:[SI], DI
BTS    word ptr GS:[DI], DI
BTS    DI, 01h
BTS    DI, 0FFh
BTS    EAX, 0FFh
BTS    ECX, 0FFh
BTS    EDX, 0FFh
BTS    EBX, 0FFh
BTS    ESP, 0FFh
BTS    EBP, 0FFh
BTS    ESI, 0FFh
BTS    EDI, 0FFh
