.model small
.186
.stack 256

.data
    db 01h, 00h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 18h, 40h, 00h, 00h, 00h, 00h
    db 00h, 00h, 00h, 80h, 00h, 40h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 80h, 02h, 40h
    db 00h, 00h, 20h, 41h, 00h, 00h, 00h, 00h, 00h, 00h, 22h, 40h, 00h, 00h, 00h, 00h
    db 00h, 00h, 00h, c0h, 02h, 40h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 88h, 03h, 40h
    db 00h, 00h, 60h, 41h, 00h, 00h, 00h, 00h, 00h, 00h, 14h, 40h, 00h, 00h, 00h, 00h
    db 00h, 00h, 00h, 0e0h, 01h, 40h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 98h, 03h, 40h
    db 00h, 00h, 80h, 41h, 00h, 00h,00h, 00h, 00h, 00h, 28h, 40h, 00h, 00h, 00h, 00h
    db 00h, 00h, 00h, 90h, 02h, 40h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 80h, FFh, 3Fh
.code 
mov ax, @data
mov ds, ax

fld tbyte ptr ds:[0ch]
fld dword ptr ds:[40h]
fld dword ptr ds:[04h]
fadd st(2), st(0)
fild word ptr ds:[02h]
fxch st(2)
fsubr dword ptr ds:[60h]
fmul qword ptr ds:[44h]
fisub word ptr ds:[02h]
fst qword ptr ds:[24h]
fld qword ptr ds:[44h]
faddp st(2), st(0)
fmul st(0), st(2)
fild word ptr ds:[00h]
fld dword ptr ds:[20h]
fmul qword ptr ds:[04h]
fmul st(0), st(1)
fistp word ptr ds:[00h]
faddp st(1), st(0)
fstp tbyte ptr ds:[6ch]

exit:
mov ah, 04ch
int 21h