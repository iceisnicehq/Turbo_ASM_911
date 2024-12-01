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
    INS_TYPE_CUSTOM,
    INS_TYPE_JCC
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
