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
    mov     ax,    0003h
    int     10h 
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
    cmp     al,   0Dh           
    je      end_input
    cmp     al,   7Fh
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
    mov     ah,   0Eh
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
    mov     ah,   02h         
    xor     bh,   bh
    xor     dx,   dx
    int     10h              
    mov     si,   cx
    mov     ax,   1301h
    mov     bx,   000Ch
    mov     bp,   offset error
    mov     cx,   8
    int     10h 
    mov     cx,   si
cll:
    mov     ax,   0E20h
    int     10h
    loop    cll
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
    mov     cx,   0FFFFh
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
    int     10h
exit:
    mov     ah,   02h
    xor     bh,   bh
    mov     dh,   7
    int     10h
    mov     ax,   1301h                
    mov     bx,   0087h   
    mov     bp,   offset ending
    mov     cx,   26
    int     10h 
    xor     ah,   ah
    int     16h
    mov     ax,    0003h
    int     10h 
    mov     ax,   4C00h      
    int     21h
    End     Start
