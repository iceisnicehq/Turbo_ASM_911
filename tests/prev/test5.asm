.MODEL SMALL
.486
.STACK 100h  
.data          
    data_segment    DB 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 20h
                    DB 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
                    DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
                    DB 51h, 33h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
                    DB 12h, 33h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 00h
                    DB 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h
                    DB 01h, 02h, 03h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
                    DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h
    ds_ss_spacing   DB 30h dup (0)
    ss_spacing      DB 0c0h dup (0)
    stack_segment   DB 06h, 72h, 0d6h, 0ffh, 00h, 00h, 3eh, 01, 0C1h, 00h, 05h, 00h, 82h, 01h, 05h, 00h
                    DB 82h, 01h, 66h, 01h, 80h, 00h, 01bh, 00h, 0eeh, 00H, 082H, 01H, 057H, 12H, 64H, 00H 
                    DB 0EFH, 11H, 06H, 72H, 46H, 72H, 0D6H, 0FFH, 59H, 00H, 0E6H, 02H, 36H, 30H, 87H, 72H
                    DB 2EH, 01H, 58H, 12H, 57H, 12H, 17H, 7AH, 0BH, 00H, 34H, 12H, 34H, 23H, 78H, 05H
.code
start:
    mov     ax, @data 
    mov     ds, ax
    add     ax, 1h
    mov     es, ax
    add     ax, 30h
    mov     ss, ax
;MOV BP, 0c0h          ; Start at stack offset 0Ch
MOV SI, OFFSET stack_segment  ; Source offset in DS
; add SI, 40h
; sub SI, 4h
MOV CX, 16           ; Number of dwords to move (64 bytes / 4 bytes per dword = 16)
move_data:
    mov eax, dword ptr ds:[si]
    mov [bp], eax
    add Bp, 4
    add SI, 4        ; Move to the next dword in the source
    LOOP move_data   ; Repeat for all dwords
    ;STACK      
    mov     ax, 7a17h
    push    ax
    popf
    mov     sp,  0100h
    mov     eax, 0c27ch   ; initial registers meow meow
    mov     ebx, 1234h    
    mov     ecx, 0063h    
    mov     edx, 0FFD2h    
    mov     esi, 0001h    
    mov     edi, 0011h    
    mov     ebp, 0010h    
    mov     esp, 00FAh  
    mov     cx, 10
    repe    cmpsb
    mov     ax, 33h
    repne   scasb
    and     ax, [si+5]
    cwde
    not     ax
    xor     [di], eax
    and     al, ah
    neg     ax
    test    ax, [si+0FFFFh]
    shl     dword ptr [si+2], 3
    rcr     ax, 1
    or      ax, bx
    sal     word ptr [di], 2
    xor     ax, dx
    sar     word ptr es:[si+2], 5
    lodsw
    xor     bx, ax
    xor     [si+4], ax
    ror     ax, 5
    rcl     al, 3
    rol     byte ptr [si+9], 4
    bt      ax, 5
    btc     dword ptr [si+2], 6
    btr     word ptr [di], 7
    bts     ax, 8
    bsf     ecx, dword ptr [si+6]
    bsr     cx, word ptr [si+8]
    mov ax, 4Ch  
    int 21h
end start
   
