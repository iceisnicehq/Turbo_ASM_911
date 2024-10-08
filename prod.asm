%TITLE    "Lab1" ;7 827 456

.model    small
.186
.stack    100h

;KOHCTAHTbI
MIN            EQU    -128
MAX            EQU    127
CYCLES         EQU    255 - MAX + MIN

.data
    path       db    'OUTASM.TXT', 0
    buffer     db    "A =  000, B =  000, C =  000", 0dh, 0ah
.data?
    count_a    db    ?
    a          db    ?
    count_b    db    ?
    b          db    ?
    count_c    db    ?
    c          db    ?


.code
Start:
    mov    ax,    @data                  
    mov    ds,    ax   
    mov    al,    byte ptr [a]           
    or     al,    byte ptr [c]           
    jnz    calc                          
    mov    ah,    MIN
    mov    al,    CYCLES
    mov    word ptr [count_a],   ax                      
    mov    word ptr [count_b],   ax
    mov    word ptr [count_c],   ax  
    mov    di,    offset buffer
mkFile:
    mov    dx,    offset path            
    mov    ah,    03Ch                   
    xor    cx,    cx                     
    int    21h                           
    mov    si,    ax                     
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
calc:
    mov    al,    byte ptr [a]
    mov    bl,    al  
    imul   al
    cmp    ax,    5929d
    jae    wrBuffer   
    xor    bp,    bp
    mov    dx,    ax                     
    sal    ax,    1
    add    dx,    ax
    sal    ax,    1
    add    dx,    ax
    jno    no_of
    mov    bp,    20000d
    sub    dx,    bp
no_of:
    mov    al,    byte ptr [c]           
    mov    bh,    al   
    cbw    
    mov    cx,    ax                     
    sal    cx,    6                      
    add    cx,    ax
    add    cx,    bp
    add    cx,    dx
    jo     wrBuffer
    or     si,    si
    jnz    loop_iter
    jmp    numerator
wrBuffer:   
    mov    al,    byte ptr [a]
    test   al,    080h                   
    jns    posA
    neg    al
    mov    byte ptr [di + 4],     02dh      
posA:
    aam
    or     al,    30h
    mov    byte ptr [di + 7],    al      
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    byte ptr [di + 6],    al      
    mov    byte ptr [di + 5],    ah      
    mov    al,    byte ptr [b]
    test   al,   080h                    
    jns    posB
    neg    al
    mov    byte ptr [di + 14],    2dh     
posB:
    aam
    or     al,    30h
    mov    byte ptr [di + 17],    al     
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    byte ptr [di + 16],    al     
    mov    byte ptr [di + 15],    ah     
    mov    al,    byte ptr [c]
    test   al,   080h                    
    jns    posC
    neg    al
    mov    byte ptr [di + 24],    2dh        
posC:
    aam
    or     al,    30h
    mov    byte ptr [di + 27],    al     
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    byte ptr [di + 26],    al     
    mov    byte ptr [di + 25],    ah     
wrFile:
    mov    dx,    di
    mov    cx,    30
    mov    ah,    40h
    mov    bx,    si
    int    21h
    mov    byte ptr [di +  4],     020h 
    mov    byte ptr [di + 14],     020h 
    mov    byte ptr [di + 24],     020h 
loop_iter:
    add    word ptr [count_c],     0101h
    cmp    byte ptr [count_c],     00h
    jz     c_max
    jmp    calc
c_max:
    mov    byte ptr [c],    MIN
    mov    byte ptr [count_c],    CYCLES
    add    word ptr [count_b],    0101h
    cmp    byte ptr [count_b],    00h
    jz     b_max
    jmp    calc
b_max:
    mov    byte ptr [b],    MIN
    mov    byte ptr [count_b],    CYCLES
    add    word ptr [count_a],    0101h
    cmp    byte ptr [count_a],    00h
    jz     clFile
    jmp    calc
clFile:
    mov    ah,    3Eh
    mov    bx,    si
    int    21h
    jmp    SHORT Exit
numerator:
    mov    al,    bh;c  
    cbw
    mov    dx,    ax    
    sal    dx,    1
    add    dx,    ax
    sal    dx,    1                      
    sal    dx,    1
    mov    al,    bl;a
    cbw
    mov    bx,    ax 
    mov    al,    byte ptr [b]           
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
