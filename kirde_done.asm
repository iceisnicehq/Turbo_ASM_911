.model SMALL
.186
.stack 100h

maxSize         EQU     256

.data
    file        db      'output.txt', 0
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  
    ending      db      0Dh, 0Ah, 'Press any key to exit...', 0
    lenEnd      EQU     $ - ending - 1
    outStr      db      0Dh, 0Ah, 'Output: ','$'
    error       db      'lenError','$'
    lenError    EQU     $ - error - 1
    prompt      db      'Input: ', '$'
    bufBeg      db      ?
    buffer      db      maxSize-2 DUP(?)
    bufEnd      db      ?
.code

Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax 
    mov     ax,    0003h
    int     10h 
    mov     ah,    09h      
    mov     dx,    OFFSET prompt    
    int     21h 
    mov     di,    OFFSET bufBeg
    mov     al,    20h
    mov     si,    di
    mov     cx,    maxSize+1
    mov     bl,    2
reset_space:
    dec     bl
    jnz     not_third
    mov     bp,    di
not_third:
    xor     bh,   bh
    dec     cx
read_char:
    mov     dh,   al
    xor     ah,   ah
    int     16h 
    cmp     al,   0Dh           
    je      end_input
    cmp     al,   7Fh
    jae     read_char
    cmp     al,   20h
    jb      read_char
    jne     no_space
    inc     bh
    cmp     al,   dh
    jne     no_space
    dec     bh
    jmp     read_char   
no_space:
    mov     ah,   0Eh
    int     10h
    cmp     bh,   3
    ja      reset_space
    jne     not_storing
    stosb
not_storing:
    loop    read_char  
end_input_limit:
    mov     ah,   09h
    mov     dx,   OFFSET limit
    int     21h
end_input:
    cmp     si, di
    jnz     no_error
    jmp     SHORT exit
no_error:
    mov    al, 20h
    stosb
    dec    di
; reversing
    inc    si
    sub    di, si  ; length of the  string 
    mov    bx, di
    xchg   si, bp  ; bp is the beggining of the third word
    inc    si
    mov    di, si

    ;inc     si   ; si = offset buffer
    ; mov     al,  20h
    mov     cx,   0FFFFh
    repnz   scasb
    not     cx
    dec     cx
    mov     di,  offset bufEnd
    mov     dx,  cx
moving:
    movsb
    dec    di
    dec    di
    loop   moving
    xchg   di, si
    inc    si
    mov    cx, dx
    sub    di, cx
    rep    movsb
output:
    mov     ah,   09h
    mov     dx,   OFFSET outStr
    int     21h
    mov     dx,   OFFSET file            
    mov     ah,   03Ch                   
    int     21h
    mov     dx,   bp 
    mov     cx,   bx
    mov     bx,   ax 
    mov     ah,   40h      
    int     21h
    mov     ah,   3Eh
    int     21h
    mov     bx,   1   
    mov     ah,   40h      
    int     21h     
exit:
    mov     ax,   4C00h      
    int     21h
    End     Start
