.model small
.186
.stack 100h
.data
A   db  ?
B   db  ?
C   db  ?
filename db 'overflow.txt', 0
descriptor dw ?
output db "0000 0000 0000",0Dh, 0Ah

.code
start:
    mov ax, @data
    mov ds, ax 
    ;?????? ???????? ? ????????
    mov al, B
    cbw
    mov di, ax ;di=B
    mov al, C
    cbw         
    mov bp, ax ; bp=C
    mov al, A
    cbw
    mov si, ax ;si=A 
   ;???????? ?? ?????????? ?????????       
    or ax, di  
    or ax, bp   
    jz create
    jmp calculate 
    ;???????? ?????
create:
    mov ah,3Ch
    mov dl, offset filename;?????????????
    mov cx,0;??? ?????????
    int 21h
    mov [descriptor],ax
    ;????
cycle:
    mov si, -128 ; ????????? ???????? ?
    cycle_A:
        mov di, -128 ; ????????? ???????? B
        cycle_B:
        mov bp, -128 ; ????????? ???????? C
            cycle_C:
                 ;???????????
                   mov ax, bp        
                   shl ax, 2  
                   add ax, di  
                   mov cx, ax  ;cx=b+4c
                   mov ax, si
                   add ax, di ; ax=a+b
                   imul cx
                   mov cx, ax ; cx=???????????
                   jo asci;????? ?????? ? ????
            increment: 
            inc bp
            cmp bp, -110
                jl cycle_C
        inc di
        cmp di, -110
            jl cycle_B
    inc si
    cmp si, -110
    jl cycle_A
MOV   AH,  3Eh      ;????????? ????
    INT   21h
jmp end_program
 
asci:
    mov ax, si
    mov [output], '+'
    or ax, ax
    jns A_positive
    mov [output], '-'
    neg al
A_positive:
    aam
    or al, 30h
    mov [output+3], al
    mov al, ah
    aam
    or al, 30h
    mov [output+2], al
    or ah, 30h
    mov [output+1], ah

    mov ax, di
    mov [output+5], '+'
    or ax, ax
    jns B_positive
    mov [output+5], '-'
    neg al
B_positive:
    aam
    or al, 30h
    mov [output+8], al
    mov al, ah
    aam
    or al, 30h
    mov [output+7], al
    or ah, 30h
    mov [output+6], ah

    mov ax, bp
    mov [output+10], '+'
    or ax, ax
    jns C_positive
    mov [output+10], '-'
    neg al
C_positive:
    aam
    or al, 30h
    mov [output+13], al
    mov al, ah
    aam
    or al, 30h
    mov [output+12], al
    or ah, 30h
    mov [output+11], ah
; ?????? ? ????
    mov ah, 40h
    mov bx, descriptor
    mov dx, offset output
    mov cx, 16  ; ?????????? ???? ??? ??????
    int 21h
    jmp increment

calculate:
   ;???????????
    mov ax, bp        
    shl ax, 2  
    add ax, di  
    mov cx, ax  ;cx=b+4c
    mov ax, si
    add ax, di ; ax=a+b
    imul cx
    mov cx, ax ; cx=???????????  
    ;?????????
    mov ax, bp
    imul ax
    shl ax,1
    mov bx,ax
    shl ax, 3
    add bx,ax   
    add bx, si
    adc dx, 0
    sub bx, 67
    sbb dx,0
    mov ax, bx
    cwd
    idiv cx
    jmp short end_program

end_program:
    mov ah, 4ch
    int 21h
end start