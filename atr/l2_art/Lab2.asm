.model small
.386
.stack 100h

.data
    msgPrompt            db      "Input text: $"
    msgError             db      "Error: Invalid input!$"
    msgOutput            db      "Output data: $"
    msgEnd               db      "Press any key to exit...$"
    newline              db      0Dh, 0Ah, '$'
    fileOutput           db      "stored_data.txt", 0
    reversedCharCount    dw      ?
    bufferPrimary        db      253 dup (?)
    bufferRev            db      226 dup (?)
    
.code

Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset msgPrompt
    mov     ah, 9
    int     21h
    
    mov     cx, 256
    mov     di, offset bufferPrimary
    mov     si, offset bufferRev + 225
    xor     dx, dx
    
ReadLoop:    
    mov     ah, 7
    int     21h
      
    cmp     al, 0Dh
    je      FinishReading
    
    cmp     al, 07Fh
    jae     ReadLoop
    
    or      al, al
    jne     notScanCode
    mov     ah, 07h
    int     21h
    jmp     ReadLoop
    
notScanCode:    
    cmp     al, 20h
    jne     ProcessChar
    or      dl, dl
    jz      ReadLoop
    
    inc     dh
    cmp     dl, al
    jne     ProcessChar
    dec     dh
    jmp     ReadLoop

ProcessChar:    
    mov     ah, 2
    mov     dl, al
    int     21h
    
    cmp     dh, 2
    jl      StoreChar
    jne     ReverseBlock
    
    cmp     bh, 5
    jne     SkipReversal
    
    mov     [si], al
    dec     si
    inc     bl
    inc     reversedCharCount
    jmp     StoreChar
    
SkipReversal:
    stosb
    inc     bl
    jmp     StoreChar

ReverseBlock:
    xor     dh, dh
    inc     bh
    cmp     bh, 6     
    jne     StoreChar
    
    mov     bh, cl
    mov     cx, reversedCharCount 
    rep     movsb
    mov     cl, bh
    
StoreChar:
    loop    ReadLoop

FinishReading:
    cmp     bl, 1
    ja      ValidInput
    
    mov     ah, 9
    mov     dx, offset newline
    int     21h
    mov     dx, offset msgError
    int     21h
    jmp     EndProgram
    
ValidInput:
    mov     ah, 3Ch
    xor     cx, cx
    mov     dx, offset fileOutput
    int     21h
    
    cmp     bh, 5
    jne     NormalWrite
    mov     cx, reversedCharCount
    rep     movsb
    
NormalWrite:
    mov     si, ax
    
    mov     ah, 9
    mov     dx, offset newline
    int     21h
    mov     dx, offset msgOutput
    int     21h

    mov     ah, 40h
    mov     dx, offset bufferPrimary
    inc     dx    
    dec     bl
    mov     cl, bl
    xor     bx, bx
    int     21h
    
    mov     ah, 40h
    mov     bx, si
    int     21h
    mov     ah, 3Eh
    int     21h
    
EndProgram:    
    mov     ah, 9
    mov     dx, offset newline
    int     21h
    
    mov     dx, offset msgEnd
    int     21h
      
    mov     ah, 4Ch
    int     21h

    end Start
