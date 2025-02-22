.modrm_mod  l small
.386
.stack 100h
.data
com       db    'COM.COM', 0 ; тут 0 для функций, которые работают с файлами (0Dh)
result    db    'RESULT.ASM', 0
cwd_      db    'CWD$' ; тут и далее ноль для процедуры get_str_len (считает длину строки до нуля)
mov_      db    'MOV    $'
sar_      db    'SAR    $'
error     db    'com_error', 13, 10, '$'
ALreg     db    'AL$'
CLreg     db    'CL$'
DLreg     db    'DL$'
BLreg     db    'BL$'
AHreg     db    'AH$'
CHreg     db    'CH$'
DHreg     db    'DH$'
BHreg     db    'BH$'
AXreg     db    'AX$'
CXreg     db    'CX$'
DXreg     db    'DX$'
BXreg     db    'BX$'
SPreg     db    'SP$'
BPreg     db    'BP$'
SIreg     db    'SI$'
DIreg     db    'DI$'
EAXreg    db    'EAX$'
ECXreg    db    'ECX$'
EDXreg    db    'EDX$'
EBXreg    db    'EBX$'
ESPreg    db    'ESP$'
EBPreg    db    'EBP$'
ESIreg    db    'ESI$'
EDIreg    db    'EDI$'
regs8     dw    ALreg, CLreg, DLreg, BLreg, AHreg, CHreg, DHreg, BHreg ; байтовые реги
regs16    dw    AXreg, CXreg, DXreg, BXreg, SPreg, BPreg, SIreg, DIreg ; слова реги
regs32    dw    EAXreg, ECXreg, EDXreg, EBXreg, ESPreg, EBPreg, ESIreg, EDIreg ; двойные слова реги
byte_ptr     db    'byte ptr $'
dword_ptr    db    'dword ptr $'
word_ptr     db    'word ptr $'
lock_str     db    'LOCK $'
BX_SIstr     db    ':[BX+SI$'
BX_DIstr     db    ':[BX+DI$'
BP_SIstr     db    ':[BP+SI$'
BP_DIstr     db    ':[BP+DI$'
SI_rm16      db    ':[SI$'
DI_rm16      db    ':[DI$'
BP_rm16      db    ':[BP$'
BX_rm16      db    ':[BX$'
rm16         dw    BX_SIstr, BX_DIstr, BP_SIstr, BP_DIstr, SIstr, DIstr, BPstr,  BXstr ; байт РМ
seg_rm16     dw    ds_seg, ds_seg, ss_seg, ss_seg, ds_seg, ds_seg, ds_seg, ds_seg ; дефолтные сегменты для памяти в РМ
es_seg    db    'ES$'
cs_seg    db    'CS$'
ss_seg    db    'SS$'
ds_seg    db    'DS$'
fs_seg    db    'FS$'
gs_seg    db    'GS$'
sregs     dw    es_seg, cs_seg, ss_seg, ds_seg, fs_seg, gs_seg

operands    ENUM {
    no_operand,
    al_operand, cl_operand, dl_operand, bl_operand, ah_operand, ch_operand, dh_operand, bh_operand,
    ax_operand, cx_operand, dx_operand, bx_operand, sp_operand, bp_operand, si_operand, di_operand,
    one_operand,
    imm8_operand, imm1632_operand,
    moffs_operand, moffs1632_operand,
    r8_operand, r16_operand,
    sreg_operand,
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
sib_scale      db    0
sib_index      db    0
sib_base       db    0
handle         dw    0
prefix_seg     dw    0
prefix_66      db    0
prefix_67      db    0
is_imm         db    0 ; это переменная нужна, чтобы скипать '+' для иммов, и так же, чтобы писать нулевой имм, так как имм 0 (imul ax, 0) нужно писать, а смещение=0 писать не нужно
opcode         db    0 ; хранит опкод команды, которую декодим
string         db    64 dup (0) ; строка которую наполняем постепенно, а потом записываем в файл
data_buffer    db    5120 dup (0)
end_offset     dw    ? ; номер последнего байта в data_buffer (из числа прочитанных)

.code
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    mov     ax, 3D00h ; открываем файл, ah - функция, al - права доступа
    lea     dx, com
    int     21h
    jc      com_error ; если нет ошибок, то флаг сf не поднимается
    mov     bx, ax
    lea     dx, data_buffer
    mov     cx, 4096
    mov     ah, 3fh ; считываем байти из ком файла в data_buffer
    int     21h
    add     ax, dx ; ax = число прочитанных байт, dx = адрес начала
    mov     [end_offset], ax 
    mov     ah, 3Eh ; закрываем ком файл
    int     21h
    mov     ah, 3Ch ; создаем файл-результат 
    xor     cx, cx 
    lea     dx, result
    int     21h
    mov     [handle], ax ; сохраняем дескриптор рез-файла
    lea     si, data_buffer
    lea     di, string
next_opcode:
    cmp     si, [end_offset] ; если si вышел за пределы data_buffer, то выходим
    jnbe    exit
    lodsb
    xor     ah, ah
    shl     ax, 1
    lea     bx, opcodes ; bx = адрес таблицы с метками
    add     bx, ax
    jmp     bx   ; прыгаем по адресу метки
; все сегменты, просто сохраняем встретившийся сегмент
s_es:
    lea     ax, es_seg
    jmp     save_pref_seg
s_cs:
    lea     ax, cs_seg
    jmp     save_pref_seg
s_ss:
    lea     ax, ss_seg
    jmp     save_pref_seg
s_ds:
    lea     ax, ds_seg
    jmp     save_pref_seg
s_fs:
    lea     ax, fs_seg
    jmp     save_pref_seg
s_gs:
    lea     ax, gs_seg
save_pref_seg:
    mov     [prefix_seg], ax
    jmp     next_opcode
size_prefix:
    mov     [prefix_66], 1
    jmp     next_opcode
addr_prefix:
    mov     [prefix_67], 1
    jmp     next_opcode
mov_rm8_r8:
mov_rm1632_r1632:
mov_r8_rm8:
mov_r1632_rm16_32:
mov_m16r1632_sreg:
mov_sreg_rm16:
cwd_print:  ; cdq выводим сразу
    lea     ax, cwd_
    call    print_to_buffer
    jmp     print_to_file
mov_al_moffs8:
mov_e_ax_moffs1632:
mov_moffs8_al:
mov_moffs1632_e_ax:
mov_r8_imm8:
mov_r1632_imm1632:
    mov_al_imm8:
    mov_bl_imm8:
    mov_cl_imm8:
    mov_dl_imm8:
    mov_ah_imm8:
    mov_ch_imm8:
    mov_dh_imm8:
    mov_bh_imm8:
    mov_e_ax_imm1632:
    mov_e_cx_imm1632:
    mov_e_dx_imm1632:
    mov_e_bx_imm1632:
    mov_e_sp_imm1632:
    mov_e_bp_imm1632:
    mov_e_si_imm1632:
    mov_e_di_imm1632:
sar_rm8_imm8:
sar_rm1632_imm8:
mov_rm8_imm8:
mov_rm1632_imm1632:
sar_rm8_1:
sar_rm1632_1:
sar_rm8_cl:
sar_rm1632_cl:
lock_print: ; lock выводим сразу
    lea     ax, lock_str
    call    print_to_buffer
    jmp     next_opcode


com_error:
    lea     dx, error ; сообщение об ошибке с комом, полезно, если вдруг что-то не так будет на защите (например файл переименуют, как у всех было)
    mov     ah, 9                ;      тогда сразу будет видно где ошибка
    int     21h
exit:
    mov     ah, 3Eh
    mov     bx, [handle]  ; закрываем файл результат
    int     21h
    mov     ah, 4Ch
    int     21h

print_to_file:
    push    si
    mov     ax, 0D0Ah
    stosw
    lea     dx, string
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
    mov     prefix_seg, 0
    mov     prefix_66, 0
    mov     prefix_67, 0
    mov     is_imm, 0
    pop     si
    jmp     next_opcode
;--------------------------------------------------------------------------------------
; Процедура get_mod_reg_rm
; На вход: ничего
; На выход: мод, рег и рм
; Описание: грузит байт из data_buffer по адресу [si], затем разбивает на мод, рег, рм
;           для рег и рм смещенение shr 2 и shl 1 для движения по массивам рег и рм,
;           потому что массив состоит из слов, а не из байтов
;--------------------------------------------------------------------------------------
get_mod_reg_rm proc
    lodsb
    mov     ah, al
    and     ah, 11000000b
    mov     [modrm_mod  ], ah
    mov     ah, al
    shr     ah, 2
    and     ah, 1110b
    mov     [modrm_reg], ah
    and     al, 111b
    shl     al, 1
    mov     [modrm_rm], al
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
    lea     bx, regs8
    cmp     [opcode], 0F6h
    je      go_print
    lea     bx, regs16
    or      [prefix_66], 0
    jz      go_print
    lea     bx, regs32
go_print:
    movzx   si, modrm_reg
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
    cmp     [modrm_mod  ], 11000000b   ; если мод=11 пишем регистр по индексу из поля рм
    jne     not11mod
    mov     al, modrm_rm
    mov     bl, al
    mov     bh, modrm_reg
    mov     modrm_reg, al
    call    print_reg
    mov     modrm_reg, bh
    mov     modrm_rm, bl
    jmp     ret_reg
not11mod:   ; если мод не 11
    call    print_seg   ; первым делом пишем сегмент в формате '_S:['
    or      [prefix_67], 0
    jnz     bit32_addr  ; если есть 67 префикс идем на 32 битную адресацию
    or      [modrm_mod  ], 0   ; в 16 битах первым делом смотрим на мод00 дисп16
    jnz     not_00_mod_16
    cmp     [modrm_rm], 1100b ; дисп16
    jne     not_00_mod_16
    xor     eax, eax ; если мод00 и рм110, то это дисп16, пишем его и выходим
    lodsw
    mov     [is_imm], 1
    call    print_hex_num
    jmp     return
not_00_mod_16: ; если мод не 00, то это [регистр+дисп8/16]
    movzx   bx, modrm_rm
    mov     ax, [bx + rm16]
    call    print_to_buffer     ; можно сразу вывести начало рм, а дальше смотрим дисп
    or      [modrm_mod  ], 0           ; если мод 00, то диспа нету
    jz      return
    xor     eax, eax            ; иначе готовимся его писать
    cmp     [modrm_mod  ], 1000000b    ; если мод не 10, то пишем байтовый дисп
    jne     not_01_mod_16
    lodsb
    jmp     print_disp_byte_word
not_01_mod_16:  ; иначе пишем вордовый дисп
    lodsw
print_disp_byte_word:
    call    print_hex_num
    jmp     return  ; выходим, конец 16 битного рм
bit32_addr:
    cmp     [modrm_rm], 1000b             ; это сиб байт
    jne     no_sib_baseyte             
    lodsb                           ; вытягиваем сиб и разбираем на скейл, индекс, базу
    mov     ah, al
    and     ah, 11000000b
    mov     [sib_scale], ah
    mov     ah, al
    shr     ah, 2
    and     ah, 1110b
    mov     [sib_index], ah
    and     al, 111b
    shl     al, 1
    mov     [sib_base], al
    movzx   bx, sib_base
    mov     ax, [bx + regs32]        ; пишем базу в буффер
    call    print_to_buffer
    cmp     [sib_base], 1010b           ; проверяем базу 101 (ebp)
    jne     no_base_101
    or      [modrm_mod  ], 0                ; если база 101, и мод=0, то..
    jnz     no_base_101
    sub     di, 3                    ; двигаем di до начала, так как база не EBP, а только дисп 32
    jmp     index                   ; пишем индекс и пропускаем проверку NONE и запись + после базы
no_base_101:
    cmp     [sib_index], 1000b          ; проверяем индекс 100, то есть NONE
    je      no_scale                ; если индекс NONE, то не пишем индекс
    mov     al, '+'                 ; если не NONE дальше пишем индекс, поэтому '+'
    stosb
index:
    movzx   bx, sib_index               ; запись индекса
    mov     ax, [bx + regs32]
    call    print_to_buffer
    mov     ah, [sib_scale]             ; дальше пишем масштаб
    or      ah, ah                  ; если он 0, то пропускаем его
    jz      no_scale
    shr     ah, 5                   ; иначе сдвигаем на 5, таким образом масштаб 10 (*4) будет 100b=4d, а 01 (*2) - 10b=2d 
    jnp     not_scale_8             ; jp - прыжок, если четное число битов, в 4 и 3 бите ah может быть 11, 10, 01
    mov     ah, 8                   ;      тогда если после сдвига на 5, чсило битов четное, то это 11, то есть масштаб '*8'
not_scale_8:                        ;          
    add     ah, '0'                 ; преобразуем масштаб в ASCII
    mov     al, '*'                 
    stosw                           ; и пишем со звездочкой
no_scale:
    cmp     [sib_base], 1010b          ; проверяем базу 101 (ebp)
    jne     check_disp_8_32         ; если база не 101, то провеярем дисп8/32
    or      [modrm_mod  ], 0               ; если база 101 и мод=0, то тогда база это дисп32
    jz      disp32
    jmp     check_disp_8_32         ; иначе дисп8/32
no_sib_baseyte:    ; всё выше было про сиб байт, если его нет, то
    cmp     [modrm_rm], 1010b             ; проверяем рм101 (EBP)
    jne     print_rm32              ; если не 101, то смело пишем рм
    or      [modrm_mod  ], 0               ; если 101 и мод=0, то тогда там дисп32
    jnz     print_rm32
    mov     [is_imm], 1             ; готовимся его писать, так как он там один, то дисп=0, мы пишем
disp32:
    xor     eax, eax
    lodsd
    call    print_hex_num
    jmp     return
print_rm32:
    movzx   bx, modrm_rm
    mov     ax, [bx + regs32]       ; выводим рм двигаясь по массиву
    call    print_to_buffer
    or      [modrm_mod  ], 0               ; если мод0, то выходим, если нет, то идем проверять дисп8/32
    jz      return
check_disp_8_32:
    cmp     [modrm_mod  ], 1000000b       ; мод=10 - дисп32
    ja      disp32
    jb      return
    xor     eax, eax
    lodsb                           ; иначе дисп8
    call    print_hex_num
return:
    mov     al, ']'
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
printing:
    movsb
    cmp     byte ptr [si], '$'
    jne     printing
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
    mov     ax, [prefix_seg]
    or      ax, ax
    jnz     print_seg_str       ; если seg ovr не ноль, то пишем этот сегмент
    movzx   bx, modrm_rm
    or      [prefix_67], 0
    jnz     modrm32             ; если нет 67 префикса, то работаем с модрм16
    cmp     bl, 1100b           ; если рм = 1100 (bp или дисп16)
    jne     print_default_seg   ; если не равен, то пишем дефолтный сегмент
    or      [modrm_mod  ], 0           ; если равен, то проверяем мод
    jnz     print_ss            ; если мод не ноль, то это [bp+disp8/16]
    jmp     print_default_seg   ; если ноль, то это disp16, пишем DS
modrm32:
    lea     ax, ds_seg   ; у модрм 32 везде DS, кроме EBP
    cmp     bl, 1010b           ; EBP
    jne     print_seg_str       
    or      [modrm_mod  ], 0           ; опять проверяем мод, если не ноль, то это [EBP+disp8/32]
    jz      print_seg_str       ; если ноль, то DS
print_ss:
    lea     ax, ss_seg   ; пишем SS
    jmp     print_seg_str
print_default_seg:
    mov     ax, [bx + seg_rm16] ; двигаемся по массиву
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
    mov     byte ptr [di], '+' ; если дисп не ноль, то пишем плюс, увеличиваем di
    inc     di                  ; здесь пишем не через al, потому что там число
check_zero:
    or      eax, eax        ; проверка нулевого имм
    jnz     non_zero_imm
    mov     al, '0'         ; если ноль пишем 0 в буффер и выходим
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
    mov     al, '0'         ; если буква, то пишем 0
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
    add     al, '0'         ; для чисел
    stosb                   ; сохраняем
    xor     al, al          ; зануляем так как al это байт, а нам нужно только 4 бита
    loop    hex_to_ascii    ; циклимся по всем байтам
put_hex:
    mov     al, 'H'         ; сохраняем 'H'
    stosb
end_printing:
    pop     bx
    ret
endp

    End     Start