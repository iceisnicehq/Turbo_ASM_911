LOCALS @@
SMART 

.MODEL SMALL
.486
.STACK 100h
.DATA
    HELP_MSG                DB "To disassemble run: DISASM.EXE [data_file].COM [result_file].ASM$"
    ERR_MSG_GENERIC         DB "Error occurred $"
    SUCCESS_MSG             DB "Result successfully written to file: $"

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

IP_VALUE                DW 0FFh
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

include    "opcodes.inc"

.CODE

include    "utils.inc"
; starting 
START:
    MOV         AX, @DATA ;define datasegment
    MOV         DS, AX
    MOV         SI, 80h
    LODS        BYTE PTR ES:[SI]
    OR          AL, AL
    ;OR          BYTE PTR ES:[SI], 0    ; address of the arguments string (cl holds the numnber of bytes in arguments)
    JE          SHORT PRINT_HELP 
    CALL        RESET_INSTRUCTION  ; reset inst_buffer to " " and "$"
    JMP         SHORT GET_FILE_NAMES
PRINT_HELP:
    PRINT_MSG    HELP_MSG
    JMP          EXIT

GET_FILE_NAMES: ; Get file names from command line argument list.

    INC         SI
    GET_FILE    DATA_FILE_NAME    ; Allow only .COM files    (saves data file name to memory)
    GET_FILE    RES_FILE_NAME      ; Write result in .ASM file  (saves res file name to memory)

OPEN_DATA_FILE:
    MOV         AX, 3D00h
    LEA         DX, DATA_FILE_NAME      
    INT         21h
    JC          SHORT EXIT_WITH_ERR
    MOV         DATA_FILE_HANDLE, AX

OPEN_RESULT_FILE:
    MOV         AH, 3Ch
    XOR         CX, CX
    LEA         DX, RES_FILE_NAME
    INT         21h
    JC          SHORT EXIT_WITH_ERR
    MOV         RES_FILE_HANDLE, AX
    JMP         DECODE_NEW_INSTRUCTION

EXIT_WITH_ERR:  ; Print the error, which occurred while opening file.
    
    PUSH        DX
    LEA         BX, ERR_MSG_GENERIC
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
    OR          DH, DH
    JE          LOAD_INSTRUCTION
    CMP         DH, 1
    JE          PROGRAM_SUCCESS
    LEA         DX, RES_FILE_NAME
    
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
    PRINT_MSG   ERR_MSG_GENERIC
    
    @@RETURN:
    POP         DX CX BX AX
    RET
FPRINT_INSTRUCTION ENDP

END START
