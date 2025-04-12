.model small
.386
.stack 100h

.code

Start:
    div     word ptr GS:[bp + si -99]
    neg     word ptr CS:[BP+si+124]
    push    word ptr DS:[bp + 12044]
    DEC     word ptr DS:[bx-41]
    OR      word ptr GS:[Bx-30326], -22515
    ROR     word ptr ES:[bx + si +121], cl
    inc     word ptr SS:[bp]
    rol     word ptr CS:[bp+si+124], cl
    mul     word ptr ES:[bp+si+105]
    RCL     word ptr ES:[si+115], cl
    xor     word ptr Ds:[bx+si+7376], 21356
    mov     ax, -7326
    lea     sp, ds:[si+8h]
    mov     al, [di-20]
    movzx   ax, al
    mul     byte ptr es:[si+2]
    cbw
    lodsb
    xchg    bx, si
    xchg    si, [bx]
    sub     bx, 32
    xlat
    add     ax, es:[bx+2]
    stosb
    cwde
    sub     bp, [si+14000]
    sub     CS:[bp + si + 13], al
    sub     ax, bx
    sbb     eax, [ebp + esi * 4 - 50]
    adc     dword ptr ES:[esp + esi*8 - 50], -439950
    end Start
     