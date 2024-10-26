.MODEL SMALL
.186
.STACK 100h  ; Define stack size

.DATA        ; Start of data segment
    data_segment DB 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h
               DB 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h
               DB 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
               DB 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 20h
               DB 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
               DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
               DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
               DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
.CODE        ; Start of code segment
MAIN:
    MOV AX, @DATA     ; Load data segment into AX
    MOV DS, AX        ; Move AX into DS
    add ax, 2
    mov es, ax
    sub ax, 020dh
    mov ss, ax
    mov ax, 7A13h
    push ax
    popf
    mov ax, 071ach
    mov bx, 00000h
    mov cx, 001eh
    mov dx, 0f7aeh
    mov si, 0010h
    mov di, 0020h
    mov bp, 0000h
    mov sp, 0294eh
    int 3

mov bx, -14530  ;1
mov ax, -1024   ;2
mov cl, es:[25] ;3
mov bh, dl
mov [di+6], bp
mov dx, 30480
mov bh, ch
mov ds:[bx+di-12], cx
mov bp, 7210
mov ah, es:[bx-10]
mov dx, si
mov cx, es:[bx-30]
mov si, [bp+9]
mov ax, dx
mov cl, bh
mov dx, -18456
mov ch, al
mov ds:[18h], ax
mov [bx+di-15], bl
mov bx, es:[di+8]
mov dh, cl


    MOV AX, 4C00h     ; Exit program
    INT 21h
END MAIN
