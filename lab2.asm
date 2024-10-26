; limit 256 bytes
; word is everything up to to a \s character
; if the word that needs to be reversed doesnt exist a program should throw an error
; the input is in cmd
; enter should mark the end

; can i use stack - NO
; proccessor model - 386

; need to RESET VALS

; С использованием строковых команд собрать в выделенном буфере текст, 
; включающий в себя каждое пятое слово исходного текста. 
; При этом второе слово собранного вами текста должно быть инвертированным по порядку букв. 
; Исходный текст вводится с клавиатуры. 
; Вывод собранного текста – на экран и в файл.


; C:\>auto
; Enter your prompt: @ ff f f f @@@ @ @ @ @ @ @ FFFF FFF FFFFE

; Output: f @ FFFFE  @@@
; C:\>auto
; Enter your prompt: gg ddr cgcg gct ftctc g @ @gh @ @GDHqq@ @@ @ @ @ HJDHC

; Output: ftctc @qqHDG@
; C:\>

; 4th7fdnui ngn nefgn reb gr erbg reh 435893458934759834 @@@ 3w49 #@*@ *2r98hwesro fj(*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@
; LIMIT REACHED
; Output: 73 iundf7ht4387t743jt
; C:\>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; Bad command or filename - "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

; C:\>auto
; Enter your prompt: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; LIMIT REACHED
; String too short
; C:\>auto
; Enter your prompt: 
; @ @@@@@@@@@@@@@@@@@@@ @ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; LIMIT REACHED
; String too short
; C:\>

.model SMALL
.386
.stack 100h
maxSize         EQU     256

; cld lodsb std stosb
.data
    file        db      'output.txt', 0
    prompt      db      'Enter your prompt:', '$'
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  ; Carriage return and line feed for formatting
    greeting    db      0Dh, 0Ah, 'Output: ','$'
    shrtStr     db      0Dh, 0Ah, 'Too short','$'
    space       db      ?
    buffer      db      maxSize+1 DUP(?)    ; Reserve space for up to 20 characters
.code
Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax ; for es:di
    

    mov     ah,    09h       ; print string
    mov     dx,    offset prompt    
    int     21h 

    ; read user input character by character
    mov     di,    offset space             ; si will track the number of characters entered
    mov     al,    20h
    stosb
    mov     si,    di
    mov     cx,    maxSize
    ;  mov     bp,    di
    ;  add     bp,    maxSize ; 20 char limit
print_space:
    mov     dl,    20h
    mov     ah,    02h
    int     21h

read_char:
    xor     ah,   ah
    int     16h 
    or      al,   al
    jz      read_char 
    mov     dl,   al
    mov     ah,   02h
    int     21h
    cmp     al,   20h           ; check if enter (carriage return) was pressed
    jne     no_second_space
    inc     bx   ; a a a a with space at the end still prints
    dec     di
    scasb
    jne     no_second_space
    dec     bx
    mov     dl,   08h
    mov     ah,   02h
    int     21h
    jmp     read_char
no_second_space:
    cmp     al,   0dh           ; check if enter (carriage return) was pressed
    je      end_input          ; if enter is pressed, end input

    cmp     al,   08h           ; check if backspace was pressed
    jne     no_backspace    ; if backspace, jump to handle it
    cmp     di,   si              ; if no characters were entered, ignore backspace
    je      print_space
    mov al, 20h
    dec di                 ; move back in the buffer buffer
    scasb
    jne not_space
    dec bx
not_space:
    dec di
    mov ah, 02h            ; dos function: display string
    mov dl, al      ; display backspace, space, backspace
    int 21h
    mov dl, 08h
    int 21h
    jmp read_char
no_backspace:
    ; store the entered character in the buffer array
    stosb
    ; echo the entered character to the screen
    loop     read_char          ; continue reading more characters

end_input_limit:
    mov ah, 09h
    mov dx, offset limit
    int 21h
end_input:
LOCALS @@
    mov al, 20h
    dec di
    scasb
    jne @@skip
    dec bx
@@skip:
    int 3
    cmp bx, 4
    jnl no_error
xor bx, bx
    mov ah, 09h
    mov dx, offset shrtStr 
    int 21h
    jmp exit
no_error:
    mov al, 20h   ; add the string terminator after the last character
    stosb
    sub cx, 258
    not cx

    mov di, si
    mov bx, si
    mov bp, di
    add bp, cx
    ;mov si, di
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
    mov dl, cl
    mov cx, 0ffffh
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
   ; mov cl, ah
    mov cl, ah
    add si, cx
    inc si
    inc si
    ; mov dh, 2
    jmp reset
; 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h, 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h, 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
; aa bb cc dd 5ASD tt yy rr ii 6ASD 00 33 44 55 7ASD 88 22 11 55 8ASD 99 00 00 99   9ASD
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
    mov cl, dl
    mov ah, 4
skip:
    loop fifth_wrd
output:
    xchg si, di
    sub cx, bx
add cx, di
mov bp, cx
    mov al, 0
    stosb



    mov ah, 09h
    mov dx, offset greeting
    int 21h
    mov dx, offset buffer
    mov si, dx
; sub cx, bx
; add cx, di
; mov bp, cx
; not bx
; mov cx, bx
    MOV BX, 1       ; BX = pointer to string
    ;MOV CX, bp       ; CX = length of string (from StrLength)

    MOV AH, 40h      ; DOS function: write to file or device
    INT 21h          ; Call DOS (AX will hold the number of chars written)
mkFile:
    mov    dx,    offset file            
    mov    ah,    03Ch                   
    xor    cx,    cx                     
    int    21h   
wrFile:
    mov    dx,    si
    mov    cx,    bp
    mov    bx,    ax
    mov    ah,    40h
    int    21h
clFile:
    mov    ah,    3Eh
    int    21h
exit:
    ; exit the program
    mov ah, 4ch            ; dos function: terminate program
    dec al 
    int 21h
    End Start
