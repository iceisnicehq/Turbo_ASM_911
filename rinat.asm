.model    small
.186
.stack    100h

.data
    file       db    'overflow.txt', 0
    string     db    "0000|0000|0000", 0dh, 0ah
    c          db    ?
    b          db    ?
    a          db    ?
    d          dw    ?
.code
Start:
    mov    ax, @data                  
    mov    ds, ax  
    mov    es, ax
    mov    cx, word ptr [c] ; cl = c, ch = b
    mov    bh, a            ; bh = a
    or    cl, cl     ; is c zero?
    jz    cycles     ; jump to cycles
    or    ch, ch     ; is b zero?
    jz    cycles     ; jump to cycles
    or    bh, bh     ; is a zero?
    jnz    equation   ; jump to equation      
cycles:
    mov    dx, offset file      ; dx point to file offset
    mov    di, offset string    ; di point to string offset
    mov    ah, 03Ch        ; create file   function          
    xor    cx, cx          ; normal file               
    int    21h             ; call dos 
    mov    bx, ax          ; save descr
    mov    cx, 8080h       ; cl = -128, ch = -128
    mov    bh, 80h         ; bh = -128
    ; EQUATION    d = 517*b^2+a^2-c / 12*c^2 + a
    ; 517 is 11 and 47
    ; bl = descr ; bh = a
    ; cl = c     ; ch = b
equation:
    mov    al, cl        ; al = c
    cbw                  ; ax = c
    mov    dx, ax        ; dx = c
    sal    ax, 1         ; ax = 2c
    add    ax, dx        ; ax = 3c
    sal    dx, 2         ; dx = 4c
    imul    dx            ; dx:ax = 12c^2
    or    dx, dx        ; is dx zero?
    jnz    overflow      ; if yes, jump to writing    
    mov    si, ax        ; si = ax = 12c^2
    mov    al, bh        ; ah = a
    cbw
    or ax, ax
    js    negative_a    ; if ax < 0 then jump to negative case
    add    si, ax        ; ELSE: si = 12c^2 + a
    js    overflow      ; if sf = 1 (si > 07fff) then jump to overflow
    jc    overflow      ; if cf = 1 (e.g. si = FFFF + 1 = 0000 [cf = 1]) => jump to overflow
    jmp    short isFile  ; jmp to checking file 
negative_a:
    neg    ax            ; ax = |ax|
    sub    si, ax        ; si = 12c^2 - a
    jc    isFile        ; if cf = 1 (e.g. 0001 - 0002 = FFFF [cf = 1, sf = 1])   
    js    overflow      ; if sf = 1 (si > 07fff) then jump to overflow
    jmp    short isFile  ; jmp to checking file  
isFile:
    or    bl, bl        ; is descriptor zero?
    jnz    iteration     ; if no then go to cycles
    jmp    short numerator     ; else jump to numerator
overflow:
    mov    al, bh       ; al = a
    mov    bp, bx       ; bp = bx  (bh = a, bl = descr)
    mov    bx, cx       ; bx = b+c   
    mov    cx, 3        ; cx = 3
    mov    si, di       ; si = di
strWrite:
    mov    dh, '+'      ; dh = 2Bh
    or    al, al       ; check al sign
    jns    positive_number      ; jump if al >= 0
    mov    dh, '-'       ; dh = 2Dh
    neg    al            ; al = |al|
positive_number:
    aam                  ; adjust al to BCD (e.g. 127d==7fh => ax = 0C07h)
    or    al, 30h       ; convert al to ascii    (e.g. ax = 0C37h)
    mov    dl, al        ; dx = 2D|al             (e.g. dx = 2B37h) 
    xchg    al, ah        ; al = ah, ah = al       (e.g. ax = 370Ch)
    aam                  ; adjust al to BCD       (e.g. ax = 0102h) 
    or    ax, 3030h     ; convert al to ascii    (e.g. ax = 3132h)      
    xchg    dh, al        ;                        (e.g. ax = 2B31h, dx = 3237h)  
    stosw                ; string =               (+100|0000|0000) di = di + 2
    mov    ax, dx        ;                        (e.g. ax = 3237h)
    xchg    ah, al        ;                        (e.g. ax = 3732h)
    stosw                 ; string =               (+127|0000|0000) di = di + 4
    inc    di            ;                                         di = di + 5
    xchg    bl, bh        ; bl = b, bh = a FOR 1 loop, bl = a, bh = b FOR 2 loop, bl = b, bh = a FOR 3 loop
    mov    al, bl        
    loop    strWrite     ; loop
writeFile: 
    xchg    bl, bh        ; bl = a, bh = b
    mov    di, si        ; di point to the beginning of STRING
    mov    dx, di        ; dx = di 
    mov    si, bx        ; save bx
    mov    bx, bp        ; get bl = descr
    xor    bh, bh        ; bh = 0
    mov    cx, 16        ; number of bytes to write (string length)
    mov    ah, 40h       ; write to file function
    int    21h           ; call dos
    mov    cx, si        ; restore cx
    mov    bx, bp        ; restore bx
iteration:
    cmp    cl, 7fh       
    jne    c_loop
    cmp    ch, 7fh
    jne    b_loop
    cmp    bh, 7fh
    je    closeFile
    inc    bh
    mov    ch, 7fh
b_loop:
    mov    cl, 7fh
    inc    ch    
c_loop:
    inc    cl
    jmp    equation  
closeFile:
    mov    ah, 3Eh
    xor    bh, bh
    int    21h
    jmp    SHORT Exit
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
    imul    dx           ; dx:ax = 517b^2  
    mov    bp, ax       ; dx:bp = 517b^2  
    mov    al, bh       ; al = a
    imul    al           ; ax = a^2
    xchg    ax, cx       ; al = c, cx = a^2
    cbw                 ; ax = c 
    xchg    ax, cx       ; ax = a^2, cx = c   
    sub    ax, cx       ; ax = a^2 - c 
    js    negative_a2c ; if ax is negative jump to negative_a2c
    add    bp, ax       ; dx:bp = 517b^2 + a^2 -c
    adc    dx, 0        ; add carry to dx    
    jmp    SHORT divide ; go to div
negative_a2c:
    neg    ax           ; ax = |a^2-c|
    sub    bp, ax    ; dx:bp = 517b^2 - (a^2 - c)
    sbb    dx, 0     ; sub borrow from dx
divide:
    mov    ax, bp    ; dx:ax = dx:bp
    idiv    si           ; 517b^2 + a^2 - c / si
    mov    [d], ax    ; store result 
Exit:
    mov    ah, 04Ch
    int    21h
    End    Start  
