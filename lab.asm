%TITLE    "Lab1" ;7 827 456

.model    small
.186
.stack    100h
; i have ax bx cx dx si di bp
; si holds file handle
; ax and dx are used for calcs,
; di holds the offset of the buffer 
; bp is free 
;KOHCTAHTbI
MIN            EQU    1
MAX            EQU    3


.data
    path       db    'OUTASM.TXT', 0
    buffer     db    "A = 0000, B = 0000, C = 0000", 0dh, 0ah
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
    or     al,    ah     ; al  = A, ah = C
    ;jnz    get_val      
mkFile:
    mov    dx,    offset path            
    mov    ah,    03Ch                   
    xor    cx,    cx                     
    int    21h                            
init:
    lea    di,    [buffer + 26]
    std 
    mov    ah,    MIN
    mov    si,    ax ; si_h = c_iter
    mov    al,    ah ; bp_h = b_iter
    mov    bp,    ax ; bp_l = a_iter
    jmp    calc  
get_val:
    mov    ch,    al
    lodsb ; al = b
    mov    di,    si
    mov    si,    ax ; si_h = c_iter
    mov    cl,    al
    mov    bp,    cx ; bp_l = a_iter   
    ; EQUATION    d = a + 12*b*c +6 / 65*c + 7*a^2
calc:
    jmp    wrBuffer
    
    
    mov    ax,    bp
    cbw
    mov    bx,    ax
    sal    ax,    1
    ;add          
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
    mov    bh,    al   
    cbw    
    mov    cx,    ax                     
    sal    cx,    6                      
    add    cx,    ax
    add    cx,    bp
    add    cx,    dx
    jo     wrBuffer
    or     si,    si
    ;jnz    loop_iter
    ;jmp    numerator
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
    sub    di,    6
    
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
    sub    di,    6
    
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
    sub    di,    2
    
wrFile:
    mov    dx,    di
    mov    di,    bx
    mov    cx,    30
    mov    ah,    40h
    mov    bx,    si
    xor    bh,    bh
    int    21h
    
    ;mov    si,    ax ; si_h = c_iter
    ;mov    al,    ah ; bp_h = b_iter
    ;mov    bp,    ax ; bp_l = a_iter    
loop_iter:
    mov    ax,    si
    add    si,    0100h
    ; how to check if si_h = MAX
    cmp    ah,    MAX
    jl     not_max
;c max
    mov    ax,    si
    mov    ah,    MIN
    mov    si,    ax
    mov    ax,    bp
    add    bp,    0100h
    cmp    ah,    MAX
    jl     not_max
;b max
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
;numerator:
;    mov    al,    bh 
;    cbw
;    mov    dx,    ax    
;    sal    dx,    1
;    add    dx,    ax
;    sal    dx,    1                      
;    sal    dx,    1
;    mov    al,    bl
;    cbw
;    mov    bx,    ax 
;    mov    al,    byte ptr [b]           
;    cbw                                  
;    imul   dx
;    add    bx,    6
;    js     neg_bx
;    add    ax,    bx
;    adc    dx,    0





;    jmp    SHORT division
;neg_bx:
;    neg    bx
;    sub    ax,    bx
;    sbb    dx,    0
;division:
;    idiv   cx
;    and    si,    00FFh
;    mov    di,    si
;    stosw     
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
