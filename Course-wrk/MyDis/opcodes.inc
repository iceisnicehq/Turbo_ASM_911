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
    ; DWORD_REGS          DW REG_EAX, REG_ECX, REG_EDX, REG_EBX, SIB, REG_EBP, REG_ESI, REG_EDI
LABEL REGISTERS
    WORD_REGS           DW REG_AX, REG_CX, REG_DX, REG_BX, REG_SP, REG_BP, REG_SI, REG_DI
    DWORD_REGS          DW REG_EAX, REG_ECX, REG_EDX, REG_EBX, REG_ESP, REG_EBP, REG_ESI, REG_EDI

LABEL SEG_REGS
                        DW REG_ES, REG_CS, REG_SS, REG_DS, REG_FS, REG_GS

LABEL SIZE_OVR_PTRS
    PTRS                DW WORD_PTR, DWORD_PTR
    
; OP_VOID EQU 0 


INS_OPERANDS ENUM {
    OP_VOID,
    
    OP_ES,   ; 11h
    OP_CS,   ; 12h
    OP_SS,   ; 13h
    OP_DS,   ; 14h
    OP_FS
    OP_GS
    ; 1 byte operands.
    OP_IMM8,    ; 17h
    OP_REL8,   ; 19h
    OP_REL16,   ; 1Ch
    ; 4 byte operands.

    ; Operands accompanied by MODRM byte.
    OP_REG16,
    OP_REGMEM16
}


INS_UNKNOWN     DB "Unknown instruction$"

; Data transfer.
; INS_MOV         DB "MOV $"

INS_AAD         DB "AAD $"

; Conditional control transfer.
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
INS_BTC         DB "BTC $"

INS_TYPES ENUM {
    INS_TYPE_UNKNOWN,
    INS_TYPE_NORMAL,
    INS_TYPE_EXT,
    INS_TYPE_SEG_OVR,
    INS_TYPE_PREFIX,
    INS_TYPE_AAD,
    INS_TYPE_JCXZ,
    ; INS_TYPE_JCC,
    INS_TYPE_SIZE_OVR,
    INS_TYPE_ADDR_OVR
}

INSTRUCTION_UNKNOWN MACRO count
    INSTRUCTION     count      dup     (<INS_UNKNOWN, INS_TYPE_UNKNOWN, OP_VOID, OP_VOID>)
ENDM

LABEL INSTRUCTION_LIST
    INSTRUCTION_UNKNOWN     0Fh
    INSTRUCTION             <   OP_VOID,        INS_TYPE_EXT,       OP_VOID,       OP_VOID        > ; 0Fh
    INSTRUCTION_UNKNOWN     16h
    INSTRUCTION             <   OP_ES,          INS_TYPE_SEG_OVR,   OP_VOID,       OP_VOID        > ; 26h
    INSTRUCTION_UNKNOWN     07h
    INSTRUCTION             <   OP_CS,          INS_TYPE_SEG_OVR,   OP_VOID,       OP_VOID        > ; 2Eh   ; if next byte is jcc then print comment
    INSTRUCTION_UNKNOWN     07h
    INSTRUCTION             <   OP_SS,          INS_TYPE_SEG_OVR,   OP_VOID,       OP_VOID        > ; 36h
    INSTRUCTION_UNKNOWN     07h
    INSTRUCTION             <   OP_DS,          INS_TYPE_SEG_OVR,   OP_VOID,       OP_VOID        > ; 3Eh   ; if next byte is jcc then print comment
    INSTRUCTION_UNKNOWN     25h
    INSTRUCTION             <   OP_FS,          INS_TYPE_SEG_OVR,   OP_VOID,       OP_VOID        > ; 64h
    INSTRUCTION             <   OP_GS,          INS_TYPE_SEG_OVR,   OP_VOID,       OP_VOID        > ; 65h
    INSTRUCTION             <   OP_VOID,        INS_TYPE_SIZE_OVR,  OP_VOID,       OP_VOID         > ; 66h
    INSTRUCTION             <   OP_VOID,        INS_TYPE_ADDR_OVR,  OP_VOID,       OP_VOID         > ; 67h
    INSTRUCTION_UNKNOWN     08h
    INSTRUCTION             <   INS_JO,         INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 70h
    INSTRUCTION             <   INS_JNO,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 71h
    INSTRUCTION             <   INS_JB,         INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 72h
    INSTRUCTION             <   INS_JNB,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 73h
    INSTRUCTION             <   INS_JZ,         INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 74h
    INSTRUCTION             <   INS_JNZ,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 75h
    INSTRUCTION             <   INS_JBE,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 76h
    INSTRUCTION             <   INS_JNBE,       INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 77h
    INSTRUCTION             <   INS_JS,         INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 78h
    INSTRUCTION             <   INS_JNS,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 79h
    INSTRUCTION             <   INS_JP,         INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 7Ah
    INSTRUCTION             <   INS_JNP,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 7Bh
    INSTRUCTION             <   INS_JL,         INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 7Ch
    INSTRUCTION             <   INS_JNL,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 7Dh
    INSTRUCTION             <   INS_JLE,        INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 7Eh
    INSTRUCTION             <   INS_JNLE,       INS_TYPE_NORMAL,    OP_REL8,       OP_VOID         > ; 7Fh
    INSTRUCTION             <   INS_JO,         INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 80h
    INSTRUCTION             <   INS_JNO,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 81h 
    INSTRUCTION             <   INS_JB,         INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 82h 
    INSTRUCTION             <   INS_JNB,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 83h 
    INSTRUCTION             <   INS_JZ,         INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 84h 
    INSTRUCTION             <   INS_JNZ,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 85h 
    INSTRUCTION             <   INS_JBE,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 86h 
    INSTRUCTION             <   INS_JNBE,       INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 87h 
    INSTRUCTION             <   INS_JS,         INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 88h 
    INSTRUCTION             <   INS_JNS,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 89h 
    INSTRUCTION             <   INS_JP,         INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 8Ah 
    INSTRUCTION             <   INS_JNP,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 8Bh 
    INSTRUCTION             <   INS_JL,         INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 8Ch 
    INSTRUCTION             <   INS_JNL,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 8Dh 
    INSTRUCTION             <   INS_JLE,        INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 8Eh 
    INSTRUCTION             <   INS_JNLE,       INS_TYPE_NORMAL,    OP_REL16,      OP_VOID         > ; 8Fh  
    INSTRUCTION_UNKNOWN     2Ah
    INSTRUCTION             <   INS_BTC,        INS_TYPE_NORMAL,    OP_REGMEM16,   OP_IMM8         > ; BAh
    INSTRUCTION             <   INS_BTC,        INS_TYPE_NORMAL,    OP_REGMEM16,   OP_REG16        > ; BBh 
    INSTRUCTION_UNKNOWN     19h
    INSTRUCTION             <   INS_AAD,        INS_TYPE_AAD,       OP_VOID,       OP_VOID         > ; D5h := 1101 0101 / Has a constant second byte.
    INSTRUCTION_UNKNOWN     0Dh
    INSTRUCTION             <   INS_JCXZ,       INS_TYPE_JCXZ,      OP_REL8,       OP_VOID         > ; E3h    ;nned to add a check for jecxz
    INSTRUCTION_UNKNOWN     0Ch
    INSTRUCTION             <   INS_LOCK,       INS_TYPE_PREFIX,    OP_VOID,       OP_VOID         > ; F0h
