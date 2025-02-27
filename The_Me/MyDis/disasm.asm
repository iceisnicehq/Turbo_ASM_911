LOCALS @@
SMART 

.MODEL SMALL
.386
.STACK 100h
.DATA
    INSTRUCTION STRUC
        MNEMONIC            DW ?
        TYPEOF              DB ?
        OP1                 DB ?
        OP2                 DB ?
    ENDS

    DATA_BUFFER_CAPACITY    EQU 255
    IP_BUFFER_CAPACITY      EQU 4
    MC_BUFFER_CAPACITY      EQU 45
    INS_BUFFER_CAPACITY     EQU 65
    RES_FILE_NAME           EQU "RESULT.ASM"
    COM_FILE_NAME           EQU "COM.COM"

    RES_FILE                DB RES_FILE_NAME, 0
    RES_FILE_NAME_LEN       EQU $ - RES_FILE  - 1
    COM_FILE                DB COM_FILE_NAME, 0
    ERR_MSG                 DB 'Error occurred. Make sure COM file is "', COM_FILE_NAME, '". Res_file will be "', RES_FILE_NAME, '"$'
    SUCCESS_MSG             DB "Result successfully written to file: ", RES_FILE_NAME, "$"
    IP_VALUE                DW 0FFh

    IP_BUFFER               DB "0000H:  "
    MC_BUFFER               DB MC_BUFFER_CAPACITY DUP (" ")
    INS_BUFFER              DB INS_BUFFER_CAPACITY DUP ("$")
    INS_END_PTR             DW INS_BUFFER   
    MC_END_PTR              DW MC_BUFFER
        DATA_SIZE               DW ?                            
        DATA_INDEX              DW ?
        DATA_BUFFER             DB DATA_BUFFER_CAPACITY DUP (?) 

        COM_FILE_HANDLE         DW ?
        RES_FILE_HANDLE         DW ?

        IMM                     DW ?
        DISP32                  DW ?
        DISP                    DW ?

        LABEL CURRENT_INSTRUCTION
            INSTRUCTION { }

        LABEL PREF_BYTES
            LABEL ADDR_SIZE WORD 
                ADDR_OVR            DB ?
                SIZE_OVR            DB ?
            LABEL EXT_SEG  WORD 
                INS_EXT             DB ?
                SEG_OVR             DB ?
            LABEL PREF_MODRM WORD 
                HAS_PREFIX          DB ?
                IS_MODRM_DECODED    DB ?
            LABEL SIB_BYTE
                SCALE               DB ?
                INDEX               DB ?
                BASE                DB ?
            LABEL MODRM_BYTE
                MODE                DB ?
                REG                 DB ?
                RM                  DB ?



include    "opcodes.inc"

.CODE
include    "macro.inc"
include    "utils.inc"


START:
    MOV         AX, @DATA
    MOV         DS, AX
    MOV         ES, AX

OPEN_COM_FILE:
    MOV         AX, 3D00h          
    MOV         DX, OFFSET COM_FILE
    INT         21h
    JC          SHORT EXIT_WITH_ERR
    MOV         COM_FILE_HANDLE, AX

OPEN_RESULT_FILE:
    MOV         AH, 3Ch
    XOR         CX, CX
    MOV         DX, OFFSET RES_FILE
    INT         21h
    MOV         BYTE PTR [RES_FILE + RES_FILE_NAME_LEN], "$"
    JC          SHORT EXIT_WITH_ERR
    MOV         RES_FILE_HANDLE, AX
    JMP         SHORT DECODE_NEW_INSTRUCTION

EXIT_WITH_ERR:
    MOV         DX, OFFSET ERR_MSG
    MOV         AH, 09h
    INT         21h
    JMP         EXIT

DECODE_NEW_INSTRUCTION:    
    CALL        READ_UPCOMING_BYTE
    OR          DH, DH
    JE          SHORT LOAD_INSTRUCTION
    MOV         DX, OFFSET SUCCESS_MSG
    MOV         AH, 09h
    INT         21h
    JMP         EXIT
    
LOAD_INSTRUCTION:
    MOV         AX, SIZE INSTRUCTION
    MOV         CX, AX
    MUL         DL
    MOV         SI, OFFSET INSTRUCTION_LIST
    ADD         SI, AX
    MOV         DI, OFFSET CURRENT_INSTRUCTION
    REP         MOVSB
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_JCXZ
    JNE         SHORT NOT_JECXZ
    CMP         ADDR_OVR, 1
    JNE         SHORT NOT_JECXZ
    MOV         CURRENT_INSTRUCTION.MNEMONIC, OFFSET INS_JECXZ
NOT_JECXZ:
    MOVZX       AX, HAS_PREFIX
    OR          AX, ADDR_SIZE
    OR          AX, EXT_SEG
    JNZ         SHORT CHECK_PREFIX_TYPE

PRINT_OFFSET:
    MOV         BX, OFFSET IP_BUFFER
    MOV         AX, IP_VALUE
    MOV         DL, 1
    CLC 
    CALL        SPUT_HEX

CHECK_PREFIX_TYPE: 
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR
    JNE         SHORT NOT_SEG_OVR
    MOV         AX, CURRENT_INSTRUCTION.MNEMONIC
    MOV         SEG_OVR, AL
    JMP         DECODE_NEW_INSTRUCTION
NOT_SEG_OVR:
    MOVZX       BX, CURRENT_INSTRUCTION.TYPEOF
    MOV         BYTE PTR PREF_BYTES[BX-1], BL
    CMP         BL, INS_TYPE_PREFIX
    JNAE        DECODE_NEW_INSTRUCTION
    MOV         SI, CURRENT_INSTRUCTION.MNEMONIC
    CALL        INS_STR
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_UNKNOWN
    JBE         DECODE_NEW_INSTRUCTION
        
ANALYZE_OPERANDS:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_AAD
    JNE         SHORT READ_OPERANDS
    CALL        READ_UPCOMING_BYTE
    JMP         SHORT PRINT_TO_FILE

READ_OPERANDS:
    MOV         AL, CURRENT_INSTRUCTION.OP1
    CALL        DECODE_OPERAND
    MOV         AL, CURRENT_INSTRUCTION.OP2
    CALL        DECODE_OPERAND
    
    MOV         AL, CURRENT_INSTRUCTION.OP1
    CALL        PUT_OPERAND
    CMP         CURRENT_INSTRUCTION.OP2, OP_NONE
    JE          SHORT PRINT_TO_FILE
    INS_CHAR    ","
    MOV         AL, CURRENT_INSTRUCTION.OP2
    CALL        PUT_OPERAND
    
PRINT_TO_FILE:
    MOV         BX, INS_END_PTR
    MOV         WORD PTR [BX], 0A0Dh
    INC         BX
    INC         BX
    MOV         CX, BX
    MOV         DX, OFFSET IP_BUFFER
    SUB         CX, DX
    MOV         AH, 40h
    MOV         BX, RES_FILE_HANDLE
    INT         21h

RESET_BUFFER:
    MOV         DI, OFFSET MC_BUFFER
    MOV         MC_END_PTR, DI
    MOV         CX, MC_BUFFER_CAPACITY
    MOV         AL, " "
    REP STOSB
    MOV         INS_END_PTR, DI
    MOV         CX, INS_BUFFER_CAPACITY
    MOV         AL, "$"
    REP STOSB
    MOV         ADDR_SIZE, 0
    MOV         EXT_SEG, 0
    MOV         PREF_MODRM, 0
    JMP         DECODE_NEW_INSTRUCTION

EXIT:
    MOV         AH, 3Eh
    MOV         BX, COM_FILE_HANDLE
    INT         21h  
    MOV         BX, RES_FILE_HANDLE
    INT         21h 
    MOV         AX, 4C00h
    INT         21h
END START