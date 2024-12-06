.MODEL      SMALL
.486
; B_SEG       SEGMENT
.code
    ORG         100h
; ASSUME      DS:B_SEG, CS:B_SEG, SS:B_SEG

START:
    ; ; Conditional jump tests
    LOCK    MOV BX, AX
    db 2Eh, 70h, 0eeh
    db 3Eh, 70h, 0eeh
    AAD
    ; JO      CONDITIONAL_JMP_LABEL
    ; JNO     CONDITIONAL_JMP_LABEL
    ; JB      CONDITIONAL_JMP_LABEL
    ; JAE     CONDITIONAL_JMP_LABEL
    ; JE      CONDITIONAL_JMP_LABEL
    ; JNE     CONDITIONAL_JMP_LABEL
    ; JBE     CONDITIONAL_JMP_LABEL
    ; JA      CONDITIONAL_JMP_LABEL
    ; JS      CONDITIONAL_JMP_LABEL
    ; JNS     CONDITIONAL_JMP_LABEL
    ; JP      CONDITIONAL_JMP_LABEL
    ; JNP     CONDITIONAL_JMP_LABEL
    ; JL      CONDITIONAL_JMP_LABEL
    ; JGE     CONDITIONAL_JMP_LABEL
    ; JLE     CONDITIONAL_JMP_LABEL
    ; JG      CONDITIONAL_JMP_LABEL
    ; Segment override tests
    ; mov     ax, fs:[2h]
    ; mov     bx, gs:[-1]
    MOV     AX, CS:[2h]
    MOV     AX, DS:[BP + 2h]
    MOV     AX, DS:[2h]
    MOV     AX, SS:[2h]
        ; MOV tests
    MOV     DX, 1234h
    MOV     BYTE PTR [BX + DI + 21h], 78h
    MOV     DX, WORD PTR ES:[645Eh]
    MOV     BX, DX
    MOV     ES, WORD PTR CS:[0FFh]
    MOV     SS, CX
    MOV     AX, WORD PTR DS:[3h]
    MOV     DS:[12h], AL

    CONDITIONAL_JMP_LABEL:
    LOCK    MOV BX, AX
 
; B_SEG       ENDS

END         START
