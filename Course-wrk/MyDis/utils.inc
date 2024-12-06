GET_FILE MACRO NAME
    LEA         BX, NAME
    CALL        GET_CMD_ARG
    CMP         BYTE PTR [BX], 0
    JE          PRINT_HELP
ENDM
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; Prints a message to the screen.
; IN
;   MSG - Pointer to message.            
;-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
PRINT_MSG MACRO MSG
    LEA         SI, MSG
    CALL        PRINT
ENDM
PRINT PROC 
    PUSH        AX DX
    MOV         AH, 09h
    MOV         DX, SI
    INT         21h
    POP         DX AX
    RET
PRINT ENDP
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
    
    MOV         TYPE_OVR, 0
    MOV         SEG_OVR, 0
    MOV         HAS_PREFIX, 0
    MOV         ADDR_OVR, 0
    MOV         SIZE_OVR, 0
    MOV         INS_EXT, 0
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
    ; CMPJBE      OP_DS,      @@PRINT_CONST_REG
    ; CMPJE       OP_CONST1,  @@PRINT_CONST1
    ; CMPJE       OP_CONST3,  @@PRINT_CONST3
    CMPJE       OP_IMM8,    @@PRINT_IMM8
    ; CMPJE       OP_EIMM8,   @@PRINT_IMM16
    CMPJE       OP_REL8,   @@PRINT_SHORT
    ; CMPJE       OP_IMM16,   @@PRINT_IMM16
    ; CMPJE       OP_NEAR,    @@PRINT_NEAR
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
    SET_OVR     TYPE_OVR_DWORD
    CMP         AL,    OP_IMM16
    JB          @@STORE_IMM
    CALL        READ_UPCOMING_BYTE
    MOV         BH, DL
    SET_OVR     TYPE_OVR_DWORD
    
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
    SET_OVR     TYPE_OVR_WORD
    CMP         AL, OP_REGMEM16
    JNE         @@RETURN
    SET_OVR     TYPE_OVR_DWORD
    
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
