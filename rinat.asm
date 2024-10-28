.model    small
.186
.stack    100h

MIN            EQU    -128
MAX            EQU    127

.data
    fil        db    'A_B_C.TXT', 0
    string     db    "0000_0000_0000", 0dh, 0ah
.data?
    a          db    ?
    c          db    ?
    b          db    ?
    d          dw    ?
.code
Start:
    mov    ax, @data                  
    mov    ds, ax  
    mov    es, ax
    ; check for all three if one is zero then we go loop
    ; bl = descr ; bh = a
    ; cl = c     ; ch = b
    mov    cx, word ptr [c]
    mov    bh, a
    ;checking
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
    ; EQUATION    d = 517*b^2+a^2-c / 12*c^2 + a
    ; 517 is 11 and 47
    ; bl = descr ; bh = a
    ; cl = c     ; ch = b
equation:
    mov    al, cl        ; al = c
    cbw                  ; ax = c
    mov    bp, ax        ; bp = c
    sal    ax, 1         ; ax = 2c
    add    ax, bp        ; ax = 3c
    sal    bp, 2         ; bp = 4c
    imul   bp            ; dx:ax = 12c^2
    or     dx, dx        ; is dx zero?
    jnz    overflow      ; if yes, jump to writing    
    mov    si, ax        ; si = ax = 12c^2
    mov    al, bh        ; al = a
    cbw                  ; ax = a
    or     ax, ax        ; is ax negative (sf = 1) ? 
    js     negative_a    ; if yes then jump to negative case
    add    si, ax        ; si = 12c^2 + a
    js     overflow      ; if sf = 1 (si > 07fff) then jump to overflow
    jmp    SHORT isFile  ; jmp to checking file 
negative_a:
    neg    ax            ; ax = |ax|
    sub    si, ax        ; si = 12c^2 - a
    js     overflow      ; if sf = 1 (si > 07fff) then jump to overflow
    jmp    SHORT isFile  ; jmp to checking file  
isFile:
    or     bl, bl        ; is descriptor zero?
    jnz    cylces        ; if no then go to cycles
    jmp    numerator     ; else jump to numerator
file_write:
    mov     bp, di
    mov     dh, ch
prom:
    mov     al, dh 
    mov     dh, 2Bh
    or      al, al
    jns     pos_wr      
    mov     dh, 2Dh  
    neg     al
pos_wr:
    aam
    or      al, 30h
    mov     dl, al
    xchg    al, ah
    aam
    or      ax, 3030h    
    xchg    dh, al
    stosw
    mov     ax, dx
    xchg    ah, al
    stosw
    inc     di
    mov     dh, bl
    xchg    bl, bh    
    cmp     di, 0016h
    jne     prom
write:   
    xchg    bl, bh
    mov     di, bp
    mov     dx, di
    mov     bp, bx    
    mov     bl, cl
    xor     bh, bh    
    mov     si, cx
    mov     cx, 16
    mov     ah, 40h  
    int     21h
    mov     cx, si
    mov     bx, bp
    ; bl = descr ; bh = a
    ; cl = c     ; ch = b
cycles:
    cmp     cl, MAX
    jl      c_cycle
    cmp     ch, MAX
    jl      b_cycle
    cmp     bh, MAX
    jnl     fileExit
a_cycle:
    inc     bh
    mov     ch, MIN-1
b_cycle:
    mov     cl, MIN-1
    inc     ch    
c_cycle:
    inc     cl
not_max:
    jmp     short equation  
clFile:
    mov    ah, 3Eh
    xor    bh, bh
    int    21h
    jmp    SHORT Exit
numerator:
    ; EQUATION    d = 517*b^2+a^2-c / 12*c^2 + a
    ; 517 is 11 and 47
    ; bl = descr ; bh = a
    ; cl = c     ; ch = b
    ;      si     =    denom
    mov    al, ch       ; al = b
    cbw                 ; ax = b
    mov    bp, ax       ; bp = b         
    sal    ax, 1        ; ax = 2b 
    add    bp, ax       ; bp = 3b
    sal    ax, 2        ; ax = 8b
    add    ax, bp       ; ax = 11b
    mov    dx, ax       ; dx = 11b   
    sal    dx, 2        ; dx = 44b
    add    dx, bp       ; dx = 47b 
    imul   dx           ; dx:ax = 517b^2  
    mov    bp, ax       ; dx:bp = 517b^2  
    mov    al, bh       ; al = a
    imul   al           ; ax = a^2
    sub    ax, cl       ; ax = a^2 - c 
    js     negative_a2c ; if ax is negative jump to negative_a2c
    add    bp, ax       ; dx:bp = 517b^2 + a^2 -c
    adc    dx, 0        ; add carry to dx    
    jmp    SHORT divide ; go to div
negative_a2c:
    neg    ax           ; ax = |a^2-c|
    sub    bp,    ax    ; dx:bp = 517b^2 - (a^2 - c)
    sbb    dx,    0     ; sub borrow from dx
divide:
    mov    ax,    bp    ; dx:ax = dx:bp
    idiv   si           ; 517b^2 + a^2 - c / si
    mov    [d],   ax    ; store result 
Exit:
    mov    ah,    04Ch
    int    21h
    End    Start  
