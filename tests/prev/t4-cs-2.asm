.MODEL SMALL
.486
.STACK 100h  
.data          
    data_segment    DB 12h, 33h, 34h, 28h, 0B2h, 7Ah, 0C3h, 0BAh, 0AEh, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h
                    DB 01h, 02h, 03h, 28h, 00h, 06h, 07h, 08h, 01h, 0Ah, 10h, 0CFh, 0Dh, 0Eh, 0Fh, 00h
                    DB 01h, 02h, 03h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
                    DB 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 20h
                    DB 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
                    DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
                    DB 51h, 33h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
                    DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
.code       
start:
    mov     ax, @data    ; data segments meow meow with changes btw
    mov     ds, ax
    add     ax, 1h
    mov     es, ax
    add     ax, 02Eh
    mov     ss, ax        
    lahf
    or      ah,  00010101b
    sahf
    mov     eax, 0c27ch   ; initial registers meow meow
    mov     ebx, 1234h    
    mov     ecx, 0063h    
    mov     edx, 0FFD2h    
    mov     esi, 0001h    
    mov     edi, 0011h    
    mov     ebp, 0010h    
    mov     esp, 00FAh  
    mov cx, 10        ; the test itself 
    repe cmpsb
    mov ax, 33h
    repne scasb
    and ax, [si+5]
    cwde
    not ax
    xor [di], eax
    and al, ah
    neg ax
    test ax, [si+0FFF2h]
    shl dword ptr [si+2], 3
    rcr ax, 1
    shrd ax, bx, 5
    sal word ptr [di], 2
    xor ax, dx
    sal word ptr es:[si-2], 5
    shr byte ptr [di+0FFF0h], 3
    lodsw
    shld bx, ax, 10
    xor bx, ax
    ;int 3
    ;mov     ax,     0FFFFh
    ror ax, 5
    rcl al, 3
    rol byte ptr [si-4], 3
    bt ax, 5
    btc dword ptr [si-22], 6
    btr di, 7
    bts ax, 8
    bsf ecx, dword ptr [si-4]
    bsr cx, word ptr [si+6]

    mov ax, 4Ch  
    int 21h
end start
   
