.model small
.386
.stack 100h

.data
    
    start_string        db      "Enter Your string, please: $"
    result_string       db      "Your string: $"
    end_string          db      "Press any key to end this program"
    error               db      "Error, too few words$"
    file_name           db      "Answer.txt", 0
    crlf                db      0Dh, 0Ah, 0Dh, 0Ah, '$'
    answer              db      255 dup (?)
    reverse_string      db      255 dup (?)
    counter_symbols_rev dw      ?
    
     
.code
    
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset start_string
    mov     ah, 09h
    int     21h
    
    mov     cx, 256
    mov     di, offset answer
    mov     si, offset reverse_string
    add     si, 254
    xor     dx, dx
    
entering:    
    mov     ah, 07h
    int     21h
      
    cmp     al, 0Dh
    je      ending
    
    cmp     al, 07Fh
    jae     entering
    
    or      al, al
    jne     normal_entering
    mov     ah, 07h
    int     21h
    jmp     entering

normal_entering:
    cmp     al, 20h
    jb      entering
    jne     normal_entering_not_space
    or      dl, dl
    jz      entering 
    
    inc     dh
    cmp     dl, al
    jne     normal_entering_not_space
    dec     dh
    jmp     entering

normal_entering_not_space:    
    mov     ah, 02h
    mov     dl, al
    int     21h
    
    cmp     dh, 3
    jl      looping
    jne     space_5
    cmp     bh, 2
    jne     not_reverse
    mov     [si], al
    dec     si
    inc     bl
    inc     counter_symbols_rev
    jmp SHORT looping
    
not_reverse:
    stosb
    inc     bl
    jmp SHORT looping

space_5:
    xor     dh, dh
    inc     bh
    cmp     bh, 3     
    jne     looping
    mov     bh, cl
    mov     cx, counter_symbols_rev 
    rep     movsb
    mov     cl, bh
    

looping:
    loop    entering

ending:
    cmp     bl, 1
    ja      not_error
    mov     ah, 09h
    mov     dx, offset crlf
    int     21h
    
    mov     ah, 09h
    mov     dx, offset error
    int     21h
    jmp     press_any_key_to_end
    
not_error:
    mov     ah, 03Ch
    xor     cx, cx
    mov     dx, offset file_name
    int     21h
    
    cmp     bh, 5
    jne     normal_ending
    mov     cx, counter_symbols_rev
    rep     movsb
    
normal_ending:
    mov     si, ax
    
    mov     ah, 09h
    mov     dx, offset crlf
    int     21h
    
    mov     dx, offset result_string
    int     21h

    mov     ax, 4020h
    dec     di
    scasb
    jne     continue_ending
    dec     bl
continue_ending:    
    dec     bl
    mov     cl, bl
    xor     bx, bx
    mov     dx, offset answer
    inc     dx
    int     21h
    
    mov     ah, 40h
    mov     bx, si
    int     21h
    
    mov     ah, 03Eh
    int     21h
    
press_any_key_to_end:    
    mov     ah, 09h
    mov     dx, offset crlf
    int     21h
    
    mov     ah, 40h
    xor     bx, bx
    mov     dx, offset end_string
    mov     cx, 33
    int     21h
    
    mov     ah, 07h
    int     21h
    
    mov     ah, 4Ch
    int     21h

    end Start