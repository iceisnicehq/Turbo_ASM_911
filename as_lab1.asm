.model    small
.186
.stack    100h                      
.data
    res        db    'res.txt', 0                  ; название файла в ASCIIZ нотации (на 0 заканчивается). Такой вид требует функция 3Сh (создания файла)
    nums       db    "0000 0000 0000", 0dh, 0ah     ; 0Dh - возврат каретки (carriage return), 0Ah - перевод строки (line feed)
    a          db    ?                              ; не заданные переменные (?) стоят в конце, чтобы полученный исполняемый (exe) файл меньше весил
    b          db    ?
    c          db    ?
    d          dw    ?
.code
start:
    mov    ax, @data                  ; @data зарезервированный символ , указывающий на начало сегмента данных
    mov    ds, ax                     ; ds (регистр сегмента данных теперь на начале сегмента данных (.data))
    mov    es, ax                     ; es = ds
    ; проверка такая: если хоть одна переменная не задана (то есть равна 0, то мы просто считаем выражение)
    mov    bh, a                      ; bh = a
    mov    cx, word ptr [b]           ; cl = b, ch = c
    or    bh, bh                      ; a = 0 ?
    jz    createFile                  ; если 0, то прыжок на создание файла
    or    cl, cl                      ; b = 0 ?
    jz    createFile                  ; если 0, то прыжок на создание файла
    or    ch, ch                      ; с = 0 ?
    jnz    denominator                ; если не 0, то пропускаем создание файла 
createFile:
; int 21, function 03Ch. Функция 03Ch для прерывания доса (21h): "Create file" - создать файл
    ; вход:
        ;  ah = 03Ch
        ;  cx = атрибуты файла (00 - обычный файл): бит 0 - только для чтения, бит 1 - скрытый, бит 2 - системный... (подробнее про функцию https://fragglet.github.io/dos-help-files/alang.hlp/x_at_L82b9.html)
        ;  ds:dx = адрес смещения имени файла, заданного в ASCIIZ (если в названии файла нет директории, то файл создастся в текущей)
    ; выход:
        ;  ax = дескриптор файла (его идентификатор)
      ; если при выполнении возникла ошибка, то cf = 1, ax = код ошибки
    mov    ah, 03Ch   
    xor    cx, cx                      ; cx = 00h  
    mov    dx, offset res
    int    21h                         ; вызов dos
    mov    bx, ax                      ; сохраняем дексриптор в bx (bl), дальше будет ясно почему именно bx
    mov    di, offset nums             ; di указывает на начало nums, нужно для записи
    mov    bh, -128d                   ; bh = -128 (a = -128)
    mov    cl, -128d                   ; cl = -128 (b = -128)
    mov    ch, -128d                   ; ch = -128 (c = -128)
    ; 19 * a^2 - b - c^2    /      7*b^2 + a + c
        ; bl = descr ; bh = a
        ; cl = b     ; ch = c
denominator:
    mov    al, cl                       ; al = b
    cbw                                 ; ax = b
    mov    dx, ax                       ; dx = b
    sal    ax, 3                        ; ax = 8*b
    sub    ax, dx                       ; ax = 7*b
    imul    dx                          ; dx:ax = 7*b^2
    or    dx, dx                        ; dx = ?, если dx = 0, то результаат лежит в ах, в dx только знак, если не ноль, то в лежит знак + значимая часть (результать больше 65535)
    jnz    overflow                     ; если dx не 0, то это переполнение 100%    
    mov    si, ax                       ; si = 7*b^2
    mov    al, ch                       ; al = c
    cbw                                 ; ax = c
    mov    dx, ax                       ; dx = c
    mov    al, bh                       ; al = a
    cbw                                 ; ax = a
    add    dx, ax                       ; dx = a + c
    js    negative_ac                   ; dx < 0 ?
    add    si, dx                       ; ELSE: si = 7*b^2 + a + c
    js    overflow                      ; if sf = 1, то есть у нас результат по виду отрицательный (хотя прибавляли положительное + положительное), то есть это число больше чем 7FFFh
    jc    overflow                      ; if cf = 1, то очень большое положительное + положительное, пример: FFF0h + 11h = 1 0001h, где эта единица уходит в cf   
    jmp    checkFile                    ; если не то и не другое, то проверяем файл 
negative_ac:
    neg    dx                           ; ax = -|a + c|
    sub    si, dx                       ; si = 12c^2 - (a + c)
    jc    checkFile                     ; if cf = 1 (e.g. 0001 - 0002 = FFFF [cf = 1, sf = 1]), то есть из положительного вычитаем отрицательное   
    js    overflow                      ; ; if sf = 1, то есть у нас результат по виду отрицательный..., то есть результат больше чем 7FFFh
checkFile:
    or     bl, bl                       ; дескриптор равен 0?
    jnz    iteration                    ; если нет, то прыжок на следующую итерацию
    jmp    numerator                    ; если да, то прыгаем на числитель
overflow:
    mov    al, bh                       ; al = a
    mov    bp, bx                       ; bp = bx  (bh = a, bl = descr)
    mov    bx, cx                       ; bh = c, bl = b  
    mov    si, di                       ; si = di
    mov    cx, 3                        ; cx = 3 (для цикла)
;  три итерации цикла, после каждой итерации di увеличивается на 5, число для записи находится в al, в dl знак числа
    ; 1) для a
    ; 2) для b
    ; 3) для c
writeFile:
    mov    dl, '+'                      
    or    al, al                        ; проверка знака числа в al
    jns    posNumber                    ; если al >= 0
    mov    dl, '-'                      ; dh = 2Dh
    neg    al                           ; al = |al|, если al отрицательное
posNumber:                                                            ; ПРИМЕР ДЛЯ 127
    aam                                 ; превращаем число в al в BCD-формат (то есть 127d==7fh => ax = 0C07h)
    or    al, 30h                       ; превращаем al в ascii-формат       (то есть ax = 0C37h)
    mov    dh, al                       ; dh = al, в dh разряд единиц        (dx = 372Dh) 
    mov    al, ah                       ; al = ah                            (ax = 0C0Ch)
    aam                                 ; превращаем al в BCD-формат         (ax = 0102h) 
    or    ax, 3030h                     ; al в ascii                         (ax = 3132h)      
    xchg    dl, al                      ; теперь в al знак, в ah разряд сотен(аx = 312Dh, dx = 3732h)  
    stosw                               ; nums = (+100 0000 0000) di = di + 2
    mov    ax, dx                       ; (e.g. ax = 3732h)
    stosw                               ; nums = (+127 0000 0000) di = di + 4
    inc    di                           ; di = di + 5 (чтобы перескочить пробел после +127)
    mov    al, bl                       ; следующее число для записи в al, то есть b для второй итерации, далее c     
    xchg    bh, bl                      ; bl = c, bh = b и так меняется три раза, то есть в конце числа перепутаны
    loop    writeFile                   ; loop
; далее запись в файл
    xchg    bl, bh                      ; bh = c, bl = b. Возвращаем числа назад после цикла
    mov    di, si                       ; di обратно на начало nums
    mov    si, bx                       ; сохраняем bx
; функция 40h:
    ; на вход:
        ; ah = 40h
        ; bx = дескриптор файла
        ; cx = количество байт для записи
        ; ds:dx = адрес на строку для записи
    mov    ah, 40h                      ; write to res function
    mov    bx, bp                       ; bl = descr
    mov    cx, 16                       ; число байт для записи (nums length)
    mov    dx, di                       ; dx = di  (где di = offset nums)
    xor    bh, bh                       ; bh = 0
    int    21h                          
    mov    cx, si                       ; восстанавливаем cx
    mov    bx, bp                       ; восстанавливаем bx
    ; bh = a ;    cl = b     ; ch = c
iteration:
    cmp    ch, 7fh       
    jne    inc_c
    cmp    cl, 7fh
    jne    inc_b
    cmp    bh, 7fh
    je    fileClose
    inc    bh
    mov    cl, 7fh
inc_b:
    mov    ch, 7fh
    inc    cl    
inc_c:
    inc    ch
    jmp    denominator  
fileClose:
; 3Eh функция закрытия файла. На вход: ah=3Eh, в bx, дескриптор файла
    mov    ah, 3Eh
    xor    bh, bh                      ; в bl дескриптор, поэтому зануляем bh
    int    21h
    jmp    Exit
    ; 19 * a^2 - b - c^2    /      7*b^2 + a + c
        ; bl = descr ; bh = a
        ; cl = b     ; ch = c
    ; и из знаменателя у нас ax = a
    ; а сам знаменатель в si
numerator:
    mov    dx, ax                       ; ax = a
    sal    ax, 1                        ; ax = 2*a
    add    dx, ax                       ; dx = 3*a
    sal    ax, 3                        ; ax = 16*a
    add    dx, ax                       ; dx = 19*a
    sar    ax, 4                        ; ax = a
    imul   dx                           ; dx:ax = 19*a^2
    mov    bx, ax                       ; dx:bx = 19*a^2
    mov    al, ch                       ; al = c
    imul   al                           ; ax = c^2
    xchg   ax, cx                       ; cx = c^2, al = b, ah = c
    cbw                                 ; ax = b
    add    ax, cx                       ; ax = c^2 + b
; здесь мы должны вычесть слово ax из двойного слова dx:bx, используем sbb, для как бы условного расширения слова ax до двойного слова, так для положительного ax его знак в растяжении 0000, а для отрицательного FFFF
    js     negative_c2b
    sub    bx, ax                       ; нижняя часть двойного слова
    sbb    dx, 0000h                    ; вычитание с займом для положительного c^2+b
    jmp    division                     
negative_c2b:
    sub    bx, ax
    sbb    dx, 0FFFFh
division:
    mov    ax, bx                       ; dx:ax = dx:bx
    idiv    si                          ; 19 * a^2 - b - c^2    /      7*b^2 + a + c
    mov    [d], ax                      
exit:
    mov    ax, 4C00h
    int    21h
    end    start  