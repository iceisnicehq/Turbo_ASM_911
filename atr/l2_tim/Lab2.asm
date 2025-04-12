.model small
.386
.stack 100h

.data
    
    inputMessage           db      "Input: $"
    errorMessage           db      "Error$"
    outputMessage          db      "Output: $"
    endMessage             db      "End, press any key to end program$"

    enterr                 db      0Dh, 0Ah, '$'
    fileName               db      "result.txt", 0
    
    answerBuffer           db      255 dup (?)
    reverseBuffer          db      255 dup (?)
    
    reversSymbolsCounter   dw      ?
    
.code
    
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset inputMessage
    mov     ah, 9
    int     21h
    xor     dx, dx
    
    mov     cx, 256
    mov     di, offset answerBuffer
    mov     si, offset reverseBuffer
    add     si, 254
    
input:    
    mov     ah, 7
    int     21h
      
    cmp     al, 0Dh
    je      endInput

    cmp     al, 20h
    jne     inputWithoutSpace
    or      dl, dl
    jz      input 
    
    inc     dh
    cmp     dl, al
    jne     inputWithoutSpace
    dec     dh
    jmp     input

inputWithoutSpace:    
    mov     ah, 2
    mov     dl, al
    int     21h
    
    cmp     dh, 4
    jl      goInput
    jne     fiveSpaces
    
    cmp     bh, 4
    jne     noRevers
    
    mov     [si], al
    dec     si
    inc     bl
    inc     reversSymbolsCounter
    jmp     goInput
    
noRevers:
    stosb
    inc     bl
    jmp     goInput

fiveSpaces:
    xor     dh, dh
    inc     bh
    cmp     bh, 5     
    jne     goInput
    
    mov     bh, cl
    mov     cx, reversSymbolsCounter 
    rep     movsb
    mov     cl, bh
    
goInput:
    loop    input

    
    
endInput:
    cmp     bl, 1
    ja      noError
    
    mov     ah, 9
    mov     dx, offset enterr
    int     21h
    
    mov     ah, 9
    mov     dx, offset errorMessage
    int     21h
    jmp     programEnd
    
noError:
    mov     ah, 3Ch
    xor     cx, cx
    mov     dx, offset fileName
    int     21h
    
    cmp     bh, 4
    jne     normalEnd
    mov     cx, reversSymbolsCounter
    rep     movsb
    
normalEnd:
    mov     si, ax
    
    mov     ah, 9
    mov     dx, offset enterr
    int     21h
    
    mov     dx, offset outputMessage
    int     21h

    mov     ah, 40h   
    dec     bl
    mov     cl, bl
    xor     bx, bx
    mov     dx, offset answerBuffer
    inc     dx
    int     21h
    
    mov     ah, 40h
    mov     bx, si
    int     21h
    
    mov     ah, 3Eh
    int     21h
    
programEnd:    
    mov     ah, 9
    mov     dx, offset enterr
    int     21h
    
    mov     dx, offset endMessage
    int     21h
    
    mov     ah, 7
    int     21h
    
    mov     ah, 4Ch
    int     21h

    end Start