.model small
.486
.stack 100h

.data

comFileName                 db      "COM.COM", 0
resFileName                 db      "RES.ASM", 0
crLf                        db      13, 10
crLfLen                     EQU     2
comError                    db      "Error with openning COM file", 13, 10, "$"
resError                    db      "Error with creating RES file", 13, 10, "$"
exitMessage                 db      "Exiting...$"

regAL                       db      "AL, "
regCL                       db      "CL, "
regDL                       db      "DL, "
regBL                       db      "BL, "
regAH                       db      "AH, "
regCH                       db      "CH, "
regDH                       db      "DH, "
regBH                       db      "BH, "
regAX                       db      "AX, "
regCX                       db      "CX, "
regDX                       db      "DX, "
regBX                       db      "BX, "
regSP                       db      "SP, "
regBP                       db      "BP, "
regSI                       db      "SI, "
regDI                       db      "DI, "
regs16len                   EQU     4
regEAX                      db      "EAX, "
regECX                      db      "ECX, "
regEDX                      db      "EDX, "
regEBX                      db      "EBX, "
regESP                      db      "ESP, "
regEBP                      db      "EBP, "
regESI                      db      "ESI, "
regEDI                      db      "EDI, "
regsDwordLen                EQU     5

arrayRegsByte               dw      regAL,  regCL,  regDL,  regBL,  regAH,  regCH,  regDH,  regBH                                                                           
arrayRegsWord               dw      regAX,  regCX,  regDX,  regBX,  regSP,  regBP,  regSI,  regDI
arrayRegsDword              dw      regEAX, regECX, regEDX, regEBX, regESP, regEBP, regESI, regEDI

BX_SI                       db      "DS:[BX + SI + "
BX_DI                       db      "DS:[BX + DI + "
BP_SI                       db      "SS:[BP + SI + "
BP_DI                       db      "SS:[BP + DI + "
SI_                         db      "DS:[SI + "
DI_                         db      "DS:[DI + "
disp_                       db      "DS:["
BP_disp                     db      "SS:[BP + "
BX_                         db      "DS:[BX + "

array16BitModRM             dw      BX_SI, BX_DI, BP_SI, BP_DI, SI_,   DI_,   disp_,   BX_
                            dw      BX_SI, BX_DI, BP_SI, BP_DI, SI_,   DI_,   BP_disp, BX_
                            dw      BX_SI, BX_DI, BP_SI, BP_DI, SI_,   DI_,   BP_disp, BX_
                            dw      regAX, regCX, regDX, regBX, regSP, regBP, regSI,   regDI
array16BitModRMLen          dw      11, 11, 11, 11, 6, 6, 4, 6
                            dw      14, 14, 14, 14, 9, 9, 9, 9
                            dw      14, 14, 14, 14, 9, 9, 9, 9
                            dw      4,   4,  4,  4, 4, 4, 4, 4

EAX_                        db      "DS:[EAX + "
ECX_                        db      "DS:[ECX + "
EDX_                        db      "DS:[EDX + "
EBX_                        db      "DS:[EBX + "
EBP_                        db      "SS:[EBP + "
ESI_                        db      "DS:[ESI + "
EDI_                        db      "DS:[EDI + "

array32BitModRM             dw      EAX_,  ECX_,  EDX_,  EBX_,  disp_, disp_, ESI_,  EDI_
                            dw      EAX_,  ECX_,  EDX_,  EBX_,  disp_, EBP_,  ESI_,  EDI_
                            dw      EAX_,  ECX_,  EDX_,  EBX_,  disp_, EBP_,  ESI_,  EDI_
                            dw      regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI
array32BitModRMLen          dw      7,   7,  7,  7, 4,  4,  7,  7
                            dw      10, 10, 10, 10, 4, 10, 10, 10
                            dw      10, 10, 10, 10, 4, 10, 10, 10
                            dw       4,  4,  4,  4, 4,  4,  4,  4

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

arraySIBIndexSS             dw      regEAX, regECX, regEDX, regEBX, 0, regEBP, regESI, regEDI
                            dw      EAX_2,  ECX_2,  EDX_2,  EBX_2,  0, EBP_2,  ESI_2,  EDI_2
                            dw      EAX_4,  ECX_4,  EDX_4,  EBX_4,  0, EBP_4,  ESI_4,  EDI_4
                            dw      EAX_8,  ECX_8,  EDX_8,  EBX_8,  0, EBP_8,  ESI_8,  EDI_8
arraySIBIndexSSLen          dw      8   dup (3)
                            dw      3*8 dup (5)

arrayRegBase                dw      regEAX, regECX, regEDX, regEBX, regESP, regEBP, regESI, regEDI
regBaseLen                  EQU     3

sahfMnem                    db      "SAHF", 0Dh, 0Ah
xaddMnem                    db      "XADD   "
shlMnem                     db      "SHL    "
wordPtr                     db      "word ptr "
dwordPtr                    db      "dword ptr "
bytePtr                     db      "byte ptr "
sahfMnemLen                 EQU     6
xaddMnemLen                 EQU     7
shlMnemLen                  EQU     7
bytePtrLen                  EQU     9
wordPtrLen                  EQU     9
dwordPtrLen                 EQU     10
arrayPtrs                   dw      wordPtr,    dwordPtr,    bytePtr
arrayPtrsLen                dw      wordPtrLen, dwordPtrLen, bytePtrLen

plus                        db      " + "
plusLen                     EQU     3
closeBracket                db      "], "
closeBracketLen             EQU     3
asciiOne                    db      "1"

ESseg                       db      "ES"
CSseg                       db      "CS"
SSseg                       db      "SS"
DSseg                       db      "DS"
FSseg                       db      "FS"
GSseg                       db      "GS"

arrayOP                     dw      15 dup(findNextOpcode)
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

immBuffer                   db      '000000000h'
dispCounter                 dw      2
operSizeFlag                dw      0
addrSizeFlag                dw      0
instrBuffer                 db      64 dup (?)
btsFlag                     db      0
SIBbyteFlag                 db      0
disp32InSIBFlag             db      0
disp32Flag                  db      ?
instrBufLen                 dw      ?
answerFile                  db      ?
dataBytes                   dw      ?
dispFlag                    db      ?
disp8BPFlag                 db      ?
nextIsSegFlag               db      ?
segAddress                  dw      ?
modd                        dw      ?
dataBuffer                  db      10 dup (?)
xaddFlag                    db      ?
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
findNextOpcode:
    mov     al, 1
    call    readFile
    movzx   bx, al
    shl     bx, 1
    jmp     arrayOP[bx]
byteSahf:
    mov     dx, offset sahfMnem
    mov     cx, sahfMnemLen
    call    writeToFile    
    jmp     findNextOpcode
byteXadd:
    mov     xaddFlag, 1
    mov     al, 1
    call    readFile
    cmp     al, 0C0h
    jne     no8bit
    or      operSizeFlag, 2
no8bit:
    call    disasmFunction
    movzx   bx, al
    and     bl, 111000b
    mov     cx, 2
    shr     bx, cl
    mov     ax, arrayRegsWord[bx]
    or      operSizeFlag, 0
    je      xaddEnd
    mov     ax, arrayRegsByte[bx]
    cmp     operSizeFlag, 1
    jne     xaddEnd
    mov     ax, arrayRegsDword[bx]
    inc     cx
xaddEnd:
    call    writeToBuffer
    call    endAnswerBuffer
    jmp     findNextOpcode
    
byteShlC0:
    or      operSizeFlag, 2
byteShlC1:
    call    disasmFunction
    call    writeToBufferImm
    call    endAnswerBuffer
    jmp     findNextOpcode
    
byteShlD0:
    or      operSizeFlag, 2
byteShlD1:
    call    disasmFunction
    mov     ax, offset asciiOne
    mov     cx, 1
    call    writeToBuffer
    call    endAnswerBuffer
    jmp     findNextOpcode
    
byteShlD2:
    or      operSizeFlag, 2
byteShlD3:
    call    disasmFunction
    mov     ax, offset regCL
    mov     cx, 2
    call    writeToBuffer
    call    endAnswerBuffer
    jmp     findNextOpcode

byteOper:
    or      operSizeFlag, 1
    jmp     findNextOpcode
byteAddr:
    or      addrSizeFlag, 1
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

writeToFile PROC 
    mov     ah, 40h
    mov     bx, resFileHandle
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
    mov     al, 1
    call    readFile
    mov     disp8BPFlag, 0
    or      al, al
    jnz     saveSi
    sub     di, 3
    sub     instrBufLen, 3
    jmp     skip    
    
normal:    
    cmp     dispCounter, 2
    je      byteImm
    cmp     dispCounter, 4
    je      wordImm
    mov     al, 4
    call    readFile
    or      disp32Flag, 1
    jmp     saveSi
    
wordImm:
    mov     al, 2
    call    readFile
    jmp     saveSi

byteImm:
    mov     al, 1
    call    readFile
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
    add     instrBufLen, cx
    rep     movsb
    pop     si
    mov     dispCounter, 2
skip:
    ret
writeToBufferImm ENDP



writeToBuffer PROC
    push    si
    add     instrBufLen, cx
    
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
    mov     di, offset instrBuffer
    or      xaddflag, 0
    jnz     xaddTrue 
    mov     ax, offset shlMnem
    mov     cx, shlMnemLen
    call    writeToBuffer
    jmp     goToLodsb   

xaddTrue:
    mov     ax, offset xaddMnem
    mov     cx, xaddMnemLen
    call    writeToBuffer
goToLodsb:
    mov     al, 1
    call    readFile
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
    or      xaddflag, 0
    jnz     noTypeOvr
    mov     ax, offset arrayPtrs[bx]
    mov     cx, arrayPtrsLen[bx]
    call    writeToBuffer
noTypeOvr:
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
    
    mov     ax, ds:[bp + array32BitModRM]
    mov     cx, ds:[bp + array32BitModRMLen]
    call    writeToBuffer
    pop     bp
    or      SIBbyteFlag, 0
    je      continue
    call    SIB
    jmp    continue
bufferWord:
    mov     ax, ds:[bp + array16BitModRM]
    mov     cx, ds:[bp + array16BitModRMLen]
    call    writeToBuffer
    pop     bp
    jmp     continue
bufferDword:
    shl     bx, 1
    mov     ax, arrayRegsDword[bx]
    mov     cx, regsDwordLen
    call    writeToBuffer
    jmp     continue
bufferByte:
    shl     bx, 1
    mov     ax, arrayRegsByte[bx]
    mov     cx, regs16len
    call    writeToBuffer
continue:   
    cmp     bp, 11b
    je      reting
    or      dispFlag, 0
    je      writeLastOperand
    or      SIBbyteFlag, 0
    je      writeWrite
    mov     ax, offset plus
    mov     cx, plusLen
    call    writeToBuffer
writeWrite:
    call    writeToBufferImm

writeLastOperand:
    mov     ax, offset closeBracket
    mov     cx, closeBracketLen
    call    writeToBuffer
reting:
    pop     ax
    ret
disasmFunction ENDP
    


endAnswerBuffer PROC
    mov     ax, offset crLf
    mov     cx, crLfLen
    call    writeToBuffer
    mov     dx, offset instrBuffer
    mov     cx, instrBufLen
    call    writeToFile    
    mov     instrBufLen, 0
    mov     dispFlag, 0
    mov     operSizeFlag, 0
    mov     addrSizeFlag, 0
    mov     SIBbyteFlag, 0
    mov     xaddFlag, 0 
    ret
endAnswerBuffer ENDP



addressing32Bit PROC
    or      bp, 0
    jne     checkDisp8
    cmp     bx, 101b
    jne     retGo
    or      dispFlag, 1
    or      dispCounter, 8
    jmp     retGo
    
checkDisp8:
    cmp     bp, 01b
    jne     disp32write
    cmp     bx, 101b
    jne     checkDisp8Next
    or      disp8BPFlag, 1
checkDisp8Next:
    or      dispCounter, 2
    or      dispFlag, 1
    jmp     retGo
    
disp32write:
    mov     dispCounter, 8
    or      dispFlag, 1

retGo:
    ret
addressing32Bit ENDP



SIB PROC
    mov     al, 1
    call    readFile
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
    mov     ax, ds:[bp + arraySIBIndexSS]
    mov     cx, ds:[bp + arraySIBIndexSSLen]
    call    writeToBuffer
    mov     al, 4
    call    readFile
    or      eax, eax
    jnz     haveDisp
    jmp     retRet
   
haveDisp:
    sub     si, 4
    mov     ax, offset plus
    mov     cx, plusLen
    call    writeToBuffer   
    push    dispCounter
    mov     dispCounter, 8
    call    writeToBufferImm
    pop     dispCounter
    jmp     retRet
    
not101Base:
    shl     bx, 1
    mov     ax, arrayRegBase[bx]
    mov     cx, regBaseLen
    call    writeToBuffer
    pop     bx
    cmp     bx, 100b
    je      retRet
    
    mov     ax, offset plus
    mov     cx, plusLen
    call    writeToBuffer   
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    mov     ax, ds:[bp + arraySIBIndexSS]
    mov     cx, ds:[bp + arraySIBIndexSSLen]
    call    writeToBuffer
retRet:
    pop     bx
    pop     bp
    ret
SIB ENDP



exit:
    mov     ah, 03Eh
    mov     bx, resFileHandle
    int     21h
    mov     bx, comFileHandle
    int     21h
    mov     dx, offset exitMessage
    mov     ah, 09h
    int     21h
    mov     ah, 04Ch
    int     21h


; cl is the number of bytes
readFile proc
    cmp     si, databytes
    jna     readBuffer
    push    ax cx dx bx
    mov     ah, 3Fh
    mov     cx, size dataBuffer
    mov     dx, offset dataBuffer
    mov     si, dx
    mov     bx, comFileHandle
    int     21h
    or      ax, ax
    jz      exit
    add     ax, si
    mov     databytes, ax
    pop     bx dx cx ax
readBuffer:
    cmp     al, 2
    ja      getDword
    jb      getByte
    lodsw   
    ret
getByte:
    lodsb
    ret
getDword:
    lodsd
    ret
endp

    end     Start
