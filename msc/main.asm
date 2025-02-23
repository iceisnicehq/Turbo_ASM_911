.MODEL SMALL
.386
.STACK 100H
.DATA
COM       DB    'COM.COM', 0 ; ТУТ 0 ДЛЯ ФУНКЦИЙ, КОТОРЫЕ РАБОТАЮТ С ФАЙЛАМИ (0DH)
RESULT    DB    'RESULT.ASM', 0
CWD_      DB    'CWD$' ; ТУТ И ДАЛЕЕ НОЛЬ ДЛЯ ПРОЦЕДУРЫ GET_STR_LEN (СЧИТАЕТ ДЛИНУ СТРОКИ ДО НУЛЯ)
MOV_      DB    'MOV    $'
SAR_      DB    'SAR    $'
COMMA     DB    ',$'
BRACKET   DB    ']$'
COLON     DB    ':[$'
PLUS      DB    '+$'
ONE       DB    '1H$'
ERROR     DB    'COM_ERROR', 0DH, 0AH, '$'
ALREG     DB    'AL$'
CLREG     DB    'CL$'
DLREG     DB    'DL$'
BLREG     DB    'BL$'
AHREG     DB    'AH$'
CHREG     DB    'CH$'
DHREG     DB    'DH$'
BHREG     DB    'BH$'
AXREG     DB    'AX$'
CXREG     DB    'CX$'
DXREG     DB    'DX$'
BXREG     DB    'BX$'
SPREG     DB    'SP$'
BPREG     DB    'BP$'
SIREG     DB    'SI$'
DIREG     DB    'DI$'
EAXREG    DB    'EAX$'
ECXREG    DB    'ECX$'
EDXREG    DB    'EDX$'
EBXREG    DB    'EBX$'
ESPREG    DB    'ESP$'
EBPREG    DB    'EBP$'
ESIREG    DB    'ESI$'
EDIREG    DB    'EDI$'
REGS8     DW    ALREG, CLREG, DLREG, BLREG, AHREG, CHREG, DHREG, BHREG ; БАЙТОВЫЕ РЕГИ
REGS16    DW    AXREG, CXREG, DXREG, BXREG, SPREG, BPREG, SIREG, DIREG ; СЛОВА РЕГИ
REGS32    DW    EAXREG, ECXREG, EDXREG, EBXREG, ESPREG, EBPREG, ESIREG, EDIREG ; ДВОЙНЫЕ СЛОВА РЕГИ
SCALE2    DB    '*2$'
SCALE4    DB    '*4$'
SCALE8    DB    '*8$'
BYTE_PTR     DB    'byte ptr $'
DWORD_PTR    DB    'dword ptr $'
WORD_PTR     DB    'word ptr $'
LOCK_STR     DB    'LOCK    $'
EA000        DB    'BX+SI$'
EA001        DB    'BX+DI$'
EA010        DB    'BP+SI$'
EA011        DB    'BP+DI$'
EA100        EQU    SIREG
EA101        EQU    DIREG
EA110        EQU    BPREG
EA111        EQU    BXREG
EA16         DW    EA000, EA001, EA010, EA011, EA100, EA101, EA110,  EA111 ; БАЙТ РМ
SEG_RM16     DW    DS_SEG, DS_SEG, SS_SEG, SS_SEG, DS_SEG, DS_SEG, DS_SEG, DS_SEG ; ДЕФОЛТНЫЕ СЕГМЕНТЫ ДЛЯ ПАМЯТИ В РМ
ES_SEG    DB    'ES$'
CS_SEG    DB    'CS$'
SS_SEG    DB    'SS$'
DS_SEG    DB    'DS$'
FS_SEG    DB    'FS$'
GS_SEG    DB    'GS$'
SREGS     DW    ES_SEG, CS_SEG, SS_SEG, DS_SEG, FS_SEG, GS_SEG

OPCODES        DW    26H DUP(NEXT_OPCODE)
               DW    S_ES, 7 DUP(NEXT_OPCODE)
               DW    S_CS, 7 DUP(NEXT_OPCODE) 
               DW    S_SS, 7 DUP(NEXT_OPCODE)
               DW    S_DS, 25H DUP(NEXT_OPCODE)
               DW    S_FS, S_GS, SIZE_PREFIX, ADDR_PREFIX, 20H DUP(NEXT_OPCODE)
               DW    MOV_RM8_R8, MOV_RM1632_R1632 
               DW    MOV_R8_RM8, MOV_R1632_RM1632
               DW    MOV_M16R1632_SREG, NEXT_OPCODE, MOV_SREG_RM16, 0AH DUP(NEXT_OPCODE)
               DW    CWD_PRINT, 6 DUP(NEXT_OPCODE)
               DW    MOV_AL_MOFFS8, MOV_E_AX_MOFFS1632, MOV_MOFFS8_AL, MOV_MOFFS1632_E_AX, 0CH DUP(NEXT_OPCODE) 
               DW    4 DUP (MOV_R_IMM, MOV_R_IMM, MOV_R_IMM, MOV_R_IMM)
               DW    SAR_RM8_IMM8, SAR_RM1632_IMM8, 4 DUP(NEXT_OPCODE)
               DW    MOV_RM8_IMM8, MOV_RM1632_IMM1632, 8 DUP(NEXT_OPCODE) 
               DW    SAR_RM8_1, SAR_RM1632_1, SAR_RM8_CL, SAR_RM1632_CL, 1CH DUP(NEXT_OPCODE) 
               DW    LOCK_PRINT
MODRM_MOD      DB    0
MODRM_RM       DB    0
MODRM_REG      DB    0
SIB_SCALE      DB    0
SIB_INDEX      DB    0
SIB_BASE       DB    0
HANDLE         DW    0
PREFIX_SEG     DW    0
PREFIX_66      DB    0
PREFIX_67      DB    0
TYPE_PTR       DW    0
IS_IMM         DB    0 ; ЭТО ПЕРЕМЕННАЯ НУЖНА, ЧТОБЫ СКИПАТЬ '+' ДЛЯ ИММОВ, И ТАК ЖЕ, ЧТОБЫ ПИСАТЬ НУЛЕВОЙ ИММ, ТАК КАК ИММ 0 (IMUL AX, 0) НУЖНО ПИСАТЬ, А СМЕЩЕНИЕ=0 ПИСАТЬ НЕ НУЖНО
OPCODE         DB    0 ; ХРАНИТ ОПКОД КОМАНДЫ, КОТОРУЮ ДЕКОДИМ
STRING         DB    16 DUP (0) ; СТРОКА КОТОРУЮ НАПОЛНЯЕМ ПОСТЕПЕННО, А ПОТОМ ЗАПИСЫВАЕМ В ФАЙЛ
DATA_BUFFER    DB    5120 DUP (0)
END_OFFSET     DW    ? ; НОМЕР ПОСЛЕДНЕГО БАЙТА В DATA_BUFFER (ИЗ ЧИСЛА ПРОЧИТАННЫХ)
OPERAND_BYTE   DB    ?
OPERAND_SEG    DB    ?
IMM_VAL_SIZE   DB    ?

.CODE
START:
    MOV     AX, @DATA
    MOV     DS, AX
    MOV     ES, AX
    MOV     AX, 3D00H ; ОТКРЫВАЕМ ФАЙЛ, AH - ФУНКЦИЯ, AL - ПРАВА ДОСТУПА
    LEA     DX, COM
    INT     21H
    JC      COM_ERROR ; ЕСЛИ НЕТ ОШИБОК, ТО ФЛАГ СF НЕ ПОДНИМАЕТСЯ
    MOV     BX, AX
    LEA     DX, DATA_BUFFER
    MOV     CX, 4096
    MOV     AH, 3FH ; СЧИТЫВАЕМ БАЙТИ ИЗ КОМ ФАЙЛА В DATA_BUFFER
    INT     21H
    ADD     AX, DX ; AX = ЧИСЛО ПРОЧИТАННЫХ БАЙТ, DX = АДРЕС НАЧАЛА
    MOV     [END_OFFSET], AX 
    MOV     AH, 3EH ; ЗАКРЫВАЕМ КОМ ФАЙЛ
    INT     21H
    MOV     AH, 3CH ; СОЗДАЕМ ФАЙЛ-РЕЗУЛЬТАТ 
    XOR     CX, CX 
    LEA     DX, RESULT
    INT     21H
    MOV     [HANDLE], AX ; СОХРАНЯЕМ ДЕСКРИПТОР РЕЗ-ФАЙЛА
    LEA     SI, DATA_BUFFER
NEXT_OPCODE:
    CMP     SI, [END_OFFSET] ; ЕСЛИ SI ВЫШЕЛ ЗА ПРЕДЕЛЫ DATA_BUFFER, ТО ВЫХОДИМ
    JNBE    EXIT
    LODSB
    MOVZX   BX, AL
    SHL     BX, 1
    ADD     BX, OFFSET OPCODES
    JMP     [BX]   ; ПРЫГАЕМ ПО АДРЕСУ МЕТКИ
; ВСЕ СЕГМЕНТЫ, ПРОСТО СОХРАНЯЕМ ВСТРЕТИВШИЙСЯ СЕГМЕНТ
S_ES:
    LEA     AX, ES_SEG
    JMP     SAVE_PREF_SEG
S_CS:
    LEA     AX, CS_SEG
    JMP     SAVE_PREF_SEG
S_SS:
    LEA     AX, SS_SEG
    JMP     SAVE_PREF_SEG
S_DS:
    LEA     AX, DS_SEG
    JMP     SAVE_PREF_SEG
S_FS:
    LEA     AX, FS_SEG
    JMP     SAVE_PREF_SEG
S_GS:
    LEA     AX, GS_SEG
SAVE_PREF_SEG:
    MOV     [PREFIX_SEG], AX
    JMP     NEXT_OPCODE
SIZE_PREFIX:
    MOV     [PREFIX_66], 1
    JMP     NEXT_OPCODE
ADDR_PREFIX:
    MOV     [PREFIX_67], 1
    JMP     NEXT_OPCODE

MOV_RM8_R8:
    MOV     [OPERAND_BYTE], 1
MOV_RM1632_R1632:
    JMP     GET_MODRM_PRINT_MOV_RM_REG
MOV_R8_RM8:
    MOV     [OPERAND_BYTE], 1
MOV_R1632_RM1632:
    JMP     GET_MODRM_PRINT_MOV_REG_RM
MOV_M16R1632_SREG:
    MOV     [OPERAND_SEG], 1
    JMP     GET_MODRM_PRINT_MOV_RM_REG
MOV_SREG_RM16:
    MOV     [OPERAND_SEG], 1
    JMP     GET_MODRM_PRINT_MOV_REG_RM
CWD_PRINT:
    LEA     AX, CWD_
    CALL    PRINT_STRING
    JMP     END_PRINTING
MOV_AL_MOFFS8:
    MOV     [OPERAND_BYTE], 1
MOV_E_AX_MOFFS1632:
    CALL    SET_MOFFS
    JMP     NO_GET_MODRM_PRINT_MOV_REG_RM
MOV_MOFFS8_AL:
    MOV     [OPERAND_BYTE], 1
MOV_MOFFS1632_E_AX:
    CALL    SET_MOFFS
    JMP     NO_GET_MODRM_PRINT_MOV_RM_REG
MOV_R_IMM:
    MOV     [OPERAND_BYTE], 1
    AND     AL, 0FH
    CMP     AL, 8
    JB      OPERAND_IS_IMM8
    SUB     AL, 8
    OR      PREFIX_66, 0
    JZ      IMM_IS_16BIT
    OR      IMM_VAL_SIZE, 80H
IMM_IS_16BIT:
    MOV     IMM_VAL_SIZE, 1
    MOV     [OPERAND_BYTE], 0
OPERAND_IS_IMM8:
    SHL     AL, 1
    MOV     [MODRM_REG], AL
    LEA     AX, MOV_
    CALL    PRINT_STRING
    CALL    PRINT_REG
PRINT_COMMA_IMM:
    CALL    PRINT_COMMA
    XOR     EAX, EAX
    MOV     IS_IMM, 1
    OR      IMM_VAL_SIZE, 0
    JNS     IMM_IS_NOT_DWORD
    LODSD
    JMP     IMM_OUT
IMM_IS_NOT_DWORD:
    JNZ     IMM_IS_WORD
    LODSB
    JMP     IMM_OUT
IMM_IS_WORD:
    LODSW
IMM_OUT:
    CALL    PRINT_HEX_NUM
    JMP     END_PRINTING

SAR_RM8_IMM8:
    MOV     [OPERAND_BYTE], 1
    MOV     [TYPE_PTR], OFFSET BYTE_PTR
SAR_RM1632_IMM8:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    XOR     EAX, EAX
    LODSB
    CALL    PRINT_HEX_NUM
    JMP     END_PRINTING

MOV_RM8_IMM8:
    MOV     [OPERAND_BYTE], 1
    MOV     [TYPE_PTR], OFFSET BYTE_PTR
MOV_RM1632_IMM1632:
    LEA     AX, MOV_
    CALL    PRINT_STRING
    CALL    GET_MOD_REG_RM
    OR      [OPERAND_BYTE], 0
    JNZ     ITS_BYTE_WORD_IMM
    OR      [IMM_VAL_SIZE], 1
    MOV     [TYPE_PTR], OFFSET WORD_PTR
    OR      [PREFIX_66], 0
    JZ      ITS_BYTE_WORD_IMM
    MOV     [TYPE_PTR], OFFSET DWORD_PTR
    OR      IMM_VAL_SIZE, 80H
ITS_BYTE_WORD_IMM:
    CALL    PRINT_RM_PROC
    JMP     PRINT_COMMA_IMM
SAR_RM8_1:
    MOV     [OPERAND_BYTE], 1
    MOV     [TYPE_PTR], OFFSET BYTE_PTR
SAR_RM1632_1:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    LEA     AX, ONE
    CALL    PRINT_STRING
    JMP     END_PRINTING
SAR_RM8_CL:
    MOV     [OPERAND_BYTE], 1
    MOV     [TYPE_PTR], OFFSET BYTE_PTR
SAR_RM1632_CL:
    CALL    SET_PTR_PRINT_SAR_RM_COMMA
    LEA     AX, CLREG
    CALL    PRINT_STRING
    JMP     END_PRINTING

LOCK_PRINT: ; LOCK ВЫВОДИМ СРАЗУ
    LEA     AX, LOCK_STR
    CALL    PRINT_STRING
    JMP     NEXT_OPCODE

GET_MODRM_PRINT_MOV_RM_REG:
    CALL    GET_MOD_REG_RM
NO_GET_MODRM_PRINT_MOV_RM_REG:
    CALL    PRINT_MOV_RM_REG
    JMP     END_PRINTING
GET_MODRM_PRINT_MOV_REG_RM:
    CALL    GET_MOD_REG_RM
NO_GET_MODRM_PRINT_MOV_REG_RM:
    CALL    PRINT_MOV_REG_RM
    JMP     END_PRINTING

COM_ERROR:
    LEA     DX, ERROR ; СООБЩЕНИЕ ОБ ОШИБКЕ С КОМОМ, ПОЛЕЗНО, ЕСЛИ ВДРУГ ЧТО-ТО НЕ ТАК БУДЕТ НА ЗАЩИТЕ (НАПРИМЕР ФАЙЛ ПЕРЕИМЕНУЮТ, КАК У ВСЕХ БЫЛО)
    MOV     AH, 9                ;      ТОГДА СРАЗУ БУДЕТ ВИДНО ГДЕ ОШИБКА
    INT     21H
EXIT:
    MOV     AH, 3EH
    MOV     BX, [HANDLE]  ; ЗАКРЫВАЕМ ФАЙЛ РЕЗУЛЬТАТ
    INT     21H
    MOV     AH, 4CH
    INT     21H

END_PRINTING:
    PUSH    SI
    LEA     DI, STRING
    MOV     DX, DI
    MOV     AX, 0A0DH
    STOSW
    MOV     CX, 2
    MOV     AH, 40H
    MOV     BX, HANDLE
    INT     21H
    REP     STOSB
    MOV     PREFIX_SEG, 0
    MOV     PREFIX_66, 0
    MOV     PREFIX_67, 0
    MOV     TYPE_PTR, 0
    MOV     IS_IMM, 0
    MOV     OPERAND_BYTE, 0
    MOV     MODRM_MOD, 0
    MOV     MODRM_REG, 0
    MOV     MODRM_RM, 0
    MOV     IMM_VAL_SIZE, 0
    POP     SI
    JMP     NEXT_OPCODE
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_BUFFER
; НА ВХОД:  AX - АДРЕС СТРОКИ ДЛЯ ЗАПИСИ
; НА ВЫХОД: НИЧЕГО
; ОПИСАНИЕ: СОХРАНЯЕТ SI, ЗАТЕМ ПИШЕТ СТРОКУ ПО АДРЕСУ AX В БУФЕР
;--------------------------------------------------------------------------------------
SET_PTR_PRINT_SAR_RM_COMMA PROC
    LEA     AX, SAR_
    CALL    PRINT_STRING
    CALL    GET_MOD_REG_RM
    OR      [OPERAND_BYTE], 0
    JNZ     RET_SAR
    MOV     [TYPE_PTR], OFFSET WORD_PTR
    OR      [PREFIX_66], 0
    JZ      RET_SAR
    MOV     [TYPE_PTR], OFFSET DWORD_PTR
RET_SAR:
    CALL    PRINT_RM_PROC
    CALL    PRINT_COMMA
    MOV     [IS_IMM], 1
    RET
ENDP

PRINT_STRING PROC
    PUSH    SI BX
    LEA     DI, STRING
    MOV     DX, DI
    XOR     CX, CX
    MOV     SI, AX
PRINTING:
    MOVSB
    INC     CX
    CMP     BYTE PTR [SI], '$'
    JNE     PRINTING
    MOV     AH, 40H
    MOV     BX, HANDLE
    INT     21H
    POP     BX SI
    RET
ENDP

PRINT_SAR_RM PROC
    LEA     AX, SAR_
    CALL    PRINT_STRING
    CALL    GET_MOD_REG_RM
    CALL    PRINT_RM_PROC
    RET
ENDP
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА GET_MOD_REG_RM
; НА ВХОД: НИЧЕГО
; НА ВЫХОД: МОД, РЕГ И РМ
; ОПИСАНИЕ: ГРУЗИТ БАЙТ ИЗ DATA_BUFFER ПО АДРЕСУ [SI], ЗАТЕМ РАЗБИВАЕТ НА МОД, РЕГ, РМ
;           ДЛЯ РЕГ И РМ СМЕЩЕНЕНИЕ SHR 2 И SHL 1 ДЛЯ ДВИЖЕНИЯ ПО МАССИВАМ РЕГ И РМ,
;           ПОТОМУ ЧТО МАССИВ СОСТОИТ ИЗ СЛОВ, А НЕ ИЗ БАЙТОВ
;--------------------------------------------------------------------------------------
GET_MOD_REG_RM PROC
    LODSB
    MOV     AH, AL
    AND     AH, 11000000B
    MOV     [MODRM_MOD], AH
    MOV     AH, AL
    SHR     AH, 2
    AND     AH, 1110B
    MOV     [MODRM_REG], AH
    AND     AL, 111B
    SHL     AL, 1
    MOV     [MODRM_RM], AL
    RET
ENDP
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_REG
; НА ВХОД: НИЧЕГО
; НА ВЫХОД: НИЧЕГО
; ОПИСАНИЕ: СОХРАНЯЕТ BX И SI, ЗАТЕМ ПИШЕМ БАЙТОВЫЙ РЕГИСТР ДЛЯ ИМУЛА F6, ИЛИ ВОРД/ДВОРД 
;           ЗНАЧЕНИЕ РЕГИСТРА ИЗ ПОЛЯ РЕГ.
;--------------------------------------------------------------------------------------
PRINT_REG PROC
    PUSH    BX SI
    OR      [OPERAND_SEG], 0
    JZ      NOT_SEG_OPER
    MOV     [OPERAND_SEG], 0
    LEA     BX, SREGS
    MOVZX   SI, MODRM_REG
    MOV     AX, [BX + SI]
    CALL    PRINT_STRING
    POP     SI BX
    RET
NOT_SEG_OPER:
    LEA     BX, REGS8
    OR      [OPERAND_BYTE], 0
    JNZ     GO_PRINT
    LEA     BX, REGS16
    OR      [PREFIX_66], 0
    JZ      GO_PRINT
    LEA     BX, REGS32
GO_PRINT:
    MOVZX   SI, MODRM_REG
    MOV     AX, [BX + SI]
    CALL    PRINT_STRING
    POP     SI BX
    RET
ENDP
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_REG
; НА ВХОД: НИЧЕГО
; НА ВЫХОД: НИЧЕГО
; ОПИСАНИЕ: ПИШЕМ РЕГИСТР ИЗ ПОЛЯ РМ, ЕСЛИ МОД=11, ИНАЧЕ ПИШЕМ СЕГМЕНТ И ОПЕРАНД РМ
;--------------------------------------------------------------------------------------
PRINT_RM_PROC  PROC
    CMP     [MODRM_MOD], 11000000B   ; ЕСЛИ МОД=11 ПИШЕМ РЕГИСТР ПО ИНДЕКСУ ИЗ ПОЛЯ РМ
    JNE     NOT11MOD
    MOV     AL, MODRM_RM
    MOV     BH, MODRM_REG
    MOV     BL, AL
    MOV     MODRM_REG, AL
    CALL    PRINT_REG
    MOV     MODRM_REG, BH
    MOV     MODRM_RM, BL
    JMP     RET_REG
NOT11MOD:   ; ЕСЛИ МОД НЕ 11
    OR      TYPE_PTR, 0
    JZ      NO_TYPE_OVR
    MOV     AX, [TYPE_PTR]
    CALL    PRINT_STRING
NO_TYPE_OVR:
    CALL    PRINT_SEG   ; ПЕРВЫМ ДЕЛОМ ПИШЕМ СЕГМЕНТ В ФОРМАТЕ '_S:['
    LEA     AX, COLON
    CALL    PRINT_STRING
    OR      [PREFIX_67], 0
    JZ      BIT16_RM  ; ЕСЛИ ЕСТЬ 67 ПРЕФИКС ИДЕМ НА 32 БИТНУЮ АДРЕСАЦИЮ
    CALL    BIT32_RM
    JMP     RETURN
BIT16_RM:
    OR      [MODRM_MOD], 0   ; В 16 БИТАХ ПЕРВЫМ ДЕЛОМ СМОТРИМ НА МОД00 ДИСП16
    JNZ     NOT_00_MOD_16
    CMP     [MODRM_RM], 1100B ; ДИСП16
    JNE     NOT_00_MOD_16
    XOR     EAX, EAX ; ЕСЛИ МОД00 И РМ110, ТО ЭТО ДИСП16, ПИШЕМ ЕГО И ВЫХОДИМ
    LODSW
    MOV     [IS_IMM], 1
    CALL    PRINT_HEX_NUM
    JMP     RETURN
NOT_00_MOD_16: ; ЕСЛИ МОД НЕ 00, ТО ЭТО [РЕГИСТР+ДИСП8/16]
    MOVZX   BX, MODRM_RM
    MOV     AX, [BX + EA16]
    CALL    PRINT_STRING     ; МОЖНО СРАЗУ ВЫВЕСТИ НАЧАЛО РМ, А ДАЛЬШЕ СМОТРИМ ДИСП
    OR      [MODRM_MOD], 0           ; ЕСЛИ МОД 00, ТО ДИСПА НЕТУ
    JZ      RETURN
    XOR     EAX, EAX            ; ИНАЧЕ ГОТОВИМСЯ ЕГО ПИСАТЬ
    CMP     [MODRM_MOD], 1000000B    ; ЕСЛИ МОД НЕ 10, ТО ПИШЕМ БАЙТОВЫЙ ДИСП
    JNE     NOT_01_MOD_16
    LODSB
    JMP     PRINT_DISP_BYTE_WORD
NOT_01_MOD_16:  ; ИНАЧЕ ПИШЕМ ВОРДОВЫЙ ДИСП
    LODSW
PRINT_DISP_BYTE_WORD:
    CALL    PRINT_HEX_NUM
RETURN:
    LEA     AX, BRACKET
    CALL    PRINT_STRING
RET_REG:
    RET
ENDP

SET_MOFFS PROC
    MOV     [MODRM_RM], 1100B
    OR      [PREFIX_67], 0
    JZ      NO_MOFFS32
    MOV     [MODRM_RM], 1010B
NO_MOFFS32:
    RET
ENDP

BIT32_RM PROC
    CMP     [MODRM_RM], 1000B             ; ЭТО СИБ БАЙТ
    JNE     NO_SIB_BASEYTE             
    CALL    GET_SCALE_INDEX_BASE
    MOV     AX, [BX + REGS32]        ; ПИШЕМ БАЗУ В БУФФЕР
    CALL    PRINT_STRING
    CMP     [SIB_BASE], 1010B           ; ПРОВЕРЯЕМ БАЗУ 101 (EBP)
    JNE     NO_BASE_101
    OR      [MODRM_MOD], 0                ; ЕСЛИ БАЗА 101, И МОД=0, ТО..
    JNZ     NO_BASE_101
    MOV     AH, 42H
    MOV     AL, 1 ; METHOD: 1 = CURRENT POSITION
    MOV     BX, HANDLE
    MOV     CX, -1 ; HIGH WORD OF OFFSET (NEGATIVE NUMBER)
    MOV     DX, -3 ; LOW WORD OF OFFSET (-3 IN TWO'S COMPLEMENT)
    INT     21H
    JMP     INDEX                   ; ПИШЕМ ИНДЕКС И ПРОПУСКАЕМ ПРОВЕРКУ NONE И ЗАПИСЬ + ПОСЛЕ БАЗЫ
NO_BASE_101:
    CMP     [SIB_INDEX], 1000B          ; ПРОВЕРЯЕМ ИНДЕКС 100, ТО ЕСТЬ NONE
    JE      NO_SCALE                ; ЕСЛИ ИНДЕКС NONE, ТО НЕ ПИШЕМ ИНДЕКС
    LEA     AX, PLUS
    CALL    PRINT_STRING
    STOSB
INDEX:
    MOVZX   BX, SIB_INDEX               ; ЗАПИСЬ ИНДЕКСА
    MOV     AX, [BX + REGS32]
    CALL    PRINT_STRING
    MOV     BL, [SIB_SCALE]             ; ДАЛЬШЕ ПИШЕМ МАСШТАБ
    OR      BL, BL                  ; ЕСЛИ ОН 0, ТО ПРОПУСКАЕМ ЕГО
    JZ      NO_SCALE
    LEA     AX, SCALE4
    CMP     [SIB_SCALE], 1000000B
    JE      PRINT_SCALE
    JB      SCALETWO
    LEA     AX, SCALE8
    JMP     PRINT_SCALE
SCALETWO:      
    LEA     AX, SCALE2
PRINT_SCALE:
    CALL    PRINT_STRING
NO_SCALE:
    CMP     [SIB_BASE], 1010B          ; ПРОВЕРЯЕМ БАЗУ 101 (EBP)
    JNE     CHECK_DISP_8_32         ; ЕСЛИ БАЗА НЕ 101, ТО ПРОВЕЯРЕМ ДИСП8/32
    OR      [MODRM_MOD], 0               ; ЕСЛИ БАЗА 101 И МОД=0, ТО ТОГДА БАЗА ЭТО ДИСП32
    JZ      DISP32
    JMP     CHECK_DISP_8_32         ; ИНАЧЕ ДИСП8/32
NO_SIB_BASEYTE:    ; ВСЁ ВЫШЕ БЫЛО ПРО СИБ БАЙТ, ЕСЛИ ЕГО НЕТ, ТО
    CMP     [MODRM_RM], 1010B             ; ПРОВЕРЯЕМ РМ101 (EBP)
    JNE     PRINT_RM32              ; ЕСЛИ НЕ 101, ТО СМЕЛО ПИШЕМ РМ
    OR      [MODRM_MOD], 0               ; ЕСЛИ 101 И МОД=0, ТО ТОГДА ТАМ ДИСП32
    JNZ     PRINT_RM32
    MOV     [IS_IMM], 1             ; ГОТОВИМСЯ ЕГО ПИСАТЬ, ТАК КАК ОН ТАМ ОДИН, ТО ДИСП=0, МЫ ПИШЕМ
DISP32:
    XOR     EAX, EAX
    LODSD
    CALL    PRINT_HEX_NUM
    JMP     RET32 ;RETURN
PRINT_RM32:
    MOVZX   BX, MODRM_RM
    MOV     AX, [BX + REGS32]       ; ВЫВОДИМ РМ ДВИГАЯСЬ ПО МАССИВУ
    CALL    PRINT_STRING
    OR      [MODRM_MOD], 0               ; ЕСЛИ МОД0, ТО ВЫХОДИМ, ЕСЛИ НЕТ, ТО ИДЕМ ПРОВЕРЯТЬ ДИСП8/32
    JZ      RET32 ;RETURN
CHECK_DISP_8_32:
    CMP     [MODRM_MOD], 1000000B       ; МОД=10 - ДИСП32
    JA      DISP32
    JB      RET32 ;RETURN
    XOR     EAX, EAX
    LODSB                           ; ИНАЧЕ ДИСП8
    CALL    PRINT_HEX_NUM
RET32:
    RET 
ENDP

GET_SCALE_INDEX_BASE PROC
    LODSB                           ; ВЫТЯГИВАЕМ СИБ И РАЗБИРАЕМ НА СКЕЙЛ, ИНДЕКС, БАЗУ
    MOV     AH, AL
    AND     AH, 11000000B
    MOV     [SIB_SCALE], AH
    MOV     AH, AL
    SHR     AH, 2
    AND     AH, 1110B
    MOV     [SIB_INDEX], AH
    AND     AL, 111B
    SHL     AL, 1
    MOV     [SIB_BASE], AL
    MOVZX   BX, SIB_BASE
    RET
ENDP 
;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_SEG
; НА ВХОД:  НИЧЕГО
; НА ВЫХОД: НИЧЕГО
; ОПИСАНИЕ: СОХРАНЯЕТ BX,
;           ЗАПИСЫВАЕТ В БУФЕР СЕГМЕНТ ДЛЯ РМ, СМОТРИТ НА ВСЕ ФЛАГИ И ПИШЕТ ЛИБО ОВЕРРАЙД
;           СЕГМЕНТ, ЛИБО ПИШЕТ ДЕФОЛТНЫЙ
;--------------------------------------------------------------------------------------
PRINT_SEG PROC
    PUSH    BX
    MOV     AX, [PREFIX_SEG]
    OR      AX, AX
    JNZ     PRINT_SEG_STR       ; ЕСЛИ SEG OVR НЕ НОЛЬ, ТО ПИШЕМ ЭТОТ СЕГМЕНТ
    MOVZX   BX, MODRM_RM
    OR      [PREFIX_67], 0
    JNZ     MODRM32             ; ЕСЛИ НЕТ 67 ПРЕФИКСА, ТО РАБОТАЕМ С МОДРМ16
    CMP     BL, 1100B           ; ЕСЛИ РМ = 1100 (BP ИЛИ ДИСП16)
    JNE     PRINT_DEFAULT_SEG   ; ЕСЛИ НЕ РАВЕН, ТО ПИШЕМ ДЕФОЛТНЫЙ СЕГМЕНТ
    OR      [MODRM_MOD], 0           ; ЕСЛИ РАВЕН, ТО ПРОВЕРЯЕМ МОД
    JNZ     PRINT_SS            ; ЕСЛИ МОД НЕ НОЛЬ, ТО ЭТО [BP+DISP8/16]
    JMP     PRINT_DEFAULT_SEG   ; ЕСЛИ НОЛЬ, ТО ЭТО DISP16, ПИШЕМ DS
MODRM32:
    LEA     AX, DS_SEG   ; У МОДРМ 32 ВЕЗДЕ DS, КРОМЕ EBP
    CMP     BL, 1010B           ; EBP
    JNE     PRINT_SEG_STR       
    OR      [MODRM_MOD], 0           ; ОПЯТЬ ПРОВЕРЯЕМ МОД, ЕСЛИ НЕ НОЛЬ, ТО ЭТО [EBP+DISP8/32]
    JZ      PRINT_SEG_STR       ; ЕСЛИ НОЛЬ, ТО DS
PRINT_SS:
    LEA     AX, SS_SEG   ; ПИШЕМ SS
    JMP     PRINT_SEG_STR
PRINT_DEFAULT_SEG:
    MOV     AX, [BX + SEG_RM16] ; ДВИГАЕМСЯ ПО МАССИВУ
PRINT_SEG_STR:
    CALL    PRINT_STRING ; ПИШЕМ СЕГМЕНТ
    POP     BX
    RET
ENDP

PRINT_COMMA PROC
    LEA     AX, COMMA
    CALL    PRINT_STRING
    RET
ENDP

PRINT_MOV_REG_RM PROC
    LEA     AX, MOV_
    CALL    PRINT_STRING
    CALL    PRINT_REG
    CALL    PRINT_COMMA
    CALL    PRINT_RM_PROC
    RET
ENDP

PRINT_MOV_RM_REG PROC
    LEA     AX, MOV_
    CALL    PRINT_STRING
    CALL    PRINT_RM_PROC
    CALL    PRINT_COMMA
    CALL    PRINT_REG
    RET
ENDP

;--------------------------------------------------------------------------------------
; ПРОЦЕДУРА PRINT_HEX_NUM
; НА ВХОД:  EAX = ЧИСЛО ДЛЯ ЗАПИСИ, ВСЕ ОСТАЛЬНЫЕ БИТЫ EAX ОБЯЗАТЕЛЬНО РАВНЫ НУЛЮ
; НА ВЫХОД: НИЧЕГО
; ОПИСАНИЕ: СОХРАНЯЕТ BX,
;           ЗАПИСЫВАЕТ В БУФЕР ASCII ЧИСЛО ИЗ EAX
;--------------------------------------------------------------------------------------
PRINT_HEX_NUM PROC
    PUSH    BX
    LEA     DI, STRING
    MOV     DX, DI
    CMP     IS_IMM, 1  ; ПРОВЕРКА НА ИММ
    JE      CHECK_ZERO
    OR      EAX, EAX    ; ЕСЛИ ЭТО НЕ ИММ, ТО ЕСТЬ ДИСП, ТО ПРОВЕРЯЕМ НУЛЕВОЕ СМЕЩЕНИЕ
    JZ      END_HEX
    MOV     BYTE PTR [DI], '+' ; ЕСЛИ ДИСП НЕ НОЛЬ, ТО ПИШЕМ ПЛЮС, УВЕЛИЧИВАЕМ DI
    INC     DI                  ; ЗДЕСЬ ПИШЕМ НЕ ЧЕРЕЗ AL, ПОТОМУ ЧТО ТАМ ЧИСЛО
CHECK_ZERO:
    OR      EAX, EAX        ; ПРОВЕРКА НУЛЕВОГО ИММ
    JNZ     NON_ZERO_IMM
    MOV     AL, '0'         ; ЕСЛИ НОЛЬ ПИШЕМ 0 В БУФФЕР И ВЫХОДИМ
    STOSB
    JMP     PUT_HEX
NON_ZERO_IMM:
    MOV     EBX, EAX       ; ЧИСЛО ДЛЯ ЗАПИСИ В EBX
    MOV     CL, 8          ; ЧИСЛО БАЙТ В EAX
    JMP     TEST_FIRST
DELETING_ZEROS:
    DEC     CL             ; УМЕНЬШАЕМ ЧИСЛО БАЙТ ДЛЯ ЗАПИСИ
    ROL     EBX, 4         ; УБИРАЕМ НЕНУЖНЫЕ НУЛИ СПЕРЕДИ
TEST_FIRST:
    TEST    EBX, 0F0000000H  ; ЕСЛИ РЕЗУЛЬТАТ 0, ТО СПЕРЕДИ ЧИСЛА НЕЗНАЧАЩИЕ НУЛИ, УБИРАЕМ ИХ
    JZ      DELETING_ZEROS
    XOR     EAX, EAX
    SHLD    EAX, EBX, 4    ; ДВИГАЕМ СТАРШИЙ БАЙТ ДЛЯ ЗАПИСИ В EAX
    CMP     AL, 9          ; ПРОВЕРЯЕМ ЕГО НА ТО, ЧТО ОН НЕ БУКВА
    JNA     NOT_A_LETTER
    MOV     AL, '0'         ; ЕСЛИ БУКВА, ТО ПИШЕМ 0
    STOSB
NOT_A_LETTER:
    XOR     AL, AL         ; ОБНУЛЯЕМ AL 
HEX_TO_ASCII:
    SHLD    EAX, EBX, 4    ; ДВИГАЕМ ПО БАЙТУ В EAX И ЗАПИСЫВАЕМ В БУФФЕР В ASCII ФОРМАТЕ
    SHL     EBX, 4
    CMP     AL, 9          ; ПРОВЕРКА НА БУКВУ
    JNA     DIGIT
    ADD     AL, 7          ; ДОП СЛАГАЕМОЕ ДЛЯ БУКВ
DIGIT: 
    ADD     AL, '0'         ; ДЛЯ ЧИСЕЛ
    STOSB                   ; СОХРАНЯЕМ
    XOR     AL, AL          ; ЗАНУЛЯЕМ ТАК КАК AL ЭТО БАЙТ, А НАМ НУЖНО ТОЛЬКО 4 БИТА
    LOOP    HEX_TO_ASCII    ; ЦИКЛИМСЯ ПО ВСЕМ БАЙТАМ
PUT_HEX:
    MOV     AL, 'H'         ; СОХРАНЯЕМ 'H'
    STOSB
    MOV     CX, DI
    SUB     CX, DX
    MOV     AH, 40H
    MOV     BX, HANDLE
    INT     21H
END_HEX:
    POP     BX
    RET
ENDP

    END     START