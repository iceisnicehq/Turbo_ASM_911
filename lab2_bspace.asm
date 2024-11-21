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
    mov     dx,    OFFSET prompt    
    int     21h 
    mov     di,    OFFSET space
    mov     al,    20h
    stosb 
    mov     si,    di
    mov     cx,    maxSize
read_char:
    xor     ah,   ah
    int     16h 
    cmp     al,   0Dh           
    je      end_input
    cmp     al,   09h
    je      no_space
    cmp     al,   7Fh
    jae     read_char
    cmp     al,   08h      
    jne     no_backspace  
    cmp     di,   si       
    je      read_char
    mov     al,   20h
    dec     di  
    scasb
    jne     not_space
    dec     bx
not_space:
    dec     di
    inc     cx
    mov     ax,   0E08h
    int     10h
    mov     al,   20h    
    int     10h
    mov     al,   08h
    int     10h
    jmp     read_char
no_backspace:
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
    mov     dx,   OFFSET limit
    int     21h
end_input:
    mov     ax,   0020h
    dec     di
    scasb
    jne     no_last_space
    dec     bx
    inc     cx
no_last_space:
    sub     cx,   maxSize+2
    not     cx
    stosw
    cmp     bx,   4
    jnl     no_error
    mov     ah,   02h         
    xor     bh,   bh
    xor     dx,   dx
    int     10h              
    mov     si,   cx
    mov     ax,   1301h
    mov     bx,   000Ch
    mov     bp,   OFFSET error
    mov     cx,   lenError
    int     10h 
    mov     cx,   si
    mov     ax,   0E20h
clsLine:
    int     10h
    loop    clsLine
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
    mov     dx,   OFFSET outStr
    int     21h
    mov     dx,   OFFSET file            
    mov     ah,   03Ch                   
    int     21h 
    mov     dx,   bx
    not     bx
    mov     cx,   si
    add     cx,   bx
    mov     bx,   ax 
    mov     ah,   40h      
    int     21h
    mov     ah,   3Eh
    int     21h
    mov     bx,   1   
    mov     ah,   40h      
    int     21h     
exit:
    mov     ah,   02h
    xor     bh,   bh
    mov     dx,   0700h
    int     10h
    mov     ax,   1301h                
    mov     bx,   0087h   
    mov     bp,   OFFSET ending
    mov     cx,   lenEnd
    int     10h 
    xor     ah,   ah
    int     16h
    mov     ax,    0003h
    int     10h 
    mov     ax,   4C00h      
    int     21h
    End     Start
