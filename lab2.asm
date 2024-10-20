; limit 256 bytes
; word is everything up to to a \s character
; if the word that needs to be reversed doesnt exist a program should throw an error
; the input is in cmd
; enter should mark the end

; can i use stack - NO
; proccessor model - 386

; С использованием строковых команд собрать в выделенном буфере текст, 
; включающий в себя каждое пятое слово исходного текста. 
; При этом второе слово собранного вами текста должно быть инвертированным по порядку букв. 
; Исходный текст вводится с клавиатуры. 
; Вывод собранного текста – на экран и в файл.
.model SMALL
.386
.stack 100h


.data
    prompt      db      'Enter your prompt:', '$'
    backspace   db      ' ', 08h, '$'  ; Backspace, space, backspace to clear a char
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  ; Carriage return and line feed for formatting
    greeting    db      0Dh, 0Ah, 'Output: ','$'
.data?
    space       db      ?
    buffer      db      256 DUP(?)    ; Reserve space for up to 20 characters
.code
Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax
    mov    space, 20h
    mov     ah,    09h        
    mov     dx,    offset prompt    
    int     21h 

    ; read user input character by character
    mov     di,    offset buffer             ; si will track the number of characters entered
    mov     bp,    di
    add     bp,    35 ; 20 char limit
print_space:
    mov     dl,    20h
    mov     ah,    02h
    int     21h
read_char:
    cmp     di, bp            ; check if the input limit (20 chars) is reached
    je      end_input_limit         ; if yes, ignore further input
    mov     ah,   01h          
    int     21h  
               
    cmp     al,   20h           ; check if enter (carriage return) was pressed
    jne      no_second_space
    dec     di
    scasb
    jne      no_second_space
    mov     dl,   08h
    mov     ah,   02h
    int     21h
    jmp     read_char
no_second_space:
    cmp     al,   0dh           ; check if enter (carriage return) was pressed
    je      end_input          ; if enter is pressed, end input

    cmp     al,   08h           ; check if backspace was pressed
    je      del_character    ; if backspace, jump to handle it

    
    ; store the entered character in the buffer array
    stosb

    ; echo the entered character to the screen


    jmp     read_char          ; continue reading more characters

del_character:
    cmp     di,   offset buffer              ; if no characters were entered, ignore backspace
    je print_space

    dec di                 ; move back in the buffer buffer

    mov ah, 09h            ; dos function: display string
    lea dx, backspace      ; display backspace, space, backspace
    int 21h

    jmp read_char          ; continue reading more characters
end_input_limit:
    mov ah, 09h
    lea dx, limit
    int 21h
end_input:
    int 3
    mov al, 20h   ; add the string terminator after the last character
    stosb
    mov bp, di
    mov di, offset buffer
    mov si, di
    mov bx, 4
space_5th:
        cmp di, bp
        jz no5th
    scasb
    jnz space_5th
    dec bx
    jnz space_5th
        xchg si, di
moving:
    movsb
    cmp al, byte ptr [di]
    jnz moving
    mov byte ptr [di], '$'
    mov bx, 4
    dec di
    cmp di, bp
    jnz space_5th
no5th:
mov al, '$'
stosb

;     mov cx, ax
;     xor ch, ch
;     mov di, offset buffer
;     mov al, 20h
; 5th:
;     ;mov si, di
;     scasb
;     jne iter
;     dec bx
;     jnz  not_5th
;     mov bx, cx
;     mov si 
; not_5th:
; iter:
;     loop 5th


    ; display greeting "hi, "
    mov ah, 09h
    lea dx, greeting
    int 21h

    ; display the entered buffer
    mov ah, 09h
    lea dx, buffer           ; dx points to the buffer buffer
    int 21h                ; display the entered buffer

Exit:
    ; exit the program
    mov ah, 4ch            ; dos function: terminate program
    int 21h
    End Start
