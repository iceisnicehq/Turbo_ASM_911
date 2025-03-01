.MODEL SMALL
.186
.STACK 100H

.DATA
    ASCII_LF       EQU   0Ah
    ASCII_ENTER    EQU   0Dh
    ASCII_SPACE    EQU   20h
    ASCII_LAST     EQU   7Fh
    VIVOD_FILE     DB    "VIVOD.TXT", 0
    OUTPUT         DB    ASCII_ENTER, ASCII_LF, "OUTPUT: $"
    INPUT          DB    "INPUT: $"
    LEN_ERROR      DB    ASCII_ENTER, ASCII_LF, "LENGTH ERROR$"
    BUFFER         DB    255 DUP(ASCII_SPACE)

.CODE
START:
    MOV    AX, @DATA
    MOV    DS, AX
    MOV    ES, AX
    CLD		     	            ; проверка флага, (ВЕ требовал на защите в декбаре)
    MOV    AH, 9                    ; Вывод строки
    MOV    DX, OFFSET INPUT
    INT    21H
    XOR    BL, BL
    MOV    BH, 1                    ; это номер слова для записи (в BH, а BL зануляем) (1 потому что 2-е слово начинается после 1-го пробела)
    MOV    CX, SIZE BUFFER	    ; ЧИСЛО DUP для BUFFER
    MOV    DI, OFFSET BUFFER        ; Для записи 
    MOV    AL, ASCII_SPACE
SAVE_TO_DH:
    MOV    DH, AL                   ; ЗАПРЕЩАЕМ СОХРАНЕНИЕ КУЧИ ПРОБЕЛОВ В ПАМЯТЬ
DONT_SAVE_TO_DH:
    MOV    AH, 8                    ; ВВОД с эхо
    INT    21h                      
    CMP    AL, ASCII_ENTER          ; IF YES_ASCII_ENTER (0DH)
    JE     YES_ASCII_ENTER
    CMP    AL, ASCII_LAST           ; 07EH LAST ASCII CHAR (20H-7EH)
    JA     DONT_SAVE_TO_DH       
    CMP    AL, ASCII_SPACE          ; CHECK IF SPACE
    JB     DONT_SAVE_TO_DH          
    MOV    DL, AL
    MOV    AH, 2
    INT    21H
    JNE    NOT_ASCII_SPACE          ; NOT SPACE
    CMP    DH, AL                   ; CHECK IF LAST CHAR IS SPACE
    JE     SAVE_TO_DH               ; IF LAST IS SPACE JUMP TO KEY INPUT 
    DEC    BH                       ; BH = NUMBER OF SPACES (NUMBER OF WORDS)
NOT_ASCII_SPACE:
    OR     BH, BH                   ; 
    JNZ    NO_STOSB                 ; IF WORDS LESS THAN 7, THEN JUMP TO ITERATION
    CMP    AL, ASCII_SPACE          ; пробел не записываем
    JE     LOOPING
    STOSB                           ; сохраняем только НЕ пробелы
NO_STOSB:
    JNS    LOOPING		    ; когда счетчик ушел в минус, значит пора его обновлять
    MOV    BH, 1                    ; это номер слова для записи (2 потому что 3-е слово начинается после 2-го пробела)
    INC    BL	  		    ; BL счётчик записанных слов, чтоб не делать реверс, если нет 8-го
    INC    DI
LOOPING:
    LOOP   SAVE_TO_DH 
YES_ASCII_ENTER:
    CMP    DI, OFFSET BUFFER       ; IF NO WORDS WERE SAVED (NUMBER OF WORDS < 2)
    JNE    NO_LEN_ERROR
    MOV    AH, 9
    MOV    DX, OFFSET LEN_ERROR
    INT    21H
    JMP    EXIT
NO_LEN_ERROR:
    CMP    BYTE PTR [DI-1], ASCII_SPACE
    JE     DONT_COUNT_LAST_WORD
    INC    BL                   ; если в конце нет пробела, то счетчик слов не увелчивается, поэтому увеличиваем руками
DONT_COUNT_LAST_WORD:
    MOV    DX, DI		; для расчета длины всей строки
    MOV    DI, OFFSET BUFFER
    SUB    DX, DI
    MOV    BH, 8                ; НОМЕР СЛОВА для реверса
    CMP    BL, BH		; если например всего 7 слов, тогда инвертировать нечего
    JB     PRINT_STRING 
    MOV    AX, ASCII_SPACE
FIND_8th_WORD:			; ищем слово и считаем длину найденных слов
    XOR    CX, CX
    NOT    CX
    MOV    SI, DI
    REPNE  SCASB
    DEC    BH
    JNZ    FIND_8th_WORD
    NOT    CX
    DEC    CX
    CMP    CX, 1		; если слово из одной буквы
    JE     PRINT_STRING
    SUB    DI, 2 
    SHR    CX, 1
INVERT: ; в СХ половины длины слова, половину букв мы и меняем местами.
    LODSB                  
    XCHG   AL, [DI]       
    DEC    DI
    MOV    [SI-1], AL    
    LOOP   INVERT
PRINT_STRING:
    MOV    DI, DX
    MOV    AH, 9
    MOV    DX, OFFSET OUTPUT
    INT    21H
    MOV    AH, 3CH
    MOV    DX, OFFSET VIVOD_FILE
    XOR    CX, CX
    INT    21H
    MOV    BX, AX
    MOV    AH, 40H
    MOV    DX, OFFSET BUFFER
    MOV    CX, DI
    INT    21H                  ; ZAPIS V VIVOD_FILE
    MOV    AH, 3EH
    INT    21H
    MOV    AH, 40H
    MOV    BX, 1                ; STANDARD VIDEO DISPLAY
    INT    21H                  ; VIVOD NA EKRAN
EXIT:
    MOV    AH, 8		; тут для ожидания нажатия кнопки, перед завешением
    INT    21H
    MOV    AH, 4CH
    INT    21H
    END    START
