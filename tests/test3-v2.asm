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
    MOV EAX, 015B8h   ;test
    MOV EBX, 0AC91h    ;test2
    MOV ECX, 9F20h    
    MOV EDX, 0028h    


    MOV ESI, 0040h    
    MOV EDI, 11BBh    

    MOV EBP, 0015h    
    MOV ESP, 00D4h    
int 3
    
    lodsb                        ; Moved this up for earlier loading
    
    lea di, ds:[si+Ah]           ; Changed offset from 9h to Ah
    
    mov al, [di-22]              ; Changed offset from 21 to 22
    
    xchg bx, si
    
    mul byte ptr es:[si+4]       ; Changed offset from 3 to 4
    
    movzx ax, al
    
    xchg si, es:[bx-12]          ; Changed offset from 11 to 12
    
    sub bx, 28                   ; Changed subtraction value from 29 to 28
    
    cbw 
    
    xlatb
    
    add ax, es:[bx+0]            ; Changed offset from 1 to 0
    
    stosw                        ; Changed back from stosb to stosw (moving word)
    
    cwde
    
    cmp ax, bx                   ; Moved cmp here for earlier comparison
    
    movsx si, es:[di+10]         ; Changed offset from 11 to 10
    
    sbb ax, dx                   ; Moved sbb ax, dx after comparison
    nop
    ;xadd ax, si
xchg ax, si
add ax, si
    nop
    bswap eax
    
    mul si
    
    cmpxchg dx, cx
    
    mov ch, es:[12h]             ; Changed offset from 11h to 12h
    
    sub cl, 71                   ; Changed subtraction value from 72 to 71
    
    mov cx, 5                    ; Changed cx value from 6 to 5
    
    movzx si, cl
    
    adc dword ptr ds:[si+4], 9   ; Changed offset from 3 to 4 and addition value from 8 to 9
    
    rep movsw                    ; Changed back from movsb to movsw (moving words instead of bytes)
    
    movsb                        ; Left movsb after rep movsw for final byte move
    
    cwde
    
    les bx, es:[bx+si+1Ah]       ; Changed offset from 19h to 1Ah




    MOV AX, 4C00h     ; Exit program
    INT 21h

end start
