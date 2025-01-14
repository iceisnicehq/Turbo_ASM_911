.MODEL    SMALL
.186
.STACK    100H

MAX_VAL         EQU   7FH
MIN_VAL         EQU   80H        
.DATA
    FILENAME    DB    'ABC.TXT', 0
    NUMBERS     DB    "----,----,----", 13, 10
    NUMS_LEN    EQU   $ - NUMBERS
    A           DB    ?
    B           DB    ?
    C           DB    ?
    D           DW    ?
.CODE
START:
    MOV    AX, @DATA                  
    MOV    DS, AX  
    MOV    ES, AX
    MOV    BH, [A]                  ; BH = A
    MOV    CL, [B]                  ; CL = C
    MOV    CH, [C]                  ; CH = B
    OR     BH, BH                   ; IS C ZERO?
    JZ     MAKE_FILE                ; JUMP TO MAKE_FILE
    OR     CH, CH                   ; IS B ZERO?
    JZ     MAKE_FILE                ; JUMP TO MAKE_FILE
    OR     CL, CL                   ; IS A ZERO?
    JNZ    CALC_DENOM               ; JUMP TO CALC_DENOM      
MAKE_FILE:
    MOV    AH, 3CH                  ; CREATE FILENAME   FUNCTION
    XOR    CX, CX                   ; NORMAL FILENAME
    MOV    DX, OFFSET FILENAME      ; DX POINT TO FILENAME OFFSET
    INT    21H                      ; CALL DOS 
    MOV    BX, AX                   ; SAVE DESCR
    MOV    BH, MIN_VAL              ; MIN VAL
    MOV    CH, MIN_VAL              ;
    MOV    CL, MIN_VAL              ;
    MOV    DI, OFFSET NUMBERS       ; DI POINT TO NUMBERS OFFSET
           ; CALC_DENOM    D  = 62*B*C+13*A+A^2   /   A+5*C^2
           ; BL = DESCR  ; BH = A
           ; CL = B      ; CH = C
CALC_DENOM:
    MOV    AL, CH                   ; AL = C
    CBW                             ; AX = C
    MOV    DX, AX                   ; DX = C
    SAL    AX, 2                    ; AX = 4C
    ADD    AX, DX                   ; AX = 5C
    IMUL   DX                       ; DX:AX = 5C^2
    OR     DX, DX                   ; IS DX ZERO?
    JNZ    INC_VARIABLES            ; ***************** IF YES, JUMP TO WRITING    
    MOV    BP, AX                   ; BP = 5C^2
    MOV    AL, BH                   ; AH = A
    CBW
    OR     AX, AX
    JNS    A_IS_POSITIVE            ; IF AX < 0 THEN JUMP TO NEGATIVE CASE
    NEG    AX                       ; AX = |AX|
    SUB    BP, AX                   ; BP = 5C^2 - A
    JC     PREP_FWRITE              ; ***************** IF CF = 1 (E.G. 0001 - 0002 = ffff [CF = 1, SF = 1])   
    JNS    PREP_FWRITE              ; ***************** IF SF = 1 (BP > 07FFF) THEN JUMP TO PREP_FWRITE
    JMP    SHORT NUMERATOR_CHECK    ; JMP TO CHECKING FILENAME 
A_IS_POSITIVE:
    ADD    BP, AX                   ; else: BP = 5C^2 + A
    LAHF                            ; *****************
    TEST   AH, 10000001b            ; ***************** test sf and cf
    JZ     PREP_FWRITE
NUMERATOR_CHECK:
    OR     BL, BL                   ; IS DESCRIPTOR ZERO?
    JNZ    INC_VARIABLES            ; IF NO THEN GO TO MAKE_FILE
    JMP    SHORT NUMERATOR          ; ELSE JUMP TO NUMERATOR
PREP_FWRITE:
    MOV    SI, DI                   ; SI = DI
    MOV    BP, BX                   ; BP = BX  (BH = A, BL = DESCR)
    MOV    AL, BH                   ; AL = A
    MOV    BX, CX                   ; BL = B, BH = C
    MOV    CX, 3                    ; CX = 3
FWRITE_NUMBERS:
    MOV    DL, '+'                  ; DH = -
    OR     AL, AL                   ; CHECK AL SIGN
    JNS    POSITIVE_NUM             ; JUMP IF AL >= 0
    NEG    AL                       ; AL = |AL|
    MOV    DL, '-'                  ; DH = 2dH
POSITIVE_NUM:
    AAM                             ; ADJUST AL TO bcd (E.G. 127D==7FH => AX = 0c07H)
    ADD    AL, 30H                  ; CONVERT AL TO ASCII    (E.G. AX = 0c37H)
    MOV    DH, AL                   ; DX = AL|2d             (E.G. DX = 372dH) 
    MOV    AL, AH                   ; AL = AH                (E.G. AX = 0c0cH)
    AAM                             ; ADJUST AL TO bcd       (E.G. AX = 0102H) 
    ADD    AX, 3030H                ; CONVERT AL TO ASCII    (E.G. AX = 3132H)      
    XCHG   DL, AL                   ;                        (E.G. AX = 312dH, DX = 3732H)  
    STOSW                           ; NUMBERS =              (+100|0000|0000) DI = DI + 2
    MOV    AX, DX                   ;                        (E.G. AX = 3732H)
    STOSW                           ; NUMBERS =              (+127|0000|0000) DI = DI + 4
    INC    DI                       ;                                         DI = DI + 5
    MOV    AL, BL        
    XCHG   BL, BH                   ; BL = B, BH = A for 1 LOOP, BL = A, BH = B for 2 LOOP, BL = B, BH = A for 3 LOOP
    LOOP   FWRITE_NUMBERS           ; LOOP 
    XCHG   BL, BH                   ; BL = A, BH = B
    MOV    DI, SI                   ; DI POINT TO THE BEGINNING OF NUMBERS
    MOV    DX, DI                   ; DX = DI 
    MOV    SI, BX                   ; SAVE BX
    MOV    BX, BP                   ; GET BL = DESCR
    XOR    BH, BH                   ; BH = 0
    MOV    CX, NUMS_LEN             ; NUMBER OF BYTES TO WRITE (NUMBERS LENGTH)
    MOV    AH, 40H                  ; WRITE TO FILENAME FUNCTION
    INT    21H                      ; CALL DOS
    MOV    CX, SI                   ; RESTORE CX
    MOV    BX, BP                   ; RESTORE BX
INC_VARIABLES:
    CMP    CH, MAX_VAL       
    JNE    INC_C
    CMP    CL, MAX_VAL
    JNE    INC_B
    CMP    BH, MAX_VAL
    JE     CLOSE_FILE
    INC    BH
    MOV    CL, MIN_VAL-1
INC_B:
    INC    CL
    MOV    CH, MIN_VAL-1
INC_C:
    INC    CH
    JMP    CALC_DENOM  
CLOSE_FILE:
    MOV    AH, 3EH
    XOR    BH, BH
    INT    21H
    JMP    SHORT EXIT
NUMERATOR:
        ; CALC_DENOM    D  = 62*B*C+13*A+A^2   /   A+5*C^2 
        ; 62*B*C + 13*A + A^2 = 62*B*C + A(13+A)
        ; BP IS DENOM, AX = A
        ; BL = DESCR  ; BH = A
        ; CL = B      ; CH = C
    MOV    DX, AX                   ; DX = A
    ADD    DX, 13                   ; DX = A+13
    IMUL   DX                       ; DX:AX = A(A+13)
    MOV    DI, AX                   ; DI = A(A+13)
    MOV    AL, CL                   ; AL = B
    CBW                             ; AX = B
    MOV    DX, AX                   ; DX = B
    SAL    DX, 5                    ; DX = 32*B
    SUB    DX, AX                   ; DX = 31*B
    MOV    AL, CH                   ; AL = C
    CBW                             ; AX = C
    SAL    AX, 1                    ; AX = 2*C
    IMUL   DX                       ; DX:AX = 62*B*C
    OR     DI, DI                   ; CHECK SIGN OF BX
    JNS    ADDING_POS               ; IF AX IS NOT NEGATIVE JUMP TO NEGATIVE_A2C
    ADD    AX, DI                   ; DX:AX = 62*B*C + A(13+A)
    ADC    DX, -1                   ; DX    = -1 + cf  (-1 это для знака отрицательнго числа)
    JMP    SHORT DIVIDING           ; GO TO DIV
ADDING_POS:
    ADD    AX, BX                   ; DX:BP = 517B^2 + A^2 -C
    ADC    DX, 0                    ; ADD CARRY TO DX
DIVIDING:
    IDIV   BP                       ; 517B^2 + A^2 - C / SI
    MOV    [D], AX                  ; STORE RESULT 
EXIT:
    MOV    AH, 4CH
    INT    21H
    END    START  
