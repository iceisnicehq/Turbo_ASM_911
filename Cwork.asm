.model small 
.486
.stack 100h
.data
filename    db          'com.com', 0
result      db          'result.txt', 0
buf         db          4096 dup('$')
team        db          4096 dup ('$')
word_ptr    db          'word ptr '
byte_ptr    db          'byte ptr '
dword_ptr   db          'dword ptr '
cwde_com    db          'cwde', 0Dh, 0Ah
ror_com     db          'ror '
movsx_com   db          'movsx '
.code
start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     ax, 3D00h
    mov     dx, offset filename
    int     21h
    mov     bx, ax
    
    mov     ax, 4202h
    mov     al, 02h
    xor     dx, dx
    int     21h
    mov     bp, ax
    mov     ax, 4200h
    xor     dx, dx
    int     21h
    
    mov     ah, 3Fh
    mov     cx, bp
    mov     dx, offset buf
    int     21h
    mov     si, dx
    
    mov     ah, 3ch
    xor     cx, cx
    mov     dx, offset result
    int     21h
    mov     di, offset team
    mov     bh, al
    xchg    bh, bl
    mov     bp, bx 
    jmp     first

close:
    call    write_to_file
    mov     ah, 3Eh
    mov     bl, ch
    xor     bh, bh
    int     21h
    mov     ah, 4Ch
    mov     al, 0
    int     21h 
first:
    xor     ax, ax
    xor     bx, bx
    lodsb
    ;cmp     al, 24
    ;jz      close
    mov     dl, 66h
    xor     dl, al
    jnz     next_pr
    add     bl, 10h
    lodsb
next_pr:
    mov     dl, 26h
    xor     dl, al
    jnz     next_pr2E
    mov     bh, 26h
    lodsb
    jmp     next_pr67
next_pr2E:
    mov     dl, 2Eh
    xor     dl, al
    jnz     next_pr36
    mov     bh, 2Eh
    lodsb
    jmp     next_pr67
next_pr36:
    mov     dl, 36h
    xor     dl, al
    jnz     next_pr3E
    mov     bh, 36h
    lodsb
    jmp     next_pr67
next_pr3E:
    mov     dl, 3Eh
    xor     dl, al
    jnz     next_pr64
    mov     bh, 3Eh
    lodsb
    jmp     next_pr67
next_pr64:
    mov     dl, 64h
    xor     dl, al
    jnz     next_pr65
    mov     bh, 64h
    lodsb
    jmp     next_pr67
next_pr65:
    mov     dl, 65h
    xor     dl, al
    jnz     next_pr67
    mov     bh, 65h
    lodsb
next_pr67:  
    mov     dl, 67h
    xor     dl, al
    jnz     opcode
    add     bl, 1h
    lodsb  
opcode:
    mov     dl, 98h
    xor     dl, al
    jz      write_cwde
    mov     dl, 0Fh
    xor     dl, al
    jnz     opcode_ror
    
    mov     cx, 6
    push    si
    mov     si, offset movsx_com
    rep     movsb
    pop     si
    
    lodsb
    ;opcode movsx
    mov     dl, 0BFh
    xor     dl, al
    jz      movsx_32
    ;movsx 16 v, b
    lodsb ;al=modR/M
    mov     dl, 00h
    xor     dl, bl
    jz      movsx_Gv_Eb
    mov     dl, 10h
    xor     dl, bl
    jz      movsx_regdw
    mov     dl, 1h
    xor     dl, bl
    jz      movsx_memdw
    ;regdw and memdw
    mov     dh, al
    shl     al, 2
    shr     al, 5
    call    write_regdw
    call    write_byte
    or      bh, bh
    jz      write_mem_movsx4
    call    write_seg
    mov     al, dh
    call    write_mem32
    jmp     next_com
write_mem_movsx4:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    call    write_mem32
    jmp     next_com
    
movsx_Gv_Eb:
    mov     dh, al
    shl     al, 2
    shr     al, 5
    call    write_regw
    mov     dl, al
    shr     dl, 6
    xor     dl, 00000011b
    jnz     movsx_memb
    mov     dh, al
    shl     al, 5
    shr     al, 5
    call    write_regb
    mov     ax, 0A0Dh
    stosw
    jmp     first
movsx_memb:    
    call    write_byte
    or      bh, bh
    jz      write_mem_movsx
    call    write_seg
    call    write_mem16
    jmp     next_com
write_mem_movsx:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    call    write_mem16
    jmp     next_com
    
movsx_regdw:
    mov     dh, al
    shl     al, 2
    shr     al, 5
    call    write_regdw
    mov     dl, al
    shr     dl, 6
    xor     dl, 00000011b
    jnz     movsx_memb2
    mov     dh, al
    shl     al, 5
    shr     al, 5
    call    write_regb
    mov     ax, 0A0Dh
    stosw
    jmp     first
movsx_memb2:    
    call    write_byte
    or      bh, bh
    jz      write_mem_movsx2
    call    write_seg
    call    write_mem16
    jmp     next_com
write_mem_movsx2:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    call    write_mem16
    jmp     next_com
    
movsx_memdw:
    mov     dh, al
    shl     al, 2
    shr     al, 5
    call    write_regw 
    call    write_byte
    or      bh, bh
    jz      write_mem_movsx3
    call    write_seg
    call    write_mem32
    jmp     next_com
write_mem_movsx3:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    call    write_mem32
    jmp     next_com
    
movsx_32:
    lodsb  
    mov     dh, al
    shl     al, 2
    shr     al, 5
    call    write_regdw
    mov     dh, al
    shr     al, 6
    mov     dl, 00000011b
    xor     dl, al
    jnz     wr_movsx32
    mov     al, dh
    shl     al, 5
    shr     al, 5
    call    write_regw
    mov     ax, 0A0Dh
    stosw
    jmp     first
wr_movsx32: 
    mov     al, dh
    call    write_word
    mov     dl, 11h
    xor     dl, bl
    jz      movsx32_memdw
    or      bh, bh
    jz      write_mem_movsx5
    call    write_seg
    call    write_mem16
    jmp     next_com
write_mem_movsx5:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    call    write_mem16
    jmp     next_com
movsx32_memdw:  
    or      bh, bh
    jz      write_mem_movsx6
    call    write_seg
    mov     al, dh
    call    write_mem32
    jmp     next_com
write_mem_movsx6:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    call    write_mem32
    jmp     next_com

    
write_cwde:
    mov     cx, 6
    push    si
    mov     si, offset cwde_com
    rep     movsb
    pop     si
    jmp     first
    
opcode_ror:
    mov     cx, 4
    push    si
    mov     si, offset ror_com
    rep     movsb
    pop     si
    mov     ch, al
    mov     dl, 0C0h
    xor     dl, al
    jz      ror_byte
    mov     dl, 0D0h
    xor     dl, al
    jz      ror_byte
    mov     dl, 0D2h
    xor     dl, al
    jz      ror_byte
    mov     dl, 0C1h
    xor     dl, al
    jz      h
    mov     dl, 0D1h
    xor     dl, al
    jz      h
    mov     dl, 0D3h
    xor     dl, al
    jz      h
    jmp     close
h:
    ;ror_word/dword
    mov     dh, bl
    shr     dh, 4
    mov     dl, 1h
    xor     dl, dh
    jz      ror_dword
    lodsb
    mov     dh, al
    shr     al, 6
    mov     dl, 00000011b
    xor     dl, al
    jnz     ror_memw
    mov     al, dh
    shl     al, 5
    shr     al, 5
    call    write_regw
    mov     al, ch
    mov     dl, 0C1h
    xor     dl, al
    jz      ror_im8
    mov     dl, 0D1h
    xor     dl, al
    jz      ror_1
    jmp     ror_cl
ror_memw:
    mov     al, dh
    mov     dl, ch
    call    write_word
    mov     ch, dl
    or      bh, bh
    jz      write_mem_ror2
    call    write_seg
    mov     dl, 1h
    xor     dl, bl
    jz      ror_memdw2
    push    cx
    call    write_mem16
    pop     cx
    jmp     next_ror2
ror_memdw2:
    push    cx
    call    write_mem32
    pop     cx
    jmp     next_ror2
write_mem_ror2:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    mov     dl, 1h
    xor     dl, bl
    jz      ror_memdw2
    push    cx
    call    write_mem16
    pop     cx
next_ror2:
    mov     ax, 202Ch
    stosw
    mov     al, ch
    mov     dl, 0C1h
    xor     dl, al
    jz      ror_im8
    mov     dl, 0D1h
    xor     dl, al
    jz      ror_1
    jmp     ror_cl
    
ror_dword:   
    lodsb
    mov     dh, al
    shr     al, 6
    mov     dl, 00000011b
    xor     dl, al
    jnz     ror_memdw
    mov     al, dh
    shl     al, 5
    shr     al, 5
    call    write_regdw
    mov     al, ch
    mov     dl, 0C1h
    xor     dl, al
    jz      ror_im8
    mov     dl, 0D1h
    xor     dl, al
    jz      ror_1
    jmp     ror_cl
ror_memdw:
    mov     al, dh
    mov     dl, ch
    call    write_dword
    mov     ch, dl
    or      bh, bh
    jz      write_mem_ror3
    call    write_seg
    mov     dl, 11h
    xor     dl, bl
    jz      ror_memdw3
    push    cx
    call    write_mem16
    pop     cx
    jmp     next_ror3
ror_memdw3:
    push    cx
    call    write_mem32
    pop     cx
    jmp     next_ror3
write_mem_ror3:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    mov     dl, 11h
    xor     dl, bl
    jz      ror_memdw3
    push    cx
    call    write_mem16
    pop     cx
next_ror3:
    mov     ax, 202Ch
    stosw
    mov     al, ch
    mov     dl, 0C1h
    xor     dl, al
    jz      ror_im8
    mov     dl, 0D1h
    xor     dl, al
    jz      ror_1
    jmp     ror_cl
    
ror_byte:    
    lodsb
    mov     dh, al
    shr     al, 6
    mov     dl, 00000011b
    xor     dl, al
    jnz     ror_memb
    mov     al, dh
    shl     al, 5
    shr     al, 5
    call    write_regb  
    mov     ax, 202Ch
    stosw
    mov     al, ch
    mov     dl, 0C0h
    xor     dl, al
    jz      ror_im8
    mov     dl, 0D0h
    xor     dl, al
    jz      ror_1
ror_cl:
    mov     ax, 6C63h
    stosw
    jmp     next_com
ror_memb:
    mov     al, dh
    mov     dl, ch
    call    write_byte
    mov     ch, dl
    or      bh, bh
    jz      write_mem_ror
    call    write_seg
    mov     dl, 1h
    xor     dl, bl
    jz      ror_memdw_wr
    push    cx
    call    write_mem16
    pop     cx
    jmp     next_ror
ror_memdw_wr:
    push    cx
    call    write_mem32
    pop     cx
    jmp     next_ror
write_mem_ror:
    mov     dh, al
    mov     al, 5Bh
    stosb
    mov     al, dh
    mov     dl, 1h
    xor     dl, bl
    jz      ror_memdw_wr
    push    cx
    call    write_mem16
    pop     cx
next_ror:
    mov     ax, 202Ch
    stosw
    mov     al, ch
    mov     dl, 0C0h
    xor     dl, al
    jz      ror_im8
    mov     dl, 0D0h
    xor     dl, al
    jz      ror_1
    jmp     ror_cl
ror_im8:
    call    disp8
    jmp     next_com
ror_1:
    mov     al, 31h
    stosb
    jmp     next_com
write_byte:
    mov     cx, 9
    push    si
    mov     si, offset byte_ptr
    rep     movsb
    pop     si
    ret

write_word:
    mov     cx, 9
    push    si
    mov     si, offset word_ptr
    rep     movsb
    pop     si
    ret
    
write_dword:
    mov     cx, 10
    push    si
    mov     si, offset dword_ptr
    rep     movsb
    pop     si
    ret   
    
write_regw:
    mov     dl, 00000000b
    xor     dl, al
    jnz     w_cx
    mov     eax, 202C7861h
    stosd
    mov     al, dh
    ret
w_cx:   
    mov     dl, 00000001b
    xor     dl, al
    jnz     w_dx
    mov     eax, 202C7863h
    stosd
    mov     al, dh
    ret
w_dx:
    mov     dl, 00000010b
    xor     dl, al
    jnz     w_bx
    mov     eax, 202C7864h
    stosd
    mov     al, dh
    ret
w_bx:
    mov     dl, 00000011b
    xor     dl, al
    jnz     w_sp
    mov     eax, 202C7862h
    stosd
    mov     al, dh
    ret    
w_sp:
    mov     dl, 00000100b
    xor     dl, al
    jnz     w_bp
    mov     eax, 202C7073h
    stosd
    mov     al, dh
    ret   
w_bp:
    mov     dl, 00000101b
    xor     dl, al
    jnz     w_si
    mov     eax, 202C7062h
    stosd
    mov     al, dh
    ret 
w_si:
    mov     dl, 00000110b
    xor     dl, al
    jnz     w_di
    mov     eax, 202C6973h
    stosd
    mov     al, dh
    ret
w_di:
    mov     eax, 202C6964h
    stosd
    mov     al, dh
    ret
    
write_regb:
    mov     dl, 00000000b
    xor     dl, al
    jnz     w_cl
    mov     ax, 6C61h
    stosw
    mov     al, dh
    ret
w_cl:
    mov     dl, 00000001b   
    xor     dl, al
    jnz     w_dl
    mov     ax, 6C63h
    stosw
    mov     al, dh
    ret
w_dl:
    mov     dl, 00000010b
    xor     dl, al
    jnz     w_bl
    mov     ax, 6C64h
    stosw
    mov     al, dh
    ret
w_bl:
    mov     dl, 00000011b
    xor     dl, al
    jnz     w_ah
    mov     ax, 6C62h
    stosw
    mov     al, dh
    ret    
w_ah:
    mov     dl, 00000100b
    xor     dl, al
    jnz     w_ch
    mov     ax, 6861h
    stosw
    mov     al, dh
    ret   
w_ch:
    mov     dl, 00000101b
    xor     dl, al
    jnz     w_dh
    mov     ax, 6863h
    stosw
    mov     al, dh
    ret 
w_dh:
    mov     dl, 00000110b
    xor     dl, al
    jnz     w_bh
    mov     ax, 6864h
    stosw
    mov     al, dh
    ret
w_bh:
    mov     ax, 6862h
    stosw
    mov     al, dh
    ret
    
write_seg:
    cmp     bh, 26h
    jnz     w_cs
    mov     eax, 5B3A7365h
    stosd
    mov     al, dh
    ret
w_cs:
    cmp     bh, 2Eh
    jnz     w_ss
    mov     eax, 5B3A7363h
    stosd
    mov     al, dh
    ret
w_ss:
    cmp     bh, 36h
    jnz     w_ds
    mov     eax, 5B3A7373h
    stosd
    mov     al, dh
    ret
w_ds:
    cmp     bh, 3Eh
    jnz     w_fs
    mov     eax, 5B3A7364h
    stosd
    mov     al, dh
    ret
w_fs:
    cmp     bh, 64h
    jnz     w_gs
    mov     eax, 5B3A7366h
    stosd
    mov     al, dh
    ret
w_gs:
    mov     eax, 5B3A7367h
    stosd
    mov     al, dh
    ret
    
write_regdw:
    mov     dl, 00000000b
    xor     dl, al
    jnz     w_ecx
    mov     eax, 2C786165h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret
w_ecx:   
    mov     dl, 00000001b
    xor     dl, al
    jnz     w_edx
    mov     eax, 2C786365h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret
w_edx:
    mov     dl, 00000010b
    xor     dl, al
    jnz     w_ebx
    mov     eax, 2C786465h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret
w_ebx:
    mov     dl, 00000011b
    xor     dl, al
    jnz     w_esp
    mov     eax, 2C786265h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret    
w_esp:
    mov     dl, 00000100b
    xor     dl, al
    jnz     w_ebp
    mov     eax, 2C707365h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret   
w_ebp:
    mov     dl, 00000101b
    xor     dl, al
    jnz     w_esi
    mov     eax, 2C706265h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret 
w_esi:
    mov     dl, 00000110b
    xor     dl, al
    jnz     w_edi
    mov     eax, 2C697365h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret
w_edi:
    mov     eax, 2C696465h
    stosd
    mov     al, 20h
    stosb
    mov     al, dh
    ret
    
write_mem16:
    xor     ah, ah
    xor     cx, cx
    shld    cx, ax, 10
    mov     ah, cl 
    mov     dh, al
    shl     al, 5
    shr     al, 5
    mov     dl, 00000000b
    xor     dl, ah
    jz      mod00
    mov     dl, 00000001b
    xor     dl, ah
    jz      mod01
    call    write_efad
    mov     dl, 00000110b
    xor     dl, al
    jnz     c
    mov     ax, 7862h
    stosw
c:  
    mov     al, 2Bh
    stosb
    mov     cx, 2
    call    disp16
    mov     al, 5Dh
    stosb
    mov     al, dh
    ret
    
mod00:
    call    write_efad
    mov     dl, 00000110b
    xor     dl, al
    jnz     a
    mov     cx, 2
    call    disp16
a:
    mov     al, 5Dh
    stosb
    mov     al, dh
    ret
    
mod01:
    call    write_efad
    mov     dl, 00000110b
    xor     dl, al
    jnz     b
    mov     ax, 7862h
    stosw
b:  
    mov     al, 2Bh
    stosb
    call    disp8
    mov     al, 5Dh
    stosb
    mov     al, dh
    ret
    
write_efad:
    mov     dl, 00000000b
    xor     dl, al
    jnz     bx_di
    mov     ax, 7862h
    stosw
    mov     al, 2Bh
    stosb
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
bx_di:    
    mov     dl, 00000001b
    xor     dl, al
    jnz     bp_si
    mov     ax, 7862h
    stosw
    mov     al, 2Bh
    stosb
    mov     ax, 6964h
    stosw
    mov     al, dh
    ret
bp_si:    
    mov     dl, 00000010b
    xor     dl, al
    jnz     bp_di
    mov     ax, 7062h
    stosw
    mov     al, 2Bh
    stosb
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
bp_di:    
    mov     dl, 00000011b
    xor     dl, al
    jnz     si_
    mov     ax, 7062h
    stosw
    mov     al, 2Bh
    stosb
    mov     ax, 6964h
    stosw
    mov     al, dh
    ret
si_:
    mov     dl, 00000100b
    xor     dl, al
    jnz     di_
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
di_:
    mov     dl, 00000101b
    xor     dl, al
    jnz     bx_
    mov     ax, 6964h
    stosw
    mov     al, dh
    ret
bx_:
    mov     dl, 00000111b
    xor     dl, al
    jnz     endw
    mov     ax, 7862h
    stosw
endw:
    mov     al, dh
    ret
    
write_mem32:
    xor     ah, ah
    xor     cx, cx
    mov     dh, al
    shld    cx, ax, 10
    mov     ah, cl
    shl     al, 5
    shr     al, 5
    mov     dl, 00000100b
    xor     dl, al
    jz      sib_byte
    mov     dl, 00000000b
    xor     dl, ah
    jz      mod0032
    mov     dl, 00000001b
    xor     dl, ah
    jz      mod0132
    call    write_efadw
    mov     dl, 00000101b
    xor     dl, al
    jnz     c32
    mov     ax, 6265h
    stosw
    mov     al, 70h 
    stosb
c32:  
    mov     al, 2Bh
    stosb
    mov     cx, 4
    call    disp32
    mov     al, 5Dh
    stosb
    ret
    
mod0032:
    call    write_efadw
    mov     dl, 0101b
    xor     dl, al
    jnz     a32
    mov     cx, 4
    call    disp32
a32:
    mov     al, 5Dh
    stosb
    ret
    
mod0132:
    call    write_efadw
    mov     dl, 0101b
    xor     dl, al
    jnz     b32
    mov     ax, 6265h
    stosw
    mov     ax, 70h 
    stosb
b32:  
    mov     al, 2Bh
    stosb
    call    disp8
    mov     al, 5Dh
    stosb
    ret
write_efadw:
    mov     dl, 00000000b
    xor     dl, al
    jnz     ecx_
    mov     al, 65h
    stosb
    mov     ax, 7861h
    stosw
    mov     al, dh
    ret
ecx_:    
    mov     dl, 00000001b
    xor     dl, al
    jnz     edx_
    mov     al, 65h
    stosb
    mov     ax, 7863h
    stosw
    mov     al, dh
    ret
edx_:    
    mov     dl, 00000010b
    xor     dl, al
    jnz     ebx_
    mov     al, 65h
    stosb
    mov     ax, 7864h
    stosw
    mov     al, dh
    ret
ebx_:    
    mov     dl, 00000011b
    xor     dl, al
    jnz     esi_
    mov     al, 65h
    stosb
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
esi_:
    mov     dl, 00000110b
    xor     dl, al
    jnz     edi_
    mov     al, 65h
    stosb
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
edi_:
    mov     dl, 00000111b
    xor     dl, al
    jnz     enddw
    mov     al, 65h
    stosb
    mov     ax, 6473h
    stosw
enddw:
    mov     al, dh
    ret
    
    
sib_byte:
    mov     bh, dh
    mov     al, dh
    xor     ah, ah
    xor     cx, cx
    shld    cx, ax, 10
    mov     ah, cl
    mov     dl, 00000000b
    xor     dl, ah
    jz      sib_byte00
    lodsb
    mov     dh, al
    shl     al, 5
    shr     al, 5
back:
    call    write_efadw
    shl     al, 5
    shr     al, 5
    mov     dl, 00000100b
    xor     dl, al
    jz      esp_bs
    mov     dl, 00000101b
    xor     dl, al
    jz      ebp_bs
    
write_in:
    mov     al, 2Bh
    stosb
    mov     al, dh
    shl     al, 2
    shr     al, 5
    call    write_scin
    mov     al, dh
    xor     ah, ah
    xor     cx, cx
    mov     dh, al
    shld    cx, ax, 10
    mov     ah, cl
    mov     dl, 00000000b
    xor     dl, ah
    jz      s0
    mov     dl, 00000001b
    xor     dl, ah
    jz      s2
    mov     dl, 00000010b
    xor     dl, ah
    jz      s4
    mov     ax, 382Ah
    stosw 
s0:
    jmp     wr_disp_sib
s2:
    mov     ax, 322Ah
    stosw
    jmp     wr_disp_sib 
s4:
    mov     ax, 342Ah
    stosw
   
wr_disp_sib:
    mov     al, bh
    shr     al, 6
    mov     dl, 00000000b
    xor     dl, al
    jz      no_disp
    mov     dl, 00000001b
    xor     dl, al
    jz      wr_disp8_sib
    mov     cx, 4
    mov     al, 2Bh
    stosb
    call    disp32
    jmp     no_disp
wr_disp8_sib:
    mov     al, 2Bh
    stosb
    call    disp8
no_disp:
    mov     al, 5Dh
    stosb
    ret
    
esp_bs:
    mov     dh, al
    mov     ax, 7365h
    stosw
    mov     al, 70h 
    stosb
    jmp     write_in
ebp_bs:
    mov     cx, ax
    mov     ax, 6265h
    stosw
    mov     al, 70h 
    stosb
    jmp     write_in
    
write_scin:
    mov     dl, 00000000b
    xor     dl, al
    jnz     ecx_in
    mov     al, 65h
    stosb
    mov     ax, 7861h
    stosw
    mov     al, dh
    ret
ecx_in:    
    mov     dl, 00000001b
    xor     dl, al
    jnz     edx_in
    mov     al, 65h
    stosb
    mov     ax, 7863h
    stosw
    mov     al, dh
    ret
edx_in:    
    mov     dl, 00000010b
    xor     dl, al
    jnz     ebx_in
    mov     al, 65h
    stosb
    mov     ax, 7864h
    stosw
    mov     al, dh
    ret
ebx_in:    
    mov     dl, 00000011b
    xor     dl, al
    jnz     ebp_in
    mov     al, 65h
    stosb
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
ebp_in:    
    mov     dl, 00000101b
    xor     dl, al
    jnz     esi_in
    mov     al, 65h
    stosb
    mov     ax, 7062h
    stosw
    mov     al, dh
    ret
esi_in:
    mov     dl, 00000110b
    xor     dl, al
    jnz     edi_in
    mov     al, 65h
    stosb
    mov     ax, 6973h
    stosw
    mov     al, dh
    ret
edi_in:
    mov     ax, 00000111b
    jnz     endin
    mov     al, 65h
    stosb
    mov     ax, 6473h
    stosw
endin:
    mov     al, dh
    ret
    
 
sib_byte00:
    lodsb
    mov     dh, al
    shl     al, 5
    shr     al, 5
    mov     dl, 00000101b
    xor     dl, al
    jnz     back
    mov     al, dh
    shl     al, 2
    shr     al, 5
    call    write_scin
    shr     al, 6
    mov     dl, 00000000b
    xor     dl, al
    jz      next_sib_byte00 
    mov     dl, 00000001b
    xor     dl, al
    jz      s200
    mov     dl, 00000010b
    xor     dl, al
    jz      s400
    mov     ax, 382Ah
    stosw
    jmp     next_sib_byte00 
s200:
    mov     ax, 322Ah
    stosw
    jmp     next_sib_byte00 
s400:
    mov     ax, 342Ah
    stosw
    
next_sib_byte00:
    lodsb   
    mov     dh, al
    or      al, al
    jz      wr_
    mov     al, 2Bh
    stosb
    dec     si
    mov     cx, 4
    call    disp32
wr_:
    mov     ax, 5Dh
    ret
    
next_com:
    mov     ax, 0A0Dh
    stosw
    jmp     first
    
disp32:
    lodsb
    aam
    add     ax, 3030h  
    xchg    al, ah
    stosw 
    loop    disp32
    ret
disp8:
    lodsb
    aam
    add     ax, 3030h
    xchg    al, ah
    stosw
    ret
disp16:
    lodsb
    aam
    add     ax, 3030h
    xchg    al, ah
    stosw
    loop    disp16
    ret
    
write_to_file:  
    mov     cx, di
    mov     ah, 40h
    mov     dx, offset team
    sub     cx, dx
    xor     bx, bp
    xor     bh, bh
    int     21h
    ret   
    
end start