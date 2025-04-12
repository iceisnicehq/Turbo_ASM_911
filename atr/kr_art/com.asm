.model tiny
.486
.code
    org 100h
Start:
    DEC AL
    DEC AH
    DEC BL
    DEC BH
    DEC CL
    DEC CH
    DEC DL
    DEC DH
    DEC AX
    DEC BX
    DEC CX
    DEC DX
    DEC SI
    DEC DI
    DEC BP
    DEC SP
    DEC EAX
    DEC EBX
    DEC ECX
    DEC EDX
    DEC ESI
    DEC EDI
    DEC EBP
    DEC ESP
    DEC byte ptr ES:[7]
    DEC word ptr GS:[13]
    DEC dword ptr CS:[5657h]
    DEC byte ptr SS:[BP+SI]
    DEC word ptr GS:[BX + SI]
    DEC dword ptr CS:[BX + DI]
    DEC byte ptr SS:[SI + 5413h]
    DEC word ptr GS:[BP + 48h]
    DEC dword ptr CS:[BX + DI + 16]
    DEC byte ptr SS:[BX+SI+1654h]
    DEC word ptr GS:[BP + SI + 0FFFFh]
    DEC dword ptr FS:[BP + DI + 0DDDDh]
    DEC byte ptr SS:[EAX]
    DEC word ptr GS:[EBX]
    DEC dword ptr CS:[ECX]
    DEC byte ptr ES:[EDX+10h]
    DEC word ptr DS:[ESI+20h]
    DEC dword ptr FS:[EDI+30h]
    DEC byte ptr ES:[EBP+40h]
    DEC word ptr GS:[ESP+50h]
    DEC dword ptr SS:[EAX+EBX*2]
    DEC byte ptr ES:[ECX+EDX*4+100h]
    DEC word ptr FS:[ESI+EDI*8+200h]
    DEC dword ptr CS:[EBP+EAX*1+300h]
    DEC byte ptr SS:[ESP+EBX*2+400h]
    DEC word ptr DS:[EAX+ECX*4+500h]
    DEC dword ptr [EBX+EDX*8+600h]
    DEC byte ptr [ECX+ESI*1+700h]
    DEC word ptr [EDX+EDI*2+800h]
    DEC dword ptr FS:[ESI+EBP*4+900h]
    DEC byte ptr [EDI+ESP+1000h]
    DEC dword ptr SS:[EAX+EBX*2+1234h]
    DEC dword ptr [ECX+EDX*4+5678h]
    DEC dword ptr FS:[ESI+EDI*8+9ABCh]
    DEC dword ptr FS:[EBP+EAX*1+0DEF0h]
    DEC dword ptr FS:[ESP+EBX*2+1111h]
    DEC dword ptr SS:[EAX+ECX*4+2222h]
    DEC dword ptr [EBX+EDX*8+3333h]
    DEC dword ptr [ECX+ESI*1+4444h]
    DEC dword ptr FS:[EDX+EDI*2+5555h]
    DEC dword ptr SS:[ESI+EBP*4+6666h]
    DEC dword ptr [EDI+ESP+7777h]
    CBW
    CWDE
    BSR AX, BX
    BSR CX, DX
    BSR BP, DX
    BSR SP, DI
    BSR BP, SP
    BSR SI, BX
    BSR EAX, EBX
    BSR ECX, EDX
    BSR ESI, EDI
    BSR EBP, ESP
    BSR AX, word ptr SS:[BX+1234h]
    BSR CX, word ptr ES:[SI+5678h]
    BSR DX, word ptr FS:[DI+9ABCh]
    BSR SI, word ptr GS:[BP+0DEF0h]
    BSR DI, word ptr DS:[1F1Fh]
    BSR BP, word ptr SS:[BX+SI+2222h]
    BSR SP, word ptr SS:[BP+DI+3333h]
    BSR EAX, dword ptr SS:[EAX+EBX*2+1234h]
    BSR ECX, dword ptr ES:[ECX+EDX*4+5678h]
    BSR EDX, dword ptr FS:[ESI+EDI*8+9ABCh]
    BSR ESI, dword ptr GS:[EBP+EAX*1+0DEF0h]
    BSR EDI, dword ptr DS:[ESP+EBX*2+1111h]
    BSR EBP, dword ptr SS:[EAX+ECX*4+2222h]
    BSR ESP, dword ptr SS:[EBX+EDX*8+3333h]
    BSR EAX, dword ptr CS:[ECX+ESI*1+4444h]
    BSR ECX, dword ptr ES:[EDX+EDI*2+5555h]
    BSR EDX, dword ptr DS:[ESI+EBP*4+6666h]
    BSR ESI, dword ptr SS:[EDI+ESP+7777h]
    BSR EAX, dword ptr [EBX]
    BSR ECX, dword ptr [ESI+10h]
    BSR EDX, dword ptr [EDI+20h]
    BSR ESI, dword ptr [EBP+30h]
    BSR EDI, dword ptr [ESP+40h]
    BSR EAX, dword ptr [EAX+EBX*2]
    BSR ECX, dword ptr [ECX+EDX*4+100h]
    BSR EDX, dword ptr [ESI+EDI*8+200h]
    BSR ESI, dword ptr [EBP+EAX*1+300h]
    BSR EDI, dword ptr [ESP+EBX*2+400h]
    BSR EAX, dword ptr [EAX+ECX*4+500h]
    BSR ECX, dword ptr [EBX+EDX*8+600h]
    BSR EDX, dword ptr [ECX+ESI*1+700h]
    BSR ESI, dword ptr [EDX+EDI*2+800h]
    BSR EDI, dword ptr [ESI+EBP*4+900h]
    BSR EBP, dword ptr [EDI+ESP+1000h]
    end     Start