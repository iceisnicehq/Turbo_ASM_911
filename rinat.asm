.model    small
.186
.stack    100h

MIN            EQU    -128
MAX            EQU    127

.data
    file       db    'overflow.txt', 0
    string     db    "0000|0000|0000", 0dh, 0ah
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
    mov    cx, word ptr [c] ; cl = c, ch = b
    mov    bh, a
    or     cl, cl     ; is c zero?
    jz     cycles     ; jump to cycles
    or     ch, ch     ; is b zero?
    jz     cycles     ; jump to cycles
    or     bh, bh     ; is a zero?
    jnz    equation   ; jump to equation      
cycles:

    mov    dx, offset file  
    mov    di, offset string          
    mov    ah, 03Ch        ; create file            
    xor    cx, cx          ; normal file               
    int    21h    
    mov    bx, ax          ; save descr
    mov    cx, 08080h      ; cl = -128, ch = -128
    mov    bh, MIN         ; bh = -128
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
    jnz    iteration     ; if no then go to cycles
    jmp    numerator     ; else jump to numerator
overflow:
    mov     al, bh       ; al = a
    ; mov     bp, cx
    xchg    bx, cx       ; bx = cx, cx = bx
    mov     bp, cx       ; bp = bx   
    mov     cx, 3        ; cx = 3
    mov     si, di       ; si = di
buffering:
    mov     dh, '+'
    or      al, al
    jns     positive_number      
    mov     dh, '-'  
    neg     al
positive_number:
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
    xchg    bl, bh    
    mov     al, bl
    loop    buffering
    xchg    bl, bh
writeFile: 
    ; xchg    bx, cx       ; bx = cx, cx = bx
    ; mov     bp, cx       ; bp = bx  
    mov     di, si
    mov     si, bx
    mov     bx, bp
    xor     bh, bh
    mov     cx, 16
    mov     ah, 40h  
    int     21h
    mov     cx, si
    mov     bx, bp
iteration:
    cmp     cl, MAX
    jl      c_cycle
    cmp     ch, MAX
    jl      b_cycle
    cmp     bh, MAX
    jnl     closeFile
a_cycle:
    inc     bh
    mov     ch, MIN-1
b_cycle:
    mov     cl, MIN-1
    inc     ch    
c_cycle:
    inc     cl
not_max:
    jmp     equation  
closeFile:
    mov     ah, 3Eh
    xor     bh, bh
    int     21h
    jmp     SHORT Exit
numerator:
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
    xchg   ax, cx       ; al = c, cx = a^2
    cbw                 ; ax = c 
    xchg   ax, cx       ; ax = a^2, cx = c   
    sub    ax, cx       ; ax = a^2 - c 
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
