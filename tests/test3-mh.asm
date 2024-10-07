.MODEL SMALL
.486
.STACK 100h

.DATA
array DB 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 10h, 0EFh, 0F0h, 20h
      DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
      DB 31h, 32h, 3Dh, 34h, 35h, 36h, 34h, 12h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
      DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
      DB 0Bh, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h
      DB 21h, 22h, 8Dh, 3Fh, 56h, 67h, 78h, 89h, 9Ah, ABh, BCh, CDh, 10h, EFh, F0h, 20h
      DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
      DB 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX         ; Set DS to data segment base
    
    ; Set up initial values of registers
    MOV AX, 18A8h      ; AX = 18A8h
    MOV BX, 1234h      ; BX = 1234h
    MOV CX, 9F0Ch      ; CX = 9F0Ch
    MOV DX, 2CD4h      ; DX = 2CD4h
    MOV SI, 0020h      ; SI = 0020h
    MOV DI, 125Eh      ; DI = 125Eh
    MOV BP, 0010h      ; BP = 0010h
    MOV SP, 00ECh      ; SP = 00ECh

    ; Set ES and SS relative to DS
    MOV AX, DS
    ADD AX, 2          ; ES = DS + 2
    MOV ES, AX
    
    MOV AX, DS
    ADD AX, 21          
    MOV SS, AX

    ; Initialize flags
    PUSHF              ; Push flags to stack
    POP AX             ; AX = FL (7287h)
    OR AX, 7287h       ; Set flags CF=1, PF=1, AF=0, ZF=0, SF=1, DF=0, OF=0
    PUSH AX            ; Push modified flags back to stack
    POPF               ; Pop them to FL

    ; Instructions follow here (from the previous program)
    
    ; 1) lea di,ds:[si+12h]
    LEA DI, [SI+12h]

    ; 2) mov al, [di-15h]
    MOV AL, [DI-15h]

    ; 3) movzx ax, dl
    MOVZX AX, DL

    ; 4) mul byte ptr es:[si+4]
    MUL BYTE PTR ES:[SI+4]

    ; 5) lodsb
    LODSB

    ; 6) xchg bx, si
    XCHG BX, SI

    ; 7) xchg si, [bx+5]
    XCHG SI, [BX+5]

    ; 8) sub bx, 20h
    SUB BX, 20h

    ; 9) xlat
    XLAT

    ; 10) add ax, es:[bx+8]
    ADD AX, ES:[BX+8]

    ; 11) stosw
    STOSW

    ; 12) cwde
    CWDE

    ; 13) bswap eax
    BSWAP EAX

    ; 14) sbb ax, cx
    SBB AX, CX

    ; 15) cmp ax, bx
    CMP AX, BX

    ; 16) movsx si, es:[di+8]
    MOVSX SI, ES:[DI+8]

    ; 17) xadd ax, si
    XADD AX, SI

    ; 18) cbw
    CBW

    ; 19) imul byte ptr es:[di+bx-12]
    IMUL BYTE PTR ES:[DI+BX-12]

    ; 20) cmpxchg dx, cx
    CMPXCHG DX, CX

    ; 21) mov cl, es:[10]
    MOV CL, ES:[10]

    ; 22) sub cl, 78h
    SUB CL, 78h

    ; 23) mov cx, 4
    MOV CX, 4

    ; 24) movzx si, cl
    MOVZX SI, CL

    ; 25) rep movsw
    REP MOVSW

    ; 26) adc byte ptr ds:[si], 4
    ADC BYTE PTR DS:[SI], 4

    ; 27) inc dword ptr es:[2]
    INC DWORD PTR ES:[2]

    ; Exit program
    MOV AX, 4C00h
    INT 21h
END MAIN
