.model small
.386
.stack 100h
.data
; 17
    A       dd +1.0
    B       dd +127.0
    C       dd +127.0
    six     dd +6.0
    twe     dd +12.0
    sixfive dd +65.0
    seven   dd +7.0
    D       dd ?
.code
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
start:
    mov     ax, @data
    mov     ds, ax
    fld     C                  ; st(0) = C
    fld     st(0)              ; st(0) = C, st(1) = C
    fmul    sixfive            ; st(0) = 65*C, st(1) = C
    fld     A                  ; st(0) = A, st(1) = 65*C, st(2) = C
    fld     st(0)              ; st(0) = A, st(1) = A, st(2) = 65*C, st(3) = C
    fmul    seven              ; st(0) = 7A, st(1) = A, st(2) = 65*C, st(3) = C
    fmul    st(0), st(1)       ; st(0) = 7A^2, st(1) = A, st(2) = 65*C, st(3) = C
    faddp   st(2), st(0)       ; st(0) = A, st(1) = 7A^2 + 65*C, st(2) = C
    jz      SHORT exit
    fadd    six                ; st(0) = 6+A, st(1) = 7A^2 + 65*C, st(2) = C
    fxch    st(2)              ; st(0) = C, st(1) = 7A^2 + 65*C, st(2) = 6+A
    fmul    B                  ; st(0) = BC, st(1) = 7A^2 + 65*C, st(2) = 6+A
    fmul    twe                ; st(0) = 12BC, st(1) = 7A^2 + 65*C, st(2) = 6+A
    faddp   st(2), st(0)       ; st(0) = 7A^2 + 65*C, st(1) = 6+A+12BC
    fdivr   st(0), st(1)       ; st(0) = 6+A+12BC / 7A^2 +65*C
    fistp   D
exit:
    mov ah, 4ch
    int 21h
end start