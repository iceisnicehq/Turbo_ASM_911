.model small
.386
.stack 100h

.data
    msgPrompt            db      "Input text: $"  ; Message prompting user input
    msgError             db      "Error: Invalid input!$"  ; Error message for invalid input
    msgOutput            db      "Output data: $"  ; Message before displaying output
    msgEnd               db      "Press any key to exit...$"  ; Exit message
    newline              db      0Dh, 0Ah, '$'  ; New line sequence
    fileOutput           db      "stored_data.txt", 0  ; Name of the output file
    reversedCharCount    dw      ?  ; Counter for reversed characters
    bufferPrimary        db      253 dup (?)  ; Main buffer for storing input
    bufferRev            db      226 dup (?)  ; Buffer for reversed characters
    
.code

Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset msgPrompt
    mov     ah, 9
    int     21h  ; Display input prompt
    
    mov     cx, 256
    mov     di, offset bufferPrimary  ; Set DI to start of primary buffer
    mov     si, offset bufferRev + 225  ; Set SI to the end of the reverse buffer
    xor     dx, dx
    
ReadLoop:    
    mov     ah, 7
    int     21h  ; Read character from input
      
    cmp     al, 0Dh
    je      FinishReading  ; If Enter key is pressed, finish reading
    
    cmp     al, 07Fh
    jae     ReadLoop  ; Ignore non-printable characters
    
    or      al, al
    jne     notScanCode
    mov     ah, 07h
    int     21h
    jmp     ReadLoop  ; Skip non-printable input
    
notScanCode:    
    cmp     al, 20h
    jne     ProcessChar  ; Skip extra spaces
    or      dl, dl  
    jz      ReadLoop  ; Ignore leading spaces
    
    inc     dh  ; Increase space counter
    cmp     dl, al
    jne     ProcessChar
    dec     dh
    jmp     ReadLoop  ; Ignore consecutive spaces

ProcessChar:    
    mov     ah, 2  ; Display character on screen
    mov     dl, al
    int     21h
    
    cmp     dh, 2
    jl      StoreChar  ; If space count < 2, store character normally
    jne     ReverseBlock  ; Otherwise, handle reversed characters
    
    cmp     bh, 5
    jne     SkipReversal
    
    mov     [si], al  ; Store character in reverse buffer
    dec     si  ; Move buffer pointer backward
    inc     bl
    inc     reversedCharCount  ; Increment counter for reversed characters
    jmp     StoreChar
    
SkipReversal:
    stosb  ; Store character normally
    inc     bl
    jmp     StoreChar

ReverseBlock:
    xor     dh, dh  ; Reset space counter
    inc     bh
    cmp     bh, 6     
    jne     StoreChar  ; If space count < 6, continue storing characters
    
    mov     bh, cl
    mov     cx, reversedCharCount 
    rep     movsb  ; Move reversed characters back to primary buffer
    mov     cl, bh
    
StoreChar:
    loop    ReadLoop  ; Continue reading input

FinishReading:
    cmp     bl, 1
    ja      ValidInput  ; If at least one character is entered, proceed
    
    mov     ah, 9
    mov     dx, offset newline
    int     21h
    mov     dx, offset msgError
    int     21h  ; Display error message
    jmp     EndProgram  ; Exit program
    
ValidInput:
    mov     ah, 3Ch  ; Create file
    xor     cx, cx
    mov     dx, offset fileOutput
    int     21h
    
    cmp     bh, 5
    jne     NormalWrite
    mov     cx, reversedCharCount
    rep     movsb  ; Write reversed characters to file
    
NormalWrite:
    mov     si, ax  ; Store file handle
    
    mov     ah, 9
    mov     dx, offset newline
    int     21h
    mov     dx, offset msgOutput
    int     21h  ; Display output message

    mov     ah, 40h  ; Write data to output
    mov     dx, offset bufferPrimary
    inc     dx    
    dec     bl
    mov     cl, bl
    xor     bx, bx
    int     21h
    
    mov     ah, 40h  ; Write to file
    mov     bx, si
    int     21h
    mov     ah, 3Eh  ; Close file
    int     21h
    
EndProgram:    
    mov     ah, 9
    mov     dx, offset newline
    int     21h
    
    mov     dx, offset msgEnd
    int     21h  ; Display exit message
      
    mov     ah, 4Ch  ; Terminate program
    int     21h

    end Start
