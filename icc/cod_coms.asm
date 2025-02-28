.model small
.386
.stack 100h
.data
	op_es            equ   26h
	op_cs            equ   2Eh
	op_ss            equ   36h
	op_ds            equ   3Eh
	op_fs            equ   64h
	op_gs            equ   65h
	op_size          equ   66h
	op_addr          equ   67h
	op_cdq           equ   99h
	op_lock          equ   0F0h
	op_idiv8         equ   6h
	op_idiv16        equ   7h
	op_callrel       equ   8h
	op_callptr       equ   0Ah
	op_callrmm       equ   0Fh
	com_file         db    "COM.COM", 0    ; тут 0 для функций, которые работают с файлами (0Dh)
	vivod            db    "VIVOD.ASM", 0
	cdq_mnm          db    "CDQ"
	cdq_len          equ   $ - cdq_mnm  ; $ - счетчик местоположения, то есть cdq_len = адрес наачала cdq_mnm - адрес его конца
	idiv_mnm         db    "IDIV    "
	idiv_len         equ   $ - idiv_mnm
	call_mnm         db    "CALL    "
	call_len         equ   $ - call_mnm
	com_error        db    "COM_FILE_ERROR", 0dh, 0ah, "$"
	end_msg          db    "Result VIVOD.ASM", 0d, 0ah, "$"
	lock_mnm         db    "LOCK   "
	lock_len         equ   $ - lock_mnm
	regs             db    "ALCLDLBLAHCHDHBHAXCXDXBXSPBPSIDI"
	reg_len          equ   2
        bx_si            db    "BX+SI"
	bx_di            db    "BX+DI"
	bp_si            db    "BP+SI"
	bp_di            db    "BP+DI"
	si_              db    "SI"
	di_              db    "DI"
	bp_              db    "BP"
	bx_              db    "BX"
	rm16_len         equ   $ - bp_di
	rm16             dw    bx_si, bx_di, bp_si, bp_di, si_, di_, bp_, bx_
	word_ptr         db    "word ptr "
	byte_ptr         db    "byte ptr "
	ptr_len          equ   $ - byte_ptr
	ea16_len         equ   5
	mark_size_66     db    0
	mark_addr_67     db    0
	mark_solo_disp   db    0 	; это переменная нужна, чтобы скипать "+" для соло диспов
	seg_byte         db    0
	buffer           db    64 dup (?) ; строка которую наполняем постепенно, а потом записываем в файл
	com_data         db    2048 dup (?)
	byte_count       dw    ?   	; номер последнего байта в com_data (из числа прочитанных)
	dest             dw    ?
	size_ptr         dw    ?
	sibs             db    ?
	sibi             db    ?
	sibb             db    ?
	mode             db    ?
	rm               db    ?
	reg              db    ?
.code
Start:
	mov    ax, @DATA
	mov    ds, ax
	mov    es, ax
	cld
	mov    ax, 3D00h 		; открываем файл, ah - функция, al - права доступа
	mov    dx, offset com_file
	int    21h
	jnc    no_err 		; если нет ошибок, то флаг сf не поднимается
	mov    dx, offset com_error ; сообщение об ошибке с комом, полезно, если вдруг что-то не так будет на защите (например файл переименуют, как у всех было)
	mov    ah, 9h               ;      тогда сразу будет видно где ошибка
	int    21h
	jmp    exit
no_err:
	mov    bx, ax
	mov    ah, 3fh 		; считываем байти из ком файла в com_data
	mov    cx, 2048
	mov    dx, offset com_data
	int    21h
	add    ax, dx 		; ax = число прочитанных байт, dx = адрес начала
	mov    byte_count, ax       ; число прочитанных байт
	mov    ah, 3Eh 		; закрываем ком файл
	int    21h
	mov    ah, 3Ch 		; создаем файл-результат 
	xor    cx, cx 
	mov    dx, offset vivod
	int    21h
	mov    dest, ax   		; сохраняем дескриптор рез-файла
	mov    si, offset com_data
	mov    di, offset buffer
load_byte:
	cmp    si, byte_count 	; если si вышел за пределы com_data, то выходим
	jae    success_exit
	lodsb
	cmp    al, op_addr
	ja     commands
	cmp    al, op_gs
	jnbe   not_seg
	mov    seg_byte, al  ; сегмент просто сейвим для дальнейшнего декодинга
	jmp    load_byte
not_seg:
        cmp    al, op_size
	je     op_size_byte
	mov    mark_addr_67, al
	jmp    load_byte
op_size_byte:
	mov    mark_size_66, al
	jmp    load_byte
commands: 			
	cmp    al, op_lock
	jne    check_cdq
	mov    ax, offset lock_mnm
	mov    cx, lock_len
	call   pring_string
	jmp    load_byte
check_cdq:
	cmp    al, op_cdq
	jne    idiv_call
	mov    ax, offset cdq_mnm
	mov    cx, cdq_len
	call   pring_string
	jmp    end_buffer
idiv_call:
	and    al, 0Fh
	cmp    al, op_idiv16
	mov    dl, al
	ja     check_call
	call   modrm_byte
	mov    ax, offset idiv_mnm
	mov    cx, idiv_len
	call   pring_string
	cmp    dl, op_idiv8
	jne    check_idiv16
	mov    size_ptr, offset byte_ptr
	jmp    go_to_rm
check_idiv16:
	cmp    mode, 0C0h
	je     go_to_rm
	mov    size_ptr, offset word_ptr
	or     mark_size_66, 0
	jz     type_ptr
	mov    byte ptr [di], "d"
	inc    di
	jmp    type_ptr
check_call:
	mov    ax, offset call_mnm
	mov    cx, call_len
	call   pring_string
	cmp    dl, op_callrel
	jne    not_call_rel  	; если это не относительное rel16 32
	mov    ax, "+$" 	; сохраняем в буфер $+, то есть счеткик местоположения и +
	stosw
	xor    eax, eax 	; eax должен быть 0, для функции записи числа hex_to_ascii
	mov    mark_solo_disp, 1 
	or     mark_size_66, 0
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
	jmp    end_buffer
rel_not0:
	jns    go_to_imm 		; если положительное, то пишем
	or     mark_size_66, 0
	jz     neg_ax
	neg    eax
	jmp    minus
neg_ax:
	neg    ax 			; если отрицательное, то делаем модуль и пишем минус ($+ -> $-)
minus:
	mov    byte ptr [di-1], "-"
	jmp    go_to_imm
not_call_rel:
	cmp    dl, op_callrmm
	jne    call_ptr 
	call   modrm_byte ; вызываем функцию, которая возвращает мод, рег и рм
	mov    size_ptr, offset word_ptr
	cmp    reg, 4h  
	je     go_to_rm   
call_mem:
	mov    byte ptr [di], "d"
	inc    di	
	jmp    type_ptr
call_ptr:
	mov    mark_solo_disp, 1
	xor    eax, eax 
	mov    bx, ax
	lodsw
	or     mark_size_66, 0
	jz     no_ptr32 ; если ноль, то пишем 16-битное
	mov    bx, ax   ; если не ноль, то пишем 32-битное
	lodsw           ; в ах теперь младшая часть, а в bx старшая
no_ptr32:
	push   ax       ; для jmp ptr16:16/32 в памяти идет :16/32 а помто 16:, поэтому пушим :16
	lodsw           ; грузим 16:
	call   hex_to_ascii ; пишем 16:
	mov    al, ":" ; пишем :
	stosb
	pop    ax      ; восстанавливаем :16
	or     mark_size_66, 0
	jz     go_to_imm ; если нет 66 префикса то пишем :16
	push   ax bx     ; иначе пишем :32, пушим старшую часть, а затем младшую
	pop    eax       ; и поп как раз дает в ax младшую часть, в старшей части eax - старшая часть (bx)
go_to_imm:
	call   hex_to_ascii
	jmp    end_buffer
go_to_rm:
	cmp    mode, 0C0h   ; если мод=11 пишем регистр по индексу из поля рм
	jne    type_ptr 
	push   bx si
	mov    bx, offset regs
	cmp    dl, op_idiv8
	je     go_to_reg
	add    bx, 16
	or     mark_size_66, 0
	jz     go_to_reg
	mov    al, "E"
	stosb
go_to_reg:
	movzx  ax, rm
	mov    cx, reg_len
	add    ax, bx
	call   pring_string
	pop    si bx
	jmp    end_buffer
type_ptr:
	mov    cx, ptr_len
	mov    ax, size_ptr
	call   pring_string
go_to_seg:
	push   bx
	or     seg_byte, 0
	jz     default_seg       ; если seg не ноль, то пишем этот сегмент
	mov    al, 'E'
	cmp    seg_byte, op_es
	je     end_go_to_seg
	mov    al, 'C'
	cmp    seg_byte, op_cs
	je     end_go_to_seg
	mov    al, 'D'
	cmp    seg_byte, op_ds
	je     end_go_to_seg
	mov    al, 'S'
	cmp    seg_byte, op_ss
	je     end_go_to_seg
	mov    al, 'F'
	cmp    seg_byte, op_fs
	je     end_go_to_seg
	mov    al, 'G'
	jmp    end_go_to_seg
default_seg:
	mov    al, 'D'
	movzx  bx, rm
	or     mark_addr_67, 0
	jnz    modrm32             ; если нет 67 префикса, то работаем с модрм16
	cmp    bl, 4h               ; ДЛЯ BP+SI НУЖЕН SS 
	je     go_to_ss
	cmp    bl, 6h               ; ДЛЯ BP+DI НУЖЕН SS 
	JE     go_to_ss
	cmp    bl, 0Ch           ; если рм = 1100 (bp или дисп16)
	jne    end_go_to_seg   ; если не равен, то пишем дефолтный сегмент
	or     mode, 0             ; если равен, то проверяем мод
	jnz    go_to_ss              ; если мод не ноль, то это [bp+disp8/16]
	jmp    end_go_to_seg         ; если ноль, то это disp16, пишем DS
modrm32:
	mov    al, 'D'      ; у модрм 32 везде DS, кроме EBP
	cmp    bl, 0Ah           ; EBP
	jne    end_go_to_seg       
	or     mode, 0             ; опять проверяем мод, если не ноль, то это [EBP+disp8/32]
	jz     end_go_to_seg       ; если ноль, то DS
go_to_ss:
	mov    al, 'S'  ; пишем SS
end_go_to_seg:
	stosb
	mov    al, 'S'
	stosb
	mov    ax, '[:'
	stosw
	pop    bx
	or     mark_addr_67, 0
	jnz    modrm32_bit  ; если есть 67 префикс идем на 32 битную адресацию
	or     mode, 0   ; в 16 битах первым делом смотрим на мод00 дисп16
	jnz    mode_01_10
	cmp    rm, 0Ch ; дисп16
	jne    mode_01_10
	xor    eax, eax ; если мод00 и рм110, то это дисп16, пишем его и выходим
	lodsw
	mov    mark_solo_disp, 1
	call   hex_to_ascii
	jmp    end_rm
mode_01_10: ; если мод не 00, то это [регистр+дисп8/16]
	movzx  bx, rm
	mov    cx, 2
	cmp    bl, 6h
	ja     one_reg_rm16
	mov    cx, 5
one_reg_rm16:
	mov    ax, rm16[bx]
	call   pring_string     ; можно сразу вывести начало рм, а дальше смотрим дисп
	or     mode, 0           ; если мод 00, то диспа нету
	jz     end_rm
	xor    eax, eax            ; иначе готовимся его писать
	cmp    mode, 40h    ; если мод не 01, то пишем байтовый дисп
	jne    mod_10
	lodsb
	jmp    go_to_disp_8_16
mod_10:  ; иначе пишем вордовый дисп
	lodsw
go_to_disp_8_16:
	call   hex_to_ascii
	jmp    end_rm  ; выходим, конец 16 битного рм
modrm32_bit:
	cmp    rm, 8h             ; это сиб байт
	jne    no_sib             
	lodsb                          ; вытягиваем сиб и разбираем на скейл, индекс, базу
	mov    ah, al
	and    ah, 0C0h
	mov    sibs, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 0Eh
	mov    sibi, ah
	and    al, 7h
	shl    al, 1
	mov    sibb, al
	movzx  bx, sibb
	mov    al, 'E'
	stosb
	mov    cx, reg_len
	lea    ax, regs+16             ; пишем базу в буффер
	add    ax, bx 
	call   pring_string
	cmp    sibb, 0Ah           ; проверяем базу 101 (ebp)
	jne    not_base_ebp
	or     mode, 0                ; если база 101, и мод=0, то..
	jnz    not_base_ebp
	sub    di, 3                    ; двигаем di до начала, так как база не EBP, а только дисп 32
	jmp    sib_index                   ; пишем индекс и пропускаем проверку NONE и запись + после базы
not_base_ebp:
	cmp    sibi, 8h          ; проверяем индекс 100, то есть NONE
	je     scale_0                ; если индекс NONE, то не пишем индекс
	mov    al, "+"                 ; если не NONE дальше пишем индекс, поэтому '+'
	stosb
sib_index:
	movzx  bx, sibi               ; запись индекса
	mov    al, 'E'
	stosb
	mov    cx, reg_len
	lea    ax, regs+16      
	add    ax, bx
	call   pring_string
	mov    ah, sibs             ; дальше пишем масштаб
	or     ah, ah                  ; если он 0, то пропускаем его
	jz     scale_0
	shr    ah, 5                   ; иначе сдвигаем на 5, таким образом масштаб 10 (*4) будет 100b=4d, а 01 (*2) - 10b=2d 
	jnp    scale_2_4             ; jp - прыжок, если четное число битов, в 4 и 3 бите ah может быть 11, 10, 01
	mov    ah, 8                   ;      тогда если после сдвига на 5, чсило битов четное, то это 11, то есть масштаб "*8"
scale_2_4:                        ;          
	add    ah, "0"                 ; преобразуем масштаб в ASCII
	mov    al, "*"                 
	stosw                           ; и пишем со звездочкой
scale_0:
	cmp    sibb, 0Ah          ; проверяем базу 101 (ebp)
	jne    check_disp_8_32         ; если база не 101, то провеярем дисп8/32
	or     mode, 0               ; если база 101 и мод=0, то тогда база это дисп32
	jz     disp_32
	jmp    check_disp_8_32         ; иначе дисп8/32
no_sib:    ; всё выше было про сиб байт, если его нет, то
	cmp    rm, 0Ah             ; проверяем рм101 (EBP)
	jne    go_to_rm32              ; если не 101, то смело пишем рм
	or     mode, 0               ; если 101 и мод=0, то тогда там дисп32
	jnz    go_to_rm32
	mov    mark_solo_disp, 1             ; готовимся его писать, так как он там один, то дисп=0, мы пишем
disp_32:
	xor    eax, eax
	lodsd
	call   hex_to_ascii
	jmp    end_rm
go_to_rm32:
	movzx  bx, rm
	mov    al, 'E'
	stosb
	mov    cx, reg_len
	lea    ax, regs+16
	add    ax, bx
	call   pring_string
	or     mode, 0               ; если мод0, то выходим, если нет, то идем проверять дисп8/32
	jz     end_rm
check_disp_8_32:
	cmp    mode, 40h       ; мод=01 - дисп32
	ja     disp_32
	jb     end_rm
	xor    eax, eax
	lodsb                           ; иначе дисп8
	call   hex_to_ascii
end_rm:
	mov    al, "]"
	stosb
end_buffer:
	push   si
	mov    ax, 0a0dh
	stosw
	mov    ah, 40h
	mov    dx, offset buffer
	mov    cx, di
	sub    cx, dx  ; длина
	mov    di, dx
	mov    bx, dest
	push   cx
	int    21h
	pop    cx
	xor    al, al
	push   di
	rep    stosb
	pop    di
	mov    seg_byte, 0
	mov    mark_size_66, 0
	mov    mark_addr_67, 0
	mov    mark_solo_disp, 0
	mov    size_ptr, 0
	pop    si
	jmp    load_byte
success_exit:
	mov    dx, offset end_msg ; вывод сообщения об успехе
	mov    ah, 9
	int    21h
	mov    ah, 3Eh
	mov    bx, dest  ; закрываем файл результат
	int    21h
exit:
	mov    ah, 4Ch
	int    21h

pring_string proc
	push   si
	mov    si, ax
	rep    movsb
	pop    si
	ret
endp

modrm_byte proc
	lodsb
	mov    ah, al
	and    ah, 0C0h
	mov    mode, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 0Eh
	mov    reg, ah
	and    al, 7h
	shl    al, 1
	mov    rm, al
	ret
endp

hex_to_ascii proc
	push   bx
	cmp    mark_solo_disp, 1  ; проверка на имм
	je     check_imm_zero
	or     eax, eax    ; если это не имм, то есть дисп, то проверяем нулевое смещение
	jz     ret_hex_ascii 
	mov    byte ptr [di], "+" ; если дисп не ноль, то пишем плюс, увеличиваем di
	inc    di                  ; здесь пишем не через al, потому что там число
check_imm_zero:
	or     eax, eax        ; проверка нулевого имм
	jnz    not_zero_imm
	mov    al, "0"         ; если ноль пишем 0 в буффер и выходим
	stosb
	jmp    go_to_h
not_zero_imm:
	mov    ebx, eax       ; число для записи в EBX
	mov    cl, 8          ; число байт в EAX
	jmp    test_jump
leading_zeros:
	dec    cl             ; уменьшаем число байт для записи
	rol    ebx, 4         ; убираем ненужные нули спереди
test_jump:
	test   ebx, 0F0000000h  ; если результат 0, то спереди числа незначащие нули, убираем их
	jz     leading_zeros
	xor    eax, eax
	shld   eax, ebx, 4    ; двигаем старший байт для записи в eax
	cmp    al, 9          ; проверяем его на то, что он не буква
	jna    number_first
	mov    al, "0"         ; если буква, то пишем 0
	stosb
number_first:
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
go_to_h:
	mov    al, "H"         ; сохраняем 'H'
	stosb
ret_hex_ascii:
	pop    bx
	ret
endp
    End    Start
