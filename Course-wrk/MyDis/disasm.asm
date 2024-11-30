LOCALS @@
.MODEL SMALL
;.486
.STACK 100h
.DATA
    HELP_MSG                DB "The program converts machine code to 8086 instructions.", 13, 10, "To disassemble run: DISASM.EXE [data_file].COM [result_file].ASM$"
    ERR_MSG_FILE_NOT_FOUND  DB "File not found: $"
    ERR_MSG_PATH_NOT_FOUND  DB "Path not found: $"
    ERR_MSG_NO_HANDLES_LEFT DB "Too many open files: $"
    ERR_MSG_ACCESS_DENIED   DB "Access to file denied: $"
    ERR_MSG_GENERIC         DB "Error occurred: $"
    ERR_MSG_FAILED_READ     DB "Failed to read data from file: $"
    ERR_MSG_FAILED_WRITE    DB "Failed to write to result file.$"
    SUCCESS_MSG             DB "Result successfully written to file: $"
    DATA_EXT                DB ".COM", 0
    RES_EXT                 DB ".ASM", 0

INSTRUCTION STRUC
    MNEMONIC            DW ?
    TYPEOF              DB ?
    OP1                 DB ?
    OP2                 DB ?
ENDS

TYPE_OVRS ENUM {
    TYPE_OVR_NOT_SET,
    TYPE_OVR_BYTE,
    TYPE_OVR_WORD,
    TYPE_OVR_DWORD
}

MAX_FILE_NAME           EQU 128
DATA_BUFFER_CAPACITY    EQU 255
IP_BUFFER_CAPACITY      EQU 8
MC_BUFFER_CAPACITY      EQU 30
INS_BUFFER_CAPACITY     EQU 48

IP_VALUE                DW 0FFFFh
MODE                    DB ?
REG                     DB ?
RM                      DB ?
IMM                     DW ?
DISP                    DW ?
SEG_OVR                 DB ?
TYPE_OVR                DB ?
HAS_PREFIX              DB ?
IS_MODRM_DECODED        DB ?
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

BYTE_PTR                DB "BYTE PTR $"
WORD_PTR                DB "WORD PTR $"
DWORD_PTR               DB "DWORD PTR $"

REG_AL                  DB "AL$"
REG_CL                  DB "CL$"
REG_DL                  DB "DL$"
REG_BL                  DB "BL$"
REG_AH                  DB "AH$"
REG_CH                  DB "CH$"
REG_DH                  DB "DH$"
REG_BH                  DB "BH$"
        
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

EA_BX_SI                DB "BX + SI$"
EA_BX_DI                DB "BX + DI$"
EA_BP_SI                DB "BP + SI$"
EA_BP_DI                DB "BP + DI$"
EA_SI                   DB "SI$"
EA_DI                   DB "DI$"
EA_BP                   DB "BP$"
EA_BX                   DB "BX$"

LABEL REGISTERS
    BYTE_REGS           DW REG_AL, REG_CL, REG_DL, REG_BL, REG_AH, REG_CH, REG_DH, REG_BH
    WORD_REGS           DW REG_AX, REG_CX, REG_DX, REG_BX, REG_SP, REG_BP, REG_SI, REG_DI
    DWORD_REGS          DW REG_EAX, REG_ECX, REG_EDX, REG_EBX, REG_ESP, REG_EBP, REG_ESI, REG_EDI
    SEG_REGS            DW REG_ES, REG_CS, REG_SS, REG_DS

LABEL EFFECTIVE_ADDRESSES
    EFF_ADD             DW EA_BX_SI, EA_BX_DI, EA_BP_SI, EA_BP_DI, EA_SI, EA_DI, EA_BP, EA_BX

LABEL TYPE_OVR_PTRS
    PTRS                DW BYTE_PTR, WORD_PTR, DWORD_PTR
    
INS_OPERANDS ENUM {
    ; No operand.
    OP_VOID, ; 00h

    ; 1 byte registers.
    OP_AL,   ; 01h
    OP_CL,   ; 02h
    OP_DL,   ; 03h
    OP_BL,   ; 04h
    OP_AH,   ; 05h 
    OP_CH,   ; 06h
    OP_DH,   ; 07h
    OP_BH,   ; 08h

    ; 2 byte registers.
    OP_AX,   ; 09h
    OP_CX,   ; 0Ah
    OP_DX,   ; 0Bh
    OP_BX,   ; 0Ch
    OP_SP,   ; 0Dh
    OP_BP,   ; 0Eh
    OP_SI,   ; 0Fh
    OP_DI,   ; 10h
    
    ; 4 byte registers
    OP_EAX,  ; 11h
    OP_ECX,   ; 0Ah
    OP_EDX,   ; 0Bh
    OP_EBX,   ; 0Ch
    OP_ESP,   ; 0Dh
    OP_EBP,   ; 0Eh
    OP_ESI,   ; 0Fh
    OP_EDI,   ; 10h
    ; Segment registers.
    OP_ES,   ; 11h
    OP_CS,   ; 12h
    OP_SS,   ; 13h
    OP_DS,   ; 14h

    ; Constant numeric values.
    OP_CONST1,  ; 15h
    OP_CONST3,  ; 16h

    ; 1 byte operands.
    OP_IMM8,    ; 17h
    OP_EIMM8,   ; 18h
    OP_SHORT,   ; 19h

    ; 2 byte operands.
    OP_IMM16,   ; 1Ah
    OP_NEAR,    ; 1Bh
    OP_MEM,     ; 1Ch

    ; 4 byte operands.
    OP_FAR,     ; 1Dh

    ; Operands accompanied by MODRM byte.
    OP_REG8,    ; 1Eh
    OP_REG16,   ; 1Fh
    OP_SEGREG,  ; 20h
    OP_REGMEM8, ; 21h 
    OP_REGMEM16 ; 22h 
}


INS_UNKNOWN     DB "Unknown instruction$"

; Data transfer.
INS_MOV         DB "MOV $"

INS_AAD         DB "AAD $"

; Conditional control transfer.
INS_JA          DB "JA $"
INS_JAE         DB "JAE $"
INS_JB          DB "JB $"
INS_JBE         DB "JBE $"
INS_JE          DB "JE $"
INS_JG          DB "JG $"
INS_JGE         DB "JGE $"
INS_JL          DB "JL $"
INS_JLE         DB "JLE $"
INS_JNE         DB "JNE $"
INS_JNO         DB "JNO $"
INS_JNP         DB "JNP $"
INS_JNS         DB "JNS $"
INS_JO          DB "JO $"
INS_JP          DB "JP $"
INS_JS          DB "JS $"

INS_JCXZ        DB "JCXZ $"

INS_LOCK        DB "LOCK $"
INS_BTC         DB "BTC $"

INS_TYPES ENUM {
    INS_TYPE_UNKNOWN,
    INS_TYPE_NORMAL,
    INS_TYPE_EXTENDED,
    INS_TYPE_SEG_OVR,
    INS_TYPE_PREFIX,
    INS_TYPE_CUSTOM
}

INSTRUCTION_UNKNOWN MACRO count
    INSTRUCTION     count      dup     (<INS_UNKNOWN, INS_TYPE_UNKNOWN, OP_VOID, OP_VOID>)
ENDM

LABEL INSTRUCTION_LIST
    INSTRUCTION_UNKNOWN     0Eh
    INSTRUCTION             <   OP_VOID,        INS_TYPE_EXTENDED,  OP_VOID,        OP_VOID         > ; 0Fh
    INSTRUCTION_UNKNOWN     17h
    INSTRUCTION             <   OP_ES,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 26h
    INSTRUCTION_UNKNOWN     07h
    INSTRUCTION             <   OP_CS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 2Eh   ; if next byte is jcc then print comment
    INSTRUCTION_UNKNOWN     07h
    INSTRUCTION             <   OP_SS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 36h
    INSTRUCTION_UNKNOWN     07h
    INSTRUCTION             <   OP_DS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 3Eh   ; if next byte is jcc then print comment
    INSTRUCTION_UNKNOWN     25h+4h
    ; INSTRUCTION             <   OP_FS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 64h
    ; INSTRUCTION             <   OP_GS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 65h
    ; INSTRUCTION             <   OP_32,          INS_TYPE_SIZE_OVR,  OP_VOID,        OP_VOID         > ; 66h
    ; INSTRUCTION             <   OP_32,          INS_TYPE_ADDR_OVR,  OP_VOID,        OP_VOID         > ; 67h
    INSTRUCTION_UNKNOWN     08h
    INSTRUCTION             <   INS_JO,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 70h
    INSTRUCTION             <   INS_JNO,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 71h
    INSTRUCTION             <   INS_JB,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 72h
    INSTRUCTION             <   INS_JAE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 73h
    INSTRUCTION             <   INS_JE,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 74h
    INSTRUCTION             <   INS_JNE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 75h
    INSTRUCTION             <   INS_JBE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 76h
    INSTRUCTION             <   INS_JA,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 77h
    INSTRUCTION             <   INS_JS,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 78h
    INSTRUCTION             <   INS_JNS,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 79h
    INSTRUCTION             <   INS_JP,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Ah
    INSTRUCTION             <   INS_JNP,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Bh
    INSTRUCTION             <   INS_JL,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Ch
    INSTRUCTION             <   INS_JGE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Dh
    INSTRUCTION             <   INS_JLE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Eh
    INSTRUCTION             <   INS_JG,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Fh
    INSTRUCTION_UNKNOWN     08h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 88h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 89h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 8Ah
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 8Bh
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_SEGREG       > ; 8Ch
    INSTRUCTION_UNKNOWN     01h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_SEGREG,      OP_REGMEM16     > ; 8Eh
    INSTRUCTION_UNKNOWN     11h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_AL,          OP_MEM          > ; A0h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_AX,          OP_MEM          > ; A1h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_MEM,         OP_AL           > ; A2h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_MEM,         OP_AX           > ; A3h
    INSTRUCTION_UNKNOWN     0Ch
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; B0h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_CL,          OP_IMM8         > ; B1h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_DL,          OP_IMM8         > ; B2h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_BL,          OP_IMM8         > ; B3h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_AH,          OP_IMM8         > ; B4h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_CH,          OP_IMM8         > ; B5h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_DH,          OP_IMM8         > ; B6h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_BH,          OP_IMM8         > ; B7h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; B8h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_CX,          OP_IMM16        > ; B9h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_DX,          OP_IMM16        > ; BAh
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_BX,          OP_IMM16        > ; BBh
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_SP,          OP_IMM16        > ; BCh
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_BP,          OP_IMM16        > ; BDh
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_SI,          OP_IMM16        > ; BEh
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_DI,          OP_IMM16        > ; BFh
    INSTRUCTION_UNKNOWN     06h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_IMM8         > ; C6h
    INSTRUCTION             <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_IMM16        > ; C7h
    INSTRUCTION_UNKNOWN     1Bh
    INSTRUCTION             <   INS_JCXZ,       INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; E3h    ;nned to add a check for jecxz
    INSTRUCTION_UNKNOWN     0Ch
    INSTRUCTION             <   INS_LOCK,       INS_TYPE_PREFIX,    OP_VOID,        OP_VOID         > ; F0h
    INSTRUCTION_UNKNOWN     0Fh
    ; INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; F1h
    ; INSTRUCTION <   INS_REPNE,      INS_TYPE_PREFIX,    OP_VOID,        OP_VOID         > ; F2h
    ; INSTRUCTION <   INS_REP,        INS_TYPE_PREFIX,    OP_VOID,        OP_VOID         > ; F3h
    ; INSTRUCTION <   INS_HLT,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F4h
    ; INSTRUCTION <   INS_CMC,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F5h
    ; INSTRUCTION <   INS_EXT_F6_F7,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_VOID         > ; F6h
    ; INSTRUCTION <   INS_EXT_F6_F7,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_VOID         > ; F7h
    ; INSTRUCTION <   INS_CLC,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F8h
    ; INSTRUCTION <   INS_STC,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F9h
    ; INSTRUCTION <   INS_CLI,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FAh
    ; INSTRUCTION <   INS_STI,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FBh
    ; INSTRUCTION <   INS_CLD,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FCh
    ; INSTRUCTION <   INS_STD,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FDh
    ; INSTRUCTION <   INS_EXT_FE_FF,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_VOID         > ; FEh
    ; INSTRUCTION <   INS_EXT_FE_FF,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_VOID         > ; FFh
LABEL EXTENDED_INSTRUCTION_LIST
    INSTRUCTION_UNKNOWN     7Fh
    INSTRUCTION             <   INS_JO,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 80h 
    INSTRUCTION             <   INS_JNO,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 81h 
    INSTRUCTION             <   INS_JB,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 82h 
    INSTRUCTION             <   INS_JAE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 83h 
    INSTRUCTION             <   INS_JE,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 84h 
    INSTRUCTION             <   INS_JNE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 85h 
    INSTRUCTION             <   INS_JBE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 86h 
    INSTRUCTION             <   INS_JA,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 87h 
    INSTRUCTION             <   INS_JS,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 88h 
    INSTRUCTION             <   INS_JNS,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 89h 
    INSTRUCTION             <   INS_JP,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Ah 
    INSTRUCTION             <   INS_JNP,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Bh 
    INSTRUCTION             <   INS_JL,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Ch 
    INSTRUCTION             <   INS_JGE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Dh 
    INSTRUCTION             <   INS_JLE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Eh 
    INSTRUCTION             <   INS_JG,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Fh 
    INSTRUCTION_UNKNOWN     2Ah
    ; INSTRUCTION             <   INS_BTC,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Fh 
    ; INSTRUCTION             <   INS_BTC,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 8Fh 

.CODE

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Prints a message to the screen.
; IN
;   MSG - Pointer to message.            
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
PRINT_MSG MACRO MSG
    PUSH        AX DX
    MOV         AH, 09h
    LEA         DX, MSG
    INT         21h
    POP         DX AX
ENDM

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Closes a file.
; IN
;   FILE_HANDLE - File handle.       
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
CLOSE_FILE MACRO FILE_HANDLE
    PUSH        AX BX
    MOV         AH, 3Eh
    MOV         BX, FILE_HANDLE
    INT         21h
    POP         BX AX
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
    MOV         AL, NUM
    MOV         AH, 0
    MOV         BX, STR_PTR
    MOV         DL, 0
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
    MOV         DL, 1
    MOV         DH, 1
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
    SPUT_CHAR   INS_END_PTR, "h"
ENDM

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts a character to instruction buffer.
; IN
;   CHAR - Character to put. 
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
INS_CHAR MACRO CHAR
    SPUT_CHAR   INS_END_PTR, CHAR
ENDM

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
    MOV         AH, 0
    JNE         @@FIND_END
    MOV         AH, 1
    
    @@FIND_END:
        CMP         BYTE PTR [SI], "$"
        JE          @@ADD_SPACING
        MOV         AL, [SI]
        MOV         [DI], AL
        INC         SI
        INC         DI
        JMP         @@FIND_END
    
    @@ADD_SPACING: ; Add spacing if string is a mnemonic.
    CMP         AH, 1
    JNE         @@RETURN
    LEA         BX, INS_BUFFER
    ADD         BX, 8
    
    @@ADD_SPACE:
        CMP         DI, BX
        JAE         @@RETURN
        MOV         BYTE PTR [DI], " "
        INC         DI
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
        MOV         DX, 0
        DIV         CX
        CMP         DL, 9
        JBE         @@HEX_DIGIT
        
        @@HEX_LETTER:
        SUB         DL, 10
        ADD         DL, "A"
        JMP         @@ADD_TO_BUFFER
        
        @@HEX_DIGIT:
        ADD         DL, "0"
        
        @@ADD_TO_BUFFER:
        MOV         [BX + SI], DL
        CMP         AX, 0
        JNE         @@DIVIDE
        
    CMP         SI, 0
    JE          @@CHECK_SHIFT
    @@ADD_LEADING_ZEROS:
        DEC         SI
        MOV         BYTE PTR [BX + SI], "0"
        CMP         SI, 0
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
        CMP         SI, 0
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
  
    MOV         DI, 0
    @@READ_SPACES: ; Read leading spaces.
        MOV         AL, ES:[SI]
        CMP         AL, 13 ; Return if new line (no input found).
        JE          @@RETURN
        CMP         AL, " "
        JNE         @@READ_ARG
        INC         SI
        JMP         @@READ_SPACES
    
    @@READ_ARG:
        MOV         AL, ES:[SI]
        CMP         AL, " "
        JE          @@RETURN
        CMP         AL, 13 ; Return if new line.
        JE          @@RETURN 
        MOV         [BX + DI], AL
        INC         SI
        INC         DI
        JMP         @@READ_ARG
  
    @@RETURN:
    POP         DI AX
    RET
GET_CMD_ARG ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Adds an extension if a string does not have it already.
; IN
;   BX - Pointer to string (terminated with 0).
;   DX - Pointer to extension (uppercase and terminated with 0).            
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
ADD_EXTENSION PROC 
    PUSH        AX BX CX DX SI DI

    MOV         DI, BX
    MOV         SI, DX
    MOV         CX, 0
    @@FIND_EXT_END:
        CMP         BYTE PTR [SI], 0
        JE          @@FIND_STR_END
        INC         SI
        INC         CL
        JMP         @@FIND_EXT_END

    @@FIND_STR_END:
        CMP         BYTE PTR [DI], 0
        JE          @@VALIDATE_LENGTH
        INC         DI
        INC         CH
        JMP         @@FIND_STR_END
    
    @@VALIDATE_LENGTH:
    PUSH        DI
    CMP         CH, CL
    JBE         @@NO_EXT
    MOV         CH, 0
    DEC         SI
    DEC         DI

    @@CHECK_EXT:
        MOV         AL, [SI]
        CMP         AL, [DI]
        JE          @@CONTINUE
        ADD         AL, 20h 
        CMP         AL, [DI]
        JNE         @@NO_EXT
        @@CONTINUE:
        DEC         SI
        DEC         DI
        LOOP        @@CHECK_EXT
    POP         DI
    JMP         @@RETURN

    @@NO_EXT:
    POP         DI
    MOV         SI, DX
    @@ADD_EXT:
        MOV         AL, [SI]
        MOV         [DI], AL
        INC         SI
        INC         DI
        CMP         BYTE PTR [SI], 0
        JE          @@RETURN
        JMP         @@ADD_EXT

    @@RETURN:
    POP         DI SI DX CX BX AX
    RET
ADD_EXTENSION ENDP

; starting 
START:
    MOV         AX, @DATA ;define datasegment
    MOV         DS, AX   
    CALL        RESET_INSTRUCTION  ; reset inst_buffer to " " and "$"
 
    MOV         CH, 0
    MOV         CL, ES:[80h]    ; address of the arguments string (cl holds the numnber of bytes in arguments)
    CMP         CX, 0    ; Check if any arguments were provided.
    JE          PRINT_HELP 
    MOV         BX, 82h ; mov bx to the start of the message if no arg found
    
FIND_HELP_ARG:  ; Check if help argument was provided in the command line argument list.
    CMP         ES:[BX], "?/"
    JE          PRINT_HELP
    INC         BX
    LOOP        FIND_HELP_ARG
    JMP         GET_FILE_NAMES
  
PRINT_HELP:
    PRINT_MSG    HELP_MSG
    JMP          EXIT

GET_FILE_NAMES: ; Get file names from command line argument list.
    GET_FILE MACRO NAME, EXT
        LEA         BX, NAME
        CALL        GET_CMD_ARG
        CMP         BYTE PTR [BX], 0
        JE          PRINT_HELP
        LEA         DX, EXT
        CALL        ADD_EXTENSION
    ENDM

    MOV         SI, 82h
    GET_FILE    DATA_FILE_NAME, DATA_EXT    ; Allow only .COM files    (saves data file name to memory)
    GET_FILE    RES_FILE_NAME, RES_EXT      ; Write result in .ASM file  (saves res file name to memory)

OPEN_DATA_FILE:
    MOV         AL, 0 
    MOV         AH, 3Dh
    LEA         DX, DATA_FILE_NAME      
    INT         21h
    JC          EXIT_WITH_ERR
    MOV         DATA_FILE_HANDLE, AX

OPEN_RESULT_FILE:
    MOV         AH, 3Ch
    MOV         CX, 0
    LEA         DX, RES_FILE_NAME
    INT         21h
    JC          EXIT_WITH_ERR
    MOV         RES_FILE_HANDLE, AX
    JMP         DECODE_NEW_INSTRUCTION

EXIT_WITH_ERR:  ; Print the error, which occurred while opening file.
    LOAD_ERR MACRO ERR_CODE, ERR_MSG
        LEA     BX, ERR_MSG
        CMP     AL, ERR_CODE
        JE      PRINT_ERR_MSG
    ENDM
    
    PUSH        DX
    LOAD_ERR    02h ERR_MSG_FILE_NOT_FOUND
    LOAD_ERR    03h ERR_MSG_PATH_NOT_FOUND
    LOAD_ERR    04h ERR_MSG_NO_HANDLES_LEFT
    LOAD_ERR    05h ERR_MSG_ACCESS_DENIED
    LEA         BX, ERR_MSG_GENERIC
    
PRINT_ERR_MSG:
    PRINT_MSG   [BX]
    POP         DX

PREP_FIND_FILE_NAME_END:
    MOV         BX, DX
    
FIND_FILE_NAME_END:
    CMP         BYTE PTR [BX], 0
    JE          PRINT_FILE_NAME
    INC         BX
    JMP         FIND_FILE_NAME_END
    
PRINT_FILE_NAME:
    MOV         BYTE PTR [BX], "$"
    MOV         BX, DX
    PRINT_MSG   [BX]
    JMP         EXIT

DECODE_NEW_INSTRUCTION:    
    CALL        READ_UPCOMING_BYTE
    CMP         DH, 0
    JE          LOAD_INSTRUCTION
    CMP         DH, 1
    JE          PROGRAM_SUCCESS
    LEA         DX, RES_FILE_NAME
    PRINT_MSG   ERR_MSG_FAILED_READ
    JMP         PREP_FIND_FILE_NAME_END
    
PROGRAM_SUCCESS:
    LEA         DX, RES_FILE_NAME
    PRINT_MSG   SUCCESS_MSG
    JMP         PREP_FIND_FILE_NAME_END
    
LOAD_INSTRUCTION:
    MOV         AX, SIZE INSTRUCTION
    MUL         DL
    LEA         BX, INSTRUCTION_LIST
    ADD         BX, AX
    
    MOV         AX, [BX].MNEMONIC
    MOV         CURRENT_INSTRUCTION.MNEMONIC, AX
    MOV         AL, [BX].TYPEOF
    MOV         CURRENT_INSTRUCTION.TYPEOF, AL
    MOV         AL, [BX].OP1
    MOV         CURRENT_INSTRUCTION.OP1, AL
    MOV         AL, [BX].OP2
    MOV         CURRENT_INSTRUCTION.OP2, AL
    
    CMP         HAS_PREFIX, 1
    JE          SKIP_OFFSET     ; Offset is already printed if instruction has a prefix.
    CMP         SEG_OVR, 0      
    JNE         SKIP_OFFSET     ; Offset is already printed if instruction has segment override.
    
PRINT_OFFSET:
    LEA         DI, IP_BUFFER
    SPUT_WORD   DI, IP_VALUE
    SPUT_CHAR   DI, "h"
    SPUT_CHAR   DI, ":"
    
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR
    JNE         SKIP_OFFSET
    MOV         AX, CURRENT_INSTRUCTION.MNEMONIC
    MOV         SEG_OVR, AL
    JMP         DECODE_NEW_INSTRUCTION

SKIP_OFFSET:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_UNKNOWN
    JNE         KNOWN_INSTRUCTION
    MOV         SI,    CURRENT_INSTRUCTION.MNEMONIC
    CALL        INS_STR
    JMP         END_LINE
    
KNOWN_INSTRUCTION:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_EXTENDED
    JNE         PRINT_MNEMONIC
    CALL        DECODE_EXT_INS

PRINT_MNEMONIC:
    MOV         SI, CURRENT_INSTRUCTION.MNEMONIC
    CALL        INS_STR
    
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_PREFIX
    JNE         ANALYZE_OPERANDS
    MOV         HAS_PREFIX, 1
    JMP         DECODE_NEW_INSTRUCTION
        
ANALYZE_OPERANDS:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_CUSTOM
    JNE         READ_OPERANDS
    CALL        READ_UPCOMING_BYTE
    
READ_OPERANDS:
    MOV         DL, CURRENT_INSTRUCTION.OP1
    CALL        DECODE_OPERAND
    MOV         DL, CURRENT_INSTRUCTION.OP2
    CALL        DECODE_OPERAND    
    
    MOV         DL, CURRENT_INSTRUCTION.OP1
    CALL        PUT_OPERAND
    CMP         CURRENT_INSTRUCTION.OP2, OP_VOID
    JE          END_LINE
    INS_CHAR    ","
    INS_CHAR    " "
    MOV         DL, CURRENT_INSTRUCTION.OP2
    CALL        PUT_OPERAND
    
END_LINE:
    CALL        FPRINT_INSTRUCTION
    CALL        RESET_INSTRUCTION
    JMP         DECODE_NEW_INSTRUCTION

EXIT:
    CLOSE_FILE  DATA_FILE_HANDLE
    CLOSE_FILE  RES_FILE_HANDLE

    MOV         AL, 0
    MOV         AH, 4Ch
    INT         21h

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Resets all values associated with current instruction.
; (reset ip placeholder to be empty spaces)
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
RESET_INSTRUCTION PROC 
    PUSH        BX CX

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
    
    MOV         TYPE_OVR, TYPE_OVR_NOT_SET
    MOV         SEG_OVR, 0
    MOV         HAS_PREFIX, 0
    MOV         IS_MODRM_DECODED, 0
    
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
    PUSH        BX ; save bx
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
    MOV         DH, 0
    LEA         BX, DATA_BUFFER
    ADD         BX, DATA_INDEX
    MOV         DL, [BX] ; dl is the byte
    INC         DATA_INDEX
    INC         IP_VALUE
    SPUT_BYTE   MC_END_PTR, DL, 0
    SPUT_CHAR   MC_END_PTR, " "
        
    @@RETURN:
    POP         BX
    RET
READ_UPCOMING_BYTE ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Decodes extended instruction mnemonic.
; IN
;   DL - Operands value.    
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
DECODE_EXT_INS PROC 
    PUSH        AX BX DX

    CALL        DECODE_MODRM
    MOV         AH, 0
    MOV         AL, REG
        
    CMP         DL, 0F6h
    JNE         @@CHECK_F7
    CMP         AL, 0
    JNE         @@CHECK_DWORD
    MOV         CURRENT_INSTRUCTION.OP2, OP_IMM8
    JMP         @@CHECK_DWORD
    
    @@CHECK_F7:
    CMP         DL, 0F7h
    JNE         @@CHECK_DWORD
    CMP         AL, 0
    JNE         @@CHECK_DWORD
    MOV         CURRENT_INSTRUCTION.OP2, OP_IMM16
    
    @@CHECK_DWORD:  ; Check if we are working with a far instruction.
    CMP         DL, 0FFh
    JNE         @@LOAD_MNEMONIC
    CMP         REG, 11b
    JE          @@SET_DWORD_PTR
    CMP         REG, 101b
    JNE         @@LOAD_MNEMONIC
    
    @@SET_DWORD_PTR:
    MOV         TYPE_OVR, TYPE_OVR_DWORD
    
    @@LOAD_MNEMONIC:    ; Load instruction mnemonic from extended list.
    SHL         AL, 1
    MOV         BX, CURRENT_INSTRUCTION.MNEMONIC
    ADD         BX, AX
    MOV         DX, [BX]
    LEA         BX, CURRENT_INSTRUCTION.MNEMONIC
    MOV         [BX], DX
    
    POP         DX BX AX
    RET
DECODE_EXT_INS ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Puts operand to instruction buffer.
; IN
;   DL - Operand value.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+        
PUT_OPERAND PROC 
    PUSH        AX BX DX SI
    MOV         BX, 0

    CMPJE MACRO VALUE, JMP_LABEL    ; Used to avoid limitations of conditional jumps.
        LOCAL       NO_JMP
        CMP         DL, VALUE
        JNE         NO_JMP
        JMP         JMP_LABEL
        NO_JMP:
    ENDM
    
    CMPJBE MACRO VALUE, JMP_LABEL   ; Used to avoid limitations of conditional jumps.
        LOCAL       NO_JMP
        CMP         DL, VALUE
        JA          NO_JMP
        JMP         JMP_LABEL
        NO_JMP:
    ENDM
    
    CHECK_SEG_OVR MACRO
        LOCAL       SKIP_SEG_OVR
        CMP         SEG_OVR, 0
        JE          SKIP_SEG_OVR
        
        MOV         BH, 0
        MOV         BL, SEG_OVR
        DEC         BL
        SHL         BL, 1
        MOV         SI, REGISTERS[BX]
        CALL        INS_STR
        INS_CHAR    ":"
        
        SKIP_SEG_OVR:
    ENDM
    
    CMPJE       OP_VOID,    @@RETURN
    CMPJBE      OP_DS,      @@PRINT_CONST_REG
    CMPJE       OP_CONST1,  @@PRINT_CONST1
    CMPJE       OP_CONST3,  @@PRINT_CONST3
    CMPJE       OP_IMM8,    @@PRINT_IMM8
    CMPJE       OP_EIMM8,   @@PRINT_IMM16
    CMPJE       OP_SHORT,   @@PRINT_SHORT
    CMPJE       OP_IMM16,   @@PRINT_IMM16
    CMPJE       OP_NEAR,    @@PRINT_NEAR
    CMPJE       OP_MEM,     @@PRINT_MEM
    CMPJE       OP_FAR,     @@PRINT_FAR
    CMPJBE      OP_SEGREG,  @@PRINT_REG
    
    CMP         MODE, 11b
    JNE         @@EFFECTIVE_ADDRESSING
    
    MOV         BL, RM
    CMP         DL, OP_REGMEM8
    JE          @@PRINT_MODRM_REG
    ADD         BL, 8
    
    @@PRINT_MODRM_REG:
    SHL         BL, 1
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    JMP         @@RETURN
    
    @@EFFECTIVE_ADDRESSING:
    CMP         TYPE_OVR, TYPE_OVR_NOT_SET
    JE          @@EA_START
    MOV         BL, TYPE_OVR
    DEC         BL
    SHL         BL, 1
    MOV         SI, TYPE_OVR_PTRS[BX]
    CALL        INS_STR
    
    @@EA_START:
    CHECK_SEG_OVR
    INS_CHAR    "["
    CMP         MODE, 00b
    JNE         @@EA_NORMAL
    CMP         RM, 110b
    JE          @@PRINT_DISP
    
    @@EA_NORMAL:
    MOV         BH, 0
    MOV         BL, RM
    SHL         BL, 1
    MOV         SI, EFFECTIVE_ADDRESSES[BX]
    CALL        INS_STR
    
    CMP         MODE, 00b
    JE          @@EA_END
    INS_CHAR    " "
    INS_CHAR    "+"
    INS_CHAR    " "
    
    @@PRINT_DISP:
    MOV         DX, DISP
    CMP         MODE, 01b
    JE          @@PRINT_BYTE_DISP
    INS_WORD    DX
    JMP         @@EA_END
    
    @@PRINT_BYTE_DISP:
    INS_BYTE    DL
        
    @@EA_END:
    INS_CHAR    "]"
    JMP         @@RETURN
    
    @@PRINT_CONST_REG:
    MOV         BX, 0
    MOV         BL, DL
    DEC         BL
    SHL         BL, 1
    MOV         SI, REGISTERS[BX]
    CALL        INS_STR
    JMP         @@RETURN
    
    @@PRINT_CONST1:
    INS_CHAR    "1"
    JMP         @@RETURN
    
    @@PRINT_CONST3:
    INS_CHAR    "3"
    JMP         @@RETURN
    
    @@PRINT_IMM8:
    MOV         DX, IMM
    INS_BYTE    DL
    JMP         @@RETURN
    
    @@PRINT_SHORT:
    MOV         AX, IMM
    CBW
    ADD         AX, IP_VALUE
    INC         AX
    INS_WORD    AX
    JMP         @@RETURN
    
    @@PRINT_IMM16:
    INS_WORD    IMM
    JMP         @@RETURN
    
    @@PRINT_NEAR:
    MOV         DX, IP_VALUE
    ADD         DX, IMM
    INC         DX
    INS_WORD    DX
    JMP         @@RETURN
    
    @@PRINT_MEM:
    CHECK_SEG_OVR
    INS_CHAR    "["
    INS_WORD    DISP
    INS_CHAR    "]"
    JMP         @@RETURN
    
    @@PRINT_FAR:
    INS_WORD    DISP
    INS_CHAR    ":"
    INS_WORD    IMM
    JMP         @@RETURN
    
    @@PRINT_REG:
    MOV         BH, 0
    MOV         BL, REG
    
    CMP         DL, OP_REG8
    JE          @@PRINT_REG_NAME
    ADD         BL, 8
    CMP         DL, OP_REG16
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
DECODE_MODRM PROC 
    PUSH        AX CX DX
    CALL        READ_UPCOMING_BYTE
    
    MOV         AL, DL
    AND         AL, 11000000b
    MOV         CL, 6
    SHR         AL, CL
    MOV         MODE, AL
    
    MOV         AL, DL
    AND         AL, 00111000b
    MOV         CL, 3
    SHR         AL, CL
    MOV         REG, AL
    
    MOV         AL, DL
    AND         AL, 00000111b
    MOV         RM,    AL
    
    MOV         IS_MODRM_DECODED, 1
    POP         DX CX AX
    RET
DECODE_MODRM ENDP
    
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Decodes instruction operand.
; IN
;   DL - Operands value.    
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
DECODE_OPERAND PROC 
    SET_OVR    MACRO TYPE_OVR_VAL
        LOCAL       TYPE_OVR_ALREADY_SET
        CMP         CL, 0
        JNE         TYPE_OVR_ALREADY_SET ; Set type override if it was not set before calling the procedure.
        MOV         TYPE_OVR, TYPE_OVR_VAL
        TYPE_OVR_ALREADY_SET:
    ENDM
    
    PUSH        AX BX CX DX
    MOV         CL, TYPE_OVR    ; Remember, whether override type was set before the procedure.
    MOV         AL, DL

    MOV         BX, 0
    CMP         AL, OP_REG8
    JAE         @@READ_MODRM
    CMP         AL, OP_IMM8
    JAE         @@READ_IMM
    JMP         @@RETURN        ; Constant numeric value / constant register / no operand.
    
    @@READ_IMM:
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL
    SET_OVR     TYPE_OVR_BYTE
    CMP         AL,    OP_IMM16
    JB          @@STORE_IMM
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    SET_OVR     TYPE_OVR_WORD
    
    @@STORE_IMM:
    CMP         AL, OP_MEM
    JE          @@STORE_AS_DISP
    CMP         AL, OP_EIMM8
    JE          @@STORE_EIMM8
    MOV         IMM, BX
    CMP         AL, OP_FAR
    JNE         @@RETURN
    
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    
    @@STORE_AS_DISP:
    MOV         DISP, BX
    JMP         @@RETURN
    
    @@STORE_EIMM8:
    MOV         AX, BX
    CBW
    MOV         IMM, AX
    SET_OVR     TYPE_OVR_WORD
    JMP         @@RETURN
    
    @@READ_MODRM:
    CMP         IS_MODRM_DECODED, 1
    JE          @@MODRM_DECODED
    CALL        DECODE_MODRM
    
    @@MODRM_DECODED:
    CMP         AL, OP_SEGREG
    JBE         @@RETURN    ; Don't read displacement if operand is a register.
    
    CMP         MODE, 11b
    JE          @@RETURN
    CMP         MODE, 01b
    JAE         @@READ_DISP
    CMP         RM, 110b
    JE          @@READ_DISP
    JMP         @@SETUP_OVERRIDE
    
    @@READ_DISP:
    CALL        READ_UPCOMING_BYTE
    MOV         BL, DL
    CMP         MODE, 01b
    JE          @@STORE_DISP
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    
    @@STORE_DISP:
    MOV         DISP, BX
    
    @@SETUP_OVERRIDE:
    SET_OVR     TYPE_OVR_BYTE
    CMP         AL, OP_REGMEM16
    JNE         @@RETURN
    SET_OVR     TYPE_OVR_WORD
    
    @@RETURN:
    POP         DX CX BX AX
    RET
DECODE_OPERAND ENDP

;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Prints current decoded instruction to file.
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+    
FPRINT_INSTRUCTION PROC 
    PUSH        AX BX CX DX
    
    MOV         BX, INS_END_PTR
    MOV         BYTE PTR [BX], 13   ; Add CRLF at the end.
    MOV         BYTE PTR [BX + 1], 10
    ADD         BX, 2
    MOV         CX, BX
    LEA         BX, IP_BUFFER
    SUB         CX, BX
    
    MOV         AH, 40h
    MOV         BX, RES_FILE_HANDLE
    LEA         DX, IP_BUFFER
    INT         21h    
    JNC         @@RETURN
    PRINT_MSG   ERR_MSG_FAILED_WRITE
    
    @@RETURN:
    POP         DX CX BX AX
    RET
FPRINT_INSTRUCTION ENDP

END START
