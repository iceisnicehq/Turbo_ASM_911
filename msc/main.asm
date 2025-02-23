.MODEL SMALL
.386
.STACK 100H
.DATA
    COM       DB   'COM.COM', 0         ; ТУТ 0 ДЛЯ ФУНКЦИЙ, КОТОРЫЕ РАБОТАЮТ С ФАЙЛАМИ (0DH)
    RESULT    DB   'RESULT.ASM', 0      ; ТУТ 0 ДЛЯ ФУНКЦИЙ, КОТОРЫЕ РАБОТАЮТ С ФАЙЛАМИ (0DH)
    CWD_      DB   'CWD$'               ; ТУТ И ДАЛЕЕ '$' для процедуры 'print_string', она выводит всё до доллара в string и считает длину для вывода в файл
    MOV_      DB   'MOV    $'
    SAR_      DB   'SAR    $'
    COMMA     DB   ',$'
    BRACKET   DB   ']$'
    COLON     DB   ':[$'
    PLUS      DB   '+$'
    ONE       DB   '1H$'
    ERROR     DB   'COM_EXIT$'
    ALREG     DB   'AL$'
    CLREG     DB   'CL$'
    DLREG     DB   'DL$'
    BLREG     DB   'BL$'
    AHREG     DB   'AH$'
    CHREG     DB   'CH$'
    DHREG     DB   'DH$'
    BHREG     DB   'BH$'
    AXREG     DB   'AX$'
    CXREG     DB   'CX$'
    DXREG     DB   'DX$'
    BXREG     DB   'BX$'
    SPREG     DB   'SP$'
    BPREG     DB   'BP$'
    SIREG     DB   'SI$'
    DIREG     DB   'DI$'
    EAXREG    DB   'EAX$'
    ECXREG    DB   'ECX$'
    EDXREG    DB   'EDX$'
    EBXREG    DB   'EBX$'
    ESPREG    DB   'ESP$'
    EBPREG    DB   'EBP$'
    ESIREG    DB   'ESI$'
    EDIREG    DB   'EDI$'                                                               ; массив, чтобы ссылатья по индексам (с помощью REG и RM)
    REG_B     DW   ALREG,  CLREG,  DLREG,  BLREG,  AHREG,  CHREG,  DHREG,  BHREG        ; Массив адресов на строки байтовых регистров
    REG_W     DW   AXREG,  CXREG,  DXREG,  BXREG,  SPREG,  BPREG,  SIREG,  DIREG        ; Массив адресов на строки вордовых регистров
    REG_D     DW   EAXREG, ECXREG, EDXREG, EBXREG, ESPREG, EBPREG, ESIREG, EDIREG       ; Массив адресов на строки двордвых регистров
    ESSEG     DB   'ES$'
    CSSEG     DB   'CS$'
    SSSEG     DB   'SS$'
    DSSEG     DB   'DS$'
    FSSEG     DB   'FS$'
    GSSEG     DB   'GS$'
    SREGS     DW   ESSEG, CSSEG, SSSEG, DSSEG, FSSEG, GSSEG                              ; Массив сегментных регистров
    EA000     DB   'BX+SI$'
    EA001     DB   'BX+DI$'
    EA010     DB   'BP+SI$'
    EA011     DB   'BP+DI$'
    EA100    EQU   SIREG    ; здесь EQU только для понятности, по факту ниже в EA16 можно писать SIREG, DIREG и тд...
    EA101    EQU   DIREG
    EA110    EQU   BPREG
    EA111    EQU   BXREG
    EA16      DW   EA000, EA001, EA010, EA011, EA100, EA101, EA110,  EA111 ; МАССИВ БАЙТ РМ
    SCALE2    DB   '*2$'    ; МАСШТАБ ДЛЯ СИБ БАЙТА
    SCALE4    DB   '*4$'
    SCALE8    DB   '*8$'
    LOCK_     DB   'LOCK   $'
                            ; ТАБЛИЦА OPCODES, ГЛАВНАЯ ИДЕЯ В ТОМ, ЧТО МЫ ГРУЗИМ ИЗ ДАННЫХ БАЙТ И ДАЛЬШЕ ПРЫГАЕМ ОТНОСИТЕЛЬНО ЭТОГО МАССИВА НА МЕТКУ, С НОМЕРОМ ЭТОГО БАЙТА
    OPCODES   DW   26H DUP(NEXT)
              DW   S_ES, 7 DUP(NEXT), S_CS, 7 DUP(NEXT), S_SS, 7 DUP(NEXT), S_DS, 25H DUP(NEXT)
              DW   S_FS, S_GS, SIZE_PREFIX, ADDR_PREFIX, 20H DUP(NEXT),MOV_RM8_R8, MOV_RM1632_R1632
              DW   MOV_R8_RM8, MOV_R1632_RM1632, MOV_M16R1632_SREG, NEXT, MOV_SREG_RM16, 0AH DUP(NEXT) 
              DW   CWD_PRINT, 6 DUP(NEXT), MOV_AL_MOFFS8, MOV_E_AX_MOFFS1632, MOV_MOFFS8_AL, MOV_MOFFS1632_E_AX
              DW   0CH DUP(NEXT), 4 DUP (MOV_R_IMM, MOV_R_IMM, MOV_R_IMM, MOV_R_IMM)
              DW   SAR_RM8_IMM8, SAR_RM1632_IMM8, 4 DUP(NEXT), MOV_RM8_IMM8, MOV_RM1632_IMM1632, 8 DUP(NEXT) 
              DW   SAR_RM8_1, SAR_RM1632_1, SAR_RM8_CL, SAR_RM1632_CL, 1CH DUP(NEXT), LOCK_PRINT
    B_PTR     DB   'byte ptr $'
    W_PTR     DB   'word ptr $'
    D_PTR     DB   'dword ptr $'
    PTR_      DW   0        ; хранит ардес одного из PTR
    MOD_MOD         DB   0
    MOD_RM          DB   0
    MOD_REG         DB   0
    SIB_SCALE       DB   0
    SIB_INDEX       DB   0
    SIB_BASE        DB   0
    PREFIX_SEG      DW   0   ; ворд, чтобы хранить адрес сегмент оверрайда
    PREFIX_66       DB   0   ; просто флаг, чтобы знать, что 66 префикс есть
    PREFIX_67       DB   0   ; то же самое, что и 66
    IMM             DB   0   ; для того, чтобы процедура print_hex_num писала нулевой имм (но пропускала нулевой дисп)
    OPERAND_BYTE    DB   0   ; флаг на то, что операнд это байт
    OPERAND_SEG     DB   0   ; флаг на то, что операнд это сегмент
    IMM_SIZE        DB   0   ; размер имма (0 - байт, 1 - слово, 80h (для флага sf) - двойное словов)
    STRING          DB   16 DUP (?)    ; строка куда переносим данные и ее записываем в файл (запись идет поэтапно: мнема, операнд, запятая, операнд) поэтому всего 16 байт
    BIN             DB   5120 DUP (?)  ; буффер, где хранятся и откуда считываются данные из ком файла
.CODE
START:
    MOV     AX, @DATA
    MOV     DS, AX
    MOV     ES, AX
    MOV     AX, 3D00H        ; ОТКРЫВАЕМ ФАЙЛ, AH - ФУНКЦИЯ, AL - ПРАВА ДОСТУПА
    LEA     DX, COM          ; грузим офсет
    INT     21H
    JC      COM_EXIT         ; ЕСЛИ НЕТ ОШИБОК, ТО ФЛАГ СF НЕ ПОДНИМАЕТСЯ
    MOV     BX, AX           ; сохраняем дескритпор ком файла в bx
    LEA     DX, BIN
    MOV     DI, DX
    MOV     SI, DI
    MOV     CX, 5120         ; число байт для считки == размер BIN
    MOV     AH, 3FH          ; СЧИТЫВАЕМ БАЙТЫ ИЗ КОМ ФАЙЛА В BIN
    INT     21H
    ADD     DI, AX           ; AX = ЧИСЛО ПРОЧИТАННЫХ БАЙТ, DI = АДРЕС НАЧАЛА (строка 101) -> получается DI = ардес конца считанных байтов
    MOV     AH, 3EH          ; ЗАКРЫВАЕМ КОМ ФАЙЛ
    INT     21H
    MOV     AH, 3CH          ; СОЗДАЕМ ФАЙЛ-РЕЗУЛЬТАТ 
    XOR     CX, CX           ; атрибут файла 00 - обычный файл
    LEA     DX, RESULT
    INT     21H
    MOV     BP, AX           ; СОХРАНЯЕМ ДЕСКРИПТОР РЕЗУЛЬТАТИВНОГО файла в BP
    LEA     DX, STRING
NEXT:                        ; метка на которую прыгаем для считки
    CMP     SI, DI           ; ЕСЛИ SI ВЫШЕЛ ЗА ПРЕДЕЛЫ BIN (DI), ТО ВЫХОДИМ
    JNBE    EXIT
    LODSB                    ; грузим байт из BIN
    MOVZX   BX, AL           ; расширяем байт AL в BX
    SHL     BX, 1            ; умножаем его на 2 (потому что он байт, а адреса это слова)
    JMP     OPCODES[BX]      ; прыгаем по байту, относительно начала массива OPCODES
    ; ВСЕ СЕГМЕНТЫ, ПРОСТО СОХРАНЯЕМ ВСТРЕТИВШИЙСЯ СЕГМЕНТ
S_ES:
    LEA     AX, ESSEG
    JMP     SEG_ADDRESS
S_CS:
    LEA     AX, CSSEG
    JMP     SEG_ADDRESS
S_SS:
    LEA     AX, SSSEG
    JMP     SEG_ADDRESS
S_DS:
    LEA     AX, DSSEG
    JMP     SEG_ADDRESS
S_FS:
    LEA     AX, FSSEG
    JMP     SEG_ADDRESS
S_GS:
    LEA     AX, GSSEG
SEG_ADDRESS:
    MOV     PREFIX_SEG, AX
    JMP     NEXT
SIZE_PREFIX:
    MOV     PREFIX_66, 1
    JMP     NEXT
ADDR_PREFIX:
    MOV     PREFIX_67, 1
    JMP     NEXT

MOV_RM8_R8:
    MOV     OPERAND_BYTE, 1
MOV_RM1632_R1632:
    JMP     MODRM_PRINT_MOV_RM_REG
MOV_R8_RM8:
    MOV     OPERAND_BYTE, 1
MOV_R1632_RM1632:
    JMP     MODRM_PRINT_MOV_REG_RM
MOV_M16R1632_SREG:
    MOV     OPERAND_SEG, 1
    JMP     MODRM_PRINT_MOV_RM_REG
MOV_SREG_RM16:
    MOV     OPERAND_SEG, 1
    JMP     MODRM_PRINT_MOV_REG_RM
CWD_PRINT:                              ; CWD выводим сразу
    LEA     AX, CWD_
    CALL    PRINT_STRING
    JMP     PRINT_NEW_LINE
MOV_AL_MOFFS8:
    MOV     OPERAND_BYTE, 1
MOV_E_AX_MOFFS1632:
    CALL    SET_MOFFS
    JMP     PRINT_MOV_REG_RM
MOV_MOFFS8_AL:
    MOV     OPERAND_BYTE, 1
MOV_MOFFS1632_E_AX:
    CALL    SET_MOFFS
    JMP     PRINT_MOV_RM_REG
MOV_R_IMM:                                  ; у мува от B0 до BF в первых 4 битах сидит операнд от AL до DI 
    MOV     OPERAND_BYTE, 1                 ; сначала считаем, что там байт (AL, CL, DL...)
    AND     AL, 0FH                         ; отделяем первые 4 бита из опкода (B0-BF -> 00-0F)
    CMP     AL, 8                           ; смотрим, на их значение, 0-7 ->A L-BH, 8-F -> AX-DI
    JB      OPERAND_IS_IMM8                 ; соответвенно, если меньше 8, то это байт
    SUB     AL, 8                           ; если больше 7, то это ворд/дворд
    OR      PREFIX_66, 0                    ; проверяем дворд
    JZ      IMM_IS_16BIT                    
    OR      IMM_SIZE, 80H                   ; если дворд, то размер имма тоже дворд
IMM_IS_16BIT:
    MOV     IMM_SIZE, 1                     ; если не дворд, то ворд
    MOV     OPERAND_BYTE, 0                 ; и уже точно не байт
OPERAND_IS_IMM8:
    SHL     AL, 1                           ; теперь AL = REG, умножаем на два, потому что адреса это слова
    MOV     MOD_REG, AL                     ; и сохраняем, чтобы потом по массивам регистров, получить нужный операнд
    CALL    PRINT_MOV                       ; выводим мув
    CALL    PRINT_REG                       ; пишем рег (операнд 1)
PRINT_COMMA_IMM:
    CALL    PRINT_COMMA                     ; пишем запятую
    XOR     EAX, EAX                        ; подготовка для имма, здесь EAX обязательно должен быть предварительно занулён, этого требует процедура PRINT_HEX_NUM
    MOV     IMM, 1                          ; флаг на имм
    OR      IMM_SIZE, 0                     ; и дальше идут проверки размера
    JNS     IMM_IS_NOT_DWORD                ; тут JNS, так удобно, поэтому делали 80h:     OR      IMM_SIZE, 80H (IMM_SIZE < 0 = дворд, = 0 это байт, >0 но !=0 это ворд)
    LODSD
    JMP     IMM_OUT
IMM_IS_NOT_DWORD:
    JNZ     IMM_IS_WORD
    LODSB
    JMP     IMM_OUT
IMM_IS_WORD:
    LODSW
IMM_OUT:
    CALL    PRINT_HEX_NUM                   ; выводим имм 
    JMP     PRINT_NEW_LINE

SAR_RM8_IMM8:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
SAR_RM1632_IMM8:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    XOR     EAX, EAX
    LODSB
    CALL    PRINT_HEX_NUM
    JMP     PRINT_NEW_LINE

MOV_RM8_IMM8:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
MOV_RM1632_IMM1632:
    CALL    PRINT_MOV
    CALL    MOD_REG_RM
    OR      OPERAND_BYTE, 0
    JNZ     ITS_BYTE_WORD_IMM
    OR      IMM_SIZE, 1
    MOV     PTR_, OFFSET W_PTR
    OR      PREFIX_66, 0
    JZ      ITS_BYTE_WORD_IMM
    MOV     PTR_, OFFSET D_PTR
    OR      IMM_SIZE, 80H
ITS_BYTE_WORD_IMM:
    CALL    PRINT_RM
    JMP     PRINT_COMMA_IMM
SAR_RM8_1:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
SAR_RM1632_1:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    LEA     AX, ONE
    CALL    PRINT_STRING
    JMP     PRINT_NEW_LINE

SAR_RM8_CL:
    MOV     OPERAND_BYTE, 1
    MOV     PTR_, OFFSET B_PTR
SAR_RM1632_CL:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    LEA     AX, CLREG
    CALL    PRINT_STRING
    JMP     PRINT_NEW_LINE

LOCK_PRINT:                 ; LOCK ВЫВОДИМ СРАЗУ
    LEA     AX, LOCK_
    CALL    PRINT_STRING
    JMP     NEXT

COM_EXIT:
    LEA     DX, ERROR               ; сообщение об ошибке с комом, полезно, если вдруг что-то не так будет на защите (например файл переименуют, как у всех было)
    MOV     AH, 9                   ;      ТОГДА СРАЗУ БУДЕТ ПОНЯТНО, ЧТО ОШИБКА С ОТКРЫТИЕМ КОММА
    INT     21H
EXIT:
    MOV     AH, 3EH                 ; ЗАКРЫВАЕМ ФАЙЛ РЕЗУЛЬТАТ
    MOV     BX, BP                  
    INT     21H
    MOV     AH, 4CH
    INT     21H

    ; куча вызовов и всё для мува
MODRM_PRINT_MOV_RM_REG:
    CALL    MOD_REG_RM          ;  получаем мод рм рег
PRINT_MOV_RM_REG:
        ; выводим команду типа MOV RM, REG
    CALL    PRINT_MOV
    CALL    PRINT_RM
    CALL    PRINT_COMMA
    CALL    PRINT_REG
    JMP     PRINT_NEW_LINE
MODRM_PRINT_MOV_REG_RM:
    CALL    MOD_REG_RM          ;  получаем мод рм рег
PRINT_MOV_REG_RM:
        ; выводим команду типа MOV REG, RM
    CALL    PRINT_MOV
    CALL    PRINT_REG
    CALL    PRINT_COMMA
    CALL    PRINT_RM
PRINT_NEW_LINE:                       ; метка, которая принтит в файл перенос строки, и ресетит все переменные
    PUSH    SI DI
    MOV     DI, DX
    MOV     AX, 0A0DH
    STOSW
    MOV     CX, 2
    MOV     AH, 40H
    MOV     BX, BP
    INT     21H
    REP     STOSB
    MOV     MOD_MOD, 0
    MOV     MOD_REG, 0
    MOV     MOD_RM, 0
    MOV     PREFIX_SEG, 0
    MOV     PREFIX_66, 0
    MOV     PREFIX_67, 0
    MOV     PTR_, 0
    MOV     IMM, 0
    MOV     OPERAND_BYTE, 0
    MOV     IMM_SIZE, 0
    POP     DI SI
    JMP     NEXT

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА SET_PTR_PRINT_SAR_RM_COMMA
; СМОРТИТ НА ТИП ОПЕРАНДА И ПОДГОТВАЛИВАЕМ TYPE PTR
; ВЫВОДИТ В ФАЙЛ СТРОКУ "SAR ____ PTR    RM,"
;--------------------------------------------------------------------------------------
SET_PTR_PRINT_SAR_RM_COMMA PROC
    LEA     AX, SAR_
    CALL    PRINT_STRING        ; ВЫВОДИМ SAR
    CALL    MOD_REG_RM      ; ПОЛУЧАЕМ МОД РЕГ РМ
    OR      OPERAND_BYTE, 0     ; ПРОВЕРЯЕМ РАЗМЕР ОПЕРАНДА И СТАВИМ НУЖНЫЙ ПТР
    JNZ     RET_SAR
    MOV     PTR_, OFFSET W_PTR
    OR      PREFIX_66, 0
    JZ      RET_SAR
    MOV     PTR_, OFFSET D_PTR
RET_SAR:
    CALL    PRINT_RM       ; ВЫВОДИМ РМ И ЗАПЯТУЮ
    CALL    PRINT_COMMA
    MOV     IMM, 1
    RET
ENDP

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_STRING
; ВЫВОДИТ В ФАЙЛ СТРОКУ, СТРОКА ЗАДАЕТСЯ В ФОРМАТЕ ASCII$. АДРЕС СТРОКИ ПОДАЕТСЯ В АХ
;--------------------------------------------------------------------------------------
PRINT_STRING PROC
    PUSH    SI BX DI
    MOV     DI, DX
    XOR     CX, CX
    MOV     SI, AX
PRINTING:
    MOVSB
    INC     CX                  ; В СХ СЧИТАЕМ СИМВОЛЫ ДЛЯ ВЫВОДА
    CMP     BYTE PTR [SI], '$'
    JNE     PRINTING
    MOV     AH, 40H
    MOV     BX, BP
    INT     21H
    POP     DI BX SI
    RET
ENDP

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА MOD_REG_RM
; НА ВЫХОД: МОД, РЕГ И РМ
; ОПИСАНИЕ: ГРУЗИТ БАЙТ ИЗ BIN ПО АДРЕСУ [SI], ЗАТЕМ РАЗБИВАЕТ НА МОД, РЕГ, РМ
;           ДЛЯ РЕГ И РМ СМЕЩЕНЕНИЕ SHR 2 И SHL 1 ДЛЯ ДВИЖЕНИЯ ПО МАССИВАМ РЕГ И РМ,
;           (ПОТОМУ ЧТО МАССИВ СОСТОИТ ИЗ СЛОВ, А НЕ ИЗ БАЙТОВ)
;--------------------------------------------------------------------------------------
MOD_REG_RM PROC
    LODSB
    MOV     AH, AL
    AND     AH, 11000000B
    MOV     MOD_MOD, AH
    MOV     AH, AL
    SHR     AH, 2
    AND     AH, 1110B
    MOV     MOD_REG, AH
    AND     AL, 111B
    SHL     AL, 1
    MOV     MOD_RM, AL
    RET
ENDP
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_REG
; ОПИСАНИЕ: ПИШЕМ ОПЕРАНД ПОЛЯ РЕГ, СНАЧАЛА ПРОВЕРЯТ ЯВЛЯЕТСЯ ЛИ ОПЕРАНД СЕГМЕНТНЫМ РЕГИСТРО
; ЕСЛИ ДА, ТО ВЫВОДИТ ЕГО И ОБНУЛЯЕТ ФЛАГ. ЕСЛИ НЕТ, ТО СМОТРИТ ЯВЛЯЕСТЯ ЛИ ОПЕРАНД РЕГ БАЙТОМ,
; СЛОВОМ ИЛИ ДВОЙНЫМ СЛОВОМ, ЗАТЕМ ВЫВОДИТ ЕГО В ФАЙЛ
;--------------------------------------------------------------------------------------
PRINT_REG PROC
    PUSH    BX SI
    OR      OPERAND_SEG, 0      ; ПРОВЕРЯЕМ СЕГМЕНТНЫЙ РЕГИСТР
    JZ      NOT_SEG_OPER
    MOV     OPERAND_SEG, 0      ; ЕСЛИ ОПЕРАНД - СЕГЕМЕНТ, ТО СРАЗУ ОБНУЛЯЕМ ФЛАГ И ВЫВОДИМ ОПЕРАНД
    MOVZX   BX, MOD_REG
    MOV     AX, SREGS[BX]
    CALL    PRINT_STRING
    POP     SI BX
    RET
NOT_SEG_OPER:
    LEA     BX, REG_B
    OR      OPERAND_BYTE, 0
    JNZ     GO_PRINT
    LEA     BX, REG_W
    OR      PREFIX_66, 0
    JZ      GO_PRINT
    LEA     BX, REG_D
GO_PRINT:
    MOVZX   SI, MOD_REG
    MOV     AX, [BX+SI]
    CALL    PRINT_STRING
    POP     SI BX
    RET
ENDP

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_RM
; ОПИСАНИЕ: ПИШЕМ РЕГИСТР ИЗ ПОЛЯ РМ, ЕСЛИ МОД=11, ИНАЧЕ ПИШЕМ TYPE PTR(ЕСЛИ ОН ЕСТЬ) СЕГМЕНТ И ОПЕРАНД РМ
;--------------------------------------------------------------------------------------
PRINT_RM  PROC
    CMP     MOD_MOD, 11000000B      ; ЕСЛИ МОД=11 ПИШЕМ РЕГИСТР ПО ИНДЕКСУ ИЗ ПОЛЯ РМ
    JNE     NOT11MOD
    MOV     AL, MOD_RM
    MOV     BH, MOD_REG
    MOV     BL, AL
    MOV     MOD_REG, AL
    CALL    PRINT_REG               ; ПОМЕНЯЛИ МЕСТАМИ РМ И РЕГ, ВЫЗВАЛИ ПРОЦЕДУРУ И ВЕРНУЛИ ВСЁ ОБРАТНО
    MOV     MOD_REG, BH 
    MOV     MOD_RM, BL
    JMP     RET_REG
NOT11MOD:   ; ЕСЛИ МОД НЕ 11
    OR      PTR_, 0                 ; СМОТРИМ ЕСТЬ ЛИ ПТР (ОН НУЖЕН КОГДА В ОПЕРАНДАХ НЕТ РЕГИСТРА, ЧТОБЫ УКАЗАТЬ ЯВНЫЙ РАЗМЕР)
    JZ      NO_TYPE_OVR
    MOV     AX, PTR_                ; ЕСЛИ ЕСТЬ, ТО ВЫВОДИМ ЕГО В ФАЙЛ
    CALL    PRINT_STRING
NO_TYPE_OVR:
    MOV     AX, PREFIX_SEG          ; ПИШЕМ СЕГМЕНТ
    OR      AX, AX
    JNZ     PRINT_SEG_STR           ; ЕСЛИ SEG OVR НЕ НОЛЬ, ТО ПИШЕМ ЭТОТ СЕГМЕНТ
    MOV     BL, MOD_RM
    LEA     AX, DSSEG               ; ИЗНАЧАЛЬНО СЧИТАЕМ ЧТО DS
    OR      PREFIX_67, 0
    JNZ     MODRM32                 ; ЕСЛИ НЕТ 67 ПРЕФИКСА, ТО РАБОТАЕМ С МОДРМ16
    CMP     BL, 0100B               ; ДЛЯ BP+SI НУЖЕН SS 
    JE      PRINT_SS
    CMP     BL, 0110B               ; ДЛЯ BP+DI НУЖЕН SS 
    JE      PRINT_SS
    CMP     BL, 1100B               ; ЕСЛИ РМ = 1100 (BP ИЛИ ДИСП16)
    JNE     PRINT_SEG_STR           ; ЕСЛИ НЕ РАВЕН, ТО ПИШЕМ ДЕФОЛТНЫЙ СЕГМЕНТ
    OR      MOD_MOD, 0              ; ЕСЛИ РАВЕН, ТО ПРОВЕРЯЕМ МОД
    JNZ     PRINT_SS                ; ЕСЛИ МОД НЕ НОЛЬ, ТО ЭТО [BP+DISP8/16], ПИШЕМ SS
    JMP     PRINT_SEG_STR           ; ЕСЛИ НОЛЬ, ТО ЭТО DISP16, ПИШЕМ DS
MODRM32:
    CMP     BL, 1010B               ; EBP
    JNE     PRINT_SEG_STR       
    OR      MOD_MOD, 0              ; ОПЯТЬ ПРОВЕРЯЕМ МОД, ЕСЛИ НЕ НОЛЬ, ТО ЭТО [EBP+DISP8/32], ПИШЕМ SS
    JZ      PRINT_SEG_STR           ; ЕСЛИ НОЛЬ, ТО DS
PRINT_SS:
    LEA     AX, SSSEG               ; ПИШЕМ SS
    JMP     PRINT_SEG_STR
PRINT_SEG_STR:
    CALL    PRINT_STRING            ; ПИШЕМ СЕГМЕНТ
    LEA     AX, COLON               ; ЗАТЕМ ВЫВОДИМ ":["  
    CALL    PRINT_STRING
    OR      PREFIX_67, 0
    JZ      BIT16_RM                ; ЕСЛИ 67 ПРЕФИКСА НЕТ, ТО ИДЕМ НА 16 БИТНЫЙ РМ
        CMP     MOD_RM, 1000B       ; ПРОВЕРЯЕМ СИБ БАЙТ
        JNE     NO_SIB_BASEYTE             
            LODSB                   ; ПОЛУЧАЕМ МАСШТАБ, ИНДЕКС, БАЗУ, ЛОГИКА ТА ЖЕ, ЧТО И В GET_MOD_RM_REG
            MOV     AH, AL                
            AND     AH, 11000000B
            MOV     SIB_SCALE, AH
            MOV     AH, AL
            SHR     AH, 2
            AND     AH, 1110B
            MOV     SIB_INDEX, AH
            AND     AL, 111B
            SHL     AL, 1
            MOV     SIB_BASE, AL
            MOVZX   BX, SIB_BASE
            MOV     AX, REG_D[BX]        ; ПИШЕМ БАЗУ В ФАЙЛ
            CALL    PRINT_STRING
            CMP     SIB_BASE, 1010B      ; ПРОВЕРЯЕМ БАЗУ 101 (EBP)
            JNE     NO_BASE_101
            OR      MOD_MOD, 0           ; ЕСЛИ БАЗА 101, И МОД=0, ТО БАЗА=ДИСП32, И РЕГИСТРА БАЗЫ НЕТ
            JNZ     NO_BASE_101          ; В ЭТОМ СЛУЧАЕ, ПРИ BASE=101 И МОД=0, НАДО...
            PUSH    DX
            MOV     AH, 42H              ;      ПЕРЕДВИНУТЬ УКАЗАТЕЛЬ В ФАЙЛЕ, ЧТОБЫ НАПЕЧАТАТЬ ПОВЕРХ ВЫВЕДЕННОЙ БАЗЫ (EBP)
            MOV     AL, 1                ; METHOD: 1 = ТЕКУЩАЯ ПОЗИЦИЯ КУРСОВА (ДЛЯ ФУНКЦИИ 42H)
            MOV     BX, BP               ; ДЕСКРИПТОР ФАЙЛА
            MOV     CX, -1               ; УКАЗАТЕЛЬ В ФАЙЛЕ ХРАНИТСЯ В CX:DX, НАМ НУЖНО УЙТИ НАЗАД НА 3, ОТНОСИТЕЛЬНО ТЕКУЩЕГО ПОЛОЖЕНИЯ, ПОЭТОМУ ВЕРХНЯЯ ЧАСТЬ 0FFFFH (ТОЛЬКО ЗНАК)
            MOV     DX, -3               ; В НИЖНЕЙ ЧАСТИ -3, ТО ЕСТЬ ДВИГАЕМ УКАЗАТЕЛЬ НАЗАД НА 3
            INT     21H
            POP     DX
            JMP     INDEX                ; ПИШЕМ ИНДЕКС
        NO_BASE_101:
            CMP     SIB_INDEX, 1000B        ; ПРОВЕРЯЕМ ИНДЕКС 100, ТО ЕСТЬ NONE
            JE      NO_SCALE                ; ЕСЛИ ИНДЕКС NONE, ТО НЕ ПИШЕМ ИНДЕКС
            LEA     AX, PLUS                ; ИНАЧЕ ПИШЕМ "+" И ИНДЕКС
            CALL    PRINT_STRING
        INDEX:
            MOVZX   BX, SIB_INDEX           ; ЗАПИСЬ ИНДЕКСА
            MOV     AX, REG_D[BX]
            CALL    PRINT_STRING            ; ВЫВОДИМ ИНДЕКС
            MOV     BL, SIB_SCALE           ; ДАЛЬШЕ ПИШЕМ МАСШТАБ
            OR      BL, BL                  ; ЕСЛИ ОН 0, ТО ПРОПУСКАЕМ ЕГО
            JZ      NO_SCALE
            LEA     AX, SCALE4
            CMP     SIB_SCALE, 1000000B     ; ДАЛЬШЕ ПРОВЕРЯЕМ *2 *4 *8 И ВЫВОДИМ
            JE      PRINT_SCALE
            JB      SCALETWO
            LEA     AX, SCALE8
            JMP     PRINT_SCALE
        SCALETWO:      
            LEA     AX, SCALE2
        PRINT_SCALE:
            CALL    PRINT_STRING
        NO_SCALE:
            CMP     SIB_BASE, 1010B          ; ПРОВЕРЯЕМ БАЗУ 101 (EBP)
            JNE     CHECK_DISP_8_32          ; ЕСЛИ БАЗА НЕ 101, ТО ПРОВЕЯРЕМ ДИСП8/32
            OR      MOD_MOD, 0               ; ЕСЛИ БАЗА 101 И МОД=0, ТО ТОГДА БАЗА ЭТО ДИСП32
            JZ      DISP32
            JMP     CHECK_DISP_8_32          ; ИНАЧЕ ДИСП8/32 (ПОТОМУ ЧТО МОД НЕ 00)
    NO_SIB_BASEYTE:    ; ЕСЛИ НЕТ СИБ БАЙТА
        CMP     MOD_RM, 1010B                ; ПРОВЕРЯЕМ РМ101 (EBP)
        JNE     PRINT_RM32                   ; ЕСЛИ НЕ 101, ТО ПИШЕМ РМ
        OR      MOD_MOD, 0                   ; ЕСЛИ РМ=101 И МОД=0, ТО ТОГДА ТАМ ДИСП32
        JNZ     PRINT_RM32
        MOV     IMM, 1                       ; ГОТОВИМСЯ ЕГО ПИСАТЬ, ТАК КАК ОН ТАМ ОДИН, ТО МЫ НЕ ПИШЕМ ПЕРЕД НИМ "+"
    DISP32:
        LODSD
        CALL    PRINT_HEX_NUM
        JMP     RETURN
    PRINT_RM32:
        MOVZX   BX, MOD_RM
        MOV     AX, REG_D[BX]                ; ВЫВОДИМ РМ ДВИГАЯСЬ ПО МАССИВУ
        CALL    PRINT_STRING
        OR      MOD_MOD, 0                   ; ЕСЛИ МОД0, ТО ВЫХОДИМ, ЕСЛИ НЕТ, ТО ИДЕМ ПРОВЕРЯТЬ ДИСП8/32
        JZ      RETURN
    CHECK_DISP_8_32:
        CMP     MOD_MOD, 1000000B
        JA      DISP32                       ; ЕСЛИ БОЛЬШЕ 01, ТО ЭТО ДИСП 32
        JB      RETURN                       ; ЕСЛИ МОД МЕНЬШЕ 01, ТО ЭТО БЕЗ ДИСПА (ТО ЕСТЬ МОД=00)
        XOR     EAX, EAX                     ; ИНАЧЕ МОД=01, ТО ЕСТЬ ДИСП8
        LODSB
        CALL    PRINT_HEX_NUM
        JMP     RETURN
BIT16_RM:
    OR      MOD_MOD, 0                       ; В 16 БИТАХ ПЕРВЫМ ДЕЛОМ СМОТРИМ НА МОД00 ДИСП16
    JNZ     NOT_00_MOD_16
    CMP     MOD_RM, 1100B                    ;  ДИСП16
    JNE     NOT_00_MOD_16
    XOR     EAX, EAX                         ; ЕСЛИ МОД00 И РМ110, ТО ЭТО ДИСП16, ПИШЕМ ЕГО И ВЫХОДИМ
    LODSW
    MOV     IMM, 1
    CALL    PRINT_HEX_NUM
    JMP     RETURN
NOT_00_MOD_16:                               ; ЕСЛИ МОД НЕ 00, ТО ЭТО [РЕГИСТР+ДИСП8/16]
    MOVZX   BX, MOD_RM
    MOV     AX, EA16[BX]
    CALL    PRINT_STRING                     ; МОЖНО СРАЗУ ВЫВЕСТИ НАЧАЛО РМ, А ДАЛЬШЕ СМОТРИМ ДИСП
    OR      MOD_MOD, 0                       ; ЕСЛИ МОД 00, ТО ДИСПА НЕТУ
    JZ      RETURN
    XOR     EAX, EAX                         ; ИНАЧЕ ГОТОВИМСЯ ЕГО ПИСАТЬ
    CMP     MOD_MOD, 1000000B                ; ЕСЛИ МОД 01, ТО ПИШЕМ БАЙТОВЫЙ ДИСП, ИНАЧЕ ВОДРОДОВЫЙ ДИСП
    JNE     NOT_01_MOD_16
    LODSB
    JMP     PRINT_DISP_BYTE_WORD
NOT_01_MOD_16:
    LODSW
PRINT_DISP_BYTE_WORD:
    CALL    PRINT_HEX_NUM
RETURN:
    LEA     AX, BRACKET
    CALL    PRINT_STRING
RET_REG:
    RET
ENDP

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА SET_MOFFS
; ОПИСАНИЕ: СТАВИТ НУЖНОЕ ЗНАЧЕНИЕ РМ ДЛЯ ОПЕРАНДА MOFFS16/32, ТАК КАК ОН ПРЕДСТАВЛЯЕТ
;   СОБОЙ ДИСП16/32 
;--------------------------------------------------------------------------------------
SET_MOFFS PROC
    MOV     MOD_RM, 1100B
    OR      PREFIX_67, 0
    JZ      NO_MOFFS32
    MOV     MOD_RM, 1010B
NO_MOFFS32:
    RET
ENDP

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_COMMA
; ОПИСАНИЕ: ПИШЕТ ЗАПЯТУЮ В ФАЙЛ
;--------------------------------------------------------------------------------------
PRINT_COMMA PROC
    LEA     AX, COMMA
    CALL    PRINT_STRING
    RET
ENDP
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_MOV
; ОПИСАНИЕ: ПИШЕТ "MOV    " В ФАЙЛ
;--------------------------------------------------------------------------------------
PRINT_MOV PROC
    LEA     AX, MOV_
    CALL    PRINT_STRING
    ret
ENDP 

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_HEX_NUM
; НА ВХОД:  EAX = ЧИСЛО ДЛЯ ЗАПИСИ, ВСЕ ОСТАЛЬНЫЕ БИТЫ EAX ОБЯЗАТЕЛЬНО РАВНЫ НУЛЮ
; ОПИСАНИЕ: ЗАПИСЫВАЕТ В ФАЙЛ ASCII ЧИСЛО ИЗ EAX
;--------------------------------------------------------------------------------------
PRINT_HEX_NUM PROC
    PUSH    BX DI
    MOV     DI, DX
    CMP     IMM, 1              ; ПРОВЕРКА НА ИММ
    JE      CHECK_ZERO
    OR      EAX, EAX            ; ЕСЛИ ЭТО НЕ ИММ, ТО ЕСТЬ ДИСП, ТО ПРОВЕРЯЕМ НУЛЕВОЕ СМЕЩЕНИЕ
    JZ      END_HEX             ; ЕСЛИ СМЕЩЕНИЕ = 0, ТО ВЫХОДИМ (ЭТО ДЛЯ BP И EBP)
    MOV     BYTE PTR [DI], '+'  ; ЕСЛИ ДИСП НЕ НОЛЬ, ТО ПИШЕМ ПЛЮС, УВЕЛИЧИВАЕМ DI
    INC     DI                  ; ЗДЕСЬ ПИШЕМ НЕ ЧЕРЕЗ AL, ПОТОМУ ЧТО ТАМ ЧИСЛО
CHECK_ZERO:
    OR      EAX, EAX            ; ПРОВЕРКА НУЛЕВОГО ИММ
    JNZ     NON_ZERO_IMM
    MOV     AL, '0'             ; ЕСЛИ IMM НОЛЬ ПИШЕМ 0 В БУФФЕР И ВЫХОДИМ
    STOSB
    JMP     PUT_HEX
NON_ZERO_IMM:
    MOV     EBX, EAX            ; ЧИСЛО ДЛЯ ЗАПИСИ В EBX
    MOV     CL, 8               ; ЧИСЛО БАЙТ В EAX, ДВОРД=8 БАЙТ
    JMP     TEST_FIRST
DELETING_ZEROS:
    DEC     CL                  ; УМЕНЬШАЕМ ЧИСЛО БАЙТ ДЛЯ ЗАПИСИ
    ROL     EBX, 4              ; УБИРАЕМ НЕНУЖНЫЕ НУЛИ СПЕРЕДИ
TEST_FIRST:
    TEST    EBX, 0F0000000H     ; ЕСЛИ РЕЗУЛЬТАТ 0, ТО СПЕРЕДИ ЧИСЛА НЕЗНАЧАЩИЕ НУЛИ, УБИРАЕМ ИХ
    JZ      DELETING_ZEROS
    XOR     AL, AL              ; ДАЛЬШЕ ЗАНУЛЯЕМ AL
    SHLD    EAX, EBX, 4         ; ДВИГАЕМ 4 БИТА ДЛЯ ЗАПИСИ В EAX
    CMP     AL, 9               ; ПРОВЕРЯЕМ, ЧТО ЭТИ 4 БИТА - НЕ БУКВА
    JNA     NOT_A_LETTER
    MOV     AL, '0'             ; ЕСЛИ БУКВА, ТО ПИШЕМ 0 СПЕРЕДИ
    STOSB
NOT_A_LETTER:
    XOR     AL, AL              ; ОБНУЛЯЕМ AL 
HEX_TO_ASCII:
    SHLD    EAX, EBX, 4         ; ДВИГАЕМ ПО 4 БИТА В EAX И ЗАПИСЫВАЕМ В БУФФЕР В ASCII ФОРМАТЕ
    SHL     EBX, 4              ; ПАРАЛЛЕЛЬНО УМЕНЬШАЕМ EAX
    CMP     AL, 9               ; ПРОВЕРКА НА БУКВУ
    JNA     DIGIT
    ADD     AL, 7               ; ДОП СЛАГАЕМОЕ ДЛЯ БУКВ
DIGIT: 
    ADD     AL, 30H             ; ДЛЯ ЧИСЕЛ
    STOSB                       ; СОХРАНЯЕМ
    XOR     AL, AL              ; ЗАНУЛЯЕМ ТАК КАК AL ЭТО БАЙТ, А НАМ НУЖНО ТОЛЬКО 4 БИТА
    LOOP    HEX_TO_ASCII        ; ЦИКЛИМСЯ ПО ВСЕМ ЧИСЛАМ
PUT_HEX:
    MOV     AL, 'H'             ; СОХРАНЯЕМ 'H'
    STOSB
    MOV     CX, DI              ; ЗАПИСЫВАЕМ ПОЛУЧЕННОЕ ЧИСЛО В ФАЙЛ
    SUB     CX, DX
    MOV     AH, 40H
    MOV     BX, BP
    INT     21H
END_HEX:
    POP     DI BX
    RET
ENDP
    END     START