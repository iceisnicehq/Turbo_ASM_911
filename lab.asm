%TITLE    "Lab1"

.186
.model    small
.stack    100h

.data
    path       db    'outtest.TXT', 0
    buffer     db    "A = -000, B = -000, C = -000", 0dh, 0ah
    a          db    ?
    b          db    ?
    c          db    ?    
    count_a    db    ?
    count_b    db    ?
    count_c    db    ?

.code 
Start:
    mov    ax,    @data                  
    mov    ds,    ax    
    mov    al,    byte ptr [a]           
    or     al,    byte ptr [c]           
    jnz    calc                          
    mov    al,    -128                   
    mov    byte ptr [a],   al            
    mov    byte ptr [b],   al            
    mov    byte ptr [c],   al            
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
    mov    bl,    al  ; bl = a
    imul   al
    cmp    ax,    5929d
    jae    wrBuffer   
    xor    bp,    bp
    mov    dx,    ax                     
    sal    ax,    2
    sub    ax,    dx
    sal    dx,    2    
    add    dx,    ax
    jno    no_of
    mov    bp,    07FFFh
    sub    dx,    bp
no_of:
    mov    al,    byte ptr [c]           
    mov    bh,    al   ; bh = c
    cbw    
    mov    cx,    ax                     
    sal    cx,    6                      
    add    cx,    ax
    add    cx,    dx
    jo     wrBuffer
    add    cx,    bp
    jo     wrBuffer
    jnz    continue
    jmp    loop_iter
continue:
    mov    al,    bh  ; al = c
    cbw    
    sal    ax,    2   
    mov    dx,    ax                     
    sal    dx,    1                      
    add    dx,    ax
    mov    al,    bl
    cbw
    mov    bx,    ax 
    add    bx,    6
    mov    al,    byte ptr [b]           
    cbw                                  
    imul   dx
    js     neg_of
    cmp    ax, 32767
    jae    above7FFF
    add    ax, bx
    jns    no_burrow
    dec    dx
no_burrow:
    jmp    SHORT division
above7FFF:
    add    ax, bx
    jns    no_carry
    inc    dx
no_carry:
    jmp    SHORT division
neg_of:
    cmp    ax, -32768
    jbe    above8000
    add    ax, bx
    jns    no_carr
    dec    dx
no_carr:
    jmp    SHORT division
above8000:
    cmp    bx, ax
    ; CASE dx:ax is negative
    ;       ax << -65536  
    ;           bp is neg -> just add ax, bp    sf = 1  cf = 1
    ;           bp is pos -> just add ax, bp    sf = 1
    ;       ax = -65536   
    ;           bp is neg -> add ax, bp AND dec dx (if carry) sf = 1
    ;           bp is pos -> just add ax, bp    NO F
    ;       ax = -32768
    ;           bp is neg -> just add ax, bp    cf = 1 of = 1
    ;           bp is pos -> just add ax, bp    sf = 1
    ;       ax = -0
    ;           bp is neg -> add ax, bp AND dec dx (if burrow) sf = 1
    ;           bp is pos -> just add ax, bp    NO F
    ;       |bp| > ax
    ;           bp is neg -> just add ax, bp    sf = 1
    ;           bp is pos -> add ax, bp AND inc dx (if burrow) sf = 1
    ; CASE dx:ax is positive    sf = 0
    ;       ax << 65535       
    ;           bp is neg -> just add ax, bp    sf = 1  cf = 1
    ;           bp is pos -> just add ax, bp    sf = 1
    ;       ax = 65535
    ;           bp is neg -> just add ax, bp    sf = 1  cf = 1
    ;           bp is pos -> add ax, bp AND inc dx  (if carry)  cf = 1
    ;       ax = 32767
    ;           bp is neg -> just add ax, bp    cf = 1
    ;           bp is pos -> just add ax, bp    sf = 1  of = 1
    ;       ax = +0
    ;           bp is neg -> add ax, bp AND dec dx (if burrow)  sf = 1
    ;           bp is pos -> just add ax, bp    NO F
    ;       |bp| > ax
    ;          bp is neg  -> add ax, bp AND dec dx (if burrow)  sf = 1
    ;          bp is pos  -> just add ax, bp    NO F


    
    ; if of then check if signed
    ; if of of pos + pos then sf = 1 and cf = 0
    ; if of of neg+neg then sf = 0  and  cf = 1 for any neg+neg
    ; what if carry was generated?
    ; if big ax + bp is > 65535 then cf = 1 and i should add it to dx
    ; if 
division:                                  
    idiv   cx                            
    jmp    SHORT loop_iter 
wrBuffer:
    mov    al,    byte ptr [a]
    test   al,    080h                   
    jns    posA
    neg    al                            
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
loop_iter:
    or     si,    0000h
    jz     Exit
    inc    byte ptr [c]
    jnz    negC
    mov    byte ptr [di + 24],    020h   
negC:
    inc    byte ptr [count_c]
    jz     c_max
    jmp    calc
c_max:  
    mov    byte ptr [di + 24],    2dh    
    inc    byte ptr [b]
    jnz    negB
    mov    byte ptr [di + 14],    020h   
negB:
    inc    byte ptr [count_b]
    jz     b_max
    jmp    calc
b_max:
    mov    byte ptr [di + 14],    2dh    
    inc    byte ptr [a]
    jnz    negA
    mov    byte ptr [di + 4],     020h   
negA:
    inc    byte ptr [count_a]  
    jz     clFile
    jmp    calc
clFile:
    mov    ah,    3Eh
    mov    bx,    si
    int    21h
Exit:
    mov    ah,    04Ch
    mov    al,    0
    int    21h
    End    Start
