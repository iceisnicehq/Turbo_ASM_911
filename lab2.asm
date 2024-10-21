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

; cld lodsb std stosb
.data
    prompt      db      'Enter your prompt:', '$'
    backspace   db      ' ', 08h, '$'  ; Backspace, space, backspace to clear a char
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  ; Carriage return and line feed for formatting
    greeting    db      0Dh, 0Ah, 'Output: ','$'
    shrtStr       db      0Dh, 0Ah, 'String too short','$'
    space       db      ?
    buffer      db      256 DUP(?)    ; Reserve space for up to 20 characters
    asciiZ      db      ?
.code
Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax

    mov     ah,    09h        
    mov     dx,    offset prompt    
    int     21h 

    ; read user input character by character
    mov     di,    offset space             ; si will track the number of characters entered
    mov     al,    20h
    stosb
    mov     si,    di
    mov     bp,    di
    add     bp,    256 ; 20 char limit
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
    inc     bx
    scasb
    jne      no_second_space
    dec     bx
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
    inc cx
    ; echo the entered character to the screen


    jmp     read_char          ; continue reading more characters

del_character:
    cmp     di,   si              ; if no characters were entered, ignore backspace
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
    cmp bx, 5
    jnl no_error
    mov ah, 09h
    mov dx, offset shrtStr 
    int 21h
    jmp exit
no_error:
    mov al, 0   ; add the string terminator after the last character
    stosb


    mov di, offset buffer
    mov dx, di
    mov si, di
    mov ax, 0420h
    ;xor bp, bp
    ; mov cx, 0ffffh
    ; cld
    ; repnz scasb
    ; not cx
    ; dec cx ; cx = strlen
    mov dh, 2
fifth_wrd:
    scasb
    jnz skip
    dec ah
    jnz skip
moving:
    ; mov al, 20h
    ;mov dl, cl
    xor cx, cx
    not cx
    cld
    repnz scasb
    not cx
    dec dh
    jnz not_reverse
    mov ah, cl
    dec di 
    dec di
    xchg si, di
reverse:
; mov al, 20h
    movsb
    dec si
    dec si
    loop reverse
    ;mov cl, ah
    mov cl, al
    add si, cx
    mov dh, 2
    jmp reset
; 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h, 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h, 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
not_reverse:
    sub di, cx
    ;add bp, cx
    ;sub bx, cx
    xchg si, di
    rep movsb
reset:
    cmp   bp, di
    jle   output
    xchg si, di
    ;mov cx, bx
    mov ah, 4
skip:
    loop fifth_wrd
output:
    xchg si, di
    dec di
    mov al, 0
    stosb
    mov cx, di
    ; mov cx, di
    ; mov ax, 0120h
    ; mov di, offset buffer
    ; mov si, di


    mov ah, 09h
    lea dx, greeting
    int 21h
    mov dx, offset buffer
    sub cx, dx
    
    MOV BX, 1       ; BX = pointer to string
    ;MOV CX, bp       ; CX = length of string (from StrLength)

    MOV AH, 40h      ; DOS function: write to file or device
    INT 21h          ; Call DOS (AX will hold the number of chars written)

exit:
    ; exit the program
    mov ah, 4ch            ; dos function: terminate program
    int 21h
    End Start
