.model small
.386
.stack 100h
.data
	in_file      db    "IN.COM", 0 ; тут 0 для функций, которые работают с файлами (0Dh)
	out_file     db    "OUT.ASM", 0
	_cwde        db    "CWDE", 0 ; тут и далее ноль для процедуры get_str_len (считает длину строки до нуля)
	_neg         db    "NEG", 9, 0 ; 9 - ТАБ
	_call        db    "CALL", 9, 0
	jmps      dw    es_jump, 7 dup (load_byte), cs_jump, 7 dup (load_byte), ss_jump, 7 dup (load_byte), ds_jump
                     dw    37 dup(load_byte), fs_jump, gs_jump, size66_jump, addr67_jump, 48 dup(load_byte), cwde_jump, load_byte, call_jump
                     dw    77 dup(load_byte), call_jump, 7 dup(load_byte), lock_jump, 5 dup(load_byte), neg_jump, neg_jump, 7 dup(load_byte), call_jump
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
load_byte:
	cmp    si, byte_count 	; если si вышел за пределы com_data, то выходим
	jae    success_exit
	lodsb
	mov    curr_byte, al 	; сохраняем опкод
	sub    al, 26h		; тут вычитаем потому что начинаются
	movzx  bx, al
	shl    bx, 1
	jmp    jmps[bx]   	; прыгаем по адресу метки
				; все сегменты, просто сохраняем встретившийся сегмент
es_jump:
	mov    ax, offset _es
	jmp    store_seg
cs_jump:
	mov    ax, offset _cs
	jmp    store_seg
ss_jump:
	mov    ax, offset _ss
	jmp    store_seg
ds_jump:
	mov    ax, offset _ds
	jmp    store_seg
fs_jump:
	mov    ax, offset _fs
	jmp    store_seg
gs_jump:
	mov    ax, offset _gs
store_seg:
	mov    seg_ovr, ax
	jmp    load_byte
				; то же самое с префиксами 66 и 67, сохраняем, если встретили
size66_jump:
	mov    flagsize_66, 1
	jmp    load_byte
addr67_jump:
	mov    flagaddr_67, 1
	jmp    load_byte
lock_jump: 			; lock выводим сразу
	mov    ax, offset _lock
	call   store_str
	jmp    load_byte
cwde_jump:  			; cwde выводим сразу
	mov    ax, offset _cwde
	call   store_str
	jmp    end_instruction
call_jump: 			; начинаем смотреть опкоды
	mov    ax, offset _call
	call   store_str
	cmp    curr_byte, 0E8h
	jne    not_call_rel  	; если это не относительное rel16 32
	mov    ax, "+$" 	; сохраняем в буфер $+, то есть счеткик местоположения и +
	stosw
	xor    eax, eax 	; eax должен быть 0, для функции записи числа store_hex
	mov    flagimm, 1 	; флаг, что это иммедиат
	or     flagsize_66, 0
	jz     rel16
	lodsd  			; грузим рел32
	add    eax, 6 		; тут рел32 = 66 +опкод + рел32 = 6 байт
	jnz    rel_not0
	jmp    rel_onself
rel16:
	lodsw  			; так как rel16, то загружаем слово из памяти
	add    ax, 3 		; +3 потому что прыжок 3-х байтовый (опкод + 2 байта для адреса), (rel считается как адрес начала след команды + смещение)
	jnz    rel_not0 	; если не ноль, то пишем
rel_onself:
	dec    di 			; если ноль то двигаем указатель назад, таким образом запись уберет + из $+ ($+ -> $) (прыжок на самого себя)
	jmp    end_instruction
rel_not0:
	jns    store_imm 		; если положительное, то пишем
	or     flagsize_66, 0
	jz     neg_ax
	neg    eax
	jmp    minus
neg_ax:
	neg    ax 			; если отрицательное, то делаем модуль и пишем минус ($+ -> $-)
minus:
	mov    byte ptr [di-1], "-"
	jmp    store_imm
not_call_rel:
	cmp    curr_byte, 0FFh
	jne    call_ptr ; если опкод не 0FF, то это EA - JMPF	ptr16:16/32
	call   modrm_byte ; вызываем функцию, которая возвращает мод, рег и рм
	cmp    reg, 100b ; если рег не 1000b (4, почему 1000b см в функции), то это FF рег=5 JMPF	m16:16/32
	jne    call_mem
	cmp    mode, 11000000b
	je     put_rm
	mov    ax, offset word_ptr ; для ff рег=4 JMP	    r/m16/32 пишем word ptr    
	jmp    type_ptr ; здесь если мод=11, то пишем регистр, значение в рм, а если не 11, то пишем рм
call_mem:
	mov    ax, offset dword_ptr ; для ff рег=5 JMP	    m16/32 пишем dword ptr, и пишем рм
	jmp    type_ptr
call_ptr:
	mov    flagimm, 1
	xor    eax, eax ; для записи числа
	mov    bx, ax
	lodsw
	or     flagsize_66, 0
	jz     no_ptr32 ; если ноль, то пишем 16-битное
	mov    bx, ax   ; если не ноль, то пишем 32-битное
	lodsw           ; в ах теперь младшая часть, а в bx старшая
no_ptr32:
	push   ax       ; для jmp ptr16:16/32 в памяти идет :16/32 а помто 16:, поэтому пушим :16
	lodsw           ; грузим 16:
	call   store_hex ; пишем 16:
	mov    al, ":" ; пишем :
	stosb
	pop    ax      ; восстанавливаем :16
	or     flagsize_66, 0
	jz     store_imm ; если нет 66 префикса то пишем :16
	push   ax bx     ; иначе пишем :32, пушим старшую часть, а затем младшую
	pop    eax       ; и поп как раз дает в ax младшую часть, в старшей части eax - старшая часть (bx)
store_imm:
	call   store_hex
	jmp    end_instruction
neg_jump: ; для имула также пишем в буфер строку
	mov    ax, offset _neg
	call   store_str
	call   modrm_byte
put_rm:
	cmp    mode, 11000000b   ; если мод=11 пишем регистр по индексу из поля рм
	jne    operand_not_reg
	push   bx si
	mov    bx, offset r8
	cmp    curr_byte, 0F6h
	je     put_reg
	mov    bx, offset r16
	or     flagsize_66, 0
	jz     put_reg
	mov    bx, offset r32
put_reg:
	movzx  si, rm
	mov    ax, [bx+si]
	call   store_str
	pop    si bx
	jmp    end_instruction
operand_not_reg:   ; если мод не 11
	cmp    curr_byte, 0F6h
	jne    not_rm8
	mov    ax, offset byte_ptr
	call   store_str
	jmp    put_seg
not_rm8:
	mov    ax, offset word_ptr
	or     flagsize_66, 0
	jz     type_ptr
	mov    ax, offset dword_ptr
type_ptr:
	call   store_str
put_seg:
	push   bx
	mov    ax, seg_ovr
	or     ax, ax
	jnz    end_put_seg       ; если seg ovr не ноль, то пишем этот сегмент
	movzx  bx, rm
	or     flagaddr_67, 0
	jnz    modrm32             ; если нет 67 префикса, то работаем с модрм16
	cmp    bl, 1100b           ; если рм = 1100 (bp или дисп16)
	jne    put_def_seg   ; если не равен, то пишем дефолтный сегмент
	or     mode, 0             ; если равен, то проверяем мод
	jnz    put_ss              ; если мод не ноль, то это [bp+disp8/16]
	jmp    put_def_seg         ; если ноль, то это disp16, пишем DS
modrm32:
	mov    ax, offset _ds      ; у модрм 32 везде DS, кроме EBP
	cmp    bl, 1010b           ; EBP
	jne    end_put_seg       
	or     mode, 0             ; опять проверяем мод, если не ноль, то это [EBP+disp8/32]
	jz     end_put_seg       ; если ноль, то DS
put_ss:
	mov    ax, offset _ss  ; пишем SS
	jmp    end_put_seg
put_def_seg:
    	mov    ax, rmseg[bx] ; двигаемся по массиву
end_put_seg:
	call   store_str ; пишем сегмент
	pop    bx
	or     flagaddr_67, 0
	jnz    bit32_addr  ; если есть 67 префикс идем на 32 битную адресацию
	or     mode, 0   ; в 16 битах первым делом смотрим на мод00 дисп16
	jnz    mod_123
	cmp    rm, 1100b ; дисп16
	jne    mod_123
	xor    eax, eax ; если мод00 и рм110, то это дисп16, пишем его и выходим
	lodsw
	mov    flagimm, 1
	call   store_hex
	jmp    end_rm
mod_123: ; если мод не 00, то это [регистр+дисп8/16]
	movzx  bx, rm
	mov    ax, rm16[bx]
	call   store_str     ; можно сразу вывести начало рм, а дальше смотрим дисп
	or     mode, 0           ; если мод 00, то диспа нету
	jz     end_rm
	xor    eax, eax            ; иначе готовимся его писать
	cmp    mode, 1000000b    ; если мод не 10, то пишем байтовый дисп
	jne    mod_01
	lodsb
	jmp    put_disp_8_16
mod_01:  ; иначе пишем вордовый дисп
	lodsw
put_disp_8_16:
	call   store_hex
	jmp    end_rm  ; выходим, конец 16 битного рм
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
	call   store_str
	cmp    sib_byte_b, 1010b           ; проверяем базу 101 (ebp)
	jne    not_base_ebp
	or     mode, 0                ; если база 101, и мод=0, то..
	jnz    not_base_ebp
	sub    di, 3                    ; двигаем di до начала, так как база не EBP, а только дисп 32
	jmp    sib_index                   ; пишем индекс и пропускаем проверку NONE и запись + после базы
not_base_ebp:
	cmp    sib_byte_i, 1000b          ; проверяем индекс 100, то есть NONE
	je     scale0                ; если индекс NONE, то не пишем индекс
	mov    al, "+"                 ; если не NONE дальше пишем индекс, поэтому '+'
	stosb
sib_index:
	movzx  bx, sib_byte_i               ; запись индекса
	mov    ax, r32[bx]
	call   store_str
	mov    ah, sib_byte_s             ; дальше пишем масштаб
	or     ah, ah                  ; если он 0, то пропускаем его
	jz     scale0
	shr    ah, 5                   ; иначе сдвигаем на 5, таким образом масштаб 10 (*4) будет 100b=4d, а 01 (*2) - 10b=2d 
	jnp    not_8             ; jp - прыжок, если четное число битов, в 4 и 3 бите ah может быть 11, 10, 01
	mov    ah, 8                   ;      тогда если после сдвига на 5, чсило битов четное, то это 11, то есть масштаб "*8"
not_8:                        ;          
	add    ah, "0"                 ; преобразуем масштаб в ASCII
	mov    al, "*"                 
	stosw                           ; и пишем со звездочкой
scale0:
	cmp    sib_byte_b, 1010b          ; проверяем базу 101 (ebp)
	jne    is_disp_8_32         ; если база не 101, то провеярем дисп8/32
	or     mode, 0               ; если база 101 и мод=0, то тогда база это дисп32
	jz     disp_32
	jmp    is_disp_8_32         ; иначе дисп8/32
no_sib:    ; всё выше было про сиб байт, если его нет, то
	cmp    rm, 1010b             ; проверяем рм101 (EBP)
	jne    put_rm32              ; если не 101, то смело пишем рм
	or     mode, 0               ; если 101 и мод=0, то тогда там дисп32
	jnz    put_rm32
	mov    flagimm, 1             ; готовимся его писать, так как он там один, то дисп=0, мы пишем
disp_32:
	xor    eax, eax
	lodsd
	call   store_hex
	jmp    end_rm
put_rm32:
	movzx  bx, rm
	mov    ax, r32[bx]       ; выводим рм двигаясь по массиву
	call   store_str
	or     mode, 0               ; если мод0, то выходим, если нет, то идем проверять дисп8/32
	jz     end_rm
is_disp_8_32:
	cmp    mode, 1000000b       ; мод=10 - дисп32
	ja     disp_32
	jb     end_rm
	xor    eax, eax
	lodsb                           ; иначе дисп8
	call   store_hex
end_rm:
	mov    al, "]"
	stosb
end_instruction:
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
	jmp    load_byte
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

store_str proc
	push   si
	mov    si, ax
storing:
	movsb
	cmp    byte ptr [si], 0
	jnz    storing 
	pop    si
	ret
endp

modrm_byte proc
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

store_hex proc
	push   bx
	cmp    flagimm, 1  ; проверка на имм
	je     is_imm_zero
	or     eax, eax    ; если это не имм, то есть дисп, то проверяем нулевое смещение
	jz     ret_hex 
	mov    byte ptr [di], "+" ; если дисп не ноль, то пишем плюс, увеличиваем di
	inc    di                  ; здесь пишем не через al, потому что там число
is_imm_zero:
	or     eax, eax        ; проверка нулевого имм
	jnz    not_zero_imm
	mov    al, "0"         ; если ноль пишем 0 в буффер и выходим
	stosb
	jmp    put_h
not_zero_imm:
	mov    ebx, eax       ; число для записи в EBX
	mov    cl, 8          ; число байт в EAX
	jmp    test_
del_lead_zeros:
	dec    cl             ; уменьшаем число байт для записи
	rol    ebx, 4         ; убираем ненужные нули спереди
test_:
	test   ebx, 0F0000000h  ; если результат 0, то спереди числа незначащие нули, убираем их
	jz     del_lead_zeros
	xor    eax, eax
	shld   eax, ebx, 4    ; двигаем старший байт для записи в eax
	cmp    al, 9          ; проверяем его на то, что он не буква
	jna    not_letter
	mov    al, "0"         ; если буква, то пишем 0
	stosb
not_letter:
	xor    al, al         ; обнуляем al 
hex_ascii:
	shld   eax, ebx, 4    ; двигаем по байту в eax и записываем в буффер в ASCII формате
	shl    ebx, 4
	cmp    al, 9          ; проверка на букву
	jna    number
	add    al, 7          ; доп слагаемое для букв
number: 
	add    al, 30h         ; для чисел
	stosb                   ; сохраняем
	xor    al, al          ; зануляем так как al это байт, а нам нужно только 4 бита
	loop   hex_ascii    ; циклимся по всем байтам
put_h:
	mov    al, "H"         ; сохраняем 'H'
	stosb
ret_hex:
	pop    bx
	ret
endp
    End    Start
