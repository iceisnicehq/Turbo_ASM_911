%TITLE    "Lab1" ;7 827 456

.model    small
.186
.stack    100h

MIN            EQU    -128
MAX            EQU    127

.data
    path       db    'A_B_C.TXT', 0
    buffer     db    "0000_0000_0000", 0dh, 0ah
.data?
    a          db    ?
    c          db    ?
    b          db    ?
    d          dw    ?
.code
Start:
    mov    ax,    @data                  
    mov    ds,    ax  
    mov    es,    ax
    mov    si,    offset a  
    lodsw       
    or     ax,    ax   
    jnz    get_val      
mkFile:
    mov    dx,    offset path            
    mov    ah,    03Ch                   
    xor    cx,    cx                     
    int    21h                            
init:
    lea    di,    [buffer + 12]
    std 
    mov    ah,    MIN
    mov    si,    ax
    mov    al,    ah 
    mov    bx,    ax
    jmp    SHORT calc  
get_val:
    mov    cl,    al
    lodsb
    mov    di,    si
    mov    ch,    al
    xor    al,    al
    mov    si,    ax
    mov    bx,    cx  
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
calc:
    mov    al,    bl
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
    add    cx,    dx
    js     wrBuffer
    jc     wrBuffer
    jmp    SHORT check_loop
negative:
    neg    cx
    sub    dx,    cx
    mov    cx,    dx
    jc     check_loop
    js     wrBuffer
check_loop:
    test   si,    00FFh
    jnz    loop_iter
    jmp    numerator
wrBuffer:
    mov    bp,    di
    mov    cl,    20h
    mov    ax,    si
    mov    al,    ah   
    test   al,    080h                    
    jns    posC
    neg    al
    mov    cl,    2dh       
posC:
    aam
    mov    ch,    al
    mov    al,    ah
    aam
    xchg   ch,    ah
    or     ax,    3030h
    stosw   
    mov    ax,    cx
    or     ah,    30h
    stosw
    dec    di
    mov    al,    bh
    mov    cl,    20h
    test   al,    080h                    
    jns    posB
    neg    al
    mov    cl,    2dh    
posB:
    aam
    mov    ch,    al
    mov    al,    ah
    aam
    xchg   ch,    ah
    or     ax,    3030h
    stosw   
    mov    ax,    cx
    or     ah,    30h
    stosw
    dec    di
    mov    al,    bl
    mov    cl,    20h
    test   al,    080h                   
    jns    posA
    neg    al
    mov    cl,    2dh     
posA:
    aam
    mov    ch,    al
    mov    al,    ah
    aam
    xchg   ch,    ah
    or     ax,    3030h
    stosw   
    mov    ax,    cx
    or     ah,    30h
    stosw
    inc    di
    inc    di
wrFile:
    mov    dx,    di
    mov    di,    bp
    mov    cx,    16
    mov    ah,    40h
    mov    bp,    bx
    mov    bx,    si
    xor    bh,    bh
    int    21h
    mov    bx,    bp
loop_iter:
    mov    ax,    si
    cmp    ah,    MAX
    jl     c_iter
    cmp    bh,    MAX
    jl     b_iter
    cmp    bl,    MAX
    jnl    clFile
a_iter:
    inc    bl
    mov    bh,    MIN-1
b_iter:
    mov    ah,    MIN-1
    mov    si,    ax
    inc    bh    
c_iter:
    add    si,    0100h
not_max:
    jmp    calc
clFile:
    mov    ah,    3Eh
    mov    bx,    si
    xor    bh,    bh
    int    21h
    jmp    SHORT Exit
numerator:
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
    jmp    SHORT division
neg_bx:
    neg    bx
    sub    ax,    bx
    sbb    dx,    0
division:
    idiv   cx
    stosw     
Exit:
    mov    ah,    04Ch
    mov    al,    0
    int    21h
    End    Start  




;OF COMBS
    ;A = -024, |B| > 88, C = -062
    ;A = -023, |B| > 95, C = -057
    ;A =  023, |B| > 95, C = -057
    ;A =  024, |B| > 88, C = -062
;
;ZF COMBS
    ;A = 000, B = ..., C = 000
