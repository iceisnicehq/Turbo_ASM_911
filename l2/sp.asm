.model small
.186
.stack 100h

    max_len       equ     100

.data
    file          db      "file.txt", 0
    output_msg    db      0dh, 0ah, "OUTPUT: $"
    input_msg     db      "INPUT: ", "$"
    exit_msg 	  db      0dh, 0ah, 0ah, "Press any key to exit...$"
    warn_msg      db      0dh, 0ah, "MAX_LEN REACHED!$"
    error_msg     db      0dh, 0ah, "len_error, 3 words needed!$"
    buffer        db      max_len DUP(20h)

.code
start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    cld 			; cld дает уверенность, что флаг df=0
    mov     ax, 3
    int     10h
    mov     ah, 9
    mov     dx, offset input_msg
    int     21h
    mov     di, offset buffer   ; si для проверки далее (cmp si, di), по итогу si = адрес начала слова для инвертирования
    mov     al, 20h             ; 20h = аски пробел, сделали для ниже cmp al, 32 
    mov     cx, max_len		; число циклов для записи
    dec     di
reset_counter:
    mov     dl, 2               ; слово для записи. ЕСЛИ НУЖНО БУДЕТ ИЗМЕНИТЬ, ТО ЭТО ТУТ (написано 2, но запись 3-го, так как 3-е начинается после 2-го)
    inc     di
save_char_to_mem:  			; эта метка работает далее, для записи, поэтому далььше dec cx (записали, уменьшили число циклов)
    cmp     al, 20h             ; тут, чтобы исключить запись пробелов перед словом и после слова (двойные пробелы слово1__слово2)
    je      save_char_to_dh          ; не сохраняем пробел
    stosb
    dec     cx
save_char_to_dh:
    mov     dh, al              ; в dh сохраняется последний записанный символ (нужно для контроля пробелов)
read_char_wo_save:
    xor     ah, ah              ; функция биоса для считки клавиатуры (ah=00)
    int     16h                 ; прерывание клавиатуры (можно загуглить int 16h)
    cmp     al, 0dh             ; 0dh=enter
    je      input_end		; нажали enter - вышли 
    cmp     al, 80h  	        ; 07Eh last ascii char
    jae     read_char_wo_save       
    cmp     al, 20h    	        ; check if space
    jb      read_char_wo_save           ; if ctrl+key
    jne     not_space           ; not space
    cmp     dh, al              ; check if last char is space
    je      save_char_to_dh          ; if last is space then ignore it, and start reading chars again
    dec     dl                  ; bl - счетчик, задавый в начале в начале 
not_space:
    mov     ah, 0Eh             ; bios func for printing
    int     10h                 ; video display interrupt 
    or      dl, dl              ; если бл=0, то уже записали 2 слова, следовательно след слово - 3-е
    jz      save_char_to_mem          ; тогда записываем  
    js      reset_counter       ; за бл=0, только бл -1, там уже новые 3 слова, и надо восстановить счетчик бл
    loop    save_char_to_dh  
    mov     ah, 9
    mov     dx, offset warn_msg
    int     21h
input_end:
    cmp     di, offset buffer   ; if no words were saved, the quit with err msg
    jne     no_error_len
    mov     ah, 9
    mov     dx, offset error_msg
    int     21h
    jmp     exit
no_error_len:
    mov     al, 20h
    mov     cx, max_len
    mov     ah, 5               ; реверс 5 слова, ТОЖЕ МЕНЯТЬ ТУТ, если надо
    mov     bx, di              ; сохраняем адрес  конца, чтоб потом найти длину всей строки
    mov     di, offset buffer
fifth_word:                   ; ищем слово для реверса
    mov     si, di
    repne   scasb
    dec     ah
    jnz     fifth_word
    dec     di  		; тут дек, так как мы за пробелом в памяти
    cmp     si, di              ; если слова нет, то si=di (нулевая длина)
    je      output
reverse:
    dec     di			; а тут с пробела переходим на уже буквы слова
    cmp     si, di              ; проверка для нечетной длины
    je      output
    mov     al, [si]
    xchg    al, [di]
    mov     [si], al
    inc     si
    cmp     si, di              ; для четной длины
    jne     reverse
output:
    mov     ah, 9 
    mov     dx, offset output_msg
    int     21h
    mov     ah, 3Ch
    xor     cx, cx
    mov     dx, offset file
    mov     di, bx
    int     21h
    mov     cx, di
    mov     dx, offset buffer
    sub     cx, dx
    mov     bx, ax
    mov     ah, 40h
    int     21h   		; zapis v file
    mov     ah, 3Eh		; закрываем файл
    int     21h
    mov     ah, 40h
    mov     bx, 1	 	; standard video display output
    int     21h   		; vivod na ekran
exit:
    mov     ah, 9
    mov     dx, offset exit_msg
    int     21h
    xor     ah, ah		; тут используем функцию для ввода, но ничего не сохраняем, просто чтоб пользователь нажал и прога завершилась, а не сразу после нажатия энтера выше
    int     16h
    mov     ah, 4Ch 
    int     21h
    end     start
