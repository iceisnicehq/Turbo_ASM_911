.model small
.386
.stack 100h

.data
    inputPrompt          db      "Enter text: $"
    errorMessage         db      "error$"
    resultMessage        db      "Result: $"
    exitMessage          db      "exit$"
    newLine              db      0Dh, 0Ah, '$'
    outputFile           db      "result.txt", 0
    reversedCount        dw      ?
    inputBuffer          db      255 dup (?)
    reversedBuffer       db      255 dup (?)
    
.code

Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset inputPrompt
    mov     ah, 9
    int     21h
    
    mov     cx, 256
    mov     di, offset inputBuffer
    mov     si, offset reversedBuffer + 254
    xor     dx, dx
    
InputLoop:    
    mov     ah, 7
    int     21h
      
    cmp     al, 0Dh
    je      EndInput
    
    cmp     al, 07Fh
    jae     InputLoop
    
    or      al, al
    jne     NotSpecialChar
    mov     ah, 07h
    int     21h
    jmp     InputLoop
    
NotSpecialChar:    
    cmp     al, 20h
    jne     ProcessCharacter
    or      dl, dl
    jz      InputLoop
    
    inc     dh
    cmp     dl, al
    jne     ProcessCharacter
    dec     dh
    jmp     InputLoop

ProcessCharacter:    
    mov     ah, 2
    mov     dl, al
    int     21h
    
    cmp     dh, 2
    jl      StoreCharacter
    jne     ReverseBlock
    
    cmp     bh, 7
    jne     SkipReverse
    
    mov     [si], al
    dec     si
    inc     bl
    inc     reversedCount
    jmp     StoreCharacter
    
SkipReverse:
    stosb
    inc     bl
    jmp     StoreCharacter

ReverseBlock:
    xor     dh, dh
    inc     bh
    cmp     bh, 8     
    jne     StoreCharacter
    
    mov     bh, cl
    mov     cx, reversedCount 
    rep     movsb
    mov     cl, bh
    
StoreCharacter:
    loop    InputLoop

    
    
EndInput:
    cmp     bl, 1
    ja      ValidInput
    
    mov     ah, 9
    mov     dx, offset newLine
    int     21h
    mov     dx, offset errorMessage
    int     21h
    jmp     ExitProgram
    
ValidInput:
    mov     ah, 3Ch
    xor     cx, cx
    mov     dx, offset outputFile
    int     21h
    
    cmp     bh, 7
    jne     WriteNormal
    mov     cx, reversedCount
    rep     movsb
    
WriteNormal:
    mov     si, ax
    
    mov     ah, 9
    mov     dx, offset newLine
    int     21h
    mov     dx, offset resultMessage
    int     21h

    mov     ah, 40h
    mov     dx, offset inputBuffer
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
    
ExitProgram:    
    mov     ah, 9
    mov     dx, offset newLine
    int     21h
    
    mov     dx, offset exitMessage
    int     21h
      
    mov     ah, 4Ch
    int     21h

    end Start