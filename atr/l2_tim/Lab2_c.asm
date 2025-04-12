.model small
.386
.stack 100h

.data
    
    inputMessage           db      "Input: $"  ; Message prompting user to input data
    errorMessage           db      "Error$"  ; Error message for invalid input
    outputtMessage         db      "Output: $"  ; Message displayed before output
    endMessage             db      "End, press any key to end program$"  ; Message before program exits

    enterr                 db      0Dh, 0Ah, '$'  ; Newline character
    fileName               db      "result.txt", 0  ; Output file name
    
    answerBuffer           db      255 dup (?)  ; Buffer to store the input data
    reverseBuffer          db      255 dup (?)  ; Buffer for storing reversed characters
    
    reversSymbolsCounter   dw      ?  ; Counter for reversed characters
    
.code
    
Start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    
    mov     dx, offset inputMessage
    mov     ah, 9
    int     21h  ; Display input prompt
    
    xor     dx, dx  ; Clear dx register (used for storing characters)
    
    mov     cx, 256  ; Set the counter for 256 characters
    mov     di, offset answerBuffer  ; Set DI to point to the start of the input buffer
    mov     si, offset reverseBuffer  ; Set SI to point to the end of the reverse buffer
    add     si, 254  ; Move SI to the end of the reverse buffer

input:    
    mov     ah, 7
    int     21h  ; Read a character from input
    
    cmp     al, 0Dh
    je      endInput  ; If Enter key is pressed, finish input
    
    cmp     al, 20h
    jne     inputWithoutSpace  ; Skip spaces
    
    or      dl, dl  ; Check if the character is a space
    jz      input  ; Skip first space
    
    inc     dh  ; Increment space counter
    cmp     dl, al
    jne     inputWithoutSpace  ; If it's not a space, continue
    dec     dh  ; If it's an extra space, decrement space counter
    jmp     input  ; Skip this space

inputWithoutSpace:    
    mov     ah, 2  ; Output character to screen
    mov     dl, al
    int     21h
    
    cmp     dh, 4  ; If space counter is less than 4, continue input
    jl      goInput
    jne     fiveSpaces  ; Otherwise, handle 5 spaces
    
    cmp     bh, 4
    jne     noRevers  ; If the counter for reversed characters is less than 4, continue without reversal
    
    mov     [si], al  ; Store character in reverse buffer
    dec     si  ; Move SI backward
    inc     bl  ; Increment reversed characters counter
    inc     reversSymbolsCounter  ; Increment counter for reversed characters
    jmp     goInput  ; Continue input

noRevers:  ; If the character should not be reversed
    stosb  ; Store character normally
    inc     bl  ; Increment counter
    jmp     goInput  ; Continue input

fiveSpaces:
    xor     dh, dh  ; Reset space counter
    inc     bh  ; Increment space counter
    cmp     bh, 5  ; If 5 spaces are reached, start processing
    jne     goInput  ; If there are fewer than 5 spaces, continue input
    
    mov     bh, cl
    mov     cx, reversSymbolsCounter 
    rep     movsb  ; Move reversed characters back to the primary buffer
    mov     cl, bh  ; Restore original counter
    
goInput:
    loop    input  ; Continue input until the limit (256 characters) is reached

endInput:
    cmp     bl, 1
    ja      noError  ; If at least one character was entered, continue
    
    mov     ah, 9
    mov     dx, offset enterr
    int     21h
    mov     dx, offset errorMessage
    int     21h  ; Display error message
    jmp     programEnd  ; End the program
    
noError:
    mov     ah, 3Ch  ; Create file
    xor     cx, cx
    mov     dx, offset fileName
    int     21h
    
    cmp     bh, 4
    jne     normalEnd  ; If reversed characters counter is less than 4, continue normal write
    mov     cx, reversSymbolsCounter
    rep     movsb  ; Write reversed characters to file
    
normalEnd:
    mov     si, ax  ; Store file handle
    
    mov     ah, 9
    mov     dx, offset enterr
    int     21h
    
    mov     dx, offset outputtMessage
    int     21h  ; Display output message

    mov     ah, 40h  ; Write data to output
    dec     bl
    mov     cl, bl
    xor     bx, bx
    mov     dx, offset answerBuffer  ; Address of data to be written
    inc     dx  ; Move pointer to the first symbol
    int     21h
    
    mov     ah, 40h  ; Write to file
    mov     bx, si  ; Use file handle
    int     21h
    mov     ah, 3Eh  ; Close file
    int     21h
    
programEnd:    
    mov     ah, 9
    mov     dx, offset enterr
    int     21h
    
    mov     dx, offset endMessage
    int     21h  ; Display end message
    
    mov     ah, 7  ; Wait for any key to exit the program
    int     21h
    
    mov     ah, 4Ch  ; Terminate program
    int     21h

    end Start
