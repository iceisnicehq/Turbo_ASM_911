.MODEL SMALL
.186
.STACK 100H

    LF           EQU   0AH
    CR           EQU   0DH
    SPACE        EQU   20H
    LAST         EQU   7FH
.DATA
    FILE         DB    "FILE.TXT", 0
    INPUT        DB    "INPUT: $"
    OUTPUT       DB    CR, LF, "OUTPUT: $"
    LEN_ERR      DB    CR, LF, "STRING TOO SHORT. ABORTING...$"
    BUFFER       DB    255 DUP(SPACE)

.CODE
START:
    MOV   AX, @DATA
    MOV   DS, AX
    MOV   ES, AX
    CLD	         	            ; проверка флага, (ВЕ требовал на защите в декбаре)
    MOV   AX, 3              ; установка видео режима, для очистки консоли.
    INT   10H
    MOV   AH, 9                    ; Вывод строки
    MOV   DX, OFFSET INPUT
    INT   21H
    MOV   DI, OFFSET BUFFER        ; Для записи 
    MOV   BP, DI
    MOV   AL, SPACE
    DEC   DI
    MOV   BL, -1
    MOV   CX, SIZE BUFFER	    ; ЧИСЛО DUP для BUFFER
RESET_VALS:
    MOV   BH, 4                    ; это номер слова для записи (в BH, а BL зануляем) (4 потому что 5-е слово начинается после 1-го пробела)
    INC   BL	   		    ; BL счётчик записанных слов, чтоб не делать реверс, если нет 8-го
    INC   DI
REMEMBER_CHAR:
    MOV   DH, AL
READ_CHAR:
    MOV   AH, 8                    ; ВВОД без эхо
    INT   21h                      
    CMP   AL, CR                   ; IF YES_CR (0DH)
    JE    ENTER_
    CMP   AL, LAST           ; 07EH LAST ASCII CHAR (20H-7EH)
    JA    READ_CHAR       
    CMP   AL, SPACE          ; CHECK IF SPACE
    JB    READ_CHAR          
    MOV   DL, AL
    MOV   AH, 2
    INT   21H
    JNE   REGULAR_CHAR          ; NOT SPACE
    CMP   DH, AL                   ; CHECK IF LAST CHAR IS SPACE
    JE    REMEMBER_CHAR               ; IF LAST IS SPACE JUMP TO KEY INPUT 
    DEC   BH                       ; BH = NUMBER OF SPACES (NUMBER OF WORDS)
REGULAR_CHAR:
    OR    BH, BH                   ; 
    JNZ   NO_STOSB                 ; IF WORDS LESS THAN 7, THEN JUMP TO ITERATION
    CMP   AL, SPACE          ; пробел не записываем
    LOOPE REMEMBER_CHAR 
    INC   CX
    STOSB                           ; сохраняем только НЕ пробелы
NO_STOSB:
    JS    RESET_VALS		    ; когда счетчик ушел в минус, значит пора его обновлять
LOOPING:
    LOOP  REMEMBER_CHAR 
ENTER_:
    CMP   DI, BP          ; IF NO WORDS WERE SAVED (NUMBER OF WORDS < 2)
    JNE   NO_LEN_ERROR
    MOV   AH, 9
    MOV   DX, OFFSET LEN_ERR
    INT   21H
    JMP   EXIT
NO_LEN_ERROR:
    DEC   DI
    MOV   AL, SPACE
    SCASB
    JE    NO_INC
    INC   BL                    ; если в конце нет пробела, то счетчик слов не увелчивается, поэтому увеличиваем руками
NO_INC:
    XCHG  BP, DI		; для расчета длины всей строки
    SUB   BP, DI
    MOV   BH, 7                 ; НОМЕР СЛОВА для реверса
    CMP   BL, BH		; всего 6 слов, то инвертировать нечего
    JB    PRINT 
    MOV   AX, SPACE
SEARCH_INVERT:			; ищем слово и считаем длину найденных слов
    MOV   CX, -1
    MOV   SI, DI
    REPNE SCASB
    DEC   BH
    JNZ   SEARCH_INVERT
    NOT   CX
    DEC   CX
    SHR   CX, 1		; если слово из одной буквы
    JZ    PRINT
    SUB   DI, 2 
INVERT: ; в СХ половины длины слова, половину букв мы и меняем местами.
    LODSB                  
    XCHG  AL, [DI]       
    MOV   [SI-1], AL    
    DEC   DI
    LOOP  INVERT
PRINT:
    MOV   AH, 9
    MOV   DX, OFFSET OUTPUT
    INT   21H
    MOV   AH, 3CH
    MOV   DX, OFFSET FILE
    XOR   CX, CX
    INT   21H
    MOV   BX, AX
    MOV   AH, 40H
    MOV   DX, OFFSET BUFFER
    MOV   CX, BP
    INT   21H    
    MOV   AH, 3EH
    INT   21H
    MOV   AH, 2
    MOV   SI, DX
PRINT_LOOP:
    LODSB
    MOV   DL, AL
    INT   21H
    LOOP  PRINT_LOOP
EXIT:
    MOV   AH, 8		; тут для ожидания нажатия кнопки, перед завешением
    INT   21H
    MOV   AH, 4CH
    INT   21H
    END   START
