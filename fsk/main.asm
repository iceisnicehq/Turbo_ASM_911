.model small
.386
.stack 100h
.data
; OPCODES are: 0F, 26, 2E, 36, 3E, 64, 65, 66, 67, 69, 6B, F6, F7, (0F) AF, E9, EA, EB, FF(r4), FF(r5)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
com_file    db    "input.com", 0
com_error    db    "com file error", 13, 10, "$"
dest_file    db    "output.asm", 0
dest_error    db    "destination file error", 13, 10, "$"
success    db    "success", 13, 10, "$"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
cdq_str    db    "CDQ", 0
imul_str    db    "IMUL   ", 0
jmp_str    db    "JMP    ", 0
cr_lf    db    13, 10, 0
ALstr    db    "AL", 0
CLstr    db    "CL", 0
DLstr    db    "DL", 0
BLstr    db    "BL", 0
AHstr    db    "AH", 0
CHstr    db    "CH", 0 
DHstr    db    "DH", 0 
BHstr    db    "BH", 0
EAXstr    db    "EAX", 0
ECXstr    db    "ECX", 0
EDXstr    db    "EDX", 0
EBXstr    db    "EBX", 0
ESPstr    db    "ESP", 0
EBPstr    db    "EBP", 0
ESIstr    db    "ESI", 0
EDIstr    db    "EDI", 0
AXstr    equ    offset EAXstr + 1
CXstr    equ    offset ECXstr + 1
DXstr    equ    offset EDXstr + 1
BXstr    equ    offset EBXstr + 1
SPstr    equ    offset ESPstr + 1
BPstr    equ    offset EBPstr + 1
SIstr    equ    offset ESIstr + 1
DIstr    equ    offset EDIstr + 1
dword_ptr    db    "dword ptr ", 0
word_ptr    equ   offset dword_ptr + 1
byte_ptr    db    "byte ptr ", 0
lock_str    db    "LOCK ", 0
BX_SIstr    db    "BX+SI", 0
BX_DIstr    db    "BX+DI", 0
BP_SIstr    db    "BP+SI", 0
BP_DIstr    db    "BP+DI", 0
es_seg    db    "ES:[", 0
cs_seg    db    "CS:[", 0
ss_seg    db    "SS:[", 0
ds_seg    db    "DS:[", 0
fs_seg    db    "FS:[", 0
gs_seg    db    "GS:[", 0
; ovr_ptrs     dw    word_ptr, dword_ptr
regs8    dw    ALstr, CLstr, DLstr, BLstr, AHstr, CHstr, DHstr, BHstr
regs16    dw    AXstr, CXstr, DXstr, BXstr, SPstr, BPstr, SIstr, DIstr ; тут адрес+1, то есть EAX + 1 = AX, то на один байт дальше просто
regs32    dw    EAXstr, ECXstr, EDXstr, EBXstr, ESPstr, EBPstr, ESIstr, EDIstr
mod00_16    dw    BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIstr, DIstr, 110h, BXstr
mod00_16_def_seg    dw    ds_seg, ds_seg, ss_seg, ss_seg, ds_seg, ds_seg, ds_seg, ds_seg
rm16    dw    BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIstr, DIstr, BPstr,  BXstr

mod00_32    dw    EAXstr, ECXstr, EDXstr, EBXstr, 100h, 101h, ESIstr, EDIstr
mod01_32    dw    EAXstr, ECXstr, EDXstr, EBXstr, 100h, EBPstr, ESIstr, EDIstr
; OPCODES are: 0F, 26, 2E, 36, 3E, 64, 65, 66, 67, 69, 6B, 99, (0F) AF, E9, EA, EB, F0, F6, F7, FF(r4), FF(r5)
; 0=NOTHING, 1=ES, 2=CS, 3=DS, 4=SS, 5=FS, 6=GS, 7=size66, 8=addr67, 9=lock, 10=cdq, 11=jmp, 12=imul
indexes    ENUM   iexit, iEs, iCs, iSs, iDs, iFs, iGs, isize66, iaddr67, ilock, icdq, ijump, iimul
jmp_table    dw   success_exit, es_byte, cs_byte, ss_byte, ds_byte, fs_byte, gs_byte, size66_byte, addr67_byte, lock_byte, cdq_byte, jump_byte, imul_byte
byte_table  db    15 dup(iexit), iimul, 22 dup(iexit), iEs, 7 dup (iexit), iCs, 7 dup (iexit), iSs, 7 dup (iexit), iDs
            db    37 dup(iexit), iFs, iGs, isize66, iaddr67, iexit, iimul, iexit, iimul, 45 dup(iexit), icdq, 79 dup(iexit)
            db    ijmp, ijmp, ijmp, 4 dup(iexit), ilock, 5 dup(iexit), iimul, iimul, 7 dup(iexit), ijmp, ijmp
mode    db    0
rm    db    0
reg     db    0
sib_s     db     0
sib_i     db     0
sib_b     db     0
file_descr    dw    0
; ptr_ovr    dw    0
seg_ovr     dw    0
is_size_66    db    0
is_addr_67    db    0
is_imm    db    0
opcode    db    0
command_buffer    db    128 dup (0)
data_buffer    db    4096 dup (0)

.code
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    mov     ax, 3D00h
    mov     dx, offset com_file
    int     21h
    jnc     com_success
    mov     dx, offset com_error
    mov     ah, 9
    int     21h
    jmp     exit
com_success:
    mov     bx, ax
    mov     dx, offset data_buffer
    mov     cx, 4096d
    mov     ah, 3fh
    int     21h
    mov     ah, 3Eh
    int     21h
    mov     ah, 3Ch
    xor     cx, cx 
    mov     dx, offset dest_file
    int     21h
    jnc     dest_success
    mov     dx, offset dest_error
    mov     ah, 9
    int     21h
    jmp     exit
dest_success:
    mov     [file_descr], ax
    mov     si, offset data_buffer
    mov     di, offset command_buffer
scan_bytes:
; OPCODES are: 0F, 26, 2E, 36, 3E, 64, 65, 66, 67, 69, 6B, F6, F7, (0F) AF, E9, EA, EB, FF(r4), FF(r5)
    lodsb
    mov     bx, offset byte_table
    mov     [opcode], al
    xlat    
    mov     bl, al
    xor     bh, bh
    shl     bx, 1
    jmp     jmp_table[bx]
es_byte:
    mov     ax, offset es_seg
    jmp     save_segment
cs_byte:
    mov     ax, offset cs_seg
    jmp     save_segment
ss_byte:
    mov     ax, offset ss_seg
    jmp     save_segment
ds_byte:
    mov     ax, offset ds_seg
    jmp     save_segment
fs_byte:
    mov     ax, offset fs_seg
    jmp     save_segment
gs_byte:
    mov     ax, offset gs_seg
save_segment:
    mov     [seg_ovr], ax
    jmp     scan_bytes
size66_byte:
    mov     [is_size_66], 1
    jmp     scan_bytes
is_addr_67:
    mov     [is_addr_67], 1
    jmp     scan_bytes
lock_byte:
    mov     si, offset lock_str
    call    get_str_len
    rep     movsb
    jmp     scan_bytes
cdq_byte:
    mov     si, offset lock_str
    call    get_str_len
    rep     movsb
    call    print_to_file
    jmp     scan_bytes
jump_byte:
    ; TO-DO
    jmp     scan_bytes
    ; TO-DO
one_operand_rm:
    cmp     [mode], 11000000b
    jne     one_op_eff_addr
    call    print_rm
    jmp     end_one_op
one_op_eff_addr:
    cmp     [opcode], 0F6h
    jne     word_dword_ptr
    mov     bx, offset byte_ptr
    jmp     print_ptr
word_dword_ptr:
    mov     bx, word_ptr
    sub     bl, is_size_66
    sbb     bh, 0
print_ptr:
    call    print_to_buffer
    call    print_seg
    call    print_rm
end_one_op:
    call    print_to_file
    jmp     scan_bytes

imul_byte:
    mov     ax, offset imul_str
    call    print_to_buffer
    cmp     [opcode], 0Fh
    jne     not_2_opcode_byte_imul
    lodsb
    mov     [opcode], al
not_2_opcode_byte_imul:
    lodsb
    call    get_mod_reg_rm
    cmp     [opcode], 0F6h
    jae     one_operand_rm
    call    print_reg
    call    print_rm
    cmp     [opcode], 6Bh
    ja      end_imul
    mov     [is_imm], 1
    xor     eax, eax
    jb      byte_imm
    or      [is_size_66], 0
    jz      word_imm
    lodsd
    jmp     print_imm
word_imm:
    lodsw
    jmp     print_imm
byte_imm:
    lodsb
print_imm:
    call    print_hex_num
end_imul:
    call    print_to_file
    jmp     scan_bytes

success_exit:
    mov     dx, offset noError
    mov     ah, 9 
    int     21h
    mov     ah, 3Eh
    mov     bx, resFileHandle
    int     21h
    mov     bx, comFileHandle
    int     21h
exit:
    mov     ah, 4Ch
    int     21h

get_mod_reg_rm proc
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
endp

print_reg proc
    push    bx
    mov     bx, offset regs8
    cmp     [opcode], 0F6h
    je      go_print
    mov     bx, offset regs16
    or      [is_size_66], 0
    jz      go_print
    mov     bx, offset regs32
go_print:
    mov     ax, [bx + reg]
    call    print_to_buffer
    pop     bx
    ret
endp

print_rm proc
    cmp     [mode], 11000000b
    jne     not11mod
    mov     al, rm
    mov     reg, al
    call    print_reg
    jmp     return
not11mod:
    or      [is_addr_67], 0
    jnz     bit32_addr
    or      [mode], 0
    jnz     not_00_mod_16
    cmp     [rm], 1100b
    jne     not_00_mod_16
    xor     eax, eax
    lodsw
    call    print_hex_num
    jmp     return
not_00_mod_16:
    mov     bx, offset rm16
    mov     ax, [bx + rm]
    call    print_to_buffer
    xor     eax, eax
    cmp     [mode], 1
    jne     not_01_mod_16
    lodsb
    jmp     print_disp_byte_word
not_01_mod_16:
    lodsw
print_disp_byte_word:
    call    print_hex_num
    jmp     return
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
    mov     bx, offset regs32
    mov     ax, [bx + sib_b]        ; пишем базу в буффер
    call    print_to_buffer
    mov     al, "+"                 ; дальше пишем индекс, поэтому '+'
    stosb
    cmp     [sib_b], 1010b          ; проверяем базу 101 (ebp)
    jne     no_base_101
    or      [mode], 0               ; если база 101, и мод в модрм=0, то..
    jnz     no_base_101
    mov     si, [bx + sib_b]        ; то тогда в сибе только индекс, и нужно удалить базу (ebp)
    call    get_str_len 
    sub     di, cx                  ; двигаем di до начала, то есть до места перед "+"
    dec     di                      ; это из-за плюса, теперь di указывает на адрес за "["
no_base_101:
    cmp     [sib_i], 1000b          ; проверяем индекс 100, то есть NONE
    je      index_none              ; если индекс NONE, то не пишем индекс
    mov     bx, offset regs32       ; запись индекса
    mov     ax, [bx + sib_i]
    call    print_to_buffer
    mov     ah, [sib_s]
    or      ah, ah
    jz      index_none
    shr     ah, 5
    jnp     not_scale_8             ; jp - прыжок, если четное число битов, в 7 и 6 бите al может быть 11, 10, 01, 00
    mov     ah, 8                   ;      тогда если после сдвига на 5, битов четное, то это 11, то есть масштаб "8"
not_scale_8:                        ;          
    add     ah, "0"
    mov     al, "*"
    stosw
index_none:
    cmp     [sib_b], 1010b          ; проверяем базу 101 (ebp)
    jne     return                  ; если база не 101, то выходим
    mov     al, "+"
    stosb
    or      [mode], 0
    jz      disp32
    jmp     check_disp_8_32              ; если база 101, то проверяем смещение (оно точно есть)
no_sib_byte:
    cmp     [rm], 1010b
    jne     print_rm32             ; check_disp_8_32
    or      [mode], 0
    jnz     print_rm32
disp32:
    xor     eax, eax
    lodsd
    call    print_hex_num
    jmp     return
print_rm32:
    mov     bx, regs32
    mov     ax, [bx + rm]
    call    print_to_buffer
    or      [mode], 0
    jz      return
    mov     al, "+"
    stosb
check_disp_8_32:
    cmp     [mode], 10000000b
    je      disp32
    xor     eax, eax
    lodsb
    call    print_hex_num
return:
    mov     al, "]"
    stosb
    ret
endp

print_to_buffer proc
    push    si
    mov     si, ax
    call    get_str_len
    rep     movsb
    pop     si
    ret
endp

get_str_len proc
    push    di
    mov     cx, 0ffffh
    xor     al, al
    mov     di, si
    repnz   scasb
    not     cx
    dec     cx
    dec     cx
    pop     di
endp

print_to_file proc
    mov     si, offset cr_lf
    call    get_str_len
    rep     movsb
    mov     dx, offset command_buffer
    mov     cx, di
    sub     cx, dx
    mov     di, dx
    mov     ah, 40h
    mov     bx, file_descr
    push    cx
    int     21h
    pop     cx
    xor     al, al
    push    di
    rep     stosb
    pop     di
    ; mov     ptr_ovr, 0
    mov     seg_ovr, 0
    mov     is_size_66, 0
    mov     is_addr_67, 0
    mov     is_imm, 0
    ret
endp

print_seg proc
    push   bx
    mov    ax, [seg_ovr]
    or     ax, ax
    jnz    print_seg_str
    or     [is_addr_67], 0
    jnz     modrm32
    mov     bx, offset mod00_16_def_seg
    ; mov     ax, [bx + rm]
    cmp     rm, 1110b
    jne     print_default_seg
    or      [mode], 0
    jnz     print_ss
    jmp     print_default_seg
modrm32:
    mov     ax, offset ds_seg
    cmp     rm, 1010b
    jne     print_seg_str
    or      [mode], 0
    jz      print_seg_str
print_ss:
    mov     ax, offset ss_seg
    jmp     print_seg_str
print_default_seg:
    mov     ax, [bx + rm]
print_seg_str:
    call    print_to_buffer
    pop     bx
    ret
endp

print_hex_num proc
    push    bx
    cmp     is_imm, 1
    je      no_zero_disp
    or      eax, eax
    dec     di
    jz      return
no_zero_disp:
    mov     ebx, eax
clean_leading_zeros:
    test    ebx, 0F0000000h   
    jnz     storing
    shl     ebx, 4
    jmp     clean_leading_zeros
storing:
    bswap   ebx
    cmp     bl, 9
    bswap   ebx
    jna     digit_first
    mov     al, "0"
    stosb
digit_first:
    shld    eax, ebx, 4
    cmp     al, 9
    jna     digit
    add     al, 7
digit: 
    add     al, "0"
    stosb
    or      ebx, ebx
    jnz     digit_first
    mov     al, "H"
    stosb
return:
    pop     bx
    ret
    End     Start