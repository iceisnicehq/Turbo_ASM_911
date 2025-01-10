.model    small
.186
.stack    100h
.data
    res        db    'res.txt', 0
    nums       db    "0000 0000 0000", 0dh, 0ah
    a          db    ?
    b          db    ?
    c          db    ?
    d          dw    ?
.code
start:
    mov    ax, @data
    mov    ds, ax
    mov    es, ax
    mov    bh, a
    mov    cx, word ptr [b]
    or    bh, bh
    jz    createFile
    or    cl, cl
    jz    createFile
    or    ch, ch
    jnz    denominator
createFile:
    mov    ah, 03Ch   
    xor    cx, cx
    mov    dx, offset res
    int    21h
    mov    bx, ax
    mov    di, offset nums
    mov    bh, -128d
    mov    cl, -128d
    mov    ch, -128d
denominator:
    mov    al, cl
    cbw
    mov    dx, ax
    sal    ax, 3
    sub    ax, dx
    imul    dx
    or    dx, dx
    jnz    overflow
    mov    si, ax
    mov    al, ch
    cbw
    mov    dx, ax
    mov    al, bh
    cbw
    add    dx, ax
    js    negative_ac
    add    si, dx
    js    overflow
    jc    overflow
    jmp    checkFile
negative_ac:
    neg    dx
    sub    si, dx
    jc    checkFile
    js    overflow
checkFile:
    or     bl, bl
    jnz    iteration
    jmp    numerator
overflow:
    mov    al, bh
    mov    bp, bx
    mov    bx, cx
    mov    si, di
    mov    cx, 3
writeFile:
    mov    dl, '+'
    or    al, al
    jns    posNumber
    mov    dl, '-'
    neg    al
posNumber:
    aam
    or    al, 30h
    mov    dh, al
    mov    al, ah
    aam
    or    ax, 3030h
    xchg    dl, al
    stosw
    mov    ax, dx
    stosw
    inc    di
    mov    al, bl
    xchg    bh, bl
    loop    writeFile
    xchg    bl, bh
    mov    di, si
    mov    si, bx
    mov    ah, 40h
    mov    bx, bp
    mov    cx, 16
    mov    dx, di
    xor    bh, bh
    int    21h
    mov    cx, si
    mov    bx, bp
iteration:
    cmp    ch, 7fh
    jne    inc_c
    cmp    cl, 7fh
    jne    inc_b
    cmp    bh, 7fh
    je    fileClose
    inc    bh
    mov    cl, 7fh
inc_b:
    mov    ch, 7fh
    inc    cl
inc_c:
    inc    ch
    jmp    denominator  
fileClose:
    mov    ah, 3Eh
    xor    bh, bh
    int    21h
    jmp    exit
numerator:
    mov    dx, ax
    sal    ax, 1
    add    dx, ax
    sal    ax, 3
    add    dx, ax
    sar    ax, 4
    imul   dx
    mov    bx, ax
    mov    al, ch
    imul   al
    xchg   ax, cx
    cbw
    add    ax, cx
    js     negative_c2b
    sub    bx, ax
    sbb    dx, 0000h
    jmp    division
negative_c2b:
    sub    bx, ax
    sbb    dx, 0FFFFh
division:
    mov    ax, bx
    idiv    si
    mov    [d], ax
exit:
    mov    ax, 4C00h
    int    21h
    end    start