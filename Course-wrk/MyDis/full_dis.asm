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

    MAX_FILE_NAME           EQU 128
    DATA_BUFFER_CAPACITY    EQU 255
    IP_BUFFER_CAPACITY      EQU 4
    MC_BUFFER_CAPACITY      EQU 45
    INS_BUFFER_CAPACITY     EQU 65

    HELP_MSG                DB "To disassemble run: DISASM.EXE [COM_file].COM [RESULT_file].ASM",0Dh, 0Ah, "$"
    ERR_MSG                 DB "Error occurred $"
    SUCCESS_MSG             DB 0Dh, 0Ah, "Result successfully written to file: $"
    IP_VALUE                DW 0FFh

    IP_BUFFER               DB "0000h:  "
    MC_BUFFER               DB MC_BUFFER_CAPACITY DUP (" ")   ; Machine code as a string.
    INS_BUFFER              DB INS_BUFFER_CAPACITY DUP ("$")
    INS_END_PTR             DW INS_BUFFER   
    MC_END_PTR              DW MC_BUFFER
    DATA_SIZE               DW ?                            ; The size of currently read data buffer.
    DATA_INDEX              DW ?                            ; Position of the data buffer that we are currently at.
    DATA_BUFFER             DB DATA_BUFFER_CAPACITY DUP (?) ; Bytes, which were read from file.

    DATA_FILE_NAME          DB MAX_FILE_NAME DUP(?)
    RES_FILE_NAME           DB MAX_FILE_NAME DUP(?)
    DATA_FILE_HANDLE        DW ?
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


WORD_PTR                DB "word ptr $"
DWORD_PTR               DB "dword ptr $"

REG_AX                  DB "AX$"
REG_CX                  DB "CX$"
REG_DX                  DB "DX$"
REG_BX                  DB "BX$"
REG_SP                  DB "SP$"
REG_BP                  DB "BP$"
REG_SI                  DB "SI$"
REG_DI                  DB "DI$"

REG_EAX                 DB "EAX$"
REG_ECX                 DB "ECX$"
REG_EDX                 DB "EDX$"
REG_EBX                 DB "EBX$"
REG_ESP                 DB "ESP$"
REG_EBP                 DB "EBP$"
REG_ESI                 DB "ESI$"
REG_EDI                 DB "EDI$"

SEG_ES                  DB "ES:$"
SEG_CS                  DB "CS:$"
SEG_SS                  DB "SS:$"
SEG_DS                  DB "DS:$"
SEG_FS                  DB "FS:$"
SEG_GS                  DB "GS:$"

EA_BX_SI                DB "BX+SI$"
EA_BX_DI                DB "BX+DI$"
EA_BP_SI                DB "BP+SI$"
EA_BP_DI                DB "BP+DI$"
EA_SI                   DB "SI$"
EA_DI                   DB "DI$"
EA_BP                   DB "BP$"
EA_BX                   DB "BX$"

LABEL EFFECTIVE_ADDRESSES
    EFF_ADD             DW EA_BX_SI, EA_BX_DI, EA_BP_SI, EA_BP_DI, EA_SI, EA_DI, EA_BP, EA_BX
    
LABEL REGISTERS
    WORD_REGS           DW REG_AX, REG_CX, REG_DX, REG_BX, REG_SP, REG_BP, REG_SI, REG_DI
    DWORD_REGS          DW REG_EAX, REG_ECX, REG_EDX, REG_EBX, REG_ESP, REG_EBP, REG_ESI, REG_EDI

LABEL SEG_REGS
                        DW SEG_ES, SEG_CS, SEG_SS, SEG_DS, SEG_FS, SEG_GS

LABEL SIZE_OVR_PTRS
    PTRS                DW WORD_PTR, DWORD_PTR

REG_SHIFT               EQU 16
EA_REG_SHIFT            EQU 32

VAL_ES                  EQU 2
VAL_CS                  EQU 4
VAL_SS                  EQU 6
VAL_DS                  EQU 8
VAL_FS                  EQU 10
VAL_GS                  EQU 12

INS_OPERANDS ENUM {
    OP_NONE,

    OP_IMM8,   
    OP_REL8, 
    OP_REL16, 

    OP_REG16,
    OP_REGMEM16
}


INS_UNKNOWN     DB "Unknown inst$"

INS_AAD         DB "AAD$"

INS_BTC         DB "BTC     $"

INS_JO          DB "JO      $"
INS_JNO         DB "JNO     $"
INS_JB          DB "JB      $"
INS_JNB         DB "JNB     $"
INS_JZ          DB "JZ      $"
INS_JNZ         DB "JNZ     $"
INS_JBE         DB "JBE     $"
INS_JNBE        DB "JNBE    $"
INS_JS          DB "JS      $"
INS_JNS         DB "JNS     $"
INS_JP          DB "JP      $"
INS_JNP         DB "JNP     $"
INS_JL          DB "JL      $"
INS_JNL         DB "JNL     $"
INS_JLE         DB "JLE     $"
INS_JNLE        DB "JNLE    $"

INS_JCXZ        DB "JCXZ    $"
INS_JECXZ       DB "JECXZ   $"

INS_LOCK        DB "LOCK $"

INS_TYPES ENUM {
    INS_TYPE_ADDR_OVR = 1, ; 1h
    INS_TYPE_SIZE_OVR, ; 2h
    INS_TYPE_EXT,      ; 3h
    INS_TYPE_SEG_OVR,  ; 4h
    INS_TYPE_PREFIX,   ; 5h
    INS_TYPE_UNKNOWN,  ; 6h 
    INS_TYPE_NORMAL,   ; 7h
    INS_TYPE_JCXZ,     ; 8h
    INS_TYPE_AAD       ; 9h
}

INSTRUCTION_UNKNOWN MACRO count
    INSTRUCTION count dup  (<   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_NONE,       OP_NONE         >)
ENDM

LABEL INSTRUCTION_LIST
    INSTRUCTION_UNKNOWN     0Fh
    INSTRUCTION             <   OP_NONE,        INS_TYPE_EXT,       OP_NONE,       OP_NONE         > ; 0Fh
    INSTRUCTION_UNKNOWN     16h 
    INSTRUCTION             <   VAL_ES,         INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 26h
    INSTRUCTION_UNKNOWN     07h 
    INSTRUCTION             <   VAL_CS,         INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 2Eh
    INSTRUCTION_UNKNOWN     07h 
    INSTRUCTION             <   VAL_SS,         INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 36h
    INSTRUCTION_UNKNOWN     07h 
    INSTRUCTION             <   VAL_DS,         INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 3Eh
    INSTRUCTION_UNKNOWN     25h 
    INSTRUCTION             <   VAL_FS,         INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 64h
    INSTRUCTION             <   VAL_GS,         INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 65h
    INSTRUCTION             <   OP_NONE,        INS_TYPE_SIZE_OVR,  OP_NONE,       OP_NONE         > ; 66h
    INSTRUCTION             <   OP_NONE,        INS_TYPE_ADDR_OVR,  OP_NONE,       OP_NONE         > ; 67h
    INSTRUCTION_UNKNOWN     08h
    INSTRUCTION             <   INS_JO,         INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 70h
    INSTRUCTION             <   INS_JNO,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 71h
    INSTRUCTION             <   INS_JB,         INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 72h
    INSTRUCTION             <   INS_JNB,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 73h
    INSTRUCTION             <   INS_JZ,         INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 74h
    INSTRUCTION             <   INS_JNZ,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 75h
    INSTRUCTION             <   INS_JBE,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 76h
    INSTRUCTION             <   INS_JNBE,       INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 77h
    INSTRUCTION             <   INS_JS,         INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 78h
    INSTRUCTION             <   INS_JNS,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 79h
    INSTRUCTION             <   INS_JP,         INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 7Ah
    INSTRUCTION             <   INS_JNP,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 7Bh
    INSTRUCTION             <   INS_JL,         INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 7Ch
    INSTRUCTION             <   INS_JNL,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 7Dh
    INSTRUCTION             <   INS_JLE,        INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 7Eh
    INSTRUCTION             <   INS_JNLE,       INS_TYPE_NORMAL,    OP_REL8,       OP_NONE         > ; 7Fh
    INSTRUCTION             <   INS_JO,         INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 80h
    INSTRUCTION             <   INS_JNO,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 81h 
    INSTRUCTION             <   INS_JB,         INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 82h 
    INSTRUCTION             <   INS_JNB,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 83h 
    INSTRUCTION             <   INS_JZ,         INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 84h 
    INSTRUCTION             <   INS_JNZ,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 85h 
    INSTRUCTION             <   INS_JBE,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 86h 
    INSTRUCTION             <   INS_JNBE,       INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 87h 
    INSTRUCTION             <   INS_JS,         INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 88h 
    INSTRUCTION             <   INS_JNS,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 89h 
    INSTRUCTION             <   INS_JP,         INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 8Ah 
    INSTRUCTION             <   INS_JNP,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 8Bh 
    INSTRUCTION             <   INS_JL,         INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 8Ch 
    INSTRUCTION             <   INS_JNL,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 8Dh 
    INSTRUCTION             <   INS_JLE,        INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 8Eh 
    INSTRUCTION             <   INS_JNLE,       INS_TYPE_NORMAL,    OP_REL16,      OP_NONE         > ; 8Fh  
    INSTRUCTION_UNKNOWN     2Ah
    INSTRUCTION             <   INS_BTC,        INS_TYPE_NORMAL,    OP_REGMEM16,   OP_IMM8         > ; BAh
    INSTRUCTION             <   INS_BTC,        INS_TYPE_NORMAL,    OP_REGMEM16,   OP_REG16        > ; BBh 
    INSTRUCTION_UNKNOWN     19h
    INSTRUCTION             <   INS_AAD,        INS_TYPE_AAD,       OP_NONE,       OP_NONE         > ; D5h
    INSTRUCTION_UNKNOWN     0Dh
    INSTRUCTION             <   INS_JCXZ,       INS_TYPE_JCXZ,      OP_REL8,       OP_NONE         > ; E3h  (JECXZ)
    INSTRUCTION_UNKNOWN     0Ch
    INSTRUCTION             <   INS_LOCK,       INS_TYPE_PREFIX,    OP_NONE,       OP_NONE         > ; F0h
    INSTRUCTION_UNKNOWN     0Fh

.CODE
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
INS_BYTE MACRO
    ; MOVZX       AX, NUM
    XOR         AH, AH
    MOV         BX, INS_END_PTR
    XOR         DL, DL
    STC
    CALL        SPUT_HEX
    MOV         INS_END_PTR, BX
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts two byte number to instruction buffer.
; IN
;   NUM - Number to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_WORD MACRO
    ; MOV         AX, NUM
    MOV         BX, INS_END_PTR
    MOV         DL, 1
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

START:
    MOV         AX, @DATA
    MOV         DS, AX
    MOV         SI, 82h   
    LEA         BX, DATA_FILE_NAME
    CALL        GET_CMD_ARG
    LEA         BX, RES_FILE_NAME
    CALL        GET_CMD_ARG                      
    PUSH        DS
    POP         ES

OPEN_DATA_FILE:
    MOV         AX, 3D00h          
    LEA         DX, DATA_FILE_NAME
    INT         21h
    JC          SHORT EXIT_WITH_ERR                 ; Print err msg if error occured (cf = 1)
    MOV         DATA_FILE_HANDLE, AX                ; Save .COM file handle

OPEN_RESULT_FILE:
    MOV         AH, 3Ch                             ; Create result file  (.ASM)
    XOR         CX, CX                              ; CX = 0 for normal file
    LEA         DX, RES_FILE_NAME                   ; DX = Res file offset
    INT         21h                                 ; Call DOS
    JC          SHORT EXIT_WITH_ERR                 ; cf = 1 means error
    MOV         RES_FILE_HANDLE, AX                 ; Save result file handle
    JMP         SHORT DECODE_NEW_INSTRUCTION        ; JUMP to decoding

PRINT_HELP:
    PRINT_MSG   HELP_MSG                           ; print help msg
    JMP         EXIT                               ; jmp to exit

EXIT_WITH_ERR:                                      ; Print the error, which occurred while opening file.
    PUSH        DX                                  ; Save file name offset 
    LEA         BX, HELP_MSG
    PRINT_MSG   [BX]
    LEA         BX, ERR_MSG                 ; load bx with offset of err msg
    PRINT_MSG   [BX]                                ; print err message
    POP         DX                                  ; Restore file name offset

PRINT_FILE_NAME:
    MOV         BX, DX                              ; BX = beggining of file name
    PRINT_MSG   [BX]                                ; print file name 
    JMP         EXIT                                ; jump to exit

DECODE_NEW_INSTRUCTION:    
    CALL        READ_UPCOMING_BYTE                  ; reads upcoming byte and saves it in ascii to mc_buffer
    OR          DH, DH                              ; normal byte
    JE          SHORT LOAD_INSTRUCTION                    ; load instruction
PROGRAM_SUCCESS:
    LEA         DX, RES_FILE_NAME                   ; load offset of res_file name
    PRINT_MSG   SUCCESS_MSG                         ; print success msg
    JMP         PRINT_FILE_NAME             ; jump to print file name
    
LOAD_INSTRUCTION:
    MOV         AX, SIZE INSTRUCTION                ; load size of instruction struct  (5 bytes)
    MOV         CX, AX
    MUL         DL                                  ; mul read byte in dl by 5 to get its value in inst list
    LEA         SI, INSTRUCTION_LIST                ; make bx point to list begining
    ADD         SI, AX                              ; move bx from begining list to read instruction
    LEA         DI, CURRENT_INSTRUCTION
    REP         MOVSB ; mnem(2b) + type(1b) + op1(1b) + op2(2b)
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_JCXZ
    JNE         SHORT NOT_JECXZ
    CMP         ADDR_OVR, 1
    JNE         SHORT NOT_JECXZ
    MOV         CURRENT_INSTRUCTION.MNEMONIC, OFFSET INS_JECXZ     ;   of curr instr
NOT_JECXZ:
    MOVZX       AX, HAS_PREFIX
    OR          AX, ADDR_SIZE
    OR          AX, EXT_SEG
    JNZ         SHORT CHECK_PREFIX_TYPE

PRINT_OFFSET:
    LEA         BX, IP_BUFFER                       ; load offset of the ip_buffer (which is the beginning of the lines)
    MOV         AX, IP_VALUE
    MOV         DL, 1
    CLC 
    CALL        SPUT_HEX

CHECK_PREFIX_TYPE: 
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR
    JNE         SHORT NOT_SEG_OVR
    MOV         AX, CURRENT_INSTRUCTION.MNEMONIC                    ; if seg ovr, save its mnemonic to ax
    MOV         SEG_OVR, AL                                         ; save seg_ovr 
    JMP         DECODE_NEW_INSTRUCTION                              ; continue decoding_instr
NOT_SEG_OVR:
    MOVZX       BX, CURRENT_INSTRUCTION.TYPEOF
    MOV         BYTE PTR PREF_BYTES[BX-1], BL
    CMP         BL, INS_TYPE_PREFIX
    JNAE        DECODE_NEW_INSTRUCTION
    MOV         SI, CURRENT_INSTRUCTION.MNEMONIC                 ; SI = instr mneonic offset
    CALL        INS_STR                                             ; put string at DS:SI (instr mnemonic) into the ip_buffer
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_UNKNOWN        ; check if instruction is unknown
    JBE         DECODE_NEW_INSTRUCTION                            ; start decoding
        
ANALYZE_OPERANDS:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_AAD         ; check if the second byte of the instruction is constant (e.g. AAD)
    JNE         SHORT READ_OPERANDS                                       ; if not then read ops
    CALL        READ_UPCOMING_BYTE                                  ; if yes read the second const byte
    JMP         SHORT PRINT_TO_FILE

READ_OPERANDS:
    MOV         AL, CURRENT_INSTRUCTION.OP1                         ; decode 
    CALL        DECODE_OPERAND                                      ;   op1 of curr instr
    MOV         AL, CURRENT_INSTRUCTION.OP2                         ; decode
    CALL        DECODE_OPERAND                                      ;   op2 of curr instr
    
    MOV         AL, CURRENT_INSTRUCTION.OP1                         ; put op1
    CALL        PUT_OPERAND                                         ;   into mnem_buffer string
    CMP         CURRENT_INSTRUCTION.OP2, OP_NONE                    ; check if op2 is void
    JE          PRINT_TO_FILE                                            ; if yes then go ro printing
    INS_CHAR    ","                                                 ; if no, then put ','
    MOV         AL, CURRENT_INSTRUCTION.OP2                         ; put op2 
    CALL        PUT_OPERAND                                         ;   into the string
    
PRINT_TO_FILE:
    MOV         BX, INS_END_PTR
    MOV         WORD PTR [BX], 0A0Dh   ; Add CRLF at the end.
    INC         BX
    INC         BX
    MOV         CX, BX
    LEA         DX, IP_BUFFER
    SUB         CX, DX
    MOV         AH, 40h
    MOV         BX, RES_FILE_HANDLE
    INT         21h

    LEA         DI, MC_BUFFER
    MOV         MC_END_PTR, DI
    MOV         CX, MC_BUFFER_CAPACITY
    MOV         AL, " "
    REP STOSB
    ; LEA         DI, INS_BUFFER
    MOV         INS_END_PTR, DI
    MOV         CX, INS_BUFFER_CAPACITY
    MOV         AL, "$"
    REP STOSB
    MOV         ADDR_SIZE, 0
    MOV         EXT_SEG, 0
    MOV         PREF_MODRM, 0
    JMP         DECODE_NEW_INSTRUCTION                              ; start decoding all over

EXIT:
    MOV         AH, 3Eh
    MOV         BX, DATA_FILE_HANDLE
    INT         21h  
    MOV         BX, RES_FILE_HANDLE
    INT         21h 
    MOV         AX, 4C00h
    INT         21h
PRINT PROC  ; dx = offset
    MOV         AH, 09h
    INT         21h
    RET
PRINT ENDP

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
    SHL         SI, 1   ; if word to write
@@PREP_DIVIDE:
    PUSH        SI
@@DIVIDE:
    DEC         SI
    XOR         DX, DX
    DIV         CX
    CMP         DL, 9
    JBE         SHORT @@HEX_DIGIT
@@HEX_LETTER:
    ADD         DL, 37h ; 37h = "A"(41h) - 0Ah 
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
    JNC         @@RETURN
    MOV         SI, CX ; Number of characters written.
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

GET_CMD_ARG PROC 
    XOR         DI, DI
@@READ_SPACES: ; Read leading spaces.
    MOV         AL, ES:[SI]
    CMP         AL, 0Dh ; Return if new line (no input found).
    JE          SHORT @@RETURN
    CMP         AL, " "
    JNE         SHORT @@READ_ARG
    INC         SI
    JMP         @@READ_SPACES
@@READ_ARG:
    MOV         AL, ES:[SI]
    CMP         AL, " "
    JE          SHORT @@PUT_DOLLAR
    CMP         AL, 0Dh ; Return if new line.
    JE          SHORT @@PUT_DOLLAR 
    MOV         [BX + DI], AL
    INC         SI
    INC         DI
    JMP         @@READ_ARG
@@PUT_DOLLAR:
    MOV         BYTE PTR [BX + DI], "$"   
@@RETURN:
    RET
GET_CMD_ARG ENDP

;---------------------------------------------DISASSEMBLER-PROCS------------------------------------------------------------------------------  
READ_UPCOMING_BYTE PROC 
    PUSH        BX AX; save bx
    MOV         BX, DATA_SIZE ; bx = data_size (bytes which were read)
    CMP         BX, DATA_INDEX ; bx = index to which data was read to
    JA          SHORT @@CHECK_FILE_END ;end if end of file met
    MOV         AH, 3Fh ; Read more bytes into buffer.
    MOV         BX, DATA_FILE_HANDLE 
    MOV         CX, DATA_BUFFER_CAPACITY ;0ffh
    LEA         DX, DATA_BUFFER ;memory address
    INT         21h
    MOV         DATA_SIZE, AX 
    MOV         DATA_INDEX, 0
@@CHECK_FILE_END:   ; Check if we have reached the file end.
    CMP         DATA_SIZE, 0
    JNE         @@GET_BYTE
    MOV         DH, 1
    JMP         SHORT @@RETURN
@@GET_BYTE: ; Get byte from buffer.
    XOR         DH, DH
    LEA         BX, DATA_BUFFER
    ADD         BX, DATA_INDEX
    MOV         DL, [BX] ; dl is the byte
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
    JE          SHORT @@PRINT_SS
    CMP         SCALE, 101b
    JE          SHORT @@PRINT_SS    
    JMP         SHORT @@PRINT_SEG
@@MODRM16:
    CMP         BH, 0100b
    JE          SHORT @@PRINT_SS
    CMP         BH, 0110b
    JE          SHORT @@PRINT_SS
    CMP         MODE, 000b
    JE          @@PRINT_SEG
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
    MOVZX       BX, BASE
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    INS_CHAR    "+"
    MOVZX       BX, INDEX
    ADD         BL, REG_SHIFT
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMP         SCALE, 000b
    JE          SHORT @@CHECK_MODE
    INS_CHAR    "*"
    MOV         DL, "0"
    ADD         DL, SCALE
    INS_CHAR    DL
    JMP         SHORT @@CHECK_MODE
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
    JE          @@EA_END
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
    INS_CHAR    "h"
    JMP         SHORT @@EA_END
@@PRINT_BYTE_DISP:
    OR          AL, AL
    JNZ         SHORT @@NON_ZERO_BYTE_DISP
    DEC         INS_END_PTR
    JMP         SHORT @@EA_END
@@NON_ZERO_BYTE_DISP:
    INS_BYTE
    INS_CHAR    "h"
@@EA_END:
    INS_CHAR    "]"
    JMP         SHORT @@RETURN
@@PRINT_IMM8:
    CMP         AL, OP_REL8
    MOV         AX, IMM
    JAE         @@PRINT_REL
    INS_BYTE
    INS_CHAR    "h"
    JMP         SHORT @@RETURN
@@PRINT_REL:
    JA          SHORT @@REL16
    CBW
@@REL16:
    ADD         AX, IP_VALUE
    INC         AX
    STC
    INS_WORD
    INS_CHAR    "h"
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

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Decodes upcoming byte from the data stream by MOD, REG and R/M fields.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
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

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Decodes instruction operand.
; IN
;   DL - Operands value.    
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
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
    CALL        DECODE_MODRM_SIB
@@MODRM_DECODED:
    CMP         AL, OP_REG16
    JE          @@RETURN    ; Don't read displacement if operand is a register.
    CMP         MODE, 110b
    JE          @@RETURN
    CMP         ADDR_OVR, 0
    JE          SHORT @@MODRM16
    CMP         RM, 1000b     
    JNE         SHORT @@MODRM16    ; NO SIB
    INC         ADDR_OVR
    CALL        DECODE_MODRM_SIB   ; IS_SIB_DECODED = 1
    CMP         SCALE, 110b
    JNE         SHORT @@MODRM16
    MOV         SCALE, 1000b
@@MODRM16:
    CMP         MODE, 010b    ; [...] + disp8 or disp16
    JAE         SHORT @@READ_DISP
    CMP         ADDR_OVR, 0
    JE          @@DISP16
    CMP         RM, 1010b     ; disp32
    JE          SHORT @@READ_DISP
    JMP         @@RETURN
@@DISP16:
    CMP         RM, 1100b
    JE          SHORT @@READ_DISP
    JMP         SHORT @@RETURN
    
@@READ_DISP:
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL          ; disp 8
    CMP         MODE, 010b
    JE          SHORT @@STORE_DISP
    CALL        READ_UPCOMING_BYTE      ;disp 16
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

    END START