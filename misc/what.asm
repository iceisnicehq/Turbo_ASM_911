.model small 
.186
.stack 100h
.data
    FileName        db      "result.txt", 0
    FailText        db      "minimum number of words - 2", 0Dh, 0Ah
    crif            db      0Dh, 0Ah, '$'
    InputText       db      255, 0, 255 DUP('$')
    OutputText      db      256 DUP ('$')
.code
start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    mov     dx, offset InputText
    mov     ah, 0Ah
    int     21h 
    mov     si, dx
    mov     di, offset OutputText
    inc     si
    inc     si
    xor     cx, cx 
    xor     bx, bx 
    xor     bp, bp
Process:    
skip_spaces:
    lodsb
    cmp     al, 20h
    jz      skip_spaces
    cmp     al, 0Dh
    jz      next
    mov     dx, si
    dec     dx
word_loop:
    cmp     al, 20h
    jz      end_word
    cmp     al, 0Dh
    jz      end_word
    lodsb 
    jmp     word_loop
end_word:
    mov     cx, si
    sub     cx, dx
    dec     cx
    inc     bx
    test    bx, 1
    jnz     skip_word
    cmp     bx, 10h
    jnz     write_word
    mov     dx, si
    add     bp, cx
reverse_word:
    dec     si
    dec     si
    movsb
    loop    reverse_word
    mov     si, dx
    cmp     al, 0Dh
    jz      skip_word
    mov     al, 20h
    stosb
    inc     bp
    jmp     skip_word
write_word: 
    add     bp,cx
    mov     si, dx
    rep     movsb
    cmp     al, 0Dh
    jz      skip_word
    mov     al, 20h
    stosb
    inc     bp
skip_word:
    cmp     al, 0Dh
    jnz     Process
next: 
int 3
    mov     dx, offset crif
    mov     ah, 09h
    int     21h
    cmp     bx, 2
    jb      fail
    mov     ah, 3ch
    xor     cx, cx
    mov     dx, offset FileName
    int     21h

    mov     bx, ax 
    xor     al, al
    mov     dx, offset OutputText
    mov     ah, 09h
    int     21h
    mov     cx, bp
    mov     ah, 40h            
    int     21h 
    mov     ah, 08h
    int     21h
    mov     ah, 3eh           
    int     21h
    mov     ah, 4Ch
    int     21h 
fail:
    mov     dx, offset FailText
    mov     ah, 09h
    int     21h
    mov     ah, 08h
    int     21h
    mov     ah, 4Ch
    int     21h 
end start
