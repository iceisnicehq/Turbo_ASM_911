LOCALS @@
SMART 

.MODEL SMALL
.486
.STACK 100h
.DATA
    HELP_MSG                DB "To disassemble run: DISASM.EXE [data_file].COM [result_file].ASM",0Dh, 0Ah, "$"
    ERR_MSG_GENERIC         DB "Error occurred $"
    SUCCESS_MSG             DB 0Dh, 0Ah, "Result successfully written to file: $"

INSTRUCTION STRUC
    MNEMONIC            DW ?
    TYPEOF              DB ?
    OP1                 DB ?
    OP2                 DB ?
ENDS
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

WORD_PTR                DB "WORD PTR $"
DWORD_PTR               DB "DWORD PTR $"

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

REG_ES                  DB "ES$"
REG_CS                  DB "CS$"
REG_SS                  DB "SS$"
REG_DS                  DB "DS$"
REG_FS                  DB "FS$"
REG_GS                  DB "GS$"

EA_BX_SI                DB "BX + SI$"
EA_BX_DI                DB "BX + DI$"
EA_BP_SI                DB "BP + SI$"
EA_BP_DI                DB "BP + DI$"
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
                        DW REG_ES, REG_CS, REG_SS, REG_DS, REG_FS, REG_GS

LABEL SIZE_OVR_PTRS
    PTRS                DW WORD_PTR, DWORD_PTR
    
INS_OPERANDS ENUM {
    OP_NONE,

    OP_ES, 
    OP_CS,  
    OP_SS,   
    OP_DS, 
    OP_FS,
    OP_GS,
    
    OP_IMM8,   
    OP_REL8, 
    OP_REL16, 

    OP_REG16,
    OP_REGMEM16
}


INS_UNKNOWN     DB "Unknown instruction$"

INS_AAD         DB "AAD $"

INS_BTC         DB "BTC $"

INS_JO          DB "JO $"
INS_JNO         DB "JNO $"
INS_JB          DB "JB $"
INS_JNB         DB "JNB $"
INS_JZ          DB "JZ $"
INS_JNZ         DB "JNZ $"
INS_JBE         DB "JBE $"
INS_JNBE        DB "JNBE $"
INS_JS          DB "JS $"
INS_JNS         DB "JNS $"
INS_JP          DB "JP $"
INS_JNP         DB "JNP $"
INS_JL          DB "JL $"
INS_JNL         DB "JNL $"
INS_JLE         DB "JLE $"
INS_JNLE        DB "JNLE $"

INS_JCXZ        DB "JCXZ $"
INS_JECXZ       DB "JECXZ $"

INS_LOCK        DB "LOCK $"

INS_TYPES ENUM {
    INS_TYPE_UNKNOWN,
    INS_TYPE_NORMAL,
    INS_TYPE_JCXZ,
    INS_TYPE_AAD,
    INS_TYPE_EXT,
    INS_TYPE_PREFIX,
    INS_TYPE_SEG_OVR,
    INS_TYPE_SIZE_OVR,
    INS_TYPE_ADDR_OVR
}

INSTRUCTION_UNKNOWN MACRO count
    INSTRUCTION count dup  (<   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_NONE,       OP_NONE         >)
ENDM

LABEL INSTRUCTION_LIST
    INSTRUCTION_UNKNOWN     0Fh
    INSTRUCTION             <   OP_NONE,        INS_TYPE_EXT,       OP_NONE,       OP_NONE         > ; 0Fh
    INSTRUCTION_UNKNOWN     16h 
    INSTRUCTION             <   OP_ES,          INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 26h
    INSTRUCTION_UNKNOWN     07h 
    INSTRUCTION             <   OP_CS,          INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 2Eh
    INSTRUCTION_UNKNOWN     07h 
    INSTRUCTION             <   OP_SS,          INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 36h
    INSTRUCTION_UNKNOWN     07h 
    INSTRUCTION             <   OP_DS,          INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 3Eh
    INSTRUCTION_UNKNOWN     25h 
    INSTRUCTION             <   OP_FS,          INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 64h
    INSTRUCTION             <   OP_GS,          INS_TYPE_SEG_OVR,   OP_NONE,       OP_NONE         > ; 65h
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

MAX_FILE_NAME           EQU 128
DATA_BUFFER_CAPACITY    EQU 255
IP_BUFFER_CAPACITY      EQU 8
MC_BUFFER_CAPACITY      EQU 45
INS_BUFFER_CAPACITY     EQU 55

IP_VALUE                DW 0FFh

LABEL MODRM_BYTE
    MODE                DB ?
    REG                 DB ?
    RM                  DB ?
LABEL SIB_BYTE
    SCALE               DB ?
    INDEX               DB ?
    BASE                DB ?

IMM                     DW ?
DISP32                  DW ?
DISP                    DW ?
LABEL PREF_SEG  WORD 
    HAS_PREFIX          DB ?
    SEG_OVR             DB ?
LABEL ADDR_SIZE WORD 
    ADDR_OVR            DB ?
    SIZE_OVR            DB ?
LABEL EXT_MODRM WORD 
    INS_EXT             DB ?
    IS_MODRM_DECODED    DB ?


LABEL CURRENT_INSTRUCTION
    INSTRUCTION { }

DATA_FILE_NAME          DB MAX_FILE_NAME DUP(0)
RES_FILE_NAME           DB MAX_FILE_NAME DUP(0)
DATA_FILE_HANDLE        DW ?
RES_FILE_HANDLE         DW ?

DATA_BUFFER             DB DATA_BUFFER_CAPACITY DUP (?) ; Bytes, which were read from file.
DATA_SIZE               DW 0                            ; The size of currently read data buffer.
DATA_INDEX              DW 0                            ; Position of the data buffer that we are currently at.

IP_BUFFER               DB IP_BUFFER_CAPACITY DUP (?)   ; Offset from the start of code segment as a string.
MC_BUFFER               DB MC_BUFFER_CAPACITY DUP (?)   ; Machine code as a string.
INS_BUFFER              DB INS_BUFFER_CAPACITY DUP (?)  ; Instruction as a string.
MC_END_PTR              DW ?                            ; Pointer to the end of machine code written.
INS_END_PTR             DW ?                            ; Pointer to the end of instruction written.

.CODE
START:
    MOV         AX, @DATA                           ;define datasegment
    MOV         DS, AX
    CALL        RESET_INSTRUCTION                   ; reset inst_buffer to " " and "$"
    JMP         SHORT GET_FILE_NAMES                ; jump to reading file names
PRINT_HELP:
    PRINT_MSG    HELP_MSG                           ; print help msg
    JMP          EXIT                               ; jmp to exit

GET_FILE_NAMES:                                     ; Get file names from command line argument list
    MOV         SI, 82h                             ; inc si to 82h where cmd start
    GET_FILE    DATA_FILE_NAME                      ; Save cmd .COM TEST file to address in memory
    GET_FILE    RES_FILE_NAME                       ; Save cmd .ASM RES  file to address in memory
    PUSH        DS
    POP         ES
OPEN_DATA_FILE:
    MOV         AX, 3D00h                           ; Open file (3Dh) with read access (00h)          
    LEA         DX, DATA_FILE_NAME                  ; Address of .COM file   
    INT         21h                                 ; CALL DOS
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

EXIT_WITH_ERR:                                      ; Print the error, which occurred while opening file.
    
    PUSH        DX                                  ; Save file name offset 
    LEA         BX, HELP_MSG
    PRINT_MSG   [BX]
    LEA         BX, ERR_MSG_GENERIC                 ; load bx with offset of err msg
    PRINT_MSG   [BX]                                ; print err message
    POP         DX                                  ; Restore file name offset

PREP_FIND_FILE_NAME_END:
    MOV         BX, DX                              ; BX = file name beggining offset 
    
FIND_FILE_NAME_END:
    CMP         BYTE PTR [BX], 0                    ; is file name ends reached?
    JE          PRINT_FILE_NAME                     ; if yes print file name
    INC         BX                                  ; if no move up one letter
    JMP         FIND_FILE_NAME_END                  ; loop for file name
    
PRINT_FILE_NAME:
    MOV         BYTE PTR [BX], "$"                  ; make file name ASCII$
    MOV         BX, DX                              ; BX = beggining of file name
    PRINT_MSG   [BX]                                ; print file name 
    JMP         EXIT                                ; jump to exit
DECODE_NEW_EXT_INSTRUCTION:
    INC         INS_EXT
DECODE_NEW_INSTRUCTION:    
    CALL        READ_UPCOMING_BYTE                  ; reads upcoming byte and saves it in ascii to mc_buffer
    OR          DH, DH                              ; normal byte
    JE          LOAD_INSTRUCTION                    ; load instruction
    CMP         DH, 1                               ; file end reached 
    JE          PROGRAM_SUCCESS                     ; print succes msg and end programm
    JMP         EXIT_WITH_ERR
PROGRAM_SUCCESS:
    LEA         DX, RES_FILE_NAME                   ; load offset of res_file name
    PRINT_MSG   SUCCESS_MSG                         ; print success msg
    JMP         PREP_FIND_FILE_NAME_END             ; jump to print file name
    
LOAD_INSTRUCTION:
    MOV         AX, SIZE INSTRUCTION                ; load size of instruction struct  (5 bytes)
    MUL         DL                                  ; mul read byte in dl by 5 to get its value in inst list
    LEA         BX, INSTRUCTION_LIST                ; make bx point to list begining
    ADD         BX, AX                              ; move bx from begining list to read instruction
    
    MOV         AX, [BX].MNEMONIC                   ; save mnemonic
    MOV         CURRENT_INSTRUCTION.MNEMONIC, AX    ;   of curr instr
    MOV         AL, [BX].TYPEOF                     ; save typeof
    MOV         CURRENT_INSTRUCTION.TYPEOF, AL      ;   of curr instr
    MOV         AL, [BX].OP1                        ; save op1
    MOV         CURRENT_INSTRUCTION.OP1, AL         ;   of curr instr
    MOV         AL, [BX].OP2                        ; save op2 
    MOV         CURRENT_INSTRUCTION.OP2, AL         ;   of curr instr
    
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_JCXZ
    JNE         NOT_JECXZ
    CMP         ADDR_OVR, 1
    JNE         NOT_JECXZ
    MOV         CURRENT_INSTRUCTION.MNEMONIC, OFFSET INS_JECXZ     ;   of curr instr
NOT_JECXZ:
    XOR         AX, AX
    OR          AX, PREF_SEG
    ; OR          AL, SEG_OVR 
    OR          AX, ADDR_SIZE
    ; OR          AL, SIZE_OVR
    OR          AL, INS_EXT
    JNZ         CHECK_PREFIX_TYPE

PRINT_OFFSET:
    LEA         DI, IP_BUFFER                       ; load offset of the ip_buffer (which is the beginning of the lines)
    SPUT_WORD   DI, IP_VALUE                        ; put ip_value into the mc_buffer
    SPUT_CHAR   DI, "h"                             ; put h into the mc_buffer
    SPUT_CHAR   DI, ":"                             ; put : into the mc_buffer

CHECK_PREFIX_TYPE: 
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_EXT        ; check if current instr is seg_ovr
    JE          DECODE_NEW_EXT_INSTRUCTION
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SIZE_OVR        ; check if current instr is seg_ovr
    JNE         NO_SIZE_OVR
    INC         SIZE_OVR
    JMP         DECODE_NEW_EXT_INSTRUCTION
NO_SIZE_OVR:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_ADDR_OVR        ; check if current instr is seg_ovr
    JNE         NO_ADDR_OVR
    INC         ADDR_OVR
    JMP         DECODE_NEW_INSTRUCTION
NO_ADDR_OVR:        
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR        ; check if current instr is seg_ovr
    JNE         SKIP_OFFSET                                         ; if not then skip
    MOV         AX, CURRENT_INSTRUCTION.MNEMONIC                    ; if seg ovr, save its mnemonic to ax
    MOV         SEG_OVR, AL                                         ; save seg_ovr 
    JMP         DECODE_NEW_INSTRUCTION                              ; continue decoding_instr

SKIP_OFFSET:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_UNKNOWN        ; check if instruction is unknown
    JNE         PRINT_MNEMONIC                                      ; jump if instruction is not unknown
    MOV         SI,    CURRENT_INSTRUCTION.MNEMONIC                 ; SI = instr mneonic offset
    CALL        INS_STR                                             ; put string at DS:SI (instr mnemonic) into the ip_buffer
    JMP         END_LINE                                            ; put crlf

PRINT_MNEMONIC:
    MOV         SI, CURRENT_INSTRUCTION.MNEMONIC                    ; print curr
    CALL        INS_STR                                             ;   intr mnemonic to the ip_buffer
    
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_PREFIX         ; check if instr is prefix (e.g. lock, rep, repne)
    JNE         ANALYZE_OPERANDS                                    ; if not a prefix then analyze ops
    INC         HAS_PREFIX                                 ; if prefix then save for later
    JMP         DECODE_NEW_INSTRUCTION                              ; start decoding
        
ANALYZE_OPERANDS:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_AAD         ; check if the second byte of the instruction is constant (e.g. AAD)
    JNE         READ_OPERANDS                                       ; if not then read ops
    CALL        READ_UPCOMING_BYTE                                  ; if yes read the second const byte
    JMP         SHORT END_LINE

READ_OPERANDS:
    MOV         DL, CURRENT_INSTRUCTION.OP1                         ; decode 
    CALL        DECODE_OPERAND                                      ;   op1 of curr instr
    MOV         DL, CURRENT_INSTRUCTION.OP2                         ; decode
    CALL        DECODE_OPERAND                                      ;   op2 of curr instr
    
    MOV         DL, CURRENT_INSTRUCTION.OP1                         ; put op1
    CALL        PUT_OPERAND                                         ;   into mnem_buffer string
    CMP         CURRENT_INSTRUCTION.OP2, OP_NONE                    ; check if op2 is void
    JE          END_LINE                                            ; if yes then go ro printing
    INS_CHAR    ","                                                 ; if no, then put ','
    INS_CHAR    " "                                                 ;   and ' ' for second op
    MOV         DL, CURRENT_INSTRUCTION.OP2                         ; put op2 
    CALL        PUT_OPERAND                                         ;   into the string
    
END_LINE:
    CALL        FPRINT_INSTRUCTION                                  ; print the ip, mc, mnemonic to res file
    CALL        RESET_INSTRUCTION                                   ; reset instructin buffer
    JMP         DECODE_NEW_INSTRUCTION                              ; start decoding all over

EXIT:
    CLOSE_FILE  DATA_FILE_HANDLE
    CLOSE_FILE  RES_FILE_HANDLE

    MOV         AX, 4C00h
    INT         21h
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Prints a message to the screen.
; IN
;   MSG - Pointer to message.            
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
PRINT PROC 
    PUSH        AX DX
    MOV         AH, 09h
    MOV         DX, SI
    INT         21h
    POP         DX AX
    RET
PRINT ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts a string to instruction buffer.
; IN
;   SI - Pointer to string (terminated with "$").
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
INS_STR PROC 
    PUSH        AX BX SI DI

    MOV         DI, INS_END_PTR
    LEA         AX, INS_BUFFER
    CMP         AX, DI ; Check if string is a mnemonic.
    XOR         AH, AH
    JNE         @@FIND_END
    INC         AH
    
    @@FIND_END:
        CMP         BYTE PTR [SI], "$"
        JE          @@ADD_SPACING
        MOVSB
        ; MOV         AL, [SI]
        ; MOV         [DI], AL
        ; INC         SI
        ; INC         DI
        JMP         @@FIND_END
    
    @@ADD_SPACING: ; Add spacing if string is a mnemonic.
    CMP         AH, 1
    JNE         @@RETURN
    LEA         BX, INS_BUFFER
    ADD         BX, 8

    MOV         AL, " "
    @@ADD_SPACE:
        CMP         DI, BX
        JAE         @@RETURN
        STOSB
        ; MOV         BYTE PTR [DI], " "
        ; INC         DI
        JMP         @@ADD_SPACE
    
    @@RETURN:
    MOV         INS_END_PTR, DI
    POP         DI SI BX AX
    RET
INS_STR ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Writes a hexadecimal number to a string.
; IN
;   AX - Number to write.
;   BX - Pointer to string to write.
;   DL - Set to 1 if number is 2 byte size, otherwise 1 byte size.
;   DH - Set to 1 to add leading zero when number starts with a letter.
; OUT
;   BX - Pointer to upcoming character.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+        
SPUT_HEX PROC 
    PUSH        SI AX CX DX

    MOV         CX, 10h
    CMP         DL, 1
    JE          @@WORD_NUM    
    MOV         SI, 2
    JMP         @@PREP_DIVIDE
    @@WORD_NUM:
    MOV         SI, 4
    
    @@PREP_DIVIDE:
    PUSH        SI
    
    @@DIVIDE:
        DEC         SI
        XOR         DX, DX
        DIV         CX
        CMP         DL, 9
        JBE         @@HEX_DIGIT
        
        @@HEX_LETTER:
        ; SUB         DL, 10
        ADD         DL, 37h ; 37h = "A"(41h) - 0Ah 
        JMP         @@ADD_TO_BUFFER
        
        @@HEX_DIGIT:
        ADD         DL, 30h
        
        @@ADD_TO_BUFFER:
        MOV         [BX + SI], DL
        OR          AX, AX
        JNE         @@DIVIDE
        
    OR          SI, SI
    JE          @@CHECK_SHIFT
    @@ADD_LEADING_ZEROS:
        DEC         SI
        MOV         BYTE PTR [BX + SI], "0"
        OR          SI, SI
        JNE         @@ADD_LEADING_ZEROS
    
    @@CHECK_SHIFT:
    POP         SI DX
    MOV         CX, SI ; Number of characters written.
    CMP         DH, 1
    JNE         @@RETURN
    CMP         BYTE PTR [BX], "A"
    JB          @@RETURN
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
    POP         CX AX SI
    RET
SPUT_HEX ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Gets the upcoming argument, separated by a space, from command line.
; IN
;   BX - Pointer to string to write argument into.
;   SI - Pointer to current command line character.
; OUT
;   SI - Pointer to upcoming command line character.                  
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
GET_CMD_ARG PROC 
    PUSH        AX DI
  
    XOR         DI, DI
    @@READ_SPACES: ; Read leading spaces.
        MOV         AL, ES:[SI]
        CMP         AL, 0Dh ; Return if new line (no input found).
        JE          @@RETURN
        CMP         AL, " "
        JNE         @@READ_ARG
        INC         SI
        JMP         @@READ_SPACES
    
    @@READ_ARG:
        MOV         AL, ES:[SI]
        CMP         AL, " "
        JE          @@RETURN
        CMP         AL, 0Dh ; Return if new line.
        JE          @@RETURN 
        MOV         [BX + DI], AL
        INC         SI
        INC         DI
        JMP         @@READ_ARG
  
    @@RETURN:
    POP         DI AX
    RET
GET_CMD_ARG ENDP

;---------------------------------------------DISASSEMBLER-PROCS------------------------------------------------------------------------------
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Resets all values associated with current instruction.
; (reset ip placeholder to be empty spaces)
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
RESET_INSTRUCTION PROC 
    PUSH         BX CX

    LEA         BX, IP_BUFFER
    MOV         CX, IP_BUFFER_CAPACITY
    @@RESET_IP_BUFFER:
        MOV         BYTE PTR [BX], " "
        INC         BX
        LOOP        @@RESET_IP_BUFFER


    LEA         BX, MC_BUFFER
    MOV         MC_END_PTR, BX
    MOV         CX, MC_BUFFER_CAPACITY
    @@RESET_MC_BUFFER:
        MOV         BYTE PTR [BX], " "
        INC         BX
        LOOP        @@RESET_MC_BUFFER
    
    LEA         BX, INS_BUFFER
    MOV         INS_END_PTR, BX
    MOV         CX, INS_BUFFER_CAPACITY
    @@RESET_INSTRUCTION_BUFFER:
        MOV         BYTE PTR [BX], "$"
        INC         BX
        LOOP        @@RESET_INSTRUCTION_BUFFER
    
    ; MOV         TYPE_OVR, 0
    MOV         PREF_SEG, 0
    ; MOV         HAS_PREFIX, 0
    MOV         ADDR_SIZE, 0
    ; MOV         SIZE_OVR, 0
    MOV         EXT_MODRM, 0
    ; MOV         IS_MODRM_DECODED, 0
    ; MOV         IS_SIB_DECODED, 0
    POP         CX BX
    RET
RESET_INSTRUCTION ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Reads upcoming byte from the data stream.
; OUT
;   DL - Byte, which was read.
;   DH - Set to: 2 - on error; 1 - file end reached, 0 - otherwise.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
READ_UPCOMING_BYTE PROC 
    PUSH        BX AX; save bx
    MOV         BX, DATA_SIZE ; bx = data_size (bytes which were read)
    CMP         BX, DATA_INDEX ; bx = index to which data was read to
    JA          @@CHECK_FILE_END ;end if end of file met
    
    MOV         AH, 3Fh ; Read more bytes into buffer.
    MOV         BX, DATA_FILE_HANDLE 
    MOV         CX, DATA_BUFFER_CAPACITY ;0ffh
    LEA         DX, DATA_BUFFER ;memory address
    INT         21h
    JC          @@ERROR
    MOV         DATA_SIZE, AX 
    MOV         DATA_INDEX, 0
    
    @@CHECK_FILE_END:   ; Check if we have reached the file end.
    CMP         DATA_SIZE, 0
    JNE         @@GET_BYTE
    MOV         DH, 1
    JMP         @@RETURN
    
    @@ERROR:
    MOV         DH, 2
    JMP         @@RETURN
    
    @@GET_BYTE: ; Get byte from buffer.
    XOR         DH, DH
    LEA         BX, DATA_BUFFER
    ADD         BX, DATA_INDEX
    MOV         DL, [BX] ; dl is the byte
    INC         DATA_INDEX
    INC         IP_VALUE
    SPUT_BYTE   MC_END_PTR, DL, 0
    SPUT_CHAR   MC_END_PTR, " "
        
    @@RETURN:
    POP         AX BX
    RET
READ_UPCOMING_BYTE ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts operand to instruction buffer.
; IN
;   DL - Operand value.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+        
PUT_OPERAND PROC 
    PUSH        AX BX DX SI
    XOR         BX, BX
    
    CMP         DL, OP_NONE
    JE          @@RETURN
    CMP         DL, OP_IMM8
    JE          @@PRINT_IMM8
    CMP         DL, OP_REL16
    JBE         @@PRINT_REL
    CMP         DL, OP_REG16
    JE          @@PRINT_REG

    CMP         MODE, 110b
    JNE         @@EFFECTIVE_ADDRESSING
    
    MOV         BL, RM
    CMP         SIZE_OVR, 0
    JE          @@PRINT_MODRM_REG
    ADD         BL, 8
    
    @@PRINT_MODRM_REG:
    SHL         BL, 1
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    JMP         @@RETURN
    
    @@EFFECTIVE_ADDRESSING:
    CMP         CURRENT_INSTRUCTION.OP2, OP_REG16
    JE          @@CHECK_SEG
    CMP         SIZE_OVR, 0
    JE          @@EA_START
    MOV         BL, SIZE_OVR

    @@EA_START:
    SHL         BL, 1
    MOV         SI, SIZE_OVR_PTRS[BX]
    CALL        INS_STR
@@CHECK_SEG:
    MOV         BL, SEG_OVR
    OR          BL, BL
    JNE         @@PRINT_SEG
    int 3h
    MOV         BL, OP_DS
    MOV         BH, RM         
    CMP         ADDR_OVR, 0
    JE          @@MODRM16
    CMP         MODE, 000b
    JE          @@CHECK_SIB
    CMP         BH, 101b
    JE          @@PRINT_SS
@@CHECK_SIB:
    CMP         BH, 100b
    JNE         @@PRINT_SEG
    CMP         BASE, 100b
    JE          @@PRINT_SS
    CMP         BASE, 101b
    JE          @@PRINT_SS
    CMP         SCALE, 101b
    JE          @@PRINT_SS    
    JMP         @@PRINT_SEG
@@MODRM16:
    CMP         BH, 010b
    JE          @@PRINT_SS
    CMP         BH, 011b
    JE          @@PRINT_SS
    CMP         MODE, 000b
    JE          @@PRINT_SEG
    CMP         BH, 110b
    JNE         @@PRINT_SEG
@@PRINT_SS:
    MOV         BL, OP_SS
@@PRINT_SEG:
    XOR         BH, BH
    DEC         BL
    SHL         BL, 1
    MOV         SI, SEG_REGS[BX]
    CALL        INS_STR
    INS_CHAR    ":"
    INS_CHAR    "["
    CMP         MODE, 000b
    JNE         @@EA_NORMAL
    CMP         ADDR_OVR, 1
    JE          @@MODRM32
    CMP         RM, 110b
    JE          @@PRINT_DISP
    JMP         @@EA_NORMAL
@@MODRM32:
    CMP         RM, 101b
    JE          @@PRINT_DISP

@@EA_NORMAL:
    CMP         ADDR_OVR, 2
    JNE         @@NO_SIB
    XOR         BH, BH
    MOV         BL, BASE
    ADD         BL, 8
    SHL         BL, 1
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    INS_CHAR    " "
    INS_CHAR    "+"
    INS_CHAR    " "
    XOR         BH, BH
    MOV         BL, INDEX
    ADD         BL, 8
    SHL         BL, 1
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    CMP         SCALE, 000b
    JE          @@CHECK_MODE
    INS_CHAR    "*"
    MOV         DL, "0"
    ADD         DL, SCALE
    INS_CHAR    DL
    JMP         @@CHECK_MODE
    
@@NO_SIB:
    XOR         BH, BH
    MOV         BL, RM
    CMP         ADDR_OVR, 0
    JE          @@EA16
    ADD         BL, 16
@@EA16:
    SHL         BL, 1
    MOV         SI, EFFECTIVE_ADDRESSES[BX]
    CALL        INS_STR
    
@@CHECK_MODE:
    CMP         MODE, 000b
    JE          @@EA_END

    INS_CHAR    " "
    INS_CHAR    "+"
    INS_CHAR    " "
    
@@PRINT_DISP:
    MOV         DX, DISP
    CMP         MODE, 010b
    JE          @@PRINT_BYTE_DISP
    CMP         ADDR_OVR, 0
    JE          @@DISP16
    MOV         DX, DISP32
    INS_WORD    DX
    MOV         DX, DISP
@@DISP16:
    INS_WORD    DX
    SPUT_CHAR   INS_END_PTR, "h"
    JMP         @@EA_END
    
@@PRINT_BYTE_DISP:
    OR          DL, DL
    JNZ         @@NON_ZERO_BYTE_DISP
    SUB         INS_END_PTR, 3
    JMP         @@EA_END
    
@@NON_ZERO_BYTE_DISP:
    INS_BYTE    DL

@@EA_END:
    INS_CHAR    "]"
    JMP         @@RETURN
    
@@PRINT_IMM8:
    MOV         DX, IMM
    INS_BYTE    DL
    JMP         @@RETURN
    
@@PRINT_REL:
    MOV         AX, IMM
    CMP         DL, OP_REL16
    JE          @@REL16
    CBW
@@REL16:
    ADD         AX, IP_VALUE
    INC         AX
    INS_WORD    AX
    SPUT_CHAR   INS_END_PTR, "h"
    JMP         @@RETURN
    
    
@@PRINT_REG:
    MOV         BL, REG
    CMP         SIZE_OVR, 0
    JE          @@PRINT_REG_NAME
    ADD         BL, 8    
@@PRINT_REG_NAME:
    SHL         BL, 1
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    JMP         @@RETURN
    
@@RETURN:
    POP         SI DX BX AX
    RET
PUT_OPERAND ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Decodes upcoming byte from the data stream by MOD, REG and R/M fields.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
DECODE_MODRM_SIB PROC 
    PUSH        AX DX 
    CALL        READ_UPCOMING_BYTE
    PUSH        BX
    MOV         BX, OFFSET MODRM_BYTE
    MOV         IS_MODRM_DECODED, 1    
    CMP         ADDR_OVR, 2
    JNE         @@NOT_SIB
    MOV         BX, OFFSET SIB_BYTE
@@NOT_SIB:
    MOV         AL, DL
    AND         AL, 11000000b
    ; MOV         CL, 6
    SHR         AL, 5
    MOV         BYTE PTR [BX], AL
    
    MOV         AL, DL
    AND         AL, 00111000b
    ; MOV         CL, 3
    SHR         AL, 3
    MOV         BYTE PTR [BX + 1], AL
    
    MOV         AL, DL
    AND         AL, 00000111b
    MOV         BYTE PTR [BX + 2], AL
    POP         BX DX AX
    RET
DECODE_MODRM_SIB ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Decodes instruction operand.
; IN
;   DL - Operands value.    
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
DECODE_OPERAND PROC 
    PUSH        AX BX DX

    MOV         AL, DL

    XOR         BX, BX
    CMP         AL, OP_REG16
    JAE         @@READ_MODRM
    CMP         AL, OP_IMM8
    JAE         @@READ_IMM
    JMP         @@RETURN      
    
@@READ_IMM:
    CALL        READ_UPCOMING_BYTE
    MOVSX       BX, DL
    
@@STORE_IMM:
    CMP         AL, OP_REL16
    JNE         @@TO_RETURN
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL

@@TO_RETURN:
    MOV         IMM, BX
    JMP         @@RETURN
    
@@READ_MODRM:
    CMP         IS_MODRM_DECODED, 0
    JNE         @@MODRM_DECODED
    CALL        DECODE_MODRM_SIB
    
@@MODRM_DECODED:
    CMP         AL, OP_REG16
    JE          @@RETURN    ; Don't read displacement if operand is a register.
    
    CMP         MODE, 110b
    JE          @@RETURN
    CMP         ADDR_OVR, 0
    JE          @@MODRM16
    CMP         RM, 100b     
    JNE         @@MODRM16    ; NO SIB
    INC         ADDR_OVR
    CALL        DECODE_MODRM_SIB   ; IS_SIB_DECODED = 1
    CMP         SCALE, 110b
    JNE         @@MODRM16
    MOV         SCALE, 1000b
@@MODRM16:
    CMP         MODE, 010b    ; [...] + disp8 or disp16
    JAE         @@READ_DISP
    CMP         ADDR_OVR, 0
    JE          @@DISP16
    CMP         RM, 101b     ; disp32
    JE          @@READ_DISP
    JMP         @@RETURN
@@DISP16:
    CMP         RM, 110b
    JE          @@READ_DISP
    JMP         @@RETURN
    
@@READ_DISP:
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL          ; disp 8
    CMP         MODE, 010b
    JE          @@STORE_DISP
    CALL        READ_UPCOMING_BYTE      ;disp 16
    MOV         BH, DL
    CMP         ADDR_OVR, 0
    JE          @@STORE_DISP
    PUSH        BX
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    MOV         WORD PTR [DISP - 2], BX
    POP         BX

@@STORE_DISP:
    MOV         DISP, BX

@@RETURN:
    POP         DX BX AX
    RET
DECODE_OPERAND ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Prints current decoded instruction to file.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
FPRINT_INSTRUCTION PROC 
    PUSH        AX BX CX DX
    
    MOV         BX, INS_END_PTR
    MOV         WORD PTR [BX], 0A0Dh   ; Add CRLF at the end.

    ADD         BX, 2
    MOV         CX, BX
    LEA         BX, IP_BUFFER
    SUB         CX, BX

    LEA         DX, IP_BUFFER
    MOV         AH, 09h
    INT         21h
    MOV         AH, 40h
    MOV         BX, RES_FILE_HANDLE
    INT         21h    
    JNC         @@RETURN
    PRINT_MSG   ERR_MSG_GENERIC
    
    @@RETURN:
    POP         DX CX BX AX
    RET
FPRINT_INSTRUCTION ENDP
    END START
