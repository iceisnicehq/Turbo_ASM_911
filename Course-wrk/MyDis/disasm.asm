LOCALS @@
SMART 

.MODEL SMALL
.486
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
    INS_BUFFER_CAPACITY     EQU 65

    HELP_MSG                DB "To disassemble run: DISASM.EXE [data_file].COM [result_file].ASM",0Dh, 0Ah, "$"
    ERR_MSG                 DB "Error occurred $"
    SUCCESS_MSG             DB 0Dh, 0Ah, "Result successfully written to file: $"
    SP_PL_SP                DB " + $"

    IP_VALUE                DW 0FFh

    IP_BUFFER               DB "0000h:  "   ; Offset from the start of code segment as a string.
    INS_BUFFER              DB INS_BUFFER_CAPACITY DUP (0)  ; Instruction as a string.
    INS_END_PTR             DW 0   

    LABEL CURRENT_INSTRUCTION
        INSTRUCTION { }
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

    LABEL MODRM_BYTE
        MODE                DB ?
        REG                 DB ?
        RM                  DB ?
    LABEL SIB_BYTE
        SCALE               DB ?
        INDEX               DB ?
        BASE                DB ?
    LABEL PREF_BYTES 
        LABEL ADDR_SIZE WORD 
            SIZE_OVR            DB ?
            ADDR_OVR            DB ?
        LABEL PREF_SEG  WORD 
            HAS_PREFIX          DB ?
            SEG_OVR             DB ?
        LABEL EXT_MODRM WORD 
            INS_EXT             DB ?
            IS_MODRM_DECODED    DB ?

include    "opcodes.inc"

.CODE
include    "macro.inc"
include    "utils.inc"

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
    LEA         BX, ERR_MSG                 ; load bx with offset of err msg
    PRINT_MSG   [BX]                                ; print err message
    POP         DX                                  ; Restore file name offset

PREP_FIND_FILE_NAME_END:
    ; MOV         BX, DX                              ; BX = file name beggining offset 
    
FIND_FILE_NAME_END:
    ; CMP         BYTE PTR [BX], 0                    ; is file name ends reached?
    ; JE          PRINT_FILE_NAME                     ; if yes print file name
    ; INC         BX                                  ; if no move up one letter
    ; JMP         FIND_FILE_NAME_END                  ; loop for file name
    
PRINT_FILE_NAME:
    ; MOV         BYTE PTR [BX], "$"                  ; make file name ASCII$
    MOV         BX, DX                              ; BX = beggining of file name
    PRINT_MSG   [BX]                                ; print file name 
    JMP         EXIT                                ; jump to exit
; DECODE_NEW_EXT_INSTRUCTION:
;     INC         INS_EXT
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
    MOV         CX, AX
    MUL         DL                                  ; mul read byte in dl by 5 to get its value in inst list
    LEA         SI, INSTRUCTION_LIST                ; make bx point to list begining
    ADD         SI, AX                              ; move bx from begining list to read instruction
    LEA         DI, CURRENT_INSTRUCTION
    ; MOV         CX, 3
    REP         MOVSB ; mnem(2b) + type(1b) + op1(1b) + op2(2b)
    ; MOV         AX, [BX].MNEMONIC                   ; save mnemonic
    ; MOV         CURRENT_INSTRUCTION.MNEMONIC, AX    ;   of curr instr
    ; MOV         AL, [BX].TYPEOF                     ; save typeof
    ; MOV         CURRENT_INSTRUCTION.TYPEOF, AL      ;   of curr instr
    ; MOV         AL, [BX].OP1                        ; save op1
    ; MOV         CURRENT_INSTRUCTION.OP1, AL         ;   of curr instr
    ; MOV         AL, [BX].OP2                        ; save op2 
    ; MOV         CURRENT_INSTRUCTION.OP2, AL         ;   of curr instr
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_JCXZ
    JNE         NOT_JECXZ
    CMP         ADDR_OVR, 1
    JNE         NOT_JECXZ
    MOV         CURRENT_INSTRUCTION.MNEMONIC, OFFSET INS_JECXZ     ;   of curr instr
NOT_JECXZ:
    XOR         AX, AX
    OR          AX, PREF_SEG
    OR          AX, ADDR_SIZE
    OR          AL, INS_EXT
    JNZ         CHECK_PREFIX_TYPE

PRINT_OFFSET:
    LEA         DI, IP_BUFFER                       ; load offset of the ip_buffer (which is the beginning of the lines)
    SPUT_WORD   DI, IP_VALUE                        ; put ip_value into the mc_buffer

;   make it more unique
;   label pref_bytes
;   
CHECK_PREFIX_TYPE: 
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_EXT        ; check if current instr is seg_ovr
    JA          SKIP_OFFSET ;DECODE_NEW_EXT_INSTRUCTION
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR
    JNE         NOT_SEG_OVR
    MOV         AX, CURRENT_INSTRUCTION.MNEMONIC                    ; if seg ovr, save its mnemonic to ax
    MOV         SEG_OVR, AL                                         ; save seg_ovr 
    JMP         DECODE_NEW_INSTRUCTION                              ; continue decoding_instr
NOT_SEG_OVR:
    MOVZX       BX, CURRENT_INSTRUCTION.TYPEOF
    ADD         BYTE PTR PREF_BYTES[BX], BL
    JMP         DECODE_NEW_INSTRUCTION
    ; CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SIZE_OVR        ; check if current instr is seg_ovr
    ; JNE         NO_SIZE_OVR
    ; INC         SIZE_OVR
;     JMP         DECODE_NEW_INSTRUCTION
; NO_SIZE_OVR:
;     CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_ADDR_OVR        ; check if current instr is seg_ovr
;     JNE         NO_ADDR_OVR
;     INC         ADDR_OVR
;     JMP         DECODE_NEW_INSTRUCTION
; NO_ADDR_OVR:        
;     CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR        ; check if current instr is seg_ovr
;     JNE         SKIP_OFFSET                                         ; if not then skip
;     MOV         AX, CURRENT_INSTRUCTION.MNEMONIC                    ; if seg ovr, save its mnemonic to ax
;     MOV         SEG_OVR, AL                                         ; save seg_ovr 
;     JMP         DECODE_NEW_INSTRUCTION                              ; continue decoding_instr

SKIP_OFFSET:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_UNKNOWN        ; check if instruction is unknown
    PUSHF
    MOV         SI, CURRENT_INSTRUCTION.MNEMONIC                 ; SI = instr mneonic offset
    CALL        INS_STR                                             ; put string at DS:SI (instr mnemonic) into the ip_buffer
    POPF
    JE          SHORT END_LINE                                            ; put crlf
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_PREFIX         ; check if instr is prefix (e.g. lock, rep, repne)
    JNE         SHORT ANALYZE_OPERANDS                                    ; if not a prefix then analyze ops
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
    END START
