.model small
.386
.stack 100h
.data
com_file    db    "input.com", 0
dest_file    db    "output.asm", 0
cdq_str    db    9, "CDQ", 0
imul_str    db    9, "IMUL    ", 0
jmp_str    db    9, "JMP    ", 0
com_error    db    "com file error", 13, 10, "$"
dest_error    db    "destination file error", 13, 10, "$"
success    db    "success", 13, 10, "$"
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
AXstr    equ    EAXstr + 1
CXstr    equ    ECXstr + 1
DXstr    equ    EDXstr + 1
BXstr    equ    EBXstr + 1
SPstr    equ    ESPstr + 1
BPstr    equ    EBPstr + 1
SIstr    equ    ESIstr + 1
DIstr    equ    EDIstr + 1
dword_ptr    db    "dword ptr ", 0
word_ptr    equ   dword_ptr + 1
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
regs8    dw    ALstr, CLstr, DLstr, BLstr, AHstr, CHstr, DHstr, BHstr
regs16    dw    AXstr, CXstr, DXstr, BXstr, SPstr, BPstr, SIstr, DIstr
regs32    dw    EAXstr, ECXstr, EDXstr, EBXstr, ESPstr, EBPstr, ESIstr, EDIstr
rm16    dw    BX_SIstr, BX_DIstr, BP_SIstr, BP_DIstr, SIstr, DIstr, BPstr,  BXstr
mod00_16_def_seg    dw    ds_seg, ds_seg, ss_seg, ss_seg, ds_seg, ds_seg, ds_seg, ds_seg
indexes    ENUM   iscan, iEs, iCs, iSs, iDs, iFs, iGs, isize66, iaddr67, ilock, icdq, ijmp, iimul
jmp_table    dw   scan_bytes, es_label, cs_label, ss_label, ds_label, fs_label, gs_label, size66_label, addr67_label, lock_label, cdq_label, jmp_label, imul_label
label_table    db    15 dup(iscan), iimul, 22 dup(iscan), iEs, 7 dup (iscan), iCs, 7 dup (iscan), iSs, 7 dup (iscan), iDs
            db    37 dup(iscan), iFs, iGs, isize66, iaddr67, iscan, iimul, iscan, iimul, 45 dup(iscan), icdq, 79 dup(iscan)
            db    ijmp, ijmp, ijmp, 4 dup(iscan), ilock, 5 dup(iscan), iimul, iimul, 7 dup(iscan), ijmp, ijmp
mode    db    0
rm    db    0
reg     db    0
sib_s     db     0
sib_i     db     0
sib_b     db     0
file_descr    dw    0
seg_ovr     dw    0
is_size_66    db    0
is_addr_67    db    0
is_imm    db    0
opcode    db    0
command_buffer    db    128 dup (0)
data_buffer    db    4096 dup (0)
end_of_data    dw    ?
.code
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    cld
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
    mov     cx, 4096
    mov     ah, 3fh
    int     21h
    add     ax, dx
    mov     [end_of_data], ax
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
    cmp     si, [end_of_data]
    ja      success_exit
    lodsb
    mov     bx, offset label_table
    mov     [opcode], al
    xlat
    mov     bl, al
    xor     bh, bh
    shl     bx, 1
    jmp     word ptr [bx + jmp_table]
es_label:
    mov     ax, offset es_seg
    jmp     save_segment
cs_label:
    mov     ax, offset cs_seg
    jmp     save_segment
ss_label:
    mov     ax, offset ss_seg
    jmp     save_segment
ds_label:
    mov     ax, offset ds_seg
    jmp     save_segment
fs_label:
    mov     ax, offset fs_seg
    jmp     save_segment
gs_label:
    mov     ax, offset gs_seg
save_segment:
    mov     [seg_ovr], ax
    jmp     scan_bytes
size66_label:
    mov     [is_size_66], 1
    jmp     scan_bytes
addr67_label:
    mov     [is_addr_67], 1
    jmp     scan_bytes
lock_label:
    mov     ax, offset lock_str
    call    print_to_buffer
    jmp     scan_bytes
cdq_label:
    mov     ax, offset cdq_str
    call    print_to_buffer
    jmp     jmp_to_print_to_file
jmp_label:
    mov     ax, offset jmp_str
    call    print_to_buffer
    cmp     [opcode], 0E9h
    je      rel
    cmp     [opcode], 0EBh
    jne     not_rel_8_16
rel:
    mov     ax, "+$"
    stosw
    xor     eax, eax
    mov     [is_imm], 1
    cmp     [opcode], 0EBh
    je      rel8
    or      [is_size_66], 0
    jz      word_rel
    lodsd
    add     eax, 6
    jnz     not_zero_rel1632
    jmp     remove_rel_sign
word_rel:
    lodsw
    add     ax, 3
    jnz     not_zero_rel1632
remove_rel_sign:
    dec     di
    jmp     jmp_to_print_to_file
not_zero_rel1632:
    jns     print_imm
    neg     ax
put_minus:
    mov     byte ptr [di-1], "-"
    jmp     print_imm
rel8:
    lodsb
    inc     al
    inc     al
    jz      remove_rel_sign
    jns     print_imm
    neg     al
    jmp     put_minus
not_rel_8_16:
    cmp     [opcode], 0FFh
    jne     jmp_ptr
    call    get_mod_reg_rm
    cmp     [reg], 1000b
    jne     jmp_memory
    mov     ax, offset word_ptr
    cmp     [mode], 11000000b
    jne     print_ptr_rm
    mov     al, [rm]
    mov     [reg], al
    call    print_reg
    jmp     jmp_to_print_to_file
jmp_memory:
    mov     ax, offset dword_ptr
    jmp     print_ptr_rm
jmp_ptr:
    mov     [is_imm], 1
    xor     eax, eax
    mov     bx, ax
    lodsw
    or      [is_size_66], 0
    pushf
    jz      no_ptr32
    mov     bx, ax
    lodsw
no_ptr32:
    push    ax
    lodsw
    call    print_hex_num
    mov     al, ":"
    stosb
    pop     ax
    popf
    jz      print_imm
    push    ax bx
    pop     eax
    jmp     print_imm
one_operand_rm:
    cmp     [mode], 11000000b
    jne     one_op_eff_addr
    jmp     print_rm
one_op_eff_addr:
    cmp     [opcode], 0F6h
    jne     word_dword_ptr
    mov     ax, offset byte_ptr
    jmp     print_ptr_rm
word_dword_ptr:
    mov     ax, offset word_ptr
    sub     al, is_size_66
    sbb     ah, 0
print_ptr_rm:
    call    print_to_buffer
print_rm:
    call    print_rm_proc
    jmp     jmp_to_print_to_file
imul_label:
    mov     ax, offset imul_str
    call    print_to_buffer
    cmp     [opcode], 0Fh
    jne     not_2_opcode_byte_imul
    lodsb
    mov     [opcode], al
not_2_opcode_byte_imul:
    call    get_mod_reg_rm
    cmp     [opcode], 0F6h
    jae     one_operand_rm
    call    print_reg
    mov     al, ","
    stosb
    call    print_rm_proc
    cmp     [opcode], 6Bh
    ja      jmp_to_print_to_file
    pushf
    cmp     [mode], 11000000b
    jne     not_reg_reg
    mov     al, [reg]
    cmp     al, [rm]
    jne     not_reg_reg
move_to_comma:
    cmp     byte ptr [di], ","
    je      not_reg_reg
    dec     di
    jmp     move_to_comma
not_reg_reg:
    mov     al, ","
    stosb
    xor     eax, eax
    mov     [is_imm], 1
    popf
    jnb     byte_imm
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
jmp_to_print_to_file:
    call    print_to_file
    jmp     scan_bytes
success_exit:
    mov     dx, offset success
    mov     ah, 9
    int     21h
    mov     ah, 3Eh
    mov     bx, [file_descr]
    int     21h
exit:
    mov     ah, 4Ch
    int     21h
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

print_rm_proc  proc
    cmp     [mode], 11000000b
    jne     not11mod
    mov     al, rm
    mov     bl, al
    mov     bh, reg
    mov     reg, al
    call    print_reg
    mov     reg, bh
    mov     rm, bl
    jmp     ret_reg
not11mod:
    call    print_seg
    or      [is_addr_67], 0
    jnz     bit32_addr
    or      [mode], 0
    jnz     not_00_mod_16
    cmp     [rm], 1100b
    jne     not_00_mod_16
    xor     eax, eax
    lodsw
    mov     [is_imm], 1
    call    print_hex_num
    jmp     return
not_00_mod_16:
    movzx   bx, rm
    mov     ax, [bx + rm16]
    call    print_to_buffer
    or      [mode], 0
    jz      return
    xor     eax, eax
    cmp     [mode], 1000000b
    jne     not_01_mod_16
    lodsb
    jmp     print_disp_byte_word
not_01_mod_16:
    lodsw
print_disp_byte_word:
    call    print_hex_num
    jmp     return
bit32_addr:
    cmp     [rm], 1000b
    jne     no_sib_byte
    lodsb
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
    mov     ax, [bx + regs32]
    call    print_to_buffer
    cmp     [sib_b], 1010b
    jne     no_base_101
    or      [mode], 0
    jnz     no_base_101
    sub     di, 3
    jmp     index
no_base_101:
    cmp     [sib_i], 1000b
    je      no_scale
    mov     al, "+"
    stosb
index:
    movzx   bx, sib_i
    mov     ax, [bx + regs32]
    call    print_to_buffer
    mov     ah, [sib_s]
    or      ah, ah
    jz      no_scale
    shr     ah, 5
    jnp     not_scale_8
    mov     ah, 8
not_scale_8:
    add     ah, "0"
    mov     al, "*"
    stosw
no_scale:
    cmp     [sib_b], 1010b
    jne     check_disp_8_32
    or      [mode], 0
    jz      disp32
    jmp     check_disp_8_32
no_sib_byte:
    cmp     [rm], 1010b
    jne     print_rm32
    or      [mode], 0
    jnz     print_rm32
    mov     [is_imm], 1
disp32:
    xor     eax, eax
    lodsd
    call    print_hex_num
    jmp     return
print_rm32:
    movzx   bx, rm
    mov     ax, [bx + regs32]
    call    print_to_buffer
    or      [mode], 0
    jz      return
check_disp_8_32:
    cmp     [mode], 1000000b
    ja      disp32
    jb      return
    xor     eax, eax
    lodsb
    call    print_hex_num
return:
    mov     al, "]"
    stosb
ret_reg:
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
    xor     cx, cx
    not     cx
    xor     al, al
    mov     di, si
    repnz   scasb
    not     cx
    dec     cx
    pop     di
    ret
endp

print_to_file proc
    push    si
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
    mov     seg_ovr, 0
    mov     is_size_66, 0
    mov     is_addr_67, 0
    mov     is_imm, 0
    pop     si
    ret
endp

print_seg proc
    push    bx
    mov     ax, [seg_ovr]
    or      ax, ax
    jnz     print_seg_str
    movzx   bx, rm
    or      [is_addr_67], 0
    jnz     modrm32
    cmp     bl, 1100b
    jne     print_default_seg
    or      [mode], 0
    jnz     print_ss
    jmp     print_default_seg
modrm32:
    mov     ax, offset ds_seg
    cmp     bl, 1010b
    jne     print_seg_str
    or      [mode], 0
    jz      print_seg_str
print_ss:
    mov     ax, offset ss_seg
    jmp     print_seg_str
print_default_seg:
    mov     ax, [bx + mod00_16_def_seg]
print_seg_str:
    call    print_to_buffer
    pop     bx
    ret
endp

print_hex_num proc
    push    bx
    cmp     is_imm, 1
    je      check_zero
    or      eax, eax
    jz      end_printing
    mov     byte ptr [di], "+"
    inc     di
check_zero:
    or      eax, eax
    jnz     non_zero_imm
    mov     al, "0"
    stosb
    jmp     put_hex
non_zero_imm:
    mov     ebx, eax
    mov     cl, 8
    jmp     test_first
deleting_zeros:
    dec     cl
    rol     ebx, 4
test_first:
    test    ebx, 0F0000000h
    jz      deleting_zeros
    xor     eax, eax
    shld    eax, ebx, 4
    cmp     al, 9
    jna     not_a_letter
    mov     al, "0"
    stosb
not_a_letter:
    xor     al, al
hex_to_ascii:
    shld    eax, ebx, 4
    shl     ebx, 4
    cmp     al, 9
    jna     digit
    add     al, 7
digit:
    add     al, "0"
    stosb
    xor     al, al
    loop    hex_to_ascii
put_hex:
    mov     al, "H"
    stosb
end_printing:
    pop     bx
    ret
endp
    End     Start
