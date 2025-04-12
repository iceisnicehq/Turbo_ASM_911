.model small
.486
.stack 100h


.data

commands_file                     db      "com.com", 0
entering                          db      0Dh, 0Ah
entering_length                   EQU     $ - entering
                                         
opcode_map                        dw      32 dup (0),\
                                          6 dup (0), offset seg_es, 7 dup (0), offset seg_cs, 0,\
                                          6 dup (0), offset seg_ss, 7 dup (0), offset seg_ds, 0,\
                                          8 dup (0), offset decRegs, offset decRegs, offset decRegs, offset decRegs, offset decRegs, offset decRegs, offset decRegs, offset decRegs,\
                                          16 dup (0),\
                                          4 dup (0), offset seg_fs, offset seg_gs, offset operSize, offset addrSize, 8 dup (0),\
                                          32 dup (0),\
                                          8 dup (0), offset cbwOP, 7 dup (0),\          
                                          16 dup (0),\
                                          13 dup (0), offset bsrOP, 0, 0,\
                                          48 dup (0),\
                                          14 dup (0), offset decFirstOP, offset decSecondOP
                                          
decr                              db      "DEC    "
decr_length                       EQU     $ - decr

bsrr                              db      "BSR    "
bsrr_length                       EQU     $ - bsrr

word_pointer                      db      "word ptr "
word_pointer_length               EQU     $ - word_pointer

dword_pointer                     db      "dword ptr "
dword_pointer_length              EQU     $ - dword_pointer

byte_pointer                      db      "byte ptr "
byte_pointer_length               EQU     $ - byte_pointer

pointers_array                    dw      word_pointer, dword_pointer, byte_pointer
pointers_length_array             dw      word_pointer_length, dword_pointer_length, byte_pointer_length

cbww                              db      "CBW", 0Dh, 0Ah
cbww_length                       EQU     5

cwdee                             db      "CWDE", 0Dh, 0Ah
cwdee_length                      EQU     6

bx_si                             db      "DS:[BX + SI + "
bx_di                             db      "DS:[BX + DI + "
bp_si                             db      "SS:[BP + SI + "
bp_di                             db      "SS:[BP + DI + "
sii_                              db      "DS:[SI + "
dii_                              db      "DS:[DI + "
only_disp_in_memory               db      "DS:["
bp_disp                           db      "SS:[BP + "
bxx_                              db      "DS:[BX + "

eax_                              db      "DS:[EAX + "
ecx_                              db      "DS:[ECX + "
edx_                              db      "DS:[EDX + "
ebx_                              db      "DS:[EBX + "
ebp_                              db      "SS:[EBP + "
esi_                              db      "DS:[ESI + "
edi_                              db      "DS:[EDI + "

eax_2                             db      "EAX*2"
ecx_2                             db      "ECX*2"
edx_2                             db      "EDX*2"
ebx_2                             db      "EBX*2"
ebp_2                             db      "EBP*2"
esi_2                             db      "ESI*2"
edi_2                             db      "EDI*2"

eax_4                             db      "EAX*4"
ecx_4                             db      "ECX*4"
edx_4                             db      "EDX*4"
ebx_4                             db      "EBX*4"
ebp_4                             db      "EBP*4"
esi_4                             db      "ESI*4"
edi_4                             db      "EDI*4"

eax_8                             db      "EAX*8"
ecx_8                             db      "ECX*8"
edx_8                             db      "EDX*8"
ebx_8                             db      "EBX*8"
ebp_8                             db      "EBP*8"
esi_8                             db      "ESI*8"
edi_8                             db      "EDI*8"

plus                              db      " + "
plus_length                       EQU     $ - plus

sib_array                         dw      eaxx, ecxx, edxx, ebxx, 0, ebpp, esii, edii,\
                                          eax_2, ecx_2, edx_2, ebx_2, 0, ebp_2, esi_2, edi_2,\
                                          eax_4, ecx_4, edx_4, ebx_4, 0, ebp_4, esi_4, edi_4,\
                                          eax_8, ecx_8, edx_8, ebx_8, 0, ebp_8, esi_8, edi_8

sib_length_array                  dw      8 dup (3), 24 dup (5)
                                          
right_parenthesis                 db      "], "
right_parenthesis_length          EQU     $ - right_parenthesis

al_                               db      "AL, "
cl_                               db      "CL, "
dl_                               db      "DL, "
bl_                               db      "BL, "
ah_                               db      "AH, "
ch_                               db      "CH, "
dh_                               db      "DH, "
bh_                               db      "BH, "

ax_                               db      "AX, "
cx_                               db      "CX, "
dx_                               db      "DX, "
bx_                               db      "BX, "
sp_                               db      "SP, "
bp_                               db      "BP, "
si_                               db      "SI, "
di_                               db      "DI, "

eaxx                              db      "EAX, "
ecxx                              db      "ECX, "
edxx                              db      "EDX, "
ebxx                              db      "EBX, "
espp                              db      "ESP, "
ebpp                              db      "EBP, "
esii                              db      "ESI, "
edii                              db      "EDI, "

extend_register_array             dw       eaxx, ecxx, edxx, ebxx, espp, ebpp, esii, edii
extend_register_length            EQU      3



ess                               db      "ES"
css                               db      "CS"
sss                               db      "SS"
dss                               db      "DS"
fss                               db      "FS"
gss                               db      "GS"

one                               db      "1"

form_16_bit_addressing            dw      bx_si, bx_di, bp_si, bp_di, sii_, dii_, only_disp_in_memory, bxx_,\
                                          bx_si, bx_di, bp_si, bp_di, sii_, dii_, bp_disp, bxx_,\
                                          bx_si, bx_di, bp_si, bp_di, sii_, dii_, bp_disp, bxx_,\
                                          ax_, cx_, dx_, bx_, sp_, bp_, si_, di_

form_16_bit_addressing_lengths    dw      11, 11, 11, 11, 6, 6, 4, 6,\
                                          14, 14, 14, 14, 9, 9, 9, 9,\
                                          14, 14, 14, 14, 9, 9, 9, 9,\
                                          8 dup (2)
                                  
form_32_bit_addressing            dw      eax_, ecx_, edx_, ebx_, only_disp_in_memory, only_disp_in_memory, esi_, edi_,\
                                          eax_, ecx_, edx_, ebx_, only_disp_in_memory, ebp_, esi_, edi_,\
                                          eax_, ecx_, edx_, ebx_, only_disp_in_memory, ebp_, esi_, edi_,\
                                          ax_, cx_, dx_, bx_, sp_, bp_, si_, di_

form_32_bit_addressing_lengths    dw      7, 7, 7, 7, 4, 4, 7, 7,\
                                          10, 10, 10, 10, 4, 10, 10, 10,\
                                          10, 10, 10, 10, 4, 10, 10, 10,\
                                          8 dup (4)
                                          
byte_register_array               dw      al_, cl_, dl_, bl_, ah_, ch_, dh_, bh_                                                                           
word_register_array               dw      ax_, cx_, dx_, bx_, sp_, bp_, si_, di_
dword_register_array              dw      eaxx, ecxx, edxx, ebxx, espp, ebpp, esii, edii
register_lengths_array            dw      2, 3, 2
                                              
answer_file                       db      "answer.asm", 0
answer_file_descriptor            dw      ?

disp_pattern                      db      '000000000h'
digit_counter                     dw      2

operSize_flag                     dw      ?
addrSize_flag                     dw      ?
SIBbyte_flag                      db      ?
disp32_flag                       db      ?
disp_flag                         db      ?
disp8BP_flag                      db      ?
nextIsSeg_flag                    db      ?
dec_flag                          db      ?
second_operand_flag               db      ?

segmentt                          dw      ?
modd                              dw      ?

answer_buffer                     db      100 dup (?)
answer_buffer_length              dw      ?

cycle_counter                     dw      ?
commands_buffer                   db      5000 dup (?)





write_to_file_macro MACRO string, countOfBytes
    mov     dx, offset string
    mov     cx, countOfBytes
    call    write_to_file_proc    
ENDM

write_to_buffer_macro MACRO string, len
    mov     ax, string
    mov     cx, len
    call    writeToBuffer
ENDM

write_to_buffer_offset_macro MACRO string, len
    mov     ax, offset string
    mov     cx, len
    call    writeToBuffer
ENDM



.code
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     ax, 3D00h
    mov     dx, offset commands_file
    int     21h
    
    mov     dx, offset commands_buffer
    mov     bx, ax
    mov     cx, 5000
    
    mov     ah, 3Fh
    int     21h
    mov     cycle_counter, ax

    mov     ah, 3Ch
    mov     dx, offset answer_file
    xor     cx, cx
    int     21h
    
    mov     answer_file_descriptor, ax
    mov     si, offset commands_buffer

cycleForCommands:    
    or      cycle_counter, 0
    jz      ending
    mov     answer_buffer_length, 0
    lodsb
    dec     cycle_counter
    cmp     al, 0Fh
    jne     noByte0F
    lodsb
    dec     cycle_counter   
noByte0F:
    movzx   bx, al
    shl     bx, 1
    call    opcode_map[bx]
    
cbwOP:
    or      operSize_flag, 0
    jnz     cwdeOP
    write_to_file_macro cbww, cbww_length
    jmp     cycleForCommands

cwdeOP:
    write_to_file_macro cwdee, cwdee_length
    mov     operSize_flag, 0
    jmp     cycleForCommands

decRegs:
    shr     bx, 1
    sub     bx, 48h
    shl     bx, 1
    push    bx
    
    write_to_file_macro decr, decr_length
    
    or      operSize_flag, 0
    jnz     decERegs
    
    pop     bx
    write_to_file_macro word_register_array[bx], 2
    write_to_file_macro entering, entering_length
    jmp     cycleForCommands
    
decERegs:
    pop     bx
    write_to_file_macro dword_register_array[bx], 3
    write_to_file_macro entering, entering_length
    mov     operSize_flag, 0
    jmp     cycleForCommands

decFirstOP:
    or      operSize_flag, 2
    call    disasmFunction
    call    endAnswerBuffer
    jmp     cycleForCommands
    
decSecondOP:
    call    disasmFunction
    call    endAnswerBuffer
    jmp     cycleForCommands
    
bsrOP:
    call    disasmFunction
    call    endAnswerBuffer
    jmp     cycleForCommands

operSize:
    or      operSize_flag, 1
    jmp     cycleForCommands
addrSize:
    or      addrSize_flag, 1
    jmp     cycleForCommands

seg_es:
    mov     segmentt, offset ess
    jmp     cycleForCommands
seg_cs:
    mov     segmentt, offset css
    jmp     cycleForCommands
seg_ss:
    mov     segmentt, offset sss
    jmp     cycleForCommands
seg_ds:
    mov     segmentt, offset dss
    jmp     cycleForCommands
seg_fs:
    mov     segmentt, offset fss
    jmp     cycleForCommands
seg_gs:
    mov     segmentt, offset gss
    jmp     cycleForCommands


    
write_to_file_proc PROC 
    mov     ah, 40h
    mov     bx, answer_file_descriptor
    int     21h
    ret  
write_to_file_proc ENDP



writeToBufferImm PROC
    xor     dx, dx
    mov     bx, 16
    mov     cx, digit_counter
    inc     cx

    or      disp8BP_flag, 0
    je      normal
    lodsb
    dec     cycle_counter
    mov     disp8BP_flag, 0
    or      al, al
    jnz     saveSi
    sub     di, 3
    sub     answer_buffer_length, 3
    jmp     skip    
    
normal:    
    cmp     digit_counter, 2
    je      byteImm
    cmp     digit_counter, 4
    je      wordImm
    
    lodsd
    sub     cycle_counter, 4
    or      disp32_flag, 1
    jmp     SHORT saveSi
    
wordImm:
    lodsw
    sub     cycle_counter, 2
    jmp     saveSi

byteImm:
    lodsb
    dec     cycle_counter

saveSi:
    push    si
    mov     si, offset disp_pattern
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
    dec     digit_counter
    jz      endCycleStore
    xor     dl, dl
    dec     si
    cmp     digit_counter, 4
    jne     nextChar
    shr     eax, 16
nextChar:
    jmp     cycleStore
endCycleStore:
    mov     disp32_flag, 0
    cmp     dl, 39h
    jna     storeToBuffer
    dec     si
    mov     byte ptr [si], '0'
    inc     cx

storeToBuffer:
    add     answer_buffer_length, cx
    rep     movsb
    pop     si
    mov     digit_counter, 2
skip:
    ret
writeToBufferImm ENDP



writeToBuffer PROC
    push    si
    add     answer_buffer_length, cx
    
    or      segmentt, 0
    je      standartSeg
    or      nextIsSeg_flag, 0
    jne     noStandartSeg
    
standartSeg:
    mov     si, ax
    rep     movsb
    jmp     return

noStandartSeg:
    mov     si, segmentt
    movsb
    movsb
    sub     cx, 2
    mov     si, ax
    add     si, 2
    rep     movsb
    mov     segmentt, 0
    mov     nextIsSeg_flag, 0
    
return:    
    pop     si
    ret
writeToBuffer ENDP



disasmFunction PROC
    mov     di, offset answer_buffer
    
    cmp     al, 0FEh
    jae     thisDEC
    
    write_to_buffer_offset_macro bsrr, bsrr_length
    jmp     goToLodsb   

thisDEC:
    write_to_buffer_offset_macro decr, decr_length
    or      dec_flag, 1
    
goToLodsb:
    lodsb
    dec     cycle_counter
    push    ax
    
    movzx   bp, al
    movzx   bx, al
    push    bp
    push    bx
    
    or      dec_flag, 0
    jnz     lastOpernad
    
    and     bp, 0000000000111000b
    shr     bp, 2
    
    or      operSize_flag, 0
    jz      itIs16BitOperand
    
    write_to_buffer_macro dword_register_array[DS:[bp]], 5
    jmp     lastOpernad
    
itIs16BitOperand:
    write_to_buffer_macro word_register_array[DS:[bp]], 4

lastOpernad:
    pop     bx
    pop     bp
    and     bp, 0000000011000000b
    shr     bp, 6                
    mov     modd, bp
    and     bx, 0000000000000111b
    
    cmp     bp, 11b              
    je      writeOperand
    
    or      addrSize_flag, 0
    je      nextNext
    cmp     bx, 100b
    jne     nextNext
    or      SIBbyte_flag, 1    
    
nextNext:    
    push    bx
    mov     bx, operSize_flag
    shl     bx, 1
    write_to_buffer_offset_macro pointers_array[bx], pointers_length_array[bx]
    or      segmentt, 0
    je      notSeg
    or      nextIsSeg_flag, 1
notSeg:
    pop     bx
    
    or      addrSize_flag, 0
    je      notAddressing32Bit
    call    addressing32Bit
    jmp     writeOperand

notAddressing32Bit:    
    cmp     bp, 01b
    jne     disp16check
    or      disp_flag, 1
    cmp     bx, 110b
    jne     writeOperand
    or      disp8BP_flag, 1
    jmp     writeOperand
    
disp16check:
    cmp     bp, 10b
    je      disp16write
    cmp     bx, 110b
    jne     writeOperand
disp16write:
    mov     digit_counter, 4
    or      disp_flag, 1
    
writeOperand:
    cmp     bp, 11b
    jne     checkAddrSize 
    cmp     operSize_flag, 2
    je      bufferByte
    cmp     operSize_flag, 1
    je      bufferDword  

checkAddrSize:
    push    bp
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    
    or      addrSize_flag, 0
    je      bufferWord
    
    write_to_buffer_macro form_32_bit_addressing(DS:[bp]), form_32_bit_addressing_lengths(DS:[bp])
    pop     bp
    or      SIBbyte_flag, 0
    je      nexStage
    call    SIB
    jmp     nexStage
    
bufferWord:
    write_to_buffer_macro form_16_bit_addressing(DS:[bp]), form_16_bit_addressing_lengths(DS:[bp])
    pop     bp
    jmp     nexStage
    
bufferDword:
    shl     bx, 1
    write_to_buffer_macro dword_register_array[bx], 3
    jmp     nexStage
    
bufferByte:
    shl     bx, 1
    write_to_buffer_macro byte_register_array[bx], 2
    
nexStage:   
    cmp     bp, 11b
    je      reting
    or      disp_flag, 0
    je      writeLastOperand
    or      SIBbyte_flag, 0
    je      writeWrite
    write_to_buffer_offset_macro plus, plus_length
    
writeWrite:
    call    writeToBufferImm

writeLastOperand:
    write_to_buffer_offset_macro right_parenthesis, 1
    jmp     reting
    
reting:
    pop     ax
    ret
disasmFunction ENDP



endAnswerBuffer PROC
    write_to_buffer_offset_macro entering, entering_length
    write_to_file_macro answer_buffer, answer_buffer_length
    
    mov     second_operand_flag, 0
    mov     answer_buffer_length, 0
    mov     disp_flag, 0
    mov     operSize_flag, 0
    mov     addrSize_flag, 0
    mov     SIBbyte_flag, 0
    mov     dec_flag, 0
    
    ret
endAnswerBuffer ENDP



addressing32Bit PROC
    or      bp, 0
    jne     checkDisp8
    cmp     bx, 101b
    jne     retGo
    or      disp_flag, 1
    or      digit_counter, 8
    jmp SHORT retGo
    
checkDisp8:
    cmp     bp, 01b
    jne     disp32write
    cmp     bx, 101b
    jne     checkDisp8Next
    or      disp8BP_flag, 1
checkDisp8Next:
    or      digit_counter, 2
    or      disp_flag, 1
    jmp SHORT retGo
    
disp32write:
    mov     digit_counter, 8
    or      disp_flag, 1

retGo:
    ret
addressing32Bit ENDP



SIB PROC
    lodsb
    dec     cycle_counter
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
    write_to_buffer_macro sib_array(DS:[bp]), sib_length_array(DS:[bp])
    lodsd
    sub     cycle_counter, 4
    or      eax, eax
    jnz     haveDisp
    jmp SHORT retRet
   
haveDisp:
    sub     si, 4
    add     cycle_counter, 4
    write_to_buffer_offset_macro plus, plus_length    
    push    digit_counter
    mov     digit_counter, 8
    call    writeToBufferImm
    pop     digit_counter
    jmp SHORT retRet
    
not101Base:
    shl     bx, 1
    write_to_buffer_macro extend_register_array[bx], extend_register_length
    pop     bx
    cmp     bx, 100b
    je      retRet
    
    write_to_buffer_offset_macro plus, plus_length
    shl     bp, 3
    add     bp, bx
    shl     bp, 1
    write_to_buffer_macro sib_array(DS:[bp]), sib_length_array(DS:[bp])
    
    
retRet:
    pop     bx
    pop     bp
    ret
SIB ENDP


ending:
    mov     ah, 03Eh
    mov     bx, answer_file_descriptor
    int     21h
    
    mov     ah, 04Ch
    int     21h
    end     Start