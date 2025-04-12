DEC    AL
DEC    AH
DEC    BL
DEC    BH
DEC    CL
DEC    CH
DEC    DL
DEC    DH
DEC    AX
DEC    BX
DEC    CX
DEC    DX
DEC    SI
DEC    DI
DEC    BP
DEC    SP
DEC    EAX
DEC    EBX
DEC    ECX
DEC    EDX
DEC    ESI
DEC    EDI
DEC    EBP
DEC    ESP
DEC    byte ptr ES:[0007h]
DEC    word ptr GS:[000Dh]
DEC    dword ptr CS:[5657h]
DEC    byte ptr SS:[BP + SI]
DEC    word ptr GS:[BX + SI]
DEC    dword ptr CS:[BX + DI]
DEC    byte ptr SS:[SI + 5413h]
DEC    word ptr GS:[BP + 48h]
DEC    dword ptr CS:[BX + DI + 10h]
DEC    byte ptr SS:[BX + SI + 1654h]
DEC    word ptr GS:[BP + SI + 0FFh]
DEC    dword ptr FS:[BP + DI + 0DDDDh]
DEC    byte ptr SS:[EAX]
DEC    word ptr GS:[EBX]
DEC    dword ptr CS:[ECX]
DEC    byte ptr ES:[EDX + 10h]
DEC    word ptr DS:[ESI + 20h]
DEC    dword ptr FS:[EDI + 30h]
DEC    byte ptr ES:[EBP + 40h]
DEC    word ptr GS:[ESP + 50h]
DEC    dword ptr SS:[EAX + EBX*2]
DEC    byte ptr ES:[ECX + EDX*4 + 00000100h]
DEC    word ptr FS:[ESI + EDI*8 + 00000200h]
DEC    dword ptr CS:[EBP + EAX + 00000300h]
DEC    byte ptr DS:[ESP + EBX*2 + 00000400h]
DEC    word ptr DS:[EAX + ECX*4 + 00000500h]
DEC    dword ptr DS:[EBX + EDX*8 + 00000600h]
DEC    byte ptr DS:[ECX + ESI + 00000700h]
DEC    word ptr DS:[EDX + EDI*2 + 00000800h]
DEC    dword ptr FS:[ESI + EBP*4 + 00000900h]
DEC    byte ptr DS:[ESP + EDI + 00001000h]
DEC    dword ptr SS:[EAX + EBX*2 + 00001234h]
DEC    dword ptr DS:[ECX + EDX*4 + 00005678h]
DEC    dword ptr FS:[ESI + EDI*8 + 00009ABCh]
DEC    dword ptr FS:[EBP + EAX + 0000DEF0h]
DEC    dword ptr FS:[ESP + EBX*2 + 00001111h]
DEC    dword ptr SS:[EAX + ECX*4 + 00002222h]
DEC    dword ptr DS:[EBX + EDX*8 + 00003333h]
DEC    dword ptr DS:[ECX + ESI + 00004444h]
DEC    dword ptr FS:[EDX + EDI*2 + 00005555h]
DEC    dword ptr DS:[ESI + EBP*4 + 00006666h]
DEC    dword ptr DS:[ESP + EDI + 00007777h]
CBW
CWDE
BSR    AX, BX
BSR    CX, DX
BSR    BP, DX
BSR    SP, DI
BSR    BP, SP
BSR    SI, BX
BSR    EAX, EBX
BSR    ECX, EDX
BSR    ESI, EDI
BSR    EBP, ESP
BSR    AX, word ptr SS:[BX + 1234h]
BSR    CX, word ptr ES:[SI + 5678h]
BSR    DX, word ptr FS:[DI + 9ABCh]
BSR    SI, word ptr GS:[BP + 0DEF0h]
BSR    DI, word ptr DS:[1F1Fh]
BSR    BP, word ptr SS:[BX + SI + 2222h]
BSR    SP, word ptr SS:[BP + DI + 3333h]
BSR    EAX, dword ptr SS:[EAX + EBX*2 + 00001234h]
BSR    ECX, dword ptr ES:[ECX + EDX*4 + 00005678h]
BSR    EDX, dword ptr FS:[ESI + EDI*8 + 00009ABCh]
BSR    ESI, dword ptr GS:[EBP + EAX + 0000DEF0h]
BSR    EDI, dword ptr DS:[ESP + EBX*2 + 00001111h]
BSR    EBP, dword ptr SS:[EAX + ECX*4 + 00002222h]
BSR    ESP, dword ptr SS:[EBX + EDX*8 + 00003333h]
BSR    EAX, dword ptr CS:[ECX + ESI + 00004444h]
BSR    ECX, dword ptr ES:[EDX + EDI*2 + 00005555h]
BSR    EDX, dword ptr DS:[ESI + EBP*4 + 00006666h]
BSR    ESI, dword ptr DS:[ESP + EDI + 00007777h]
BSR    EAX, dword ptr DS:[EBX]
BSR    ECX, dword ptr DS:[ESI + 10h]
BSR    EDX, dword ptr DS:[EDI + 20h]
BSR    ESI, dword ptr SS:[EBP + 30h]
BSR    EDI, dword ptr DS:[ESP + 40h]
BSR    EAX, dword ptr DS:[EAX + EBX*2]
BSR    ECX, dword ptr DS:[ECX + EDX*4 + 00000100h]
BSR    EDX, dword ptr DS:[ESI + EDI*8 + 00000200h]
BSR    ESI, dword ptr DS:[EBP + EAX + 00000300h]
BSR    EDI, dword ptr DS:[ESP + EBX*2 + 00000400h]
BSR    EAX, dword ptr DS:[EAX + ECX*4 + 00000500h]
BSR    ECX, dword ptr DS:[EBX + EDX*8 + 00000600h]
BSR    EDX, dword ptr DS:[ECX + ESI + 00000700h]
BSR    ESI, dword ptr DS:[EDX + EDI*2 + 00000800h]
BSR    EDI, dword ptr DS:[ESI + EBP*4 + 00000900h]
BSR    EBP, dword ptr DS:[ESP + EDI + 00001000h]
