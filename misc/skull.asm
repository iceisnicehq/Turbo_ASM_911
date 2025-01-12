.model small
.186
.stack 100h
.data
    file    db    "write.txt", 0
    output   db  "A = 0000 B = 0000 C = 0000", 0Dh, 0Ah
    A   db  ?
    B   db  ?
    C   db  ?
    result  db ?
    fileIdentifier  dw  ?
.code
start:
    mov    ax, @data
    mov    ds, ax
    mov    bx, word ptr A
    mov    al, C
    cbw
    mov    bp, ax   
    or    al, bl
    jnz    checkB
    jmp SHORT createFile
checkB:
    or    bh, 0
    jnz    yourPrimer
createFile:
    mov    ah, 3ch
    xor    cx, cx
    mov    dx, offset file
    int    21h
    mov    [fileIdentifier], ax
    mov    bp, -128; A
    mov    si, -128; B
    mov    di, -128; C
primer:
    mov    ax, si
    mov    cx, ax
    shl    ax, 2
    shl    cx, 1
    add    ax, cx
    imul    bp
    jo    preOverflow
    add    ax, di
    jo    ascii
    jmp    iteration
preOverflow:
    or    di, di
    jge   positive
    add   ax, di
    adc   dx, -1
    jmp SHORT check
positive:
    add   ax, di
    adc   dx, 0
check:
    or    dx, 0
    jz    continueCheck
    cmp    dx, -1
    jne    ascii
continueCheck:
    xor    dx, ax
    js    ascii
    jmp    iteration
yourPrimer:
    mov    al, bl
    cbw
    mov    cx, ax
    mov    al, bh
    cbw
    imul    cx 
    mov    cx, ax
    shl    ax, 2
    shl    cx, 1
    add    cx, ax
    mov    ax, bp
    add    cx, ax
    mov    si, cx
    mov    al, bh
    cbw
    mov    bx, ax
    imul    al
    imul    bx
    mov    cx, ax
    shl    cx, 5
    shl    ax, 2
    sub    cx, ax
    or    bp, 0
    jge    positiveAdd
    add    cx, bp
    adc    dx, -1
    jmp SHORT continuePrimer
positiveAdd:
    add    cx, bp
    adc    dx, 0
continuePrimer:
    add    cx, -19
    adc    dx, -1
    mov    ax, cx
    idiv    si
    mov    [result], al
    mov    [result+1], ah
    jmp    final
ascii:
    mov    ax, bp
    mov    bx, bp
    mov    [output+4], '+'
    shl    bx, 1
    jnc    aAscii
    mov    [output+4], '-'
    neg    al
aAscii:
    aam
    or    al, 30h
    mov    [output+7], al
    mov    al, ah
    aam
    or    al, 30h
    mov    [output+6], al
    or    ah, 30h
    mov    [output+5], ah
    mov    ax, si
    mov    bx, si
    mov    [output+13], '+'
    shl    bx, 1
    jnc    bAscii
    mov    [output+13], '-'
    neg    al
bAscii:
    aam
    or    al, 30h
    mov    [output+16], al
    mov    al, ah
    aam
    or    al, 30h
    mov    [output+15], al
    or    ah, 30h
    mov    [output+14], ah
    mov    ax, di
    mov    bx, di
    mov    [output+22], '+'
    shl    bx, 1
    jnc    cAscii
    mov    [output+22], '-'
    neg    al
cAscii:
    aam
    or    al, 30h
    mov    [output+25], al
    mov    al, ah
    aam
    or    al, 30h
    mov    [output+24], al
    or    ah, 30h
    mov    [output+23], ah
write:
    mov    ah, 40h
    mov    bx, fileIdentifier
    mov    dx, offset output
    mov    cx, 28
    int    21h
iteration:
    cmp    di, 127
    jl    L1
    cmp    si, 127
    jl    L2
    cmp    bp, 127
    jl    L3
    jmp SHORT final
L1:
    inc    di
    jmp    primer
L2:
    mov    di, -128
    inc    si
    jmp    primer
L3:
    mov    di, -128
    mov    si, -128
    inc    bp
    jmp    primer
final:
    mov     ax,4c00h
    int     21h     
end    start
    
    