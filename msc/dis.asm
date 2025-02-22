.model small
.386
.stack 100h
.data
cwd_            db    "CWD"
sar_            db    "SAR"
mov_            db    "MOV"
com             db    "COM.COM", 0
error           db    "com_error", 13, 10, "$"
result          db    "RESULT.ASM", 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
reg8            db    "ALCLDLBLAHCHDHBH"
reg16           db    "AXCXDXBXSPBPSIDI"
reg32           db    "EAXECXEDXEBXESPEBPESIEDI"
sreg            db    "ESCSSSDSFSGS"
sregs           dw    sreg,  sreg+2,  sreg+4,  sreg+6,  sreg+8,   sreg+10
regs8           dw    reg8,  reg8+2,  reg8+4,  reg8+6,  reg8+8,   reg8+10,  reg8+12,  reg8+14
regs16          dw    reg16, reg16+3, reg16+6, reg16+9, reg16+12, reg16+15, reg16+18, reg16+21
string          db    0Ah dup(?) ; строка для записи в файл
byte_ptr        db    "byte ptr "
word_ptr        db    "word ptr "
dword_ptr       db    "dword ptr "
lock_           db    "LOCK "
BX_SI           db    "BX+SI"
BX_DI           db    "BX+DI"
BP_SI           db    "BP+SI"
BP_DI           db    "BP+DI"
rm16            dw    BX_SIstr, BX_DIstr, BP_SIstr, BP_DIstr, SIstr, DIstr, BPstr,  BXstr ; байт РМ
mod00_16_def_seg    dw    ds_seg, ds_seg, ss_seg, ss_seg, ds_seg, ds_seg, ds_seg, ds_seg ; дефолтные сегменты для памяти в РМ
; OPCODES are: 0F, 26, 2E, 36, 3E, 64, 65, 66, 67, 69, 6B, 99, (0F) AF, E9, EA, EB, F0, F6, F7, FF(r4), FF(r5)
; 0=NOTHING, 1=ES, 2=CS, 3=DS, 4=SS, 5=FS, 6=GS, 7=size66, 8=addr67, 9=lock, 10=cdq, 11=jmp, 12=imul
; ENUM - нумерованный тип данных, тут просто идет next_opcode = 0, ies = 1 и тд, просто симовол:=число
operands    ENUM {
    no_operand,
    al_operand, cl_operand, dl_operand, bl_operand, ah_operand, ch_operand, dh_operand, bh_operand,
    ax_operand, cx_operand, dx_operand, bx_operand, sp_operand, bp_operand, si_operand, di_operand,
    one_operand,
    imm8_operand, imm1632_operand,
    moffs_operand, moffs1632_operand,
    r8_operand, r16_operand,
    sreg_operand,`1
    rm8_operand, rm1632_operand
}
opcodes        dw    26h dup(next_opcode)
               dw    s_es, 7 dup(next_opcode)
               dw    s_cs, 7 dup(next_opcode) 
               dw    s_ss, 7 dup(next_opcode)
               dw    s_ds, 25h dup(next_opcode)
               dw    s_fs, s_gs, size_prefix, addr_prefix, 20h dup(next_opcode)
               dw    mov_rm8_r8, mov_rm1632_r1632 
               dw    mov_r8_rm8, mov_r1632_rm16_32
               dw    mov_m16r1632_sreg, mov_sreg_rm16, 0Ah dup(next_opcode)
               dw    cwd_print, 6 dup(next_opcode)
               dw    mov_al_moffs8, mov_e_ax_moffs1632, mov_moffs8_al, mov_moffs1632_e_ax, 0Ch dup(next_opcode) 
               dw    mov_al_imm8, mov_bl_imm8, mov_cl_imm8, mov_dl_imm8
               dw    mov_ah_imm8, mov_ch_imm8, mov_dh_imm8, mov_bh_imm8
               dw    mov_e_ax_imm1632, mov_e_cx_imm1632, mov_e_dx_imm1632, mov_e_bx_imm1632
               dw    mov_e_sp_imm1632, mov_e_bp_imm1632, mov_e_si_imm1632, mov_e_di_imm1632 
               dw    sar_rm8_imm8, sar_rm1632_imm8, 4 dup(next_opcode)
               dw    mov_rm8_imm8, mov_rm1632_imm1632, 8 dup(next_opcode) 
               dw    sar_rm8_1, sar_rm1632_1, sar_rm8_cl, sar_rm1632_cl, 1Ch dup(next_opcode) 
               dw    lock_print
operand1       db    no_operand
operand2       db    no_operand
modrm_mod      db    0
modrm_rm       db    0
modrm_reg      db    0
sib_s          db    0
sib_i          db    0
sib_b          db    0
handle         dw    0
prefix_seg     dw    0
prefix_66      db    0
prefix_67      db    0
is_imm         db    0 ; это переменная нужна, чтобы скипать "+" для иммов, и так же, чтобы писать нулевой имм, так как имм 0 (imul ax, 0) нужно писать, а смещение=0 писать не нужно
com_buffer     db    4096 dup (0)
end_offset     dw    ? ; номер последнего байта в com_buffer (из числа прочитанных)

.code
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    mov     ax, 3D00h ; открываем файл, ah - функция, al - права доступа
    lea     dx, com
    int     21h
    jc      err ; если нет ошибок, то флаг сf не поднимается
    mov     bx, ax
    lea     dx, com_buffer
    mov     cx, 4096
    mov     ah, 3fh ; считываем байти из ком файла в com_buffer
    int     21h
    add     dx, ax ; ax = число прочитанных байт, dx = адрес начала
    mov     [end_offset], dx 
    mov     ah, 3Eh ; закрываем ком файл
    int     21h
    mov     ah, 3Ch ; создаем файл-результат 
    xor     cx, cx
    lea     dx, result
    int     21h
    mov     [handle], ax ; сохраняем дескриптор рез-файла
    lea     si, com_buffer 
next_opcode:
    cmp     si, [end_of_data] ; если si вышел за пределы com_buffer, то выходим
    jnbe    success_exit
    lodsb
    lea     bx, offset opcodes ; bx = адрес таблицы с метками
    xor     ah, ah
    shl     ax, 1 ; так как индекс это байт, а адрес это слово, то увеличиваем его в 2 раза
    add     bx, ax
    jmp     bx   ; прыгаем по адресу метки
; все сегменты, просто сохраняем встретившийся сегмент
save_es:
    lea     ax, sreg
    jmp     save_seg
save_cs:
    lea     ax, sreg+2
    jmp     save_seg
save_ss:
    lea     ax, sreg+4
    jmp     save_seg
save_ds:
    lea     ax, sreg+6
    jmp     save_seg
save_fs:
    lea     ax, sreg+8
    jmp     save_seg
save_gs:
    lea     ax, sreg+10
save_seg:
    mov     [prefix_seg], ax
    jmp     next_opcode
; то же самое с префиксами 66 и 67, сохраняем, если встретили
size_prefix:
    mov     [prefix_66], 1
    jmp     next_opcode
addr_prefix:
    mov     [prefix_67], 1
    jmp     next_opcode
lock_label: ; lock выводим сразу
    mov     ax, offset lock_str
    call    print_to_buffer
    jmp     next_opcode
cdq_label:  ; cdq выводим сразу
    mov     ax, offset cdq_str
    call    print_to_buffer
    jmp     jmp_to_print_to_file
jmp_label:  ; jmp записываем JMP в буфер и начинаем смотреть опкоды
    mov     ax, offset jmp_str
    call    print_to_buffer
    cmp     [opcode], 0E9h
    je      rel
    cmp     [opcode], 0EBh
    jne     not_rel_8_16
rel: ; если это относительное JMP, то есть 0E9h или 0EBh (rel16 и rel8)
    mov     ax, "+$" ; сохраняем в буфер $+, то есть счеткик местоположения и +
    stosw
    xor     eax, eax ; eax должен быть 0, для функции записи числа print_hex_num
    mov     [is_imm], 1 ; флаг, что это иммедиат
    cmp     [opcode], 0EBh
    je      rel8 
    lodsw   ; так как rel16, то загружаем слово из памяти
    add     ax, 3 ; +3 потому что прыжок 3-х байтовый (опкод + 2 байта для адреса), (rel считается как адрес начала след команды + смещение)
    jnz     not_zero_rel16 ; если не ноль, то пишем
remove_rel_sign:
    dec     di ; если ноль то двигаем указатель назад, таким образом запись уберет + из $+ ($+ -> $) (прыжок на самого себя)
    jmp     jmp_to_print_to_file
not_zero_rel16:
    jns     print_imm ; если положительное, то пишем
    neg     ax ; если отрицательное, то делаем модуль и пишем минус ($+ -> $-)
put_minus:
    mov     byte ptr [di-1], "-"
    jmp     print_imm
rel8: ; если это относительное JMP 8-битное, то есть 0EBh
    lodsb
    inc     al ; два инка , потому что прыжок 2 байтовый (опкод + 1б смещение), (add al, 2 = опкод+модрм+имм (3 байта), а инк = 1 байт)
    inc     al
    jz      remove_rel_sign ; если ноль, то убираем знак и пишем
    jns     print_imm   ; если положительное, то пишем
    neg     al  ; для модуля
    jmp     put_minus ; и ставим минус (если писать $+ отрицательное, то прыжок может вылететь за свои пределы)
not_rel_8_16:
    cmp     [opcode], 0FFh
    jne     jmp_ptr ; если опкод не 0FF, то это EA - JMPF	ptr16:16/32
    call    get_mod_reg_rm ; вызываем функцию, которая возвращает мод, рег и рм
    cmp     [reg], 1000b ; если рег не 1000b (4, почему 1000b см в функции), то это FF рег=5 JMPF	m16:16/32
    jne     jmp_memory
    mov     ax, offset word_ptr ; для ff рег=4 JMP	    r/m16/32 пишем word ptr    
    cmp     [mode], 11000000b
    jne     print_ptr_rm ; здесь если мод=11, то пишем регистр, значение в рм, а если не 11, то пишем рм
    mov     al, [rm]
    mov     [reg], al
    call    print_reg
    jmp     jmp_to_print_to_file
jmp_memory:
    mov     ax, offset dword_ptr ; для ff рег=5 JMP	    m16/32 пишем dword ptr, и пишем рм
    jmp     print_ptr_rm
jmp_ptr:
    mov     [is_imm], 1
    xor     eax, eax ; для записи числа
    mov     bx, ax
    lodsw
    or      [is_size_66], 0
    pushf   ; созраняем флаги, чтобы потом не делать опять or [is_size_66], 0
    jz      no_ptr32 ; если ноль, то пишем 16-битное
    mov     bx, ax   ; если не ноль, то пишем 32-битное
    lodsw            ; в ах теперь младшая часть, а в bx старшая
no_ptr32:
    push    ax       ; для jmp ptr16:16/32 в памяти идет :16/32 а помто 16:, поэтому пушим :16
    lodsw            ; грузим 16:
    call    print_hex_num ; пишем 16:
    mov     al, ":" ; пишем :
    stosb
    pop     ax      ; восстанавливаем :16
    popf            ; флаги от or [is_size_66], 0
    jz      print_imm ; если нет 66 префикса то пишем :16
    push    ax bx     ; иначе пишем :32, пушим старшую часть, а затем младшую
    pop     eax       ; и поп как раз дает в ax младшую часть, в старшей части eax - старшая часть (bx)
    jmp     print_imm
one_operand_rm:     ; для однооперандного imul 
    cmp     [mode], 11000000b ; если мод=11, то пишем регистр (его значение в рм)
    jne     one_op_eff_addr
    jmp     print_rm
one_op_eff_addr:    
    cmp     [opcode], 0F6h ; если опкод 0F6, то это имул байтовый, иначе имул 16/32
    jne     word_dword_ptr
    mov     ax, offset byte_ptr ; пишем byte ptr и рм
    jmp     print_ptr_rm
word_dword_ptr:
    mov     ax, offset word_ptr 
    sub     al, is_size_66 ; если есть 66 префикс, то будет word_ptr - 1, а это dword_ptr
    sbb     ah, 0          ; здесь 0, для того случая, если адрес вдруг будет например 0200h (is_size_66 это байт, из ax вычесть нельзя)
                           ; тогда al будет ff, ax = 02FFh, и чтобы было правильным нужно вычесть перенос из ah, чтобы было 01ffh
print_ptr_rm:
    call    print_to_buffer
print_rm:
    call    print_rm_proc
    jmp     jmp_to_print_to_file
imul_label: ; для имула также пишем в буфер строку
    mov     ax, offset imul_str
    call    print_to_buffer
    cmp     [opcode], 0Fh ; если опкод 0F, то это имул 0F AF IMUL	r16/32	r/m16/32 (двухбайтовый)	
    jne     not_2_opcode_byte_imul
    lodsb   ; грузим AF
    mov     [opcode], al ; сохраняем     для    cmp     [opcode], 6Bh
not_2_opcode_byte_imul:
    call    get_mod_reg_rm ; для имула также нужно получить мод, рег и рм
    cmp     [opcode], 0F6h ; если F6 или F7, то имул однооперандный (байтовый или д/вордовый)
    jae     one_operand_rm
    call    print_reg      ; пишем регистр, потому что первый операнд у 2/3 операндных это регистр
    mov     al, ","        ; пишем запятую
    stosb
    call    print_rm_proc  ; пишем рм, если мод=11, то она напише регистр
    cmp     [opcode], 6Bh  ; если опкод выше 6B, то это двухоперандный имул
    ja      jmp_to_print_to_file
    pushf                  ; сохраняем флаги от     cmp     [opcode], 6Bh 
    cmp     [mode], 11000000b ; если мод=11, то это рег, рег
    jne     not_reg_reg
    mov     al, [reg]
    cmp     al, [rm]          ; если рег=рм и мод=11, то это что-то типа imul ax,ax,1, в таком случае нужно писать imul ax,1
                              ; это видно в дебагерре и такое было на 8 тесте
    jne     not_reg_reg
move_to_comma:                ; здесь буффер будет выглядеть как "imul ax,ax"
    cmp     byte ptr [di], ","; двигаем di до запятой, чтобы потом поверх регистра написать imm
    je      not_reg_reg
    dec     di
    jmp     move_to_comma
not_reg_reg:                  ; если рег!=рм или мод!=11, то пишем три операнда
    mov     al, ","
    stosb
    xor     eax, eax          ; для записи числа (см print_hex_num)
    mov     [is_imm], 1
    popf                      ; флаги от     cmp     [opcode], 0F6h
    jnb     byte_imm          ; если не ниже, то опкод 0F7, то есть imm16/32, иначе imm8
    or      [is_size_66], 0
    jz      word_imm          ; ну и соотвественно если есть префикс 66, то imm32, иначе imm16
    lodsd
    jmp     print_imm
word_imm:
    lodsw
    jmp     print_imm
byte_imm:
    lodsb
print_imm:
    call    print_hex_num
jmp_to_print_to_file:
    call    print_to_file
    jmp     scan_bytes
err:
    mov     dx, offset error ; сообщение об ошибке с комом, полезно, если вдруг что-то не так будет на защите (например файл переименуют, как у всех было)
    mov     ah, 9                ;      тогда сразу будет видно где ошибка
    int     21h
exit:
    mov     ah, 3Eh
    mov     bx, [handle]  ; закрываем файл результат
    int     21h
    mov     ah, 4Ch
    int     21h

;--------------------------------------------------------------------------------------
; Процедура get_mod_reg_rm
; На вход: ничего
; На выход: мод, рег и рм
; Описание: грузит байт из com_buffer по адресу [si], затем разбивает на мод, рег, рм
;           для рег и рм смещенение shr 2 и shl 1 для движения по массивам рег и рм,
;           потому что массив состоит из слов, а не из байтов
;--------------------------------------------------------------------------------------
get_mod_reg_rm proc
    lodsb
    mov     ah, al
    and     ah, 11000000b
    mov     [mode], ah
    mov     ah, al
    shr     ah, 2
    and     ah, 1110b
    mov     [reg], ah
    and     al, 111b
    shl     al, 1
    mov     [rm], al
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура print_reg
; На вход: ничего
; На выход: ничего
; Описание: сохраняет bx и si, затем пишем байтовый регистр для имула F6, или ворд/дворд 
;           Значение регистра из поля рег.
;--------------------------------------------------------------------------------------
print_reg proc
    push    bx si
    mov     bx, offset regs8
    cmp     [opcode], 0F6h
    je      go_print
    mov     bx, offset regs16
    or      [is_size_66], 0
    jz      go_print
    mov     bx, offset regs32
go_print:
    movzx   si, reg
    mov     ax, [bx + si]
    call    print_to_buffer
    pop     si bx
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура print_reg
; На вход: ничего
; На выход: ничего
; Описание: пишем регистр из поля рм, если мод=11, иначе пишем сегмент и операнд рм
;--------------------------------------------------------------------------------------
print_rm_proc  proc
    cmp     [mode], 11000000b   ; если мод=11 пишем регистр по индексу из поля рм
    jne     not11mod
    mov     al, rm
    mov     bl, al
    mov     bh, reg
    mov     reg, al
    call    print_reg
    mov     reg, bh
    mov     rm, bl
    jmp     ret_reg
not11mod:   ; если мод не 11
    call    print_seg   ; первым делом пишем сегмент в формате '_S:['
    or      [is_addr_67], 0
    jnz     bit32_addr  ; если есть 67 префикс идем на 32 битную адресацию
    or      [mode], 0   ; в 16 битах первым делом смотрим на мод00 дисп16
    jnz     not_00_mod_16
    cmp     [rm], 1100b ; дисп16
    jne     not_00_mod_16
    xor     eax, eax ; если мод00 и рм110, то это дисп16, пишем его и выходим
    lodsw
    mov     [is_imm], 1
    call    print_hex_num
    jmp     return
not_00_mod_16: ; если мод не 00, то это [регистр+дисп8/16]
    movzx   bx, rm
    mov     ax, [bx + rm16]
    call    print_to_buffer     ; можно сразу вывести начало рм, а дальше смотрим дисп
    or      [mode], 0           ; если мод 00, то диспа нету
    jz      return
    xor     eax, eax            ; иначе готовимся его писать
    cmp     [mode], 1000000b    ; если мод не 10, то пишем байтовый дисп
    jne     not_01_mod_16
    lodsb
    jmp     print_disp_byte_word
not_01_mod_16:  ; иначе пишем вордовый дисп
    lodsw
print_disp_byte_word:
    call    print_hex_num
    jmp     return  ; выходим, конец 16 битного рм
bit32_addr:
    cmp     [rm], 1000b             ; это сиб байт
    jne     no_sib_byte             
    lodsb                           ; вытягиваем сиб и разбираем на скейл, индекс, базу
    mov     ah, al
    and     ah, 11000000b
    mov     [sib_s], ah
    mov     ah, al
    shr     ah, 2
    and     ah, 1110b
    mov     [sib_i], ah
    and     al, 111b
    shl     al, 1
    mov     [sib_b], al
    movzx   bx, sib_b
    mov     ax, [bx + regs32]        ; пишем базу в буффер
    call    print_to_buffer
    cmp     [sib_b], 1010b           ; проверяем базу 101 (ebp)
    jne     no_base_101
    or      [mode], 0                ; если база 101, и мод=0, то..
    jnz     no_base_101
    sub     di, 3                    ; двигаем di до начала, так как база не EBP, а только дисп 32
    jmp     index                   ; пишем индекс и пропускаем проверку NONE и запись + после базы
no_base_101:
    cmp     [sib_i], 1000b          ; проверяем индекс 100, то есть NONE
    je      no_scale                ; если индекс NONE, то не пишем индекс
    mov     al, "+"                 ; если не NONE дальше пишем индекс, поэтому '+'
    stosb
index:
    movzx   bx, sib_i               ; запись индекса
    mov     ax, [bx + regs32]
    call    print_to_buffer
    mov     ah, [sib_s]             ; дальше пишем масштаб
    or      ah, ah                  ; если он 0, то пропускаем его
    jz      no_scale
    shr     ah, 5                   ; иначе сдвигаем на 5, таким образом масштаб 10 (*4) будет 100b=4d, а 01 (*2) - 10b=2d 
    jnp     not_scale_8             ; jp - прыжок, если четное число битов, в 4 и 3 бите ah может быть 11, 10, 01
    mov     ah, 8                   ;      тогда если после сдвига на 5, чсило битов четное, то это 11, то есть масштаб "*8"
not_scale_8:                        ;          
    add     ah, "0"                 ; преобразуем масштаб в ASCII
    mov     al, "*"                 
    stosw                           ; и пишем со звездочкой
no_scale:
    cmp     [sib_b], 1010b          ; проверяем базу 101 (ebp)
    jne     check_disp_8_32         ; если база не 101, то провеярем дисп8/32
    or      [mode], 0               ; если база 101 и мод=0, то тогда база это дисп32
    jz      disp32
    jmp     check_disp_8_32         ; иначе дисп8/32
no_sib_byte:    ; всё выше было про сиб байт, если его нет, то
    cmp     [rm], 1010b             ; проверяем рм101 (EBP)
    jne     print_rm32              ; если не 101, то смело пишем рм
    or      [mode], 0               ; если 101 и мод=0, то тогда там дисп32
    jnz     print_rm32
    mov     [is_imm], 1             ; готовимся его писать, так как он там один, то дисп=0, мы пишем
disp32:
    xor     eax, eax
    lodsd
    call    print_hex_num
    jmp     return
print_rm32:
    movzx   bx, rm
    mov     ax, [bx + regs32]       ; выводим рм двигаясь по массиву
    call    print_to_buffer
    or      [mode], 0               ; если мод0, то выходим, если нет, то идем проверять дисп8/32
    jz      return
check_disp_8_32:
    cmp     [mode], 1000000b       ; мод=10 - дисп32
    ja      disp32
    jb      return
    xor     eax, eax
    lodsb                           ; иначе дисп8
    call    print_hex_num
return:
    mov     al, "]"
    stosb
ret_reg:
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура print_buffer
; На вход:  AX - адрес строки для записи
; На выход: ничего
; Описание: сохраняет si, затем пишет строку по адресу AX в буфер
;--------------------------------------------------------------------------------------
print_to_buffer proc
    push    si
    mov     si, ax
    call    get_str_len
    rep     movsb
    pop     si
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура get_str_len
; На вход:  Si - адрес ASCIIZ строки для измерения длины
; На выход: CX - длина входной строки
; Описание: сохраняет di, идет по строке пока не встретит 0, таким образом в cx длина строки
;
; Пример для 'EAX, 0': длина строки 3
;       repnz scasb сработает 3 раза
;       0) di указывает на E, cx=ffff
;       1) di указывает на A, cx=fffe
;       2) di указывает на X, cx=fffd
;       3) di указывает на 0, cx=fffc
;       4) конец, cx=fffb
;       not cx -> cx=0004 -> dec cx -> cx=0003
;--------------------------------------------------------------------------------------
get_str_len proc
    push    di
    xor     cx, cx
    not     cx      ; чтобы из cx=0000 сделать cx=FFFF
    xor     al, al
    mov     di, si
    repnz   scasb
    not     cx
    dec     cx
    pop     di
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура print_to_file
; На вход:  ничего
; На выход: ничего
; Описание: сохраняет si,
;           записывает в конец буффера cr и lf, затем пишет в файл строку по адресу
;           command_buffer, длина строки = начало строки - di (конец строки)
;           затем заполняет всю длину  записанной строки нулями
;           обнуляет флаговые переменные
;--------------------------------------------------------------------------------------
print_to_file proc
    push    si
    mov     si, offset cr_lf
    call    get_str_len
    rep     movsb
    mov     dx, offset command_buffer
    mov     cx, di
    sub     cx, dx  ; длина
    mov     di, dx
    mov     ah, 40h
    mov     bx, handle
    push    cx
    int     21h
    pop     cx
    xor     al, al
    push    di
    rep     stosb
    pop     di
    mov     seg_ovr, 0
    mov     is_size_66, 0
    mov     is_addr_67, 0
    mov     is_imm, 0
    pop     si
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура print_seg
; На вход:  ничего
; На выход: ничего
; Описание: сохраняет bx,
;           записывает в буфер сегмент для РМ, смотрит на все флаги и пишет либо оверрайд
;           сегмент, либо пишет дефолтный
;--------------------------------------------------------------------------------------
print_seg proc
    push    bx
    mov     ax, [seg_ovr]
    or      ax, ax
    jnz     print_seg_str       ; если seg ovr не ноль, то пишем этот сегмент
    movzx   bx, rm
    or      [is_addr_67], 0
    jnz     modrm32             ; если нет 67 префикса, то работаем с модрм16
    cmp     bl, 1100b           ; если рм = 1100 (bp или дисп16)
    jne     print_default_seg   ; если не равен, то пишем дефолтный сегмент
    or      [mode], 0           ; если равен, то проверяем мод
    jnz     print_ss            ; если мод не ноль, то это [bp+disp8/16]
    jmp     print_default_seg   ; если ноль, то это disp16, пишем DS
modrm32:
    mov     ax, offset ds_seg   ; у модрм 32 везде DS, кроме EBP
    cmp     bl, 1010b           ; EBP
    jne     print_seg_str       
    or      [mode], 0           ; опять проверяем мод, если не ноль, то это [EBP+disp8/32]
    jz      print_seg_str       ; если ноль, то DS
print_ss:
    mov     ax, offset ss_seg   ; пишем SS
    jmp     print_seg_str
print_default_seg:
    mov     ax, [bx + mod00_16_def_seg] ; двигаемся по массиву
print_seg_str:
    call    print_to_buffer ; пишем сегмент
    pop     bx
    ret
endp
;--------------------------------------------------------------------------------------
; Процедура print_hex_num
; На вход:  EAX = число для записи, все остальные биты EAX обязательно равны нулю
; На выход: ничего
; Описание: сохраняет bx,
;           записывает в буфер ASCII число из EAX
;--------------------------------------------------------------------------------------
print_hex_num proc
    push    bx
    cmp     is_imm, 1  ; проверка на имм
    je      check_zero
    or      eax, eax    ; если это не имм, то есть дисп, то проверяем нулевое смещение
    jz      end_printing 
    mov     byte ptr [di], "+" ; если дисп не ноль, то пишем плюс, увеличиваем di
    inc     di                  ; здесь пишем не через al, потому что там число
check_zero:
    or      eax, eax        ; проверка нулевого имм
    jnz     non_zero_imm
    mov     al, "0"         ; если ноль пишем 0 в буффер и выходим
    stosb
    jmp     put_hex
non_zero_imm:
    mov     ebx, eax       ; число для записи в EBX
    mov     cl, 8          ; число байт в EAX
    jmp     test_first
deleting_zeros:
    dec     cl             ; уменьшаем число байт для записи
    rol     ebx, 4         ; убираем ненужные нули спереди
test_first:
    test    ebx, 0F0000000h  ; если результат 0, то спереди числа незначащие нули, убираем их
    jz      deleting_zeros
    xor     eax, eax
    shld    eax, ebx, 4    ; двигаем старший байт для записи в eax
    cmp     al, 9          ; проверяем его на то, что он не буква
    jna     not_a_letter
    mov     al, "0"         ; если буква, то пишем 0
    stosb
not_a_letter:
    xor     al, al         ; обнуляем al 
hex_to_ascii:
    shld    eax, ebx, 4    ; двигаем по байту в eax и записываем в буффер в ASCII формате
    shl     ebx, 4
    cmp     al, 9          ; проверка на букву
    jna     digit
    add     al, 7          ; доп слагаемое для букв
digit: 
    add     al, "0"         ; для чисел
    stosb                   ; сохраняем
    xor     al, al          ; зануляем так как al это байт, а нам нужно только 4 бита
    loop    hex_to_ascii    ; циклимся по всем байтам
put_hex:
    mov     al, "H"         ; сохраняем 'H'
    stosb
end_printing:
    pop     bx
    ret
endp

    End     Start