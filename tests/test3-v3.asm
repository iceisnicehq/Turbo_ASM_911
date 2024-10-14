.MODEL SMALL
.486
.STACK 100h  

.DATA        ; Start of data segment
    data_segment DB 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h
               DB 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h
               DB 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
               DB 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 20h
               DB 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
               DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
               DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
               DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h


.code       
start:
    MOV AX, @data    
    MOV DS, AX
    add ax, 2
mov es, ax
sub ax, 287h
mov ss, ax        
    XOR AX, AX
    ; set flags 
mov ax, 7206h
push ax
popf
cld
    MOV EAX, 01888h   ;test
    MOV EBX, 0AB4Bh    ;test2
    MOV ECX, 9F00h    
    MOV EDX, 0020h    


    MOV ESI, 0030h    
    MOV EDI, 1280h    

    MOV EBP, 0012h    
    MOV ESP, 00E1h    
int 3
    
    mov al, [di-22]              ; Changed offset from 21 to 22, moved this up
    
    lea di, ds:[si+8h]           ; Changed offset from 9h back to 8h, moved this down
    
    movzx ax, al

    bswap eax                    ; Moved bswap eax earlier
    
    mul byte ptr es:[si+4]       ; Changed offset from 3 to 4
    
    lodsw 
    
    cwd                          ; Moved cbw down after lodsb
    
    xchg bx, si
    
    add ax, es:[bx+5h]            ; Changed offset from 1 to 0, moved this up
    
    xchg si, es:[bx-7]          ; Changed offset from 11 to 10
    
    sub bx, 27                   ; Changed subtraction value from 29 to 30, moved this down
    
    stosw                        ; Changed stosb back to stosw (moving word instead of byte)
    
    xlat                         ; Moved xlat down after stosw
    
    cbw
    
    sbb ax, dx
    
    cmp ah, bl                   ; Swapped places with sbb ax, dx
    
    movsx si, es:[di+12]         ; Changed offset from 11 back to 12
    nop
    ;xadd ax, si
xchg ax, si
add ax, si
    nop
    imul si
    
    cbw
    
    cmpxchg dx, cx
    
    mov cl, es:[10h]             ; Changed offset from 11h back to 10h
    
    sub cl, 73                   ; Changed subtraction value from 72 back to 73
    
    mov cx, 5                    ; Changed cx value from 6 back to 7
    
    movzx si, cl
    
    rep movsw                    ; Changed back from movsb to movsw (moving words instead of bytes)
    
    adc dword ptr ds:[si+2], 7   ; Changed offset from 3 back to 2 and addition value from 8 to 7
    
    movsb                        ; Left movsb for final byte move
    
    lss bx, es:[bx+si+18h]       ; Changed offset from 19h back to 18h


    MOV AX, 4C00h     ; Exit program
    INT 21h

end start
