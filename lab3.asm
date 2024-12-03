;Оформить программу Лабораторной работы №1 в виде подпрограммы, которая получает параметры A, B, C, D через стек и возвращает результат в регистре EAX.

.model small 
.386 
.stack 100h 
.data 
    b          db    30h
    c          db    20h
    a          db    01h
    d          dd    ?
.code 
start:
    mov     ax,    @data 
    mov     ds,    ax 
    mov     es,    ax
    push    offset b
    mov     si,    sp
    call    calc 
    stosd
exit:
    mov     ax,    4C00h 
    int     21h 
calc    proc near 
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
    lods    word ptr ss:[si]    ; ax = offset of B
    mov     si,   ax            ; si = offset of B
    lodsw                       ; eax = 00 00 C B
    mov     cx,   ax            ; ch = C cl = B
    lodsb                       ; al = A ah = C
    mov     di,   si            ; di = offset D   
    cbw                         ; ax = a
    mov     dx,   ax            ; dx = a
    mov     si,   ax            ; si = a
    add     si,   6             ; si = a + 6
    movsx   esi,  si            ; esi = a + 6 
    sal     ax,   3             ; ax = 8a
    sub     ax,   dx            ; ax = 7a
    imul    dx                  ; dx:ax = 7*a^2
    shl     eax,  16            
    shld    edx,  eax,   16     ; edx = 7*a^2
    movsx   ax,   ch            ; cx = C
    mov     bx,   ax            ; ax = C
    sal     ax,   6             ; ax = 64*C
    add     ax,   bx            ; ax = 65*C
    cwde                        ; eax = 65*C
    add     eax, edx            ; eax = 65*C + 7*a^2
    mov     ebx, eax            ; ebx = 65*C + 7*a^2
    mov     ax,  cx
    imul    ah                  ; ax = B*C
    cwde                        ; eax = B*C
    mov     edx, eax            ; edx = B*C
    sal     edx, 2              ; edx = 4B*C
    sal     eax, 3              ; eax = 8B*C
    add     eax, edx            ; eax = 12*B*C
    add     eax, esi            ; eax = 12*B*C + A + 6
    cdq                         ; edx:eax = 12*B*C + A + 6
    idiv    ebx
    ret     2
    calc    endp 
  
end start
