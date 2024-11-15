; clean screen with ERROR msg if string is short
; show user output before exitting
; maybe add smth like press any key to exit

.model SMALL
.186
.stack 100h

maxSize         EQU     256

.data
    file        db      'output.txt', 0
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  
    ending      db      0Dh, 0Ah, 'Press any key to exit...', '$'
    outStr      db      0Dh, 0Ah, 'Output: ','$'
    error       db      'lenError','$'
    prompt      db      'Input: ', '$'
    space       db      ?
    buffer      db      maxSize+2 DUP(?)  
.code

Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax
    xor ah, ah
    mov ax, 3
    int 10h 
    mov     ah,    09h      
    mov     dx,    offset prompt    
    int     21h 
    mov     di,    offset space
    mov     al,    20h
    stosb 
    mov     si,    di
    mov     cx,    maxSize
read_char:
    xor     ah,   ah
    int     16h 
    cmp     al,   0dh           
    je      end_input
    cmp     al,   7fh
    jae     read_char
    cmp     al,   20h
    jb      read_char
    jne     no_space
    inc     bx  
    dec     di
    scasb
    jne     no_space
    dec     bx
    jmp     read_char   
no_space:
    mov     ah,   0eh
    int     10h
    stosb
    loop    read_char  
end_input_limit:
    mov     ah,   09h
    mov     dx,   offset limit
    int     21h
end_input:
    mov     al,   20h
    dec     di
    scasb
    jne     no_last_space
    dec     bx
    inc     cx
no_last_space:
    sub     cx,   maxSize+2
    not     cx
    stosb
    cmp     bx,   4
    jnl     no_error
    mov ah, 02h         
    xor bh, bh           ; Page number (0)
    xor dx, dx            ; Row (0, where the prompt is)           ; Column (8, where input starts)
    int 10h              ; Set cursor position

    mov si, cx
    mov ax, 1301h                ; Display string function             ; Update cursor after printing
    mov bx, 0007h                ; Display page 0              ; White on black text attribute
    mov bp, offset error                 ; Offset of the string
    mov cx, 8                  ; Length of the string (excluding '$')
    int 10h                    ; Call BIOS interrupt
    mov cx, si
cll:
    mov     ax,   0e20h
    int     10h
    loop    cll
    ; Write spaces to clear the input line

    jmp     SHORT exit
no_error:
    mov     di,   si
    mov     bx,   si
    mov     ax,   0420h
    mov     dh,   2
fifth_wrd:
    scasb
    jne     skip
    dec     ah
    jnz     skip
    scasb
    jnb     output
    dec     di
    mov     dl,   cl
    mov     cx,   0ffffh
    repnz   scasb
    not     cx
    sub     dl,   cl
    dec     dh
    jnz     not_reverse
    mov     ah,   cl
    dec     di 
    dec     di
    xchg    si,   di
reverse:
    movsb
    dec     si
    dec     si
    loop    reverse
    mov     cl,   ah
    add     si,   cx
    inc     si
    inc     si
    jmp     SHORT reset
not_reverse:
    sub     di,   cx
    xchg    si,   di
    rep     movsb
reset:
    mov     cl,   dl
    xchg    si,   di
    mov     ah,   4
skip:
    loop    fifth_wrd
output:
    mov     ah,   09h
    mov     dx,   offset outStr
    int     21h
    mov     dx,   offset file            
    mov     ah,   03ch                   
    int     21h 
    mov     dx,   bx
    not     bx
    mov     cx,   si
    add     cx,   bx
    mov     bx,   ax 
    mov     ah,   40h      
    int     21h
    mov     bx,   1   
    mov     ah,   40h      
    int     21h     
    mov     ah,   3eh
    int     21h
exit:
    mov ah, 02h                ; Set cursor position function
    xor bh, bh                ; Display page 0
    mov dh, 7                  ; Row (10th line, 0-based)
    int 10                    ; Call BIOS interrupt

    mov ax, 1301h                ; Display string function             ; Update cursor after printing
    mov bx, 0007h                ; Display page 0              ; White on black text attribute
    mov bp, offset ending                 ; Offset of the string
    mov cx, 26                  ; Length of the string (excluding '$')
    int 10h                    ; Call BIOS interrupt

    xor     ah,   ah
    int     16h
    mov     ax,   4c00h      
    int     21h
    End     Start
