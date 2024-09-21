%TITLE    "Lab1"

.186
.model    small
.stack    100h

.data
    path       db    'output.TXT', 0
    buffer     db    "A = -000, B = -000, C = -000", 0ah
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
    mov    bp,    ax 
    mov    al,    byte ptr [b]           
    cbw                                  
    imul   dx
;    js     dx_ax_neg
;    ;jmp    dx_ax_pos???
;    ; positive
;dx_ax_neg:
    add    bp,    6
    js     bx_6_neg
    add    ax,    bp
    adc    dx,    0
    jmp    SHORT division
;    ; bx_6 is positive
bx_6_neg: ; smth is wrong
    add    ax, bp
    sbb    dx, 0
;      
;    ;CASE   ax (12*b*c) + bx (a+6):
;    ;    match  ax < 0 and bx < 0: add ax, bx AND adc dx, 0
;    ;    match  ax > 0 and bx < 0: add ax, bx AND  
;    ;    match  ax > 0 and bx > 0: add ax, bx AND 
;    ;    match  ax < 0 and bx > 0: add ax, bx AND 
;    add    ax,    bx                     
;    cwd
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
    mov    cx,    29
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
