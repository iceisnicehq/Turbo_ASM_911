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
