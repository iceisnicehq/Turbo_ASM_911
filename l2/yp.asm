.model small
.186
.stack 100h
maxSize                 EQU     100 ; число записываемых символов - актуальное колво в десятичке, ве может перевести в 16СС, тогда перевод в голове условно, сколько макс символов у вас
space                   EQU     20h
ctrl_backspace          EQU     7Fh
.data
    ; 0 - нулевой байт для использования функции с названием файла, там нужен ACCII Z, 13 - возврат каретки в начало (читай курсора), 10 - новая строка 
    ; $ - обозначение конца строки, для некоторых функций (например ah=09 int 21h)
    file_name           db      'out.txt', 0
    max_length          db      13, 10, 'Max size reached','$'  
    output_message      db      13, 10, 'Output: ','$', 13, 10
    error               db      13, 10, 'Not enough words to do the operation','$',13, 10
    input_message       db      'Input: ', '$'
    len                 dw      ? ; адрес начала реверс слова
    beginning           db      ? ; начальный адрес всей строчки, сюда вложим пробел для отсутствия ошибок
    buffer              db      maxSize-1 DUP(?) ; создаем область в памяти для заполнения символами с клавиатуры
.code
start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax 
    mov     ax, 0003h ; функция биоса 
    int     10h     
    mov     dx, offset input_message ; вывод начального сообщения
    mov     ah, 09h
    int     21h
    mov     di, OFFSET beginning
    mov     al, space
    mov     si, di
    mov     cx, maxSize+1
    mov     dl, 6 ; параметр инвертирумого слова, тут напрямую, какая цифра написана, такое и будет инвертироваться
reset_space:
    dec     dl ; проверка на инвертируемое слово
    jnz     not_third
    mov     len, di ; адрес инвертируемого слова
    inc     len
not_third:
    xor     bh, bh
    dec     cx 
bios_input:
    mov     dh, al
no_remember:
    xor     ah, ah
    int     16h 
    cmp     al, 13     
    je      enter_is_pressed_check_one
    cmp     al, ctrl_backspace
    jae     no_remember      
    cmp     al, space
    jb      no_remember
    jne     without_space
    inc     bh
    cmp     al, dh
    cmp     dh, space
    jne     without_space
    dec     bh
    jmp     bios_input   
without_space:
    mov     ah, 0Eh ; функция вывода символа
    int     10h
    cmp     bh, 3 ; параметр, который отвечает за вывод n слова (это n-1, то есть если тут 1, то выведется 2 (2-1=1) слово, ВЕ говорит править эти параметры, готовьтесь)
    ja      reset_space
    jne     skip_stosb
    cmp     al, space
    jb      bios_input
    cld
    stosb
skip_stosb:
    loop    bios_input  
maximum_length_reached: 
    mov     dx, offset max_length ; если максимальная допустимая длина достигнута
    mov     ah, 09h
    int     21h
enter_is_pressed_check_one:
    cmp     si, di
    jz      len_error ; проверки на ошибки ниже с адресами
check_two:   
    mov     al, space
    dec     di
    cld
    scasb
    jne     without_max_length_error     
check_three:
    dec     di
    cmp     si, di
    jnz     without_max_length_error
len_error:
    mov     dx, offset error ; вывод сообщения об ошибке, когда слов недостаточно
    mov     ah, 09h
    int     21h
    jmp     short exit
without_max_length_error:
    mov     al, space
    cld
    stosb
    dec     di
    inc     si
    mov     bx, di
    sub     bx, si
    mov     si, len ; здесь адрес начала реверс слова
    or      si, si  
    jz      output ; если его нет, то идем на вывод
    xchg    di, si
    xor     cx, cx 
    not     cx
    cld
    repne   scasb ; считаем длину реверс слова
    not     cx 
    dec     cx
    mov     dx, cx
    ; si - нач позиция слова реверс
    ; di - конец слова реверс - здесь он больше на 2, потому делаем два декремента
    mov     si, len
    dec     di
    dec     di
    xchg    si, di ; смена адресов для реверса
reverse:  
    cld
    lodsb
    dec     si
    xchg    di, si
    cld
    movsb
    dec     si
    dec     di
    mov     [si], al
    inc     si
    dec     di
    cmp     di, si
    jbe     output
    xchg    si, di
    loop    reverse
output:
    mov     dx, offset output_message ; вывод сообщения 
    mov     ah, 09h
    int     21h
    mov     ah, 03h ; получаем позицию курсора
    int     10h
    mov     si, bx ; вывод сообщения биос (все ниже до int10h)
    mov     cx, bx
    mov     ax, 1300h
    mov     bl, 07h
    mov     bp, offset buffer
    int     10h
    mov     dx, offset file_name 
    mov     ah, 03Ch   
    mov     bx, si
    xor     cx, cx
    int     21h
    mov     dx, bp 
    mov     cx, bx
    mov     bx, ax 
    mov     ah, 40h      
    int     21h
    mov     ah, 3Eh
    int     21h
    mov     ah, 08h
    int     21h
exit:
    mov     ax, 4C00h      
    int     21h
    END     start