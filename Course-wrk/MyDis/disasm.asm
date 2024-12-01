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

START:
    MOV         AX, @DATA                           ;define datasegment
    MOV         DS, AX
    MOV         SI, 80h                             ; mov si to point to the cmd args
    LODS        BYTE PTR ES:[SI]                    ; load cmd arg len to al
    OR          AL, AL                              ; is len = 0?
    JE          SHORT PRINT_HELP                    ; if yes print help msg
    CALL        RESET_INSTRUCTION                   ; reset inst_buffer to " " and "$"
    JMP         SHORT GET_FILE_NAMES                ; jump to reading file names
PRINT_HELP:
    PRINT_MSG    HELP_MSG                           ; print help msg
    JMP          EXIT                               ; jmp to exit

GET_FILE_NAMES:                                     ; Get file names from command line argument list
    INC         SI                                  ; inc si to 82h where cmd start
    GET_FILE    DATA_FILE_NAME                      ; Save cmd .COM TEST file to address in memory
    GET_FILE    RES_FILE_NAME                       ; Save cmd .ASM RES  file to address in memory

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
    JMP         DECODE_NEW_INSTRUCTION              ; JUMP to decoding

EXIT_WITH_ERR:                                      ; Print the error, which occurred while opening file.
    
    PUSH        DX                                  ; Save file name offset 
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

DECODE_NEW_INSTRUCTION:    
    CALL        READ_UPCOMING_BYTE                  ; reads upcoming byte and saves it in ascii to mc_buffer
    OR          DH, DH                              ; normal byte
    JE          LOAD_INSTRUCTION                    ; load instruction
    CMP         DH, 1                               ; file end reached 
    JE          PROGRAM_SUCCESS                     ; print succes msg and end programm
    
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
    
    CMP         HAS_PREFIX, 1                       ; check if prefix was saved 
    JE          SKIP_OFFSET                         ; Offset is already printed if instruction has a prefix.
    CMP         SEG_OVR, 0                          ; check seg_ovr
    JNE         SKIP_OFFSET                         ; Offset is already printed if instruction has segment override.
    
PRINT_OFFSET:
    LEA         DI, IP_BUFFER                       ; load offset of the ip_buffer (which is the beginning of the lines)
    SPUT_WORD   DI, IP_VALUE                        ; put ip_value into the mc_buffer
    SPUT_CHAR   DI, "h"                             ; put h into the mc_buffer
    SPUT_CHAR   DI, ":"                             ; put : into the mc_buffer
    
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_SEG_OVR        ; check if current instr is seg_ovr
    JNE         SKIP_OFFSET                                         ; if not then skip
    MOV         AX, CURRENT_INSTRUCTION.MNEMONIC                    ; if seg ovr, save its mnemonic to ax
    MOV         SEG_OVR, AL                                         ; save seg_ovr 
    JMP         DECODE_NEW_INSTRUCTION                              ; continue decoding_instr

SKIP_OFFSET:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_UNKNOWN        ; check if instruction is unknown
    JNE         KNOWN_INSTRUCTION                                   ; jump if instruction is not unknown
    MOV         SI,    CURRENT_INSTRUCTION.MNEMONIC                 ; SI = instr mneonic offset
    CALL        INS_STR                                             ; put string at DS:SI (instr mnemonic) into the ip_buffer
    JMP         END_LINE                                            ; put crlf

KNOWN_INSTRUCTION:                                                  ; if instruction is known
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_EXTENDED       ; check if instruction is extended type (starts with 0f)
    JNE         PRINT_MNEMONIC                                      ; if its not the print mnemonic
    CALL        DECODE_EXT_INS                                      ; if yes start decoding

PRINT_MNEMONIC:
    MOV         SI, CURRENT_INSTRUCTION.MNEMONIC                    ; print curr
    CALL        INS_STR                                             ;   intr mnemonic to the ip_buffer
    
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_PREFIX         ; check if instr is prefix (e.g. lock, rep, repne)
    JNE         ANALYZE_OPERANDS                                    ; if not a prefix then analyze ops
    MOV         HAS_PREFIX, 1                                       ; if prefix then save for later
    JMP         DECODE_NEW_INSTRUCTION                              ; start decoding
        
ANALYZE_OPERANDS:
    CMP         CURRENT_INSTRUCTION.TYPEOF, INS_TYPE_CUSTOM         ; check if the second byte of the instruction is constant (e.g. AAD)
    JNE         READ_OPERANDS                                       ; if not then read ops
    CALL        READ_UPCOMING_BYTE                                  ; if yes read the second const byte
    
READ_OPERANDS:
    MOV         DL, CURRENT_INSTRUCTION.OP1                         ; decode 
    CALL        DECODE_OPERAND                                      ;   op1 of curr instr
    MOV         DL, CURRENT_INSTRUCTION.OP2                         ; decode
    CALL        DECODE_OPERAND                                      ;   op2 of curr instr
    
    MOV         DL, CURRENT_INSTRUCTION.OP1                         ; put op1
    CALL        PUT_OPERAND                                         ;   into mnem_buffer string
    CMP         CURRENT_INSTRUCTION.OP2, OP_VOID                    ; check if op2 is void
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
