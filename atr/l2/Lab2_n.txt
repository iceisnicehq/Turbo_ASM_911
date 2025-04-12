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
    reverse_string      db      256 dup (?)
    answer              db      256 dup (?)
     
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
    add     si, 255
    xor     dx, dx
    
entering:    
    mov     ah, 07h
    int     21h
      
    cmp     al, 0Dh
    je      ending
    
    cmp     al, 0
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
    
    inc     bl
    cmp     dl, al
    jne     normal_entering_not_space
    dec     bl
    jmp     entering

normal_entering_not_space:    
    
    mov     ah, 02h
    mov     dl, al
    int     21h
    
    cmp     bl, 4
    jl      looping
    jne     space_5
    cmp     dh, 5
    jne     not_reverse
    mov     [si], al
    dec     si
    inc     bp
    inc     bh
    jmp SHORT looping
    
not_reverse:
    stosb
    inc     bp
    jmp SHORT looping

space_5:
    mov     bl, 0
    inc     dh
    cmp     dh, 6     
    jne     looping
    mov     dh, cl
    mov     cl, bh 
    rep     movsb
    mov     cl, dh
    

looping:   
    loop    entering


ending:
    or      bp, bp
    jne     not_error
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
    mov     bx, dx
    mov     dx, offset file_name
    int     21h
    
    mov     dx, bx
    cmp     dh, 5
    jne     normal_ending
    mov     cl, bh
    rep     movsb
    
normal_ending:
    mov     si, ax    
    mov     ah, 09h
    mov     dx, offset crlf
    int     21h
    
    mov     dx, offset result_string
    int     21h
    
    mov     ax, 4020h
    xor     bx, bx
    mov     dx, offset answer
    dec     di
    scasb
    jne     continue_ending
    dec     bp
continue_ending:    
    inc     dx
    dec     bp
    mov     cx, bp
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