%TITLE    "Lab1"

.186
.model    small
.stack    100h

.data
    path       db    'OUTPUT.TXT', 0
    buffer     db    "A = -000, B = -000, C = -000", 0ah    
    count_a    db    ?
    count_b    db    ?
    count_c    db    ?
    a          db    ?
    b          db    ?
    c          db    ?

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

calc:
    mov    al,    byte ptr [c] 
    cbw                                  
    mov    cx,    ax                     
    sal    cx,    6                      
    add    cx,    ax           
    mov    al,    byte ptr [a]           
    cbw                                  
    mov    dx,    ax                     
    sal    ax,    3                      
    sub    ax,    dx                     
    imul   dx                  
    add    cx,    ax
    adc    dx,    0
    jz     
                     
    jnz    continue                      
    jmp    loop_iter                     
continue:                      
    sal    ax,    2                      
    mov    dx,    ax                     
    sal    ax,    1                      
    add    dx,    ax                     
    mov    al,    byte ptr [b]           
    cbw                                  
    imul   dx                            
    jo     wrBuffer
    add    ax,    6                      
    jo     wrBuffer
    add    ax,    bx                     
    cwd                                  
    idiv   cx                            
    or     si,    00000h                 
    jnz    not_exit                      
    jmp    Exit                          
not_exit:
    jmp    loop_iter 

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
