.MODEL SMALL
.186
.STACK 100H
MAX_LEN                 EQU     255 ; ЧИСЛО ЗАПИСЫВАЕМЫХ СИМВОЛОВ - АКТУАЛЬНОЕ КОЛВО В ДЕСЯТИЧКЕ, ВЕ МОЖЕТ ПЕРЕВЕСТИ В 16СС, ТОГДА ПЕРЕВОД В ГОЛОВЕ УСЛОВНО, СКОЛЬКО МАКС СИМВОЛОВ У ВАС
.DATA
    ; 0 - НУЛЕВОЙ БАЙТ ДЛЯ ИСПОЛЬЗОВАНИЯ ФУНКЦИИ С НАЗВАНИЕМ ФАЙЛА, ТАМ НУЖЕН ACCII Z, 0DH - ВОЗВРАТ КАРЕТКИ В НАЧАЛО (ЧИТАЙ КУРСОРА), 0AH - НОВАЯ СТРОКА 
    ; $ - ОБОЗНАЧЕНИЕ КОНЦА СТРОКИ, ДЛЯ НЕКОТОРЫХ ФУНКЦИЙ (НАПРИМЕР AH=09 INT 21H)
    FILE            DB      "OUTPUT.TXT", 0
    LEN_STR         DB      0DH, 0AH, "CHARACTER LIMIT REACHED$"
    OUTPUT_STR      DB      0DH, 0AH, "OUTPUT: $", 0DH, 0AH
    ERROR_STR       DB      0DH, 0AH, "WORD COUNT ERROR_STR","$",0DH, 0AH
    INPUT_STR       DB      "INPUT: ", "$"
    REVERSE_OFFSET  DW      ? ; АДРЕС НАЧАЛА РЕВЕРС СЛОВА
    SKIP_SPACE      DB      ? ; НАЧАЛЬНЫЙ АДРЕС ВСЕЙ СТРОЧКИ, СЮДА ВЛОЖИМ ПРОБЕЛ ДЛЯ ОТСУТСТВИЯ ОШИБОК
    BUFFER          DB      MAX_LEN-1 DUP(?) ; СОЗДАЕМ ОБЛАСТЬ В ПАМЯТИ ДЛЯ ЗАПОЛНЕНИЯ СИМВОЛАМИ С КЛАВИАТУРЫ
.CODE
START:
    MOV    AX, @DATA
    MOV    DS, AX
    MOV    ES, AX 
    MOV    AH, 03H ; ФУНКЦИЯ БИОСА
    XOR    AL, AL
    INT    10H     
    MOV    AH, 09H
    MOV    DX, OFFSET INPUT_STR ; ВЫВОД НАЧАЛЬНОГО СООБЩЕНИЯ
    INT    21H
    MOV    AL, 20H
    MOV    CX, MAX_LEN+1
    MOV    DL, 07H ; ПАРАМЕТР ИНВЕРТИРУМОГО СЛОВА, ТУТ НАПРЯМУЮ, КАКАЯ ЦИФРА НАПИСАНА, ТАКОЕ И БУДЕТ ИНВЕРТИРОВАТЬСЯ
    MOV    DI, OFFSET SKIP_SPACE
    MOV    SI, DI
    CLD
RESET_COUNTER:
    DEC    DL ; ПРОВЕРКА НА ИНВЕРТИРУЕМОЕ СЛОВО
    JNZ    NOT_REVERSE_WORD
    MOV    REVERSE_OFFSET, DI ; АДРЕС ИНВЕРТИРУЕМОГО СЛОВА
    INC    REVERSE_OFFSET
NOT_REVERSE_WORD:
    XOR    BH, BH
    DEC    CX 
SAVE_TO_DH:
    MOV    DH, AL
READ_CHAR:
    XOR    AH, AH
    INT    16H 
    CMP    AL, 0DH     
    JE     END_CHECK_FIRST
    CMP    AL, 07FH
    JAE    READ_CHAR      
    CMP    AL, 20H
    JB     READ_CHAR
    JNE    NOT_SPACE_AL
    INC    BH
    CMP    AL, DH
    CMP    DH, 20H
    JNE    NOT_SPACE_AL
    DEC    BH
    JMP    SAVE_TO_DH   
NOT_SPACE_AL:
    MOV    AH, 0EH ; ФУНКЦИЯ ВЫВОДА СИМВОЛА
    INT    10H
    CMP    BH, 05H ; ПАРАМЕТР, КОТОРЫЙ ОТВЕЧАЕТ ЗА ВЫВОД N СЛОВА (ЭТО N-1, ТО ЕСТЬ ЕСЛИ ТУТ 1, ТО ВЫВЕДЕТСЯ 2 (2-1=1) СЛОВО, ВЕ ГОВОРИТ ПРАВИТЬ ЭТИ ПАРАМЕТРЫ, ГОТОВЬТЕСЬ)
    JA     RESET_COUNTER
    JNE    SKIP_STOSB
    CMP    AL, 20H
    JB     SAVE_TO_DH
    CLD
    STOSB
SKIP_STOSB:
    LOOP   SAVE_TO_DH  
    MOV    AH, 09H
    MOV    DX, OFFSET LEN_STR ; ЕСЛИ МАКСИМАЛЬНАЯ ДОПУСТИМАЯ ДЛИНА ДОСТИГНУТА
    INT    21H
END_CHECK_FIRST:
    CMP    SI, DI
    JZ     LEN_ERROR ; ПРОВЕРКИ НА ОШИБКИ НИЖЕ С АДРЕСАМИ
    MOV    AL, 20H
    DEC    DI
    SCASB
    JNE    MIN_LEN_REACHED     
    DEC    DI
    CMP    SI, DI
    JNZ    MIN_LEN_REACHED
LEN_ERROR:
    MOV    DX, OFFSET ERROR_STR ; ВЫВОД СООБЩЕНИЯ ОБ ОШИБКЕ, КОГДА СЛОВ НЕДОСТАТОЧНО
    MOV    AH, 09H
    INT    21H
    JMP    SHORT EXIT
MIN_LEN_REACHED:
    MOV    AL, 20H
    STOSB
    INC    SI
    DEC    DI
    MOV    BX, DI
    SUB    BX, SI
    MOV    SI, REVERSE_OFFSET ; ЗДЕСЬ АДРЕС НАЧАЛА РЕВЕРС СЛОВА
    OR     SI, SI  
    JZ     OUTPUT ; ЕСЛИ ЕГО НЕТ, ТО ИДЕМ НА ВЫВОД
    XCHG   DI, SI
    XOR    CX, CX 
    NOT    CX
    REPNE  SCASB ; СЧИТАЕМ ДЛИНУ РЕВЕРС СЛОВА
    NOT    CX 
    DEC    CX
    MOV    DX, CX
    ; SI - НАЧ ПОЗИЦИЯ СЛОВА РЕВЕРС
    ; DI - КОНЕЦ СЛОВА РЕВЕРС - ЗДЕСЬ ОН БОЛЬШЕ НА 2, ПОТОМУ ДЕЛАЕМ ДВА ДЕКРЕМЕНТА
    MOV    SI, REVERSE_OFFSET
    DEC    DI
    DEC    DI
    XCHG   SI, DI ; СМЕНА АДРЕСОВ ДЛЯ РЕВЕРСА
REVERSE_LOOP:  
    LODSB
    DEC    SI
    XCHG   DI, SI
    MOVSB
    DEC    SI
    DEC    DI
    MOV    [SI], AL
    INC    SI
    DEC    DI
    CMP    DI, SI
    JBE    OUTPUT
    XCHG   SI, DI
    LOOP   REVERSE_LOOP
OUTPUT:
    MOV    DX, OFFSET OUTPUT_STR ; ВЫВОД СООБЩЕНИЯ 
    MOV    AH, 09H
    INT    21H
    MOV    AH, 03H ; ПОЛУЧАЕМ ПОЗИЦИЮ КУРСОРА
    INT    10H
    MOV    SI, BX ; ВЫВОД СООБЩЕНИЯ БИОС (ВСЕ НИЖЕ ДО INT10H)
    MOV    CX, BX
    MOV    AX, 1300H
    MOV    BL, 07H
    MOV    BP, OFFSET BUFFER
    INT    10H
    MOV    DX, OFFSET FILE 
    MOV    AH, 03CH   
    MOV    BX, SI
    XOR    CX, CX
    INT    21H
    MOV    DX, BP 
    MOV    CX, BX
    MOV    BX, AX 
    MOV    AH, 40H      
    INT    21H
    MOV    AH, 3EH
    INT    21H
    XOR    AH, AH 
    INT    16H
EXIT:
    MOV    AX, 4C00H      
    INT    21H
    END    START
