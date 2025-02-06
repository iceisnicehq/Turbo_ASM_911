.model small
.486
.stack 100h

.data

comFileName                 db      "COM.COM", 0
resFileName                 db      "RES.ASM", 0
sahfMnem                    db      "SAHF", 13, 10
xaddMnem                    db      "XADD   "
shlMnem                     db      "SHL    "
comError                    db      "Error with openning COM file", 13, 10, "$"
resError                    db      "Error with creating RES file", 13, 10, "$"
exitMessage                 db      "Exiting...$"
AL_                         db      "AL,"
CL_                         db      "CL,"
DL_                         db      "DL,"
BL_                         db      "BL,"
AH_                         db      "AH,"
CH_                         db      "CH,"
DH_                         db      "DH,"
BH_                         db      "BH,"
AX_                         db      "AX,"
CX_                         db      "CX,"
DX_                         db      "DX,"
BX_                         db      "BX,"
SP_                         db      "SP,"
BP_                         db      "BP,"
SI_                         db      "SI,"
DI_                         db      "DI,"
EAX_                        db      "EAX,"
ECX_                        db      "ECX,"
EDX_                        db      "EDX,"
EBX_                        db      "EBX,"
ESP_                        db      "ESP,"
EBP_                        db      "EBP,"
ESI_                        db      "ESI,"
EDI_                        db      "EDI,"
byteRegs                    dw      AL_,  CL_,  DL_,  BL_,  AH_,  CH_,  DH_,  BH_                                                                           
wordRegs                    dw      AX_,  CX_,  DX_,  BX_,  SP_,  BP_,  SI_,  DI_
dwrdRegs                    dw      EAX_, ECX_, EDX_, EBX_, ESP_, EBP_, ESI_, EDI_
BXSIrm                      db      "DS:[BX+SI+"
BXDIrm                      db      "DS:[BX+DI+"
BPSIrm                      db      "SS:[BP+SI+"
BPDIrm                      db      "SS:[BP+DI+"
SIrm                        db      "DS:[SI+"
DIrm                        db      "DS:[DI+"
disp_                       db      "DS:["
BPrm                        db      "SS:[BP+"
BXrm                        db      "DS:[BX+"
modrm16Bit                  dw      BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIrm, DIrm, disp_, BXrm
                            dw      BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIrm, DIrm, BPrm,  BXrm
                            dw      BXSIrm, BXDIrm, BPSIrm, BPDIrm, SIrm, DIrm, BPrm,  BXrm
modrm16BitLenStr            dw      9,   9,  9,  9, 6, 6, 4, 6
                            dw      10, 10, 10, 10, 7, 7, 7, 7
                            dw      10, 10, 10, 10, 7, 7, 7, 7
EAXrm                       db      "DS:[EAX+"
ECXrm                       db      "DS:[ECX+"
EDXrm                       db      "DS:[EDX+"
EBXrm                       db      "DS:[EBX+"
EBPrm                       db      "SS:[EBP+"
ESIrm                       db      "DS:[ESI+"
EDIrm                       db      "DS:[EDI+"
modrm32Bit                  dw      EAXrm, ECXrm, EDXrm, EBXrm, disp_, disp_, ESIrm, EDIrm
                            dw      EAXrm, ECXrm, EDXrm, EBXrm, disp_, EBPrm, ESIrm, EDIrm
                            dw      EAXrm, ECXrm, EDXrm, EBXrm, disp_, EBPrm, ESIrm, EDIrm
modrm32BitLenStr            dw      7, 7, 7, 7, 4, 4, 7, 7
                            dw      8, 8, 8, 8, 4, 8, 8, 8
                            dw      8, 8, 8, 8, 4, 8, 8, 8
EAX2                        db      "EAX*2"
ECX2                        db      "ECX*2"
EDX2                        db      "EDX*2"
EBX2                        db      "EBX*2"
EBP2                        db      "EBP*2"
ESI2                        db      "ESI*2"
EDI2                        db      "EDI*2"
EAX4                        db      "EAX*4"
ECX4                        db      "ECX*4"
EDX4                        db      "EDX*4"
EBX4                        db      "EBX*4"
EBP4                        db      "EBP*4"
ESI4                        db      "ESI*4"
EDI4                        db      "EDI*4"
EAX8                        db      "EAX*8"
ECX8                        db      "ECX*8"
EDX8                        db      "EDX*8"
EBX8                        db      "EBX*8"
EBP8                        db      "EBP*8"
ESI8                        db      "ESI*8"
EDI8                        db      "EDI*8"
sibIndex                    dw      EAX_, ECX_, EDX_, EBX_, 0, EBP_, ESI_, EDI_
                            dw      EAX2, ECX2, EDX2, EBX2, 0, EBP2, ESI2, EDI2
                            dw      EAX4, ECX4, EDX4, EBX4, 0, EBP4, ESI4, EDI4
                            dw      EAX8, ECX8, EDX8, EBX8, 0, EBP8, ESI8, EDI8
sibIndexLenStr              dw      8   dup (3)
                            dw      3*8 dup (5)
sibBase                     dw      EAX_, ECX_, EDX_, EBX_, ESP_, EBP_, ESI_, EDI_
wordPtr                     db      "word ptr "
dwordPtr                    db      "dword ptr "
bytePtr                     db      "byte ptr "
typeOvr                     dw      wordPtr, dwordPtr, bytePtr
typeOvrLenStr               dw      9, 10, 9
ESseg                       db      "ES"
CSseg                       db      "CS"
SSseg                       db      "SS"
DSseg                       db      "DS"
FSseg                       db      "FS"
GSseg                       db      "GS"
opcodeTable                 dw      15 dup(findNextOpcode)
                            dw      byteXadd
                            dw      22 dup (findNextOpcode)
                            dw      byteES, 7 dup(findNextOpcode), byteCS, 7 dup(findNextOpcode)
                            dw      byteSS, 7 dup(findNextOpcode), byteDS, 37 dup(findNextOpcode)
                            dw      byteFS, byteGS, byteOper, byteAddr 
                            dw      54 dup(findNextOpcode)
                            dw      byteSahf          
                            dw      33 dup(findNextOpcode)
                            dw      byteShlC0, byteShlC1
                            dw      14 dup(findNextOpcode)
                            dw      byteShlD0, byteShlD1, byteShlD2, byteShlD3 
immDispBuf                  db      '000000000h'
immDispLen                  dw      ?
operSizeOvr                 dw      ?
addrSizeOvr                 dw      ?
sibByte                     db      ?
isDisp32Bit                 db      ?
isDisp                      db      ?
isDisp8BitBp                db      ?
isSegNext                   db      ?
segAddress                  dw      ?
modrmMod                    dw      ?
instrBuffer                 db      64 dup (?)
dataBuffer                  db      4096 dup (?)
dataBytesNum                dw      ?
isXadd                      db      ?
resFileHandle               dw      ?
comFileHandle               dw      ?


.code

Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    cld
    mov     ax, 3D00h
    mov     dx, offset comFileName
    int     21h
    jnc     comNoError
    mov     dx, offset comError
    mov     ah, 9
    int     21h
    jmp     exit
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
    jmp     exit
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
    mov     isDisp, 0
    mov     operSizeOvr, 0
    mov     addrSizeOvr, 0
    mov     sibByte, 0
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
    call    disasmFunction
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
    call    writeToBuffer
    jmp     prepWriteFile
byteShlC0:
    or      operSizeOvr, 2
byteShlC1:
    call    disasmFunction
    call    writeToBufferImm
    jmp     prepWriteFile   
byteShlD0:
    or      operSizeOvr, 2
byteShlD1:
    call    disasmFunction
    mov     al, "1"
    stosb
    jmp     prepWriteFile    
byteShlD2:
    or      operSizeOvr, 2
byteShlD3:
    call    disasmFunction
    mov     ax, "LC"
    stosw
    jmp     prepWriteFile
byteOper:
    or      operSizeOvr, 1
    jmp     findNextOpcode
byteAddr:
    or      addrSizeOvr, 1
    jmp     findNextOpcode

byteES:
    mov     segAddress, offset ESseg
    jmp     findNextOpcode
byteCS:
    mov     segAddress, offset CSseg
    jmp     findNextOpcode
byteSS:
    mov     segAddress, offset SSseg
    jmp     findNextOpcode
byteDS:
    mov     segAddress, offset DSseg
    jmp     findNextOpcode
byteFS:
    mov     segAddress, offset FSseg
    jmp     findNextOpcode
byteGS:
    mov     segAddress, offset GSseg
    jmp     findNextOpcode
exit:
    mov     ah, 3Eh
    mov     bx, resFileHandle
    int     21h
    mov     bx, comFileHandle
    int     21h
    mov     dx, offset exitMessage
    mov     ah, 9
    int     21h
    mov     ah,04Ch
    int     21h



writeToBufferImm PROC
    xor     dx, dx
    mov     bx, 16
    mov     cx, immDispLen
    inc     cx

    or      isDisp8BitBp, 0
    je      normal
    lodsb
    mov     isDisp8BitBp, 0
    or      al, al
    jnz     saveSi
    dec     di
    jmp     skip    
    
normal:    
    cmp     immDispLen, 2
    je      byteImm
    cmp     immDispLen, 4
    je      wordImm
    
    lodsd
    or      isDisp32Bit, 1
    jmp         saveSi
    
wordImm:
    lodsw
    jmp     saveSi

byteImm:
    lodsb

saveSi:
    push    si
    mov     si, offset immDispBuf
    add     si, 8
cycleStore:
    idiv    bx
    cmp     dl, 9
    jbe     digit
    add     dl, 37h
    jmp     store
digit:
    or      dl, 30h
store:
    mov     [si], dl
    dec     immDispLen
    jz      endCycleStore
    xor     dl, dl
    dec     si
    cmp     immDispLen, 4
    jne     nextChar
    shr     eax, 16
nextChar:
    jmp     cycleStore
endCycleStore:
    mov     isDisp32Bit, 0
    cmp     dl, 39h
    jna     storeToBuffer
    dec     si
    mov     byte ptr [si], '0'
    inc     cx

storeToBuffer:
    rep     movsb
    pop     si
    mov     immDispLen, 2
skip:
    ret
ENDP



writeToBuffer PROC
    push    si
    
    or      segAddress, 0
    je      standartSeg
    or      isSegNext, 0
    jne     noStandartSeg
    
standartSeg:
    mov     si, ax
    rep     movsb
    jmp     return

noStandartSeg:
    mov     si, segAddress
    movsb
    movsb
    sub     cx, 2
    mov     si, ax
    add     si, 2
    rep     movsb
    mov     segAddress, 0
    mov     isSegNext, 0
    
return:    
    pop     si
    ret
ENDP



disasmFunction PROC
    mov     di, offset instrBuffer
    or      isXadd, 0
    jnz     xaddTrue 
    mov     ax, offset shlMnem
    mov     cx, 7
    call    writeToBuffer
    jmp     goToLodsb   

xaddTrue:
    mov     ax, offset xaddMnem
    mov     cx, 7
    call    writeToBuffer
goToLodsb:
    lodsb
    push    ax
        
    movzx   bp, al
    movzx   bx, al
    and     bp, 0000000011000000b
    shr     bp, 6
    mov     modrmMod, bp
    and     bx, 0000000000000111b
    
    cmp     bp, 11b
    je      writeOperand
    
    or      addrSizeOvr, 0
    je      nextNext
    cmp     bx, 100b
    jne     nextNext
    or      sibByte, 1    
    
nextNext:    
    push    bx
    mov     bx, operSizeOvr
    shl     bx, 1
    or      isXadd, 0
    jnz     noTypeOvr
    mov     ax, offset typeOvr[bx]
    mov     cx, typeOvrLenStr[bx]
    call    writeToBuffer
noTypeOvr:
    or      segAddress, 0
    je      notSeg
    or      isSegNext, 1
notSeg:
    pop     bx
    or      addrSizeOvr, 0
    je      notAddressing32Bit
    or      bp, 0
    jne     checkDisp8
    cmp     bx, 101b
    jne     writeOperand
    or      isDisp, 1
    mov     immDispLen, 8
    jmp     writeOperand
checkDisp8:
    cmp     bp, 01b
    jne     disp32write
    cmp     bx, 101b
    jne     checkDisp8Next
    or      isDisp8BitBp, 1
checkDisp8Next:
    mov     immDispLen, 2
    or      isDisp, 1
    jmp     writeOperand
disp32write:
    mov     immDispLen, 8
    or      isDisp, 1
    jmp     writeOperand
notAddressing32Bit:    
    cmp     bp, 01b
    jne     disp16check
    or      isDisp, 1
    cmp     bx, 110b
    jne     writeOperand
    or      isDisp8BitBp, 1
    jmp     writeOperand
    
disp16check:
    cmp     bp, 10b
    je      disp16write
    cmp     bx, 110b
    jne     writeOperand
disp16write:
    mov     immDispLen, 4
    or      isDisp, 1
    
writeOperand:
    cmp     bp, 11b
    jne     checkAddrSize
    shl     bx, 1
    mov     cx, 3
    mov     ax, byteRegs[bx]
    cmp     operSizeOvr, 1
    ja      writeRegOperand
    mov     ax, wordRegs[bx]
    jne     writeRegOperand
    mov     ax, dwrdRegs[bx]
    inc     cx
writeRegOperand:
    call    writeToBuffer
    jmp     continue
checkAddrSize:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    mov     bx, bp
    or      addrSizeOvr, 0
    je      wordSize
    
    mov     ax, modrm32Bit[bx]
    mov     cx, modrm32BitLenStr[bx]
    call    writeToBuffer
    pop     bp
    or      sibByte, 0
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
    jne     not101Base
    or      modrmMod, 0
    jne     not101Base
    pop     bx
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    mov     bx, bp
    mov     ax, sibIndex[bx]
    mov     cx, sibIndexLenStr[bx]
    call    writeToBuffer
    lodsd
    or      eax, eax
    jnz     haveDisp
    jmp     retRet
haveDisp:
    sub     si, 4
    mov     al, "+"
    stosb  
    push    immDispLen
    mov     immDispLen, 8
    call    writeToBufferImm
    pop     immDispLen
    jmp     retRet
not101Base:
    shl     bx, 1
    mov     ax, sibBase[bx]
    mov     cx, 3
    call    writeToBuffer
    pop     bx
    cmp     bx, 100b
    je      retRet
    mov     al, "+"
    stosb    
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    mov     bx, bp
    mov     ax, sibIndex[bx]
    mov     cx, sibIndexLenStr[bx]
    call    writeToBuffer
retRet:
    pop     bp
    jmp     continue
wordSize:
    mov     ax, modrm16Bit[bx]
    mov     cx, modrm16BitLenStr[bx]
    call    writeToBuffer
    pop     bp
continue:   
    cmp     bp, 11b
    je      reting
    or      isDisp, 0
    je      writeLastOperand
    or      sibByte, 0
    je      writeWrite
    mov     al, "+"
    stosb  
writeWrite:
    call    writeToBufferImm

writeLastOperand:
    mov     ax, ",]"
    stosw
reting:
    pop     ax
    ret
ENDP

    end     Start