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
    or     al,    ah   
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
    mov    bp,    ax
    jmp    SHORT calc  
get_val:
    mov    ch,    al
    lodsb
    mov    di,    si
    mov    si,    ax 
    mov    cl,    al
    mov    bp,    cx  
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
calc:
    mov    ax,    bp
    cbw
    mov    bx,    ax
    sal    ax,    3
    sub    ax,    bx
    imul   bx
    mov    bh,    ch
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
    jc     check_loop
    js     wrBuffer
check_loop:
    test   si,    00FFh
    jnz    loop_iter
    jmp    numerator
wrBuffer:
    mov    bx,    di
    mov    dx,    202dh
    mov    cl,    dh
    mov    ax,    si
    mov    al,    ah   
    test   al,    080h                    
    jns    posC
    neg    al
    mov    cl,    dl       
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
    mov    ax,    bp
    mov    al,    ah
    mov    cl,    dh
    test   al,    080h                    
    jns    posB
    neg    al
    mov    cl,    dl    
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
    mov    ax,    bp
    mov    cl,    dh
    test   al,    080h                   
    jns    posA
    neg    al
    mov    cl,    dl     
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
    mov    di,    bx
    mov    cx,    16
    mov    ah,    40h
    mov    bx,    si
    xor    bh,    bh
    int    21h
loop_iter:
    mov    ax,    si
    add    si,    0100h
    cmp    ah,    MAX
    jl     not_max
    mov    ax,    si
    mov    ah,    MIN
    mov    si,    ax
    mov    ax,    bp
    add    bp,    0100h
    cmp    ah,    MAX
    jl     not_max
    mov    cl,    al
    inc    al
    mov    ah,    MIN
    mov    bp,    ax
    cmp    cl,    MAX
    jnl     clFile
not_max:
    jmp    calc
clFile:
    mov    ah,    3Eh
    mov    bx,    si
    int    21h
    jmp    SHORT Exit
numerator:
    mov    ax,    bp
    mov    al,    ah 
    cbw
    mov    dx,    ax    
    sal    dx,    1
    add    dx,    ax
    sal    dx,    2
    mov    ax,    si
    mov    al,    ah
    cbw
    imul   dx
    add    bx,    6
    js     neg_bx
    add    ax,    bx
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
