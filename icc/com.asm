.MODEL TINY
.486
.CODE
    ORG     100H
START:
    CDQ
    CALL   REL_CALL
REL_CALL:
    CALL   dword ptr CS:[DI+10H]
    CALL   AX
    CALL   word ptr CS:[ESI+EAX]
    CALL   dword ptr GS:[ESI+ESI+10101H]
    CALL   START
    CALL   REL_CALL
    CALL   $+212H
    CALL   $-1H
    CALL   word ptr DS:[BX+100H]
    CALL   dword ptr SS:[ESI+ESI+111H]
    CALL   dword ptr GS:[EAX+EAX*8+1H]
    CALL   $+1234H
    CALL   word ptr SS:[BX+1010H]
    CALL   $+0ABCH
    CALL   $-1001H
    CALL   word ptr FS:[BX+DI+1H]
    CALL   ESI
    CALL   word ptr FS:[EBP]
    CALL   CX
    CALL   dword ptr DS:[EDX]
    CALL   dword ptr GS:[ESI+EDI*8+1010H]
    CALL   dword ptr CS:[EDI*8+1111H]
    CALL   word ptr FS:[BP+SI]
    CALL   word ptr GS:[ESI*2]
    CALL   word ptr SS:[BX+SI]
    CALL   $-212H
    DB     9Ah, 56h, 78h, 12h, 34h
    CALL   EDX
    DB     66h, 9Ah, 0A0h, 0B0h, 0C0h, 0D0h, 0E0h, 0F0h
    CALL   dword ptr GS:[ECX]
    DB     66h, 0E8h, 10h, 1h, 1h, 10h
    DB     66h, 0E8h, 0Ah, 011h, 011h, 011h
    IDIV   CL
    IDIV   word ptr CS:[EAX+ESI*4+0ABCDH]
    IDIV   EAX
    IDIV   dword ptr DS:[BX+SI]
    IDIV   word ptr FS:[EBP+EDI*8]
    IDIV   byte ptr CS:[EDI]
    IDIV   dword ptr CS:[DI+0ABCDH]
    IDIV   AL
    IDIV   word ptr ES:[SI]
    IDIV   word ptr FS:[11111H]
    IDIV   word ptr DS:[BP]
    IDIV   word ptr SS:[BP+DI]
    IDIV   dword ptr GS:[ESP+EBP*4+1H]
    IDIV   dword ptr FS:[ESP+EBP]
    IDIV   byte ptr SS:[BP+DI]
    IDIV   byte ptr SS:[SI]
    IDIV   byte ptr FS:[EDX+EBX+1214H]
    IDIV   dword ptr DS:[EAX+EBP*8]
    IDIV   word ptr SS:[EDI+5678H]
    IDIV   word ptr DS:[ESI+ECX*4]
    IDIV   dword ptr FS:[EDI+ESI]
    IDIV   dword ptr GS:[BP+100H]
    IDIV   dword ptr CS:[ESI+0ABCDH]
    IDIV   ESI
    IDIV   DH
    IDIV   dword ptr ES:[ESP]
    IDIV   byte ptr DS:[BX+1234H]
    IDIV   AX
    IDIV   word ptr CS:[SI+0ABCDH]
    IDIV   dword ptr CS:[EDI+ESI]
    IDIV   word ptr CS:[EBP*4]
    IDIV   byte ptr CS:[DI]
    IDIV   dword ptr SS:[BP+DI+100H]
    IDIV   word ptr SS:[BX+SI+1234H]
    IDIV   dword ptr DS:[ESI+EDX]
    IDIV   ESP
    IDIV   byte ptr FS:[EDI]
    IDIV   word ptr SS:[BP]
    IDIV   byte ptr DS:[123H]
    IDIV   byte ptr GS:[EBP+ESI]
    IDIV   byte ptr CS:[BP+SI]
    IDIV   AH
    IDIV   byte ptr GS:[EBP+EDI*8]
    IDIV   word ptr FS:[EDI+ESI+5678H]
    IDIV   word ptr CS:[EAX+ESI*4]
    IDIV   BX
    IDIV   BP
    IDIV   word ptr DS:[ESI+11H]
    IDIV   byte ptr FS:[ESP+1010h]
    IDIV   word ptr CS:[EAX+EBX*4]
    IDIV   dword ptr GS:[EBP]
    IDIV   byte ptr SS:[BP+SI]
    IDIV   word ptr GS:[EBP+EDI*8+1000H]
    IDIV   byte ptr FS:[EBP+1000H]
END START
