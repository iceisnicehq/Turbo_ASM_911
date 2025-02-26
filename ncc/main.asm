.model small
.386
.stack 100h
.data
	in_file      db    "IN.COM", 0 ; тут 0 для функций, которые работают с файлами (0Dh)
	out_file     db    "OUT.ASM", 0
	_cwde        db    "CWDE", 0 ; тут и далее ноль для процедуры get_str_len (считает длину строки до нуля)
	_neg         db    "NEG", 9, 0 ; 9 - ТАБ
	_call        db    "CALL", 9, 0
	opcodes      dw    es_label, 7 dup (scan_bytes), cs_label, 7 dup (scan_bytes), ss_label, 7 dup (scan_bytes), ds_label
                     dw    37 dup(scan_bytes), fs_label, gs_label, size66_label, addr67_label, 48 dup(scan_bytes), cwde_label, scan_bytes, call_label
                     dw    77 dup(scan_bytes), call_label, 7 dup(scan_bytes), lock_label, 5 dup(scan_bytes), neg_label, neg_label, 7 dup(scan_bytes), call_label
	com_error    db    "COM_ERROR", 0dh, 0ah, "$"
	end_msg      db    "Done!", 0d, 0ah, "$"
	_lock        db    "LOCK ", 0
	_AL          db    "AL", 0
	_CL          db    "CL", 0
	_DL          db    "DL", 0
	_BL          db    "BL", 0
	_AH          db    "AH", 0
	_CH          db    "CH", 0 
	_DH          db    "DH", 0 
	_BH          db    "BH", 0
	r8           dw    _AL, _CL, _DL, _BL, _AH, _CH, _DH, _BH ; байтовые реги
	_AX	     db    "AX", 0    
	_CX          db    "CX", 0
	_DX          db    "DX", 0
	_BX          db    "BX", 0
	_SP          db    "SP", 0
	_BP          db    "BP", 0
	_SI          db    "SI", 0
	_DI          db    "DI", 0
	dword_ptr    db    "dword ptr ", 0
	word_ptr     db    "word ptr ", 0
	byte_ptr     db    "byte ptr ", 0
	BX_SI        db    "BX+SI", 0
	BX_DI        db    "BX+DI", 0
	BP_SI        db    "BP+SI", 0
	BP_DI        db    "BP+DI", 0
	r16          dw    _AX, _CX, _DX, _BX, _SP, _BP, _SI, _DI ; слова реги
	_ECX         db    "ECX", 0
	rm16         dw    BX_SI, BX_DI, BP_SI, BP_DI, _SI, _DI, _BP,  _BX ; байт РМ
	_es          db    "ES:[", 0
	_cs          db    "CS:[", 0
	_ss          db    "SS:[", 0
	_ds          db    "DS:[", 0
	_fs          db    "FS:[", 0
	_gs          db    "GS:[", 0
	rmseg        dw    _ds, _ds, _ss, _ss, _ds, _ds, _ds, _ds; дефолтные сегменты для памяти в РМ
	_EAX         db    "EAX", 0
	_EDX         db    "EDX", 0
	_EBX         db    "EBX", 0
	_ESP         db    "ESP", 0
	_EBP         db    "EBP", 0
	_ESI         db    "ESI", 0
	_EDI         db    "EDI", 0
	r32          dw    _EAX, _ECX, _EDX, _EBX, _ESP, _EBP, _ESI, _EDI ; двойные слова реги
	mode         db    0
	rm           db    0
	reg          db    0
	seg_ovr      dw    0
	flagsize_66  db    0
	flagaddr_67  db    0
	flagimm      db    0 	; это переменная нужна, чтобы скипать "+" для иммов, и так же, чтобы писать нулевой имм, так как имм 0 (imul ax, 0) нужно писать, а смещение=0 писать не нужно
	instruction  db    50 dup (?) ; строка которую наполняем постепенно, а потом записываем в файл
	com_data     db    5000 dup (?)
	byte_count   dw    ? 	; номер последнего байта в com_data (из числа прочитанных)
	sib_byte_s   db    ?
	sib_byte_i   db    ?
	sib_byte_b   db    ?
	file         dw    ?
	curr_byte    db    ? 	; хранит опкод команды, которую декодим
.code
Start:
	mov    ax, @DATA
	mov    ds, ax
	mov    es, ax
	cld
	mov    ax, 3D00h 		; открываем файл, ah - функция, al - права доступа
	mov    dx, offset in_file
	int    21h
	jnc    no_err 		; если нет ошибок, то флаг сf не поднимается
	mov    dx, offset com_error ; сообщение об ошибке с комом, полезно, если вдруг что-то не так будет на защите (например файл переименуют, как у всех было)
	mov    ah, 9h               ;      тогда сразу будет видно где ошибка
	int    21h
	jmp    exit
no_err:
	mov    bx, ax
	mov    ah, 3fh 		; считываем байти из ком файла в com_data
	mov    cx, 5000d
	mov    dx, offset com_data
	int    21h
	add    ax, dx 		; ax = число прочитанных байт, dx = адрес начала
	mov    byte_count, ax       ; число прочитанных байт
	mov    ah, 3Eh 		; закрываем ком файл
	int    21h
	mov    ah, 3Ch 		; создаем файл-результат 
	xor    cx, cx 
	mov    dx, offset out_file
	int    21h
	mov    file, ax   		; сохраняем дескриптор рез-файла
	mov    si, offset com_data
	mov    di, offset instruction
scan_bytes:
	cmp    si, byte_count 	; если si вышел за пределы com_data, то выходим
	jae    success_exit
	lodsb
	mov    curr_byte, al 	; сохраняем опкод
	sub    al, 26h		; тут вычитаем потому что начинаются
	movzx  bx, al
	shl    bx, 1
	jmp    opcodes[bx]   	; прыгаем по адресу метки
				; все сегменты, просто сохраняем встретившийся сегмент
es_label:
	mov    ax, offset _es
	jmp    save_segment
cs_label:
	mov    ax, offset _cs
	jmp    save_segment
ss_label:
	mov    ax, offset _ss
	jmp    save_segment
ds_label:
	mov    ax, offset _ds
	jmp    save_segment
fs_label:
	mov    ax, offset _fs
	jmp    save_segment
gs_label:
	mov    ax, offset _gs
save_segment:
	mov    seg_ovr, ax
	jmp    scan_bytes
				; то же самое с префиксами 66 и 67, сохраняем, если встретили
size66_label:
	mov    flagsize_66, 1
	jmp    scan_bytes
addr67_label:
	mov    flagaddr_67, 1
	jmp    scan_bytes
lock_label: 			; lock выводим сразу
	mov    ax, offset _lock
	call   print_to_buffer
	jmp    scan_bytes
cwde_label:  			; cwde выводим сразу
	mov    ax, offset _cwde
	call   print_to_buffer
	jmp    print_to_file
call_label: 			; начинаем смотреть опкоды
	mov    ax, offset _call
	call   print_to_buffer
	cmp    curr_byte, 0E8h
	jne    not_rel
rel: 	       		; если это относительное rel16 32
	mov    ax, "+$" 		; сохраняем в буфер $+, то есть счеткик местоположения и +
	stosw
	xor    eax, eax 		; eax должен быть 0, для функции записи числа print_hex_num
	mov    flagimm, 1 		; флаг, что это иммедиат
	or     flagsize_66, 0
	jz 	   word_rel
	lodsd  			; грузим рел32
	add    eax, 6 		; тут рел32 = 66 +опкод + рел32 = 6 байт
	jnz    not_zero_rel
	jmp    remove_rel_sign
word_rel:
	lodsw  			; так как rel16, то загружаем слово из памяти
	add    ax, 3 		; +3 потому что прыжок 3-х байтовый (опкод + 2 байта для адреса), (rel считается как адрес начала след команды + смещение)
	jnz    not_zero_rel 	; если не ноль, то пишем
remove_rel_sign:
	dec    di 			; если ноль то двигаем указатель назад, таким образом запись уберет + из $+ ($+ -> $) (прыжок на самого себя)
	jmp    print_to_file
not_zero_rel:
	jns    print_imm 		; если положительное, то пишем
	or     flagsize_66, 0
	jz     neg_ax
	neg    eax
	jmp    minus
neg_ax:
	neg    ax 			; если отрицательное, то делаем модуль и пишем минус ($+ -> $-)
minus:
	mov    byte ptr [di-1], "-"
	jmp    print_imm
not_rel:
	cmp    curr_byte, 0FFh
	jne    call_ptr ; если опкод не 0FF, то это EA - JMPF	ptr16:16/32
	call   mod_reg_rm ; вызываем функцию, которая возвращает мод, рег и рм
	cmp    reg, 100b ; если рег не 1000b (4, почему 1000b см в функции), то это FF рег=5 JMPF	m16:16/32
	jne    call_mem
	cmp    mode, 11000000b
	je     print_rm
	mov    ax, offset word_ptr ; для ff рег=4 JMP	    r/m16/32 пишем word ptr    
	jmp    print_ptr ; здесь если мод=11, то пишем регистр, значение в рм, а если не 11, то пишем рм
call_mem:
	mov    ax, offset dword_ptr ; для ff рег=5 JMP	    m16/32 пишем dword ptr, и пишем рм
	jmp    print_ptr
call_ptr:
	mov    flagimm, 1
	xor    eax, eax ; для записи числа
	mov    bx, ax
	lodsw
	or     flagsize_66, 0
	pushf  ; созраняем флаги, чтобы потом не делать опять or [flagsize_66], 0
	jz     no_ptr32 ; если ноль, то пишем 16-битное
	mov    bx, ax   ; если не ноль, то пишем 32-битное
	lodsw           ; в ах теперь младшая часть, а в bx старшая
no_ptr32:
	push   ax       ; для jmp ptr16:16/32 в памяти идет :16/32 а помто 16:, поэтому пушим :16
	lodsw           ; грузим 16:
	call   print_hex_num ; пишем 16:
	mov    al, ":" ; пишем :
	stosb
	pop    ax      ; восстанавливаем :16
	popf           ; флаги от or [flagsize_66], 0
	jz     print_imm ; если нет 66 префикса то пишем :16
	push   ax bx     ; иначе пишем :32, пушим старшую часть, а затем младшую
	pop    eax       ; и поп как раз дает в ax младшую часть, в старшей части eax - старшая часть (bx)
print_imm:
	call   print_hex_num
	jmp    print_to_file
neg_label: ; для имула также пишем в буфер строку
	mov    ax, offset _neg
	call   print_to_buffer
	call   mod_reg_rm
print_rm:
	cmp    mode, 11000000b   ; если мод=11 пишем регистр по индексу из поля рм
	jne    operand_not_reg
	push   bx si
	mov    bx, offset r8
	cmp    curr_byte, 0F6h
	je     go_print
	mov    bx, offset r16
	or     flagsize_66, 0
	jz     go_print
	mov    bx, offset r32
go_print:
	movzx  si, rm
	mov    ax, [bx+si]
	call   print_to_buffer
	pop    si bx
	jmp    print_to_file
operand_not_reg:   ; если мод не 11
	cmp    curr_byte, 0F6h
	jne    not_rm8
	mov    ax, offset byte_ptr
	call   print_to_buffer
	jmp    print_seg
not_rm8:
	mov    ax, offset word_ptr
	or     flagsize_66, 0
	jz     print_ptr
	mov    ax, offset dword_ptr
print_ptr:
	call   print_to_buffer
print_seg:
	push   bx
	mov    ax, seg_ovr
	or     ax, ax
	jnz    print_seg_str       ; если seg ovr не ноль, то пишем этот сегмент
	movzx  bx, rm
	or     flagaddr_67, 0
	jnz    modrm32             ; если нет 67 префикса, то работаем с модрм16
	cmp    bl, 1100b           ; если рм = 1100 (bp или дисп16)
	jne    print_default_seg   ; если не равен, то пишем дефолтный сегмент
	or     mode, 0           ; если равен, то проверяем мод
	jnz    print_ss            ; если мод не ноль, то это [bp+disp8/16]
	jmp    print_default_seg   ; если ноль, то это disp16, пишем DS
modrm32:
	mov    ax, offset _ds   ; у модрм 32 везде DS, кроме EBP
	cmp    bl, 1010b           ; EBP
	jne    print_seg_str       
	or     mode, 0           ; опять проверяем мод, если не ноль, то это [EBP+disp8/32]
	jz     print_seg_str       ; если ноль, то DS
print_ss:
	mov    ax, offset _ss  ; пишем SS
	jmp    print_seg_str
print_default_seg:
    	mov    ax, rmseg[bx] ; двигаемся по массиву
print_seg_str:
	call   print_to_buffer ; пишем сегмент
	pop    bx
	or     flagaddr_67, 0
	jnz    bit32_addr  ; если есть 67 префикс идем на 32 битную адресацию
	or     mode, 0   ; в 16 битах первым делом смотрим на мод00 дисп16
	jnz    not_00_mod_16
	cmp    rm, 1100b ; дисп16
	jne    not_00_mod_16
	xor    eax, eax ; если мод00 и рм110, то это дисп16, пишем его и выходим
	lodsw
	mov    flagimm, 1
	call   print_hex_num
	jmp    return
not_00_mod_16: ; если мод не 00, то это [регистр+дисп8/16]
	movzx  bx, rm
	mov    ax, rm16[bx]
	call   print_to_buffer     ; можно сразу вывести начало рм, а дальше смотрим дисп
	or     mode, 0           ; если мод 00, то диспа нету
	jz     return
	xor    eax, eax            ; иначе готовимся его писать
	cmp    mode, 1000000b    ; если мод не 10, то пишем байтовый дисп
	jne    not_01_mod_16
	lodsb
	jmp    print_disp_byte_word
not_01_mod_16:  ; иначе пишем вордовый дисп
	lodsw
print_disp_byte_word:
	call   print_hex_num
	jmp    return  ; выходим, конец 16 битного рм
bit32_addr:
	cmp    rm, 1000b             ; это сиб байт
	jne    no_sib             
	lodsb                          ; вытягиваем сиб и разбираем на скейл, индекс, базу
	mov    ah, al
	and    ah, 11000000b
	mov    sib_byte_s, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 1110b
	mov    sib_byte_i, ah
	and    al, 111b
	shl    al, 1
	mov    sib_byte_b, al
	movzx  bx, sib_byte_b
	mov    ax, r32[bx]        ; пишем базу в буффер
	call   print_to_buffer
	cmp    sib_byte_b, 1010b           ; проверяем базу 101 (ebp)
	jne    no_base_101
	or     mode, 0                ; если база 101, и мод=0, то..
	jnz    no_base_101
	sub    di, 3                    ; двигаем di до начала, так как база не EBP, а только дисп 32
	jmp    index                   ; пишем индекс и пропускаем проверку NONE и запись + после базы
no_base_101:
	cmp    sib_byte_i, 1000b          ; проверяем индекс 100, то есть NONE
	je     no_scale                ; если индекс NONE, то не пишем индекс
	mov    al, "+"                 ; если не NONE дальше пишем индекс, поэтому '+'
	stosb
index:
	movzx  bx, sib_byte_i               ; запись индекса
	mov    ax, r32[bx]
	call   print_to_buffer
	mov    ah, sib_byte_s             ; дальше пишем масштаб
	or     ah, ah                  ; если он 0, то пропускаем его
	jz     no_scale
	shr    ah, 5                   ; иначе сдвигаем на 5, таким образом масштаб 10 (*4) будет 100b=4d, а 01 (*2) - 10b=2d 
	jnp    not_scale_8             ; jp - прыжок, если четное число битов, в 4 и 3 бите ah может быть 11, 10, 01
	mov    ah, 8                   ;      тогда если после сдвига на 5, чсило битов четное, то это 11, то есть масштаб "*8"
not_scale_8:                        ;          
	add    ah, "0"                 ; преобразуем масштаб в ASCII
	mov    al, "*"                 
	stosw                           ; и пишем со звездочкой
no_scale:
	cmp    sib_byte_b, 1010b          ; проверяем базу 101 (ebp)
	jne    check_disp_8_32         ; если база не 101, то провеярем дисп8/32
	or     mode, 0               ; если база 101 и мод=0, то тогда база это дисп32
	jz     disp32
	jmp    check_disp_8_32         ; иначе дисп8/32
no_sib:    ; всё выше было про сиб байт, если его нет, то
	cmp    rm, 1010b             ; проверяем рм101 (EBP)
	jne    print_rm32              ; если не 101, то смело пишем рм
	or     mode, 0               ; если 101 и мод=0, то тогда там дисп32
	jnz    print_rm32
	mov    flagimm, 1             ; готовимся его писать, так как он там один, то дисп=0, мы пишем
disp32:
	xor    eax, eax
	lodsd
	call   print_hex_num
	jmp    return
print_rm32:
	movzx  bx, rm
	mov    ax, r32[bx]       ; выводим рм двигаясь по массиву
	call   print_to_buffer
	or     mode, 0               ; если мод0, то выходим, если нет, то идем проверять дисп8/32
	jz     return
check_disp_8_32:
	cmp    mode, 1000000b       ; мод=10 - дисп32
	ja     disp32
	jb     return
	xor    eax, eax
	lodsb                           ; иначе дисп8
	call   print_hex_num
return:
	mov    al, "]"
	stosb
print_to_file:
	push   si
	mov    ax, 0a0dh
	stosw
	mov    ah, 40h
	mov    dx, offset instruction
	mov    cx, di
	sub    cx, dx  ; длина
	mov    di, dx
	mov    bx, file
	push   cx
	int    21h
	pop    cx
	xor    al, al
	push   di
	rep    stosb
	pop    di
	mov    seg_ovr, 0
	mov    flagsize_66, 0
	mov    flagaddr_67, 0
	mov    flagimm, 0
	pop    si
	jmp    scan_bytes
success_exit:
	mov    dx, offset end_msg ; вывод сообщения об успехе
	mov    ah, 9
	int    21h
	mov    ah, 3Eh
	mov    bx, file  ; закрываем файл результат
	int    21h
exit:
	mov    ah, 4Ch
	int    21h
    
print_to_buffer proc
	push   si
	mov    si, ax
printing: 
	movsb
	cmp    byte ptr [si], 0
	jnz    printing 
	pop    si
	ret
endp

mod_reg_rm proc
	lodsb
	mov    ah, al
	and    ah, 11000000b
	mov    mode, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 1110b
	mov    reg, ah
	and    al, 111b
	shl    al, 1
	mov    rm, al
	ret
endp

print_hex_num proc
	push   bx
	cmp    flagimm, 1  ; проверка на имм
	je     check_zero
	or     eax, eax    ; если это не имм, то есть дисп, то проверяем нулевое смещение
	jz     end_printing 
	mov    byte ptr [di], "+" ; если дисп не ноль, то пишем плюс, увеличиваем di
	inc    di                  ; здесь пишем не через al, потому что там число
check_zero:
	or     eax, eax        ; проверка нулевого имм
	jnz    non_zero_imm
	mov    al, "0"         ; если ноль пишем 0 в буффер и выходим
	stosb
	jmp    put_hex
non_zero_imm:
	mov    ebx, eax       ; число для записи в EBX
	mov    cl, 8          ; число байт в EAX
	jmp    test_first
deleting_zeros:
	dec    cl             ; уменьшаем число байт для записи
	rol    ebx, 4         ; убираем ненужные нули спереди
test_first:
	test   ebx, 0F0000000h  ; если результат 0, то спереди числа незначащие нули, убираем их
	jz     deleting_zeros
	xor    eax, eax
	shld   eax, ebx, 4    ; двигаем старший байт для записи в eax
	cmp    al, 9          ; проверяем его на то, что он не буква
	jna    not_a_letter
	mov    al, "0"         ; если буква, то пишем 0
	stosb
not_a_letter:
	xor    al, al         ; обнуляем al 
hex_to_ascii:
	shld   eax, ebx, 4    ; двигаем по байту в eax и записываем в буффер в ASCII формате
	shl    ebx, 4
	cmp    al, 9          ; проверка на букву
	jna    digit
	add    al, 7          ; доп слагаемое для букв
digit: 
	add    al, "0"         ; для чисел
	stosb                   ; сохраняем
	xor    al, al          ; зануляем так как al это байт, а нам нужно только 4 бита
	loop   hex_to_ascii    ; циклимся по всем байтам
put_hex:
	mov    al, "H"         ; сохраняем 'H'
	stosb
end_printing:
	pop    bx
	ret
endp

    End    Start
