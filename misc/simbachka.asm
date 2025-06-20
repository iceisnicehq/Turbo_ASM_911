.MODEL    SMALL
.186
.STACK    100H

;-----EQU директива присваивает числовое значение символьному (можно убрать)-------
MAX_VAL         EQU   7FH       ; MAX_VAL = 7Fh =  127
MIN_VAL         EQU   80H       ; MIN_VAL = 80h = -128
;------------------------
.DATA
;-----data------------------------------------------
; (1) здесь в конце стоит 0, так как этого требует функция 3Ch, без этого не рботает
;     функия 3Ch требует название файла в ASCIIZ формате, где Z - zero
; (2) 13 и 10 - carriage return и line feed
; (3) $ - счетчик местоположения, получается адрес КОНЦА NUMBERS - адрес НАЧАЛА NUMBERS, 
;     получается число символов. Нужно для функции 3Ch
; переменные через ? стоят в конце для того, чтобы не занимать память в exe файле
    FILENAME    DB    'ABC.TXT', 0             ; (1)
    NUMBERS     DB    "----,----,----", 13, 10 ; (2)
    NUMS_LEN    EQU   $ - NUMBERS              ; (3)
    A           DB    ?
    B           DB    ?
    C           DB    ?
    D           DW    ?
;---------------------------
.CODE
START:
    MOV    AX, @DATA                  
    MOV    DS, AX  
    MOV    ES, AX                   ; ES нужен для записи STOSW, так как там AX -> word ptr [ES:DI]
    MOV    CH, [A]                  ; CH = A
    MOV    CL, [B]                  ; CL = C
    MOV    BH, [C]                  ; BH = C
    XOR    BL, BL
; 3 OR для проверки на заданность переменных, ноль=не заданы, если не задана хоть одна, то идём в цикл -128 127.
; OR с самим собой значение не меняет, но флаги ставит, так что если регистр = 0, то zf = 1
    OR     BH, BH
    JZ     MAKE_FILE
    OR     CL, CL
    JZ     MAKE_FILE
    OR     CH, CH
    JNZ    CALC_DENOM  
; ---------создание файла-------------
  ; int 21, function 03Ch. Функция 03Ch для прерывания доса (21h): "Create file" - создать файл
    ; вход:
        ;  ah = 03Ch
        ;  cx = атрибуты файла (00 - обычный файл): 
        ;  бит 0 - только для чтения, бит 1 - скрытый, бит 2 - системный... 
        ;  (подробнее про функцию https://fragglet.github.io/dos-help-files/alang.hlp/x_at_L82b9.html)
        ;  ds:dx = адрес смещения имени файла, заданного в ASCIIZ, (если в названии файла нет директории, то файл создастся в текущей)
    ; выход:
        ;  ax = дескриптор файла (его идентификатор)
      ; если при выполнении возникла ошибка, то cf = 1, ax = код ошибки
MAKE_FILE:
    MOV    AH, 3CH                  ; функция 3Ch - создание файла
    XOR    CX, CX                   ; NORMAL FILENAME
    MOV    DX, OFFSET FILENAME      ; DX POINT TO FILENAME OFFSET
    INT    21H                      ; CALL DOS 
    MOV    BX, AX                   ; SAVE DESCR
    MOV    BH, MIN_VAL              ; BH <- MIN VAL (BH <- 80h) 
    MOV    CL, MIN_VAL              ;
    MOV    CH, MIN_VAL              ;
    MOV    DI, OFFSET NUMBERS + NUMS_LEN - 4       ; DI стоит на КОНЦЕ NUMBERS (на десятках для C) (без cr lf) для записи STOSW (ES:[DI] <- AX)
    STD
;-----------------------
    ; D  = 62*B*C+13*A+A^2   /   A+5*C^2
    ;   BL = DESCR  ; BH = C
    ;   CL = B      ; CH = A
CALC_DENOM:
    MOV    AL, BH                   ; AL = C
    CBW                             ; AX = C
    MOV    DX, AX                   ; DX = C
    SAL    AX, 2                    ; AX = 4C
    ADD    AX, DX                   ; AX = 5C
    IMUL   DX                       ; DX:AX = 5C^2
    OR     DX, DX                   ; dx = ?, если dx = 0, то результаат лежит в ах, в dx только знак, если не ноль, 
                                    ;         то в лежит знак + значимая часть (результать больше 65535)
    JNZ    PREP_FWRITE              ; если не ноль, то перполнение  
    MOV    BP, AX                   ; BP = 5C^2
    MOV    AL, CH                   ; AH = A
    CBW                             ; AX = A
    OR     AX, AX                   ; ПРОВЕРКА ЗНАКА AX
    JNS    A_IS_POSITIVE            ; IF AX >= 0
    NEG    AX                       ; AX = |AX|
    SUB    BP, AX                   ; BP = 5C^2 - A
    JC     NUMERATOR_CHECK          ; IF CF = 1 (E.G. 0001 - 0002 = ffff [CF = 1, SF = 1])   
    JS     PREP_FWRITE              ; IF SF = 1 (BP > 07FFF) THEN JUMP TO PREP_FWRITE
    JMP    SHORT NUMERATOR_CHECK    ; JMP TO CHECKING FILENAME 
A_IS_POSITIVE:
    ADD    BP, AX                   ; else: BP = 5C^2 + A
    JS     PREP_FWRITE              ; if sf = 1, то есть у нас результат по виду отрицательный (хотя прибавляли
                                    ;    положительное + положительное), то есть это число больше чем 7FFFh
    JC     PREP_FWRITE              ; if cf = 1, то очень большое положительное + положительное, 
                                    ;    пример: FFF0h + 11h = 1 0001h, где эта единица уходит в cf   
NUMERATOR_CHECK:
    OR     BL, BL                   ; ПРОВЕРКА ДЕСКРИПТОРА
    JNZ    INC_VARIABLES            ;          ЕСЛИ ОН НЕ НОЛЬ, ТО ИДЕМ В ИТЕРАЦИЮ ЦИКЛОВ
    JMP    SHORT NUMERATOR          ;          ИНАЧЕ СЧИТАЕМ ЧИСЛИТЕЛЬ
PREP_FWRITE:
    MOV    BP, BX                   ; BP = BX  (BH = C, BL = DESCR)
    MOV    AL, BH                   ; AL = C
    MOV    BX, CX                   ; BL = B, BH = A
    MOV    CX, 3                    ; CX = 3   (3 ЦИКЛА)
;  три итерации цикла, после каждой итерации di уменьшается на 5, число для записи находится в al, в dl знак числа
    ; 1) для c
    ; 2) для b
    ; 3) для a
FWRITE_NUMBERS:
    MOV    DX, '0+'                 ; DX = '+0'   (DX = 302Dh)
    OR     AL, AL                   ; ПРОВЕРКА ЗНАКА ЧИСЛА В AL
    JNS    POSITIVE_NUM             ; AL >= 0
    NEG    AL                       ; AL = |AL|
    MOV    DL, '-'                  ; DH = '-'
POSITIVE_NUM:                                                 ; ПРИМЕР ДЛЯ 127
    AAM                             ; ПЕРЕВОД AL В BCD-ФОРМАТ  (E.G. 127D=7FH => AX = 0c07H)
    ADD    DH, AL                   ; DH - ЕДИНИЦЫ, DL - ЗНАК  (E.G. DX = 372DH) 
    MOV    AL, AH                   ; AL = AH                  (E.G. AX = 0C0CH)
    AAM                             ; ПЕРЕВОД AL В BCD         (E.G. AX = 0102H)
    ADD    AX, 3030H                ; ПЕРЕВОД AX В ASCII       (E.G. AX = 3132H)  
    XCHG   DH, AH                   ; DL = знак, DH - сотни, AH = единицы, AL = десятки  (E.G. AX = 3732h, DX = 312DH)  
    STOSW                           ; NUMBERS =                (0000,0000,0027)  DI = DI - 2
    MOV    AX, DX                   ;                          (E.G. AX = 2D31H)
    STOSW                           ; NUMBERS =                (+127,0000,0000)  DI = DI - 4
    DEC    DI                       ;                                            DI = DI - 5
    MOV    AL, BL                   ; СЛЕДУЮЩЕЕ ЧИСЛО ДЛЯ ЗАПИСИ (B, A)
    XCHG   BL, BH                   ; ТРИ ЦИКЛА: 1) BL = B, BH = A 2) BL = A, BH = B 3) BL = B, BH = A
    LOOP   FWRITE_NUMBERS           ; ЦИКЛИМСЯ 3 РАЗА
    XCHG   BL, BH                   ; BL = A, BH = B, возращаем как было до циклов 
    ; MOV    DI, SI                   ; DI ОБРАТНО НА НАЧАЛО NUMBERS
    MOV    SI, BX                   ; СОХРАНЯЕМ BX (на самом деле CX)
; функция 40h:
    ; на вход:
        ; ah = 40h
        ; bx = дескриптор файла
        ; cx = количество байт для записи
        ; ds:dx = адрес на строку для записи
    MOV    AH, 40H                  ; WRITE TO FILENAME FUNCTION
    MOV    CX, NUMS_LEN             ; NUMBER OF BYTES TO WRITE (NUMBERS LENGTH)
    MOV    DX, OFFSET NUMBERS       ; DX = адрес смещения NUMBERS - 2
    MOV    BX, BP                   ; BL = DESCR
    XOR    BH, BH                   ; BH = 0
    INT    21H                      ; CALL DOS
    ADD    DI, CX                   ; DI = адрес конца NUMBERS - 2
    DEC    DI
    MOV    CX, SI                   ; восстанавливаем CX
    MOV    BX, BP                   ; восстанавливаем BX
INC_VARIABLES:
    CMP    BH, MAX_VAL              ; проверка на макс C
    JNE    INC_C
    CMP    CL, MAX_VAL              ; B
    JNE    INC_B
    CMP    CH, MAX_VAL              ; A
    JE     CLOSE_FILE
    INC    CH
    MOV    CL, MIN_VAL-1            ; -1 потому что дальше стоит INC CL 
INC_B:
    INC    CL
    MOV    BH, MIN_VAL-1            ; -1 потому что дальше стоит INC BH
INC_C:
    INC    BH
    JMP    CALC_DENOM  
CLOSE_FILE:
; 3Eh функция закрытия файла. 
;     На вход: ah=3Eh, в bx дескриптор файла
    MOV    AH, 3EH
    XOR    BH, BH
    INT    21H
    JMP    SHORT EXIT
NUMERATOR:
        ; 62*B*C + 13*A + A^2 = 62*B*C + A(13+A)
        ; BP IS DENOM, AX = A
        ; BL = DESCR  ; BH = C
        ; CL = B      ; CH = A
    MOV    DX, AX                   ; DX = A
    ADD    DX, 13                   ; DX = A+13
    IMUL   DX                       ; DX:AX = A(A+13)
    MOV    DI, AX                   ; DI = A(A+13)
    MOV    AL, CL                   ; AL = B
    CBW                             ; AX = B
    MOV    DX, AX                   ; DX = B
    SAL    DX, 5                    ; DX = 32*B
    SUB    DX, AX                   ; DX = 31*B
    MOV    AL, BH                   ; AL = C
    CBW                             ; AX = C
    SAL    AX, 1                    ; AX = 2*C
    IMUL   DX                       ; DX:AX = 62*B*C
    OR     DI, DI                   ; CHECK SIGN OF A(A+13)
    JNS    ADDING_POS               ; IF AX IS NOT NEGATIVE JUMP TO ADDING_POS
    ADD    AX, DI                   ; DX:AX = 62*B*C + A(13+A)
    ADC    DX, -1                   ; DX    = -1 + cf  (-1 это для знака отрицательнго числа)
    JMP    SHORT DIVIDING           ; GO TO DIV
ADDING_POS:
    ADD    AX, DI                   ; DX:AX = 62*B*C + A(13+A)
    ADC    DX, 0                    ; DX + cf 
DIVIDING:
    IDIV   BP                       ; 62*B*C + 13*A + A^2 = 62*B*C + A(13+A)
    MOV    [D], AX                  ; Сохраняем  результат
EXIT:
; 
    MOV    AH, 4CH
    INT    21H
    END    START  