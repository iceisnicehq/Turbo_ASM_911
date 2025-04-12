.model small
.386
.stack 100h

.data
    start_string        db      "Enter Your string, please: $"
    result_string       db      "Your string: $"
    end_string          db      "Press any key to end this program"
    crlf                db      0Dh, 0Ah, '$'
    string              db      256 dup (?)
    answer              db      256 dup (?)
    length_difference   db      14 dup (20h)
    length_differencee  db      1400 dup (20h) 
.code
    
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset start_string
    mov     ah, 09h
    int     21h
    
    mov     cx, 256
    mov     di, offset string
    mov     si, offset answer
    
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
    ;cmp     di, offset 
    inc     bx
    
    dec     di
    scasb
    jne     normal_entering_not_space
    dec     bx
    jmp     entering

normal_entering_not_space:    
    stosb
    
    mov     ah, 02h
    mov     dl, al
    int     21h
    
    cmp     bx, 4
    jl      looping
    jne     space_5
    dec     di
    mov     al, [di]
    mov     [si], al
    inc     si
    inc     di
    inc     bp 
    jmp SHORT looping

space_5:
    mov     bx, 0

looping:   
    loop    entering
    

ending:
    mov     ah, 02h
    xor     bx, bx
    xor     dx, dx
    int     10h
    
    mov     ah, 09h
    mov     dx, offset result_string
    int     21h
    
    mov     ah, 40h
    xor     bx, bx
    mov     dx, offset answer
    inc     dx
    mov     cx, bp
    dec     cx
    int     21h
    
    mov     ah, 09h
    mov     dx, offset crlf
    int     21h
    
    mov     ah, 40h
    mov     dx, offset end_string
    mov     cx, 33
    int     21h
    
    mov     ah, 07h
    int     21h
    
    mov     ah, 4Ch
    int     21h

    end Start