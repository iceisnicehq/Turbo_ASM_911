
INS_STR PROC ; SI = pointer to ASCII$ string
    MOV         DI, INS_END_PTR
@@FIND_END:
    CMP         BYTE PTR [SI], "$"
    JE          SHORT @@RETURN
    MOVSB
    JMP         @@FIND_END
@@RETURN:
    MOV         INS_END_PTR, DI
    RET
INS_STR ENDP     

SPUT_HEX PROC ; IN (AX - hex_num; BX - str_ptr; DL=1 if word), OUT BX - end_str_ptr
    PUSHF       
    MOV         CX, 10h
    MOV         SI, 2
    OR          DL, DL
    JZ          SHORT @@PREP_DIVIDE
    SHL         SI, 1
@@PREP_DIVIDE:
    PUSH        SI
@@DIVIDE:
    DEC         SI
    XOR         DX, DX
    DIV         CX
    CMP         DL, 9
    JBE         SHORT @@HEX_DIGIT
@@HEX_LETTER:
    ADD         DL, 37h
    JMP         SHORT @@ADD_TO_BUFFER
@@HEX_DIGIT:
    ADD         DL, 30h
@@ADD_TO_BUFFER:
    MOV         [BX + SI], DL
    OR          AX, AX
    JNE         @@DIVIDE
    OR          SI, SI
    JE          SHORT @@CHECK_SHIFT
@@ADD_LEADING_ZEROS:
    DEC         SI
    MOV         BYTE PTR [BX + SI], "0"
    OR          SI, SI
    JNE         @@ADD_LEADING_ZEROS
@@CHECK_SHIFT:
    POP         CX
    POPF
    JNC         SHORT @@RETURN
    MOV         SI, CX
    CMP         BYTE PTR [BX], "A"
    JB          SHORT @@RETURN
@@SHIFT_HEX:
    DEC         SI
    MOV         AL, [BX + SI]
    MOV         [BX + SI + 1], AL
    OR          SI, SI
    JNE         @@SHIFT_HEX
    MOV         BYTE PTR [BX], "0"
    INC         CX
@@RETURN:
    ADD         BX, CX
    RET
SPUT_HEX ENDP

READ_UPCOMING_BYTE PROC
    PUSH        BX AX
    MOV         AX, DATA_SIZE
    CMP         AX, DATA_INDEX
    JA          SHORT @@CHECK_FILE_END
    MOV         AH, 3Fh
    MOV         BX, COM_FILE_HANDLE 
    MOV         CX, DATA_BUFFER_CAPACITY
    MOV         DX, OFFSET DATA_BUFFER
    INT         21h
    MOV         DATA_SIZE, AX 
    MOV         DATA_INDEX, 0
@@CHECK_FILE_END:
    OR          AX, AX
    JNE         SHORT @@GET_BYTE
    MOV         DH, 1
    JMP         SHORT @@RETURN
@@GET_BYTE:
    XOR         DH, DH
    MOV         BX, OFFSET DATA_BUFFER
    ADD         BX, DATA_INDEX
    MOV         DL, [BX]
    INC         DATA_INDEX
    INC         IP_VALUE
    PUSH        DX
    MOVZX       AX, DL
    MOV         BX, MC_END_PTR
    XOR         DL, DL
    CLC
    CALL        SPUT_HEX
    INC         BX
    MOV         MC_END_PTR, BX
    POP         DX
@@RETURN:
    POP         AX BX
    RET
READ_UPCOMING_BYTE ENDP
     
PUT_OPERAND PROC ; DL = Operand
    XOR         BX, BX
    CMP         AL, OP_NONE
    JE          @@RETURN
    CMP         AL, OP_REL16
    JBE         @@PRINT_IMM8
    CMP         AL, OP_REG16
    JE          @@PRINT_REG
    CMP         MODE, 110b
    JNE         SHORT @@EFFECTIVE_ADDRESSING
    MOV         BL, RM
    CMP         SIZE_OVR, 0
    JE          SHORT @@PRINT_MODRM_REG
    ADD         BL, REG_SHIFT
@@PRINT_MODRM_REG:
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    JMP         @@RETURN
@@EFFECTIVE_ADDRESSING:
    CMP         CURRENT_INSTRUCTION.OP2, OP_REG16
    JE          SHORT @@CHECK_SEG
    CMP         SIZE_OVR, 0
    JE          SHORT @@EA_START
    MOVZX       BX, SIZE_OVR
@@EA_START:
    MOV         SI, SIZE_OVR_PTRS[BX]
    CALL        INS_STR
@@CHECK_SEG:
    MOV         BL, SEG_OVR
    OR          BL, BL
    JNE         SHORT @@PRINT_SEG
    MOV         BL, VAL_DS
    MOV         BH, RM         
    CMP         ADDR_OVR, 0
    JE          SHORT @@MODRM16
    CMP         MODE, 000b
    JE          SHORT @@CHECK_SIB
    CMP         BH, 1010b
    JE          SHORT @@PRINT_SS
@@CHECK_SIB:
    CMP         BH, 1000b
    JNE         SHORT @@PRINT_SEG
    CMP         BASE, 1000b
    JE          SHORT @@PRINT_SS
    CMP         BASE, 1010b
    JNE         SHORT @@PRINT_SEG
    CMP         MODE, 000b
    JNE         SHORT @@PRINT_SS
    CMP         INDEX, 1010b
    JE          SHORT @@PRINT_SS  
    JMP         SHORT @@PRINT_SEG
@@MODRM16:
    CMP         BH, 0100b
    JE          SHORT @@PRINT_SS
    CMP         BH, 0110b
    JE          SHORT @@PRINT_SS
    CMP         MODE, 000b
    JE          SHORT @@PRINT_SEG
    CMP         BH, 1100b
    JNE         SHORT @@PRINT_SEG
@@PRINT_SS:
    MOV         BL, VAL_SS
@@PRINT_SEG:
    XOR         BH, BH
    MOV         SI, SEG_REGS[BX-2]
    CALL        INS_STR
    INS_CHAR    "["
    CMP         MODE, 000b
    JNE         SHORT @@EA_NORMAL
    CMP         ADDR_OVR, 1
    JE          SHORT @@MODRM32
    CMP         RM, 1100b
    JE          @@PRINT_DISP
    JMP         SHORT @@EA_NORMAL
@@MODRM32:
    CMP         RM, 1010b
    JE          @@PRINT_DISP       
@@EA_NORMAL:
    CMP         ADDR_OVR, 2
    JNE         SHORT @@NO_SIB
    CMP         BASE, 1010b
    JNE         @@NO_EBP_BASE
    CMP         MODE, 000b
    JE          @@NO_BASE
@@NO_EBP_BASE:
    MOVZX       BX, BASE
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    INS_CHAR    "+"
@@NO_BASE:
    MOVZX       BX, INDEX
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMP         SCALE, 000b
    JE          @@CHECK_MODE
    INS_CHAR    "*"
    MOV         DL, "0"
    ADD         DL, SCALE
    INS_CHAR    DL
    CMP         BASE, 1010b
    JNE         @@CHECK_MODE
    CMP         MODE, 000b
    OR          DWORD PTR [DISP32], 0
    JNZ         SHORT @@SIB_DISP
    JMP         @@EA_END
@@NO_SIB:
    XOR         BH, BH
    MOV         BL, RM
    CMP         ADDR_OVR, 0
    JE          SHORT @@EA16
    ADD         BL, EA_REG_SHIFT
@@EA16:
    MOV         SI, EFFECTIVE_ADDRESSES[BX]
    CALL        INS_STR
@@CHECK_MODE:
    CMP         MODE, 000b
    JE          SHORT @@EA_END
@@SIB_DISP:
    INS_CHAR    "+"
@@PRINT_DISP:
    MOV         AX, DISP
    CMP         MODE, 010b
    JE          SHORT @@PRINT_BYTE_DISP
    CMP         ADDR_OVR, 0
    JE          SHORT @@DISP16
    PUSH        AX
    MOV         AX, DISP32
    STC 
    INS_WORD
    POP         AX
@@DISP16:
    CLC
    INS_WORD
    INS_CHAR    "H"
    JMP         SHORT @@EA_END
@@PRINT_BYTE_DISP:
    OR          AL, AL
    JNZ         SHORT @@NON_ZERO_BYTE_DISP
    DEC         INS_END_PTR
    JMP         SHORT @@EA_END
@@NON_ZERO_BYTE_DISP:
    INS_BYTE
    INS_CHAR    "H"
@@EA_END:
    INS_CHAR    "]"
    JMP         SHORT @@RETURN
@@PRINT_IMM8:
    CMP         AL, OP_REL8
    MOV         AX, IMM
    JAE         SHORT @@PRINT_REL
    INS_BYTE
    INS_CHAR    "H"
    JMP         SHORT @@RETURN
@@PRINT_REL:
    JA          SHORT @@REL16
    CBW
@@REL16:
    ADD         AX, IP_VALUE
    INC         AX
    STC
    INS_WORD
    INS_CHAR    "H"
    JMP         SHORT @@RETURN
@@PRINT_REG:
    MOV         BL, REG
    CMP         SIZE_OVR, 0
    JE          SHORT @@PRINT_REG_NAME
    ADD         BL, REG_SHIFT    
@@PRINT_REG_NAME:
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
@@RETURN:
    RET
PUT_OPERAND ENDP
 
DECODE_MODRM_SIB PROC 
    PUSH        AX DX 
    CALL        READ_UPCOMING_BYTE
    MOV         BX, OFFSET MODRM_BYTE
    MOV         IS_MODRM_DECODED, 1    
    CMP         ADDR_OVR, 2
    JNE         SHORT @@NOT_SIB
    MOV         BX, OFFSET SIB_BYTE
@@NOT_SIB:
    MOV         AL, DL
    AND         AL, 11000000b
    SHR         AL, 5
    MOV         [BX], AL
    
    MOV         AL, DL
    AND         AL, 00111000b
    SHR         AL, 2
    MOV         [BX + 1], AL
    
    MOV         AL, DL
    AND         AL, 00000111b
    SHL         AL, 1
    MOV         [BX + 2], AL
    POP         DX AX
    RET
DECODE_MODRM_SIB ENDP

DECODE_OPERAND PROC 
    XOR         BX, BX
    CMP         AL, OP_REG16
    JAE         SHORT @@READ_MODRM
    CMP         AL, OP_IMM8
    JAE         SHORT @@READ_IMM
    JMP         @@RETURN
@@READ_IMM:
    CALL        READ_UPCOMING_BYTE
    MOVSX       BX, DL
    CMP         AL, OP_REL16
    JNE         SHORT @@SAVE_IMM
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
@@SAVE_IMM:
    MOV         IMM, BX
    JMP         @@RETURN
@@READ_MODRM:
    CMP         IS_MODRM_DECODED, 0
    JNE         SHORT @@MODRM_DECODED
    CALL        DECODE_MODRM_SIB ; MODRM
@@MODRM_DECODED:
    CMP         AL, OP_REG16
    JE          @@RETURN
    CMP         MODE, 110b
    JE          SHORT @@RETURN
    CMP         ADDR_OVR, 0
    JE          SHORT @@MODRM16
    CMP         RM, 1000b     
    JNE         SHORT @@MODRM16
    INC         ADDR_OVR
    CALL        DECODE_MODRM_SIB   ; SIB
    CMP         SCALE, 110b
    JNE         SHORT @@MODRM16
    MOV         SCALE, 1000b
@@MODRM16:
    CMP         MODE, 010b
    JAE         SHORT @@READ_DISP
    CMP         ADDR_OVR, 0
    JE          SHORT @@DISP16
    CMP         RM, 1010b
    JE          SHORT @@READ_DISP
    
CMP ADDR_OVR, 2
JNE SHORT @@DISP16
CMP BASE, 1010b
JE  SHORT @@READ_DISP
    
    JMP         SHORT @@RETURN
@@DISP16:
    CMP         RM, 1100b
    JE          SHORT @@READ_DISP
    JMP         SHORT @@RETURN
    
@@READ_DISP:
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL
    CMP         MODE, 010b
    JE          SHORT @@STORE_DISP
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    CMP         ADDR_OVR, 0
    JE          SHORT @@STORE_DISP
    PUSH        BX
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    MOV         DISP32, BX
    POP         BX
@@STORE_DISP:
    MOV         DISP, BX
@@RETURN:
    RET
DECODE_OPERAND ENDP
