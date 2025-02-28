.MODEL TINY
.486
.CODE
    ORG     100H
START:
    CDQ
    CALL   REL_CALL
REL_CALL:
    CALL   $+2345H
    CALL   word ptr FS:[BX+DI]
    CALL   $+312H
    CALL   REL_CALL
    CALL   $-2002H
    CALL   $+0BCDH
    CALL   word ptr CS:[EDI+EBX]
    CALL   EDI
    CALL   word ptr FS:[EBX]
    CALL   dword ptr GS:[EDI+EBX*8+2020H]
    CALL   dword ptr CS:[SI+20H]
    CALL   BX
    CALL   word ptr FS:[BP+SI+2H]
    CALL   dword ptr DS:[ECX]
    CALL   word ptr SS:[DI+2020H]
    CALL   word ptr DS:[DI+200H]
    CALL   word ptr SS:[1234H]
    CALL   word ptr GS:[EDI*2]
    CALL   $-2H
    CALL   DX
    CALL   dword ptr GS:[EDI+EDI+20202H]
    CALL   dword ptr CS:[EBX*8+2222H]
    CALL   START
    CALL   $-313H
    CALL   dword ptr SS:[EDI+EDI+222H]
    CALL   dword ptr GS:[EBX+EBX*8+2H]
    DB     9Ah, 67h, 89h, 23h, 45h
    CALL   ECX
    DB     66h, 9Ah, 0B0h, 0C0h, 0D0h, 0E0h, 0F0h, 0A0h
    CALL   dword ptr GS:[EDX]
    DB     66h, 0E8h, 20h, 2h, 2h, 20h
    DB     66h, 0E8h, 0Bh, 022h, 022h, 022h
    IDIV   DL
    IDIV   BL
    IDIV   word ptr DS:[EDI+EDX*4]
    IDIV   BH
    IDIV   word ptr SS:[SI+2345H]
    IDIV   dword ptr DS:[EBX+EBX*8]
    IDIV   byte ptr CS:[EBX]
    IDIV   byte ptr GS:[EBX+EDI]
    IDIV   word ptr FS:[EDI+EDI+6789H]
    IDIV   byte ptr SS:[DI]
    IDIV   word ptr GS:[EBX+EDI*8+2000H]
    IDIV   word ptr ES:[DI]
    IDIV   word ptr FS:[EBX+EDI*8]
    IDIV   dword ptr ES:[ESP]
    IDIV   byte ptr SS:[BX+DI]
    IDIV   byte ptr FS:[ESP+2020h]
    IDIV   word ptr SS:[BX]
    IDIV   EDI
    IDIV   word ptr CS:[EBX+EDI*4]
    IDIV   word ptr FS:[22222H]
    IDIV   byte ptr DS:[DI+2345H]
    IDIV   dword ptr GS:[EBX]
    IDIV   word ptr DS:[EDI+22H]
    IDIV   dword ptr CS:[EDI+0BCDEH]
    IDIV   byte ptr CS:[BX+DI]
    IDIV   EBX
    IDIV   word ptr CS:[EBX+EAX*4]
    IDIV   dword ptr FS:[EDI+EDI]
    IDIV   byte ptr SS:[BX+DI]
    IDIV   dword ptr GS:[BX+200H]
    IDIV   byte ptr CS:[SI]
    IDIV   CX
    IDIV   CH
    IDIV   byte ptr DS:[234H]
    IDIV   dword ptr CS:[SI+0BCDEH]
    IDIV   BX
    IDIV   word ptr CS:[EBX*4]
    IDIV   word ptr DS:[BX]
    IDIV   dword ptr GS:[ESP+EBX*4+2H]
    IDIV   BX
    IDIV   byte ptr GS:[EBX+EDI*8]
    IDIV   word ptr CS:[EBX+EDI*4+0BCDEH]
    IDIV   byte ptr FS:[ECX+EAX+2325H]
    IDIV   dword ptr DS:[BX+SI]
    IDIV   dword ptr FS:[ESP+EBX]
    IDIV   dword ptr SS:[BX+DI+200H]
    IDIV   word ptr SS:[EDI+6789H]
    IDIV   byte ptr FS:[EBX]
    IDIV   ESP
    IDIV   dword ptr CS:[EBX+EDI]
    IDIV   byte ptr FS:[EBX+2000H]
    IDIV   word ptr CS:[DI+0BCDEH]
    IDIV   word ptr SS:[BX+DI]
    IDIV   dword ptr DS:[EDI+ECX]
END START
