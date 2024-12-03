;Оформить программу Лабораторной работы №1 в виде подпрограммы, которая получает параметры A, B, C, D через стек и возвращает результат в регистре EAX.
; прога должна просто считать выражение и ничего более
.model small 
.386 
.stack 100h 
.data 
    db 32 dup(?)
    b          db    10h
    c          db    20h
    a          db    30h
    d          dd    ?
.code 
start:
    ; ASSUME  es:STACK 
    mov     ax,    @data 
    mov     ds,    ax 
    ;mov es,ax 
    push    offset b
    mov     si,    sp
    ; lea si,A 
    ; push si 
    ; lea si,B 
    ; push si 
    ; lea si,C 
    ; push si 
    ; lea si,D 
    ; push si 
    
    call    calc 
exit:
    mov     ax,    4C00h 
    int     21h 
; ax cx dx bx si di bp     
calc proc near 
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
    lods    word ptr ss:[si]    ; ax = offset of B
    mov     si,    ax           ; si = offset of B
    lodsw                       ; eax = 00 00 C B
    mov     cx,    ax           ; ch = C cl = B
    lodsb                       ; al = A ah = C
    mov     di,    si           ; di = offset D   
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
    movsx   ax,   ch            ; cx = extended C
    sal     ax,   2             ; ax = c*4
    mov     bx,   ax            ; bx = c*4
    sal     ax,   1             ; ax = c*8
    add     ax,   bx            ; ax = c*12
    mov     dx,   cx            
    movsx   bx,   al            ; bx = extended B
    sal     dx,   2             ; bx = 4*B
    sal     cx,   3 
    imul    
    shld    ebx,  eax, 8        
    mov     al,    bl
    cbw
    mov    bp,    ax
    sal    ax,    3
    sub    ax,    bp
    imul   bp
    or     dx,    dx
    jnz    wrBuffer
    mov    dx,    ax
    mov    ax,    si
    mov    al,    ah
    cbw
    mov    cx,    ax
    sal    ax,    6
    add    cx,    ax
    js     negative
    add    dx,    cx
negative:
    neg    cx
    sub    dx,    cx
numerator:
    mov    cx,    dx
    mov    al,    bh
    cbw
    mov    dx,    ax    
    sal    dx,    1
    add    dx,    ax
    sal    dx,    2
    mov    ax,    si
    mov    al,    ah
    cbw
    imul   dx
    add    bp,    6
    js     neg_bx
    add    ax,    bp
    adc    dx,    0
neg_bx:
    neg    bx
    sub    ax,    bx
    sbb    dx,    0
division:
    idiv   cx
    stosw     
    ; mov bp,sp 
    ; mov si,[bp+10] 
    ; mov bl,[si] 
    ; mov si,[bp+6] 
    ; mov cl,[si] 
    ; mov si,[bp+8] 
    ; mov bh,[si] 
    
    
    
    ; MOV AL,CL 
    ; IMUL BL 
    ; CWDE 
    ; SAL EAX,3 
    ; MOV EDI,EAX 
    ; MOVSX AX,BH 
    ; MOV SI,AX 
    ; SAL SI,6 
    ; ADD SI,AX 
    ; SAL AX,3 
    ; ADD SI,AX 
    ; MOVSX ESI,SI 
    ; SUB ESI,EDI 
    ; MOVSX EAX,BL 
    ; ADD EAX,ESI 
    ; ; JZ znamenatelzero 
    ; MOV ESI,EAX 
    ; MOV AL,CL 
    ; IMUL CL 
    ; CWDE 
    ; MOV EDI,EAX 
    ; MOV AL,BH 
    ; IMUL BH 
    ; MOV CX,AX 
    ; MOVSX AX,BH 
    ; IMUL CX 
    ; SAL EDX,16 
    ; OR EAX,EDX 
    ; MOV ECX,EAX 
    ; MOVSX EAX,BL 
    ; IMUL ECX 
    ; ADD EAX,EDI 
    ; SUB EAX,56d 
    ; CDQ 
    ; IDIV ESI 
    
    ; mov [bp+4], eax 
    ; pop bp 
    ret 8 
    calc endp 
  
end start
