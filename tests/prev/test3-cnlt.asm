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
    MOV EAX, 018A8h   ;test
    MOV EBX, 0AB9Bh    ;test2
    MOV ECX, 9F02h    
    MOV EDX, 0024h    


    MOV ESI, 003Eh    
    MOV EDI, 128Bh    

    MOV EBP, 0010h    
    MOV ESP, 00E4h    
int 3
    
    lea di, ds:[si+8h]
    
    mov al, [di-20]
    
    movzx ax, al
    
    mul byte ptr es:[si+2]
    
    cbw 
    
    lodsb 
    
    xchg bx, si
    
    xchg si, es:[bx-10]
    
    sub bx, 30
    
    xlat
    
    add ax, es:[bx+2]
    
    stosw
    
    cwde
    
    bswap eax
    
    sbb ax, dx
    
    cmp ax, bx
    
    movsx si, es:[di+12]
    nop
    ;xadd ax, si
xchg ax, si
add ax, si
    nop
    cbw
    
    imul si
    
    cmpxchg dx, cx
    
    mov cl, es:[10h]
    
    sub cl, 73
    
    mov cx, 7
    
    movzx si, cl
    
    rep movsb
    
    adc dword ptr ds:[si+2], 8
    
    cwde
    
    movsw
    
    les bx, es:[bx+si+18h]



    MOV AX, 4C00h     ; Exit program
    INT 21h

end start
