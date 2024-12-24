.model small
.386
.stack 100h
.data
    A       dd +1.0
    B       dd +127.0
    C       dd +127.0
    six     dd +6.0
    ; sixf    dd +65.0
    seven   dd +6.0
    five    dd +6.0
    eight   dd +22.0
    D       dd ?
.code
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
start:
    mov ax, @data
    mov ds, ax
    ; mov es, ax
    ; finit
    fld     A              ; st(0) = A
    fld     C              ; st(0) = A, st(1) = C
    fld1                   ; st(0) = 1, st(1) = A, st(2) = C
    fadd    st(0), st(0)   ; st(0) = 2, st(1) = A, st(2) = C
    fld     st(0)          ; st(0) = 2, st(1) = 2, st(2) = A, st(3) = C
    fscale                 ; st(0) = 8, st(1) = 2, st(2) = A, st(3) = C
    fxch    st(1)          ; st(0) = 2, st(1) = 8, st(2) = A, st(3) = C
    fsubp   st(1), st(0)   ; st(0) = 6, st(1) = A, st(2) = C
    fld     st(3)          ; st(0) = C, st(1) = 6, st(2) = A, st(3) = C
    fscale                 ; st(0) = 64*C, st(1) = 6, st(2) = A, st(3) = C
    fadd    st(3), st(0)   ; st(0) = 65*C, st(1) = 6, st(2) = A, st(3) = C
    fld     st(1)          ; st(0) = 6, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    fmul    st(0), st(3)   ; st(0) = 6A, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    fadd    st(0), st(3)   ; st(0) = 7A, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    fmul    st(0), st(3)   ; st(0) = 7A^2, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    faddp                  ; st(0) = 7A^2+65*C, st(1) = 6, st(2) = A, st(3) = C
    jz      exit
    fld     B              ; st(0) = B, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fadd    st(0), st(0)   ; st(0) = 2B, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    ; fld six                ; st(0) = 6
    ; fld1                   ; st(0) = 1,  st(1) = 6
    ; fscale                 ; st(0) = 64, st(1) = 6
    ; fld1                   ; st(0) =  1, st(1) = 64, st(2) = 6
    ; fadd    st(1), st(0)   ; st(0) =  1, st(1) = 65, st(2) = 6
    ; fld     st(2)          ; st(0) =  6, st(1) =  1, st(2) = 65,    st(3) = 6
    ; ; fadd    st(1), st(1)   ; st(0) =  6, st(1) =  2, st(2) = 65,  st(3) = 6
    ; fscale                 ; st(0) =  12,  st(1) =  1, st(2) = 65,   st(3) = 6
    ; fadd    st(3), st(1)   ; st(0) =  12,  st(1) =  1, st(2) = 65,   st(3) = 7
    ; fld     C              ; st(0) =  C,   st(1) =  6, st(2) =  2,   st(3) = 65,   st(4) = 7
    ; ; fxch    st(4)          ; st(0) =  7,   st(1) =  6, st(2) =  2,   st(3) = 65,   st(4) = C
    ; fmul    st(0), st(4)   ; st(0) =  7*,   st(1) =  2, st(2) = 65*C, st(3) = 7
    ; fxch    st(3)          ; st(0) =  7,   st(1) =  2, st(2) = 65*C, st(3) = 6
    ; fmul    A              ; st(0) =  7A,  st(1) =  2, st(2) = 65*C, st(3) = 6
    ; fmul    A              ; st(0) =  7A^2,st(1) =  2, st(2) = 65*C, st(3) = 6
    ; faddp   st(2), st(1)   ; st(0) =  2,   st(1) = 65*C+7A^2, st(2) = 6
    ; jz      exit
    ; fmul    st(2), st(0)   ; st(0) =  12,   st(1) = 65*C+7A^2, st(2) = 6
    ; fld     A              ; st(0) =  A,   st(1) =  12,   st(2) = 65*C+7A^2, st(3) = 6
    ; faddp   st(3), st(0)   ; st(0) =  12,  st(1) = 65*C+7A^2, st(2) = 6+A
    ; fmul    B              ; st(0) =  12*B,  st(1) = 65*C+7A^2, st(2) = 6+A
    ; fmul    A              ; st(0) =  12*B*C,  st(1) = 65*C+7A^2, st(2) = 6+A
    ; faddp   st(3), st(0)   ; st(0) =  A,   st(1) =  2,   st(2) = 65*C+7A^2, st(3) = 6

    ; fadd    st(1), st(0)   ; st(0) =  1,   st(1) = 65,   st(2) = 7
    
    fld st(0)
    fld C
    fld st(0)
    fld B
    fld st(0)

    fmul seven
    fadd st,st(4)
    fxch st(2)
    fmul eight
    fmul st,st(4)
    fsub st(2),st

    ; jz znamenatelzero

    fxch st(3)
    fmul st,st(0)
    fxch st(1)
    fmul st,st(0)
    fmul st,st(0)
    fmul st,st(5)
    fadd st,st(1)
    fsub five

    fdiv st,st(2)
    fistp D
exit:
    mov ah, 4ch
    int 21h
end start