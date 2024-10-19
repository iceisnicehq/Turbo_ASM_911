; limit 256 bytes
; word is everything up to to a \s character
; if the word that needs to be reversed doesnt exist a program should throw an error
; the input is in cmd
; enter should mark the end

; can i use stack - NO
; proccessor model - 386

; С использованием строковых команд собрать в выделенном буфере текст, 
; включающий в себя каждое пятое слово исходного текста. 
; При этом второе слово собранного вами текста должно быть инвертированным по порядку букв. 
; Исходный текст вводится с клавиатуры. 
; Вывод собранного текста – на экран и в файл.
.MODEL SMALL
.STACK 100h

.DATA
    naming DB 20 DUP('$')    ; Reserve space for up to 20 characters
    prompt DB 'Enter your naming: $'
    greeting DB 'Hi, $'
    newline DB 0Dh, 0Ah, '$'  ; Carriage return and line feed for formatting
    backspace DB 08h, ' ', 08h, '$'  ; Backspace, space, backspace to clear a char

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Display the prompt
    MOV AH, 09h           ; DOS function: Display string
    LEA DX, prompt        ; Load address of the prompt
    INT 21h               ; Call DOS interrupt

    ; Read user input character by character
    MOV SI, 0             ; SI will track the number of characters entered

READ_CHAR:
    MOV AH, 01h           ; DOS function: Read a character from input
    INT 21h               ; Call DOS interrupt

    CMP AL, 0Dh           ; Check if Enter (carriage return) was pressed
    JE END_INPUT          ; If Enter is pressed, end input

    CMP AL, 08h           ; Check if Backspace was pressed
    JE HANDLE_BACKSPACE    ; If Backspace, jump to handle it

    CMP SI, 20            ; Check if the input limit (20 chars) is reached
    JAE READ_CHAR         ; If yes, ignore further input

    ; Store the entered character in the naming array
    MOV [naming + SI], AL
    INC SI                 ; Move to the next position in the array

    ; Echo the entered character to the screen
    MOV AH, 02h            ; DOS function: Display a character
    INT 21h

    JMP READ_CHAR          ; Continue reading more characters

HANDLE_BACKSPACE:
    CMP SI, 0              ; If no characters were entered, ignore backspace
    JE READ_CHAR

    DEC SI                 ; Move back in the naming buffer
    MOV AH, 09h            ; DOS function: Display string
    LEA DX, backspace      ; Display backspace, space, backspace
    INT 21h

    JMP READ_CHAR          ; Continue reading more characters

END_INPUT:
    MOV [naming + SI], '$'   ; Add the string terminator after the last character

    ; Add a newline before the greeting for better formatting
    MOV AH, 09h
    LEA DX, newline
    INT 21h

    ; Display greeting "Hi, "
    MOV AH, 09h
    LEA DX, greeting
    INT 21h

    ; Display the entered naming
    MOV AH, 09h
    LEA DX, naming           ; DX points to the naming buffer
    INT 21h                ; Display the entered naming

    ; Exit the program
    MOV AH, 4Ch            ; DOS function: Terminate program
    INT 21h
MAIN ENDP
END MAIN
