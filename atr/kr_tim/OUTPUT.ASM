DAA
DAA
NEG    EAX
NEG    ECX
NEG    EDX
NEG    EBX
NEG    ESP
NEG    EBP
NEG    ESI
NEG    EDI
DAA
NEG    AX
NEG    CX
NEG    DX
NEG    BX
NEG    SP
NEG    BP
NEG    SI
NEG    DI
NEG    DH
NEG    BH
NEG    CH
NEG    DL
NEG    BL
NEG    CL
NEG    AL
NEG    AH
DAA
NEG    dword ptr FS:[EBX + EDI*4 + 00001122h]
NEG    word ptr GS:[BP + SI + 7FFFh]
NEG    byte ptr DS:[EAX + ECX*8 + 00003344h]
NEG    dword ptr CS:[EDX + 000055AAh]
NEG    word ptr ES:[DI + 0ABCDh]
NEG    byte ptr SS:[ESI + 10h]
NEG    dword ptr DS:[EBP + EAX*2 + 00006677h]
NEG    word ptr DS:[BX + DI + 8899h]
NEG    byte ptr CS:[EDX + ESI]
NEG    dword ptr GS:[EBP + EDI*8 + 0000BEEFh]
NEG    word ptr FS:[SI + 0CCDDh]
NEG    byte ptr ES:[EBX + 44h]
NEG    dword ptr DS:[ESP + EDX*4 + 0000F0F0h]
NEG    word ptr SS:[BX + 0EE11h]
NEG    byte ptr GS:[ECX + EDI*2 + 0000DADAh]
DAA
NEG    byte ptr DS:[EBX + 0000FACEh]
NEG    word ptr CS:[SI + 9ABCh]
NEG    dword ptr FS:[EBP + 0000C0DEh]
NEG    byte ptr SS:[EDX + 44h]
NEG    word ptr ES:[DI + 0DEADh]
NEG    dword ptr GS:[EAX + EBX*2 + 00001234h]
NEG    byte ptr DS:[ECX + 00005678h]
NEG    word ptr DS:[BP + 0BEEFh]
NEG    dword ptr FS:[ESI + 00C0FFEEh]
NEG    byte ptr CS:[EDI + 66h]
NEG    word ptr SS:[BX + 0FEEDh]
NEG    dword ptr GS:[EDX + 0000BABEh]
NEG    byte ptr ES:[EAX + 08h]
NEG    word ptr DS:[ECX + EDX*4 + 00003333h]
DAA
SHR    BL, 03h
SHR    DX, CL
SHR    EAX, 1
SHR    CH, 0BBh
SHR    word ptr FS:[BP + DI + 2468h], 1
SHR    byte ptr DS:[EDI + 08h], CL
SHR    dword ptr GS:[EBX + ESI*4 + 00001357h], 04h
SHR    AL, 0CCh
SHR    ECX, 02h
SHR    word ptr ES:[SI + 0FACEh], 0AAh
SHR    byte ptr CS:[EBP + EDX*8 + 0000BEEFh], CL
SHR    dword ptr DS:[EAX + 0000DEADh], 1
SHR    BH, 05h
SHR    dword ptr SS:[ECX + EDX*2 + 000055AAh], 03h
SHR    word ptr GS:[DI + 9ABCh], CL
SHR    byte ptr FS:[EAX + EBX + 00001122h], 0EEh
DAA
SHR    dword ptr ES:[EBP + 0000F00Dh], 1
SHR    word ptr DS:[BX + SI + 0BA98h], 04h
SHR    byte ptr CS:[EDX + 00007654h], CL
SHR    EBP, 0DDh
SHR    AX, 07h
SHR    dword ptr DS:[EDI + 0000CAFEh], 02h
SHR    word ptr SS:[ECX + ESI*8 + 00000369h], 0BBh
SHR    byte ptr GS:[ESP + EDX*4 + 0000D00Dh], 03h
DAA
SHR    byte ptr SS:[EBX + 0000AAAAh], 1
SHR    word ptr FS:[BP + 0FFh], CL
SHR    dword ptr DS:[EAX + 0000BBBBh], 04h
SHR    CL, 0EEh
SHR    ESI, 05h
SHR    word ptr GS:[DI + 0CCCCh], 0FFh
SHR    byte ptr CS:[EDX + 0000DDDDh], 02h
SHR    dword ptr SS:[EBP + 0000EEEEh], 1
SHR    BX, 06h
SHR    byte ptr ES:[ECX + 0000FFFFh], CL
SHR    dword ptr SS:[EDI + 0000ABCDh], 03h
SHR    AL, 0F0h
SHR    word ptr DS:[SI + 0DCBAh], 04h
SHR    EDX, 0AAh
SHR    byte ptr FS:[EBX + 0000BEEFh], 1
DAA
