.model small
.386
.stack 100h
.data
; 17
    A       dd +1.0
    B       dd +127.0
    C       dd +127.0
    six     dd +6.0
    seven   dd +6.0
    five    dd +6.0
    eight   dd +22.0
    D       dd ?
.code
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
start:
    mov     ax, @data
    mov     ds, ax
    fld     C                  ; st(0) = C
    fld     A                  ; st(0) = A, st(1) = C
    fld1                       ; st(0) = 1, st(1) = A, st(2) = C
    fadd    st(0), st(0)       ; st(0) = 2, st(1) = A, st(2) = C
    fld     st(0)              ; st(0) = 2, st(1) = 2, st(2) = A, st(3) = C
    fscale                     ; st(0) = 8, st(1) = 2, st(2) = A, st(3) = C
    fxch    st(1)              ; st(0) = 2, st(1) = 8, st(2) = A, st(3) = C
    fsubp   st(1), st(0)       ; st(0) = 6, st(1) = A, st(2) = C
    fld     st(2)              ; st(0) = C, st(1) = 6, st(2) = A, st(3) = C
    fscale                     ; st(0) = 64*C, st(1) = 6, st(2) = A, st(3) = C
    fadd    st(0), st(3)       ; st(0) = 65*C, st(1) = 6, st(2) = A, st(3) = C
    fld     st(1)              ; st(0) = 6, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    fmul    st(0), st(3)       ; st(0) = 6A, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    fadd    st(0), st(3)       ; st(0) = 7A, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    fmul    st(0), st(3)       ; st(0) = 7A^2, st(1) = 65*C, st(2) = 6, st(3) = A, st(4) = C
    faddp                      ; st(0) = 7A^2+65*C, st(1) = 6, st(2) = A, st(3) = C
    jz      SHORT  exit    
    fld     B                  ; st(0) = B, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fadd    st(0), st(0)       ; st(0) = 2B, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fmul    st(0), st(2)       ; st(0) = 12B, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fmul    st(0), st(4)       ; st(0) = 12BC, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fadd    st(0), st(3)       ; st(0) = 12BC+6, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fadd    st(0), st(2)       ; st(0) = 12BC+A+6, st(1) = 7A^2+65*C, st(2) = 6, st(3) = A, st(4) = C
    fdiv    st(0), st(1)       ; st(0) = 12BC+A+6 / 7A^2+65*C
    fistp   D
exit:
    mov ah, 4ch
    int 21h
end start