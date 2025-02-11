.model tiny
.486
    org 100h
.code
Start:
    jmp dword ptr [di]
    CDQ
    ;JMP
    ;IMUL
; 69		r   					IMUL	r16/32	r/m16/32	imm16/32	
; 6B		r						IMUL	r16/32	r/m16/32	imm8
; 99								CDQ
; E9								JMP	    rel16/32
; EA								JMPF	ptr16:16/32
; EB								JMP	    rel8
; F6		5						IMUL	r/m8
; F7		5						IMUL	r/m16/32	
; FF		4						JMP	    r/m16/32
; FF		5						JMPF	m16:16/32
END Start 

regs8    dw    ALstr, CLstr, DLstr, BLstr, AHstr, CHstr, DHstr, BHstr
regs16    dw    AXstr, CXstr, DXstr, BXstr, SPstr, BPstr, SIstr, DIstr ; тут адрес+1, то есть EAX + 1 = AX, то на один байт дальше просто
regs32    dw    EAXstr, ECXstr, EDXstr, EBXstr, ESPstr, EBPstr, ESIstr, EDIstr
mod00_16_def_seg    dw    ds_seg, ds_seg, ss_seg, ss_seg, ds_seg, ds_seg, ds_seg, ds_seg
rm16    dw    BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIstr, DIstr, BPstr,  BXstr

mod00_32    dw    EAXstr, ECXstr, EDXstr, EBXstr, 100b, 101b, ESIstr, EDIstr
mod01_32    dw    EAXstr, ECXstr, EDXstr, EBXstr, 100b, EBPstr, ESIstr, EDIstr



decodeCommand proc
    mov     cx, 8
    mov     ax, offset xaddMnem
    or      isXadd, 0
    jnz     xaddTrue 
    mov     ax, offset shlMnem
xaddTrue:
    call    printStrToBuffer
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
    call    printStrToBuffer
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
    ja      printRegOperand
    mov     ax, wordRegs[bx]
    jne     printRegOperand
    mov     ax, dwrdRegs[bx]
    inc     cx
printRegOperand:
    call    printStrToBuffer
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
    call    printStrToBuffer
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
    call    printStrToBuffer
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
    call    printImmDispToBuffer
    pop     word ptr immDispLen
    jmp     popBp
sibBaseNot101Ebp:
    shl     bx, 1
    mov     ax, dwrdRegs[bx]
    mov     cx, 3
    call    printStrToBuffer
    pop     bx
    cmp     bx, 100b
    je      popBp
    mov     al, "+"
    stosb    
    shl     bx, 1
    mov     ax, dwrdRegs[bx]
    mov     cx, 3
    call    printStrToBuffer
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
    call    printStrToBuffer
    pop     bp
continue:   
    cmp     bp, 11b
    je      return
    or      isDisp, 0
    jz      printClosingBracket
    mov     al, "+"
    stosb  
callWriting:
    call    printImmDispToBuffer
printClosingBracket:
    mov     ax, ",]"
    stosw
return:
    pop     ax
    ret
endp

printImmDispToBuffer proc
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