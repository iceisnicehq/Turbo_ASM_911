.MODEL SMALL
.386
.STACK 100H
.DATA
    COM       DB   'COM.COM', 0
    RESULT    DB   'RESULT.ASM', 0
    CWD_      DB   'CWD$'
    MOV_      DB   'MOV    $'
    SAR_      DB   'SAR    $'
    COMMA     DB   ',$'
    BRACKET   DB   ']$'
    COLON     DB   ':[$'
    PLUS      DB   '+$'
    ONE       DB   '1H$'
    ERROR     DB   'COM_EXIT$'
    ALREG     DB   'AL$'
    CLREG     DB   'CL$'
    DLREG     DB   'DL$'
    BLREG     DB   'BL$'
    AHREG     DB   'AH$'
    CHREG     DB   'CH$'
    DHREG     DB   'DH$'
    BHREG     DB   'BH$'
    AXREG     DB   'AX$'
    CXREG     DB   'CX$'
    DXREG     DB   'DX$'
    BXREG     DB   'BX$'
    SPREG     DB   'SP$'
    BPREG     DB   'BP$'
    SIREG     DB   'SI$'
    DIREG     DB   'DI$'
    EAXREG    DB   'EAX$'
    ECXREG    DB   'ECX$'
    EDXREG    DB   'EDX$'
    EBXREG    DB   'EBX$'
    ESPREG    DB   'ESP$'
    EBPREG    DB   'EBP$'
    ESIREG    DB   'ESI$'
    EDIREG    DB   'EDI$'
    REG_B     DW   ALREG,  CLREG,  DLREG,  BLREG,  AHREG,  CHREG,  DHREG,  BHREG
    REG_W     DW   AXREG,  CXREG,  DXREG,  BXREG,  SPREG,  BPREG,  SIREG,  DIREG
    REG_D     DW   EAXREG, ECXREG, EDXREG, EBXREG, ESPREG, EBPREG, ESIREG, EDIREG
    ESSEG     DB   'ES$'
    CSSEG     DB   'CS$'
    SSSEG     DB   'SS$'
    DSSEG     DB   'DS$'
    FSSEG     DB   'FS$'
    GSSEG     DB   'GS$'
    SREGS     DW   ESSEG, CSSEG, SSSEG, DSSEG, FSSEG, GSSEG
    EA000     DB   'BX+SI$'
    EA001     DB   'BX+DI$'
    EA010     DB   'BP+SI$'
    EA011     DB   'BP+DI$'
    EA100    EQU   SIREG
    EA101    EQU   DIREG
    EA110    EQU   BPREG
    EA111    EQU   BXREG
    EA16      DW   EA000, EA001, EA010, EA011, EA100, EA101, EA110,  EA111
    SCALE2    DB   '*2$'
    SCALE4    DB   '*4$'
    SCALE8    DB   '*8$'
    LOCK_     DB   'LOCK   $'
    OPCODES   DW   26H DUP(NEXT)
              DW   S_ES, 7 DUP(NEXT), S_CS, 7 DUP(NEXT), S_SS, 7 DUP(NEXT), S_DS, 25H DUP(NEXT)
              DW   S_FS, S_GS, SIZE_PREFIX, ADDR_PREFIX, 20H DUP(NEXT),MOV_RM8_R8, MOV_RM1632_R1632
              DW   MOV_R8_RM8, MOV_R1632_RM1632, MOV_M16R1632_SREG, NEXT, MOV_SREG_RM16, 0AH DUP(NEXT)
              DW   CWD_PRINT, 6 DUP(NEXT), MOV_AL_MOFFS8, MOV_E_AX_MOFFS1632, MOV_MOFFS8_AL, MOV_MOFFS1632_E_AX
              DW   0CH DUP(NEXT), 4 DUP (MOV_R_IMM, MOV_R_IMM, MOV_R_IMM, MOV_R_IMM)
              DW   SAR_RM8_IMM8, SAR_RM1632_IMM8, 4 DUP(NEXT), MOV_RM8_IMM8, MOV_RM1632_IMM1632, 8 DUP(NEXT)
              DW   SAR_RM8_1, SAR_RM1632_1, SAR_RM8_CL, SAR_RM1632_CL, 1CH DUP(NEXT), LOCK_PRINT
    B_PTR     DB   'byte ptr $'
    W_PTR     DB   'word ptr $'
    D_PTR     DB   'dword ptr $'
    PTR_      DW   0
    MOD_MOD         DB   0
    MOD_RM          DB   0
    MOD_REG         DB   0
    SIB_SCALE       DB   0
    SIB_INDEX       DB   0
    SIB_BASE        DB   0
    PREFIX_SEG      DW   0
    PREFIX_66       DB   0
    PREFIX_67       DB   0
    IMM             DB   0
    OPERAND_BYTE    DB   0
    OPERAND_SEG     DB   0
    IMM_SIZE        DB   0
    STRING          DB   16 DUP (?)
    BIN             DB   5120 DUP (?)
.CODE
START:
    MOV     AX, @DATA
    MOV     DS, AX
    MOV     ES, AX
    MOV     AX, 3D00H
    LEA     DX, COM
    INT     21H
    JC      COM_EXIT
    MOV     BX, AX
    LEA     DX, BIN
    MOV     DI, DX
    MOV     SI, DI
    MOV     CX, 5120
    MOV     AH, 3FH
    INT     21H
    ADD     DI, AX
    MOV     AH, 3EH
    INT     21H
    MOV     AH, 3CH
    XOR     CX, CX
    LEA     DX, RESULT
    INT     21H
    MOV     BP, AX
    LEA     DX, STRING
NEXT:
    CMP     SI, DI
    JNBE    EXIT
    LODSB
    MOVZX   BX, AL
    SHL     BX, 1
    JMP     OPCODES[BX]
S_ES:
    LEA     AX, ESSEG
    JMP     SEG_ADDRESS
S_CS:
    LEA     AX, CSSEG
    JMP     SEG_ADDRESS
S_SS:
    LEA     AX, SSSEG
    JMP     SEG_ADDRESS
S_DS:
    LEA     AX, DSSEG
    JMP     SEG_ADDRESS
S_FS:
    LEA     AX, FSSEG
    JMP     SEG_ADDRESS
S_GS:
    LEA     AX, GSSEG
SEG_ADDRESS:
    MOV     PREFIX_SEG, AX
    JMP     NEXT
SIZE_PREFIX:
    MOV     PREFIX_66, 1
    JMP     NEXT
ADDR_PREFIX:
    MOV     PREFIX_67, 1
    JMP     NEXT
MOV_RM8_R8:
    MOV     OPERAND_BYTE, 1
MOV_RM1632_R1632:
    JMP     MODRM_PRINT_MOV_RM_REG
MOV_R8_RM8:
    MOV     OPERAND_BYTE, 1
MOV_R1632_RM1632:
    JMP     MODRM_PRINT_MOV_REG_RM
MOV_M16R1632_SREG:
    MOV     OPERAND_SEG, 1
    JMP     MODRM_PRINT_MOV_RM_REG
MOV_SREG_RM16:
    MOV     OPERAND_SEG, 1
    JMP     MODRM_PRINT_MOV_REG_RM
CWD_PRINT:
    LEA     AX, CWD_
    CALL    PRINT_STRING
    JMP     PRINT_NEW_LINE
MOV_AL_MOFFS8:
    MOV     OPERAND_BYTE, 1
MOV_E_AX_MOFFS1632:
    CALL    SET_MOFFS
    JMP     PRINT_MOV_REG_RM
MOV_MOFFS8_AL:
    MOV     OPERAND_BYTE, 1
MOV_MOFFS1632_E_AX:
    CALL    SET_MOFFS
    JMP     PRINT_MOV_RM_REG
MOV_R_IMM:
    MOV     OPERAND_BYTE, 1
    AND     AL, 0FH
    CMP     AL, 8
    JB      OPERAND_IS_IMM8
    SUB     AL, 8
    OR      PREFIX_66, 0
    JZ      IMM_IS_16BIT
    OR      IMM_SIZE, 80H
IMM_IS_16BIT:
    MOV     IMM_SIZE, 1
    MOV     OPERAND_BYTE, 0
OPERAND_IS_IMM8:
    SHL     AL, 1
    MOV     MOD_REG, AL
    CALL    PRINT_MOV
    CALL    PRINT_REG
PRINT_COMMA_IMM:
    CALL    PRINT_COMMA
    XOR     EAX, EAX
    MOV     IMM, 1
    OR      IMM_SIZE, 0
    JNS     IMM_IS_NOT_DWORD
    LODSD
    JMP     IMM_OUT
IMM_IS_NOT_DWORD:
    JNZ     IMM_IS_WORD
    LODSB
    JMP     IMM_OUT
IMM_IS_WORD:
    LODSW
IMM_OUT:
    CALL    PRINT_HEX
    JMP     PRINT_NEW_LINE
SAR_RM8_IMM8:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
SAR_RM1632_IMM8:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    XOR     EAX, EAX
    LODSB
    CALL    PRINT_HEX
    JMP     PRINT_NEW_LINE
MOV_RM8_IMM8:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
MOV_RM1632_IMM1632:
    CALL    PRINT_MOV
    CALL    MOD_REG_RM
    OR      OPERAND_BYTE, 0
    JNZ     ITS_BYTE_WORD_IMM
    OR      IMM_SIZE, 1
    MOV     PTR_, OFFSET W_PTR
    OR      PREFIX_66, 0
    JZ      ITS_BYTE_WORD_IMM
    MOV     PTR_, OFFSET D_PTR
    OR      IMM_SIZE, 80H
ITS_BYTE_WORD_IMM:
    CALL    PRINT_RM
    JMP     PRINT_COMMA_IMM
SAR_RM8_1:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
SAR_RM1632_1:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    LEA     AX, ONE
    CALL    PRINT_STRING
    JMP     PRINT_NEW_LINE
SAR_RM8_CL:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
SAR_RM1632_CL:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    LEA     AX, CLREG
    CALL    PRINT_STRING
    JMP     PRINT_NEW_LINE
LOCK_PRINT:
    LEA     AX, LOCK_
    CALL    PRINT_STRING
    JMP     NEXT
COM_EXIT:
    LEA     DX, ERROR
    MOV     AH, 9
    INT     21H
EXIT:
    MOV     AH, 3EH
    MOV     BX, BP
    INT     21H
    MOV     AH, 4CH
    INT     21H
MODRM_PRINT_MOV_RM_REG:
    CALL    MOD_REG_RM
PRINT_MOV_RM_REG:
    CALL    PRINT_MOV
    CALL    PRINT_RM
    CALL    PRINT_COMMA
    CALL    PRINT_REG
    JMP     PRINT_NEW_LINE
MODRM_PRINT_MOV_REG_RM:
    CALL    MOD_REG_RM
PRINT_MOV_REG_RM:
    CALL    PRINT_MOV
    CALL    PRINT_REG
    CALL    PRINT_COMMA
    CALL    PRINT_RM
PRINT_NEW_LINE:
    PUSH    SI DI
    MOV     DI, DX
    MOV     AX, 0A0DH
    STOSW
    MOV     CX, 2
    MOV     AH, 40H
    MOV     BX, BP
    INT     21H
    REP     STOSB
    MOV     MOD_MOD, 0
    MOV     MOD_REG, 0
    MOV     MOD_RM, 0
    MOV     PREFIX_SEG, 0
    MOV     PREFIX_66, 0
    MOV     PREFIX_67, 0
    MOV     PTR_, 0
    MOV     IMM, 0
    MOV     OPERAND_BYTE, 0
    MOV     IMM_SIZE, 0
    POP     DI SI
    JMP     NEXT

SET_PTR_PRINT_SAR_RM_COMMA PROC
    LEA     AX, SAR_
    CALL    PRINT_STRING
    CALL    MOD_REG_RM
    OR      OPERAND_BYTE, 0
    JNZ     RET_SAR
    MOV     PTR_, OFFSET W_PTR
    OR      PREFIX_66, 0
    JZ      RET_SAR
    MOV     PTR_, OFFSET D_PTR
RET_SAR:
    CALL    PRINT_RM
    CALL    PRINT_COMMA
    MOV     IMM, 1
    RET
ENDP

PRINT_STRING PROC
    PUSH    SI BX DI
    MOV     DI, DX
    XOR     CX, CX
    MOV     SI, AX
PRINTING:
    MOVSB
    INC     CX
    CMP     BYTE PTR [SI], '$'
    JNE     PRINTING
    MOV     AH, 40H
    MOV     BX, BP
    INT     21H
    POP     DI BX SI
    RET
ENDP

MOD_REG_RM PROC
    LODSB
    MOV     AH, AL
    AND     AH, 11000000B
    MOV     MOD_MOD, AH
    MOV     AH, AL
    SHR     AH, 2
    AND     AH, 1110B
    MOV     MOD_REG, AH
    AND     AL, 111B
    SHL     AL, 1
    MOV     MOD_RM, AL
    RET
ENDP

PRINT_REG PROC
    PUSH    BX SI
    OR      OPERAND_SEG, 0
    JZ      NOT_SEG_OPER
    MOV     OPERAND_SEG, 0
    MOVZX   BX, MOD_REG
    MOV     AX, SREGS[BX]
    CALL    PRINT_STRING
    POP     SI BX
    RET
NOT_SEG_OPER:
    LEA     BX, REG_B
    OR      OPERAND_BYTE, 0
    JNZ     GO_PRINT
    LEA     BX, REG_W
    OR      PREFIX_66, 0
    JZ      GO_PRINT
    LEA     BX, REG_D
GO_PRINT:
    MOVZX   SI, MOD_REG
    MOV     AX, [BX+SI]
    CALL    PRINT_STRING
    POP     SI BX
    RET
ENDP

PRINT_RM  PROC
    CMP     MOD_MOD, 11000000B
    JNE     NOT11MOD
    PUSH    word ptr operand_seg
    MOV     operand_seg, 0
    MOV     AL, MOD_RM
    MOV     BH, MOD_REG
    MOV     BL, AL
    MOV     MOD_REG, AL
    CALL    PRINT_REG
    MOV     MOD_REG, BH 
    MOV     MOD_RM, BL
    POP     word ptr operand_seg
    JMP     RET_REG
NOT11MOD:
    OR      PTR_, 0
    JZ      NO_TYPE_OVR
    MOV     AX, PTR_
    CALL    PRINT_STRING
NO_TYPE_OVR:
    MOV     AX, PREFIX_SEG
    OR      AX, AX
    JNZ     PRINT_SEG_STR
    MOV     BL, MOD_RM
    LEA     AX, DSSEG
    OR      PREFIX_67, 0
    JNZ     MODRM32
    CMP     BL, 0100B
    JE      PRINT_SS
    CMP     BL, 0110B
    JE      PRINT_SS
    CMP     BL, 1100B
    JNE     PRINT_SEG_STR
    OR      MOD_MOD, 0
    JNZ     PRINT_SS
    JMP     PRINT_SEG_STR
MODRM32:
    CMP     BL, 1010B
    JNE     PRINT_SEG_STR
    OR      MOD_MOD, 0
    JZ      PRINT_SEG_STR
PRINT_SS:
    LEA     AX, SSSEG
    JMP     PRINT_SEG_STR
PRINT_SEG_STR:
    CALL    PRINT_STRING
    LEA     AX, COLON
    CALL    PRINT_STRING
    OR      PREFIX_67, 0
    JZ      BIT16_RM
        CMP     MOD_RM, 1000B
        JNE     NO_SIB_BASEYTE
            LODSB
            MOV     AH, AL
            AND     AH, 11000000B
            MOV     SIB_SCALE, AH
            MOV     AH, AL
            SHR     AH, 2
            AND     AH, 1110B
            MOV     SIB_INDEX, AH
            AND     AL, 111B
            SHL     AL, 1
            MOV     SIB_BASE, AL
            MOVZX   BX, SIB_BASE
            MOV     AX, REG_D[BX]
            CALL    PRINT_STRING
            CMP     SIB_BASE, 1010B
            JNE     NO_BASE_101
            OR      MOD_MOD, 0
            JNZ     NO_BASE_101
            PUSH    DX
            MOV     AH, 42H
            MOV     AL, 1
            MOV     BX, BP
            MOV     CX, -1
            MOV     DX, -3
            INT     21H
            POP     DX
            JMP     INDEX
        NO_BASE_101:
            CMP     SIB_INDEX, 1000B
            JE      NO_SCALE
            LEA     AX, PLUS
            CALL    PRINT_STRING
        INDEX:
            MOVZX   BX, SIB_INDEX
            MOV     AX, REG_D[BX]
            CALL    PRINT_STRING
            MOV     BL, SIB_SCALE
            OR      BL, BL
            JZ      NO_SCALE
            LEA     AX, SCALE4
            CMP     SIB_SCALE, 10000000B
            JE      PRINT_SCALE
            JB      SCALETWO
            LEA     AX, SCALE8
            JMP     PRINT_SCALE
        SCALETWO:
            LEA     AX, SCALE2
        PRINT_SCALE:
            CALL    PRINT_STRING
        NO_SCALE:
            CMP     SIB_BASE, 1010B
            JNE     CHECK_DISP_8_32
            OR      MOD_MOD, 0
            JZ      DISP32
            JMP     CHECK_DISP_8_32
    NO_SIB_BASEYTE:
        CMP     MOD_RM, 1010B
        JNE     PRINT_RM32
        OR      MOD_MOD, 0
        JNZ     PRINT_RM32
        MOV     IMM, 1
    DISP32:
        LODSD
        CALL    PRINT_HEX
        JMP     RETURN
    PRINT_RM32:
        MOVZX   BX, MOD_RM
        MOV     AX, REG_D[BX]
        CALL    PRINT_STRING
        OR      MOD_MOD, 0
        JZ      RETURN
    CHECK_DISP_8_32:
        CMP     MOD_MOD, 1000000B
        JA      DISP32
        JB      RETURN
        XOR     EAX, EAX
        LODSB
        CALL    PRINT_HEX
        JMP     RETURN
BIT16_RM:
    OR      MOD_MOD, 0
    JNZ     NOT_00_MOD_16
    CMP     MOD_RM, 1100B
    JNE     NOT_00_MOD_16
    XOR     EAX, EAX
    LODSW
    MOV     IMM, 1
    CALL    PRINT_HEX
    JMP     RETURN
NOT_00_MOD_16:
    MOVZX   BX, MOD_RM
    MOV     AX, EA16[BX]
    CALL    PRINT_STRING
    OR      MOD_MOD, 0
    JZ      RETURN
    XOR     EAX, EAX
    CMP     MOD_MOD, 1000000B
    JNE     NOT_01_MOD_16
    LODSB
    JMP     PRINT_DISP_BYTE_WORD
NOT_01_MOD_16:
    LODSW
PRINT_DISP_BYTE_WORD:
    CALL    PRINT_HEX
RETURN:
    LEA     AX, BRACKET
    CALL    PRINT_STRING
RET_REG:
    RET
ENDP

SET_MOFFS PROC
    MOV     MOD_RM, 1100B
    OR      PREFIX_67, 0
    JZ      NO_MOFFS32
    MOV     MOD_RM, 1010B
NO_MOFFS32:
    RET
ENDP

PRINT_COMMA PROC
    LEA     AX, COMMA
    CALL    PRINT_STRING
    RET
ENDP

PRINT_MOV PROC
    LEA     AX, MOV_
    CALL    PRINT_STRING
    ret
ENDP

PRINT_HEX PROC
    PUSH    BX DI
    MOV     DI, DX
    CMP     IMM, 1
    JE      ZERO_IMM_CHECK
    OR      EAX, EAX
    JZ      END_HEX
    MOV     BYTE PTR [DI], '+'
    INC     DI
ZERO_IMM_CHECK:
    OR      EAX, EAX
    JNZ     NOT_ZERO_IMM
    MOV     AL, '0'
    STOSB
    JMP     STORE_H
NOT_ZERO_IMM:
    MOV     EBX, EAX
    MOV     CL, 8
    JMP     TEST_
REMOVE_ZERO:
    DEC     CL
    ROL     EBX, 4
TEST_:
    TEST    EBX, 0F0000000H
    JZ      REMOVE_ZERO
    XOR     AL, AL
    SHLD    EAX, EBX, 4
    CMP     AL, 9
    JBE     A_DIGIT
    MOV     AL, '0'
    STOSB
A_DIGIT:
    XOR     AL, AL
ASCII:
    SHLD    EAX, EBX, 4
    SHL     EBX, 4
    CMP     AL, 9
    JNA     NUMBER
    ADD     AL, 7
NUMBER:
    ADD     AL, 30H
    STOSB
    XOR     AL, AL
    LOOP    ASCII
STORE_H:
    MOV     AL, 'H'
    STOSB
    MOV     CX, DI
    SUB     CX, DX
    MOV     AH, 40H
    MOV     BX, BP
    INT     21H
END_HEX:
    POP     DI BX
    RET
ENDP
    END     START