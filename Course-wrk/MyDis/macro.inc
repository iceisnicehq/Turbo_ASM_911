PRINT_MSG MACRO MSG
    PUSH        DX
    LEA         DX, MSG
    CALL        PRINT
    POP         DX
ENDM

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts one byte number to instruction buffer.
; IN
;   NUM - Number to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_BYTE MACRO NUM
    MOVZX       AX, NUM
    MOV         BX, INS_END_PTR
    XOR         DL, DL
    CALL        SPUT_HEX
    MOV         INS_END_PTR, BX
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts two byte number to instruction buffer.
; IN
;   NUM - Number to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_WORD MACRO NUM
    MOV         AX, NUM
    MOV         BX, INS_END_PTR
    MOV         DL, 01h
    CALL        SPUT_HEX
    MOV         INS_END_PTR, BX
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts a char to string.
; IN
;   STR_PTR - Pointer to string.
;   CHAR - Character to put.
; OUT
;   STR_PTR - Pointer to upcoming character.   
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_CHAR MACRO  CHAR
    MOV         BX, INS_END_PTR
    MOV         BYTE PTR [BX], CHAR
    INC         INS_END_PTR
ENDM