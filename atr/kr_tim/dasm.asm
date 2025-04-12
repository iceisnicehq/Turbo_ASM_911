.model small
.486
.stack 100h

.data
inputCmdFile        db      "comFile.com", 0
resultFile          db      "output.asm", 0
fileHandle          dw      ?

nlSequence          db      0Dh, 0Ah
nlLength            equ     $ - nlSequence

opcodeMap           dw      32 dup (0),\
                            0, 0, 0, 0, 0, 0, offset handleEsSeg, offset processDAA, 0, 0, 0, 0, 0, 0, offset handleCsSeg, 0,\
                            0, 0, 0, 0, 0, 0, offset handleSsSeg, 0, 0, 0, 0, 0, 0, 0, offset handleDsSeg, 0,\
                            32 dup (0),\
                            0, 0, 0, 0, offset handleFsSeg, offset handleGsSeg, offset setOpSize, offset setAddrSize, 0, 0, 0, 0, 0, 0, 0, 0,\
                            80 dup (0),\
                            offset handleShrC0, offset handleShrC1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,\
                            offset handleShrD0, offset handleShrD1, offset handleShrD2, offset handleShrD3, 12 dup (0),\
                            16 dup (0),\
                            0, 0, 0, 0, 0, 0, offset handleNegF6, offset handleNegF7, 0, 0, 0, 0, 0, 0, 0, 0 

txtNeg              db      "NEG    "
lenNeg              equ     $ - txtNeg

txtShr              db      "SHR    "
lenShr              equ     $ - txtShr

daaStr              db      "DAA", 0Dh, 0Ah
daaStrLen           equ     5

oneStr              db      "1"

ptrWord             db      "word ptr "
lenPtrWord          equ     $ - ptrWord

ptrDword            db      "dword ptr "
lenPtrDword         equ     $ - ptrDword

ptrByte             db      "byte ptr "
lenPtrByte          equ     $ - ptrByte

ptrTypeList         dw      ptrWord, ptrDword, ptrByte
ptrTypeLen          dw      lenPtrWord, lenPtrDword, lenPtrByte

segmenttEs           db      "ES"
segmenttCs           db      "CS"
segmenttSs           db      "SS"
segmenttDs           db      "DS"
segmenttFs           db      "FS"
segmenttGs           db      "GS"

addrBxSi            db      "DS:[BX + SI + "
addrBxDi            db      "DS:[BX + DI + "
addrBpSi            db      "SS:[BP + SI + "
addrBpDi            db      "SS:[BP + DI + "
addrSi              db      "DS:[SI + "
addrDi              db      "DS:[DI + "
addrDisp            db      "DS:["
addrBpDisp          db      "SS:[BP + "
addrBx              db      "DS:[BX + "

addrEax             db      "DS:[EAX + "
addrEcx             db      "DS:[ECX + "
addrEdx             db      "DS:[EDX + "
addrEbx             db      "DS:[EBX + "
addrEbp             db      "SS:[EBP + "
addrEsi             db      "DS:[ESI + "
addrEdi             db      "DS:[EDI + "

scaleEax2           db      "EAX*2"
scaleEcx2           db      "ECX*2"
scaleEdx2           db      "EDX*2"
scaleEbx2           db      "EBX*2"
scaleEbp2           db      "EBP*2"
scaleEsi2           db      "ESI*2"
scaleEdi2           db      "EDI*2"

scaleEax4           db      "EAX*4"
scaleEcx4           db      "ECX*4"
scaleEdx4           db      "EDX*4"
scaleEbx4           db      "EBX*4"
scaleEbp4           db      "EBP*4"
scaleEsi4           db      "ESI*4"
scaleEdi4           db      "EDI*4"

scaleEax8           db      "EAX*8"
scaleEcx8           db      "ECX*8"
scaleEdx8           db      "EDX*8"
scaleEbx8           db      "EBX*8"
scaleEbp8           db      "EBP*8"
scaleEsi8           db      "ESI*8"
scaleEdi8           db      "EDI*8"

regAl               db      "AL, "
regCl               db      "CL, "
regDl               db      "DL, "
regBl               db      "BL, "
regAh               db      "AH, "
regCh               db      "CH, "
regDh               db      "DH, "
regBh               db      "BH, "

regAx               db      "AX, "
regCx               db      "CX, "
regDx               db      "DX, "
regBx               db      "BX, "
regSp               db      "SP, "
regBp               db      "BP, "
regSi               db      "SI, "
regDi               db      "DI, "

regEax              db      "EAX, "
regEcx              db      "ECX, "
regEdx              db      "EDX, "
regEbx              db      "EBX, "
regEsp              db      "ESP, "
regEbp              db      "EBP, "
regEsi              db      "ESI, "
regEdi              db      "EDI, "

strPlus             db      " + "
lenPlus             equ     $ - strPlus

sibEntries          dw      regEax, regEcx, regEdx, regEbx, 0, regEbp, regEsi, regEdi,\
                            scaleEax2, scaleEcx2, scaleEdx2, scaleEbx2, 0, scaleEbp2, scaleEsi2, scaleEdi2,\
                            scaleEax4, scaleEcx4, scaleEdx4, scaleEbx4, 0, scaleEbp4, scaleEsi4, scaleEdi4,\
                            scaleEax8, scaleEcx8, scaleEdx8, scaleEbx8, 0, scaleEbp8, scaleEsi8, scaleEdi8

sibLengths          dw      8 dup (3), 24 dup (5)

closeBr             db      "], "
lenCloseBr          equ     $ - closeBr

extRegList          dw      regEax, regEcx, regEdx, regEbx, regEsp, regEbp, regEsi, regEdi
lenExtReg           equ     3

addr16List          dw      addrBxSi, addrBxDi, addrBpSi, addrBpDi, addrSi, addrDi, addrDisp, addrBx,\
                            addrBxSi, addrBxDi, addrBpSi, addrBpDi, addrSi, addrDi, addrBpDisp, addrBx,\
                            addrBxSi, addrBxDi, addrBpSi, addrBpDi, addrSi, addrDi, addrBpDisp, addrBx,\
                            regAx, regCx, regDx, regBx, regSp, regBp, regSi, regDi

lenAddr16           dw      11, 11, 11, 11, 6, 6, 4, 6,\
                            14, 14, 14, 14, 9, 9, 9, 9,\
                            14, 14, 14, 14, 9, 9, 9, 9,\
                            8 dup (4)
                            
lenAddr16Neg        dw      11, 11, 11, 11, 6, 6, 4, 6,\
                            14, 14, 14, 14, 9, 9, 9, 9,\
                            14, 14, 14, 14, 9, 9, 9, 9,\
                            8 dup (2)

addr32List          dw      addrEax, addrEcx, addrEdx, addrEbx, addrDisp, addrDisp, addrEsi, addrEdi,\
                            addrEax, addrEcx, addrEdx, addrEbx, addrDisp, addrEbp, addrEsi, addrEdi,\
                            addrEax, addrEcx, addrEdx, addrEbx, addrDisp, addrEbp, addrEsi, addrEdi,\
                            regAx, regCx, regDx, regBx, regSp, regBp, regSi, regDi

lenAddr32           dw      7, 7, 7, 7, 4, 4, 7, 7,\
                            10, 10, 10, 10, 4, 10, 10, 10,\
                            10, 10, 10, 10, 4, 10, 10, 10,\
                            8 dup (4)

byteRegList         dw      regAl, regCl, regDl, regBl, regAh, regCh, regDh, regBh                                                                           
wordRegList         dw      regAx, regCx, regDx, regBx, regSp, regBp, regSi, regDi
dwordRegList        dw      regEax, regEcx, regEdx, regEbx, regEsp, regEbp, regEsi, regEdi
regSizes            dw      2, 3, 2

dispBuffer          db      '000000000h'
dispCount           dw      2

flagOpSize          dw      ?
flagAddrSize        dw      ?
flagSib             db      ?
flagDisp32          db      ?
flagDisp            db      ?
flagDisp8Bp         db      ?
flagSegNext         db      ?
flagNeg             db      ?
flagSecondOp        db      ?

currentSegReg       dw      ?
modValue            dw      ?

outputData          db      100 dup (?)
outDataLen          dw      ?

cmdCounter          dw      ?
cmdBuffer           db      5000 dup (?)

.code

writeFile MACRO buffer, size
    mov     dx, offset buffer
    mov     cx, size
    call    writeFileHandler    
ENDM

writeBuffer MACRO src, len
    mov     ax, src
    mov     cx, len
    call    bufferWriteHandler
ENDM

writeBufferOffset MACRO src, len
    mov     ax, offset src
    mov     cx, len
    call    bufferWriteHandler
ENDM

Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     ax, 3D00h
    mov     dx, offset inputCmdFile
    int     21h
    
    mov     dx, offset cmdBuffer
    mov     bx, ax
    mov     cx, 5000
    
    mov     ah, 3Fh
    int     21h
    mov     cmdCounter, ax

    mov     ah, 3Ch
    mov     dx, offset resultFile
    xor     cx, cx
    int     21h
    
    mov     fileHandle, ax
    mov     si, offset cmdBuffer

cmdProcessing:    
    or      cmdCounter, 0
    jz      exitProgramm
    
    mov     outDataLen, 0
    lodsb
    dec     cmdCounter
    cmp     al, 0Fh
    jne     skipPrefixProc
    lodsb
    dec     cmdCounter   
skipPrefixProc:
    movzx   bx, al
    shl     bx, 1
    call    opcodeMap[bx]

processDAA:
    writeFile daaStr, daaStrLen
    jmp     cmdProcessing

handleNegF6:
    or      flagOpSize, 2
    call    processDisassembly
    call    finalizeOutput
    jmp     cmdProcessing
    
handleNegF7:
    call    processDisassembly
    call    finalizeOutput
    jmp     cmdProcessing
    
handleShrC0:
    or      flagOpSize, 2
handleShrC1:
    call    processDisassembly
    call    writeDisplacement
    call    finalizeOutput
    jmp     cmdProcessing
    
handleShrD0:
    or      flagOpSize, 2
handleShrD1:
    call    processDisassembly
    writeBufferOffset oneStr, 1
    call    finalizeOutput
    jmp     cmdProcessing
    
handleShrD2:
    or      flagOpSize, 2
handleShrD3:
    call    processDisassembly
    writeBufferOffset regCl, 2
    call    finalizeOutput
    jmp     cmdProcessing
   
setOpSize:
    or      flagOpSize, 1
    jmp     cmdProcessing
setAddrSize:
    or      flagAddrSize, 1
    jmp     cmdProcessing

handleEsSeg:
    mov     currentSegReg, offset segmenttEs
    jmp     cmdProcessing
handleCsSeg:
    mov     currentSegReg, offset segmenttCs
    jmp     cmdProcessing
handleSsSeg:
    mov     currentSegReg, offset segmenttSs
    jmp     cmdProcessing
handleDsSeg:
    mov     currentSegReg, offset segmenttDs
    jmp     cmdProcessing
handleFsSeg:
    mov     currentSegReg, offset segmenttFs
    jmp     cmdProcessing
handleGsSeg:
    mov     currentSegReg, offset segmenttGs
    jmp     cmdProcessing


writeFileHandler PROC 
    mov     ah, 40h
    mov     bx, fileHandle
    int     21h
    ret  
writeFileHandler ENDP

bufferWriteHandler PROC
    push    si
    add     outDataLen, cx
    
    or      currentSegReg, 0
    je      defaultSegProc
    or      flagSegNext, 0
    jne     customSegProc
    
defaultSegProc:
    mov     si, ax
    rep     movsb
    jmp     bufferDoneProc

customSegProc:
    mov     si, currentSegReg
    movsb
    movsb
    sub     cx, 2
    mov     si, ax
    add     si, 2
    rep     movsb
    mov     currentSegReg, 0
    mov     flagSegNext, 0
    
bufferDoneProc:    
    pop     si
    ret
bufferWriteHandler ENDP

processDisassembly PROC
    mov     di, offset outputData
    
    cmp     al, 0F6h
    jae     processNegation
    
    writeBufferOffset txtShr, lenShr
    jmp     parseOpcodeProc   

processNegation:
    writeBufferOffset txtNeg, lenNeg
    or      flagNeg, 1
    
parseOpcodeProc:
    lodsb
    dec     cmdCounter
    push    ax
    
    movzx   bp, al
    movzx   bx, al
    and     bp, 0000000011000000b
    shr     bp, 6                
    mov     modValue, bp
    and     bx, 0000000000000111b
    
    cmp     bp, 11b              
    je      writeOperandProc
    
    or      flagAddrSize, 0
    je      checkAddrModeProc
    cmp     bx, 100b
    jne     checkAddrModeProc
    or      flagSib, 1    
    
checkAddrModeProc:    
    push    bx
    mov     bx, flagOpSize
    shl     bx, 1
    writeBufferOffset ptrTypeList[bx], ptrTypeLen[bx]
    or      currentSegReg, 0
    je      noSegProc
    or      flagSegNext, 1
noSegProc:
    pop     bx
    
    or      flagAddrSize, 0
    je      use16BitAddrProc
    call    handle32BitAddr
    jmp     writeOperandProc

use16BitAddrProc:    
    cmp     bp, 01b
    jne     checkDisp16Proc
    or      flagDisp, 1
    cmp     bx, 110b
    jne     writeOperandProc
    or      flagDisp8Bp, 1
    jmp     writeOperandProc
    
checkDisp16Proc:
    cmp     bp, 10b
    je      setDisp16Proc
    cmp     bx, 110b
    jne     writeOperandProc
setDisp16Proc:
    mov     dispCount, 4
    or      flagDisp, 1
    
writeOperandProc:
    cmp     bp, 11b
    jne     checkOpSizeProc 
    cmp     flagOpSize, 2
    je      byteOperandProc
    cmp     flagOpSize, 1
    je      dwordOperandProc  

checkOpSizeProc:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    
    or      flagAddrSize, 0
    je      useWordAddrProc
    
    writeBuffer addr32List[DS:[bp]], lenAddr32[DS:[bp]]
    pop     bp
    or      flagSib, 0
    je      nextStageProc
    call    handleSibProc
    jmp     nextStageProc
    
useWordAddrProc:
    or      flagNeg, 0
    jne     write16NegProc
    
    writeBuffer addr16List[DS:[bp]], lenAddr16[DS:[bp]]
    pop     bp
    jmp     nextStageProc

write16NegProc:
    writeBuffer addr16List[DS:[bp]], lenAddr16Neg[DS:[bp]]
    pop     bp
    jmp     nextStageProc

dwordOperandProc:
    shl     bx, 1
    
    or      flagNeg, 0
    jne     writeDwordNegProc
    
    writeBuffer dwordRegList[bx], 5
    jmp     nextStageProc
    
writeDwordNegProc:
    writeBuffer dwordRegList[bx], 3
    jmp     nextStageProc
    
byteOperandProc:
    shl     bx, 1
    
    or      flagNeg, 0
    jne     writeByteNegProc
    
    writeBuffer byteRegList[bx], 4
    jmp     nextStageProc
    
writeByteNegProc:
    writeBuffer byteRegList[bx], 2
    
nextStageProc:   
    cmp     bp, 11b
    je      disasmDoneProc
    or      flagDisp, 0
    je      writeFinalProc
    or      flagSib, 0
    je      writePlusProc
    writeBufferOffset strPlus, lenPlus
    
writePlusProc:
    call    writeDisplacement

writeFinalProc:
    or      flagNeg, 0
    jne     writeBrNegProc
    
    writeBufferOffset closeBr, lenCloseBr
    jmp     disasmDoneProc
    
writeBrNegProc:
    writeBufferOffset closeBr, 1
    
disasmDoneProc:
    pop     ax
    ret
processDisassembly ENDP

finalizeOutput PROC
    writeBufferOffset nlSequence, nlLength
    writeFile outputData, outDataLen
    
    mov     flagSecondOp, 0
    mov     outDataLen, 0
    mov     flagDisp, 0
    mov     flagOpSize, 0
    mov     flagAddrSize, 0
    mov     flagSib, 0
    mov     flagNeg, 0
    
    ret
finalizeOutput ENDP

handle32BitAddr PROC
    or      bp, 0
    jne     checkDisp8Proc
    cmp     bx, 101b
    jne     addrDoneProc
    or      flagDisp, 1
    or      dispCount, 8
    jmp     addrDoneProc
    
checkDisp8Proc:
    cmp     bp, 01b
    jne     setDisp32Proc
    cmp     bx, 101b
    jne     checkNextProc
    or      flagDisp8Bp, 1
checkNextProc:
    or      dispCount, 2
    or      flagDisp, 1
    jmp     addrDoneProc
    
setDisp32Proc:
    mov     dispCount, 8
    or      flagDisp, 1

addrDoneProc:
    ret
handle32BitAddr ENDP

handleSibProc PROC
    lodsb
    dec     cmdCounter
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
    jne     baseOkProc
    or      modValue, 0
    jne     baseOkProc
    pop     bx
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    writeBuffer sibEntries[DS:[bp]], sibLengths[DS:[bp]]
    lodsd
    sub     cmdCounter, 4
    or      eax, eax
    jnz     hasDispProc
    jmp     sibDoneProc
   
hasDispProc:
    sub     si, 4
    add     cmdCounter, 4
    writeBufferOffset strPlus, lenPlus    
    push    dispCount
    mov     dispCount, 8
    call    writeDisplacement
    pop     dispCount
    jmp     sibDoneProc
    
baseOkProc:
    shl     bx, 1
    writeBuffer extRegList[bx], lenExtReg
    pop     bx
    cmp     bx, 100b
    je      sibDoneProc
    
    writeBufferOffset strPlus, lenPlus
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    writeBuffer sibEntries[DS:[bp]], sibLengths[DS:[bp]]
    
sibDoneProc:
    pop     bx
    pop     bp
    ret
handleSibProc ENDP

writeDisplacement PROC
    xor     dx, dx
    mov     bx, 16
    mov     cx, dispCount
    inc     cx

    or      flagDisp8Bp, 0
    je      normalDispProc
    lodsb
    dec     cmdCounter
    mov     flagDisp8Bp, 0
    or      al, al
    jnz     saveDispProc
    sub     di, 3
    sub     outDataLen, 3
    jmp     dispSkipProc    
    
normalDispProc:    
    cmp     dispCount, 2
    je      byteDispProc
    cmp     dispCount, 4
    je      wordDispProc
    
    lodsd
    sub     cmdCounter, 4
    or      flagDisp32, 1
    jmp     saveDispProc
    
wordDispProc:
    lodsw
    sub     cmdCounter, 2
    jmp     saveDispProc

byteDispProc:
    lodsb
    dec     cmdCounter

saveDispProc:
    push    si
    mov     si, offset dispBuffer
    add     si, 8
dispLoopProc:
    idiv    bx
    cmp     dl, 9
    jbe     storeDigitProc
    add     dl, 37h
    jmp     storeCharProc
storeDigitProc:
    or      dl, 30h
storeCharProc:
    mov     [si], dl
    dec     dispCount
    jz      dispEndProc
    xor     dl, dl
    dec     si
    cmp     dispCount, 4
    jne     nextCharProc
    shr     eax, 16
nextCharProc:
    jmp     dispLoopProc
dispEndProc:
    mov     flagDisp32, 0
    cmp     dl, 39h
    jna     writeBufferProc
    dec     si
    mov     byte ptr [si], '0'
    inc     cx

writeBufferProc:
    add     outDataLen, cx
    rep     movsb
    pop     si
    mov     dispCount, 2
dispSkipProc:
    ret
writeDisplacement ENDP

exitProgramm:
    mov     ah, 03Eh
    mov     bx, fileHandle
    int     21h
    
    mov     ah, 04Ch
    int     21h
    end     Start