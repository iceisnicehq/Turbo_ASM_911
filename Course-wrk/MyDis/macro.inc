GET_FILE MACRO NAME
    LEA         BX, NAME
    CALL        GET_CMD_ARG
    CMP         BYTE PTR [BX], 0
    JE          PRINT_HELP
ENDM
;---------------+-------------------------------+----------------
PRINT_MSG MACRO MSG
    LEA         SI, MSG
    CALL        PRINT
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Closes a file.
; IN
;   FILE_HANDLE - File handle.       
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
CLOSE_FILE MACRO FILE_HANDLE
    MOV         AH, 3Eh
    MOV         BX, FILE_HANDLE
    INT         21h
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts a char to string.
; IN
;   STR_PTR - Pointer to string.
;   CHAR - Character to put.
; OUT
;   STR_PTR - Pointer to upcoming character.   
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
SPUT_CHAR MACRO STR_PTR, CHAR
    PUSH        BX
    MOV         BX, STR_PTR
    MOV         BYTE PTR [BX], CHAR
    INC         STR_PTR
    POP         BX
ENDM

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts one byte number to string.
; IN
;   STR_PTR - Pointer to string.
;   NUM - Number to put.
;   ZERO_PREFIX - Set to 1 to print leading 0, when number starts with letter.
; OUT
;   STR_PTR - Pointer to upcoming character.   
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
SPUT_BYTE MACRO STR_PTR, NUM, ZERO_PREFIX
    PUSH        AX BX DX
    MOVZX       AX, NUM
    MOV         BX, STR_PTR
    XOR         DL, DL
    MOV         DH, ZERO_PREFIX
    CALL        SPUT_HEX
    MOV         STR_PTR, BX
    POP         DX BX AX
ENDM

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts two byte number to string.
; IN
;   STR_PTR - Pointer to string.
;   NUM - Number to put.
; OUT
;   STR_PTR - Pointer to upcoming character.   
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
SPUT_WORD MACRO STR_PTR, NUM
    PUSH        AX BX DX
    MOV         AX, NUM
    MOV         BX, STR_PTR
    MOV         DX, 0101h
    CALL        SPUT_HEX
    MOV         STR_PTR, BX
    POP         DX BX AX
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts one byte number to instruction buffer.
; IN
;   NUM - Number to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_BYTE MACRO NUM
    SPUT_BYTE   INS_END_PTR, NUM, 1
    SPUT_CHAR   INS_END_PTR, "h"
ENDM

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts two byte number to instruction buffer.
; IN
;   NUM - Number to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_WORD MACRO NUM
    SPUT_WORD   INS_END_PTR, NUM
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts a character to instruction buffer.
; IN
;   CHAR - Character to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_CHAR MACRO CHAR
    SPUT_CHAR   INS_END_PTR, CHAR
ENDM