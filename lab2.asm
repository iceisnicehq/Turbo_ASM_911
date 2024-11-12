.model SMALL
.186
.stack 100h
int 3
maxSize         EQU     256

.data
    file        db      'output.txt', 0
    prompt      db      'Input: ', '$'
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  
    outStr      db      0Dh, 0Ah, 'Output: ','$'
    shrtStr     db      0Dh, 0Ah, 'Too short','$'
    space       db      ?
    buffer      db      maxSize+2 DUP(?)  
.code

Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax 
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
    mov     ah,   14
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
    stosb
    cmp     bx,   4
    jnl     no_error
    mov     ah,   09h
    mov     dx,   offset shrtStr 
    int     21h
    jmp     SHORT exit
no_error:
    sub     cx,   maxSize+2
    not     cx
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
    mov     ah,   03Ch                   
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
    mov     ah,   3Eh
    int     21h
exit:
    mov     ah,   4ch      
    int     21h
    End     Start
