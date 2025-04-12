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
comFileName                 db      "commands.com", 0
crfl                        db      0Dh, 0Ah
crflLen                     EQU     $ - crfl
                                   
arrayOP                     dw      32 dup (0),\
                                    0, 0, 0, 0, 0, 0, offset sES, 0, 0, 0, 0, 0, 0, 0, offset sCS, 0,\
                                    0, 0, 0, 0, 0, 0, offset sSS, 0, 0, 0, 0, 0, 0, 0, offset sDS, 0,\
                                    32 dup (0),\
                                    0, 0, 0, 0, offset sFS, offset sGS, offset operSize, offset addrSize, 0, 0, 0, 0, 0, 0, 0, 0,\
                                    32 dup (0),\
                                    14 dup (0), offset sahfOP, 0,\          
                                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, offset btsOPSecond, 0, 0, 0, 0,\
                                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, offset btsOPFirst, 0, 0, 0, 0, 0,\
                                    offset rclOP_C0, offset rclOP_C1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,\
                                    offset rclOP_D0, offset rclOP_D1, offset rclOP_D2, offset rclOP_D3      

BTS_                        db      "BTS    "
BTS_Len                     EQU     $ - BTS_
RCL_                        db      "RCL    "
RCL_Len                     EQU     $ - RCL_
wordPtr                     db      "word ptr "
wordPtrLen                  EQU     $ - wordPtr
dwordPtr                    db      "dword ptr "
dwordPtrLen                 EQU     $ - dwordPtr
bytePtr                     db      "byte ptr "
bytePtrLen                  EQU     $ - bytePtr
arrayPtrs                   dw      wordPtr, dwordPtr, bytePtr
arrayPtrsLen                dw      wordPtrLen, dwordPtrLen, bytePtrLen

BX_SI                       db      "DS:[BX + SI + "
BX_DI                       db      "DS:[BX + DI + "
BP_SI                       db      "SS:[BP + SI + "
BP_DI                       db      "SS:[BP + DI + "
SI_                         db      "DS:[SI + "
DI_                         db      "DS:[DI + "
disp_First                  db      "DS:["
BP_disp                     db      "SS:[BP + "
BX_                         db      "DS:[BX + "

EAX_                        db      "DS:[EAX + "
ECX_                        db      "DS:[ECX + "
EDX_                        db      "DS:[EDX + "
EBX_                        db      "DS:[EBX + "
EBP_                        db      "SS:[EBP + "
ESI_                        db      "DS:[ESI + "
EDI_                        db      "DS:[EDI + "

EAX_2                       db      "EAX*2"
ECX_2                       db      "ECX*2"
EDX_2                       db      "EDX*2"
EBX_2                       db      "EBX*2"
EBP_2                       db      "EBP*2"
ESI_2                       db      "ESI*2"
EDI_2                       db      "EDI*2"

EAX_4                       db      "EAX*4"
ECX_4                       db      "ECX*4"
EDX_4                       db      "EDX*4"
EBX_4                       db      "EBX*4"
EBP_4                       db      "EBP*4"
ESI_4                       db      "ESI*4"
EDI_4                       db      "EDI*4"

EAX_8                       db      "EAX*8"
ECX_8                       db      "ECX*8"
EDX_8                       db      "EDX*8"
EBX_8                       db      "EBX*8"
EBP_8                       db      "EBP*8"
ESI_8                       db      "ESI*8"
EDI_8                       db      "EDI*8"

plus                        db      " + "
plusLen                     EQU     $ - plus

arraySIBIndexSS             dw      regEAX, regECX, regEDX, regEBX, 0, regEBP, regESI, regEDI,\
                                    EAX_2, ECX_2, EDX_2, EBX_2, 0, EBP_2, ESI_2, EDI_2,\
                                    EAX_4, ECX_4, EDX_4, EBX_4, 0, EBP_4, ESI_4, EDI_4,\
                                    EAX_8, ECX_8, EDX_8, EBX_8, 0, EBP_8, ESI_8, EDI_8

arraySIBIndexSSLen          dw      8 dup (3), 24 dup (5)
                                    
memoryLast                  db      "], "
memoryLastLen               EQU     $ - memoryLast


regAL                       db      "AL, "
regCL                       db      "CL, "
regDL                       db      "DL, "
regBL                       db      "BL, "
regAH                       db      "AH, "
regCH                       db      "CH, "
regDH                       db      "DH, "
regBH                       db      "BH, "
regsByteLen                 EQU     4

regAX                       db      "AX, "
regCX                       db      "CX, "
regDX                       db      "DX, "
regBX                       db      "BX, "
regSP                       db      "SP, "
regBP                       db      "BP, "
regSI                       db      "SI, "
regDI                       db      "DI, "

regEAX                      db      "EAX, "
regECX                      db      "ECX, "
regEDX                      db      "EDX, "
regEBX                      db      "EBX, "
regESP                      db      "ESP, "
regEBP                      db      "EBP, "
regESI                      db      "ESI, "
regEDI                      db      "EDI, "
regsDwordLen                EQU     5

regBaseEAX                  db       "EAX"
regBaseECX                  db       "ECX"
regBaseEDX                  db       "EDX"
regBaseEBX                  db       "EBX"
regBaseESP                  db       "ESP"
regBaseEBP                  db       "EBP"
regBaseESI                  db       "ESI"
regBaseEDI                  db       "EDI"
regBaseLen                  EQU      3

arrayRegBase                dw       regBaseEAX, regBaseECX, regBaseEDX, regBaseEBX, regBaseESP, regBaseEBP, regBaseESI, regBaseEDI

ESseg                       db      "ES"
CSseg                       db      "CS"
SSseg                       db      "SS"
DSseg                       db      "DS"
FSseg                       db      "FS"
GSseg                       db      "GS"

one                         db      "1"

array16BitModRM             dw      BX_SI, BX_DI, BP_SI, BP_DI, SI_, DI_, disp_First, BX_,\
                                    BX_SI, BX_DI, BP_SI, BP_DI, SI_, DI_, BP_disp, BX_,\
                                    BX_SI, BX_DI, BP_SI, BP_DI, SI_, DI_, BP_disp, BX_,\
                                    regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI

array16BitModRMLen          dw      11, 11, 11, 11, 6, 6, 4, 6,\
                                    14, 14, 14, 14, 9, 9, 9, 9,\
                                    14, 14, 14, 14, 9, 9, 9, 9,\
                                    8 dup (4)
                                    
array32BitModRM             dw      EAX_, ECX_, EDX_, EBX_, disp_First, disp_First, ESI_, EDI_,\
                                    EAX_, ECX_, EDX_, EBX_, disp_First, EBP_, ESI_, EDI_,\
                                    EAX_, ECX_, EDX_, EBX_, disp_First, EBP_, ESI_, EDI_,\
                                    regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI

array32BitModRMLen          dw      7, 7, 7, 7, 4, 4, 7, 7,\
                                    10, 10, 10, 10, 4, 10, 10, 10,\
                                    10, 10, 10, 10, 4, 10, 10, 10,\
                                    8 dup (4)
                                    
arrayRegsByte               dw      regAL, regCL, regDL, regBL, regAH, regCH, regDH, regBH                                                                           
arrayRegsWord               dw      regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI
arrayRegsDword              dw      regEAX, regECX, regEDX, regEBX, regESP, regEBP, regESI, regEDI
arrayRegsLen                dw      2, 3, 2
                                        
answerFileName              db      "answer.asm", 0
sahfString                  db      "SAHF", 0Dh, 0Ah
sahfStringLength            EQU     6

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
    
    mov     ax, 03D00h
    mov     dx, offset comFileName
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