.MODEL SMALL
.186
.STACK 100H

.DATA
    OUTPUT_FILE    DB    "TEXT.TXT", 0
    INFO_MSG       DB    13, 10, "CHARS COUNT SIZE EXCEEDED.$"  
    OUTPUT_MSG     DB    13, 10, "OUTPUT TEXT: $"
    ERROR_MSG      DB    13, 10, "SIZE ERROR: MINIMUM 3 WORDS REQUIRED$"
    INPUT_MSG      DB    "INPUT  TEXT: $"
    TXT_BUFFER     DB    256 DUP(0)
.CODE

START:
    MOV    AX, @DATA
    MOV    DS, AX
    MOV    ES, AX 
    MOV    AX, 3                    ; 80X25 очитска (больше инфы если поискать про int 10h - прервыание видео сервиса)
    INT    10H  
    MOV    AH, 9                    ; Вывод строки
    MOV    DX, OFFSET INPUT_MSG
    INT    21H
    MOV    AL, ' '
    MOV    BX, 2                    ; это номер слова для записи (в BL, BH зануляем) (2 потому что 3-е слово начинается после 2-го пробела)
    MOV    CX, 256
    MOV    DI, OFFSET TXT_BUFFER    ; Для записи 
    MOV    BP, DI
    CLD
SAVE_LAST_CHAR:
    MOV    DL, AL                   ; SAVE LAST CHAR a sdsad 
DONT_SAVE_LAST_CHAR:
    XOR    AH, AH                   ; BIOS функция
    INT    16H                      ; INTERRUPT BIOS
    CMP    AL, 13                   ; IF ENTER_PRESSED (0DH)
    JE     ENTER_PRESSED
    CMP    AL, 7EH                  ; 07EH LAST ASCII CHAR (20H-7EH)
    JA     DONT_SAVE_LAST_CHAR       
    CMP    AL, ' '                  ; CHECK IF SPACE
    JB     DONT_SAVE_LAST_CHAR      ; IF CTRL+KEY
    JNE    CHAR_NOT_SPACE           ; NOT SPACE
    CMP    DL, AL                   ; CHECK IF LAST CHAR IS SPACE
    JE     SAVE_LAST_CHAR           ; IF LAST IS SPACE JUMP TO KEY INPUT 
    DEC    BL                       ; BH = NUMBER OF SPACES (NUMBER OF WORDS)
CHAR_NOT_SPACE:
    MOV    AH, 2                    ; ВЫВОД посимвольно символа в dl 
    MOV    DL, AL          
    INT    21H
    OR     BL, BL                   ; 
    JNZ    NOT_STORING               ; IF WORDS LESS THAN 4, THEN JUMP TO ITERATION
    CMP    AL, ' '
    JE     NOT_RESET_COUNTER
    STOSB
NOT_STORING:
    JNS    NOT_RESET_COUNTER
    STOSB
    MOV    BL, 2                    ; это номер слова для записи (2 потому что 3-е слово начинается после 2-го пробела)
    INC    BH
NOT_RESET_COUNTER:
    LOOP   SAVE_LAST_CHAR 
    MOV    AH, 9
    MOV    DX, OFFSET INFO_MSG
    INT    21H
ENTER_PRESSED:
    CMP    DI, BP                 ; IF NO WORDS WERE SAVED (NUMBER OF WORDS < 3)
    JNE    NO_LENTGH_ERROR
    MOV    AH, 9
    MOV    DX, OFFSET ERROR_MSG
    INT    21H
    JMP    EXIT
NO_LENTGH_ERROR:
    MOV    AL, ' ' 
    DEC    DI   
    SCASB                       ; проверяем на пробел
    JE     LAST_SPACE
    STOSB                       ; если  в конце нет пробела (от пользака), то надо поставить, чтобы знать, где оно  кончается
    INC    BH                   ; если в конце нет пробела, то счетчик слов не увелчивается, поэтому увеличиваем руками
LAST_SPACE:
    XCHG   BP, DI
    MOV    BL, 1                ; НОМЕР СЛОВА для реверса
    CMP    BH, BL
    JNAE   PRINT_OUTPUT 
FIND_REVERSE_WORD:
    MOV    SI, DI
    MOV    CX, 0FFFFH           ;  
    REPNZ  SCASB    
    DEC    BL
    JNZ    FIND_REVERSE_WORD    
    NOT    CX
    DEC    CX
    SHR    CX, 1
    JZ     PRINT_OUTPUT
    DEC    DI
    DEC    DI
REVERSE:
    LODSB                        ; LOAD BYTE FROM [SI] INTO AL, INCREMENT SI
    XCHG   AL, [DI]              ; SWAP AL WITH BYTE AT [DI]
    DEC    DI
    MOV    [SI-1], AL            ; STORE AL INTO [SI-1]
    LOOP   REVERSE
PRINT_OUTPUT:
    MOV    AH, 9
    MOV    DX, OFFSET OUTPUT_MSG
    INT    21H
    MOV    AH, 3CH
    MOV    DX, OFFSET OUTPUT_FILE
    XOR    CX, CX
    INT    21H
    MOV    BX, AX
    MOV    AH, 40H
    MOV    DX, OFFSET TXT_BUFFER
    SUB    BP, DX
    MOV    CX, BP
    DEC    CX
    INT    21H                  ; ZAPIS V OUTPUT_FILE
    MOV    AH, 3EH
    INT    21H
    MOV    AH, 40H
    MOV    BX, 1                ; STANDARD VIDEO DISPLAY PRINT_OUTPUT
    INT    21H                  ; VIVOD NA EKRAN
EXIT:
    MOV    AH, 8
    INT    21H
    MOV    AH, 4CH
    INT    21H
    END    START
