LOCALS @@
.model small
.486
.stack  100h
.data
    buffer          db      2048 DUP(?)
    read_file       db      'COM.COM',0
    com_file        db      'result.asm',0
    id_file         dw      ?
    Peremenaya_adc  db      'ADC',9,'$'
    Peremenaya_bsf  db      'BSF',9,'$'
    Peremenaya_movs db      'MOVS',9,'$'
    reg1            db      ',$'
    enterr          db      0Dh,0Ah,'$'
    right_par       db      ']$'
    left_par        db      '[$'
    disp            dw      ?,'$'
    e               db      'E','$'
    h               db      'h','$'
    plus            db      ' + ','$'
    zeroo           db      '0','$'
    opc             db      ?
    
    sib             db      ?
    sssib           db      ?
    index           db      ?
    base            db      ?
    
    reg_e           db      ?
    mem_e           db      ?
    
    moderm          db      ?
    rm              db      ?
    reg             db      ?
    mode            db      ?
    
    segm            dw      ?,'$'
    
    REG_ES          db      'ES:','$'
    REG_CS          db      'CS:','$'
    REG_SS          db      'SS:','$'
    REG_DS          db      'DS:','$'
    REG_FS          db      'FS:','$'
    REG_GS          db      'GS:','$'
    
    pref_LOCK       db      'LOCK',9,'$'
    pref_REPNE      db      'REPNE/REPNZ',9,'$'
    pref_REP        db      'REP/REPE/REPZ',9,'$'
    
    BYTE_PTR        db      'BYTE PTR $'
    WORD_PTR        db      'WORD PTR $'
    DWORD_PTR       db      'DWORD PTR $'
    
    REG_AL          db      'AL$'
    REG_CL          db      'CL$'
    REG_DL          db      'DL$'
    REG_BL          db      'BL$'
    REG_AH          db      'AH$'
    REG_CH          db      'CH$'
    REG_DH          db      'DH$'
    REG_BH          db      'BH$'
    
    REG_AX          db      'AX$'
    REG_CX          db      'CX$'
    REG_DX          db      'DX$'
    REG_BX          db      'BX$'
    REG_SP          db      'SP$'
    REG_BP          db      'BP$'
    REG_SI          db      'SI$'
    REG_DI          db      'DI$'
    
    REG_EAX         db      'EAX$'
    REG_ECX         db      'ECX$'
    REG_EDX         db      'EDX$'
    REG_EBX         db      'EBX$'
    REG_ESP         db      'ESP$'
    REG_EBP         db      'EBP$'
    REG_ESI         db      'ESI$'
    REG_EDI         db      'EDI$'
    
    REG_EAX_2       db      'EAX*2$'
    REG_ECX_2       db      'ECX*2$'
    REG_EDX_2       db      'EDX*2$'
    REG_EBX_2       db      'EBX*2$'
    REG_EBP_2       db      'EBP*2$'
    REG_ESI_2       db      'ESI*2$'
    REG_EDI_2       db      'EDI*2$'
    
    REG_EAX_4       db      'EAX*4$'
    REG_ECX_4       db      'ECX*4$'
    REG_EDX_4       db      'EDX*4$'
    REG_EBX_4       db      'EBX*4$'
    REG_EBP_4       db      'EBP*4$'
    REG_ESI_4       db      'ESI*4$'
    REG_EDI_4       db      'EDI*4$'
    
    REG_EAX_8       db      'EAX*8$'
    REG_ECX_8       db      'ECX*8$'
    REG_EDX_8       db      'EDX*8$'
    REG_EBX_8       db      'EBX*8$'
    REG_EBP_8       db      'EBP*8$'
    REG_ESI_8       db      'ESI*8$'
    REG_EDI_8       db      'EDI*8$'
    
    EA_BX_SI        db      'BX + SI$'
    EA_BX_DI        db      'BX + DI$'
    EA_BP_SI        db      'BP + SI$'
    EA_BP_DI        db      'BP + DI$'
    
    label registers
    BYTE_REGS       dw      REG_AL, REG_CL, REG_DL, REG_BL, REG_AH, REG_CH, REG_DH, REG_BH
    WORD_REGS       dw      REG_AX, REG_CX, REG_DX, REG_BX, REG_SP, REG_BP, REG_SI, REG_DI
    DWORD_REGS      dw      REG_EAX, REG_ECX, REG_EDX, REG_EBX, REG_ESP, REG_EBP, REG_ESI, REG_EDI
    
    label effective_addresses
    EFF_ADD         dw      EA_BX_SI, EA_BX_DI, EA_BP_SI, EA_BP_DI, REG_SI, REG_DI, REG_BP, REG_BX
    
    label type_ovr_ptrs
    PTRS            dw      BYTE_PTR, WORD_PTR, DWORD_PTR
    
    label ss00_sib
    SCALED_INDEX00  dw      REG_EAX, REG_ECX, REG_EDX, REG_EBX, REG_ESP, REG_EBP, REG_ESI, REG_EDI
    
    label ss01_sib
    SCALED_INDEX01  dw      REG_EAX_2, REG_ECX_2, REG_EDX_2, REG_EBX_2, REG_ESP, REG_EBP_2, REG_ESI_2, REG_EDI_2
    
    label ss10_sib
    SCALED_INDEX10  dw      REG_EAX_4, REG_ECX_4, REG_EDX_4, REG_EBX_4, REG_ESP, REG_EBP_4, REG_ESI_4, REG_EDI_4
    
    label ss11_sib
    SCALED_INDEX11  dw      REG_EAX_8, REG_ECX_8, REG_EDX_8, REG_EBX_8, REG_ESP, REG_EBP_8, REG_ESI_8, REG_EDI_8
.code
check_seg   macro   op,seg
    local   skip
    cmp     al,op
    jnz     skip
    mov     segm,offset seg
    jmp     prefix_oper
    skip:
endm
zap         macro   op,col
    mov     dx,offset op
    mov     cx,col
    call    zapis
endm
del_na_modrm    macro
    push    ax
    lodsb
    mov     moderm,al
    mov     bh,al
    mov     bl,al
    and     bh,0C0h
    and     bl,38h
    and     al,07h
    shr     bl,3
    shr     bh,6
    mov     rm,al
    mov     reg,bl
    mov     mode,bh
    pop     ax
endm
del_na_sib    macro
    lodsb
    mov     sib,al
    mov     bh,al
    mov     bl,al
    and     bh,0C0h
    and     bl,38h
    and     al,07h
    shr     bl,3
    shr     bh,6
    mov     base,al
    mov     index,bl
    mov     sssib,bh
endm
Start:
    mov     ax,@data
    mov     ds,ax
    mov     es,ax
    mov     dx,offset read_file
    mov     ax,3D02h
    int     21h
    mov     bx,ax
    mov     ax,3F00h
    mov     cx,2048d
    mov     dx,offset buffer
    int     21h
    mov     ax,3E00h
    int     21h
    mov     si,offset buffer
    mov     dx,offset com_file
    mov     ax,3C00h
    mov     cx,2
    int     21h
    mov     id_file,ax
    jmp     prefix_oper
zapis:
    mov     ah,40h
    mov     bx,id_file
    int     21h
    ret
zapis_disp32:
    add     si,3
    call    zap_disp_check_0
    call    zap_disp
    call    zap_disp
    call    zap_disp
    add     si,5
    ret
zapis_disp16:
    inc     si
    call    zap_disp_check_0
    call    zap_disp
    add     si,3
    ret
zap_disp:
    lodsb
    or      al,al
    jz      skip
    call    razdelenie
    mov     disp,ax
    zap     disp,2
    sub     si,2
    ret
skip:
    sub     si,2
    ret
zap_disp_check_0:
    lodsb
    or      al,al
    jz      skip
    push    ax
    call    check_disp
    pop     ax
    call    razdelenie
    mov     disp,ax
    zap     disp,2
    sub     si,2
    ret
zapis_base:
    movzx   si,base
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    ret
reset_values:
    mov     reg_e,0
    mov     mem_e,0
    mov     segm,0
    mov     opc,0
    mov     moderm,0
    ret
zapis_reg:
    cmp     opc,10h
    jz      zapis_breg_opc10
    cmp     opc,11h
    jz      zapis_vreg_opc11
    cmp     opc,12h
    jz      zapis_breg_opc12
    cmp     opc,13h
    jz      zapis_vreg_opc13
    cmp     opc,14h
    jz      zapis_al_opc14
    cmp     opc,15h
    jz      zapis_ax_opc15
    cmp     opc,80h
    jz      zapis_opc80
    cmp     opc,81h
    jz      zapis_opc81
    cmp     opc,83h
    jz      zapis_opc83
    cmp     opc,0BCh
    jz      zapis_vreg_opc13
    cmp     opc,0A4h
    jz      zapis_opcA4
    cmp     opc,0A5h
    jz      zapis_opcA5
    ret
zapis_breg_opc10:
    movzx   si,reg
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     enterr,2
    ret
zapis_vreg_opc11:
    cmp     reg_e,1
    jz      zapis_dvreg_opc11
    movzx   si,reg
    add     si,8
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     enterr,2
    ret
zapis_dvreg_opc11:
    movzx   si,reg
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     enterr,2
    ret
zapis_breg_opc12:
    movzx   si,reg
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    ret
zapis_vreg_opc13:
    cmp     reg_e,1
    jz      zapis_dvreg_opc13
    movzx   si,reg
    add     si,8
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    ret
zapis_dvreg_opc13:
    movzx   si,reg
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     reg1,1
    ret
zapis_al_opc14:
    xor     si,si
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    ret
zapis_ax_opc15:
    cmp     reg_e,1
    jz      zapis_eax_opc15
    xor     si,si
    add     si,8
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    ret
zapis_eax_opc15:
    xor     si,si
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     reg1,1
    ret
zapis_opc80:
    cmp     moderm,0D0h
    ja      zapis_breg_opc80
    xor     si,si
    mov     dx,type_ovr_ptrs[si]
    mov     cx,9
    call    zapis
    ret
zapis_breg_opc80:
    movzx   si,rm
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    ret
zapis_opc81:
    cmp     moderm,0D0h
    ja      zapis_vreg_opc81
    cmp     reg_e,1
    jz      zapis_dvreg_opc81
    xor     si,si
    inc     si
    shl     si,1
    mov     dx,type_ovr_ptrs[si]
    mov     cx,9
    call    zapis
    ret
zapis_vreg_opc81:
    movzx   si,rm
    add     si,8
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    ret
zapis_dvreg_opc81:
    xor     si,si
    add     si,2
    shl     si,1
    mov     dx,type_ovr_ptrs[si]
    mov     cx,10
    call    zapis
    ret
zapis_opc83:
    cmp     reg_e,1
    jz      zapis_dv_opc83
    cmp     moderm,0D0h
    ja      zapis_vreg_opc81
    xor     si,si
    inc     si
    shl     si,1
    mov     dx,type_ovr_ptrs[si]
    mov     cx,9
    call    zapis
    ret
zapis_dv_opc83:
    cmp     moderm,0D0h
    jae     zapis_dvreg_opc83
    xor     si,si
    add     si,2
    shl     si,1
    mov     dx,type_ovr_ptrs[si]
    mov     cx,10
    call    zapis
    ret
zapis_dvreg_opc83:
    movzx   si,rm
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     reg1,1
    ret
zapis_opcA4:
    xor     si,si
    mov     dx,type_ovr_ptrs[si]
    mov     cx,9
    call    zapis
    zap     REG_ES,3
    zap     left_par,1
    cmp     mem_e,1
    jz      zapis_rmem_opcA4
    add     si,15
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     right_par,1
    zap     reg1,1
    ret
zapis_rmem_opcA4:
    add     si,23
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     right_par,1
    zap     reg1,1
    ret
zapis_opcA5:
    cmp     reg_e,1
    jz      zapis_dvopcA5
    xor     si,si
    inc     si
    shl     si,1
    mov     dx,type_ovr_ptrs[si]
    mov     cx,9
    call    zapis
    zap     REG_ES,3
    zap     left_par,1
    xor     si,si
    cmp     mem_e,1
    jz      zapis_rmem_opcA4
    add     si,15
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     right_par,1
    zap     reg1,1
    ret
zapis_dvopcA5:
    xor     si,si
    add     si,2
    shl     si,1
    mov     dx,type_ovr_ptrs[si]
    mov     cx,10
    call    zapis
    zap     REG_ES,3
    zap     left_par,1
    xor     si,si
    cmp     mem_e,1
    jz      zapis_rmem_opcA4
    add     si,15
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     right_par,1
    zap     reg1,1
    ret
check_segm:
    mov     dx,segm
    or      dx,dx
    jz      zapis_ds
    mov     cx,3
    call    zapis
    jmp     vihod
zapis_ds:
    zap     REG_DS,3
vihod:
    ret
check_segm_rmem:
    mov     dx,segm
    or      dx,dx
    jz      zapis_segm
    mov     cx,3
    call    zapis
    jmp     vihod
zapis_segm:
    movzx   si,rm
    cmp     si,5
    jz      zapis_ss
    zap     REG_DS,3
    jmp     vihod
zapis_ss:
    zap     REG_SS,3
    jmp     vihod
check_disp:
    cmp     al,9Fh
    ja      @@zap_0
    ret
@@zap_0:
    zap     zeroo,1
    ret
zapis_breg:
    movzx   si,rm
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    ret
check_len:
    cmp     rm,3
    jbe     len_7
    mov     cx,2
    ret
len_7:
    mov     cx,7
    ret
razdelenie:
    mov     ch,10h
    xor     ah,ah
    div     ch
    or      ax,3030h
    cmp     al,39h
    jbe     chislo1
    add     al,7
chislo1:
    cmp     ah,39h
    jbe     chislo2
    add     ah,7 
chislo2:
    ret
prefix_oper:
    lodsb
    cmp     al,66h
    jnz     prefix_lock
    mov     reg_e,1
    jmp     prefix_oper
prefix_lock:
    cmp     al,0F0h
    jnz     prefix_repne
    mov     dx,offset pref_LOCK
    mov     cx,5
    call    zapis
    jmp     prefix_oper
prefix_repne:
    cmp     al,0F2h
    jnz     prefix_rep
    mov     dx,offset pref_REPNE
    mov     cx,12
    call    zapis
    jmp     prefix_oper
prefix_rep:
    cmp     al,0F3h
    jnz     prefix_es
    mov     dx,offset pref_REP
    mov     cx,14
    call    zapis
    jmp     prefix_oper
prefix_es:
    check_seg   26h,REG_ES
    check_seg   2Eh,REG_CS
    check_seg   36h,REG_SS
    check_seg   3Eh,REG_DS
    check_seg   64h,REG_FS
    check_seg   65h,REG_GS
prefix_address:
    cmp     al,67h
    jnz     nachalo
    mov     mem_e,1
    lodsb
nachalo:
    cmp     al,0Fh
    jz      prefix_oper
    cmp     al,10h
    jz      opc10
    cmp     al,11h
    jz      opc11
    cmp     al,12h
    jz      opc12
    cmp     al,13h
    jz      opc13
    cmp     al,14h
    jz      opc14
    cmp     al,15h
    jz      opc15
    cmp     al,80h
    jz      opc80
    cmp     al,81h
    jz      opc81
    cmp     al,83h
    jz      opc83
    cmp     al,0BCh
    jz      opcBC
    cmp     al,0A4h
    jz      opcA4
    cmp     al,0A5h
    jz      opcA5
    jmp     Exit
opc10:
    mov     opc,al
    zap     Peremenaya_adc,4
    del_na_modrm
    cmp     mode,3
    jz      regbregb
    call    zapis_mem
    zap     reg1,1
    push    si
    call    zapis_reg
    pop     si
    call    reset_values
    jmp     prefix_oper
regbregb:
    push    si
    call    zapis_breg
    zap     reg1,1
    call    zapis_reg
    pop     si
    call    reset_values
    jmp     prefix_oper
opc11:
    mov     opc,al
    zap     Peremenaya_adc,4
    del_na_modrm
    cmp     mode,3
    jz      regvregv
    call    zapis_mem
    zap     reg1,1
    push    si
    call    zapis_reg
    pop     si
    call    reset_values
    jmp     prefix_oper
regvregv:
    cmp     reg_e,1
    jz      regdvregdv
    push    si
    movzx   si,rm
    add     si,8
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     reg1,1
    call    zapis_reg
    pop     si
    call    reset_values
    jmp     prefix_oper
regdvregdv:
    push    si
    movzx   si,rm
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     reg1,1
    call    zapis_reg
    pop     si
    call    reset_values
    jmp     prefix_oper
opc12:
    mov     opc,al
    zap     Peremenaya_adc,4
    del_na_modrm
    cmp     mode,3
    jz      regbregbopc12
    push    si
    call    zapis_reg
    pop     si
    call    zapis_mem
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
regbregbopc12:
    push    si
    call    zapis_reg
    call    zapis_breg
    zap     enterr,2
    pop     si
    call    reset_values
    jmp     prefix_oper
opc13:
    mov     opc,al
    zap     Peremenaya_adc,4
    del_na_modrm
    cmp     mode,3
    jz      regvregvopc13
    push    si
    call    zapis_reg
    pop     si
    call    zapis_mem
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
regvregvopc13:
    push    si
    call    zapis_reg
    cmp     reg_e,1
    jz      regdvregdvopc13
    movzx   si,rm
    add     si,8
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     enterr,2
    pop     si
    call    reset_values
    jmp     prefix_oper
regdvregdvopc13:
    movzx   si,rm
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     enterr,2
    pop     si
    call    reset_values
    jmp     prefix_oper
opc14:
    mov     opc,al
    zap     Peremenaya_adc,4
    push    si
    call    zapis_reg
    pop     si
    lodsb
    push    ax
    call    check_disp
    pop     ax
    call    razdelenie
    mov     disp,ax
    zap     disp,2
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opc15:
    mov     opc,al
    zap     Peremenaya_adc,4
    push    si
    call    zapis_reg
    cmp     reg_e,1
    jz      opc15_imm32
    pop     si
    call    zapis_disp16
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opc15_imm32:
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opc80:
    mov     opc,al
    del_na_modrm
    cmp     moderm,0D0h
    ja      opc14
    zap     Peremenaya_adc,4
    push    si
    call    zapis_reg
    pop     si
    call    zapis_mem
    zap     reg1,1
    lodsb
    push    ax
    call    check_disp
    pop     ax
    call    razdelenie
    mov     disp,ax
    zap     disp,2
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opc81:
    del_na_modrm
    cmp     moderm,0D0h
    ja      opc15
    zap     Peremenaya_adc,4
    mov     opc,81h
    push    si
    call    zapis_reg
    pop     si
    call    zapis_mem
    zap     reg1,1
    cmp     reg_e,1
    jz      disp32_opc81
    call    zapis_disp16
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
disp32_opc81:
    call    zapis_disp32
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opc83:
    mov     opc,al
    del_na_modrm
    zap     Peremenaya_adc,4
    push    si
    call    zapis_reg
    pop     si
    cmp     moderm,0D0h
    jae     vreg_imm8
    jmp     mem_imm8
vreg_imm8:
    lodsb
    push    ax
    call    check_disp
    pop     ax
    call    razdelenie
    mov     disp,ax
    zap     disp,2
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
mem_imm8:
    call    zapis_mem
    zap     reg1,1
    lodsb
    push    ax
    call    check_disp
    pop     ax
    call    razdelenie
    mov     disp,ax
    zap     disp,2
    zap     h,1
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opcBC:
    mov     opc,al
    zap     Peremenaya_bsf,4
    del_na_modrm
    cmp     mode,3
    jz      regvregvopc13
    push    si
    call    zapis_reg
    pop     si
    call    zapis_mem
    zap     enterr,2
    call    reset_values
    jmp     prefix_oper
opcA4:
    mov     opc,al
    zap     Peremenaya_movs,5
    cmp     mem_e,1
    jz      rmem_opcA4
    push    si
    call    zapis_reg
    call    check_segm
    zap     left_par,1
    xor     si,si
    add     si,14
    shl     si,1
    mov     dx,registers[si]
    mov     cx,2
    call    zapis
    zap     right_par,1
    zap     enterr,2
    pop     si
    call    reset_values
    jmp     prefix_oper
rmem_opcA4:
    push    si
    call    zapis_reg
    call    check_segm
    zap     left_par,1
    xor     si,si
    add     si,22
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     right_par,1
    zap     enterr,2
    pop     si
    call    reset_values
    jmp     prefix_oper
opcA5:
    jmp     opcA4
zapis_mem:
    cmp     mode,2
    jz      mem_16
    cmp     mode,1
    jz      mem_8
    jmp     mem
mem_16:
    push    si
    cmp     mem_e,1
    jz      zapis_dmem_32
    mov     dx,segm
    or      dx,dx
    jz      mem_16_no_segm
    mov     cx,3
    call    zapis
zapis_mem_16:
    zap     left_par,1
    movzx   si,rm
    call    check_len
    shl     si,1
    mov     dx,effective_addresses[si]
    call    zapis
    zap     plus,3
    pop     si
    call    zapis_disp16
    zap     h,1
    zap     right_par,1
    ret
zapis_dmem_32:
    call    check_segm_rmem
    zap     left_par,1
    pop     si
    dec     si
    lodsb
    push    ax
    and     al,00001111b
    cmp     al,04h
    jz      dv_sib_disp32
    cmp     al,0Ch
    jz      dv_sib_disp32
    pop     ax
    push    si
    movzx   si,rm
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     right_par,1
    ret
dv_sib_disp32:
    pop     ax
    del_na_sib
    push    si
    movzx   si,sssib
    cmp     si,1
    jz      @@zapis_sib01_disp32
    cmp     si,2
    jz      @@zapis_sib10_disp32
    cmp     si,3
    jz      @@zapis_sib11_disp32
@@zapis_sib00_disp32:
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     right_par,1
    ret
@@zapis_sib01_disp32:
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss01_sib[si]
    mov     cx,5
    call    zapis
    zap     plus,3
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     right_par,1
    ret
@@zapis_sib10_disp32:
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss10_sib[si]
    mov     cx,5
    call    zapis
    zap     plus,3
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     right_par,1
    ret
@@zapis_sib11_disp32:
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss11_sib[si]
    mov     cx,5
    call    zapis
    zap     plus,3
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     right_par,1
    ret
mem_16_no_segm:
    movzx   si,rm
    cmp     si,2
    jz      mem_16_zapis_ss
    cmp     si,3
    jz      mem_16_zapis_ss
    cmp     si,6
    jz      mem_16_zapis_ss
mem_16_zapis_ds:
    zap     REG_DS,3
    jmp     zapis_mem_16
mem_16_zapis_ss:
    zap     REG_SS,3
    jmp     zapis_mem_16
mem_8:
    cmp     mem_e,1
    jz      rmem_8
    push    si
    mov     dx,segm
    or      dx,dx
    jz      mem_8_no_segm
    mov     cx,3
    call    zapis
zapis_mem_8:
    zap     left_par,1
    movzx   si,rm
    call    check_len
    shl     si,1
    mov     dx,effective_addresses[si]
    call    zapis
    pop     si
    lodsb
    or      al,al
    jz      zz3
    call    razdelenie
    mov     disp,ax
    zap     plus,3
    zap     disp,2
    zap     h,1
    zap     right_par,1
    ret
zz3:
    zap     right_par,1
    ret
mem_8_no_segm:
    movzx   si,rm
    cmp     si,2
    jz      mem_8_zapis_ss
    cmp     si,3
    jz      mem_8_zapis_ss
    cmp     si,6
    jz      mem_8_zapis_ss
mem_8_zapis_ds:
    zap     REG_DS,3
    jmp     zapis_mem_8
mem_8_zapis_ss:
    zap     REG_SS,3
    jmp     zapis_mem_8
rmem_8:
    push    si
    movzx   si,rm
    mov     dx,segm
    or      dx,dx
    jz      rmem_8_no_segm
    mov     cx,3
    call    zapis
zapis_rmem_8:
    zap     left_par,1
    mov     al,moderm
    and     al,00001111b
    cmp     al,04h
    jz      dv_sib_disp8
    cmp     al,0Ch
    jz      dv_sib_disp8
    movzx   si,rm
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    pop     si
    lodsb
    or      al,al
    jz      zz3
    zap     plus,3
    dec     si
    call    zap_disp_check_0
    add     si,2
    zap     h,1
    zap     right_par,1
    ret
rmem_8_no_segm:
    cmp     si,5
    jz      rmem_8_zapis_ss
    zap     REG_DS,3
    jmp     zapis_rmem_8
rmem_8_zapis_ss:
    zap     REG_SS,3
    jmp     zapis_rmem_8
dv_sib_disp8:
    pop     si
    del_na_sib
    push    si
    movzx   si,sssib
    cmp     si,1
    jz      zapis_sib01_disp8
    cmp     si,2
    jz      zapis_sib10_disp8
    cmp     si,3
    jz      zapis_sib11_disp8
zapis_sib00_disp8:
    mov     al,sib
    push    ax
    and     ax,000Fh
    cmp     ax,0Dh
    jz      no_disp_sib00
    cmp     ax,05h
    jz      no_disp_sib00
    pop     ax
    cmp     sib,24h
    jz      zapis_only_esp_disp8
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    pop     si
    call    zap_disp_check_0
    add     si,2
    zap     h,1
    zap     right_par,1
    ret
zapis_only_esp_disp8:
    call    zapis_base
    pop     si
    call    zap_disp_check_0
    add     si,2
    zap     h,1
    zap     right_par,1
    ret
no_disp_sib00:
    pop     ax
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    pop     si
    inc     si
    zap     right_par,1
    ret
zapis_sib01_disp8:
    mov     al,sib
    push    ax
    and     ax,000Fh
    cmp     ax,0Dh
    jz      no_disp_sib01
    cmp     ax,05h
    jz      no_disp_sib01
    pop     ax
    cmp     sib,64h
    jz      zapis_only_esp_disp8
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss01_sib[si]
    mov     cx,5
    call    zapis
    zap     plus,3
    pop     si
    call    zap_disp_check_0
    add     si,2
    zap     h,1
    zap     right_par,1
    ret
no_disp_sib01:
    pop     ax
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss01_sib[si]
    mov     cx,5
    call    zapis
    pop     si
    inc     si
    zap     right_par,1
    ret
zapis_sib10_disp8:
    mov     al,sib
    push    ax
    and     ax,000Fh
    cmp     ax,0Dh
    jz      no_disp_sib10
    cmp     ax,05h
    jz      no_disp_sib10
    pop     ax
    cmp     sib,0A4h
    jz      zapis_only_esp_disp8
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss10_sib[si]
    mov     cx,5
    call    zapis
    zap     plus,3
    pop     si
    call    zap_disp_check_0
    add     si,2
    zap     h,1
    zap     right_par,1
    ret
no_disp_sib10:
    pop     ax
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss10_sib[si]
    mov     cx,5
    call    zapis
    pop     si
    inc     si
    zap     right_par,1
    ret
zapis_sib11_disp8:
    mov     al,sib
    push    ax
    and     ax,000Fh
    cmp     ax,0Dh
    jz      no_disp_sib11
    cmp     ax,05h
    jz      no_disp_sib11
    pop     ax
    cmp     sib,0E4h
    jz      zapis_only_esp_disp8
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss11_sib[si]
    mov     cx,5
    call    zapis
    zap     plus,3
    pop     si
    call    zap_disp_check_0
    add     si,2
    zap     h,1
    zap     right_par,1
    ret
no_disp_sib11:
    pop     ax
    call    zapis_base
    movzx   si,index
    shl     si,1
    mov     dx,ss11_sib[si]
    mov     cx,5
    call    zapis
    pop     si
    inc     si
    zap     right_par,1
    ret
mem:
    cmp     mem_e,1
    jz      rmem
    push    si
    movzx   si,rm
    cmp     si,6
    jz      mem_zapis_disp16
    mov     dx,segm
    or      dx,dx
    jz      mem_no_segm
    mov     cx,3
    call    zapis
zapis_memb:
    zap     left_par,1
    movzx   si,rm
    call    check_len
    shl     si,1
    mov     dx,effective_addresses[si]
    call    zapis
    zap     right_par,1
    pop     si
    ret
rmem:
    push    si
    movzx   si,rm
    mov     dx,segm
    or      dx,dx
    jz      rmem_no_segm
    mov     cx,3
    call    zapis
zapis_rmem:
    cmp     si,4
    jz      sib_rmem
    cmp     si,5
    jz      zapis_ddisp32
    zap     left_par,1
    add     si,16
    shl     si,1
    mov     dx,registers[si]
    mov     cx,3
    call    zapis
    zap     right_par,1
    pop     si
    ret
sib_rmem:
    zap     left_par,1
    pop     si
    del_na_sib
    push    si
    movzx   si,sssib
    cmp     si,1
    jz      zapis_sib01
    cmp     si,2
    jz      zapis_sib10
    cmp     si,3
    jz      zapis_sib11
zapis_sib00:
    movzx   si,base
    cmp     si,5
    jz      zapis_only_index_sib00
    cmp     sib,24h
    jz      zapis_only_esp
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    movzx   si,index
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     right_par,1
    pop     si
    ret
zapis_only_index_sib00:
    movzx   si,index
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     right_par,1
    pop     si
    add     si,4
    ret
zapis_only_esp:
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     right_par,1
    pop     si
    ret
zapis_sib01:
    movzx   si,base
    cmp     si,5
    jz      zapis_only_index_sib01
    cmp     sib,64h
    jz      zapis_only_esp
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    movzx   si,index
    shl     si,1
    mov     dx,ss01_sib[si]
    mov     cx,5
    call    zapis
    zap     right_par,1
    pop     si
    ret
zapis_only_index_sib01:
    movzx   si,index
    shl     si,1
    mov     dx,ss01_sib[si]
    mov     cx,5
    call    zapis
    zap     right_par,1
    pop     si
    add     si,4
    ret
zapis_sib10:
    movzx   si,base
    cmp     si,5
    jz      zapis_only_index_sib10
    cmp     sib,0A4h
    jz      zapis_only_esp
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    movzx   si,index
    shl     si,1
    mov     dx,ss10_sib[si]
    mov     cx,5
    call    zapis
    zap     right_par,1
    pop     si
    ret
zapis_only_index_sib10:
    movzx   si,index
    shl     si,1
    mov     dx,ss10_sib[si]
    mov     cx,5
    call    zapis
    zap     right_par,1
    pop     si
    add     si,4
    ret
zapis_sib11:
    movzx   si,base
    cmp     si,5
    jz      zapis_only_index_sib11
    cmp     sib,0E4h
    jz      zapis_only_esp
    shl     si,1
    mov     dx,ss00_sib[si]
    mov     cx,3
    call    zapis
    zap     plus,3
    movzx   si,index
    shl     si,1
    mov     dx,ss11_sib[si]
    mov     cx,5
    call    zapis
    zap     right_par,1
    pop     si
    ret
zapis_only_index_sib11:
    movzx   si,index
    shl     si,1
    mov     dx,ss11_sib[si]
    mov     cx,5
    call    zapis
    zap     right_par,1
    pop     si
    add     si,4
    ret
zapis_ddisp32:
    zap     left_par,1
    pop     si
    call    zapis_disp32
    zap     h,1
    zap     right_par,1
    ret
rmem_no_segm:
    zap     REG_DS,3
    jmp     zapis_rmem
mem_zapis_disp16:
    pop     si
    call    check_segm
    zap     left_par,1
    call    zapis_disp16
    zap     h,1
    zap     right_par,1
    ret
mem_no_segm:
    cmp     si,2
    jz      mem_zapis_ss
    cmp     si,3
    jz      mem_zapis_ss
mem_zapis_ds:
    zap     REG_DS,3
    jmp     zapis_memb
mem_zapis_ss:
    zap     REG_SS,3
    jmp     zapis_memb
Exit:
    mov     ax,4C00h
    int     21h
    end     Start
