LOCALS @@

.MODEL SMALL
.386
.STACK 100h
.DATA
    REG_SHIFT               EQU 16
    EA_REG_SHIFT            EQU 32
    VAL_ES                  EQU 2
    VAL_CS                  EQU 4
    VAL_SS                  EQU 6
    VAL_DS                  EQU 8
    VAL_FS                  EQU 10
    VAL_GS                  EQU 12
    DATA_BUFFER_CAPACITY    EQU 255
    MC_BUFFER_CAPACITY      EQU 45
    INS_BUFFER_CAPACITY     EQU 55
    RES_FILE_NAME           EQU "RESULT.ASM"
    COM_FILE_NAME           EQU "COM.COM"

    RES_FILE                DB RES_FILE_NAME, 0
    COM_FILE                DB COM_FILE_NAME, 0
    ERR_MSG                 DB 'Error occurred. Make sure COM file is "', COM_FILE_NAME, '". Res_file will be "', RES_FILE_NAME, '"$'
    SUCCESS_DIS             DB 'Result successfully written to file: ', RES_FILE_NAME, '$'
    IP_VALUE                DW 0FFh

    IP_BUFFER               DB "0000H:  "
    MC_BUFFER               DB MC_BUFFER_CAPACITY DUP (" ")
    INS_BUFFER              DB INS_BUFFER_CAPACITY DUP ("$")
    INSTRUC_END_PTR             DW INS_BUFFER   
    MC_END_PTR              DW MC_BUFFER
    
    DWORD_PTR               DB "d"
    WORD_PTR                DB "word ptr $"

    REG_EAX                 DB "E"
    REG_AX                  DB "AX$"
    REG_ECX                 DB "E"  
    REG_CX                  DB "CX$"
    REG_EDX                 DB "E"
    REG_DX                  DB "DX$"
    REG_EBX                 DB "E"
    REG_BX                  DB "BX$"
    REG_ESP                 DB "E"
    REG_SP                  DB "SP$"
    REG_EBP                 DB "E"
    REG_BP                  DB "BP$"
    REG_ESI                 DB "E"
    REG_SI                  DB "SI$"
    REG_EDI                 DB "E"
    REG_DI                  DB "DI$"

    SEG_ES                  DB "ES:$"
    SEG_CS                  DB "CS:$"
    SEG_SS                  DB "SS:$"
    SEG_DS                  DB "DS:$"
    SEG_FS                  DB "FS:$"
    SEG_GS                  DB "GS:$"

    BX_SI                   DB "BX+SI$"
    BX_DI                   DB "BX+DI$"
    BP_SI                   DB "BP+SI$"
    BP_DI                   DB "BP+DI$"

    LABEL EFFECTIVE_ADDRESSES
                            DW BX_SI, BX_DI, BP_SI, BP_DI, REG_SI, REG_DI, REG_BP, REG_BX
        
    LABEL REGISTERS
                            DW REG_AX,  REG_CX,  REG_DX,  REG_BX,  REG_SP,  REG_BP,  REG_SI,  REG_DI
                            DW REG_EAX, REG_ECX, REG_EDX, REG_EBX, REG_ESP, REG_EBP, REG_ESI, REG_EDI

    LABEL SEG_REGS
                            DW SEG_ES, SEG_CS, SEG_SS, SEG_DS, SEG_FS, SEG_GS

    LABEL SIZE_OVR_PTRS
                            DW WORD_PTR, DWORD_PTR


    INS_OPERANDS ENUM {
        OP_NONE,

        OP_IMM8,   
        OP_REL8, 
        OP_REL16, 

        OP_REG16,
        OP_REGMEM16
    }


    MNEM_UNK                DB "Unknown inst$"

    MNEM_AAD                DB "AAD$"

    MNEM_BTC                DB "BTC     $"

    MNEM_JO                 DB "JO      $"
    MNEM_JNO                DB "JNO     $"
    MNEM_JB                 DB "JB      $"
    MNEM_JNB                DB "JNB     $"
    MNEM_JZ                 DB "JZ      $"
    MNEM_JNZ                DB "JNZ     $"
    MNEM_JBE                DB "JBE     $"
    MNEM_JNBE               DB "JNBE    $"
    MNEM_JS                 DB "JS      $"
    MNEM_JNS                DB "JNS     $"
    MNEM_JP                 DB "JP      $"
    MNEM_JNP                DB "JNP     $"
    MNEM_JL                 DB "JL      $"
    MNEM_JNL                DB "JNL     $"
    MNEM_JLE                DB "JLE     $"
    MNEM_JNLE               DB "JNLE    $"

    MNEM_JCXZ               DB "JCXZ    $"
    MNEM_JECXZ              DB "JECXZ   $"

    MNEM_LOCK               DB "LOCK $"

    TYPES ENUM {
        TYPE_ADDR_OVR = 1,
        TYPE_SIZE_OVR,
        TYPE_EXT,
        TYPE_SEG_OVR,
        TYPE_PREFIX,
        TYPE_UNKNOWN,
        TYPE_JCC_BTC,
        TYPE_JCXZ,
        TYPE_AAD
    }

    INSTRUC STRUC
        MNEM                DW ?
        I_TYPE              DB ?
        OP1                 DB ?
        OP2                 DB ?
    ENDS

    INSTRUC_UNK MACRO count
        INSTRUC count dup  (<   MNEM_UNK,    TYPE_UNKNOWN,   OP_NONE,       OP_NONE         >)
    ENDM

    LABEL INSTRUC_SET
        INSTRUC_UNK     0Fh
        INSTRUC             <   OP_NONE,        TYPE_EXT,        OP_NONE,       OP_NONE         > ; 0Fh
        INSTRUC_UNK     16h 
        INSTRUC             <   VAL_ES,         TYPE_SEG_OVR,    OP_NONE,       OP_NONE         > ; 26h
        INSTRUC_UNK     07h 
        INSTRUC             <   VAL_CS,         TYPE_SEG_OVR,    OP_NONE,       OP_NONE         > ; 2Eh
        INSTRUC_UNK     07h 
        INSTRUC             <   VAL_SS,         TYPE_SEG_OVR,    OP_NONE,       OP_NONE         > ; 36h
        INSTRUC_UNK     07h 
        INSTRUC             <   VAL_DS,         TYPE_SEG_OVR,    OP_NONE,       OP_NONE         > ; 3Eh
        INSTRUC_UNK     25h 
        INSTRUC             <   VAL_FS,         TYPE_SEG_OVR,    OP_NONE,       OP_NONE         > ; 64h
        INSTRUC             <   VAL_GS,         TYPE_SEG_OVR,    OP_NONE,       OP_NONE         > ; 65h
        INSTRUC             <   OP_NONE,        TYPE_SIZE_OVR,   OP_NONE,       OP_NONE         > ; 66h
        INSTRUC             <   OP_NONE,        TYPE_ADDR_OVR,   OP_NONE,       OP_NONE         > ; 67h
        INSTRUC_UNK     08h
        INSTRUC             <   MNEM_JO,        TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 70h
        INSTRUC             <   MNEM_JNO,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 71h
        INSTRUC             <   MNEM_JB,        TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 72h
        INSTRUC             <   MNEM_JNB,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 73h
        INSTRUC             <   MNEM_JZ,        TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 74h
        INSTRUC             <   MNEM_JNZ,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 75h
        INSTRUC             <   MNEM_JBE,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 76h
        INSTRUC             <   MNEM_JNBE,      TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 77h
        INSTRUC             <   MNEM_JS,        TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 78h
        INSTRUC             <   MNEM_JNS,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 79h
        INSTRUC             <   MNEM_JP,        TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 7Ah
        INSTRUC             <   MNEM_JNP,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 7Bh
        INSTRUC             <   MNEM_JL,        TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 7Ch
        INSTRUC             <   MNEM_JNL,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 7Dh
        INSTRUC             <   MNEM_JLE,       TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 7Eh
        INSTRUC             <   MNEM_JNLE,      TYPE_JCC_BTC,    OP_REL8,       OP_NONE         > ; 7Fh
        INSTRUC             <   MNEM_JO,        TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 80h
        INSTRUC             <   MNEM_JNO,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 81h 
        INSTRUC             <   MNEM_JB,        TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 82h 
        INSTRUC             <   MNEM_JNB,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 83h 
        INSTRUC             <   MNEM_JZ,        TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 84h 
        INSTRUC             <   MNEM_JNZ,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 85h 
        INSTRUC             <   MNEM_JBE,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 86h 
        INSTRUC             <   MNEM_JNBE,      TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 87h 
        INSTRUC             <   MNEM_JS,        TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 88h 
        INSTRUC             <   MNEM_JNS,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 89h 
        INSTRUC             <   MNEM_JP,        TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 8Ah 
        INSTRUC             <   MNEM_JNP,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 8Bh 
        INSTRUC             <   MNEM_JL,        TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 8Ch 
        INSTRUC             <   MNEM_JNL,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 8Dh 
        INSTRUC             <   MNEM_JLE,       TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 8Eh 
        INSTRUC             <   MNEM_JNLE,      TYPE_JCC_BTC,    OP_REL16,      OP_NONE         > ; 8Fh  
        INSTRUC_UNK     2Ah
        INSTRUC             <   MNEM_BTC,       TYPE_JCC_BTC,    OP_REGMEM16,   OP_IMM8         > ; BAh
        INSTRUC             <   MNEM_BTC,       TYPE_JCC_BTC,    OP_REGMEM16,   OP_REG16        > ; BBh 
        INSTRUC_UNK     19h
        INSTRUC             <   MNEM_AAD,        TYPE_AAD,       OP_NONE,       OP_NONE         > ; D5h
        INSTRUC_UNK     0Dh
        INSTRUC             <   MNEM_JCXZ,       TYPE_JCXZ,      OP_REL8,       OP_NONE         > ; E3h  (JECXZ)
        INSTRUC_UNK     0Ch
        INSTRUC             <   MNEM_LOCK,       TYPE_PREFIX,    OP_NONE,       OP_NONE         > ; F0h
        INSTRUC_UNK     0Fh

    DATA_SIZE                   DW ?                            
    DATA_INDEX                  DW ?
    DATA_BUFFER                 DB DATA_BUFFER_CAPACITY DUP (?) 

    COM_FILE_HANDLE             DW ?
    RES_FILE_HANDLE             DW ?

    IMM                         DW ?
    DISP32                      DW ?
    DISP                        DW ?

    LABEL CURR_INSTRUC
        INSTRUC { }

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

.CODE
PUT_BYTE_AL    MACRO
    XOR         AH, AH
    MOV         BX, INSTRUC_END_PTR
    XOR         DL, DL
    STC
    CALL        PUT_HEX_TO_STR_BX
    MOV         INSTRUC_END_PTR, BX
ENDM

PUT_WORD_AX    MACRO
    MOV         BX, INSTRUC_END_PTR
    MOV         DL, 1
    CALL        PUT_HEX_TO_STR_BX
    MOV         INSTRUC_END_PTR, BX
ENDM

PUT_CHAR       MACRO  CHAR
    MOV         BX, INSTRUC_END_PTR
    MOV         BYTE PTR [BX], CHAR
    INC         INSTRUC_END_PTR
ENDM

START:
    MOV         AX, @DATA
    MOV         DS, AX
    MOV         ES, AX
    MOV         AX, 3D00h          
    MOV         DX, OFFSET COM_FILE
    INT         21h
    JC          SHORT ERROR_EXIT
    MOV         COM_FILE_HANDLE, AX
    MOV         AH, 3Ch
    XOR         CX, CX
    MOV         DX, OFFSET RES_FILE
    INT         21h
    JC          SHORT ERROR_EXIT
    MOV         RES_FILE_HANDLE, AX
    JMP         SHORT DECODE_NEW_INSTRUC
ERROR_EXIT:
    MOV         DX, OFFSET ERR_MSG
    MOV         AH, 09h
    INT         21h
    JMP         EXIT
DECODE_NEW_INSTRUC:    
    CALL        READ_BUFFER_BYTE
    OR          DH, DH
    JE          SHORT LOAD_INSTRUC
    MOV         DX, OFFSET SUCCESS_DIS
    MOV         AH, 09h
    INT         21h
    JMP         EXIT
LOAD_INSTRUC:
    MOV         AX, SIZE INSTRUC
    MOV         CX, AX
    MUL         DL
    MOV         SI, OFFSET INSTRUC_SET
    ADD         SI, AX
    MOV         DI, OFFSET CURR_INSTRUC
    REP         MOVSB
    MOVZX       AX, HAS_PREFIX
    OR          AX, ADDR_SIZE
    OR          AX, EXT_SEG
    JNZ         SHORT CHECK_PREFIX_TYPE
PRINT_OFFSET:
    MOV         BX, OFFSET IP_BUFFER
    MOV         AX, IP_VALUE
    MOV         DL, 1
    CLC 
    CALL        PUT_HEX_TO_STR_BX
CHECK_PREFIX_TYPE: 
    CMP         CURR_INSTRUC.I_TYPE, TYPE_SEG_OVR
    JNE         SHORT NOT_SEG_OVR
    MOV         AX, CURR_INSTRUC.MNEM
    MOV         SEG_OVR, AL
    JMP         DECODE_NEW_INSTRUC
NOT_SEG_OVR:
    MOVZX       BX, CURR_INSTRUC.I_TYPE
    MOV         BYTE PTR PREF_BYTES[BX-1], BL
    CMP         BL, TYPE_PREFIX
    JNAE        DECODE_NEW_INSTRUC
    CMP         CURR_INSTRUC.I_TYPE, TYPE_JCXZ
    JNE         SHORT NOT_JECXZ
    CMP         ADDR_OVR, 1
    JNE         SHORT NOT_JECXZ
    MOV         CURR_INSTRUC.MNEM, OFFSET MNEM_JECXZ
NOT_JECXZ:
    MOV         SI, CURR_INSTRUC.MNEM
    CALL        INS_STR
    CMP         CURR_INSTRUC.I_TYPE, TYPE_UNKNOWN
    JBE         DECODE_NEW_INSTRUC
ANALYZE_OPERANDS:
    CMP         CURR_INSTRUC.I_TYPE, TYPE_AAD
    JNE         SHORT READ_OPERANDS
    CALL        READ_BUFFER_BYTE
    JMP         SHORT PRINT_TO_FILE
READ_OPERANDS:
    MOV         AL, CURR_INSTRUC.OP1
    CALL        READ_OPERAND
    MOV         AL, CURR_INSTRUC.OP2
    OR          AL, AL
    JZ          SHORT NO_OP2
    CALL        READ_OPERAND
NO_OP2:
    MOV         AL, CURR_INSTRUC.OP1
    CALL        INSERT_OP_IN_STRING
    MOV         AL, CURR_INSTRUC.OP2
    OR          AL, AL
    JZ          SHORT PRINT_TO_FILE
    PUT_CHAR    ","
    CALL        INSERT_OP_IN_STRING
PRINT_TO_FILE:
    MOV         BX, INSTRUC_END_PTR
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
    MOV         INSTRUC_END_PTR, DI
    MOV         CX, INS_BUFFER_CAPACITY
    MOV         AL, "$"
    REP STOSB
    MOV         ADDR_SIZE, 0
    MOV         EXT_SEG, 0
    MOV         PREF_MODRM, 0
    JMP         DECODE_NEW_INSTRUC
EXIT:
    MOV         AH, 3Eh
    MOV         BX, COM_FILE_HANDLE
    INT         21h  
    MOV         BX, RES_FILE_HANDLE
    INT         21h 
    MOV         AX, 4C00h
    INT         21h

INS_STR PROC ; SI = pointer to ASCII$ string
    MOV         DI, INSTRUC_END_PTR
@@FIND_END:
    CMP         BYTE PTR [SI], "$"
    JE          SHORT @@RETURN
    MOVSB
    JMP         @@FIND_END
@@RETURN:
    MOV         INSTRUC_END_PTR, DI
    RET
INS_STR ENDP     

PUT_HEX_TO_STR_BX PROC ; IN (AX - hex_num; BX - str_ptr; DL=1 if word), OUT BX - end_str_ptr
    PUSHF   
    MOV         CX, 10h
    MOV         SI, 2
    OR          DL, DL
    JZ          SHORT @@NOT_WORD
    SHL         SI, 1
@@NOT_WORD:
    PUSH        SI
@@DIVISION:
    DEC         SI
    XOR         DX, DX
    DIV         CX
    CMP         DL, 9
    JBE         SHORT @@HEX_DIGIT
@@HEX_LETTER:
    ADD         DL, 37h
    JMP         SHORT @@PUT_TO_STR
@@HEX_DIGIT:
    ADD         DL, 30h
@@PUT_TO_STR:
    MOV         [BX + SI], DL
    OR          AX, AX
    JNE         @@DIVISION
    OR          SI, SI
    JE          SHORT @@CHECK_LEADING_ZERO
@@LEADING_ZEROS:
    DEC         SI
    MOV         BYTE PTR [BX + SI], "0"
    OR          SI, SI
    JNE         @@LEADING_ZEROS
@@CHECK_LEADING_ZERO:
    POP         CX
    POPF
    JNC         SHORT @@RETURN
    MOV         SI, CX
    CMP         BYTE PTR [BX], "A"
    JB          SHORT @@RETURN
@@ADD_ZERO_SHIFT:
    DEC         SI
    MOV         AL, [BX + SI]
    MOV         [BX + SI + 1], AL
    OR          SI, SI
    JNE         @@ADD_ZERO_SHIFT
    MOV         BYTE PTR [BX], "0"
    INC         CX
@@RETURN:
    ADD         BX, CX
    RET
PUT_HEX_TO_STR_BX ENDP

READ_BUFFER_BYTE PROC
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
    CALL        PUT_HEX_TO_STR_BX
    INC         BX
    MOV         MC_END_PTR, BX
    POP         DX
@@RETURN:
    POP         AX BX
    RET
READ_BUFFER_BYTE ENDP
     
INSERT_OP_IN_STRING PROC ; DL = Operand
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
    CMP         CURR_INSTRUC.OP2, OP_REG16
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
    PUT_CHAR    "["
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
    JNE         @@NO_SIB
    CMP         BASE, 1010b
    JNE         @@NO_EBP_BASE
    CMP         MODE, 000b
    JE          @@NO_BASE
@@NO_EBP_BASE:
    MOVZX       BX, BASE
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMP         INDEX, 1000b
    JE          SHORT @@SIB_INDEX_NONE
    PUT_CHAR    "+"
@@NO_BASE:
    MOVZX       BX, INDEX
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMP         SCALE, 000b
    JE          @@CHECK_MODE
    PUT_CHAR    "*"
    MOV         DL, "0"
    ADD         DL, SCALE
    PUT_CHAR    DL
@@SIB_INDEX_NONE:
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
    PUT_CHAR    "+"
@@PRINT_DISP:
    MOV         AX, DISP
    CMP         MODE, 010b
    JE          SHORT @@PRINT_BYTE_DISP
    CMP         ADDR_OVR, 0
    JE          SHORT @@DISP16
    PUSH        AX
    MOV         AX, DISP32
    STC 
    PUT_WORD_AX
    POP         AX
@@DISP16:
    CLC
    PUT_WORD_AX
    PUT_CHAR    "H"
    JMP         SHORT @@EA_END
@@PRINT_BYTE_DISP:
    OR          AL, AL
    JNZ         SHORT @@NON_ZERO_BYTE_DISP
    DEC         INSTRUC_END_PTR
    JMP         SHORT @@EA_END
@@NON_ZERO_BYTE_DISP:
    PUT_BYTE_AL
    PUT_CHAR    "H"
@@EA_END:
    PUT_CHAR    "]"
    JMP         SHORT @@RETURN
@@PRINT_IMM8:
    CMP         AL, OP_REL8
    MOV         AX, IMM
    JAE         SHORT @@PRINT_REL
    PUT_BYTE_AL
    PUT_CHAR    "H"
    JMP         SHORT @@RETURN
@@PRINT_REL:
    ADD         AX, IP_VALUE
    INC         AX
    STC
    PUT_WORD_AX
    PUT_CHAR    "H"
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
INSERT_OP_IN_STRING ENDP
 
DECODE_MODRM_SIB PROC 
    PUSH        AX DX 
    CALL        READ_BUFFER_BYTE
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

READ_OPERAND PROC 
    CMP         AL, OP_REG16
    JAE         SHORT @@READ_MODRM
    CALL        READ_BUFFER_BYTE
    MOVSX       BX, DL
    CMP         AL, OP_REL16
    JNE         SHORT @@SAVE_IMM
    CALL        READ_BUFFER_BYTE
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
    CMP         ADDR_OVR, 2
    JNE         SHORT @@RETURN
    CMP         BASE, 1010b
    JE          SHORT @@READ_DISP
    JMP         SHORT @@RETURN
@@DISP16:
    CMP         RM, 1100b
    JE          SHORT @@READ_DISP
    JMP         SHORT @@RETURN
@@READ_DISP:
    CALL        READ_BUFFER_BYTE
    MOV         BL, DL
    CMP         MODE, 010b
    JE          SHORT @@STORE_DISP
    CALL        READ_BUFFER_BYTE
    MOV         BH, DL
    CMP         ADDR_OVR, 0
    JE          SHORT @@STORE_DISP
    PUSH        BX
    CALL        READ_BUFFER_BYTE
    MOV         BL, DL
    CALL        READ_BUFFER_BYTE
    MOV         BH, DL
    MOV         DISP32, BX
    POP         BX
@@STORE_DISP:
    MOV         DISP, BX
@@RETURN:
    RET
READ_OPERAND ENDP

    END START