.MODEL TINY
.486
.CODE 
    ORG 100H        
Start:
    LOCK    BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0FFh
    LOCK    BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0FFh
    BTC     DS:[1234h], AX
    BTC     CS:[12345678h], AX
    BTC     DWORD PTR ES:[0123h], 01h
    BTC     DWORD PTR SS:[12345678h], 10h
    BTC     AX, AX
    BTC     CX, AX
    BTC     DX, AX
    BTC     BX, AX
    BTC     SP, AX
    BTC     BP, AX
    BTC     SI, AX
    BTC     DI, AX
    BTC     DS:[BX + SI], AX
    BTC     DS:[BX + DI], AX
    BTC     SS:[BP + SI], AX
    BTC     SS:[BP + DI], AX
    BTC     SS:[BP], AX
    BTC     DS:[SI], AX
    BTC     DS:[DI], AX
    BTC     DS:[BX + SI + 1234h], AX
    BTC     DS:[BX + DI + 1234h], AX
    BTC     SS:[BP + SI + 1234h], AX
    BTC     SS:[BP + DI + 1234h], AX
    BTC     SS:[BP + 1234h], AX
    BTC     DS:[SI + 1234h], AX
    BTC     DS:[DI + 1234h], AX
    BTC     DS:[EAX + EAX*2 + 00000100h], AX
    BTC     DS:[EBX + EBP*4 + 12345678h], AX
    BTC     SS:[EBP + EBP], AX
    BTC     SS:[ESP + EBP], AX
    BTC     DS:[EDX + EBX*8], AX
    BTC     DS:[EBX + ECX*2 + 01h], AX
    BTC     DS:[ECX + EDX*4 + 00000100h], AX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], AX
    BTC     SS:[EBP + EBP + 10203040h], AX
    LOCK    BTC DS:[BX + SI], AX
    LOCK    BTC DS:[BX + DI], AX
    LOCK    BTC SS:[BP + SI], AX
    LOCK    BTC SS:[BP + DI], AX
    LOCK    BTC SS:[BP], AX
    LOCK    BTC DS:[SI], AX
    LOCK    BTC DS:[DI], AX
    LOCK    BTC DS:[BX + SI + 1234h], AX
    LOCK    BTC DS:[BX + DI + 1234h], AX
    LOCK    BTC SS:[BP + SI + 1234h], AX
    LOCK    BTC SS:[BP + DI + 1234h], AX
    LOCK    BTC SS:[BP + 1234h], AX
    LOCK    BTC DS:[SI + 1234h], AX
    LOCK    BTC DS:[DI + 1234h], AX
    BTC     CS:[BX + SI], AX
    BTC     CS:[BX + DI], AX
    BTC     CS:[BP + SI], AX
    BTC     CS:[BP + DI], AX
    BTC     CS:[BP], AX
    BTC     CS:[SI], AX
    BTC     CS:[DI], AX
    BTC     DS:[BX + SI], AX
    BTC     DS:[BX + DI], AX
    BTC     DS:[BP + SI], AX
    BTC     DS:[BP + DI], AX
    BTC     DS:[BP], AX
    BTC     DS:[SI], AX
    BTC     DS:[DI], AX
    BTC     ES:[BX + SI], AX
    BTC     ES:[BX + DI], AX
    BTC     ES:[BP + SI], AX
    BTC     ES:[BP + DI], AX
    BTC     ES:[BP], AX
    BTC     ES:[SI], AX
    BTC     ES:[DI], AX
    BTC     SS:[BX + SI], AX
    BTC     SS:[BX + DI], AX
    BTC     SS:[BP + SI], AX
    BTC     SS:[BP + DI], AX
    BTC     SS:[BP], AX
    BTC     SS:[SI], AX
    BTC     SS:[DI], AX
    BTC     FS:[BX + SI], AX
    BTC     FS:[BX + DI], AX
    BTC     FS:[BP + SI], AX
    BTC     FS:[BP + DI], AX
    BTC     FS:[BP], AX
    BTC     FS:[SI], AX
    BTC     FS:[DI], AX
    BTC     GS:[BX + SI], AX
    BTC     GS:[BX + DI], AX
    BTC     GS:[BP + SI], AX
    BTC     GS:[BP + DI], AX
    BTC     GS:[BP], AX
    BTC     GS:[SI], AX
    BTC     GS:[DI], AX
    BTC     AX, 01h
    BTC     AX, 0FFh
    BTC     AX, CX
    BTC     CX, CX
    BTC     DX, CX
    BTC     BX, CX
    BTC     SP, CX
    BTC     BP, CX
    BTC     SI, CX
    BTC     DI, CX
    BTC     DS:[BX + SI], CX
    BTC     DS:[BX + DI], CX
    BTC     SS:[BP + SI], CX
    BTC     SS:[BP + DI], CX
    BTC     SS:[BP], CX
    BTC     DS:[SI], CX
    BTC     DS:[DI], CX
    BTC     DS:[BX + SI + 1234h], CX
    BTC     DS:[BX + DI + 1234h], CX
    BTC     SS:[BP + SI + 1234h], CX
    BTC     SS:[BP + DI + 1234h], CX
    BTC     SS:[BP + 1234h], CX
    BTC     DS:[SI + 1234h], CX
    BTC     DS:[DI + 1234h], CX
    BTC     DS:[EAX + EAX*2 + 00000100h], CX
    BTC     DS:[EBX + EBP*4 + 12345678h], CX
    BTC     SS:[EBP + EBP], CX
    BTC     SS:[ESP + EBP], CX
    BTC     DS:[EDX + EBX*8], CX
    BTC     DS:[EBX + ECX*2 + 01h], CX
    BTC     DS:[ECX + EDX*4 + 00000100h], CX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], CX
    BTC     SS:[EBP + EBP + 10203040h], CX
    LOCK    BTC DS:[BX + SI], CX
    LOCK    BTC DS:[BX + DI], CX
    LOCK    BTC SS:[BP + SI], CX
    LOCK    BTC SS:[BP + DI], CX
    LOCK    BTC SS:[BP], CX
    LOCK    BTC DS:[SI], CX
    LOCK    BTC DS:[DI], CX
    LOCK    BTC DS:[BX + SI + 1234h], CX
    LOCK    BTC DS:[BX + DI + 1234h], CX
    LOCK    BTC SS:[BP + SI + 1234h], CX
    LOCK    BTC SS:[BP + DI + 1234h], CX
    LOCK    BTC SS:[BP + 1234h], CX
    LOCK    BTC DS:[SI + 1234h], CX
    LOCK    BTC DS:[DI + 1234h], CX
    BTC     CS:[BX + SI], CX
    BTC     CS:[BX + DI], CX
    BTC     CS:[BP + SI], CX
    BTC     CS:[BP + DI], CX
    BTC     CS:[BP], CX
    BTC     CS:[SI], CX
    BTC     CS:[DI], CX
    BTC     DS:[BX + SI], CX
    BTC     DS:[BX + DI], CX
    BTC     DS:[BP + SI], CX
    BTC     DS:[BP + DI], CX
    BTC     DS:[BP], CX
    BTC     DS:[SI], CX
    BTC     DS:[DI], CX
    BTC     ES:[BX + SI], CX
    BTC     ES:[BX + DI], CX
    BTC     ES:[BP + SI], CX
    BTC     ES:[BP + DI], CX
    BTC     ES:[BP], CX
    BTC     ES:[SI], CX
    BTC     ES:[DI], CX
    BTC     SS:[BX + SI], CX
    BTC     SS:[BX + DI], CX
    BTC     SS:[BP + SI], CX
    BTC     SS:[BP + DI], CX
    BTC     SS:[BP], CX
    BTC     SS:[SI], CX
    BTC     SS:[DI], CX
    BTC     FS:[BX + SI], CX
    BTC     FS:[BX + DI], CX
    BTC     FS:[BP + SI], CX
    BTC     FS:[BP + DI], CX
    BTC     FS:[BP], CX
    BTC     FS:[SI], CX
    BTC     FS:[DI], CX
    BTC     GS:[BX + SI], CX
    BTC     GS:[BX + DI], CX
    BTC     GS:[BP + SI], CX
    BTC     GS:[BP + DI], CX
    BTC     GS:[BP], CX
    BTC     GS:[SI], CX
    BTC     GS:[DI], CX
    BTC     CX, 01h
    BTC     CX, 0FFh
    BTC     AX, DX
    BTC     CX, DX
    BTC     DX, DX
    BTC     BX, DX
    BTC     SP, DX
    BTC     BP, DX
    BTC     SI, DX
    BTC     DI, DX
    BTC     DS:[BX + SI], DX
    BTC     DS:[BX + DI], DX
    BTC     SS:[BP + SI], DX
    BTC     SS:[BP + DI], DX
    BTC     SS:[BP], DX
    BTC     DS:[SI], DX
    BTC     DS:[DI], DX
    BTC     DS:[BX + SI + 1234h], DX
    BTC     DS:[BX + DI + 1234h], DX
    BTC     SS:[BP + SI + 1234h], DX
    BTC     SS:[BP + DI + 1234h], DX
    BTC     SS:[BP + 1234h], DX
    BTC     DS:[SI + 1234h], DX
    BTC     DS:[DI + 1234h], DX
    BTC     DS:[EAX + EAX*2 + 00000100h], DX
    BTC     DS:[EBX + EBP*4 + 12345678h], DX
    BTC     SS:[EBP + EBP], DX
    BTC     SS:[ESP + EBP], DX
    BTC     DS:[EDX + EBX*8], DX
    BTC     DS:[EBX + ECX*2 + 01h], DX
    BTC     DS:[ECX + EDX*4 + 00000100h], DX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], DX
    BTC     SS:[EBP + EBP + 10203040h], DX
    LOCK    BTC DS:[BX + SI], DX
    LOCK    BTC DS:[BX + DI], DX
    LOCK    BTC SS:[BP + SI], DX
    LOCK    BTC SS:[BP + DI], DX
    LOCK    BTC SS:[BP], DX
    LOCK    BTC DS:[SI], DX
    LOCK    BTC DS:[DI], DX
    LOCK    BTC DS:[BX + SI + 1234h], DX
    LOCK    BTC DS:[BX + DI + 1234h], DX
    LOCK    BTC SS:[BP + SI + 1234h], DX
    LOCK    BTC SS:[BP + DI + 1234h], DX
    LOCK    BTC SS:[BP + 1234h], DX
    LOCK    BTC DS:[SI + 1234h], DX
    LOCK    BTC DS:[DI + 1234h], DX
    BTC     CS:[BX + SI], DX
    BTC     CS:[BX + DI], DX
    BTC     CS:[BP + SI], DX
    BTC     CS:[BP + DI], DX
    BTC     CS:[BP], DX
    BTC     CS:[SI], DX
    BTC     CS:[DI], DX
    BTC     DS:[BX + SI], DX
    BTC     DS:[BX + DI], DX
    BTC     DS:[BP + SI], DX
    BTC     DS:[BP + DI], DX
    BTC     DS:[BP], DX
    BTC     DS:[SI], DX
    BTC     DS:[DI], DX
    BTC     ES:[BX + SI], DX
    BTC     ES:[BX + DI], DX
    BTC     ES:[BP + SI], DX
    BTC     ES:[BP + DI], DX
    BTC     ES:[BP], DX
    BTC     ES:[SI], DX
    BTC     ES:[DI], DX
    BTC     SS:[BX + SI], DX
    BTC     SS:[BX + DI], DX
    BTC     SS:[BP + SI], DX
    BTC     SS:[BP + DI], DX
    BTC     SS:[BP], DX
    BTC     SS:[SI], DX
    BTC     SS:[DI], DX
    BTC     FS:[BX + SI], DX
    BTC     FS:[BX + DI], DX
    BTC     FS:[BP + SI], DX
    BTC     FS:[BP + DI], DX
    BTC     FS:[BP], DX
    BTC     FS:[SI], DX
    BTC     FS:[DI], DX
    BTC     GS:[BX + SI], DX
    BTC     GS:[BX + DI], DX
    BTC     GS:[BP + SI], DX
    BTC     GS:[BP + DI], DX
    BTC     GS:[BP], DX
    BTC     GS:[SI], DX
    BTC     GS:[DI], DX
    BTC     DX, 01h
    BTC     DX, 0FFh
    BTC     AX, BX
    BTC     CX, BX
    BTC     DX, BX
    BTC     BX, BX
    BTC     SP, BX
    BTC     BP, BX
    BTC     SI, BX
    BTC     DI, BX
    BTC     DS:[BX + SI], BX
    BTC     DS:[BX + DI], BX
    BTC     SS:[BP + SI], BX
    BTC     SS:[BP + DI], BX
    BTC     SS:[BP], BX
    BTC     DS:[SI], BX
    BTC     DS:[DI], BX
    BTC     DS:[BX + SI + 1234h], BX
    BTC     DS:[BX + DI + 1234h], BX
    BTC     SS:[BP + SI + 1234h], BX
    BTC     SS:[BP + DI + 1234h], BX
    BTC     SS:[BP + 1234h], BX
    BTC     DS:[SI + 1234h], BX
    BTC     DS:[DI + 1234h], BX
    BTC     DS:[EAX + EAX*2 + 00000100h], BX
    BTC     DS:[EBX + EBP*4 + 12345678h], BX
    BTC     SS:[EBP + EBP], BX
    BTC     SS:[ESP + EBP], BX
    BTC     DS:[EDX + EBX*8], BX
    BTC     DS:[EBX + ECX*2 + 01h], BX
    BTC     DS:[ECX + EDX*4 + 00000100h], BX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], BX
    BTC     SS:[EBP + EBP + 10203040h], BX
    LOCK    BTC DS:[BX + SI], BX
    LOCK    BTC DS:[BX + DI], BX
    LOCK    BTC SS:[BP + SI], BX
    LOCK    BTC SS:[BP + DI], BX
    LOCK    BTC SS:[BP], BX
    LOCK    BTC DS:[SI], BX
    LOCK    BTC DS:[DI], BX
    LOCK    BTC DS:[BX + SI + 1234h], BX
    LOCK    BTC DS:[BX + DI + 1234h], BX
    LOCK    BTC SS:[BP + SI + 1234h], BX
    LOCK    BTC SS:[BP + DI + 1234h], BX
    LOCK    BTC SS:[BP + 1234h], BX
    LOCK    BTC DS:[SI + 1234h], BX
    LOCK    BTC DS:[DI + 1234h], BX
    BTC     CS:[BX + SI], BX
    BTC     CS:[BX + DI], BX
    BTC     CS:[BP + SI], BX
    BTC     CS:[BP + DI], BX
    BTC     CS:[BP], BX
    BTC     CS:[SI], BX
    BTC     CS:[DI], BX
    BTC     DS:[BX + SI], BX
    BTC     DS:[BX + DI], BX
    BTC     DS:[BP + SI], BX
    BTC     DS:[BP + DI], BX
    BTC     DS:[BP], BX
    BTC     DS:[SI], BX
    BTC     DS:[DI], BX
    BTC     ES:[BX + SI], BX
    BTC     ES:[BX + DI], BX
    BTC     ES:[BP + SI], BX
    BTC     ES:[BP + DI], BX
    BTC     ES:[BP], BX
    BTC     ES:[SI], BX
    BTC     ES:[DI], BX
    BTC     SS:[BX + SI], BX
    BTC     SS:[BX + DI], BX
    BTC     SS:[BP + SI], BX
    BTC     SS:[BP + DI], BX
    BTC     SS:[BP], BX
    BTC     SS:[SI], BX
    BTC     SS:[DI], BX
    BTC     FS:[BX + SI], BX
    BTC     FS:[BX + DI], BX
    BTC     FS:[BP + SI], BX
    BTC     FS:[BP + DI], BX
    BTC     FS:[BP], BX
    BTC     FS:[SI], BX
    BTC     FS:[DI], BX
    BTC     GS:[BX + SI], BX
    BTC     GS:[BX + DI], BX
    BTC     GS:[BP + SI], BX
    BTC     GS:[BP + DI], BX
    BTC     GS:[BP], BX
    BTC     GS:[SI], BX
    BTC     GS:[DI], BX
    BTC     BX, 01h
    BTC     BX, 0FFh
    BTC     AX, SP
    BTC     CX, SP
    BTC     DX, SP
    BTC     BX, SP
    BTC     SP, SP
    BTC     BP, SP
    BTC     SI, SP
    BTC     DI, SP
    BTC     DS:[BX + SI], SP
    BTC     DS:[BX + DI], SP
    BTC     SS:[BP + SI], SP
    BTC     SS:[BP + DI], SP
    BTC     SS:[BP], SP
    BTC     DS:[SI], SP
    BTC     DS:[DI], SP
    BTC     DS:[BX + SI + 1234h], SP
    BTC     DS:[BX + DI + 1234h], SP
    BTC     SS:[BP + SI + 1234h], SP
    BTC     SS:[BP + DI + 1234h], SP
    BTC     SS:[BP + 1234h], SP
    BTC     DS:[SI + 1234h], SP
    BTC     DS:[DI + 1234h], SP
    BTC     DS:[EAX + EAX*2 + 00000100h], SP
    BTC     DS:[EBX + EBP*4 + 12345678h], SP
    BTC     SS:[EBP + EBP], SP
    BTC     SS:[ESP + EBP], SP
    BTC     DS:[EDX + EBX*8], SP
    BTC     DS:[EBX + ECX*2 + 01h], SP
    BTC     DS:[ECX + EDX*4 + 00000100h], SP
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], SP
    BTC     SS:[EBP + EBP + 10203040h], SP
    LOCK    BTC DS:[BX + SI], SP
    LOCK    BTC DS:[BX + DI], SP
    LOCK    BTC SS:[BP + SI], SP
    LOCK    BTC SS:[BP + DI], SP
    LOCK    BTC SS:[BP], SP
    LOCK    BTC DS:[SI], SP
    LOCK    BTC DS:[DI], SP
    LOCK    BTC DS:[BX + SI + 1234h], SP
    LOCK    BTC DS:[BX + DI + 1234h], SP
    LOCK    BTC SS:[BP + SI + 1234h], SP
    LOCK    BTC SS:[BP + DI + 1234h], SP
    LOCK    BTC SS:[BP + 1234h], SP
    LOCK    BTC DS:[SI + 1234h], SP
    LOCK    BTC DS:[DI + 1234h], SP
    BTC     CS:[BX + SI], SP
    BTC     CS:[BX + DI], SP
    BTC     CS:[BP + SI], SP
    BTC     CS:[BP + DI], SP
    BTC     CS:[BP], SP
    BTC     CS:[SI], SP
    BTC     CS:[DI], SP
    BTC     DS:[BX + SI], SP
    BTC     DS:[BX + DI], SP
    BTC     DS:[BP + SI], SP
    BTC     DS:[BP + DI], SP
    BTC     DS:[BP], SP
    BTC     DS:[SI], SP
    BTC     DS:[DI], SP
    BTC     ES:[BX + SI], SP
    BTC     ES:[BX + DI], SP
    BTC     ES:[BP + SI], SP
    BTC     ES:[BP + DI], SP
    BTC     ES:[BP], SP
    BTC     ES:[SI], SP
    BTC     ES:[DI], SP
    BTC     SS:[BX + SI], SP
    BTC     SS:[BX + DI], SP
    BTC     SS:[BP + SI], SP
    BTC     SS:[BP + DI], SP
    BTC     SS:[BP], SP
    BTC     SS:[SI], SP
    BTC     SS:[DI], SP
    BTC     FS:[BX + SI], SP
    BTC     FS:[BX + DI], SP
    BTC     FS:[BP + SI], SP
    BTC     FS:[BP + DI], SP
    BTC     FS:[BP], SP
    BTC     FS:[SI], SP
    BTC     FS:[DI], SP
    BTC     GS:[BX + SI], SP
    BTC     GS:[BX + DI], SP
    BTC     GS:[BP + SI], SP
    BTC     GS:[BP + DI], SP
    BTC     GS:[BP], SP
    BTC     GS:[SI], SP
    BTC     GS:[DI], SP
    BTC     SP, 01h
    BTC     SP, 0FFh
    BTC     AX, BP
    BTC     CX, BP
    BTC     DX, BP
    BTC     BX, BP
    BTC     SP, BP
    BTC     BP, BP
    BTC     SI, BP
    BTC     DI, BP
    BTC     DS:[BX + SI], BP
    BTC     DS:[BX + DI], BP
    BTC     SS:[BP + SI], BP
    BTC     SS:[BP + DI], BP
    BTC     SS:[BP], BP
    BTC     DS:[SI], BP
    BTC     DS:[DI], BP
    BTC     DS:[BX + SI + 1234h], BP
    BTC     DS:[BX + DI + 1234h], BP
    BTC     SS:[BP + SI + 1234h], BP
    BTC     SS:[BP + DI + 1234h], BP
    BTC     SS:[BP + 1234h], BP
    BTC     DS:[SI + 1234h], BP
    BTC     DS:[DI + 1234h], BP
    BTC     DS:[EAX + EAX*2 + 00000100h], BP
    BTC     DS:[EBX + EBP*4 + 12345678h], BP
    BTC     SS:[EBP + EBP], BP
    BTC     SS:[ESP + EBP], BP
    BTC     DS:[EDX + EBX*8], BP
    BTC     DS:[EBX + ECX*2 + 01h], BP
    BTC     DS:[ECX + EDX*4 + 00000100h], BP
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], BP
    BTC     SS:[EBP + EBP + 10203040h], BP
    LOCK    BTC DS:[BX + SI], BP
    LOCK    BTC DS:[BX + DI], BP
    LOCK    BTC SS:[BP + SI], BP
    LOCK    BTC SS:[BP + DI], BP
    LOCK    BTC SS:[BP], BP
    LOCK    BTC DS:[SI], BP
    LOCK    BTC DS:[DI], BP
    LOCK    BTC DS:[BX + SI + 1234h], BP
    LOCK    BTC DS:[BX + DI + 1234h], BP
    LOCK    BTC SS:[BP + SI + 1234h], BP
    LOCK    BTC SS:[BP + DI + 1234h], BP
    LOCK    BTC SS:[BP + 1234h], BP
    LOCK    BTC DS:[SI + 1234h], BP
    LOCK    BTC DS:[DI + 1234h], BP
    BTC     CS:[BX + SI], BP
    BTC     CS:[BX + DI], BP
    BTC     CS:[BP + SI], BP
    BTC     CS:[BP + DI], BP
    BTC     CS:[BP], BP
    BTC     CS:[SI], BP
    BTC     CS:[DI], BP
    BTC     DS:[BX + SI], BP
    BTC     DS:[BX + DI], BP
    BTC     DS:[BP + SI], BP
    BTC     DS:[BP + DI], BP
    BTC     DS:[BP], BP
    BTC     DS:[SI], BP
    BTC     DS:[DI], BP
    BTC     ES:[BX + SI], BP
    BTC     ES:[BX + DI], BP
    BTC     ES:[BP + SI], BP
    BTC     ES:[BP + DI], BP
    BTC     ES:[BP], BP
    BTC     ES:[SI], BP
    BTC     ES:[DI], BP
    BTC     SS:[BX + SI], BP
    BTC     SS:[BX + DI], BP
    BTC     SS:[BP + SI], BP
    BTC     SS:[BP + DI], BP
    BTC     SS:[BP], BP
    BTC     SS:[SI], BP
    BTC     SS:[DI], BP
    BTC     FS:[BX + SI], BP
    BTC     FS:[BX + DI], BP
    BTC     FS:[BP + SI], BP
    BTC     FS:[BP + DI], BP
    BTC     FS:[BP], BP
    BTC     FS:[SI], BP
    BTC     FS:[DI], BP
    BTC     GS:[BX + SI], BP
    BTC     GS:[BX + DI], BP
    BTC     GS:[BP + SI], BP
    BTC     GS:[BP + DI], BP
    BTC     GS:[BP], BP
    BTC     GS:[SI], BP
    BTC     GS:[DI], BP
    BTC     BP, 01h
    BTC     BP, 0FFh
    BTC     AX, SI
    BTC     CX, SI
    BTC     DX, SI
    BTC     BX, SI
    BTC     SP, SI
    BTC     BP, SI
    BTC     SI, SI
    BTC     DI, SI
    BTC     DS:[BX + SI], SI
    BTC     DS:[BX + DI], SI
    BTC     SS:[BP + SI], SI
    BTC     SS:[BP + DI], SI
    BTC     SS:[BP], SI
    BTC     DS:[SI], SI
    BTC     DS:[DI], SI
    BTC     DS:[BX + SI + 1234h], SI
    BTC     DS:[BX + DI + 1234h], SI
    BTC     SS:[BP + SI + 1234h], SI
    BTC     SS:[BP + DI + 1234h], SI
    BTC     SS:[BP + 1234h], SI
    BTC     DS:[SI + 1234h], SI
    BTC     DS:[DI + 1234h], SI
    BTC     DS:[EAX + EAX*2 + 00000100h], SI
    BTC     DS:[EBX + EBP*4 + 12345678h], SI
    BTC     SS:[EBP + EBP], SI
    BTC     SS:[ESP + EBP], SI
    BTC     DS:[EDX + EBX*8], SI
    BTC     DS:[EBX + ECX*2 + 01h], SI
    BTC     DS:[ECX + EDX*4 + 00000100h], SI
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], SI
    BTC     SS:[EBP + EBP + 10203040h], SI
    LOCK    BTC DS:[BX + SI], SI
    LOCK    BTC DS:[BX + DI], SI
    LOCK    BTC SS:[BP + SI], SI
    LOCK    BTC SS:[BP + DI], SI
    LOCK    BTC SS:[BP], SI
    LOCK    BTC DS:[SI], SI
    LOCK    BTC DS:[DI], SI
    LOCK    BTC DS:[BX + SI + 1234h], SI
    LOCK    BTC DS:[BX + DI + 1234h], SI
    LOCK    BTC SS:[BP + SI + 1234h], SI
    LOCK    BTC SS:[BP + DI + 1234h], SI
    LOCK    BTC SS:[BP + 1234h], SI
    LOCK    BTC DS:[SI + 1234h], SI
    LOCK    BTC DS:[DI + 1234h], SI
    BTC     CS:[BX + SI], SI
    BTC     CS:[BX + DI], SI
    BTC     CS:[BP + SI], SI
    BTC     CS:[BP + DI], SI
    BTC     CS:[BP], SI
    BTC     CS:[SI], SI
    BTC     CS:[DI], SI
    BTC     DS:[BX + SI], SI
    BTC     DS:[BX + DI], SI
    BTC     DS:[BP + SI], SI
    BTC     DS:[BP + DI], SI
    BTC     DS:[BP], SI
    BTC     DS:[SI], SI
    BTC     DS:[DI], SI
    BTC     ES:[BX + SI], SI
    BTC     ES:[BX + DI], SI
    BTC     ES:[BP + SI], SI
    BTC     ES:[BP + DI], SI
    BTC     ES:[BP], SI
    BTC     ES:[SI], SI
    BTC     ES:[DI], SI
    BTC     SS:[BX + SI], SI
    BTC     SS:[BX + DI], SI
    BTC     SS:[BP + SI], SI
    BTC     SS:[BP + DI], SI
    BTC     SS:[BP], SI
    BTC     SS:[SI], SI
    BTC     SS:[DI], SI
    BTC     FS:[BX + SI], SI
    BTC     FS:[BX + DI], SI
    BTC     FS:[BP + SI], SI
    BTC     FS:[BP + DI], SI
    BTC     FS:[BP], SI
    BTC     FS:[SI], SI
    BTC     FS:[DI], SI
    BTC     GS:[BX + SI], SI
    BTC     GS:[BX + DI], SI
    BTC     GS:[BP + SI], SI
    BTC     GS:[BP + DI], SI
    BTC     GS:[BP], SI
    BTC     GS:[SI], SI
    BTC     GS:[DI], SI
    BTC     SI, 01h
    BTC     SI, 0FFh
    BTC     AX, DI
    BTC     CX, DI
    BTC     DX, DI
    BTC     BX, DI
    BTC     SP, DI
    BTC     BP, DI
    BTC     SI, DI
    BTC     DI, DI
    BTC     DS:[BX + SI], DI
    BTC     DS:[BX + DI], DI
    BTC     SS:[BP + SI], DI
    BTC     SS:[BP + DI], DI
    BTC     SS:[BP], DI
    BTC     DS:[SI], DI
    BTC     DS:[DI], DI
    BTC     DS:[BX + SI + 1234h], DI
    BTC     DS:[BX + DI + 1234h], DI
    BTC     SS:[BP + SI + 1234h], DI
    BTC     SS:[BP + DI + 1234h], DI
    BTC     SS:[BP + 1234h], DI
    BTC     DS:[SI + 1234h], DI
    BTC     DS:[DI + 1234h], DI
    BTC     DS:[EAX + EAX*2 + 00000100h], DI
    BTC     DS:[EBX + EBP*4 + 12345678h], DI
    BTC     SS:[EBP + EBP], DI
    BTC     SS:[ESP + EBP], DI
    BTC     DS:[EDX + EBX*8], DI
    BTC     DS:[EBX + ECX*2 + 01h], DI
    BTC     DS:[ECX + EDX*4 + 00000100h], DI
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], DI
    BTC     SS:[EBP + EBP + 10203040h], DI
    LOCK    BTC DS:[BX + SI], DI
    LOCK    BTC DS:[BX + DI], DI
    LOCK    BTC SS:[BP + SI], DI
    LOCK    BTC SS:[BP + DI], DI
    LOCK    BTC SS:[BP], DI
    LOCK    BTC DS:[SI], DI
    LOCK    BTC DS:[DI], DI
    LOCK    BTC DS:[BX + SI + 1234h], DI
    LOCK    BTC DS:[BX + DI + 1234h], DI
    LOCK    BTC SS:[BP + SI + 1234h], DI
    LOCK    BTC SS:[BP + DI + 1234h], DI
    LOCK    BTC SS:[BP + 1234h], DI
    LOCK    BTC DS:[SI + 1234h], DI
    LOCK    BTC DS:[DI + 1234h], DI
    BTC     CS:[BX + SI], DI
    BTC     CS:[BX + DI], DI
    BTC     CS:[BP + SI], DI
    BTC     CS:[BP + DI], DI
    BTC     CS:[BP], DI
    BTC     CS:[SI], DI
    BTC     CS:[DI], DI
    BTC     DS:[BX + SI], DI
    BTC     DS:[BX + DI], DI
    BTC     DS:[BP + SI], DI
    BTC     DS:[BP + DI], DI
    BTC     DS:[BP], DI
    BTC     DS:[SI], DI
    BTC     DS:[DI], DI
    BTC     ES:[BX + SI], DI
    BTC     ES:[BX + DI], DI
    BTC     ES:[BP + SI], DI
    BTC     ES:[BP + DI], DI
    BTC     ES:[BP], DI
    BTC     ES:[SI], DI
    BTC     ES:[DI], DI
    BTC     SS:[BX + SI], DI
    BTC     SS:[BX + DI], DI
    BTC     SS:[BP + SI], DI
    BTC     SS:[BP + DI], DI
    BTC     SS:[BP], DI
    BTC     SS:[SI], DI
    BTC     SS:[DI], DI
    BTC     FS:[BX + SI], DI
    BTC     FS:[BX + DI], DI
    BTC     FS:[BP + SI], DI
    BTC     FS:[BP + DI], DI
    BTC     FS:[BP], DI
    BTC     FS:[SI], DI
    BTC     FS:[DI], DI
    BTC     GS:[BX + SI], DI
    BTC     GS:[BX + DI], DI
    BTC     GS:[BP + SI], DI
    BTC     GS:[BP + DI], DI
    BTC     GS:[BP], DI
    BTC     GS:[SI], DI
    BTC     GS:[DI], DI
    BTC     DI, 01h
    BTC     DI, 0FFh
    BTC     EAX, EAX
    BTC     ECX, EAX
    BTC     EDX, EAX
    BTC     EBX, EAX
    BTC     ESP, EAX
    BTC     EBP, EAX
    BTC     ESI, EAX
    BTC     EDI, EAX
    BTC     DS:[EAX], EAX
    BTC     DS:[EAX + 00001234h], ECX
    BTC     CS:[EAX], EBX
    BTC     DS:[EAX], EDX
    BTC     ES:[EAX], ESP
    BTC     SS:[EAX], EBP
    BTC     FS:[EAX], ESI
    BTC     GS:[EAX], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], EAX
    BTC     DS:[EBX + EBP*4 + 12345678h], EAX
    BTC     SS:[EBP + EBP], EAX
    BTC     SS:[ESP + EBP], EAX
    BTC     DS:[EDX + EBX*8], EAX
    BTC     DS:[EBX + ECX*2 + 01h], EAX
    BTC     DS:[ECX + EDX*4 + 00000100h], EAX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EAX
    BTC     SS:[EBP + EBP + 10203040h], EAX
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], EAX
    LOCK    BTC DS:[BX + DI], EAX
    LOCK    BTC SS:[BP + SI], EAX
    LOCK    BTC SS:[BP + DI], EAX
    LOCK    BTC SS:[BP], EAX
    LOCK    BTC DS:[SI], EAX
    LOCK    BTC DS:[DI], EAX
    LOCK    BTC DS:[BX + SI + 1234h], EAX
    LOCK    BTC DS:[BX + DI + 1234h], EAX
    LOCK    BTC SS:[BP + SI + 1234h], EAX
    LOCK    BTC SS:[BP + DI + 1234h], EAX
    LOCK    BTC SS:[BP + 1234h], EAX
    LOCK    BTC DS:[SI + 1234h], EAX
    LOCK    BTC DS:[DI + 1234h], EAX
    BTC     EAX, 01h
    BTC     EAX, 0FFh
    BTC     EAX, ECX
    BTC     ECX, ECX
    BTC     EDX, ECX
    BTC     EBX, ECX
    BTC     ESP, ECX
    BTC     EBP, ECX
    BTC     ESI, ECX
    BTC     EDI, ECX
    BTC     DS:[ECX], EAX
    BTC     DS:[ECX + 00001234h], ECX
    BTC     CS:[ECX], EBX
    BTC     DS:[ECX], EDX
    BTC     ES:[ECX], ESP
    BTC     SS:[ECX], EBP
    BTC     FS:[ECX], ESI
    BTC     GS:[ECX], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], ECX
    BTC     DS:[EBX + EBP*4 + 12345678h], ECX
    BTC     SS:[EBP + EBP], ECX
    BTC     SS:[ESP + EBP], ECX
    BTC     DS:[EDX + EBX*8], ECX
    BTC     DS:[EBX + ECX*2 + 01h], ECX
    BTC     DS:[ECX + EDX*4 + 00000100h], ECX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ECX
    BTC     SS:[EBP + EBP + 10203040h], ECX
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], ECX
    LOCK    BTC DS:[BX + DI], ECX
    LOCK    BTC SS:[BP + SI], ECX
    LOCK    BTC SS:[BP + DI], ECX
    LOCK    BTC SS:[BP], ECX
    LOCK    BTC DS:[SI], ECX
    LOCK    BTC DS:[DI], ECX
    LOCK    BTC DS:[BX + SI + 1234h], ECX
    LOCK    BTC DS:[BX + DI + 1234h], ECX
    LOCK    BTC SS:[BP + SI + 1234h], ECX
    LOCK    BTC SS:[BP + DI + 1234h], ECX
    LOCK    BTC SS:[BP + 1234h], ECX
    LOCK    BTC DS:[SI + 1234h], ECX
    LOCK    BTC DS:[DI + 1234h], ECX
    BTC     ECX, 01h
    BTC     ECX, 0FFh
    BTC     EAX, EDX
    BTC     ECX, EDX
    BTC     EDX, EDX
    BTC     EBX, EDX
    BTC     ESP, EDX
    BTC     EBP, EDX
    BTC     ESI, EDX
    BTC     EDI, EDX
    BTC     DS:[EDX], EAX
    BTC     DS:[EDX + 00001234h], ECX
    BTC     CS:[EDX], EBX
    BTC     DS:[EDX], EDX
    BTC     ES:[EDX], ESP
    BTC     SS:[EDX], EBP
    BTC     FS:[EDX], ESI
    BTC     GS:[EDX], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], EDX
    BTC     DS:[EBX + EBP*4 + 12345678h], EDX
    BTC     SS:[EBP + EBP], EDX
    BTC     SS:[ESP + EBP], EDX
    BTC     DS:[EDX + EBX*8], EDX
    BTC     DS:[EBX + ECX*2 + 01h], EDX
    BTC     DS:[ECX + EDX*4 + 00000100h], EDX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EDX
    BTC     SS:[EBP + EBP + 10203040h], EDX
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], EDX
    LOCK    BTC DS:[BX + DI], EDX
    LOCK    BTC SS:[BP + SI], EDX
    LOCK    BTC SS:[BP + DI], EDX
    LOCK    BTC SS:[BP], EDX
    LOCK    BTC DS:[SI], EDX
    LOCK    BTC DS:[DI], EDX
    LOCK    BTC DS:[BX + SI + 1234h], EDX
    LOCK    BTC DS:[BX + DI + 1234h], EDX
    LOCK    BTC SS:[BP + SI + 1234h], EDX
    LOCK    BTC SS:[BP + DI + 1234h], EDX
    LOCK    BTC SS:[BP + 1234h], EDX
    LOCK    BTC DS:[SI + 1234h], EDX
    LOCK    BTC DS:[DI + 1234h], EDX
    BTC     EDX, 01h
    BTC     EDX, 0FFh
    BTC     EAX, EBX
    BTC     ECX, EBX
    BTC     EDX, EBX
    BTC     EBX, EBX
    BTC     ESP, EBX
    BTC     EBP, EBX
    BTC     ESI, EBX
    BTC     EDI, EBX
    BTC     DS:[EBX], EAX
    BTC     DS:[EBX + 00001234h], ECX
    BTC     CS:[EBX], EBX
    BTC     DS:[EBX], EDX
    BTC     ES:[EBX], ESP
    BTC     SS:[EBX], EBP
    BTC     FS:[EBX], ESI
    BTC     GS:[EBX], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], EBX
    BTC     DS:[EBX + EBP*4 + 12345678h], EBX
    BTC     SS:[EBP + EBP], EBX
    BTC     SS:[ESP + EBP], EBX
    BTC     DS:[EDX + EBX*8], EBX
    BTC     DS:[EBX + ECX*2 + 01h], EBX
    BTC     DS:[ECX + EDX*4 + 00000100h], EBX
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EBX
    BTC     SS:[EBP + EBP + 10203040h], EBX
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], EBX
    LOCK    BTC DS:[BX + DI], EBX
    LOCK    BTC SS:[BP + SI], EBX
    LOCK    BTC SS:[BP + DI], EBX
    LOCK    BTC SS:[BP], EBX
    LOCK    BTC DS:[SI], EBX
    LOCK    BTC DS:[DI], EBX
    LOCK    BTC DS:[BX + SI + 1234h], EBX
    LOCK    BTC DS:[BX + DI + 1234h], EBX
    LOCK    BTC SS:[BP + SI + 1234h], EBX
    LOCK    BTC SS:[BP + DI + 1234h], EBX
    LOCK    BTC SS:[BP + 1234h], EBX
    LOCK    BTC DS:[SI + 1234h], EBX
    LOCK    BTC DS:[DI + 1234h], EBX
    BTC     EBX, 01h
    BTC     EBX, 0FFh
    BTC     EAX, ESP
    BTC     ECX, ESP
    BTC     EDX, ESP
    BTC     EBX, ESP
    BTC     ESP, ESP
    BTC     EBP, ESP
    BTC     ESI, ESP
    BTC     EDI, ESP
    BTC     SS:[ESP + ESP], EAX
    BTC     SS:[ESP + ESP + 00001234h], ECX
    BTC     CS:[ESP + ESP], EBX
    BTC     DS:[ESP + ESP], EDX
    BTC     ES:[ESP + ESP], ESP
    BTC     SS:[ESP + ESP], EBP
    BTC     FS:[ESP + ESP], ESI
    BTC     GS:[ESP + ESP], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], ESP
    BTC     DS:[EBX + EBP*4 + 12345678h], ESP
    BTC     SS:[EBP + EBP], ESP
    BTC     SS:[ESP + EBP], ESP
    BTC     DS:[EDX + EBX*8], ESP
    BTC     DS:[EBX + ECX*2 + 01h], ESP
    BTC     DS:[ECX + EDX*4 + 00000100h], ESP
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ESP
    BTC     SS:[EBP + EBP + 10203040h], ESP
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], ESP
    LOCK    BTC DS:[BX + DI], ESP
    LOCK    BTC SS:[BP + SI], ESP
    LOCK    BTC SS:[BP + DI], ESP
    LOCK    BTC SS:[BP], ESP
    LOCK    BTC DS:[SI], ESP
    LOCK    BTC DS:[DI], ESP
    LOCK    BTC DS:[BX + SI + 1234h], ESP
    LOCK    BTC DS:[BX + DI + 1234h], ESP
    LOCK    BTC SS:[BP + SI + 1234h], ESP
    LOCK    BTC SS:[BP + DI + 1234h], ESP
    LOCK    BTC SS:[BP + 1234h], ESP
    LOCK    BTC DS:[SI + 1234h], ESP
    LOCK    BTC DS:[DI + 1234h], ESP
    BTC     ESP, 01h
    BTC     ESP, 0FFh
    BTC     EAX, EBP
    BTC     ECX, EBP
    BTC     EDX, EBP
    BTC     EBX, EBP
    BTC     ESP, EBP
    BTC     EBP, EBP
    BTC     ESI, EBP
    BTC     EDI, EBP
    BTC     SS:[EBP], EAX
    BTC     SS:[EBP + 00001234h], ECX
    BTC     CS:[EBP], EBX
    BTC     DS:[EBP], EDX
    BTC     ES:[EBP], ESP
    BTC     SS:[EBP], EBP
    BTC     FS:[EBP], ESI
    BTC     GS:[EBP], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], EBP
    BTC     DS:[EBX + EBP*4 + 12345678h], EBP
    BTC     SS:[EBP + EBP], EBP
    BTC     SS:[ESP + EBP], EBP
    BTC     DS:[EDX + EBX*8], EBP
    BTC     DS:[EBX + ECX*2 + 01h], EBP
    BTC     DS:[ECX + EDX*4 + 00000100h], EBP
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EBP
    BTC     SS:[EBP + EBP + 10203040h], EBP
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], EBP
    LOCK    BTC DS:[BX + DI], EBP
    LOCK    BTC SS:[BP + SI], EBP
    LOCK    BTC SS:[BP + DI], EBP
    LOCK    BTC SS:[BP], EBP
    LOCK    BTC DS:[SI], EBP
    LOCK    BTC DS:[DI], EBP
    LOCK    BTC DS:[BX + SI + 1234h], EBP
    LOCK    BTC DS:[BX + DI + 1234h], EBP
    LOCK    BTC SS:[BP + SI + 1234h], EBP
    LOCK    BTC SS:[BP + DI + 1234h], EBP
    LOCK    BTC SS:[BP + 1234h], EBP
    LOCK    BTC DS:[SI + 1234h], EBP
    LOCK    BTC DS:[DI + 1234h], EBP
    BTC     EBP, 01h
    BTC     EBP, 0FFh
    BTC     EAX, ESI
    BTC     ECX, ESI
    BTC     EDX, ESI
    BTC     EBX, ESI
    BTC     ESP, ESI
    BTC     EBP, ESI
    BTC     ESI, ESI
    BTC     EDI, ESI
    BTC     DS:[ESI], EAX
    BTC     DS:[ESI + 00001234h], ECX
    BTC     CS:[ESI], EBX
    BTC     DS:[ESI], EDX
    BTC     ES:[ESI], ESP
    BTC     SS:[ESI], EBP
    BTC     FS:[ESI], ESI
    BTC     GS:[ESI], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], ESI
    BTC     DS:[EBX + EBP*4 + 12345678h], ESI
    BTC     SS:[EBP + EBP], ESI
    BTC     SS:[ESP + EBP], ESI
    BTC     DS:[EDX + EBX*8], ESI
    BTC     DS:[EBX + ECX*2 + 01h], ESI
    BTC     DS:[ECX + EDX*4 + 00000100h], ESI
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ESI
    BTC     SS:[EBP + EBP + 10203040h], ESI
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], ESI
    LOCK    BTC DS:[BX + DI], ESI
    LOCK    BTC SS:[BP + SI], ESI
    LOCK    BTC SS:[BP + DI], ESI
    LOCK    BTC SS:[BP], ESI
    LOCK    BTC DS:[SI], ESI
    LOCK    BTC DS:[DI], ESI
    LOCK    BTC DS:[BX + SI + 1234h], ESI
    LOCK    BTC DS:[BX + DI + 1234h], ESI
    LOCK    BTC SS:[BP + SI + 1234h], ESI
    LOCK    BTC SS:[BP + DI + 1234h], ESI
    LOCK    BTC SS:[BP + 1234h], ESI
    LOCK    BTC DS:[SI + 1234h], ESI
    LOCK    BTC DS:[DI + 1234h], ESI
    BTC     ESI, 01h
    BTC     ESI, 0FFh
    BTC     EAX, EDI
    BTC     ECX, EDI
    BTC     EDX, EDI
    BTC     EBX, EDI
    BTC     ESP, EDI
    BTC     EBP, EDI
    BTC     ESI, EDI
    BTC     EDI, EDI
    BTC     DS:[EDI], EAX
    BTC     DS:[EDI + 00001234h], ECX
    BTC     CS:[EDI], EBX
    BTC     DS:[EDI], EDX
    BTC     ES:[EDI], ESP
    BTC     SS:[EDI], EBP
    BTC     FS:[EDI], ESI
    BTC     GS:[EDI], EDI
    BTC     DS:[EAX + EAX*2 + 00000100h], EDI
    BTC     DS:[EBX + EBP*4 + 12345678h], EDI
    BTC     SS:[EBP + EBP], EDI
    BTC     SS:[ESP + EBP], EDI
    BTC     DS:[EDX + EBX*8], EDI
    BTC     DS:[EBX + ECX*2 + 01h], EDI
    BTC     DS:[ECX + EDX*4 + 00000100h], EDI
    BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EDI
    BTC     SS:[EBP + EBP + 10203040h], EDI
    LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
    LOCK    BTC DS:[BX + SI], EDI
    LOCK    BTC DS:[BX + DI], EDI
    LOCK    BTC SS:[BP + SI], EDI
    LOCK    BTC SS:[BP + DI], EDI
    LOCK    BTC SS:[BP], EDI
    LOCK    BTC DS:[SI], EDI
    LOCK    BTC DS:[DI], EDI
    LOCK    BTC DS:[BX + SI + 1234h], EDI
    LOCK    BTC DS:[BX + DI + 1234h], EDI
    LOCK    BTC SS:[BP + SI + 1234h], EDI
    LOCK    BTC SS:[BP + DI + 1234h], EDI
    LOCK    BTC SS:[BP + 1234h], EDI
    LOCK    BTC DS:[SI + 1234h], EDI
    LOCK    BTC DS:[DI + 1234h], EDI
    BTC     EDI, 01h
    BTC     EDI, 0FFh
    BTC     AX, AX
    BTC     CX, AX
    BTC     DX, AX
    BTC     BX, AX
    BTC     SP, AX
    BTC     BP, AX
    BTC     SI, AX
    BTC     DI, AX
    BTC     DS:[BX + SI], AX
    BTC     DS:[BX + DI], AX
    BTC     SS:[BP + SI], AX
    BTC     SS:[BP + DI], AX
    BTC     SS:[BP], AX
    BTC     DS:[SI], AX
    BTC     DS:[DI], AX
    BTC     DS:[BX + SI + 1234h], AX
    BTC     DS:[BX + DI + 1234h], AX
    BTC     SS:[BP + SI + 1234h], AX
    BTC     SS:[BP + DI + 1234h], AX
    BTC     SS:[BP + 1234h], AX
    BTC     DS:[SI + 1234h], AX
    BTC     DS:[DI + 1234h], AX
    BTC     CS:[BX + SI], AX
    BTC     CS:[BX + DI], AX
    BTC     CS:[BP + SI], AX
    BTC     CS:[BP + DI], AX
    BTC     CS:[BP], AX
    BTC     CS:[SI], AX
    BTC     CS:[DI], AX
    BTC     DS:[BX + SI], AX
    BTC     DS:[BX + DI], AX
    BTC     DS:[BP + SI], AX
    BTC     DS:[BP + DI], AX
    BTC     DS:[BP], AX
    BTC     DS:[SI], AX
    BTC     DS:[DI], AX
    BTC     ES:[BX + SI], AX
    BTC     ES:[BX + DI], AX
    BTC     ES:[BP + SI], AX
    BTC     ES:[BP + DI], AX
    BTC     ES:[BP], AX
    BTC     ES:[SI], AX
    BTC     ES:[DI], AX
    BTC     SS:[BX + SI], AX
    BTC     SS:[BX + DI], AX
    BTC     SS:[BP + SI], AX
    BTC     SS:[BP + DI], AX
    BTC     SS:[BP], AX
    BTC     SS:[SI], AX
    BTC     SS:[DI], AX
    BTC     FS:[BX + SI], AX
    BTC     FS:[BX + DI], AX
    BTC     FS:[BP + SI], AX
    BTC     FS:[BP + DI], AX
    BTC     FS:[BP], AX
    BTC     FS:[SI], AX
    BTC     FS:[DI], AX
    BTC     GS:[BX + SI], AX
    BTC     GS:[BX + DI], AX
    BTC     GS:[BP + SI], AX
    BTC     GS:[BP + DI], AX
    BTC     GS:[BP], AX
    BTC     GS:[SI], AX
    BTC     GS:[DI], AX
    BTC     AX, 01h
    BTC     AX, 0FFh
    BTC     AX, CX
    BTC     CX, CX
    BTC     DX, CX
    BTC     BX, CX
    BTC     SP, CX
    BTC     BP, CX
    BTC     SI, CX
    BTC     DI, CX
    BTC     DS:[BX + SI], CX
    BTC     DS:[BX + DI], CX
    BTC     SS:[BP + SI], CX
    BTC     SS:[BP + DI], CX
    BTC     SS:[BP], CX
    BTC     DS:[SI], CX
    BTC     DS:[DI], CX
    BTC     DS:[BX + SI + 1234h], CX
    BTC     DS:[BX + DI + 1234h], CX
    BTC     SS:[BP + SI + 1234h], CX
    BTC     SS:[BP + DI + 1234h], CX
    BTC     SS:[BP + 1234h], CX
    BTC     DS:[SI + 1234h], CX
    BTC     DS:[DI + 1234h], CX
    BTC     CS:[BX + SI], CX
    BTC     CS:[BX + DI], CX
    BTC     CS:[BP + SI], CX
    BTC     CS:[BP + DI], CX
    BTC     CS:[BP], CX
    BTC     CS:[SI], CX
    BTC     CS:[DI], CX
    BTC     DS:[BX + SI], CX
    BTC     DS:[BX + DI], CX
    BTC     DS:[BP + SI], CX
    BTC     DS:[BP + DI], CX
    BTC     DS:[BP], CX
    BTC     DS:[SI], CX
    BTC     DS:[DI], CX
    BTC     ES:[BX + SI], CX
    BTC     ES:[BX + DI], CX
    BTC     ES:[BP + SI], CX
    BTC     ES:[BP + DI], CX
    BTC     ES:[BP], CX
    BTC     ES:[SI], CX
    BTC     ES:[DI], CX
    BTC     SS:[BX + SI], CX
    BTC     SS:[BX + DI], CX
    BTC     SS:[BP + SI], CX
    BTC     SS:[BP + DI], CX
    BTC     SS:[BP], CX
    BTC     SS:[SI], CX
    BTC     SS:[DI], CX
    BTC     FS:[BX + SI], CX
    BTC     FS:[BX + DI], CX
    BTC     FS:[BP + SI], CX
    BTC     FS:[BP + DI], CX
    BTC     FS:[BP], CX
    BTC     FS:[SI], CX
    BTC     FS:[DI], CX
    BTC     GS:[BX + SI], CX
    BTC     GS:[BX + DI], CX
    BTC     GS:[BP + SI], CX
    BTC     GS:[BP + DI], CX
    BTC     GS:[BP], CX
    BTC     GS:[SI], CX
    BTC     GS:[DI], CX
    BTC     CX, 01h
    BTC     CX, 0FFh
    BTC     AX, DX
    BTC     CX, DX
    BTC     DX, DX
    BTC     BX, DX
    BTC     SP, DX
    BTC     BP, DX
    BTC     SI, DX
    BTC     DI, DX
    BTC     DS:[BX + SI], DX
    BTC     DS:[BX + DI], DX
    BTC     SS:[BP + SI], DX
    BTC     SS:[BP + DI], DX
    BTC     SS:[BP], DX
    BTC     DS:[SI], DX
    BTC     DS:[DI], DX
    BTC     DS:[BX + SI + 1234h], DX
    BTC     DS:[BX + DI + 1234h], DX
    BTC     SS:[BP + SI + 1234h], DX
    BTC     SS:[BP + DI + 1234h], DX
    BTC     SS:[BP + 1234h], DX
    BTC     DS:[SI + 1234h], DX
    BTC     DS:[DI + 1234h], DX
    BTC     CS:[BX + SI], DX
    BTC     CS:[BX + DI], DX
    BTC     CS:[BP + SI], DX
    BTC     CS:[BP + DI], DX
    BTC     CS:[BP], DX
    BTC     CS:[SI], DX
    BTC     CS:[DI], DX
    BTC     DS:[BX + SI], DX
    BTC     DS:[BX + DI], DX
    BTC     DS:[BP + SI], DX
    BTC     DS:[BP + DI], DX
    BTC     DS:[BP], DX
    BTC     DS:[SI], DX
    BTC     DS:[DI], DX
    BTC     ES:[BX + SI], DX
    BTC     ES:[BX + DI], DX
    BTC     ES:[BP + SI], DX
    BTC     ES:[BP + DI], DX
    BTC     ES:[BP], DX
    BTC     ES:[SI], DX
    BTC     ES:[DI], DX
    BTC     SS:[BX + SI], DX
    BTC     SS:[BX + DI], DX
    BTC     SS:[BP + SI], DX
    BTC     SS:[BP + DI], DX
    BTC     SS:[BP], DX
    BTC     SS:[SI], DX
    BTC     SS:[DI], DX
    BTC     FS:[BX + SI], DX
    BTC     FS:[BX + DI], DX
    BTC     FS:[BP + SI], DX
    BTC     FS:[BP + DI], DX
    BTC     FS:[BP], DX
    BTC     FS:[SI], DX
    BTC     FS:[DI], DX
    BTC     GS:[BX + SI], DX
    BTC     GS:[BX + DI], DX
    BTC     GS:[BP + SI], DX
    BTC     GS:[BP + DI], DX
    BTC     GS:[BP], DX
    BTC     GS:[SI], DX
    BTC     GS:[DI], DX
    BTC     DX, 01h
    BTC     DX, 0FFh
    BTC     AX, BX
    BTC     CX, BX
    BTC     DX, BX
    BTC     BX, BX
    BTC     SP, BX
    BTC     BP, BX
    BTC     SI, BX
    BTC     DI, BX
    BTC     DS:[BX + SI], BX
    BTC     DS:[BX + DI], BX
    BTC     SS:[BP + SI], BX
    BTC     SS:[BP + DI], BX
    BTC     SS:[BP], BX
    BTC     DS:[SI], BX
    BTC     DS:[DI], BX
    BTC     DS:[BX + SI + 1234h], BX
    BTC     DS:[BX + DI + 1234h], BX
    BTC     SS:[BP + SI + 1234h], BX
    BTC     SS:[BP + DI + 1234h], BX
    BTC     SS:[BP + 1234h], BX
    BTC     DS:[SI + 1234h], BX
    BTC     DS:[DI + 1234h], BX
    BTC     CS:[BX + SI], BX
    BTC     CS:[BX + DI], BX
    BTC     CS:[BP + SI], BX
    BTC     CS:[BP + DI], BX
    BTC     CS:[BP], BX
    BTC     CS:[SI], BX
    BTC     CS:[DI], BX
    BTC     DS:[BX + SI], BX
    BTC     DS:[BX + DI], BX
    BTC     DS:[BP + SI], BX
    BTC     DS:[BP + DI], BX
    BTC     DS:[BP], BX
    BTC     DS:[SI], BX
    BTC     DS:[DI], BX
    BTC     ES:[BX + SI], BX
    BTC     ES:[BX + DI], BX
    BTC     ES:[BP + SI], BX
    BTC     ES:[BP + DI], BX
    BTC     ES:[BP], BX
    BTC     ES:[SI], BX
    BTC     ES:[DI], BX
    BTC     SS:[BX + SI], BX
    BTC     SS:[BX + DI], BX
    BTC     SS:[BP + SI], BX
    BTC     SS:[BP + DI], BX
    BTC     SS:[BP], BX
    BTC     SS:[SI], BX
    BTC     SS:[DI], BX
    BTC     FS:[BX + SI], BX
    BTC     FS:[BX + DI], BX
    BTC     FS:[BP + SI], BX
    BTC     FS:[BP + DI], BX
    BTC     FS:[BP], BX
    BTC     FS:[SI], BX
    BTC     FS:[DI], BX
    BTC     GS:[BX + SI], BX
    BTC     GS:[BX + DI], BX
    BTC     GS:[BP + SI], BX
    BTC     GS:[BP + DI], BX
    BTC     GS:[BP], BX
    BTC     GS:[SI], BX
    BTC     GS:[DI], BX
    BTC     BX, 01h
    BTC     BX, 0FFh
    BTC     AX, SP
    BTC     CX, SP
    BTC     DX, SP
    BTC     BX, SP
    BTC     SP, SP
    BTC     BP, SP
    BTC     SI, SP
    BTC     DI, SP
    BTC     DS:[BX + SI], SP
    BTC     DS:[BX + DI], SP
    BTC     SS:[BP + SI], SP
    BTC     SS:[BP + DI], SP
    BTC     SS:[BP], SP
    BTC     DS:[SI], SP
    BTC     DS:[DI], SP
    BTC     DS:[BX + SI + 1234h], SP
    BTC     DS:[BX + DI + 1234h], SP
    BTC     SS:[BP + SI + 1234h], SP
    BTC     SS:[BP + DI + 1234h], SP
    BTC     SS:[BP + 1234h], SP
    BTC     DS:[SI + 1234h], SP
    BTC     DS:[DI + 1234h], SP
    BTC     CS:[BX + SI], SP
    BTC     CS:[BX + DI], SP
    BTC     CS:[BP + SI], SP
    BTC     CS:[BP + DI], SP
    BTC     CS:[BP], SP
    BTC     CS:[SI], SP
    BTC     CS:[DI], SP
    BTC     DS:[BX + SI], SP
    BTC     DS:[BX + DI], SP
    BTC     DS:[BP + SI], SP
    BTC     DS:[BP + DI], SP
    BTC     DS:[BP], SP
    BTC     DS:[SI], SP
    BTC     DS:[DI], SP
    BTC     ES:[BX + SI], SP
    BTC     ES:[BX + DI], SP
    BTC     ES:[BP + SI], SP
    BTC     ES:[BP + DI], SP
    BTC     ES:[BP], SP
    BTC     ES:[SI], SP
    BTC     ES:[DI], SP
    BTC     SS:[BX + SI], SP
    BTC     SS:[BX + DI], SP
    BTC     SS:[BP + SI], SP
    BTC     SS:[BP + DI], SP
    BTC     SS:[BP], SP
    BTC     SS:[SI], SP
    BTC     SS:[DI], SP
    BTC     FS:[BX + SI], SP
    BTC     FS:[BX + DI], SP
    BTC     FS:[BP + SI], SP
    BTC     FS:[BP + DI], SP
    BTC     FS:[BP], SP
    BTC     FS:[SI], SP
    BTC     FS:[DI], SP
    BTC     GS:[BX + SI], SP
    BTC     GS:[BX + DI], SP
    BTC     GS:[BP + SI], SP
    BTC     GS:[BP + DI], SP
    BTC     GS:[BP], SP
    BTC     GS:[SI], SP
    BTC     GS:[DI], SP
    BTC     SP, 01h
    BTC     SP, 0FFh
    BTC     AX, BP
    BTC     CX, BP
    BTC     DX, BP
    BTC     BX, BP
    BTC     SP, BP
    BTC     BP, BP
    BTC     SI, BP
    BTC     DI, BP
    BTC     DS:[BX + SI], BP
    BTC     DS:[BX + DI], BP
    BTC     SS:[BP + SI], BP
    BTC     SS:[BP + DI], BP
    BTC     SS:[BP], BP
    BTC     DS:[SI], BP
    BTC     DS:[DI], BP
    BTC     DS:[BX + SI + 1234h], BP
    BTC     DS:[BX + DI + 1234h], BP
    BTC     SS:[BP + SI + 1234h], BP
    BTC     SS:[BP + DI + 1234h], BP
    BTC     SS:[BP + 1234h], BP
    BTC     DS:[SI + 1234h], BP
    BTC     DS:[DI + 1234h], BP
    BTC     CS:[BX + SI], BP
    BTC     CS:[BX + DI], BP
    BTC     CS:[BP + SI], BP
    BTC     CS:[BP + DI], BP
    BTC     CS:[BP], BP
    BTC     CS:[SI], BP
    BTC     CS:[DI], BP
    BTC     DS:[BX + SI], BP
    BTC     DS:[BX + DI], BP
    BTC     DS:[BP + SI], BP
    BTC     DS:[BP + DI], BP
    BTC     DS:[BP], BP
    BTC     DS:[SI], BP
    BTC     DS:[DI], BP
    BTC     ES:[BX + SI], BP
    BTC     ES:[BX + DI], BP
    BTC     ES:[BP + SI], BP
    BTC     ES:[BP + DI], BP
    BTC     ES:[BP], BP
    BTC     ES:[SI], BP
    BTC     ES:[DI], BP
    BTC     SS:[BX + SI], BP
    BTC     SS:[BX + DI], BP
    BTC     SS:[BP + SI], BP
    BTC     SS:[BP + DI], BP
    BTC     SS:[BP], BP
    BTC     SS:[SI], BP
    BTC     SS:[DI], BP
    BTC     FS:[BX + SI], BP
    BTC     FS:[BX + DI], BP
    BTC     FS:[BP + SI], BP
    BTC     FS:[BP + DI], BP
    BTC     FS:[BP], BP
    BTC     FS:[SI], BP
    BTC     FS:[DI], BP
    BTC     GS:[BX + SI], BP
    BTC     GS:[BX + DI], BP
    BTC     GS:[BP + SI], BP
    BTC     GS:[BP + DI], BP
    BTC     GS:[BP], BP
    BTC     GS:[SI], BP
    BTC     GS:[DI], BP
    BTC     BP, 01h
    BTC     BP, 0FFh
    BTC     AX, SI
    BTC     CX, SI
    BTC     DX, SI
    BTC     BX, SI
    BTC     SP, SI
    BTC     BP, SI
    BTC     SI, SI
    BTC     DI, SI
    BTC     DS:[BX + SI], SI
    BTC     DS:[BX + DI], SI
    BTC     SS:[BP + SI], SI
    BTC     SS:[BP + DI], SI
    BTC     SS:[BP], SI
    BTC     DS:[SI], SI
    BTC     DS:[DI], SI
    BTC     DS:[BX + SI + 1234h], SI
    BTC     DS:[BX + DI + 1234h], SI
    BTC     SS:[BP + SI + 1234h], SI
    BTC     SS:[BP + DI + 1234h], SI
    BTC     SS:[BP + 1234h], SI
    BTC     DS:[SI + 1234h], SI
    BTC     DS:[DI + 1234h], SI
    BTC     CS:[BX + SI], SI
    BTC     CS:[BX + DI], SI
    BTC     CS:[BP + SI], SI
    BTC     CS:[BP + DI], SI
    BTC     CS:[BP], SI
    BTC     CS:[SI], SI
    BTC     CS:[DI], SI
    BTC     DS:[BX + SI], SI
    BTC     DS:[BX + DI], SI
    BTC     DS:[BP + SI], SI
    BTC     DS:[BP + DI], SI
    BTC     DS:[BP], SI
    BTC     DS:[SI], SI
    BTC     DS:[DI], SI
    BTC     ES:[BX + SI], SI
    BTC     ES:[BX + DI], SI
    BTC     ES:[BP + SI], SI
    BTC     ES:[BP + DI], SI
    BTC     ES:[BP], SI
    BTC     ES:[SI], SI
    BTC     ES:[DI], SI
    BTC     SS:[BX + SI], SI
    BTC     SS:[BX + DI], SI
    BTC     SS:[BP + SI], SI
    BTC     SS:[BP + DI], SI
    BTC     SS:[BP], SI
    BTC     SS:[SI], SI
    BTC     SS:[DI], SI
    BTC     FS:[BX + SI], SI
    BTC     FS:[BX + DI], SI
    BTC     FS:[BP + SI], SI
    BTC     FS:[BP + DI], SI
    BTC     FS:[BP], SI
    BTC     FS:[SI], SI
    BTC     FS:[DI], SI
    BTC     GS:[BX + SI], SI
    BTC     GS:[BX + DI], SI
    BTC     GS:[BP + SI], SI
    BTC     GS:[BP + DI], SI
    BTC     GS:[BP], SI
    BTC     GS:[SI], SI
    BTC     GS:[DI], SI
    BTC     SI, 01h
    BTC     SI, 0FFh
    BTC     AX, DI
    BTC     CX, DI
    BTC     DX, DI
    BTC     BX, DI
    BTC     SP, DI
    BTC     BP, DI
    BTC     SI, DI
    BTC     DI, DI
    BTC     DS:[BX + SI], DI
    BTC     DS:[BX + DI], DI
    BTC     SS:[BP + SI], DI
    BTC     SS:[BP + DI], DI
    BTC     SS:[BP], DI
    BTC     DS:[SI], DI
    BTC     DS:[DI], DI
    BTC     DS:[BX + SI + 1234h], DI
    BTC     DS:[BX + DI + 1234h], DI
    BTC     SS:[BP + SI + 1234h], DI
    BTC     SS:[BP + DI + 1234h], DI
    BTC     SS:[BP + 1234h], DI
    BTC     DS:[SI + 1234h], DI
    BTC     DS:[DI + 1234h], DI
    BTC     CS:[BX + SI], DI
    BTC     CS:[BX + DI], DI
    BTC     CS:[BP + SI], DI
    BTC     CS:[BP + DI], DI
    BTC     CS:[BP], DI
    BTC     CS:[SI], DI
    BTC     CS:[DI], DI
    BTC     DS:[BX + SI], DI
    BTC     DS:[BX + DI], DI
    BTC     DS:[BP + SI], DI
    BTC     DS:[BP + DI], DI
    BTC     DS:[BP], DI
    BTC     DS:[SI], DI
    BTC     DS:[DI], DI
    BTC     ES:[BX + SI], DI
    BTC     ES:[BX + DI], DI
    BTC     ES:[BP + SI], DI
    BTC     ES:[BP + DI], DI
    BTC     ES:[BP], DI
    BTC     ES:[SI], DI
    BTC     ES:[DI], DI
    BTC     SS:[BX + SI], DI
    BTC     SS:[BX + DI], DI
    BTC     SS:[BP + SI], DI
    BTC     SS:[BP + DI], DI
    BTC     SS:[BP], DI
    BTC     SS:[SI], DI
    BTC     SS:[DI], DI
    BTC     FS:[BX + SI], DI
    BTC     FS:[BX + DI], DI
    BTC     FS:[BP + SI], DI
    BTC     FS:[BP + DI], DI
    BTC     FS:[BP], DI
    BTC     FS:[SI], DI
    BTC     FS:[DI], DI
    BTC     GS:[BX + SI], DI
    BTC     GS:[BX + DI], DI
    BTC     GS:[BP + SI], DI
    BTC     GS:[BP + DI], DI
    BTC     GS:[BP], DI
    BTC     GS:[SI], DI
    BTC     GS:[DI], DI
    BTC     DI, 01h
    BTC     DI, 0FFh
    BTC     EAX, 0FFh
    BTC     ECX, 0FFh
    BTC     EDX, 0FFh
    BTC     EBX, 0FFh
    BTC     ESP, 0FFh
    BTC     EBP, 0FFh
    BTC     ESI, 0FFh
    BTC     EDI, 0FFh
    LOCK    BTC DS:[EAX + EAX + 00004321h], AX
    LOCK    BTC DS:[EAX + EAX*2 + 00004321h], AX
    LOCK    BTC DS:[EAX + EAX*4 + 00004321h], AX
    LOCK    BTC DS:[EAX + EAX*8 + 00004321h], AX
    LOCK    BTC DS:[ESI + 00004321h], AX
    LOCK    BTC DS:[EDI + 00004321h], AX
    LOCK    BTC DWORD PTR SS:[EBX + EAX*8 + 12345678h], 9Ah
    
    END Start
