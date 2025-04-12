.model small
.486
.stack 100h

.data
command_file            db      "com.com", 0
output_file             db      "result.asm", 0
output_fd               dw      ?

new_line                db      0Dh, 0Ah
new_line_len            equ     $ - new_line

opcode_table            dw      32 dup (0),\
                                6 dup (0), offset es_segg, 7 dup (0), offset cs_segg, 0,\
                                6 dup (0), offset ss_segg, 7 dup (0), offset ds_segg, 0,\
                                8 dup (0), offset dec_reg, offset dec_reg, offset dec_reg, offset dec_reg,\
                                offset dec_reg, offset dec_reg, offset dec_reg, offset dec_reg,\
                                16 dup (0),\
                                4 dup (0), offset fs_segg, offset gs_segg, offset op_size, offset addr_size,\
                                8 dup (0),\
                                32 dup (0),\
                                8 dup (0), offset cbw_op, 7 dup (0),\
                                16 dup (0),\
                                13 dup (0), offset bsr_op, 0, 0,\
                                48 dup (0),\
                                14 dup (0), offset dec_first, offset dec_second

dec_str                 db      "DEC    "
dec_str_len             equ     $ - dec_str

bsr_str                 db      "BSR    "
bsr_str_len             equ     $ - bsr_str

word_ptr                db      "word ptr "
word_ptr_len            equ     $ - word_ptr

dword_ptr               db      "dword ptr "
dword_ptr_len           equ     $ - dword_ptr

byte_ptr                db      "byte ptr "
byte_ptr_len            equ     $ - byte_ptr

ptr_table               dw      word_ptr, dword_ptr, byte_ptr
ptr_len_table           dw      word_ptr_len, dword_ptr_len, byte_ptr_len

cbw_str                 db      "CBW", 0Dh, 0Ah
cbw_str_len             equ     5

cwde_str                db      "CWDE", 0Dh, 0Ah
cwde_str_len            equ     6

bx_si_addr              db      "DS:[BX + SI + "
bx_di_addr              db      "DS:[BX + DI + "
bp_si_addr              db      "SS:[BP + SI + "
bp_di_addr              db      "SS:[BP + DI + "
si_addr                 db      "DS:[SI + "
di_addr                 db      "DS:[DI + "
disp_only               db      "DS:["
bp_disp_addr            db      "SS:[BP + "
bx_addr                 db      "DS:[BX + "

eax_addr                db      "DS:[EAX + "
ecx_addr                db      "DS:[ECX + "
edx_addr                db      "DS:[EDX + "
ebx_addr                db      "DS:[EBX + "
ebp_addr                db      "SS:[EBP + "
esi_addr                db      "DS:[ESI + "
edi_addr                db      "DS:[EDI + "

eax_scale2              db      "EAX*2"
ecx_scale2              db      "ECX*2"
edx_scale2              db      "EDX*2"
ebx_scale2              db      "EBX*2"
ebp_scale2              db      "EBP*2"
esi_scale2              db      "ESI*2"
edi_scale2              db      "EDI*2"

eax_scale4              db      "EAX*4"
ecx_scale4              db      "ECX*4"
edx_scale4              db      "EDX*4"
ebx_scale4              db      "EBX*4"
ebp_scale4              db      "EBP*4"
esi_scale4              db      "ESI*4"
edi_scale4              db      "EDI*4"

eax_scale8              db      "EAX*8"
ecx_scale8              db      "ECX*8"
edx_scale8              db      "EDX*8"
ebx_scale8              db      "EBX*8"
ebp_scale8              db      "EBP*8"
esi_scale8              db      "ESI*8"
edi_scale8              db      "EDI*8"

al_reg                  db      "AL, "
cl_reg                  db      "CL, "
dl_reg                  db      "DL, "
bl_reg                  db      "BL, "
ah_reg                  db      "AH, "
ch_reg                  db      "CH, "
dh_reg                  db      "DH, "
bh_reg                  db      "BH, "

ax_reg                  db      "AX, "
cx_reg                  db      "CX, "
dx_reg                  db      "DX, "
bx_reg                  db      "BX, "
sp_reg                  db      "SP, "
bp_reg                  db      "BP, "
si_reg                  db      "SI, "
di_reg                  db      "DI, "

eax_reg                 db      "EAX, "
ecx_reg                 db      "ECX, "
edx_reg                 db      "EDX, "
ebx_reg                 db      "EBX, "
esp_reg                 db      "ESP, "
ebp_reg                 db      "EBP, "
esi_reg                 db      "ESI, "
edi_reg                 db      "EDI, "

es_seg                  db      "ES"
cs_seg                  db      "CS"
ss_seg                  db      "SS"
ds_seg                  db      "DS"
fs_seg                  db      "FS"
gs_seg                  db      "GS"

one_str                 db      "1"

plus_str                db      " + "
plus_str_len            equ     $ - plus_str

sib_table               dw      eax_reg, ecx_reg, edx_reg, ebx_reg, 0, ebp_reg, esi_reg, edi_reg,\
                                eax_scale2, ecx_scale2, edx_scale2, ebx_scale2, 0, ebp_scale2, esi_scale2, edi_scale2,\
                                eax_scale4, ecx_scale4, edx_scale4, ebx_scale4, 0, ebp_scale4, esi_scale4, edi_scale4,\
                                eax_scale8, ecx_scale8, edx_scale8, ebx_scale8, 0, ebp_scale8, esi_scale8, edi_scale8

sib_len_table           dw      8 dup (3), 24 dup (5)

close_bracket           db      "], "
close_bracket_len       equ     $ - close_bracket



ext_reg_table           dw      eax_reg, ecx_reg, edx_reg, ebx_reg, esp_reg, ebp_reg, esi_reg, edi_reg
ext_reg_len             equ     3



addr_16_table           dw      bx_si_addr, bx_di_addr, bp_si_addr, bp_di_addr, si_addr, di_addr, disp_only, bx_addr,\
                                bx_si_addr, bx_di_addr, bp_si_addr, bp_di_addr, si_addr, di_addr, bp_disp_addr, bx_addr,\
                                bx_si_addr, bx_di_addr, bp_si_addr, bp_di_addr, si_addr, di_addr, bp_disp_addr, bx_addr,\
                                ax_reg, cx_reg, dx_reg, bx_reg, sp_reg, bp_reg, si_reg, di_reg

addr_16_len             dw      11, 11, 11, 11, 6, 6, 4, 6,\
                                14, 14, 14, 14, 9, 9, 9, 9,\
                                14, 14, 14, 14, 9, 9, 9, 9,\
                                8 dup (2)

addr_32_table           dw      eax_addr, ecx_addr, edx_addr, ebx_addr, disp_only, disp_only, esi_addr, edi_addr,\
                                eax_addr, ecx_addr, edx_addr, ebx_addr, disp_only, ebp_addr, esi_addr, edi_addr,\
                                eax_addr, ecx_addr, edx_addr, ebx_addr, disp_only, ebp_addr, esi_addr, edi_addr,\
                                ax_reg, cx_reg, dx_reg, bx_reg, sp_reg, bp_reg, si_reg, di_reg

addr_32_len             dw      7, 7, 7, 7, 4, 4, 7, 7,\
                                10, 10, 10, 10, 4, 10, 10, 10,\
                                10, 10, 10, 10, 4, 10, 10, 10,\
                                8 dup (4)

byte_reg_table          dw      al_reg, cl_reg, dl_reg, bl_reg, ah_reg, ch_reg, dh_reg, bh_reg                                                                           
word_reg_table          dw      ax_reg, cx_reg, dx_reg, bx_reg, sp_reg, bp_reg, si_reg, di_reg
dword_reg_table         dw      eax_reg, ecx_reg, edx_reg, ebx_reg, esp_reg, ebp_reg, esi_reg, edi_reg
reg_len_table           dw      2, 3, 2

disp_buf                db      '000000000h'
disp_counter            dw      2

op_size_flag            dw      ?
addr_size_flag          dw      ?
sib_flag                db      ?
disp32_flag             db      ?
disp_flag               db      ?
disp8_bp_flag           db      ?
seg_next_flag           db      ?
dec_flag                db      ?
second_op_flag          db      ?

current_seg             dw      ?
mod_field               dw      ?

output_buffer           db      100 dup (?)
output_buf_len          dw      ?

command_counter         dw      ?
command_buffer          db      5000 dup (?)

write_file MACRO buffer, size
    mov     dx, offset buffer
    mov     cx, size
    call    write_file_proc    
ENDM

write_buffer MACRO src, len
    mov     ax, src
    mov     cx, len
    call    buffer_write
ENDM

write_buffer_offset MACRO src, len
    mov     ax, offset src
    mov     cx, len
    call    buffer_write
ENDM

.code
start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     ax, 3D00h
    mov     dx, offset command_file
    int     21h
    
    mov     dx, offset command_buffer
    mov     bx, ax
    mov     cx, 5000
    
    mov     ah, 3Fh
    int     21h
    mov     command_counter, ax

    mov     ah, 3Ch
    mov     dx, offset output_file
    xor     cx, cx
    int     21h
    
    mov     output_fd, ax
    mov     si, offset command_buffer

command_loop:    
    or      command_counter, 0
    jz      exit
    mov     output_buf_len, 0
    lodsb
    dec     command_counter
    cmp     al, 0Fh
    jne     skip_prefix
    lodsb
    dec     command_counter   
skip_prefix:
    movzx   bx, al
    shl     bx, 1
    call    opcode_table[bx]
    
cbw_op:
    or      op_size_flag, 0
    jnz     cwde_op
    write_file cbw_str, cbw_str_len
    jmp     command_loop

cwde_op:
    write_file cwde_str, cwde_str_len
    mov     op_size_flag, 0
    jmp     command_loop

dec_reg:
    shr     bx, 1
    sub     bx, 48h
    shl     bx, 1
    push    bx
    
    write_file dec_str, dec_str_len
    
    or      op_size_flag, 0
    jnz     dec_dword
    
    pop     bx
    write_file word_reg_table[bx], 2
    write_file new_line, new_line_len
    jmp     command_loop
    
dec_dword:
    pop     bx
    write_file dword_reg_table[bx], 3
    write_file new_line, new_line_len
    mov     op_size_flag, 0
    jmp     command_loop

dec_first:
    or      op_size_flag, 2
    call    disasm_proc
    call    finish_output
    jmp     command_loop
    
dec_second:
    call    disasm_proc
    call    finish_output
    jmp     command_loop
    
bsr_op:
    call    disasm_proc
    call    finish_output
    jmp     command_loop

op_size:
    or      op_size_flag, 1
    jmp     command_loop
addr_size:
    or      addr_size_flag, 1
    jmp     command_loop

es_segg:
    mov     current_seg, offset es_seg
    jmp     command_loop
cs_segg:
    mov     current_seg, offset cs_seg
    jmp     command_loop
ss_segg:
    mov     current_seg, offset ss_seg
    jmp     command_loop
ds_segg:
    mov     current_seg, offset ds_seg
    jmp     command_loop
fs_segg:
    mov     current_seg, offset fs_seg
    jmp     command_loop
gs_segg:
    mov     current_seg, offset gs_seg
    jmp     command_loop

write_file_proc PROC 
    mov     ah, 40h
    mov     bx, output_fd
    int     21h
    ret  
write_file_proc ENDP

buffer_write PROC
    push    si
    add     output_buf_len, cx
    
    or      current_seg, 0
    je     default_seg
    or      seg_next_flag, 0
    jne    custom_seg
    
default_seg:
    mov     si, ax
    rep     movsb
    jmp     buffer_done

custom_seg:
    mov     si, current_seg
    movsb
    movsb
    sub     cx, 2
    mov     si, ax
    add     si, 2
    rep     movsb
    mov     current_seg, 0
    mov     seg_next_flag, 0
    
buffer_done:    
    pop     si
    ret
buffer_write ENDP

disasm_proc PROC
    mov     di, offset output_buffer
    
    cmp     al, 0FEh
    jae     handle_dec
    
    write_buffer_offset bsr_str, bsr_str_len
    jmp     parse_opcode   

handle_dec:
    write_buffer_offset dec_str, dec_str_len
    or      dec_flag, 1
    
parse_opcode:
    lodsb
    dec     command_counter
    push    ax
    
    movzx   bp, al
    movzx   bx, al
    push    bp
    push    bx
    
    or      dec_flag, 0
    jnz     last_operand
    
    and     bp, 0000000000111000b
    shr     bp, 2
    
    or      op_size_flag, 0
    jz      use_16bit_operand
    
    write_buffer dword_reg_table[DS:[bp]], 5
    jmp     last_operand
    
use_16bit_operand:
    write_buffer word_reg_table[DS:[bp]], 4

last_operand:
    pop     bx
    pop     bp
    and     bp, 0000000011000000b
    shr     bp, 6                
    mov     mod_field, bp
    and     bx, 0000000000000111b
    
    cmp     bp, 11b              
    je      write_operand
    
    or      addr_size_flag, 0
    je      check_addr_mode
    cmp     bx, 100b
    jne     check_addr_mode
    or      sib_flag, 1    
    
check_addr_mode:    
    push    bx
    mov     bx, op_size_flag
    shl     bx, 1
    write_buffer_offset ptr_table[bx], ptr_len_table[bx]
    or      current_seg, 0
    je      no_segment
    or      seg_next_flag, 1
no_segment:
    pop     bx
    
    or      addr_size_flag, 0
    je      use_16bit_addr
    call    handle_32bit_addr
    jmp     write_operand

use_16bit_addr:    
    cmp     bp, 01b
    jne     check_disp16
    or      disp_flag, 1
    cmp     bx, 110b
    jne     write_operand
    or      disp8_bp_flag, 1
    jmp     write_operand
    
check_disp16:
    cmp     bp, 10b
    je      set_disp16
    cmp     bx, 110b
    jne     write_operand
set_disp16:
    mov     disp_counter, 4
    or      disp_flag, 1
    
write_operand:
    cmp     bp, 11b
    jne     check_operand_size 
    cmp     op_size_flag, 2
    je      byte_operand
    cmp     op_size_flag, 1
    je      dword_operand  

check_operand_size:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    
    or      addr_size_flag, 0
    je      use_word_addr
    
    write_buffer addr_32_table[DS:[bp]], addr_32_len[DS:[bp]]
    pop     bp
    or      sib_flag, 0
    je      next_stage
    call    handle_sib
    jmp     next_stage
    
use_word_addr:
    write_buffer addr_16_table[DS:[bp]], addr_16_len[DS:[bp]]
    pop     bp
    jmp     next_stage
    
dword_operand:
    shl     bx, 1
    write_buffer dword_reg_table[bx], 3
    jmp     next_stage
    
byte_operand:
    shl     bx, 1
    write_buffer byte_reg_table[bx], 2
    
next_stage:   
    cmp     bp, 11b
    je      disasm_done
    or      disp_flag, 0
    je      write_final
    or      sib_flag, 0
    je      write_plus
    write_buffer_offset plus_str, plus_str_len
    
write_plus:
    call    write_disp

write_final:
    write_buffer_offset close_bracket, 1
    jmp     disasm_done
    
disasm_done:
    pop     ax
    ret
disasm_proc ENDP

finish_output PROC
    write_buffer_offset new_line, new_line_len
    write_file output_buffer, output_buf_len
    
    mov     second_op_flag, 0
    mov     output_buf_len, 0
    mov     disp_flag, 0
    mov     op_size_flag, 0
    mov     addr_size_flag, 0
    mov     sib_flag, 0
    mov     dec_flag, 0
    
    ret
finish_output ENDP

handle_32bit_addr PROC
    or      bp, 0
    jne     check_disp8
    cmp     bx, 101b
    jne     addr_done
    or      disp_flag, 1
    or      disp_counter, 8
    jmp     addr_done
    
check_disp8:
    cmp     bp, 01b
    jne     set_disp32
    cmp     bx, 101b
    jne     check_next
    or      disp8_bp_flag, 1
check_next:
    or      disp_counter, 2
    or      disp_flag, 1
    jmp     addr_done
    
set_disp32:
    mov     disp_counter, 8
    or      disp_flag, 1

addr_done:
    ret
handle_32bit_addr ENDP

handle_sib PROC
    lodsb
    dec     command_counter
    push    bp
    push    bx

    movzx   bp, al
    movzx   bx, al
    and     bp, 0000000011000000b       
    shr     bp, 6                       
    and     bx, 0000000000111000b       
    shr     bx, 3                       
    push    bx
    movzx   bx, al
    and     bx, 0000000000000111b       
    
    cmp     bx, 101b
    jne     base_ok
    or      mod_field, 0
    jne     base_ok
    pop     bx
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    write_buffer sib_table[DS:[bp]], sib_len_table[DS:[bp]]
    lodsd
    sub     command_counter, 4
    or      eax, eax
    jnz     has_disp
    jmp     sib_done
   
has_disp:
    sub     si, 4
    add     command_counter, 4
    write_buffer_offset plus_str, plus_str_len    
    push    disp_counter
    mov     disp_counter, 8
    call    write_disp
    pop     disp_counter
    jmp     sib_done
    
base_ok:
    shl     bx, 1
    write_buffer ext_reg_table[bx], ext_reg_len
    pop     bx
    cmp     bx, 100b
    je      sib_done
    
    write_buffer_offset plus_str, plus_str_len
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    write_buffer sib_table[DS:[bp]], sib_len_table[DS:[bp]]
    
sib_done:
    pop     bx
    pop     bp
    ret
handle_sib ENDP

write_disp PROC
    xor     dx, dx
    mov     bx, 16
    mov     cx, disp_counter
    inc     cx

    or      disp8_bp_flag, 0
    je      normal_disp
    lodsb
    dec     command_counter
    mov     disp8_bp_flag, 0
    or      al, al
    jnz     save_disp
    sub     di, 3
    sub     output_buf_len, 3
    jmp     disp_skip    
    
normal_disp:    
    cmp     disp_counter, 2
    je      byte_disp
    cmp     disp_counter, 4
    je      word_disp
    
    lodsd
    sub     command_counter, 4
    or      disp32_flag, 1
    jmp     save_disp
    
word_disp:
    lodsw
    sub     command_counter, 2
    jmp     save_disp

byte_disp:
    lodsb
    dec     command_counter

save_disp:
    push    si
    mov     si, offset disp_buf
    add     si, 8
disp_loop:
    idiv    bx
    cmp     dl, 9
    jbe     store_digit
    add     dl, 37h
    jmp     store_char
store_digit:
    or      dl, 30h
store_char:
    mov     [si], dl
    dec     disp_counter
    jz      end_disp_loop
    xor     dl, dl
    dec     si
    cmp     disp_counter, 4
    jne     next_char
    shr     eax, 16
next_char:
    jmp     disp_loop
end_disp_loop:
    mov     disp32_flag, 0
    cmp     dl, 39h
    jna     write_to_buffer
    dec     si
    mov     byte ptr [si], '0'
    inc     cx

write_to_buffer:
    add     output_buf_len, cx
    rep     movsb
    pop     si
    mov     disp_counter, 2
disp_skip:
    ret
write_disp ENDP

exit:
    mov     ah, 03Eh
    mov     bx, output_fd
    int     21h
    
    mov     ah, 04Ch
    int     21h
    end     start