.MODEL SMALL
.486
.data          
.code       
org 100h
start:
    add     FS:[EBP*4], 06765660Fh
    adc     ax, -32768
    sbb     esp, [ebp*4]
    bts     edx, eax
    LGS     ebx, ss:[esp + ecx + 1838941]
    xchg    ecx, ecx
    push    dword ptr ds:[bx + 62]
    lgs     esp, ds:[ebp+ebp*4]
    ROR     word ptr [ebx + eax + 13], 5
    ADC     ESP, CS:[ebx + eax - 1431655834]
    DIV     WORD PTR GS:[BP+SI-99]
    NEG     WORD PTR CS:[BP+SI+124]
    PUSH    WORD PTR DS:[BP+12044]
    DEC     WORD PTR DS:[BX-41]
    OR      WORD PTR GS:[BX-30326], -22515
    ROR     WORD PTR ES:[BX+SI+121], CL
    INC     WORD PTR SS:[BP]
    ROL     WORD PTR CS:[BP+SI+124], CL
    MUL     WORD PTR ES:[BP+SI+105]
    RCL     WORD PTR ES:[SI+115], CL
    XOR     WORD PTR DS:[BX+SI+7376], 21356
    IMUL    DI, DI, -669
    ADC     DWORD PTR GS:[ESP+ESI*8-50], -439950
    XADD    DS:[EDI+EBX*2-500191], EBP
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    SHLD    EAX, EBX, CL
    ADD     BYTE PTR SS:[BP+256], CL
    SBB     DWORD PTR CS:[1234], 4321
    SBB     DS:[BX+SI], EAX
    MOV     DWORD PTR GS:[EAX+EAX+123456789], -666
    LES     AX, DWORD PTR DS:[EBP+EBP*4]
    LES     EAX, DS:[EAX+EAX]
    MOV     EAX, SS:[BP]
    IMUL    EDX, DWORD PTR FS:[EBX+EAX-777777], 777777
    PUSH    WORD PTR [BP+SI]
    MOV     EBP, 101010
    PUSH    -100
    INC     WORD PTR FS:[EBX+ECX]
    MOV     EAX, FS:[EAX+EAX*2+10001000]
    ADD     CS:[EBX+ECX*2], 90909090
    ;;;;;;;
    IMUL    EAX, DWORD PTR SS:[EBP + EAX*4 + 666]
    ; MY IMAGINATION IS WEWEWEWEWEWEWEWEWEWE
END start


C_cycle:
        inc     ch
        jmp     formula    
B_cycle:
        inc     bl
        mov     ch, -128
        jmp     formula    
A_cycle:
        inc     bh
        mov     ch, -128
        mov     bl, -128
        jmp     formula 