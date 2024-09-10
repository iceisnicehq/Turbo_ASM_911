%TITLE "Lab1"
    ;--------------------------------------
    ; d = (a + 12*b*c+6) / (65*c+7*a^2)
    ;--------------------------------------
    ; overflow is when the resulting value is bigger than 16bits

.model small
.stack 100h

.data
    ; ?? -128 ?? 127 <=> 80h to 7Fh
    a db 127
    b db 127
    c db 127
    count_a db 10
    count_b db 30 
    count_c db 30
    path db 'D:\NEWFILE.TXT', 0
    buffer db "A = 0000, B = 0000, C = 0000", 0ah
    handle dw ?
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

    ;if_undefined:
loop_a:
    mov [count_b], 127
    ;mov b, 
loop_b:
    mov [count_c], 127
    ;mov c,
loop_c:
;    jmp wrBuffer
;calc:
;    mov ax, 7*a ;ax <- 7*a
;    imul ax, a  ;ax <- 7*a^2
;    ; check of
;    xchg ax, bx ;ax <- 0, bx <- 7*a^2
;    mov ax, c
;    imul ax, 65
;    add ax, bx
;    ; check of
;    xchg ax, cx ;ax <- 0, cx <- 65*c+7*a^2
;    mov ax, 12*b ; ax <- 12*b
;    imul ax, c ; ax <- 12*b*c
;    add ax, a ; ax <- a+12*b*c
;    adc ax, 6 ; ax <- a+12*b*c+6
;    idiv cx ; ax/cx
;    ;jno loop_c
wrBuffer:
    ;mov [buffer], 041h ;A
    ;mov [buffer+1], 00h ;A 
    ;mov [buffer+2], 3dh ;A =
    mov al, a
    aam
    or al, 30h
    mov [buffer+7], al  ;A = 000-, B = 0000, C = 0000\n
    mov al, ah
    aam
    or ax, 3030h
    mov [buffer+6], al ;A = 00--, B = 0000, C = 0000\n
    mov [buffer+5], ah ;A = 0---, B = 0000, C = 0000\n
    ;write b
    mov al, b
    aam
    or al, 30h
    mov [buffer+17], al  ;A = 0000, B = 0000, C = 0000\n
    mov al, ah
    aam
    or ax, 3030h
    mov [buffer+16], al ;A = 00-0, B = 0000, C = 0000\n
    mov [buffer+15], ah ;A = 0--0, B = 0000, C = 0000\n
    ;write c
    mov al, c
    aam
    or al, 30h
    mov [buffer+27], al  ;A = 0000, B = 0000, C = 0000\n
    mov al, ah
    ;aam
    ;or ax, 3030h
    ;mov [buffer+20], al ;A = 00-0, B = 0000, C = 0000\n
    ;mov [buffer+19], ah ;A = 0--0, B = 0000, C = 0000\n
    ;mov [buffer+7], 0ah;A = 0---, B = 0000, C = 0000\n
    ;mov [buufer
    
wrFile:
    mov dx, offset buffer
    mov cx, 29
    mov ah, 40h
    mov bx, handle
    int 21h
    cmp [a], 120
    jz clFile
    inc [a]
    jmp wrFile
    ; calc
    ; write
    dec c
    dec [count_c]
    jnz loop_c
    dec b
    dec [count_b]
    jnz loop_b
    dec a
    dec [count_a]
    jnz loop_a

;make wrFile function for usage for every possible 
;wr file should check whether the value passed in a variable is negative
    ;this should work by checking and then neg it to positive value
    ; with either jump or with test of the MSB

    
clFile:
    mov ah, 3Eh
    mov bx, [handle]
    int 21h
    
Exit:
    mov ah, 04Ch
    mov al, 0
    int 21h
    End Start
    
    
