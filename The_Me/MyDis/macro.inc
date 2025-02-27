
INS_BYTE MACRO
    XOR         AH, AH
    MOV         BX, INS_END_PTR
    XOR         DL, DL
    STC
    CALL        SPUT_HEX
    MOV         INS_END_PTR, BX
ENDM

INS_WORD MACRO
    MOV         BX, INS_END_PTR
    MOV         DL, 1
    CALL        SPUT_HEX
    MOV         INS_END_PTR, BX
ENDM

INS_CHAR MACRO  CHAR
    MOV         BX, INS_END_PTR
    MOV         BYTE PTR [BX], CHAR
    INC         INS_END_PTR
ENDM
