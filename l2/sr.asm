.model small
.186
.stack 100h

.data
    answer        db      "answer.txt", 0
    info_out      db      13, 10, "Formatted text: $"
    warning       db      13, 10, "Minimal len = 6 words.$"
    info_in       db      "Raw text: ", "$"
    exit_msg 	  db      13, 10, 13, 10, "Press any key...$"
    buffer        db      255 DUP(" ")

.code
start:
    mov     ax, @DATA
    mov     ds, ax
    mov     es, ax
    cld 			; cld ничего не делает по факту, но дает уверенность, что флаг df=0, по отсутвию этой команде был доеб на защите
    mov     ah, 9
    mov     dx, offset info_in
    int     21h
    mov     si, offset buffer   ; si для проверки далее (cmp si, di), по итогу si = адрес начала слова для инвертирования
    mov     di, si              ; для записи в es:di
    mov     al, 32              ; 32 = аски пробел, сделали для ниже cmp al, 32 
    mov     cx, 255		; число циклов для записи
    mov     bl, 5		; каждое 6 слово (5 - так как 6-оое слово начинается после 5-го)
    jmp     bios_input          ; прыжок на считку
store_byte:  			; эта метка работает далее, для записи, поэтому далььше dec cx (записали, уменьшили число циклов)
    dec     cx                  ; уменьшили число циклов
    cmp     al, 32              ; тут, чтобы исключить запись пробелов перед словом и после слова (двойные пробелы слово1__слово2)
    je      bios_input          ; не сохраняем пробел ЭТИМ стосб
    stosb
bios_input:
    mov     bh, al              ; в dh сохраняется последний записанный символ (нужно для контроля пробелов)
key_input:
    xor     ah, ah              ; функция биоса для считки клавиатуры (ah=00)
    int     16h                 ; прерывание клавиатуры (можно загуглить int 16h)
    cmp     al, 13              ; 13=enter
    je      end_of_line		; нажали enter - вышли 
    cmp     al, 128  	        ; 07Eh last ascii char
    jae     key_input       
    cmp     al, 32    	        ; check if space
    jb      key_input           ; if ctrl+key
    jne     not_space           ; not space
    cmp     bh, al              ; check if last char is space
    je      bios_input          ; if last is space then ignore it, and start reading chars again
    dec     bl                  ; bl = число слов
not_space:
    mov     ah, 14              ; bios func for printing
    int     10h                 ; video display interrupt 
    or      bl, bl              ; если бл=0, то уже записали пять слов, следовательно след слово - 6-ое
    jz      store_byte          ; тогда записываем  
    jns     to_loop             ; за бл=0, только бл -1, там уже новые 6 слов, и надо восстановить счетчик бл
    mov     bl, 5
    inc     di
to_loop:
    loop    bios_input  
end_of_line:
    cmp     di, offset buffer   ; if no words were saved (number of words < 4)
    jne     no_short_string
    mov     ah, 9
    mov     dx, offset warning
    int     21h
    jmp     exit
no_short_string:
    mov     dx, di              ; сохраняем адрес  конца, чтоб потом найти длину всей строки
    mov     al, 32
;    cmp     si, offset buffer              ; случай общий, но не для тебя, тут кейс такой, что если бы у тебя было например второе слово, то после записи одного слова и нажатия энтера, реверсать было бы нечего, поэтому сам реверс надо скипнуть
 ;   je      output
    mov     cx, 255
    mov     ah, 1               ; реверс первого слова
    mov     di, offset buffer
find_reverse:
    mov     si, di
    repne   scasb
    dec     ah
    jnz     find_reverse
    dec     di  		; тут дек, так как мы за пробелом в памяти
    cmp     [di-1], al
    je      output
reversing:
    dec     di			; а тут с пробела переходим на уже буквы слова
    cmp     si, di              ; проверка для нечетной длины
    jz      output
    lodsb
    mov     ah, [di]
    mov     [si-1], ah
    mov     [di], al
    cmp     si, di              ; для четной длины
    jne     reversing
output:
    mov     cx, dx
    sub     cx, offset buffer 
    mov     ah, 9 
    mov     dx, offset info_out
    int     21h
    mov     ah, 3Ch
    mov     di, cx
    xor     cx, cx
    mov     dx, offset answer
    int     21h
    mov     cx, di
    mov     bx, ax
    mov     dx, offset buffer
    mov     ah, 40h
    int     21h   		; zapis v answer
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
