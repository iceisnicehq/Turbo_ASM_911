.model small
.486
.stack 100h

writeChar MACRO char
    mov     al, char           
    stosb       
ENDM

writeFileOffset MACRO string, countOfBytes
    mov     dx, offset string
    mov     cx, countOfBytes
    call    writeToFile    
ENDM

writeFile MACRO string, countOfBytes
    mov     dx, string
    mov     cx, countOfBytes
    call    writeToFile    
ENDM

writeBuffer MACRO string, len
    push    si
    mov     si, string
    mov     cx, len
    add     answerBufferLen, cx
    rep     movsb
    pop     si
ENDM

writeBufferOffset MACRO string, len
    push    si
    mov     si, offset string
    mov     cx, len
    add     answerBufferLen, cx
    rep     movsb
    pop     si
ENDM

.data
comFileName                 db      "command2.com", 0
crfl                        db      0Dh, 0Ah
crflLen                     EQU     $ - crfl
                                   
arrayOP                     dw      32 dup (0),\
                                    0, 0, 0, 0, 0, 0, offset sES, 0, 0, 0, 0, 0, 0, 0, offset sCS, 0,\;2
                                    0, 0, 0, 0, 0, 0, offset sSS, 0, 0, 0, 0, 0, 0, 0, offset sDS, 0,\;3
                                    32 dup (0),\
                                    0, 0, 0, 0, offset sFS, offset sGS, offset operSize, offset addrSize, 0, 0, 0, 0, 0, 0, 0, 0,\;6
                                    32 dup (0),\
                                    14 dup (0), offset sahfOP, 0,\;9          
                                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, offset btsOPSecond, 0, 0, 0, 0,\;A
                                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, offset btsOPFirst, 0, 0, 0, 0, 0,\;B
                                    offset rclOP_C0, offset rclOP_C1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,\;C
                                    offset rclOP_D0, offset rclOP_D1, offset rclOP_D2, offset rclOP_D3;D      

BTS_                        db      "BTS    "
BTS_Len                     EQU     $ - BTS_
wordPtr                     db      "word ptr "
wordPtrLen                  EQU     $ - wordPtr
dwordPtr                    db      "dword ptr "
dwordPtrLen                 EQU     $ - dwordPtr
arrayPtrs                   dw      wordPtr, dwordPtr
arrayPtrsLen                dw      wordPtrLen, dwordPtrLen

BX_SI                       db      "DS:[BX + SI + "
BX_DI                       db      "DS:[BX + DI + "
BP_SI                       db      "SS:[BP + SI + "
BP_DI                       db      "SS:[BP + DI + "
SI_                         db      "DS:[SI + "
DI_                         db      "DS:[DI + "
disp16_First                db      "DS:["
BP_disp                     db      "SS:[BP + "
memoryLast                  db      "], "
memoryLastLen               EQU     $ - memoryLast
BX_                         db      "DS:[BX + "
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

array16BitModRM             dw      BX_SI, BX_DI, BP_SI, BP_DI, SI_, DI_, disp16_First, BX_,\
                                    BX_SI, BX_DI, BP_SI, BP_DI, SI_, DI_, BP_disp, BX_,\
                                    BX_SI, BX_DI, BP_SI, BP_DI, SI_, DI_, BP_disp, BX_,\
                                    regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI

array16BitModRMLen          dw      11, 11, 11, 11, 6, 6, 4, 6,\
                                    14, 14, 14, 14, 9, 9, 9, 9,\
                                    14, 14, 14, 14, 9, 9, 9, 9,\
                                    8 dup (4)
                                                                                              
arrayRegsWord               dw      regAX, regCX, regDX, regBX, regSP, regBP, regSI, regDI
arrayRegsDword              dw      regEAX, regECX, regEDX, regEBX, regESP, regEBP, regESI, regEDI
arrayRegsLen                dw      2, 3

                                     
answerFileName              db      "answer.txt", 0
sahfString                  db      "SAHF", 0Dh, 0Ah
sahfStringLength            EQU     $ - sahfString

immBuffer                   db      '000000000h'
dispCounter                 dw      2
answerBuffer                db      100 dup (?)
answerBufferLen             dw      ?
answerFile                  db      ?
cycleCount                  dw      ?
dispFlag                    db      ?
commandsBuffer              db      2048 dup (?)
disp8BPFlag                 db      ?
fileNumber                  dw      ?
operSizeFlag                dw      0


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
    mov     di, offset answerBuffer
    writeBufferOffset BTS_, BTS_Len
    
    lodsb
    dec     cycleCount

    movzx   bp, al
    movzx   bx, al
    and     bp, 0000000011000000b
    shr     bp, 6
    and     bx, 0000000000000111b
    
    cmp     bp, 11b
    je      writeOperand
    
    push    bx
    mov     bx, operSizeFlag
    shl     bx, 1
    writeBufferOffset arrayPtrs[bx], arrayPtrsLen[bx]
    pop     bx
    
    cmp     bp, 01b
    jne     disp16check
    or      dispFlag, 1
    or      disp8BPFlag, 1
    cmp     bx, 110b
    jne     writeOperand
    inc     disp8BPFlag
    jmp     writeOperand
    
disp16check:
    cmp     bp, 10b
    je      disp16write
    cmp     bx, 110b
    jne     writeOperand
disp16write:
    jne     writeOperand
    mov     dispCounter, 4
    or      dispFlag, 1
    
writeOperand:
    or      operSizeFlag, 0
    je      bufferWord
    cmp     bp, 11b
    je      bufferDword
bufferWord:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    writeBuffer array16BitModRM(DS:[bp]), array16BitModRMLen(DS:[bp])
    pop     bp
    jmp SHORT nextStage
    
bufferDword:
    shl     bx, 1
    writeBuffer arrayRegsDword[bx], regsDwordLen

nextStage:
    cmp     bp, 11b
    je      imm
    or      dispFlag, 0
    je      writeLastOperand
    call    writeToBufferImm

writeLastOperand:
    writeBufferOffset memoryLast, memoryLastLen
imm:
    call    writeToBufferImm
      
    writeBufferOffset crfl, crflLen
    writeFileOffset answerBuffer, answerBufferLen
    mov     answerBufferLen, 0
    mov     dispFlag, 0
    mov     operSizeFlag, 0
    
    jmp     cycleForCommands


btsOPSecond:
    mov     di, offset answerBuffer
    writeBufferOffset BTS_, BTS_Len
    
    lodsb
    dec     cycleCount

    movzx   bp, al
    and     bp, 0000000000111000b
    shr     bp, 3
    push    bp                          ;reg in stack
    
    movzx   bp, al
    movzx   bx, al
    and     bp, 0000000011000000b
    shr     bp, 6
    and     bx, 0000000000000111b
    
    cmp     bp, 11b
    je      writeOperand_2
    
    push    bx
    mov     bx, operSizeFlag
    shl     bx, 1
    writeBufferOffset arrayPtrs[bx], arrayPtrsLen[bx]
    pop     bx
    
    cmp     bp, 01b
    jne     disp16check_2
    or      dispFlag, 1
    or      disp8BPFlag, 1
    cmp     bx, 110b
    jne     writeOperand_2
    inc     disp8BPFlag
    jmp     writeOperand_2
    
disp16check_2:
    cmp     bp, 10b
    je      disp16write_2
    cmp     bx, 110b
    jne     writeOperand_2
disp16write_2:
    jne     writeOperand_2
    mov     dispCounter, 4
    or      dispFlag, 1
    
writeOperand_2:
    or      operSizeFlag, 0
    je      bufferWord_2
    cmp     bp, 11b
    je      bufferDword_2
bufferWord_2:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    writeBuffer array16BitModRM(DS:[bp]), array16BitModRMLen(DS:[bp])
    pop     bp
    jmp SHORT nextStage_2
    
bufferDword_2:
    shl     bx, 1
    writeBuffer arrayRegsDword[bx], regsDwordLen

nextStage_2:
    cmp     bp, 11b
    je      reg
    or      dispFlag, 0
    je      writeLastOperand_2
    call    writeToBufferImm

writeLastOperand_2:
    writeBufferOffset memoryLast, memoryLastLen
    
reg:
    pop     bx
    shl     bx, 1
    or      operSizeFlag, 0
    jne     dwordLastOperand_2
    writeBuffer arrayRegsWord[bx], 2
    jmp     end_2

dwordLastOperand_2:
    writeBuffer arrayRegsDword[bx], 3
    
end_2:   
    writeBufferOffset crfl, crflLen
    writeFileOffset answerBuffer, answerBufferLen
    mov     answerBufferLen, 0
    mov     dispFlag, 0
    mov     operSizeFlag, 0
    
    jmp     cycleForCommands
rclOP_C0:
    mov     ax, 5
rclOP_C1:
    mov     ax, 5
rclOP_D0:
    mov     ax, 5
rclOP_D1:
    mov     ax, 5
rclOP_D2:
    mov     ax, 5
rclOP_D3:
    mov     ax, 5
operSize:
    or      operSizeFlag, 1
    jmp     cycleForCommands
addrSize:
    mov     ax, 5

sDS:
    mov     ax, 5

sES:
    mov     ax, 5
sFS:
    mov     ax, 5
sGS:
    mov     ax, 5
sCS:
    mov     ax, 5
sSS:
    mov     ax, 5

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

    cmp     disp8BPFlag, 2
    jne     normal
    lodsb
    and     disp8BPFlag, 0
    dec     cycleCount
    or      al, al
    jnz     saveSi
    sub     di, 3
    sub     answerBufferLen, 3
    jmp SHORt skip    

normal:    
    cmp     dispCounter, 2
    je      byteImm
    cmp     dispCounter, 4
    je      wordImm
    
    lodsd
    sub     cycleCount, 4
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
    jmp     cycleStore
endCycleStore:
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
    
writeToBuffer ENDP

disasmBTS PROC

    

disasmBTS ENDP

ending:    
    mov     ah, 03Eh
    mov     bx, fileNumber
    int     21h
    
    mov     ah, 04Ch
    int     21h
    
    
    end     Start