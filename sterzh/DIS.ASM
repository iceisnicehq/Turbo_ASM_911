.model small
.486
.stack 100h
.data
comFileName      db    "COM.COM", 0
comError         db    "Error with openning COM file", 13, 10, "$"
resFileName      db    "RES.ASM", 0
resError         db    "Error with creating RES file", 13, 10, "$"
noError          db    "No error.", 13, 10, "$"
exitMessage      db    "Exiting...$"
sahfMnem         db    "SAHF", 13, 10
xaddMnem         db    "XADD    "
shlMnem          db    "SHL     "
AL_              db    "AL"
CL_              db    "CL"
DL_              db    "DL"
BL_              db    "BL"
AH_              db    "AH"
CH_              db    "CH"
DH_              db    "DH"
BH_              db    "BH"
AX_              db    "AX"
CX_              db    "CX"
DX_              db    "DX"
BX_              db    "BX"
SP_              db    "SP"
BP_              db    "BP"
SI_              db    "SI"
DI_              db    "DI"
EAX_             db    "EAX"
ECX_             db    "ECX"
EDX_             db    "EDX"
EBX_             db    "EBX"
ESP_             db    "ESP"
EBP_             db    "EBP"
ESI_             db    "ESI"
EDI_             db    "EDI"
byteRegs         dw    AL_,  CL_,  DL_,  BL_,  AH_,  CH_,  DH_,  BH_                                                                           
wordRegs         dw    AX_,  CX_,  DX_,  BX_,  SP_,  BP_,  SI_,  DI_
dwrdRegs         dw    EAX_, ECX_, EDX_, EBX_, ESP_, EBP_, ESI_, EDI_
wordPtr          db    "word ptr "
dwordPtr         db    "dword ptr "
bytePtr          db    "byte ptr "
typeOvr          dw    wordPtr, dwordPtr, bytePtr
typeOvrLenStr    dw    9, 10, 9
ESpref           db    "E"
CSpref           db    "C"
SSpref           db    "S"
DSpref           db    "D"
FSpref           db    "F"
GSpref           db    "G"
lockMnem         db    "LOCK "
disp_            db    "DS:["
immDispStr       db    "000000000H"
BXSIrm           db    "DS:[BX+SI"
BXDIrm           db    "DS:[BX+DI"
BPSIrm           db    "SS:[BP+SI"
BPDIrm           db    "SS:[BP+DI"
SIrm             db    "DS:[SI"
DIrm             db    "DS:[DI"
BPrm             db    "SS:[BP"
BXrm             db    "DS:[BX"
modrm16          dw    BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIrm, DIrm, disp_, BXrm
                 dw    2 dup (BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIrm, DIrm, BPrm,  BXrm)
modrm16LenStr    dw    9, 9, 9, 9, 6, 6, 4, 6
                 dw    2 dup (9, 9, 9, 9, 6, 6, 6, 6)
EAXrm            db    "DS:[EAX"
ECXrm            db    "DS:[ECX"
EDXrm            db    "DS:[EDX"
EBXrm            db    "DS:[EBX"
EBPrm            db    "SS:[EBP"
ESIrm            db    "DS:[ESI"
EDIrm            db    "DS:[EDI"
modrm32          dw    EAXrm, ECXrm, EDXrm, EBXrm, disp_, disp_, ESIrm, EDIrm
                 dw    2 dup (EAXrm, ECXrm, EDXrm, EBXrm, disp_, EBPrm, ESIrm, EDIrm)
modrm32LenStr    dw    7, 7, 7, 7, 4, 4, 7, 7
                 dw    2 dup (7, 7, 7, 7, 4, 7, 7, 7)
opcodeTable      dw    15 dup(findNextOpcode)
                 dw    byteXadd
                 dw    22 dup (findNextOpcode)
                 dw    byteES, 7 dup(findNextOpcode), byteCS, 7 dup(findNextOpcode)
                 dw    byteSS, 7 dup(findNextOpcode), byteDS, 37 dup(findNextOpcode)
                 dw    byteFS, byteGS, byteOper, byteAddr 
                 dw    54 dup(findNextOpcode)
                 dw    byteSahf          
                 dw    33 dup(findNextOpcode)
                 dw    byteShlC0, byteShlC1
                 dw    14 dup(findNextOpcode)
                 dw    byteShlD0, byteShlD1, byteShlD2, byteShlD3 
                 dw    28 dup(findNextOpcode)
                 dw    byteLock
immDispLen       db    ?
isDisp           db    ?
checkZeroDisp    db    ?
resFileHandle    dw    ?
comFileHandle    dw    ?
segOvr           dw    ?
operSizeOvr      db    ?
addrSizeOvr      db    ?
isSibByte        db    ?
modrmMod         db    ?
isXadd           db    ?
instrBuffer      db    64 dup (?)
dataBuffer       db    4096 dup (?)
dataBytesNum     dw    ?

.code
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    mov     ax, 3D00h
    mov     dx, offset comFileName
    int     21h
    jnc     comNoError
    mov     dx, offset comError
    mov     ah, 9
    int     21h
    jmp     errorExit
comNoError:
    mov     comFileHandle, ax
    mov     ah, 3Ch
    xor     cx, cx 
    mov     dx, offset resFileName
    int     21h
    jnc     resNoError
    mov     dx, offset resError
    mov     ah, 9
    int     21h
    jmp     errorExit
resNoError:
    mov     resFileHandle, ax
    mov     si, offset dataBuffer
    mov     dx, si
    mov     cx, size dataBuffer
    mov     ah, 3Fh
    mov     bx, comFileHandle
    int     21h
    add     ax, si
    mov     dataBytesNum, ax
    jmp     resetVals
prepWriteFile:
    mov     ax, 0A0Dh
    stosw 
    mov     dx, offset instrBuffer
    mov     cx, di
    sub     cx, dx
writeFile:
    mov     ah, 40h
    mov     bx, resFileHandle
    int     21h  
resetVals:
    cld
    mov     di, offset instrBuffer
    mov     cx, size instrBuffer
    mov     al, " "
    push    di
    rep     stosb
    pop     di
    mov     isDisp, 0
    mov     checkZeroDisp, 0
    mov     immDispLen, 2
    mov     operSizeOvr, 0
    mov     addrSizeOvr, 0
    mov     segOvr, 0
    mov     isSibByte, 0
    mov     modrmMod, 0
    mov     isXadd, 0
findNextOpcode:    
    cmp     si, databytesNum
    ja      exit
    lodsb
    movzx   bx, al
    shl     bx, 1
    jmp     opcodeTable[bx]
byteSahf:
    mov     dx, offset sahfMnem
    mov     cx, 6
    jmp     writeFile
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
    jmp     findNextOpcode
byteAddr:
    mov     addrSizeOvr, 1
    jmp     findNextOpcode
byteES:
    mov     segOvr, offset ESpref
    jmp     findNextOpcode
byteCS:
    mov     segOvr, offset CSpref
    jmp     findNextOpcode
byteSS:
    mov     segOvr, offset SSpref
    jmp     findNextOpcode
byteDS:
    mov     segOvr, offset DSpref
    jmp     findNextOpcode
byteFS:
    mov     segOvr, offset FSpref
    jmp     findNextOpcode
byteGS:
    mov     segOvr, offset GSpref
    jmp     findNextOpcode
byteLock:
    mov     ax, offset lockMnem
    mov     cx, 5
    call    writeStrToBuffer
    jmp     findNextOpcode
exit:
    mov     dx, offset noError
    mov     ah, 9 
    int     21h
    mov     ah, 3Eh
    mov     bx, resFileHandle
    int     21h
    mov     bx, comFileHandle
    int     21h
errorExit:
    mov     dx, offset exitMessage
    mov     ah, 9
    int     21h
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
    mov     ax, offset typeOvr[bx]
    mov     cx, typeOvrLenStr[bx]
    call    writeStrToBuffer
noTypeOvr:
    or      segOvr, 0
    jz      defaultSegment
    push    si
    mov     si, segOvr
    movsb
    pop     si
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
    mov     cx, modrm32LenStr[bx]
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
    mov     cx, modrm16LenStr[bx]
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

    End     Start