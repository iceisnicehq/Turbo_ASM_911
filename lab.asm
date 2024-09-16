%TITLE    "Lab1"
    ;--------------------------------------------------------------|
    ; d = (a + 12*b*c+6) / (65*c+7*a^2)   | 12 688 332       13:03 |
    ;--------------------------------------------------------------|
    ; overflow is when the resulting value is bigger than 16bits(S)|
    ;--------------------------------------------------------------|
.186
.model    small
.stack    100h

.data
    path       db    'OUTPUT.TXT', 0
    buffer     db    "A = -000, B = -000, C = -000", 0ah    ; 29 chars
    count_a    db    ?
    count_b    db    ?
    count_c    db    ?
    a          db    ?
    b          db    ?
    c          db    ?
    
.code 
Start:
    mov    ax,    @data                  ; make ds point 
    mov    ds,    ax                     ;      to DATASEG
    mov    al,    byte ptr [a]           ; mov al <- a
    or     al,    byte ptr [c]           ; is a = c? 
    jnz    calc                          ;    if a != 0 and c != 0
    mov    al,    -128                   ; al <-  -128
    mov    byte ptr [a],   al            ; a  <-  -128
    mov    byte ptr [b],   al            ; b  <-  -128
    mov    byte ptr [c],   al            ; c  <-  -128  
    mov    di,    offset buffer          ; di <-  address of buffer
mkFile:
    mov    dx,    offset path            ; dx <-  address of path
    mov    ah,    03Ch                   ; DOS function to create file
    xor    cx,    cx                     ; specify normal file attributes
    int    21h                           ; call DOS
    mov    si,    ax                     ; si <- file handle (0005h)
     ; a goes from -128 to 127
     ; b goes from -128 to 127
     ; EQUATION d = (a + 12*b*c+6) / (65*c+7*a^2)
calc:
    mov    al,    byte ptr [a]           ; al <- a
    cbw                                  ; ax <- a
    mov    bx,    ax                     ; bx <- a
    sal    ax,    3                      ; ax <- 8*a
    sub    ax,    bx                     ; ax <- 7*a
    imul   bx                            ; ax:dx <- 7*a^2, dx is undefined
    jo     wrBuffer                      ; if overflow
    mov    cx,    ax                     ; cx <- 7*a^2  
    mov    al,    byte ptr [c]           ; al <- c 
    cbw                                  ; ax <- c 
    mov    dx,    ax                     ; dx <- c 
    sal    dx,    6                      ; dx <- 64*c 
    add    dx,    ax                     ; dx <- 65*c 
    add    cx,    dx                     ; cx <- cx + dx
    jnz    continue                      ; if denominator is zero
    jmp    loop_iter                     ;    skip loop
continue:
    jo     wrBuffer                      
    sal    ax,    2                      ; ax <- 4*c
    mov    dx,    ax                     ; dx <- 4*c
    sal    ax,    1                      ; ax <- 8*c    
    add    dx,    ax                     ; dx <- 12*c <=> (4*c + 8*c)
    mov    al,    byte ptr [b]           ; al <- b
    cbw                                  ; ax <- b
    imul   dx                            ; dx:ax <- 12*b*c, dx is undefined 
    jo     wrBuffer
    add    ax,    6                      ; ax <- 12*b*c+6
    jo     wrBuffer
    add    ax,    bx                     ; ax <- a+12*b*c+6
    cwd                                  ; dx:ax <- a+12*b*c+6
    idiv   cx                            ; dx:ax/cx
    test   si,    00000h                 ; is file open?
    jnz    not_exit                      ;    if yes then continue
    jmp    Exit                          ;    else Exit 
not_exit:
    jmp    loop_iter 
    
wrBuffer:
        ;----------|
        ; write a  |
        ;----------|
    mov    al,    byte ptr [a]
    test   al,    080h                   ; is a negative?
    jns    posA
    neg    al                            ; get absolute value of a
posA:
    aam
    or     al,    30h
    mov    byte ptr [di + 7],    al      ; A = 0001, B = 0000, C = 0000\n
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    byte ptr [di + 6],    al      ; A = 0010, B = 0000, C = 0000\n
    mov    [bx + 5],    ah               ; A = 0100, B = 0000, C = 0000\n
        ;----------|
        ; write b  |
        ;----------|
    mov    al,    byte ptr [b]
    test   al,   080h                    ; is b negative?
    jns    posB
    neg    al                            ; get abs_value of b
posB:
    aam
    or     al,    30h
    mov    byte ptr [di + 17],    al     ; A = 0000, B = 0001, C = 0000\n
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    byte ptr [di + 16],    al     ; A = 0000, B = 0010, C = 0000\n
    mov    byte ptr [di + 15],    ah     ; A = 0000, B = 0100, C = 0000\n
        ;----------|
        ; write c  |
        ;----------|
    mov    al,    byte ptr [c]
    test   al,   080h                    ; is c negative?
    jns    posC
    neg    al                            ; abs val of c
posC:
    aam
    or     al,    30h
    mov    byte ptr [di + 27],    al     ; A = 0000, B = 0000, C = 1000\n
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    byte ptr [di + 26],    al     ; A = 0000, B = 0000, C = 0001\n
    mov    byte ptr [di + 25],    ah     ; A = 0000, B = 0000, C = 0010\n
    
wrFile:
    mov    dx,    di
    mov    cx,    29
    mov    ah,    40h
    mov    bx,    si
    int    21h
  
loop_iter:
    inc    byte ptr [c]
    jnz    negC
    mov    byte ptr [di + 24],    020h   ; A = 0000, B = 0000, C = 1000\n
negC:
    inc    byte ptr [count_c]
    jz     c_max
    jmp    calc
c_max:  
    mov    byte ptr [di + 24],    2dh    ; A = 0000, B = 0000, C = 1000\n
    inc    byte ptr [b]
    jnz    negB
    mov    byte ptr [di + 14],    020h   ; A = 0000, B = 1000, C = 0000\n
negB:
    inc    byte ptr [count_b]
    jz     b_max
    jmp    calc
b_max:
    mov    byte ptr [di + 14],    2dh    ; A = 0000, B = 0000, C = 1000\n
    inc    byte ptr [a]
    jnz    negA
    mov    byte ptr [di + 4],     020h   ; A = 1000, B = 0000, C = 0000\n
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
