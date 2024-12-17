LOCALS @@

.MODEL SMALL
.386
.STACK 100h
.DATA

    INSTRUC STRUC
        MNEM                DW ?
        I_TYPE              DB ?
        OP1                 DB ?
        OP2                 DB ?
    ENDS

    REG_SHIFT               EQU 16
    EA_REG_SHIFT            EQU REG_SHIFT*2

    DATA_BUFFER_CAPACITY    EQU 512
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
        LABEL PREF_BYTES
            ADDR_OVR            DB ?
            SIZE_OVR            DB ?
            INS_EXT             DB ?
            SEG_OVR             DB ?
            HAS_PREFIX          DB ?
            IS_MODR_DECODED     DB ?
        LABEL SIB_BYTE
            SCALE               DB ?
            INDEX               DB ?
            BASE                DB ?
        LABEL MODR_BYTE
            MODE                DB ?
            REG                 DB ?
            RM                  DB ?
    PREF_BYTES_NUM          EQU $ - PREF_BYTES
    INSTRUC_END_PTR         DW INS_BUFFER   
    MC_END_PTR              DW MC_BUFFER
    
    DWORD_PTR               DB "dword ptr $"


    IRP    char, <AX, CX, DX, BX, SP, BP, SI, DI>
         _E&char DB "E"
         _&char  DB "&char", "$"
    ENDM
    VAL = 2
    IRP    char, <ES, CS, SS, DS, FS, GS>
        VAL_&char = VAL
         _&char  DB "&char", ":$"
        VAL = VAL + 2
        INS_&char INSTRUC <VAL_&char, TYPE_SEG_OVR, NONE, NONE>
    ENDM

    BX_SI                   DB "BX+SI$"
    BX_DI                   DB "BX+DI$"
    BP_SI                   DB "BP+SI$"
    BP_DI                   DB "BP+DI$"

    LABEL EA_ADDRESS
                            DW BX_SI, BX_DI, BP_SI, BP_DI, _SI, _DI, _BP, _BX
        
    LABEL REGISTERS
                            DW _AX, _CX, _DX, _BX, _SP, _BP, _SI, _DI
                            DW _EAX, _ECX, _EDX, _EBX, _ESP, _EBP, _ESI, _EDI

    LABEL SEG_REGS
                            DW _ES, _CS, _SS, _DS, _FS, _GS

    LABEL SIZE_OVR_PTRS
                            DW DWORD_PTR+1, DWORD_PTR

    INS_OPERANDS ENUM NONE, IMM8, REL8, REL16, REG16, REGMEM16
    
    IRP    char, <JO, JNO, JB, JNB, JZ, JNZ, JBE, JNBE, JS, JNS, JP, JNP, JL, JNL, JLE, JNLE, JCXZ, JECXZ>
         _&char  DB "&char"
         LEN = $ - _&char
                DB 8 - LEN dup (' '), "$"
    ENDM

    _UNK                DB "???$"
    _AAD                DB "AAD$"
    _LOCK               DB "LOCK $"
    _BTC                DB "BTC     $"

    VAL = 1
    IRP  T, <ADDR_OVR, SIZE_OVR, EXT, SEG_OVR, PREFIX, UNKNOWN, JCC_BTC, JCXZ, AAD>
        TYPE_&T = VAL
        VAL = VAL + 1
    ENDM

    UNK        INSTRUC <_UNK,  TYPE_UNKNOWN, NONE,  NONE> ; 
    PREF_0F    INSTRUC <NONE,  TYPE_EXT,     NONE,  NONE> ; 0Fh
    INS_SIZE   INSTRUC <NONE,  TYPE_SIZE_OVR,NONE,  NONE> ; 66h
    INS_ADDR   INSTRUC <NONE,  TYPE_ADDR_OVR,NONE,  NONE> ; 67h
IRP     MNM, <JO, JNO, JB, JNB, JZ, JNZ, JBE, JNBE, JS, JNS, JP, JNP, JL, JNL, JLE, JNLE>
    J8_&MNM    INSTRUC <_&MNM,TYPE_JCC_BTC, REL8,   NONE>  ; 70h-7fh
    J16_&MNM   INSTRUC <_&MNM,TYPE_JCC_BTC, REL16,  NONE>  ; 80h-8fh
ENDM
    BTC_BA     INSTRUC <_BTC, TYPE_JCC_BTC, REGMEM16, IMM8> ; BAh
    BTC_BB     INSTRUC <_BTC, TYPE_JCC_BTC, REGMEM16,REG16> ; BBh 
    INS_AAD    INSTRUC <_AAD, TYPE_AAD,     NONE,     NONE> ; D5h
    INS_JCXZ   INSTRUC <_JCXZ,TYPE_JCXZ,    REL8,     NONE> ; E3h  (JECXZ)
    INS_LOCK   INSTRUC <_LOCK,TYPE_PREFIX,  NONE,     NONE> ; F0h

LABEL INSTRUCTION_SET_ARRAY 
; INDEXES   00h                0Fh                     26Eh                   2Eh
            DW 0Fh DUP (UNK),  PREF_0F, 16h DUP (UNK), INS_ES, 07h DUP (UNK), INS_CS
; INDEXES                      36h                     3Eh                    64h
            DW 07h DUP (UNK),  INS_SS,  07h DUP (UNK), INS_DS, 25h DUP (UNK), INS_FS
; INDEXES      65h             66h       67h                      70h    71h     72h 
            DW INS_GS,         INS_SIZE, INS_ADDR, 08h DUP (UNK), J8_JO, J8_JNO, J8_JB
; INDEXES      73h     74h    75h     76h     77h      78h    79h     7Ah    7Bh     7Ch
            DW J8_JNB, J8_JZ, J8_JNZ, J8_JBE, J8_JNBE, J8_JS, J8_JNS, J8_JP, J8_JNP, J8_JL
; INDEXES      7Dh     7Eh     7F       80h     81h      82h     83h      84h     85h
            DW J8_JNL, J8_JLE, J8_JNLE, J16_JO, J16_JNO, J16_JB, J16_JNB, J16_JZ, J16_JNZ
; INDEXES      86h      87h       88h     89h      8Ah     8Bh      8Ch     8Dh      8Eh     
            DW J16_JBE, J16_JNBE, J16_JS, J16_JNS, J16_JP, J16_JNP, J16_JL, J16_JNL, J16_JLE 
; INDEXES      8Fh                      BAh     BBh                    D5h
            DW J16_JNLE, 2Ah DUP (UNK), BTC_BA, BTC_BB, 19h DUP (UNK), INS_AAD, 0Dh DUP (UNK)
; INDEXES      E3h                      F0h
            DW INS_JCXZ, 0Ch DUP (UNK), INS_LOCK, 0Fh DUP (UNK)
    DATA_SIZE                   DW ?                            
    DATA_INDEX                  DW ?
    DATA_BUFFER                 DB DATA_BUFFER_CAPACITY DUP (?) 

    COM_FILE_HANDLE             DW ?
    RES_FILE_HANDLE             DW ?

    IMM                         DW ?
    DISP32                      DW ?
    DISP                        DW ?

    CURR_INSTRUC INSTRUC <>

.CODE

PUT_CHAR       MACRO  CHAR
    MOV         BX, INSTRUC_END_PTR
    MOV         BYTE PTR [BX], CHAR
    INC         INSTRUC_END_PTR
ENDM

CMPJNE         MACRO   OP1, OP2, JMP_LABEL
    CMP         OP1, OP2
    JNE         SHORT JMP_LABEL
ENDM

CMPJE          MACRO   OP1, OP2, JMP_LABEL
    CMP         OP1, OP2
    JE          SHORT JMP_LABEL
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
    MOV         CX, SIZE INSTRUC
    SHL         DX, 1
    MOV         SI, DX
    MOV         SI, INSTRUCTION_SET_ARRAY[SI]
    MOV         DI, OFFSET CURR_INSTRUC
    REP         MOVSB
    MOVZX       EAX, HAS_PREFIX
    OR          EAX, DWORD PTR [PREF_BYTES]
    JNZ         SHORT CHECK_PREFIX_TYPE
PRINT_OFFSET:
    MOV         BX, OFFSET IP_BUFFER
    MOV         AX, IP_VALUE
    MOV         DL, 1
    CLC 
    CALL        PUT_HEX_TO_STR_BX
CHECK_PREFIX_TYPE: 
    CMPJNE      CURR_INSTRUC.I_TYPE, TYPE_SEG_OVR, @@NOT_SEG_OVR
    MOV         AX, CURR_INSTRUC.MNEM
    MOV         SEG_OVR, AL
    JMP         DECODE_NEW_INSTRUC
@@NOT_SEG_OVR:
    MOVZX       BX, CURR_INSTRUC.I_TYPE
    MOV         BYTE PTR PREF_BYTES[BX-1], BL
    CMP         BL, TYPE_PREFIX
    JNAE        DECODE_NEW_INSTRUC
    CMPJNE      CURR_INSTRUC.I_TYPE, TYPE_JCXZ, @@NOT_JECXZ
    CMPJNE      ADDR_OVR, 1, @@NOT_JECXZ
    MOV         CURR_INSTRUC.MNEM, OFFSET _JECXZ
@@NOT_JECXZ:
    MOV         SI, CURR_INSTRUC.MNEM
    CALL        INS_STR
    CMP         CURR_INSTRUC.I_TYPE, TYPE_UNKNOWN
    JBE         DECODE_NEW_INSTRUC
ANALYZE_OPERANDS:
    CMPJNE      CURR_INSTRUC.I_TYPE, TYPE_AAD, READ_OPERANDS
    CALL        READ_BUFFER_BYTE
    JMP         SHORT PRINT_TO_FILE
READ_OPERANDS:
    MOV         AL, CURR_INSTRUC.OP1
    CALL        READ_OPERAND
    MOV         AL, CURR_INSTRUC.OP2
    OR          AL, AL
    JE          NO_OP2
    CALL        READ_OPERAND
NO_OP2:
    MOV         AL, CURR_INSTRUC.OP1
    CALL        INSERT_IN_STRING
    MOV         AL, CURR_INSTRUC.OP2
    OR          AL, AL
    JZ          SHORT PRINT_TO_FILE
    PUT_CHAR    ","
    CALL        INSERT_IN_STRING
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
    MOV         CX, PREF_BYTES_NUM
    XOR         AL, AL
    REP STOSB
    JMP         DECODE_NEW_INSTRUC
EXIT:
    MOV         AH, 3Eh
    MOV         BX, COM_FILE_HANDLE
    INT         21h  
    MOV         BX, RES_FILE_HANDLE
    INT         21h 
    MOV         AX, 4C00h
    INT         21h

;--------PROCS--------;
PUT_BYTE_AL     PROC
    XOR         AH, AH
    MOV         BX, INSTRUC_END_PTR
    XOR         DL, DL
    STC
    CALL        PUT_HEX_TO_STR_BX
    MOV         INSTRUC_END_PTR, BX
    RET
ENDP

PUT_WORD_AX    PROC
    MOV         BX, INSTRUC_END_PTR
    MOV         DL, 1
    CALL        PUT_HEX_TO_STR_BX
    MOV         INSTRUC_END_PTR, BX
    RET
ENDP

INS_STR PROC ; SI = pointer to ASCII$ string
    MOV         DI, INSTRUC_END_PTR
@@FIND_END:
    CMP        BYTE PTR [SI], "$" 
    JE         SHORT @@RETURN
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
     
INSERT_IN_STRING PROC ; DL = Operand
    XOR         BX, BX
    CMP         AL, REL16
    JBE         @@PRINT_IMM8
    CMP         AL, REG16 
    JE          @@PRINT_REG
    CMPJNE      MODE, 110b, @@EFFECTIVE_ADDRESSING
    MOV         BL, RM
    CMPJE       SIZE_OVR, 0, @@PRINT_MODR_REG
    ADD         BL, REG_SHIFT
@@PRINT_MODR_REG:
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    JMP         @@RETURN
@@EFFECTIVE_ADDRESSING:
    CMPJE       CURR_INSTRUC.OP2, REG16, @@CHECK_SEG
    CMPJE       SIZE_OVR, 0, @@EA_START
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
    CMPJE       ADDR_OVR, 0, @@MODRM16
    CMPJE       MODE, 000b, @@CHECK_SIB
    CMPJE       BH, 1010b, @@PRINT_SS
@@CHECK_SIB:
    CMPJNE      BH, 1000b, @@PRINT_SEG
    CMPJE       BASE, 1000b, @@PRINT_SS
    CMPJNE      BASE, 1010b, @@PRINT_SEG
    CMPJNE      MODE, 000b, @@PRINT_SS
    CMPJE       INDEX, 1010b, @@PRINT_SS  
    JMP         SHORT @@PRINT_SEG
@@MODRM16:
    CMPJE       BH, 0100b, @@PRINT_SS
    CMPJE       BH, 0110b, @@PRINT_SS
    CMPJE       MODE, 000b, @@PRINT_SEG
    CMPJNE      BH, 1100b, @@PRINT_SEG
@@PRINT_SS:
    MOV         BL, VAL_SS
@@PRINT_SEG:
    XOR         BH, BH
    MOV         SI, SEG_REGS[BX-2]
    CALL        INS_STR
    PUT_CHAR    "["
    CMPJNE      MODE, 000b, @@EA_NORMAL
    CMPJE       ADDR_OVR, 1, @@MODRM32
    CMPJNE      RM, 1100b, @@EA_NORMAL
    JMP         @@PRINT_DISP
@@MODRM32:
    CMP         RM, 1010b
    JE          @@PRINT_DISP       
@@EA_NORMAL:
    CMPJNE      ADDR_OVR, 2, @@NO_SIB
    CMPJNE      BASE, 1010b, @@NO_EBP_BASE
    CMPJE       MODE, 000b, @@NO_BASE
@@NO_EBP_BASE:
    MOVZX       BX, BASE
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMPJE       INDEX, 1000b, @@SIB_INDEX_NONE
    PUT_CHAR    "+"
@@NO_BASE:
    MOVZX       BX, INDEX
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMPJE       SCALE, 000b, @@CHECK_MODE
    PUT_CHAR    "*"
    MOV         DL, "0"
    ADD         DL, SCALE
    PUT_CHAR    DL
@@SIB_INDEX_NONE:
    CMPJNE      BASE, 1010b, @@CHECK_MODE
    OR          DWORD PTR [DISP32], 0
    JNZ         SHORT @@SIB_DISP
    JMP         @@EA_END
@@NO_SIB:
    MOVZX       BX, RM
    CMPJE       ADDR_OVR, 0, @@EA16
    ADD         BL, EA_REG_SHIFT
@@EA16:
    MOV         SI, EA_ADDRESS[BX]
    CALL        INS_STR
@@CHECK_MODE:
    CMPJE       MODE, 000b, @@EA_END
@@SIB_DISP:
    PUT_CHAR    "+"
@@PRINT_DISP:
    MOV         AX, DISP
    CMPJE       MODE, 010b, @@PRINT_BYTE_DISP
    CMP         ADDR_OVR, 0
    STC
    JE          SHORT @@DISP16
    PUSH        AX
    MOV         AX, DISP32
    STC 
    CALL        PUT_WORD_AX
    POP         AX
    CLC
@@DISP16:
    CALL         PUT_WORD_AX
    PUT_CHAR    "H"
    JMP         SHORT @@EA_END
@@PRINT_BYTE_DISP:
    OR          AL, AL
    JNZ         SHORT @@NON_ZERO_BYTE_DISP
    DEC         INSTRUC_END_PTR
    JMP         SHORT @@EA_END
@@NON_ZERO_BYTE_DISP:
    CALL        PUT_BYTE_AL
    PUT_CHAR    "H"
@@EA_END:
    PUT_CHAR    "]"
    JMP         SHORT @@RETURN
@@PRINT_IMM8:
    CMP         AL, REL8
    MOV         AX, IMM
    JAE         SHORT @@PRINT_REL
    CALL        PUT_BYTE_AL
    PUT_CHAR    "H"
    JMP         SHORT @@RETURN
@@PRINT_REL:
    ADD         AX, IP_VALUE
    INC         AX
    STC
    CALL        PUT_WORD_AX
    PUT_CHAR    "H"
    JMP         SHORT @@RETURN
@@PRINT_REG:
    MOV         BL, REG
    CMPJE       SIZE_OVR, 0, @@PRINT_REG_NAME
    ADD         BL, REG_SHIFT    
@@PRINT_REG_NAME:
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
@@RETURN:
    RET
INSERT_IN_STRING ENDP
 
DECODE_MODR_SIB PROC 
    PUSH        AX DX 
    CALL        READ_BUFFER_BYTE
    MOV         BX, OFFSET MODR_BYTE
    MOV         IS_MODR_DECODED, 1    
    CMPJNE      ADDR_OVR, 2, @@NOT_SIB
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
DECODE_MODR_SIB ENDP

READ_OPERAND PROC 
    CMP         AL, REG16
    JAE         SHORT @@READ_MODRM
    CALL        READ_BUFFER_BYTE
    MOVSX       BX, DL
    CMPJNE      AL, REL16, @@SAVE_IMM
    CALL        READ_BUFFER_BYTE
    MOV         BH, DL
@@SAVE_IMM:
    MOV         IMM, BX
    JMP         @@RETURN
@@READ_MODRM:
    CMPJNE      IS_MODR_DECODED, 0, @@MODR_DECODED
    CALL        DECODE_MODR_SIB ; MODRM
@@MODR_DECODED:
    CMP         AL, REG16
    JE          @@RETURN
    CMPJE       MODE, 110b, @@RETURN
    CMPJE       ADDR_OVR, 0, @@MODRM16
    CMPJNE      RM, 1000b, @@MODRM16
    INC         ADDR_OVR
    CALL        DECODE_MODR_SIB   ; SIB
    CMPJNE      SCALE, 110b, @@MODRM16
    MOV         SCALE, 1000b
@@MODRM16:
    CMP         MODE, 010b
    JAE         SHORT @@READ_DISP
    CMPJE       ADDR_OVR, 0, @@DISP16
    CMPJE       RM, 1010b, @@READ_DISP
    CMPJNE      ADDR_OVR, 2, @@RETURN
    CMPJE       BASE, 1010b, @@READ_DISP
    JMP         SHORT @@RETURN
@@DISP16:
    CMPJE       RM, 1100b, @@READ_DISP
    JMP         SHORT @@RETURN
@@READ_DISP:
    CALL        READ_BUFFER_BYTE
    MOV         BL, DL
    CMPJE       MODE, 010b, @@STORE_DISP
    CALL        READ_BUFFER_BYTE
    MOV         BH, DL
    CMPJE       ADDR_OVR, 0, @@STORE_DISP
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