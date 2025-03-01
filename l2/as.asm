.MODEL SMALL
.186
.STACK 100H
MAXSIZE                 EQU     255 ; ЧИСЛО ЗАПИСЫВАЕМЫХ СИМВОЛОВ - АКТУАЛЬНОЕ КОЛВО В ДЕСЯТИЧКЕ, ВЕ МОЖЕТ ПЕРЕВЕСТИ В 16СС, ТОГДА ПЕРЕВОД В ГОЛОВЕ УСЛОВНО, СКОЛЬКО МАКС СИМВОЛОВ У ВАС
.DATA
    ; 0 - НУЛЕВОЙ БАЙТ ДЛЯ ИСПОЛЬЗОВАНИЯ ФУНКЦИИ С НАЗВАНИЕМ ФАЙЛА, ТАМ НУЖЕН ACCII Z, 13 - ВОЗВРАТ КАРЕТКИ В НАЧАЛО (ЧИТАЙ КУРСОРА), 10 - НОВАЯ СТРОКА 
    ; $ - ОБОЗНАЧЕНИЕ КОНЦА СТРОКИ, ДЛЯ НЕКОТОРЫХ ФУНКЦИЙ (НАПРИМЕР AH=09 INT 21H)
    FILE           DB      "OUTPUT.TXT", 0
    LEN_STR          DB      0DH, 0AH, "CHARACTER LIMIT REACHED$"  
    OUTPUT_STR      DB      0DH, 0AH, "OUTPUT: $", 0DH, 0AH
    ERROR_STR               DB      0DH, 0AH, "WORD COUNT ERROR_STR","$",0DH, 0AH
    INPUT_STR       DB      "INPUT: ", "$"
    REVERSE_OFFSET                 DW      ? ; АДРЕС НАЧАЛА РЕВЕРС СЛОВА
    SKIP_SPACE           DB      ? ; НАЧАЛЬНЫЙ АДРЕС ВСЕЙ СТРОЧКИ, СЮДА ВЛОЖИМ ПРОБЕЛ ДЛЯ ОТСУТСТВИЯ ОШИБОК
    BUFFER              DB      MAXSIZE-1 DUP(?) ; СОЗДАЕМ ОБЛАСТЬ В ПАМЯТИ ДЛЯ ЗАПОЛНЕНИЯ СИМВОЛАМИ С КЛАВИАТУРЫ
.CODE
START:
    MOV     AX, @DATA
    MOV     DS, AX
    MOV     ES, AX 
    CLD
    MOV     AH, 03H ; ФУНКЦИЯ БИОСА
    XOR     AL, AL
    INT     10H     
    MOV     AH, 09H
    MOV     DX, OFFSET INPUT_STR ; ВЫВОД НАЧАЛЬНОГО СООБЩЕНИЯ
    INT     21H
    MOV     AL, 20H
    MOV     CX, MAXSIZE+1
    MOV     DL, 07H ; ПАРАМЕТР ИНВЕРТИРУМОГО СЛОВА, ТУТ НАПРЯМУЮ, КАКАЯ ЦИФРА НАПИСАНА, ТАКОЕ И БУДЕТ ИНВЕРТИРОВАТЬСЯ
    MOV     DI, OFFSET SKIP_SPACE
    MOV     SI, DI
RESET_SPACE:
    DEC     DL ; ПРОВЕРКА НА ИНВЕРТИРУЕМОЕ СЛОВО
    JNZ     NOT_THIRD
    MOV     REVERSE_OFFSET, DI ; АДРЕС ИНВЕРТИРУЕМОГО СЛОВА
    INC     REVERSE_OFFSET
NOT_THIRD:
    XOR     BH, BH
    DEC     CX 
BIOS_INPUT:
    MOV     DH, AL
NO_REMEMBER:
    XOR     AH, AH
    INT     16H 
    CMP     AL,  0DH     
    JE      ENTER_IS_PRESSED_CHECK_ONE
    CMP     AL, CTRL_BACKSPACE
    JAE     NO_REMEMBER      
    CMP     AL, 20H
    JB      NO_REMEMBER
    JNE     WITHOUT_SPACE
    INC     BH
    CMP     AL, DH
    CMP     DH, 20H
    JNE     WITHOUT_SPACE
    DEC     BH
    JMP     BIOS_INPUT   
WITHOUT_SPACE:
    MOV     AH, 0EH ; ФУНКЦИЯ ВЫВОДА СИМВОЛА
    INT     10H
    CMP     BH, 05H ; ПАРАМЕТР, КОТОРЫЙ ОТВЕЧАЕТ ЗА ВЫВОД N СЛОВА (ЭТО N-1, ТО ЕСТЬ ЕСЛИ ТУТ 1, ТО ВЫВЕДЕТСЯ 2 (2-1=1) СЛОВО, ВЕ ГОВОРИТ ПРАВИТЬ ЭТИ ПАРАМЕТРЫ, ГОТОВЬТЕСЬ)
    JA      RESET_SPACE
    JNE     SKIP_STOSB
    CMP     AL, 20H
    JB      BIOS_INPUT
    CLD
    STOSB
SKIP_STOSB:
    LOOP    BIOS_INPUT  
MAXIMUM_STRGTH_REACHED: 
    MOV     AH, 09H
    MOV     DX, OFFSET LEN_STR ; ЕСЛИ МАКСИМАЛЬНАЯ ДОПУСТИМАЯ ДЛИНА ДОСТИГНУТА
    INT     21H
ENTER_IS_PRESSED_CHECK_ONE:
    CMP     SI, DI
    JZ      LEN_ERROR ; ПРОВЕРКИ НА ОШИБКИ НИЖЕ С АДРЕСАМИ
CHECK_TWO:   
    MOV     AL, 20H
    DEC     DI
    SCASB
    JNE     WITHOUT_STR_STR_ERROR     
CHECK_THREE:
    DEC     DI
    CMP     SI, DI
    JNZ     WITHOUT_STR_STR_ERROR
LEN_ERROR:
    MOV     DX, OFFSET ERROR_STR ; ВЫВОД СООБЩЕНИЯ ОБ ОШИБКЕ, КОГДА СЛОВ НЕДОСТАТОЧНО
    MOV     AH, 09H
    INT     21H
    JMP     SHORT EXIT
WITHOUT_STR_STR_ERROR:
    MOV     AL, 20H
    STOSB
    INC     SI
    DEC     DI
    MOV     BX, DI
    SUB     BX, SI
    MOV     SI, REVERSE_OFFSET ; ЗДЕСЬ АДРЕС НАЧАЛА РЕВЕРС СЛОВА
    OR      SI, SI  
    JZ      OUTPUT ; ЕСЛИ ЕГО НЕТ, ТО ИДЕМ НА ВЫВОД
    XCHG    DI, SI
    XOR     CX, CX 
    NOT     CX
    REPNE   SCASB ; СЧИТАЕМ ДЛИНУ РЕВЕРС СЛОВА
    NOT     CX 
    DEC     CX
    MOV     DX, CX
    ; SI - НАЧ ПОЗИЦИЯ СЛОВА РЕВЕРС
    ; DI - КОНЕЦ СЛОВА РЕВЕРС - ЗДЕСЬ ОН БОЛЬШЕ НА 2, ПОТОМУ ДЕЛАЕМ ДВА ДЕКРЕМЕНТА
    MOV     SI, REVERSE_OFFSET
    DEC     DI
    DEC     DI
    XCHG    SI, DI ; СМЕНА АДРЕСОВ ДЛЯ РЕВЕРСА
REVERSE:  
    LODSB
    DEC     SI
    XCHG    DI, SI
    MOVSB
    DEC     SI
    DEC     DI
    MOV     [SI], AL
    INC     SI
    DEC     DI
    CMP     DI, SI
    JBE     OUTPUT
    XCHG    SI, DI
    LOOP    REVERSE
OUTPUT:
    MOV     DX, OFFSET OUTPUT_STR ; ВЫВОД СООБЩЕНИЯ 
    MOV     AH, 09H
    INT     21H
    MOV     AH, 03H ; ПОЛУЧАЕМ ПОЗИЦИЮ КУРСОРА
    INT     10H
    MOV     SI, BX ; ВЫВОД СООБЩЕНИЯ БИОС (ВСЕ НИЖЕ ДО INT10H)
    MOV     CX, BX
    MOV     AX, 1300H
    MOV     BL, 07H
    MOV     BP, OFFSET BUFFER
    INT     10H
    MOV     DX, OFFSET FILE 
    MOV     AH, 03CH   
    MOV     BX, SI
    XOR     CX, CX
    INT     21H
    MOV     DX, BP 
    MOV     CX, BX
    MOV     BX, AX 
    MOV     AH, 40H      
    INT     21H
    MOV     AH, 3EH
    INT     21H
    XOR     AH, AH 
    INT     16H
EXIT:
    MOV     AX, 4C00H      
    INT     21H
    END     START
