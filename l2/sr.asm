.model small
.186
.stack 100h

.data
    answer        db      "answer.txt", 0
    info_out      db      cr, lf, "___OUTPUT___$"
    warning       db      cr, lf, "Not enough words to convert string. Exiting.$"
    info_in       db      "Enter text: ", "$"
    buffer        db      255 DUP(?)

.code
start:
    mov     ax, @DATA
    mov     ds, ax
    mov     es, ax 
    mov     ax, 0003h ; 80x25 ochistka
    int     10h
    mov     ah, 09h
    mov     dx, offset info_in
    int     21h  
    mov     si, OFFSET buffer ; si for reversing (if word exist)
    mov     bp, si            ; for moving into registers
    mov     di, si            ; for storing 
    mov     al, " "
    mov     cx, maxSize+1
    mov     bl, REVERSED_WORD_NUMBER
store_byte:
    dec     cx              ; decrease number of chars
    cmp     al, " "         ; if word starts with space
    je      bios_input      ;   then dont save it
    stosb
bios_input:
    mov     dh, al          ; save last char
key_input:
    xor     ah, ah          ; func bios 
    int     16h             ; interrupt bios
    cmp     al, cr          ; if enter (0dh)
    je      end_of_line
    cmp     al, "~"         ; 07Eh last ascii char (20h-7Eh)
    ja      key_input       
    cmp     al, " "         ; check if space
    jb      key_input       ; if ctrl+key
    jne     not_space       ; not space
    cmp     dh, al          ; check if last char is space
    je      bios_input      ; if last is space jump to key input 
    inc     bh              ; bh = number of spaces (number of words)
not_space:
    mov     ah, 0Eh         ; bios func for printing
    int     10h             ; video display interrupt 
    cmp     bh, NUMBER_WORD_TO_STORE ; if number of words is 4
    jb      to_loop         ; if words less than 4, then jump to iteration
    je      store_byte      ; if the word is 4th, then store in memory
    stosb                   ; store space in memory (info_out of word)
    xor     bh, bh          ; bh = 0 (number of words)
    dec     bl              ; word to reverse
    jnz     to_loop
    mov     si, di          ; save address of word to reverse
to_loop:
    loop    bios_input  
    mov     ah, 09h
    mov     dx, offset size_limit
    int     21h
end_of_line:
    cmp     bp, di          ; if no words were saved (number of words < 4)
    jne     no_short_string
    mov     ah, 09h
    mov     dx, offset warning
    int     21h
    jmp     exit
no_short_string:
    mov     al, " "        
    cmp     byte ptr [di-1], al ; if last char is space
    je      last_space
    stosb                       ; if not space then put space in memory
last_space:
    cmp     [si], al            ; check if space in word to reverse (it is only " ")
    jbe     output              ; if space or 00h then jump to output
    cmp     si, bp              ; if number of words is less then < poryadok (reversed word) then jmp to output
    je      output
    mov     di, si              ; di = address of word to reverse
    mov     cx, -1              ; just to make cx big
    repne   scasb               
    dec     di
reversing:
    dec     di
    cmp     si, di              ; if nechetnoe chislo bukv
    jz      output
    lodsb
    mov     ah, [di]
    mov     [si-1], ah
    mov     [di], al
    cmp     si, di              ; if chetnoe chislo bukv
    jne     reversing
output:
    mov     ah, 09h 
    mov     dx, offset info_out
    int     21h
    mov     ah, 3Ch
    mov     dx, offset answer
    xor     cx, cx
    int     21h
    mov     bx, ax
    mov     ax, 4000h
    mov     dx, bp
    mov     di, dx
    mov     cx, 0ffffh
    repne   scasb ; 0ffah -> 0005h -> 
    not     cx
    dec     cx
    dec     cx
    int     21h   ; zapis v answer
    mov     ah, 3Eh
    int     21h
    mov     ah, 40h
    mov     bx, 1 ; standard video display output
    int     21h   ; vivod na ekran
exit:
    xor     ah, ah
    int     16h 
    mov     ax, 4C00h      
    int     21h
    info_out     start