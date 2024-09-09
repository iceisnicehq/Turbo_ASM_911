%TITLE "Lab1"
    ;--------------------------------------
    ; d = (a + 12*b*c+6) / (65*c+7*a^2)
    ;--------------------------------------

calc:
    mov ax, 7*a ;ax <- 7*a
    imul ax, a  ;ax <- 7*a^2
    ; check of
    xchg ax, bx ;ax <- 0, bx <- 7*a^2
    mov ax, c
    imul ax, 65
    add ax, bx
    ; check of
    xchg ax, cx ;ax <- 0, cx <- 65*c+7*a^2
    mov ax, 12*b ; ax <- 12*b
    imul ax, c ; ax <- 12*b*c
    add ax, a ; ax <- a+12*b*c
    adc ax, 6 ; ax <- a+12*b*c+6
    idiv cx ; ax/cx
    mov cx, d ; ???????????????????
    
.model small
.stack 100h

.data
    ; ?? -128 ?? 127 <=> 80h to 7Fh
    a_loop db 255
    b_loop db 255
    c_loop db 255
    path db 'D:\NEWFILE.TXT', 0
    a db 0
    b db 127
    c db 12
    d db ?
    handle dw ?
    buffer db 8 dup (?)
    ; buffer should be like "A = ----, B = ----, C = ----\n" which is 29 chars
    
.code 
Start:
    mov ax, @data
    mov ds, ax
    xor ax, ax
; mov cx, 4
; repe scasb 
; if not defined init to -128 every variable

;check if undefined 
    mov cx, 6
    repe scasb
    ;jne calc
    
mkFile:
    mov dx, offset path
    mov ah, 03Ch
    xor cx, cx
    int 21h
    mov [handle], ax

if_undefined:
loop_a:
    ; a goes from -128 to 127
loop_b:
    ; b goes from -128 to 127
    ; b_loop dec by one
loop_c:
    ; c goes from -128 to 127
    ; c_loop dec by one
    ; when c_loop = 0
    ; jnz loop_c
    ; mov c_loop, 255

    ; jmp loop_b
    ; when b_loop = 0

    ; jnz loop_b
    ; mov b_loop, 255
    ; jmp loop_a

; a_loop dec by one
; when a_loop = 0
; jnz loop_a

;make wrFile function for usage for every possible 
;wr file should check whether the value passed in a variable is negative
    ;this should work by checking and then neg it to positive value
    ; with either jump or with test of the MSB
wrFile:
        mov [buffer], 041h
        mov [buffer+1], 00h
        mov [buffer+2], 3dh
        mov al, a
        aam
        or ax, 0030h
        mov [buffer+3], 00h
        mov [buffer+6], al
        mov al, ah
        aam
        or ax, 3030h
        mov [buffer+5], al
        mov [buffer+4], ah
        mov [buffer+7], 0ah
        mov [buufer
        mov dx, offset buffer
        mov cx, 8
    mov ah, 40h
    mov bx, handle
    int 21h
    cmp [a], 120
    jz clFile
    inc [a]
    jmp wrFile
    
clFile:
    mov ah, 3Eh
    mov bx, [handle]
    int 21h
    
Exit:
    mov ah, 04Ch
    mov al, 0
    int 21h
    End Start
    
