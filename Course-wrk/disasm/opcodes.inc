INS_UNKNOWN     DB "Unknown instruction$"

; Data transfer.
INS_MOV         DB "MOV $"
INS_PUSH        DB "PUSH $"
INS_POP         DB "POP $"
INS_XCHG        DB "XCHG $"
INS_XLAT        DB "XLAT $"
INS_IN          DB "IN $"
INS_OUT         DB "OUT $"

; Address transfer.
INS_LEA         DB "LEA $"
INS_LDS         DB "LDS $"
INS_LES         DB "LES $"

; Flag transfer.
INS_LAHF        DB "LAHF $"
INS_SAHF        DB "SAHF $"
INS_PUSHF       DB "PUSHF $"
INS_POPF        DB "POPF $"

; Addition.
INS_ADD         DB "ADD $"
INS_ADC         DB "ADC $"
INS_INC         DB "INC $"
INS_AAA         DB "AAA $"
INS_DAA         DB "DAA $"

; Subtraction.
INS_SUB         DB "SUB $"
INS_SBB         DB "SBB $"
INS_DEC         DB "DEC $"
INS_NEG         DB "NEG $"
INS_CMP         DB "CMP $"
INS_AAS         DB "AAS $"
INS_DAS         DB "DAS $"

; Multiplication.
INS_MUL         DB "MUL $"
INS_IMUL        DB "IMUL $"
INS_AAM         DB "AAM $"

; Division.
INS_DIV         DB "DIV $"
INS_IDIV        DB "IDIV $"
INS_AAD         DB "AAD $"
INS_CBW         DB "CBW $"
INS_CWD         DB "CWD $"

; Bitwise operations.
INS_NOT         DB "NOT $"
INS_AND         DB "AND $"
INS_OR          DB "OR $"
INS_XOR         DB "XOR $"
INS_TEST        DB "TEST $"

; Shift.
INS_SHL         DB "SHL $"
INS_SHR         DB "SHR $"
INS_SAR         DB "SAR $"

; Rotate.
INS_ROL         DB "ROL $"
INS_ROR         DB "ROR $"
INS_RCL         DB "RCL $"
INS_RCR         DB "RCR $"

; Repeat prefix.
INS_REP         DB "REP $"
INS_REPNE       DB "REPNE $"

; String operations.
INS_MOVSB       DB "MOVSB $"
INS_MOVSW       DB "MOVSW $"
INS_CMPSB       DB "CMPSB $"
INS_CMPSW       DB "CMPSW $"
INS_SCASB       DB "SCASB $"
INS_SCASW       DB "SCASW $"
INS_STOSB       DB "STOSB $"
INS_STOSW       DB "STOSW $"
INS_LODSB       DB "LODSB $"
INS_LODSW       DB "LODSW $"

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

; Unconditional control transfer.
INS_CALL        DB "CALL $"
INS_RET         DB "RET $"
INS_RETF        DB "RETF $"
INS_JMP         DB "JMP $"

; Iteration control.
INS_LOOP        DB "LOOP $"
INS_LOOPNE      DB "LOOPNE $"
INS_LOOPE       DB "LOOPE $"
INS_JCXZ        DB "JCXZ $"

; Interrupt.
INS_INT         DB "INT $"
INS_INTO        DB "INTO $"
INS_IRET        DB "IRET $"

; Flag operation.
INS_STC         DB "STC $"
INS_CLC         DB "CLC $"
INS_CMC         DB "CMC $"
INS_STD         DB "STD $"
INS_CLD         DB "CLD $"
INS_STI         DB "STI $"
INS_CLI         DB "CLI $"

; External synchronization.
INS_HLT         DB "HLT $"
INS_WAIT        DB "WAIT $"
INS_LOCK        DB "LOCK $"
INS_NOP         DB "NOP $"

INS_TYPES ENUM {
    INS_TYPE_UNKNOWN,
    INS_TYPE_NORMAL,
    INS_TYPE_EXTENDED,
    INS_TYPE_SEG_OVR,
    INS_TYPE_PREFIX,
    INS_TYPE_CUSTOM
}

INS_OPERANDS ENUM {
    ; No operand.
    OP_VOID,

    ; 1 byte registers.
    OP_AL,
    OP_CL,    
    OP_DL,
    OP_BL,
    OP_AH,
    OP_CH,
    OP_DH ,
    OP_BH,

    ; 2 byte registers.
    OP_AX,
    OP_CX,    
    OP_DX,
    OP_BX,
    OP_SP,
    OP_BP,
    OP_SI,
    OP_DI,

    ; Segment registers.
    OP_ES,
    OP_CS,
    OP_SS,
    OP_DS,

    ; Constant numeric values.
    OP_CONST1,
    OP_CONST3,

    ; 1 byte operands.
    OP_IMM8,    
    OP_EIMM8,
    OP_SHORT,

    ; 2 byte operands.
    OP_IMM16,
    OP_NEAR,
    OP_MEM,

    ; 4 byte operands.
    OP_FAR,

    ; Operands accompanied by MODRM byte.
    OP_REG8,
    OP_REG16,
    OP_SEGREG,
    OP_REGMEM8,
    OP_REGMEM16
}

LABEL INSTRUCTION_LIST
    INSTRUCTION <   INS_ADD,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 00h := 0000 0000
    INSTRUCTION <   INS_ADD,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 01h := 0000 0001
    INSTRUCTION <   INS_ADD,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 02h := 0000 0010
    INSTRUCTION <   INS_ADD,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 03h := 0000 0011
    INSTRUCTION <   INS_ADD,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 04h := 0000 0100
    INSTRUCTION <   INS_ADD,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 05h := 0000 0101
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_ES,          OP_VOID         > ; 06h := 0000 0110
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_ES,          OP_VOID         > ; 07h := 0000 0111
    INSTRUCTION <   INS_OR,         INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 08h := 0000 1000
    INSTRUCTION <   INS_OR,         INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 09h := 0000 1001
    INSTRUCTION <   INS_OR,         INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 0Ah := 0000 1010
    INSTRUCTION <   INS_OR,         INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 0Bh := 0000 1011
    INSTRUCTION <   INS_OR,         INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 0Ch := 0000 1100
    INSTRUCTION <   INS_OR,         INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 0Dh := 0000 1101
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_CS,          OP_VOID         > ; 0Eh := 0000 1110
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 0Fh := 0000 1111
    INSTRUCTION <   INS_ADC,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 10h := 0001 0000
    INSTRUCTION <   INS_ADC,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 11h := 0001 0001
    INSTRUCTION <   INS_ADC,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 12h := 0001 0010
    INSTRUCTION <   INS_ADC,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 13h := 0001 0011
    INSTRUCTION <   INS_ADC,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 14h := 0001 0100
    INSTRUCTION <   INS_ADC,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 15h := 0001 0101
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_SS,          OP_VOID         > ; 16h := 0001 0110
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_SS,          OP_VOID         > ; 17h := 0001 0111
    INSTRUCTION <   INS_SBB,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 18h := 0001 1000
    INSTRUCTION <   INS_SBB,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 19h := 0001 1001
    INSTRUCTION <   INS_SBB,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 1Ah := 0001 1010
    INSTRUCTION <   INS_SBB,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 1Bh := 0001 1011
    INSTRUCTION <   INS_SBB,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 1Ch := 0001 1100
    INSTRUCTION <   INS_SBB,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 1Dh := 0001 1101
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_DS,          OP_VOID         > ; 1Eh := 0001 1110
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_DS,          OP_VOID         > ; 1Fh := 0001 1111
    INSTRUCTION <   INS_AND,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 20h := 0010 0000
    INSTRUCTION <   INS_AND,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 21h := 0010 0001
    INSTRUCTION <   INS_AND,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 22h := 0010 0010
    INSTRUCTION <   INS_AND,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 23h := 0010 0011
    INSTRUCTION <   INS_AND,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 24h := 0010 0100
    INSTRUCTION <   INS_AND,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 25h := 0010 0101
    INSTRUCTION <   OP_ES,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 26h := 0010 0110
    INSTRUCTION <   INS_DAA,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 27h := 0010 0111
    INSTRUCTION <   INS_SUB,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 28h := 0010 1000
    INSTRUCTION <   INS_SUB,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 29h := 0010 1001
    INSTRUCTION <   INS_SUB,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 2Ah := 0010 1010
    INSTRUCTION <   INS_SUB,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 2Bh := 0010 1011
    INSTRUCTION <   INS_SUB,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 2Ch := 0010 1100
    INSTRUCTION <   INS_SUB,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 2Dh := 0010 1101
    INSTRUCTION <   OP_CS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 2Eh := 0010 1110
    INSTRUCTION <   INS_DAS,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 2Fh := 0010 1111
    INSTRUCTION <   INS_XOR,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 30h := 0011 0000
    INSTRUCTION <   INS_XOR,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 31h := 0011 0001
    INSTRUCTION <   INS_XOR,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 32h := 0011 0010
    INSTRUCTION <   INS_XOR,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 33h := 0011 0011
    INSTRUCTION <   INS_XOR,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 34h := 0011 0100
    INSTRUCTION <   INS_XOR,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 35h := 0011 0101
    INSTRUCTION <   OP_SS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 36h := 0011 0110
    INSTRUCTION <   INS_AAA,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 37h := 0011 0111
    INSTRUCTION <   INS_CMP,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 38h := 0011 1000
    INSTRUCTION <   INS_CMP,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 39h := 0011 1001
    INSTRUCTION <   INS_CMP,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 3Ah := 0011 1010
    INSTRUCTION <   INS_CMP,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 3Bh := 0011 1011
    INSTRUCTION <   INS_CMP,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; 3Ch := 0011 1100
    INSTRUCTION <   INS_CMP,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; 3Dh := 0011 1101
    INSTRUCTION <   OP_DS,          INS_TYPE_SEG_OVR,   OP_VOID,        OP_VOID         > ; 3Eh := 0011 1110
    INSTRUCTION <   INS_AAS,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 3Fh := 0011 1111
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_AX,          OP_VOID         > ; 40h := 0100 0000
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_CX,          OP_VOID         > ; 41h := 0100 0001
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_DX,          OP_VOID         > ; 42h := 0100 0010
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_BX,          OP_VOID         > ; 43h := 0100 0011
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_SP,          OP_VOID         > ; 44h := 0100 0100
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_BP,          OP_VOID         > ; 45h := 0100 0101
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_SI,          OP_VOID         > ; 46h := 0100 0110
    INSTRUCTION <   INS_INC,        INS_TYPE_NORMAL,    OP_DI,          OP_VOID         > ; 47h := 0100 0111
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_AX,          OP_VOID         > ; 48h := 0100 1000
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_CX,          OP_VOID         > ; 49h := 0100 1001
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_DX,          OP_VOID         > ; 4Ah := 0100 1010
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_BX,          OP_VOID         > ; 4Bh := 0100 1011
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_SP,          OP_VOID         > ; 4Ch := 0100 1100
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_BP,          OP_VOID         > ; 4Dh := 0100 1101
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_SI,          OP_VOID         > ; 4Eh := 0100 1110
    INSTRUCTION <   INS_DEC,        INS_TYPE_NORMAL,    OP_DI,          OP_VOID         > ; 4Fh := 0100 1111
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_AX,          OP_VOID         > ; 50h := 0101 0000
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_CX,          OP_VOID         > ; 51h := 0101 0001
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_DX,          OP_VOID         > ; 52h := 0101 0010
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_BX,          OP_VOID         > ; 53h := 0101 0011
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_SP,          OP_VOID         > ; 54h := 0101 0100
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_BP,          OP_VOID         > ; 55h := 0101 0101
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_SI,          OP_VOID         > ; 56h := 0101 1110
    INSTRUCTION <   INS_PUSH,       INS_TYPE_NORMAL,    OP_DI,          OP_VOID         > ; 57h := 0101 0111
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_AX,          OP_VOID         > ; 58h := 0101 1000
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_CX,          OP_VOID         > ; 59h := 0101 1001
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_DX,          OP_VOID         > ; 5Ah := 0101 1010
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_BX,          OP_VOID         > ; 5Bh := 0101 1011
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_SP,          OP_VOID         > ; 5Ch := 0101 1100
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_BP,          OP_VOID         > ; 5Dh := 0101 1101
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_SI,          OP_VOID         > ; 5Eh := 0101 1110
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_DI,          OP_VOID         > ; 5Fh := 0101 1111
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 60h := 0110 0000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 61h := 0110 0001
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 62h := 0110 0010
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 63h := 0110 0011
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 64h := 0110 0100
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 65h := 0110 0101
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 66h := 0110 0110
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 67h := 0110 0111
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 68h := 0110 1000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 69h := 0110 1001
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 6Ah := 0110 1010
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 6Bh := 0110 1011
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 6Ch := 0110 0000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 6Dh := 0110 0001
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 6Eh := 0110 0010
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; 6Fh := 0110 0011
    INSTRUCTION <   INS_JO,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 70h := 0111 0000
    INSTRUCTION <   INS_JNO,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 71h := 0111 0001
    INSTRUCTION <   INS_JB,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 72h := 0111 0010
    INSTRUCTION <   INS_JAE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 73h := 0111 0011
    INSTRUCTION <   INS_JE,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 74h := 0111 0100
    INSTRUCTION <   INS_JNE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 75h := 0111 0101
    INSTRUCTION <   INS_JBE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 76h := 0111 0110
    INSTRUCTION <   INS_JA,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 77h := 0111 0111
    INSTRUCTION <   INS_JS,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 78h := 0111 1000
    INSTRUCTION <   INS_JNS,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 79h := 0111 1001
    INSTRUCTION <   INS_JP,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Ah := 0111 1010
    INSTRUCTION <   INS_JNP,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Bh := 0111 1011
    INSTRUCTION <   INS_JL,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Ch := 0111 1100
    INSTRUCTION <   INS_JGE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Dh := 0111 1101
    INSTRUCTION <   INS_JLE,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Eh := 0111 1110
    INSTRUCTION <   INS_JG,         INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; 7Fh := 0111 1111
    INSTRUCTION <   INS_EXT_80_83,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_IMM8         > ; 80h := 1000 0000
    INSTRUCTION <   INS_EXT_80_83,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_IMM16        > ; 81h := 1000 0001
    INSTRUCTION <   INS_EXT_80_83,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_IMM8         > ; 82h := 1000 0010
    INSTRUCTION <   INS_EXT_80_83,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_EIMM8        > ; 83h := 1000 0011
    INSTRUCTION <   INS_TEST,       INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 84h := 1000 0100
    INSTRUCTION <   INS_TEST,       INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 85h := 1000 0101
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 86h := 1000 0110
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 87h := 1000 0111
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_REG8         > ; 88h := 1000 1000
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_REG16        > ; 89h := 1000 1001
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REG8,        OP_REGMEM8      > ; 8Ah := 1000 1010
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 8Bh := 1000 1011
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_SEGREG       > ; 8Ch := 1000 1100
    INSTRUCTION <   INS_LEA,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; 8Dh := 1000 1101
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_SEGREG,      OP_REGMEM16     > ; 8Eh := 1000 1110
    INSTRUCTION <   INS_POP,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_VOID         > ; 8Fh := 1000 1111
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_AX,          OP_AX           > ; 90h := 1001 0000
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_CX,          OP_AX           > ; 91h := 1001 0001
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_DX,          OP_AX           > ; 92h := 1001 0010
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_BX,          OP_AX           > ; 93h := 1001 0011
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_SP,          OP_AX           > ; 94h := 1001 0100
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_BP,          OP_AX           > ; 95h := 1001 0101
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_SI,          OP_AX           > ; 96h := 1001 0110
    INSTRUCTION <   INS_XCHG,       INS_TYPE_NORMAL,    OP_DI,          OP_AX           > ; 97h := 1001 0111
    INSTRUCTION <   INS_CBW,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 98h := 1001 1000
    INSTRUCTION <   INS_CWD,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 99h := 1001 1001
    INSTRUCTION <   INS_CALL,       INS_TYPE_NORMAL,    OP_FAR,         OP_VOID         > ; 9Ah := 1001 1010
    INSTRUCTION <   INS_WAIT,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 9Bh := 1001 1011
    INSTRUCTION <   INS_PUSHF,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 9Ch := 1001 1100
    INSTRUCTION <   INS_POPF,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 9Dh := 1001 1101
    INSTRUCTION <   INS_SAHF,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 9Eh := 1001 1110
    INSTRUCTION <   INS_LAHF,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; 9Fh := 1001 1111
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_AL,          OP_MEM          > ; A0h := 1010 0000
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_AX,          OP_MEM          > ; A1h := 1010 0001
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_MEM,         OP_AL           > ; A2h := 1010 0010
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_MEM,         OP_AX           > ; A3h := 1010 0011
    INSTRUCTION <   INS_MOVSB,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; A4h := 1010 0100
    INSTRUCTION <   INS_MOVSW,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; A5h := 1010 0101
    INSTRUCTION <   INS_CMPSB,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; A6h := 1010 0110
    INSTRUCTION <   INS_CMPSW,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; A7h := 1010 0111
    INSTRUCTION <   INS_TEST,       INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; A8h := 1010 1000
    INSTRUCTION <   INS_TEST,       INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; A9h := 1010 1001
    INSTRUCTION <   INS_STOSB,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; AAh := 1010 1010
    INSTRUCTION <   INS_STOSW,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; ABh := 1010 1011
    INSTRUCTION <   INS_LODSB,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; ACh := 1010 1100
    INSTRUCTION <   INS_LODSW,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; ADh := 1010 1101
    INSTRUCTION <   INS_SCASB,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; AEh := 1010 1110
    INSTRUCTION <   INS_SCASW,      INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; AFh := 1010 1111
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; B0h := 1011 0000
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_CL,          OP_IMM8         > ; B1h := 1011 0001
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_DL,          OP_IMM8         > ; B2h := 1011 0010
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_BL,          OP_IMM8         > ; B3h := 1011 0011
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_AH,          OP_IMM8         > ; B4h := 1011 0100
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_CH,          OP_IMM8         > ; B5h := 1011 0101
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_DH,          OP_IMM8         > ; B6h := 1011 0110
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_BH,          OP_IMM8         > ; B7h := 1011 0111
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; B8h := 1011 1000
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_CX,          OP_IMM16        > ; B9h := 1011 1001
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_DX,          OP_IMM16        > ; BAh := 1011 1010
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_BX,          OP_IMM16        > ; BBh := 1011 1011
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_SP,          OP_IMM16        > ; BCh := 1011 1100
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_BP,          OP_IMM16        > ; BDh := 1011 1101
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_SI,          OP_IMM16        > ; BEh := 1011 1110
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_DI,          OP_IMM16        > ; BFh := 1011 1111
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; C0h := 1100 0000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; C1h := 1100 0001
    INSTRUCTION <   INS_RET,        INS_TYPE_NORMAL,    OP_IMM16,       OP_VOID         > ; C2h := 1100 0010
    INSTRUCTION <   INS_RET,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; C3h := 1100 0011
    INSTRUCTION <   INS_LES,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; C4h := 1100 0100
    INSTRUCTION <   INS_LDS,        INS_TYPE_NORMAL,    OP_REG16,       OP_REGMEM16     > ; C5h := 1100 0101
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM8,     OP_IMM8         > ; C6h := 1100 0110
    INSTRUCTION <   INS_MOV,        INS_TYPE_NORMAL,    OP_REGMEM16,    OP_IMM16        > ; C7h := 1100 0111
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; C8h := 1100 1000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; C9h := 1100 1001
    INSTRUCTION <   INS_RETF,       INS_TYPE_NORMAL,    OP_IMM16,       OP_VOID         > ; CAh := 1100 1010
    INSTRUCTION <   INS_RETF,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; CBh := 1100 1011
    INSTRUCTION <   INS_INT,        INS_TYPE_NORMAL,    OP_CONST3,      OP_VOID         > ; CCh := 1100 1100
    INSTRUCTION <   INS_INT,        INS_TYPE_NORMAL,    OP_IMM8,        OP_VOID         > ; CDh := 1100 1101
    INSTRUCTION <   INS_INTO,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; CEh := 1100 1110
    INSTRUCTION <   INS_IRET,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; CFh := 1100 1111
    INSTRUCTION <   INS_EXT_D0_D3,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_CONST1       > ; D0h := 1101 0000
    INSTRUCTION <   INS_EXT_D0_D3,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_CONST1       > ; D1h := 1101 0001
    INSTRUCTION <   INS_EXT_D0_D3,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_CL           > ; D2h := 1101 0010
    INSTRUCTION <   INS_EXT_D0_D3,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_CL           > ; D3h := 1101 0011
    INSTRUCTION <   INS_AAM,        INS_TYPE_CUSTOM,    OP_VOID,        OP_VOID         > ; D4h := 1101 0100 / Has a constant second byte.
    INSTRUCTION <   INS_AAD,        INS_TYPE_CUSTOM,    OP_VOID,        OP_VOID         > ; D5h := 1101 0101 / Has a constant second byte.
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; D6h := 1101 0110
    INSTRUCTION <   INS_XLAT,       INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; D7h := 1101 0111
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; D8h := 1101 1000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; D9h := 1101 1001
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; DAh := 1101 1010
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; DBh := 1101 1011
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; DCh := 1101 1100
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; DDh := 1101 1101
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; DEh := 1101 1110
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; DFh := 1101 1111
    INSTRUCTION <   INS_LOOPNE,     INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; E0h := 1110 0000
    INSTRUCTION <   INS_LOOPE,      INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; E1h := 1110 0001
    INSTRUCTION <   INS_LOOP,       INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; E2h := 1110 0010
    INSTRUCTION <   INS_JCXZ,       INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; E3h := 1110 0011
    INSTRUCTION <   INS_IN,         INS_TYPE_NORMAL,    OP_AL,          OP_IMM8         > ; E4h := 1110 0100
    INSTRUCTION <   INS_IN,         INS_TYPE_NORMAL,    OP_AX,          OP_IMM16        > ; E5h := 1110 0101
    INSTRUCTION <   INS_OUT,        INS_TYPE_NORMAL,    OP_IMM8,        OP_AL           > ; E6h := 1110 0110
    INSTRUCTION <   INS_OUT,        INS_TYPE_NORMAL,    OP_IMM8,        OP_AX           > ; E7h := 1110 0111
    INSTRUCTION <   INS_CALL,       INS_TYPE_NORMAL,    OP_NEAR,        OP_VOID         > ; E8h := 1110 1000
    INSTRUCTION <   INS_JMP,        INS_TYPE_NORMAL,    OP_NEAR,        OP_VOID         > ; E9h := 1110 1001
    INSTRUCTION <   INS_JMP,        INS_TYPE_NORMAL,    OP_FAR,         OP_VOID         > ; EAh := 1110 1010
    INSTRUCTION <   INS_JMP,        INS_TYPE_NORMAL,    OP_SHORT,       OP_VOID         > ; EBh := 1110 1011
    INSTRUCTION <   INS_IN,         INS_TYPE_NORMAL,    OP_AL,          OP_DX           > ; ECh := 1110 1100
    INSTRUCTION <   INS_IN,         INS_TYPE_NORMAL,    OP_AX,          OP_DX           > ; EDh := 1110 1101
    INSTRUCTION <   INS_OUT,        INS_TYPE_NORMAL,    OP_DX,          OP_AL           > ; EEh := 1110 1110
    INSTRUCTION <   INS_OUT,        INS_TYPE_NORMAL,    OP_DX,          OP_AX           > ; EFh := 1110 1111
    INSTRUCTION <   INS_LOCK,       INS_TYPE_PREFIX,    OP_VOID,        OP_VOID         > ; F0h := 1111 0000
    INSTRUCTION <   INS_UNKNOWN,    INS_TYPE_UNKNOWN,   OP_VOID,        OP_VOID         > ; F1h := 1111 0001
    INSTRUCTION <   INS_REPNE,      INS_TYPE_PREFIX,    OP_VOID,        OP_VOID         > ; F2h := 1111 0010
    INSTRUCTION <   INS_REP,        INS_TYPE_PREFIX,    OP_VOID,        OP_VOID         > ; F3h := 1111 0011
    INSTRUCTION <   INS_HLT,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F4h := 1111 0100
    INSTRUCTION <   INS_CMC,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F5h := 1111 0101
    INSTRUCTION <   INS_EXT_F6_F7,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_VOID         > ; F6h := 1111 0110
    INSTRUCTION <   INS_EXT_F6_F7,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_VOID         > ; F7h := 1111 0111
    INSTRUCTION <   INS_CLC,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F8h := 1111 1000
    INSTRUCTION <   INS_STC,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; F9h := 1111 1001
    INSTRUCTION <   INS_CLI,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FAh := 1111 1010
    INSTRUCTION <   INS_STI,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FBh := 1111 1011
    INSTRUCTION <   INS_CLD,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FCh := 1111 1100
    INSTRUCTION <   INS_STD,        INS_TYPE_NORMAL,    OP_VOID,        OP_VOID         > ; FDh := 1111 1101
    INSTRUCTION <   INS_EXT_FE_FF,  INS_TYPE_EXTENDED,  OP_REGMEM8,     OP_VOID         > ; FEh := 1111 1110
    INSTRUCTION <   INS_EXT_FE_FF,  INS_TYPE_EXTENDED,  OP_REGMEM16,    OP_VOID         > ; FFh := 1111 1111
    
LABEL INS_EXT_80_83
    DW  INS_ADD
    DW  INS_OR
    DW  INS_ADC
    DW  INS_SBB
    DW  INS_AND
    DW  INS_SUB
    DW  INS_XOR
    DW  INS_CMP

LABEL INS_EXT_D0_D3
    DW  INS_ROL
    DW  INS_ROR
    DW  INS_RCL
    DW  INS_RCR
    DW  INS_SHL
    DW  INS_SHR
    DW  INS_NOP
    DW  INS_SAR
    
LABEL INS_EXT_F6_F7
    DW  INS_TEST
    DW  INS_NOP
    DW  INS_NOT
    DW  INS_NEG
    DW  INS_MUL
    DW  INS_IMUL
    DW  INS_DIV
    DW  INS_IDIV
    
LABEL INS_EXT_FE_FF
    DW  INS_INC
    DW  INS_DEC
    DW  INS_CALL
    DW  INS_CALL
    DW  INS_JMP
    DW  INS_JMP
    DW  INS_PUSH
    DW  INS_NOP
