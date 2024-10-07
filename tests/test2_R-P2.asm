.MODEL SMALL
.386
.STACK 100h  ; Define stack size

.DATA        ; Start of data segment
    data_segment DB 12h, 23h, 34h, 45h, 0cdh, 2fh, 0fch, 0feh, 09ah, 0abh, 0bch, 0cdh, 02fh, 0fch, 0feh, 0ffh
               DB 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh
               DB 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh, 02fh, 0fch, 0feh, 0ffh
               DB 21h, 22h, 23h, 24h, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 02fh, 0fch, 0feh, 0ffh
               DB 45h, 34h, 45h, 45h, 45h, 56h, 67h, 9ah, 0abh, 0bch, 0cdh, 0abh, 0bch, 0bch, 0cdh, 09ah
               DB 02fh, 9fh, 0abh, 9ah, 0abh, 9ah, 0abh, 0bch, 0cdh, 48h, 49h, 4ah, 4bh, 4ch, 4dh, 4eh, 4fh, 40h
               DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
               DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
.CODE        ; Start of code segment
MAIN:
    MOV AX, @DATA     ; Load data segment into AX
    MOV DS, AX        ; Move AX into DS
    add ax, 2
    mov es, ax
    sub ax, 020fh
    mov ss, ax
    mov ax, 7202h
    push ax
    popf
    MOV EAX, 0FC2FCD45h    ; Load EAX with FC2FCD45h
    MOV EBX, 00000009h     ; Load EBX with 00000009h
    MOV ECX, 0FC2F0015h    ; Load ECX with FC2F0015h
    MOV EDX, 0453445FFh    ; Load EDX with 453445FFh
    MOV ESI, 0FC2FCD47h    ; Load ESI with FC2FCD47h
    MOV EDI, 0000003Bh     ; Load EDI with 0000003Bh
    MOV EBP, 00002117h     ; Load EBP with 00002117h
    MOV ESP, 00002952h     ; Load ESP with 00002952h
    int 3

mov ecx, -66513
mov es:[ebx+20], ecx
mov ds:[ebx+edi-20], ecx
mov eax, -187625
mov ecx, eax
mov eax, ds:[ebx+3]
mov ecx, [ebx]
mov esi, ecx
mov edx, 217643
mov es:[edi-5], ecx
mov ebp, 8471
mov ecx, 176598
mov ds:[4], eax
mov [ebp], esi
mov eax, 96125
mov ecx, [ebx+18]
mov esi, eax
mov eax, ds:[3]
mov esi, eax
mov edx, [edi+7]

    MOV AX, 4C00h     ; Exit program
    INT 21h
END MAIN
