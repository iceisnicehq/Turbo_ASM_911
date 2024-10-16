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

.model small
.486
.stack 100h

cr EQU 13d
lf EQU 10d

.data
    buffer ? dup (258)

.code
Start:

Exit:
    mov ah, 04ch
    mov al, 0
    int 21h
    END Start
