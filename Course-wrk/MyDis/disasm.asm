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

    RES_FILE_NAME           DB "RESULT.ASM", 0
    RES_FILE_LEN            EQU $ - RES_FILE_NAME  - 1
    DATA_FILE_NAME          DB "TESTS.COM", 0
    DATA_FILE_LEN           EQU $ - DATA_FILE_NAME - 1
    ERR_MSG                 DB 'Error occurred. COM file has to be "TESTS.COM", res_file is "RESULT.ASM"$'
    SUCCESS_MSG             DB "Result successfully written to file: $"
    IP_VALUE                DW 0FFh

    IP_BUFFER               DB "0000h:  "
    MC_BUFFER               DB MC_BUFFER_CAPACITY DUP (" ")   ; Machine code as a string.
    INS_BUFFER              DB INS_BUFFER_CAPACITY DUP ("$")
    INS_END_PTR             DW INS_BUFFER   
    MC_END_PTR              DW MC_BUFFER
    DATA_SIZE               DW ?                            ; The size of currently read data buffer.
    DATA_INDEX              DW ?                            ; Position of the data buffer that we are currently at.
    DATA_BUFFER             DB DATA_BUFFER_CAPACITY DUP (?) ; Bytes, which were read from file.

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



include    "opcodes.inc"

.CODE
include    "macro.inc"
include    "utils.inc"

START:
    MOV         AX, @DATA
    MOV         DS, AX
    MOV         ES, AX

OPEN_DATA_FILE:
    MOV         AX, 3D00h          
    LEA         DX, DATA_FILE_NAME
    INT         21h
    MOV         BX, DX
    MOV         BYTE PTR [BX + DATA_FILE_LEN], "$"
    JC          SHORT EXIT_WITH_ERR                 ; Print err msg if error occured (cf = 1)
    MOV         DATA_FILE_HANDLE, AX                ; Save .COM file handle

OPEN_RESULT_FILE:
    MOV         AH, 3Ch                             ; Create result file  (.ASM)
    XOR         CX, CX                              ; CX = 0 for normal file
    LEA         DX, RES_FILE_NAME                   ; DX = Res file offset
    INT         21h                                 ; Call DOS
    MOV         BX, DX
    MOV         BYTE PTR [BX + RES_FILE_LEN], "$"
    JC          SHORT EXIT_WITH_ERR                 ; cf = 1 means error
    MOV         RES_FILE_HANDLE, AX                 ; Save result file handle
    JMP         SHORT DECODE_NEW_INSTRUCTION        ; JUMP to decoding

EXIT_WITH_ERR:                                      ; Print the error, which occurred while opening file.
    LEA         DX, ERR_MSG                         ; load bx with offset of err msg
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
    END START