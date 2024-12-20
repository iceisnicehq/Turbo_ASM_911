LOCALS @@

.MODEL small
.386
.STACK 100h
.DATA

    INSTRUC STRUC
        mnem                DW ?
        maska               DB ?
        op1                 DB ?
        op2                 DB ?
    ENDS

    PREFIXES RECORD          prefix:1, sib:1, modrm:1, ext:1, size66:1, addr67:1, seg_over:1, xxx:1 ; PSME SASxb
    ;Mask bit                -128-     -64-   -32-     -16-   -8-       -4-       -2-
IRP       MASKING,          <prefix,   sib,   modrm,   ext,   size66,   addr67,   seg_over>
    MASK_&MASKING           = MASK &MASKING
ENDM
    MASK_REGULAR            =  0FDh 
    MASK_AAD                =  0FEh
    MASK_UNKNOWN            =  0FFh
    
    INS_OPERANDS ENUM       NONE, IMM8, REL8, REL16, REG16, REGM16

    REG_SHIFT               EQU 16
    EA_REG_SHIFT            EQU REG_SHIFT*2
    BYTES_IN_BUFFER         EQU 512
    MACHINE_CODE_CHARS      EQU 50
    INSTRUCTION_CHARS       EQU 60
    RES_FILE_NAME           EQU "RESULT.ASM"
    COM_FILE_NAME           EQU "COM.COM"

    res_file                DB RES_FILE_NAME, 0
    com_file                DB COM_FILE_NAME, 0
    error                   DB 'Error occurred. Make sure COM file is "', COM_FILE_NAME, '". Res_file will be "', RES_FILE_NAME, '"$'
    result                  DB 'Result file is: ', RES_FILE_NAME, '$'

    instruc_buffer          DB INSTRUCTION_CHARS DUP (' '), "; "
    machine_code_buffer     DB MACHINE_CODE_CHARS DUP (' ')

    instruc_end_ptr         DW instruc_buffer   
    mach_code_end_ptr       DW machine_code_buffer

IRP    CHAR, <AX, CX, DX, BX, SP, BP, SI, DI>
    _e&CHAR                 DB "E"
    _&CHAR                  DB "&CHAR", 0
ENDM

VAL = 2 ;       2   4   6   8   10  12
IRP      CHAR, <ES, CS, SS, DS, FS, GS>
    VAL_&CHAR               =  VAL
    _&CHAR                  DB "&CHAR", ":", 0
    VAL                     =  VAL + 2
    INS_&CHAR INSTRUC       <VAL_&CHAR, MASK_SEG_OVER, NONE, NONE>
ENDM

    BX_SI                   DB "BX+SI", 0
    BX_DI                   DB "BX+DI", 0
    BP_SI                   DB "BP+SI", 0
    BP_DI                   DB "BP+DI", 0
    dword_ptr               DB "dword ptr ", 0

    ea_mnem                 DW BX_SI, BX_DI, BP_SI, BP_DI, _SI, _DI, _BP, _BX
    reg_mnem                DW _AX, _CX, _DX, _BX, _SP, _BP, _SI, _DI
                            DW _EAX, _ECX, _EDX, _EBX, _ESP, _EBP, _ESI, _EDI
    seg_mnem                DW _ES, _CS, _SS, _DS, _FS, _GS
    ovr_ptr_mnem            DW dword_ptr+1, dword_ptr

IRP   CHAR, <JO, JNO, JB, JNB, JZ, JNZ, JBE, JNBE, JS, JNS, JP, JNP, JL, JNL, JLE, JNLE>
    _&CHAR                  DB "&CHAR"
    LEN                     = $ - _&CHAR
                            DB 8 - LEN dup (' '), "$+", 0
    J8_&CHAR  INSTRUC       <_&CHAR, MASK_REGULAR, REL8,    NONE> ; 70h-7fh
    J16_&CHAR INSTRUC       <_&CHAR, MASK_REGULAR, REL16,   NONE> ; 80h-8fh
ENDM

    _unk                    DB "???", 0
    _aad                    DB "AAD", 0
    _lock                   DB "LOCK ", 0
    _btc                    DB "BTC     ", 0
    _jcxz                   DB "JCXZ    $+", 0
    _jecxz                  DB "JECXZ   $+", 0

    unk        INSTRUC      <_unk,  MASK_UNKNOWN, NONE,     NONE> ; 
    pref_0f    INSTRUC      <NONE,  MASK_EXT,     NONE,     NONE> ; 0Fh
    size_ins   INSTRUC      <NONE,  MASK_SIZE66,  NONE,     NONE> ; 66h
    addr_ins   INSTRUC      <NONE,  MASK_ADDR67,  NONE,     NONE> ; 67h
    btc_ba     INSTRUC      <_btc,  MASK_REGULAR, REGM16,   IMM8> ; BAh
    btc_bb     INSTRUC      <_btc,  MASK_REGULAR, REGM16,  REG16> ; BBh 
    aad_ins    INSTRUC      <_aad,  MASK_AAD,     NONE,     NONE> ; D5h
    jcxz_ins   INSTRUC      <_jcxz, MASK_REGULAR, REL8,     NONE> ; E3h  (JECXZ)
    lock_ins   INSTRUC      <_lock, MASK_PREFIX,  NONE,     NONE> ; F0h

LABEL instruction_set_array 
; INDEXES      00h             0Fh                     26h                    2Eh
            DW 0Fh DUP (unk),  pref_0f, 16h DUP (unk), INS_ES, 07h DUP (unk), INS_CS
; INDEXES                      36h                     3Eh                    64h
            DW 07h DUP (unk),  INS_SS,  07h DUP (unk), INS_DS, 25h DUP (unk), INS_FS
; INDEXES      65h             66h       67h                      70h    71h     72h 
            DW INS_GS,         size_ins, addr_ins, 08h DUP (unk), J8_JO, J8_JNO, J8_JB
; INDEXES      73h     74h     75h     76h     77h      78h    79h     7Ah    7Bh     7Ch
            DW J8_JNB, J8_JZ,  J8_JNZ, J8_JBE, J8_JNBE, J8_JS, J8_JNS, J8_JP, J8_JNP, J8_JL
; INDEXES      7Dh     7Eh     7F       80h     81h      82h     83h      84h     85h
            DW J8_JNL, J8_JLE, J8_JNLE, J16_JO, J16_JNO, J16_JB, J16_JNB, J16_JZ, J16_JNZ
; INDEXES      86h      87h       88h     89h      8Ah     8Bh      8Ch     8Dh      8Eh     
            DW J16_JBE, J16_JNBE, J16_JS, J16_JNS, J16_JP, J16_JNP, J16_JL, J16_JNL, J16_JLE 
; INDEXES      8Fh                      BAh     BBh                    D5h
            DW J16_JNLE, 2Ah DUP (unk), btc_ba, btc_bb, 19h DUP (unk), aad_ins, 0Dh DUP (unk)
; INDEXES      E3h                      F0h
            DW jcxz_ins, 0Ch DUP (unk), lock_ins, 0Fh DUP (unk)

    LABEL sib_byte
        scale              DB ?
        index              DB ?
        base               DB ?
    LABEL modrm_byte
        mode               DB ?
        reg                DB ?
        rm                 DB ?
    read_bytes             DW ?                            
    scanned_byte_count     DW ?
    com_buffer             DB BYTES_IN_BUFFER DUP (?) 
    com_file_handle        DW ?
    res_file_handle        DW ?
    imm                    DW ?
    disp                   DW ?
    disp32                 DW ?
    curr_instruc  INSTRUC  <>
    seg_ovr                DB ?
    info_bytes    PREFIXES <>

.CODE

PUT_CHAR        MACRO CHAR
    mov         bx, instruc_end_ptr
    mov         BYTE PTR [bx], CHAR
    inc         instruc_end_ptr
ENDM

CMPJNE    MACRO OP1, OP2, JMP_LABEL
    cmp         OP1, OP2
    jne         SHORT JMP_LABEL
ENDM

CMPJE     MACRO OP1, OP2, JMP_LABEL
    cmp         OP1, OP2
    je          SHORT JMP_LABEL
ENDM

IS_SET    MACRO OP1, OP2, JMP_LABEL
    test        OP1, OP2
    jnz         SHORT JMP_LABEL
ENDM

NOT_SET   MACRO OP1, OP2, JMP_LABEL
    test        OP1, OP2
    JZ          SHORT JMP_LABEL
ENDM

Start:
    mov         ax, @DATA
    mov         ds, ax
    mov         es, ax
    mov         ax, 3D00h          
    mov         dx, OFFSET com_file
    int         21h
    jc          SHORT error_exit
    mov         com_file_handle, ax
    mov         ah, 3Ch
    xor         cx, cx
    mov         dx, OFFSET res_file
    int         21h
    jc          SHORT error_exit
    mov         res_file_handle, ax
    jmp         SHORT decode_ne_instruc
error_exit:
    mov         dx, OFFSET error
    mov         ah, 09h
    int         21h
    jmp         exit
decode_with_prefix:
    mov         si, curr_instruc.mnem
    call        ins_str
decode_ne_instruc:    
    call        read_buffer_byte
    or          dh, dh
    je          SHORT load_instruction
    mov         dx, OFFSET result
    mov         ah, 09h
    int         21h
    jmp         exit
load_instruction:
    mov         cx, SIZE instruc
    shl         dx, 1
    mov         si, dx
    mov         si, instruction_set_array[si]
    mov         di, OFFSET curr_instruc
    rep         movsb
    CMPJNE      curr_instruc.maska, MASK_SEG_OVER, @@not_seg_ovr
    mov         ax, curr_instruc.mnem
    mov         seg_ovr, al
    or          [info_bytes], MASK_SEG_OVER
    jmp         decode_ne_instruc
@@not_seg_ovr:
    cmp         curr_instruc.maska, MASK_REGULAR 
    jae         @@regular_instruction
    mov         al, curr_instruc.maska
    or          [info_bytes], al
    or          al, al
    js          decode_with_prefix
    jmp         decode_ne_instruc
@@regular_instruction:
    CMPJNE      curr_instruc.mnem, <OFFSET _JCXZ>, @@not_jecxz
    NOT_SET     [info_bytes], MASK_ADDR67, @@not_jecxz
    mov         curr_instruc.mnem, OFFSET _JECXZ
@@not_jecxz:
    mov         si, curr_instruc.mnem
    call        ins_str
    cmp         curr_instruc.maska, MASK_AAD
    jb          SHORT read_and_put
    ja          SHORT print_to_file 
    call        read_buffer_byte
    jmp         SHORT print_to_file
read_and_put:
    mov         al, curr_instruc.OP1
    call        write_buffer
    mov         al, curr_instruc.OP2
    or          al, al
    je          SHORT print_to_file
    PUT_CHAR    ","
    call        write_buffer
print_to_file:
    mov         bx, mach_code_end_ptr
    mov         WORD PTR [bx-1], 0A0Dh
    inc         bx
    mov         BYTE PTR [bx], "$"
    mov         cx, bx
    mov         dx, OFFSET instruc_buffer
    sub         cx, dx
    mov         ah, 40h
    mov         bx, res_file_handle
    int         21h
reset_buffer:
    mov         di, OFFSET instruc_buffer
    mov         instruc_end_ptr, di
    mov         cx, INSTRUCTION_CHARS
    mov         al, " "
    rep         stosb
    mov         di, OFFSET machine_code_buffer
    mov         mach_code_end_ptr, di
    mov         cx, MACHINE_CODE_CHARS
    mov         al, " "
    rep         stosb
    mov         WORD PTR seg_ovr, 0    
    jmp         decode_ne_instruc
exit:
    mov         ah, 3Eh
    mov         bx, com_file_handle
    int         21h  
    mov         bx, res_file_handle
    int         21h 
    mov         ax, 4C00h
    int         21h

;--------PROCS--------;
put_byte_al PROC
    xor         ah, ah
    xor         dl, dl
    stc
put_word_ax: 
    mov         bx, instruc_end_ptr
    call        put_hex_to_str_bx
    mov         instruc_end_ptr, bx
    ret
put_byte_al ENDP

ins_str PROC ; si = pointer to ASCII$ string
    mov         di, instruc_end_ptr
@@moving:
    or         BYTE PTR [si], 0 
    je         SHORT @@return
    movsb
    jmp         @@moving
@@return:
    mov         instruc_end_ptr, di
    ret
ins_str ENDP     

put_hex_to_str_bx PROC ; IN (ax - hex_num; bx - str_ptr; dl=1 if word), OUT bx - end_str_ptr
    pushf   
    mov         cx, 10h
    mov         si, 2
    or          dl, dl
    JZ          SHORT @@not_word_size
    shl         si, 1
@@not_word_size:
    push        si
@@division:
    dec         si
    xor         dx, dx
    div         cx
    cmp         dl, 9
    jbe         SHORT @@hex_digit
@@hex_letter:
    add         dl, 37h
    jmp         SHORT @@put_char_to_str
@@hex_digit:
    add         dl, 30h
@@put_char_to_str:
    mov         [bx + si], dl
    or          ax, ax
    jne         @@division
    or          si, si
    je          SHORT @@if_leading_zero
@@adding_zeros:
    dec         si
    mov         BYTE PTR [bx + si], "0"
    or          si, si
    jne         @@adding_zeros
@@if_leading_zero:
    pop         cx
    popf
    jnc         SHORT @@return
    mov         si, cx
    cmp         BYTE PTR [bx], "A"
    jb          SHORT @@return
@@add_zero_shift:
    dec         si
    mov         al, [bx + si]
    mov         [bx + si + 1], al
    or          si, si
    jne         @@add_zero_shift
    mov         BYTE PTR [bx], "0"
    inc         cx
@@return:
    add         bx, cx
    ret
put_hex_to_str_bx ENDP

read_buffer_byte PROC
    push        bx ax
    mov         ax, read_bytes
    cmp         ax, scanned_byte_count
    ja          SHORT @@check_file_end
    mov         ah, 3Fh
    mov         bx, com_file_handle 
    mov         cx, BYTES_IN_BUFFER
    mov         dx, OFFSET com_buffer
    int         21h
    mov         read_bytes, ax 
    mov         scanned_byte_count, 0
@@check_file_end:
    or          ax, ax
    jne         SHORT @@read_byte
    mov         dh, 1
    jmp         SHORT @@return
@@read_byte:
    xor         dh, dh
    mov         bx, OFFSET com_buffer
    add         bx, scanned_byte_count
    mov         dl, [bx]
    inc         scanned_byte_count
    push        dx
    movzx       ax, dl
    mov         bx, mach_code_end_ptr
    xor         dl, dl
    clc
    call        put_hex_to_str_bx
    inc         bx
    mov         mach_code_end_ptr, bx
    pop         dx
@@return:
    pop         ax bx
    ret
read_buffer_byte ENDP
 
decode_modrm_sib PROC 
    push        ax dx 
    call        read_buffer_byte
    mov         bx, OFFSET modrm_byte
    or          [info_bytes], MASK_MODRM
    NOT_SET     [info_bytes], MASK_SIB, @@not_sib
    mov         bx, OFFSET sib_byte
@@not_sib:
    mov         al, dl
    and         al, 11000000b
    SHR         al, 5
    mov         [bx], al
    mov         al, dl
    and         al, 00111000b
    SHR         al, 2
    mov         [bx + 1], al
    mov         al, dl
    and         al, 00000111b
    shl         al, 1
    mov         [bx + 2], al
    pop         dx ax
    ret
decode_modrm_sib ENDP

write_buffer PROC 
    cmp         al, REG16
    jae         SHORT @@READ_MODRM
    call        read_buffer_byte
    movsx       bx, dl
    CMPJNE      al, REL16, @@SAVE_IMM
    call        read_buffer_byte
    mov         bh, dl
@@SAVE_IMM:
    mov         imm, bx
    jmp         insert
@@READ_MODRM:
    IS_SET     [info_bytes], MASK_MODRM, @@modrm_decoded
    call        decode_modrm_sib ; MODRM
@@modrm_decoded:
    cmp         al, REG16
    je          insert
    CMPJE       mode, 110b, insert
    NOT_SET     [info_bytes], MASK_ADDR67, @@no_addr_ovr
    CMPJNE      rm, 1000b, @@no_addr_ovr
    or          [info_bytes], MASK_SIB
    call        decode_modrm_sib   ; SIB
    CMPJNE      scale, 110b, @@no_addr_ovr
    mov         scale, 1000b
@@no_addr_ovr:
    cmp         mode, 010b
    jae         SHORT @@read_disp
    NOT_SET     [info_bytes], MASK_ADDR67, @@disp16
    CMPJE       rm, 1010b, @@read_disp
    NOT_SET     [info_bytes], MASK_SIB, insert
    CMPJE       base, 1010b, @@read_disp
    jmp         SHORT insert
@@disp16:
    CMPJE       rm, 1100b, @@read_disp
    jmp         SHORT insert
@@read_disp:
    call        read_buffer_byte
    mov         bl, dl
    CMPJE       mode, 010b, @@store_disp
    call        read_buffer_byte
    mov         bh, dl
    NOT_SET     [info_bytes], MASK_ADDR67, @@store_disp
    push        bx
    call        read_buffer_byte
    mov         bl, dl
    call        read_buffer_byte
    mov         bh, dl
    mov         disp32, bx
    pop         bx
@@store_disp:
    mov         disp, bx
insert:
    xor         bx, bx
    cmp         al, REL16
    jbe         print_imm8
    cmp         al, REG16 
    je          print_reg
    CMPJNE      mode, 110b, eff_addressing
    mov         bl, rm
    NOT_SET     [info_bytes], MASK_SIZE66, print_modrm_reg
    add         bl, REG_SHIFT
print_modrm_reg:
    mov         si, reg_mnem[bx]
    call        ins_str
    jmp         @@return
eff_addressing:
    CMPJE       curr_instruc.OP2, REG16, @@check_seg
    NOT_SET     [info_bytes], MASK_SIZE66, ea_start
    mov         bx, 2
ea_start:
    mov         si, ovr_ptr_mnem[bx]
    call        ins_str
@@check_seg:
    mov         bl, seg_ovr
    or          bl, bl
    jne         SHORT @@print_seg
    mov         bl, VAL_DS
    mov         bh, rm         
    NOT_SET     [info_bytes], MASK_ADDR67, @@modrm_16
    CMPJE       mode, 000b, @@check_sib
    CMPJE       bh, 1010b, @@print_ss
@@check_sib:
    CMPJNE      bh, 1000b, @@print_seg
    CMPJE       index, 1010b, @@print_ss
    CMPJE       base, 1000b, @@print_ss
    CMPJNE      base, 1010b, @@print_seg
    CMPJE       mode, 000b, @@print_seg      
    jmp         SHORT @@print_ss 
@@modrm_16:
    CMPJE       bh, 0100b, @@print_ss
    CMPJE       bh, 0110b, @@print_ss
    CMPJE       mode, 000b, @@print_seg
    CMPJNE      bh, 1100b, @@print_seg
@@print_ss:
    mov         bl, VAL_SS
@@print_seg:
    xor         bh, bh
    mov         si, seg_mnem[bx-2]
    call        ins_str
    PUT_CHAR    "["
    CMPJNE      mode, 000b, @@ea_with_disp
    IS_SET     [info_bytes], MASK_ADDR67, @@modrm32
    CMPJNE      rm, 1100b, @@ea_with_disp
    jmp         print_disp
@@modrm32:
    cmp         rm, 1010b
    je          print_disp       
@@ea_with_disp:
    NOT_SET     [info_bytes], MASK_SIB, @@no_sib
    CMPJNE      base, 1010b, @@no_ebp_base
    CMPJE       mode, 000b, @@no_base
@@no_ebp_base:
    movzx       bx, base
    add         bl, REG_SHIFT
    mov         si, reg_mnem[bx]
    call        ins_str
    CMPJE       index, 1000b, @@SIB_INDEX_NONE
    PUT_CHAR    "+"
@@no_base:
    movzx       bx, index
    add         bl, REG_SHIFT
    mov         si, reg_mnem[bx]
    call        ins_str
    CMPJE       scale, 000b, @@check_mode
    PUT_CHAR    "*"
    mov         dl, "0"
    add         dl, scale
    PUT_CHAR    dl
@@SIB_INDEX_NONE:
    CMPJNE      base, 1010b, @@check_mode
    or          DWORD PTR [disp], 0
    jnz         SHORT @@sib_disp
    jmp         @@ea_end
@@no_sib:
    movzx       bx, rm
    NOT_SET     [info_bytes], MASK_ADDR67, ea16
    add         bl, EA_REG_SHIFT
ea16:
    mov         si, ea_mnem[bx]
    call        ins_str
@@check_mode:
    CMPJE       mode, 000b, @@ea_end
@@sib_disp:
    PUT_CHAR    "+"
print_disp:
    mov         ax, disp
    CMPJE       mode, 010b, @@print_byte_disp
    test        [info_bytes], MASK_ADDR67
    stc
    je          SHORT @@disp_16
    push        ax
    mov         ax, disp32
    stc 
    mov         dl, 1
    call        put_word_ax
    pop         ax
    clc
@@disp_16:
    mov         dl, 1
    call         put_word_ax
    PUT_CHAR    "H"
    jmp         SHORT @@ea_end
@@print_byte_disp:
    or          al, al
    jnz         SHORT @@non_zero_byte_disp
    dec         instruc_end_ptr
    jmp         SHORT @@ea_end
@@non_zero_byte_disp:
    call        put_byte_al
    PUT_CHAR    "H"
@@ea_end:
    PUT_CHAR    "]"
    jmp         SHORT @@return
print_imm8:
    cmp         al, REL8
    mov         ax, imm
    jae         SHORT print_rel
    call        put_byte_al
    PUT_CHAR    "H"
    jmp         SHORT @@return
print_rel:
    mov         bx, 2
    jna         SHORT two_byte_jcc
    shl         bx, 1
two_byte_jcc:
    CMPJNE      curr_instruc.mnem, <OFFSET _JECXZ>, @@not_jecxz
    inc         bx
@@not_jecxz:
    add         ax, bx
    jnz         SHORT @@non_zero_rel
    dec         instruc_end_ptr
    PUT_CHAR    " "
    jmp         SHORT @@return
@@non_zero_rel:
    jns         SHORT @@pos_rel
    dec         instruc_end_ptr
    PUT_CHAR    "-"
    neg         ax
@@pos_rel:
    stc
    mov         dl, 1
    call        put_word_ax
    PUT_CHAR    "H"
    jmp         SHORT @@return
print_reg:
    mov         bl, reg
    NOT_SET     [info_bytes], MASK_SIZE66, print_reg_name
    add         bl, REG_SHIFT    
print_reg_name:
    mov         si, reg_mnem[bx]
    call        ins_str
@@return:
    ret
write_buffer ENDP
    END Start