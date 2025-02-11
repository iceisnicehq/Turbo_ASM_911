.model small
.386
.stack 100h
.data
; OPCODES are: 0F, 26, 2E, 36, 3E, 64, 65, 66, 67, 69, 6B, F6, F7, (0F) AF, E9, EA, EB, FF(r4), FF(r5)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
com_file    db    "com.com", 0
com_error    db    "com file error", 13, 10, "$"
dest_file    db    "result.asm", 0
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
dword_ptr    db    "dword ptr ", 0
word_ptr    equ   dword_ptr+1
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
ovr_ptrs     dw    word_ptr, dword_ptr
segs    ENUM    zero, es_num, cs_num, ss_num, ds_num, fs_num, gs_num
segments    dw    es_seg, cs_seg, ss_seg, ds_seg, fs_seg, gs_seg
regs8    dw    ALstr, CLstr, DLstr, BLstr, AHstr, CHstr, DHstr, BHstr
regs16    dw    EAXstr+1, ECXstr+1, EDXstr+1, EBXstr+1, ESPstr+1, EBPstr+1, ESIstr+1, EDIstr+1 ; тут адрес+1, то есть EAX + 1 = AX, то на один байт дальше просто
regs32    dw    EAXstr, ECXstr, EDXstr, EBXstr, ESPstr, EBPstr, ESIstr, EDIstr
mod00_16    dw    BXSIrm, BXDIrm, BPSIrm, BPDIrm, ESIstr+1, EDIstr+1, 110h, EBXstr+1
mod00_16_def_seg    dw    ds_seg, ds_seg, ss_seg, ss_seg, ds_seg, ds_seg, ds_seg, ds_seg
mod01_16    dw    BXSIrm, BXDIrm, BPSIrm, BPDIrm, ESIstr+1, EDIstr+1, EBPstr+1,  EBXstr+1

mod00_32    dw    EAXstr, ECXstr, EDXstr, EBXstr, 100h, 101h, ESIstr, EDIstr
mod00_32_def_seg    dw    ds_seg, ds_seg, ds_seg, ds_seg, ds_seg, ds_seg, ds_seg, ds_seg
mod01_32    dw    EAXstr, ECXstr, EDXstr, EBXstr, 100h, EBPstr, ESIstr, EDIstr
; OPCODES are: 0F, 26, 2E, 36, 3E, 64, 65, 66, 67, 69, 6B, 99, (0F) AF, E9, EA, EB, F0, F6, F7, FF(r4), FF(r5)
; 0=NOTHING, 1=ES, 2=CS, 3=DS, 4=SS, 5=FS, 6=GS, 7=size66, 8=addr67, 9=lock, 10=cdq, 11=jmp, 12=imul
indexes    ENUM    iend, iEs, iCs, iSs, iDs, iFs, iGs, isize66, iaddr67, ilock, icdq, ijump, iimul
jmp_table    dw   exit, es_byte, cs_byte, ss_byte, ds_byte, fs_byte, gs_byte, size66_byte, addr67_byte, lock_byte, cdq_byte, jump_byte, imul_byte
byte_table  db    15 dup(iend), iimul, 22 dup(iend), iEs, 7 dup (iend), iCs, 7 dup (iend), iSs, 7 dup (iend), iDs
            db    37 dup(iend), iFs, iGs, isize66, iaddr67, iend, iimul, iend, iimul, 45 dup(iend), icdq, 79 dup(iend)
            db    ijmp, ijmp, ijmp, 4 dup(iend), ilock, 5 dup(iend), iimul, iimul, 7 dup(iend), ijmp, ijmp
mode    db    0
rm    db    0
reg     db    0
sib_s     db     0
sib_i     db     0
sib_b     db     0
file_descr    dw    0
ptr_ovr    dw    0
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
    lea     bx, byte_table
    mov     [opcode], al
    xlat    
    mov     bl, al
    xor     bh, bh
    shl     bx, 1
    jmp     jmp_table[bx]
es_byte:
    mov     [seg_ovr], es_num
    jmp     scan_bytes
cs_byte:
    mov     [seg_ovr], cs_num
    jmp     scan_bytes
ss_byte:
    mov     [seg_ovr], ss_num
    jmp     scan_bytes
ds_byte:
    mov     [seg_ovr], ds_num
    jmp     scan_bytes
fs_byte:
    mov     [seg_ovr], fs_num
    jmp     scan_bytes
gs_byte:
    mov     [seg_ovr], gs_num
    jmp     scan_bytes
size66_byte:
    mov     [is_size_66], 2
    jmp     scan_bytes
is_addr_67:
    mov     [is_addr_67], 2
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
    call    write_to_file
    jmp     scan_bytes
jump_byte:

    ; TO-DO
imul_byte:
    cmp     [opcode], 0F6h
    jb      no_ptr
    mov     ax, offset byte_ptr
    je      opcode_f6
    mov     ax, [ovr_ptrs+is_size_66]
    mov     [ptr_ovr], ax 
no_ptr:
    ; TO-DO

byteXadd:
    mov     isXadd, 1
    lodsb
    cmp     al, 0C0h
    jne     no8bit
    or      operSizeOvr, 2
no8bit:
    call    decodeCommand
    movzx   bx, al
    and     bl, 111000b
    mov     cx, 2
    shr     bx, cl
    mov     ax, wordRegs[bx]
    or      operSizeOvr, 0
    je      xaddEnd
    mov     ax, byteRegs[bx]
    cmp     operSizeOvr, 1
    jne     xaddEnd
    mov     ax, dwrdRegs[bx]
    inc     cx
xaddEnd:
    call    writeStrToBuffer
    jmp     prepWriteFile
byteShlC0:
    or      operSizeOvr, 2
byteShlC1:
    call    decodeCommand
    call    writeImmDispToBuffer
    jmp     prepWriteFile   
byteShlD0:
    or      operSizeOvr, 2
byteShlD1:
    call    decodeCommand
    mov     ax, "H1"
    stosw
    jmp     prepWriteFile    
byteShlD2:
    or      operSizeOvr, 2
byteShlD3:
    call    decodeCommand
    mov     ax, "LC"
    stosw
    jmp     prepWriteFile
byteOper:
    mov     operSizeOvr, 1
    jmp     scan_bytes
byteAddr:
    mov     addrSizeOvr, 1
    jmp     scan_bytes
byteES:
    mov     al, "E"
    jmp     saveSeg
byteCS:
    mov     al, "C"
    jmp     saveSeg
byteSS:
    mov     al, "S"
    jmp     saveSeg
byteDS:
    mov     al, "D"
    jmp     saveSeg
byteFS:
    mov     al, "F"
    jmp     saveSeg
byteGS:
    mov     al, "G"
saveSeg:
    mov     segOvr, al
    jmp     scan_bytes
byteLock:
    mov     ax, offset lock_str
    mov     cx, 5
    call    writeStrToBuffer
    jmp     scan_bytes

exit:
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

writeStrToBuffer proc
    push    si
    mov     si, ax
    rep     movsb  
    pop     si
    ret
endp

decodeCommand proc
    mov     cx, 8
    mov     ax, offset xaddMnem
    or      isXadd, 0
    jnz     xaddTrue 
    mov     ax, offset shlMnem
xaddTrue:
    call    writeStrToBuffer
continueDisasm:
    lodsb
    push    ax
    movzx   bp, al
    mov     bx, bp
    and     bp, 11000000b
    shr     bp, 6
    or      word ptr modrmMod, bp
    and     bl, 111b
    cmp     bp, 11b
    je      modrmMod11
    or      addrSizeOvr, 0
    je      pushBx
    cmp     bl, 100b
    jne     pushBx
    mov     isSibByte, 1
pushBx:    
    push    bx
    or      isXadd, 0
    jnz     noTypeOvr
    movzx   bx, operSizeOvr
    shl     bx, 1
    mov     cx, 9
    mov     ax, offset typeOvr[bx]
    cmp     ax, offset dwrdptr
    jne     notDwrdPtr
    inc     cx
notDwrdPtr:
    call    writeStrToBuffer
noTypeOvr:
    or      segOvr, 0
    jz      defaultSegment
    mov     al, segOvr
    stosb
defaultSegment:
    pop     bx
    or      addrSizeOvr, 0
    jz      noAddrOvr
    or      bp, 0
    jne     disp8Check
    cmp     bx, 101b
    jne     putOperToBuffer
    mov     immDispLen, 8
    mov     isDisp, 1
    jmp     putOperToBuffer
disp8Check:
    cmp     bp, 1b
    jne     disp32
    cmp     bx, 101b
    jne     continueCheck
    mov     checkZeroDisp, 1
continueCheck:
    mov     immDispLen, 2
    mov     isDisp, 1
    jmp     putOperToBuffer
disp32:
    mov     immDispLen, 8
    mov     isDisp, 1
    jmp     putOperToBuffer
noAddrOvr:    
    cmp     bp, 1b
    jne     disp16Check
    mov     isDisp, 1
    cmp     bx, 110b
    jne     putOperToBuffer
    mov     checkZeroDisp, 1
    jmp     putOperToBuffer
disp16Check:
    cmp     bp, 10b
    je      disp16
    cmp     bx, 110b
    jne     putOperToBuffer
disp16:
    mov     immDispLen, 4
    mov     isDisp, 1
putOperToBuffer:
    cmp     bp, 11b
    jne     effectiveAddressing
modrmMod11:
    shl     bx, 1
    mov     cx, 2
    mov     ax, byteRegs[bx]
    cmp     operSizeOvr, 1
    ja      writeRegOperand
    mov     ax, wordRegs[bx]
    jne     writeRegOperand
    mov     ax, dwrdRegs[bx]
    inc     cx
writeRegOperand:
    call    writeStrToBuffer
    mov     al, ","
    stosb
    jmp     continue
effectiveAddressing:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    mov     bx, bp
    or      addrSizeOvr, 0
    je      wordSize
    mov     ax, modrm32[bx]
    shr     bx, 1
    movzx   cx, modrm32LenStr[bx]
    or      segOvr, 0
    jz      notSegOvr
    inc     ax
    dec     cx
    mov     segOvr, 0
notSegOvr:
    call    writeStrToBuffer
    pop     bp
    or      isSibByte, 0
    jz      continue
    lodsb
    push    bp 
    movzx   bp, al
    mov     bx, bp
    and     bp, 11000000b
    shr     bp, 6
    and     bl, 111000b       
    shr     bl, 3                       
    push    bx
    mov     bl, al
    and     bl, 111b
    cmp     bl, 101b
    jne     sibBaseNot101Ebp
    cmp     modrmMod, 1
    jne     notModrmMod1
    mov     checkZeroDisp, 1
notModrmMod1:
    or      modrmMod, 0
    jne     sibBaseNot101Ebp
    pop     bx
    shl     bx, 1
    mov     ax, dwrdRegs[bx]
    mov     cx, 3
    call    writeStrToBuffer
    shl     bp, 1
    jz      sibZeroSS
    cmp     bp, 110b
    jne     sibIndexNot11
    mov     bp, 1000b
sibIndexNot11:
    mov     ax, "*0"
    or      ax, bp
    xchg    al, ah
    stosw
sibZeroSS:
    lodsd
    or      eax, eax
    jnz     sibWithDisp
    jmp     popBp
sibWithDisp:
    sub     si, 4
    mov     al, "+"
    stosb  
    push    word ptr immDispLen
    mov     immDispLen, 8
    call    writeImmDispToBuffer
    pop     word ptr immDispLen
    jmp     popBp
sibBaseNot101Ebp:
    shl     bx, 1
    mov     ax, dwrdRegs[bx]
    mov     cx, 3
    call    writeStrToBuffer
    pop     bx
    cmp     bx, 100b
    je      popBp
    mov     al, "+"
    stosb    
    shl     bx, 1
    mov     ax, dwrdRegs[bx]
    mov     cx, 3
    call    writeStrToBuffer
    shl     bp, 1
    jz      sibZeroSSS
    cmp     bp, 110b
    jne     sibIndexNot11S
    mov     bp, 1000b
sibIndexNot11S:
    mov     ax, "*0"
    or      ax, bp
    xchg    al, ah
    stosw
sibZeroSSS:
popBp:
    pop     bp
    jmp     continue
wordSize:
    mov     ax, modrm16[bx]
    shr     bx, 1
    movzx   cx, modrm16LenStr[bx]
    or      segOvr, 0
    jz      defSeg
    inc     ax
    dec     cx
    mov     segOvr, 0
defSeg:
    call    writeStrToBuffer
    pop     bp
continue:   
    cmp     bp, 11b
    je      return
    or      isDisp, 0
    jz      writeClosingBracket
    mov     al, "+"
    stosb  
callWriting:
    call    writeImmDispToBuffer
writeClosingBracket:
    mov     ax, ",]"
    stosw
return:
    pop     ax
    ret
endp

writeImmDispToBuffer proc
    xor     dx, dx
    mov     bx, 10h
    movzx   cx, immDispLen
    inc     cx
    or      checkZeroDisp, 0
    jz      normalDisp
    lodsb
    mov     checkZeroDisp, 0
    or      al, al
    jnz     pushSi
    dec     di
    jmp     skip    
normalDisp:    
    cmp     immDispLen, 2
    je      byteDisp
    cmp     immDispLen, 4
    je      wordDisp
    lodsd
    jmp     pushSi
wordDisp:
    lodsw
    jmp     pushSi
byteDisp:
    lodsb
pushSi:
    push    si
    mov     si, offset immDispStr
    add     si, 8
division:
    idiv    bx
    cmp     dl, 9
    jbe     numberAscii
    add     dl, 37h
    jmp     save
numberAscii:
    or      dl, 30h
save:
    mov     [si], dl
    dec     immDispLen
    jz      stopDivision
    xor     dl, dl
    dec     si
    cmp     immDispLen, 4
    jne     nextChar
    shr     eax, 16
nextChar:
    jmp     division
stopDivision:
    cmp     dl, 39h
    jna     notLetter
    dec     si
    mov     byte ptr [si], "0"
    inc     cx
notLetter:
    rep     movsb
    pop     si
    mov     immDispLen, 2
skip:
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

write_to_file proc
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
    mov     ptr_ovr, 0
    mov     seg_ovr, 0
    mov     is_size_66, 0
    mov     is_addr_67, 0
    mov     is_imm, 0
    ret
endp

write_hex_num proc
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
    ret
    End     Start