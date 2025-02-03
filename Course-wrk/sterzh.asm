; XADD:
    ; 0F C0 = XADD rm8, r8
    ; 0F C1 = XADD rm16/32, r16/32
; SAHF:
    ; 9E    = SAHF
; SHL:
    ; C0    = SHL rm8, imm8     (reg = 4)
    ; C1    = SHL rm16/32, imm8 (reg = 4)
    ; D0    = SHL rm8, 1        (reg = 4)
    ; D1    = SHL rm16/32, 1    (reg = 4)
    ; D2    = SHL rm8, cl       (reg = 4)
    ; D3    = SHL rm16/32, cl   (reg = 4)

.model small
.486
.stack 100h

writeFileOffset MACRO string, countOfBytes
    mov     dx, offset string
    mov     cx, countOfBytes
    call    writeToFile    
ENDM

writeBuffer MACRO string, len
    mov     ax, string
    mov     cx, len
    call    writeToBuffer
ENDM

writeBufferOffset MACRO string, len
    mov     ax, offset string
    mov     cx, len
    call    writeToBuffer
ENDM

.data
comFile         db      "com.com", 0
resFile         db      "res.asm", 0
                                   
mnemXadd        db      "XADD   ", 0
mnemShl         db      "SHL    ", 0
mnemSahf        db      "SAHF", 0

bytePtr         db      "byte ptr ", 0
wordPtr         db      "word ptr ", 0
dwordPtr        db      "dword ptr ",0

addrBxDi        db      "DS:[BX+DI", 0
addrBxSi        db      "DS:[BX+SI", 0
addrBpSi        db      "SS:[BP+SI", 0
addrBpDi        db      "SS:[BP+DI", 0
addrSi          db      "DS:[SI", 0
addrDi          db      "DS:[DI", 0
addrdisp        db      "DS:[", 0
addrDispBp      db      "SS:[BP+", 0
addrBx          db      "DS:[BX+". 0

addrEax         db      "DS:[EAX+", 0
addrEcx         db      "DS:[ECX+", 0
addrEdx         db      "DS:[EDX+", 0
addrEbx         db      "DS:[EBX+", 0
addrEbp         db      "SS:[EBP+", 0
baseEsp         db      "SS:[ESP+", 0
addrEsi         db      "DS:[ESI+", 0
addrEdi         db      "DS:[EDI+", 0

regAl           db      "AL", 0
regCl           db      "CL", 0
regDl           db      "DL", 0
regBl           db      "BL", 0
regAh           db      "AH", 0
regCh           db      "CH", 0
regDh           db      "DH", 0
regBh           db      "BH", 0

regAx           db      "AX", 0
regCx           db      "CX", 0
regDx           db      "DX", 0
regBx           db      "BX", 0
regSp           db      "SP", 0
regBp           db      "BP", 0
regSi           db      "SI", 0
regDi           db      "DI", 0

regEax          db      "EAX", 0
regEcx          db      "ECX", 0
regEdx          db      "EDX", 0
regEbx          db      "EBX", 0
regEsp          db      "ESP", 0
regEbp          db      "EBP", 0
regEsi          db      "ESI", 0
regEdi          db      "EDI", 0

segEs           db      "ES", 0
segCs           db      "CS", 0
segSs           db      "SS", 0
segDs           db      "DS", 0
segFs           db      "FS", 0
segGs           db      "GS", 0

opcodesArray    dw      15 dup(0), xaddOp, 22 dup (0)
                        esSeg, 7 dup(0), csSeg, 7 dup(0), ssSeg, 7 dup(0), dsSeg 
                        37 dup(0), fsSeg, gsSeg, sizeOp, addrOp
                        54 dup(0), sahfOp, 34 dup(0)
                        shlOp, shlOp, 15 dup(0), shlOp, shlOp, shlOp, shlOp

regs8           dw      regAl,    regCl,    regDl,    regBl,    regAh,  regCh,  regDh,    regBh 

addr16          dw      addrBxDi, addrBxSi, addrBpSi, addrBpDi, addrSi, addrDi, addrdisp, addrBx
regs16          dw      regAx,    regCx,    regDx,    regBx,    regSp,  regBp,  regSi,    regDi

addr32          dw      addrEax,  addrEcx,  addrEdx,  addrEbx,  0,      addrEbp, addrEsi, addrEdi     
regs32          dw      regEax,   regEcx,   regEdx,   regEbx,   regEsp, regEbp, regEsi,   regEdi
array32BitModRM             dw      EAX_, ECX_, EDX_, EBX_, disp_First, disp_First, ESI_, EDI_
                                    EAX_, ECX_, EDX_, EBX_, disp_First, EBP_, ESI_, EDI_
                                    EAX_, ECX_, EDX_, EBX_, disp_First, EBP_, ESI_, EDI_
                                    regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI
                                

arrayRegBase                dw       regBaseEAX, regBaseECX, regBaseEDX, regBaseEBX, regBaseESP, regBaseEBP, regBaseESI, regBaseEDI

arraySIBIndexSS             dw      regEAX, regECX, regEDX, regEBX, 0, regEBP, regESI, regEDI
arrayPtrs                   dw      bytePtr, wordPtr, dwordPtr

immBuffer                   db      '000000000h'
dispCounter                 dw      2
operSizeFlag                dw      0
addrSizeFlag                dw      0
answerBuffer                db      100 dup (?)
btsFlag                     db      0
SIBbyteFlag                 db      0
disp32InSIBFlag             db      0
disp32Flag                  db      ?
answerBufferLen             dw      ?
answerFile                  db      ?
cycleCount                  dw      ?
dispFlag                    db      ?
disp8BPFlag                 db      ?
fileNumber                  dw      ?
nextIsSegFlag               db      ?
segAddress                  dw      ?
modd                        dw      ?
commandsBuffer              db      2048 dup (?)


.code

Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    cld     
    mov     ax, 3D00h
    mov     dx, offset comFile
    int     21h
    jnc     noErrorWithCome
    mov     ah, 9
    mov     dx, offset error
    int     21h
    mov     dx, offset comFile
    int     21h 
    jmp     exit
noErrorWithCome:
    mov     comFileHandle, ax
    mov     ah, 3Ch
    xor     cx, cx
    mov     dx, OFFSET resFile
    int     21h
    mov     dx, offset commandsBuffer
    mov     bx, ax
    mov     cx, 2048
    
readingComFile:
    mov     ah, 03Fh
    int     21h
    cmp     ax, cx
    jl      endReadingComFile
    add     dx, cx
    add     cycleCount, ax
    loop    readingComFile

endReadingComFile:
    add     cycleCount, ax
createAnswerFile:
    mov     ah, 03Ch
    mov     dx, offset answerFileName
    int     21h
    mov     fileNumber, ax
    mov     si, offset commandsBuffer

cycleForCommands:    
    or      cycleCount, 0
    jz      ending
    mov     answerBufferLen, 0
    lodsb
    dec     cycleCount
    cmp     al, 0Fh
    jne     noByte0F
    lodsb
    dec     cycleCount   
noByte0F:
    movzx   bx, al
    shl     bx, 1
    call    arrayOP[bx]
    
sahfOP:
    writeFileOffset sahfString, sahfStringLength
    jmp     cycleForCommands

btsOPFirst:
    call    disasmFunction
    call    writeToBufferImm
    call    endAnswerBuffer
    jmp     cycleForCommands
    
btsOPSecond:
    call    disasmFunction
    
    movzx   bx, al
    and     bx, 0000000000111000b
    shr     bx, 2
    
    or      operSizeFlag, 0
    jne     dwordLastOperand
    writeBuffer arrayRegsWord[bx], 2
    jmp     btsOPSecondEnd
    
dwordLastOperand:
    writeBuffer arrayRegsDword[bx], 3
    
btsOPSecondEnd:
    call    endAnswerBuffer
    jmp     cycleForCommands
    
rclOP_C0:
    or      operSizeFlag, 2
rclOP_C1:
    call    disasmFunction
    call    writeToBufferImm
    call    endAnswerBuffer
    jmp     cycleForCommands
    
rclOP_D0:
    or      operSizeFlag, 2
rclOP_D1:
    call    disasmFunction
    writeBufferOffset one, 1
    call    endAnswerBuffer
    jmp     cycleForCommands
    
rclOP_D2:
    or      operSizeFlag, 2
rclOP_D3:
    call    disasmFunction
    writeBufferOffset regCL, 2
    call    endAnswerBuffer
    jmp     cycleForCommands

operSize:
    or      operSizeFlag, 1
    jmp     cycleForCommands
addrSize:
    or      addrSizeFlag, 1
    jmp     cycleForCommands

sES:
    mov     segAddress, offset ESseg
    jmp     cycleForCommands
sCS:
    mov     segAddress, offset CSseg
    jmp     cycleForCommands
sSS:
    mov     segAddress, offset SSseg
    jmp     cycleForCommands
sDS:
    mov     segAddress, offset DSseg
    jmp     cycleForCommands
sFS:
    mov     segAddress, offset FSseg
    jmp     cycleForCommands
sGS:
    mov     segAddress, offset GSseg
    jmp     cycleForCommands


    
writeToFile PROC 
    mov     ah, 40h
    mov     bx, fileNumber
    int     21h
    ret  
writeToFile ENDP



writeToBufferImm PROC
    xor     dx, dx
    mov     bx, 16
    mov     cx, dispCounter
    inc     cx

    or      disp8BPFlag, 0
    je      normal
    lodsb
    dec     cycleCount
    mov     disp8BPFlag, 0
    or      al, al
    jnz     saveSi
    sub     di, 3
    sub     answerBufferLen, 3
    jmp     skip    
    
normal:    
    cmp     dispCounter, 2
    je      byteImm
    cmp     dispCounter, 4
    je      wordImm
    
    lodsd
    sub     cycleCount, 4
    or      disp32Flag, 1
    jmp     SHORT saveSi
    
wordImm:
    lodsw
    sub     cycleCount, 2
    jmp     saveSi

byteImm:
    lodsb
    dec     cycleCount

saveSi:
    push    si
    mov     si, offset immBuffer
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
    dec     dispCounter
    jz      endCycleStore
    xor     dl, dl
    dec     si
    cmp     dispCounter, 4
    jne     nextChar
    shr     eax, 16
nextChar:
    jmp     cycleStore
endCycleStore:
    mov     disp32Flag, 0
    cmp     dl, 39h
    jna     storeToBuffer
    dec     si
    mov     byte ptr [si], '0'
    inc     cx

storeToBuffer:
    add     answerBufferLen, cx
    rep     movsb
    pop     si
    mov     dispCounter, 2
skip:
    ret
writeToBufferImm ENDP



writeToBuffer PROC
    push    si
    add     answerBufferLen, cx
    
    or      segAddress, 0
    je      standartSeg
    or      nextIsSegFlag, 0
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
    mov     nextIsSegFlag, 0
    
return:    
    pop     si
    ret
writeToBuffer ENDP



disasmFunction PROC
    mov     di, offset answerBuffer
    cmp     al, 0BAh
    jbe     thisBTS
    writeBufferOffset RCL_, RCL_Len
    jmp     goToLodsb   

thisBTS:
    writeBufferOffset BTS_, BTS_Len
goToLodsb:
    lodsb
    dec     cycleCount
    push    ax
        
    movzx   bp, al
    movzx   bx, al
    and     bp, 0000000011000000b
    shr     bp, 6
    mov     modd, bp
    and     bx, 0000000000000111b
    
    cmp     bp, 11b
    je      writeOperand
    
    or      addrSizeFlag, 0
    je      nextNext
    cmp     bx, 100b
    jne     nextNext
    or      SIBbyteFlag, 1    
    
nextNext:    
    push    bx
    mov     bx, operSizeFlag
    shl     bx, 1
    writeBufferOffset arrayPtrs[bx], arrayPtrsLen[bx]
    or      segAddress, 0
    je      notSeg
    or      nextIsSegFlag, 1
notSeg:
    pop     bx
    
    or      addrSizeFlag, 0
    je      notAddressing32Bit
    call    addressing32Bit
    jmp     writeOperand

notAddressing32Bit:    
    cmp     bp, 01b
    jne     disp16check
    or      dispFlag, 1
    cmp     bx, 110b
    jne     writeOperand
    or      disp8BPFlag, 1
    jmp     writeOperand
    
disp16check:
    cmp     bp, 10b
    je      disp16write
    cmp     bx, 110b
    jne     writeOperand
disp16write:
    mov     dispCounter, 4
    or      dispFlag, 1
    
writeOperand:
    cmp     bp, 11b
    jne     checkAddrSize 
    cmp     operSizeFlag, 2
    je      bufferByte
    cmp     operSizeFlag, 1
    je      bufferDword  

checkAddrSize:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    
    or      addrSizeFlag, 0
    je      bufferWord
    
    writeBuffer array32BitModRM(DS:[bp]), array32BitModRMLen(DS:[bp])
    pop     bp
    or      SIBbyteFlag, 0
    je      nexStage
    call    SIB
    jmp SHORT nexStage
    
bufferWord:
    writeBuffer array16BitModRM(DS:[bp]), array16BitModRMLen(DS:[bp])
    pop     bp
    jmp SHORT nexStage
    
bufferDword:
    shl     bx, 1
    writeBuffer arrayRegsDword[bx], regsDwordLen
    jmp SHORT nexStage

bufferByte:
    shl     bx, 1
    writeBuffer arrayRegsByte[bx], regsByteLen
    
nexStage:   
    cmp     bp, 11b
    je      reting
    or      dispFlag, 0
    je      writeLastOperand
    or      SIBbyteFlag, 0
    je      writeWrite
    writeBufferOffset plus, plusLen
    
writeWrite:
    call    writeToBufferImm

writeLastOperand:
    writeBufferOffset memoryLast, memoryLastLen

reting:
    pop     ax
    ret
disasmFunction ENDP
    


endAnswerBuffer PROC
    writeBufferOffset crfl, crflLen
    writeFileOffset answerBuffer, answerBufferLen
    
    mov     answerBufferLen, 0
    mov     dispFlag, 0
    mov     operSizeFlag, 0
    mov     addrSizeFlag, 0
    mov     SIBbyteFlag, 0
    
    ret
endAnswerBuffer ENDP



addressing32Bit PROC
    or      bp, 0
    jne     checkDisp8
    cmp     bx, 101b
    jne     retGo
    or      dispFlag, 1
    or      dispCounter, 8
    jmp SHORT retGo
    
checkDisp8:
    cmp     bp, 01b
    jne     disp32write
    cmp     bx, 101b
    jne     checkDisp8Next
    or      disp8BPFlag, 1
checkDisp8Next:
    or      dispCounter, 2
    or      dispFlag, 1
    jmp SHORT retGo
    
disp32write:
    mov     dispCounter, 8
    or      dispFlag, 1

retGo:
    ret
addressing32Bit ENDP



SIB PROC
    lodsb
    dec     cycleCount
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
    jne     not101Base
    or      modd, 0
    jne     not101Base
    pop     bx
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    writeBuffer arraySIBIndexSS(DS:[bp]), arraySIBIndexSSLen(DS:[bp])
    lodsd
    sub     cycleCount, 4
    or      eax, eax
    jnz     haveDisp
    jmp SHORT retRet
   
haveDisp:
    sub     si, 4
    add     cycleCount, 4
    writeBufferOffset plus, plusLen    
    push    dispCounter
    mov     dispCounter, 8
    call    writeToBufferImm
    pop     dispCounter
    jmp SHORT retRet
    
not101Base:
    shl     bx, 1
    writeBuffer arrayRegBase[bx], regBaseLen
    pop     bx
    cmp     bx, 100b
    je      retRet
    
    writeBufferOffset plus, plusLen
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    writeBuffer arraySIBIndexSS(DS:[bp]), arraySIBIndexSSLen(DS:[bp])
    
retRet:
    pop     bx
    pop     bp
    ret
SIB ENDP


ending:
    mov     ah, 03Eh
    mov     bx, fileNumber
    int     21h
    
    mov     ah, 04Ch
    int     21h
    end     Start