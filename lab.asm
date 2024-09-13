%TITLE "Lab1"
    ;--------------------------------------
    ; d = (a + 12*b*c+6) / (65*c+7*a^2)   |
    ;--------------------------------------
    ; overflow is when the resulting value is bigger than 16bits
.186
.model small
.stack 100h

SMART
JUMPS
LOCALS @@

.data
    count_a    db    255
    path       db    'D:\NEWFILE.TXT', 0
    buffer     db    "A = 0000, B = 0000, C = 0000", 0ah ; 29 chars
    count_b    db    ?
    count_c    db    ?
    a          db    ?
    b          db    ?
    c          db    ?
    handle     dw    ?
    
.code 
Start:
    mov    ax,    @data
    mov    ds,    ax
    xor    ax,    ax
    
    mov    al,    [a]
    or     al,    [b]
    or     al,    [c]
    jnz    calc
    or     [a],    -128
    
mkFile:
    mov    dx,    offset path
    mov    ah,    03Ch
    xor    cx,    cx
    int    21h
    mov    [handle],    ax

loop_a:
    mov    [count_b],    255
    mov    [b],     -128
loop_b:
    mov    [count_c],    255
    mov    [c],    -128
loop_c:
            ;   d = (a + 12*b*c+6) / (65*c+7*a^2)
calc:
    mov    al,    [a]           ; ax <- a
    shl    ax,    3             ; ax <- 8*a
    sub    ax,    word ptr [a]  ; ax <- 7*a
    imul   word ptr [a]         ; ax <- 7*a^2
    jc     wrBuffer
    mov    bl,    [c]           ; bl <- c
    shl    bx,    6             ; bx <- 64*c
    add    bx,    word ptr [c]  ; bx < 65*c
    add    bx,    ax            ; bx <- ax + bx
    jz     loop_skip            ; if denominator is zero
    jc     wrBuffer             ; if overflow
    mov    cl,    [b]           ; cl <- b
    shl    cx,    2             ; cx <- 4*b
    mov    ax,    cx            ; ax <- cx
    shl    cx,    1             ; cx <- 8*b    
    add    ax,    cx            ; ax <- ax + cx (4*b + 8*b)
    imul   word ptr [c]         ; ax(:dx) <- 12*b*c
    jc     wrBuffer
    add    ax,    6             ; ax <- a+12*b*c+6
    jc     wrBuffer
    add    ax,    word ptr [a]
    xchg   ax,    bx            ; ax <- bx, bx <- ax
    idiv   bx                   ; ax/bx
    or     [handle],    00000h
    jz     Exit
    jmp    loop_skip

wrBuffer:
    mov    al,    byte ptr [a]
    test   [a],    080h         ; is negative?
    jns    @@posA
    neg    al
    mov    [buffer+4], 2dh      ; A = 1000, B = 0000, C = 0000\n

@@posA:
        ;-----------
        ; write a  |
        ;----------|
    aam
    or     al,    30h
    mov    [buffer+7],    al    ; A = 0001, B = 0000, C = 0000\n
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    [buffer+6],    al    ; A = 0010, B = 0000, C = 0000\n
    mov    [buffer+5],    ah    ; A = 0100, B = 0000, C = 0000\n
        ;-----------
        ; write b  |
        ;----------|
    mov    al,    byte ptr [b]
    test   [b],   080h          ; is negative?
    jns    @@posB
    neg    al
    mov    [buffer+14], 2dh     ; A = 0000, B = 1000, C = 0000\n
@@posB:
    aam
    or     al,    30h
    mov    [buffer+17],    al   ; A = 0000, B = 0001, C = 0000\n
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    [buffer+16],    al   ; A = 0000, B = 0010, C = 0000\n
    mov    [buffer+15],    ah   ; A = 0000, B = 0100, C = 0000\n
        ;-----------
        ; write c  |
        ;----------|
    mov    al,    byte ptr [c]
    test   [c],   080h          ; is negative?
    jns    @@posC
    neg    al
    mov    [buffer+24], 2dh     ; A = 0000, B = 0000, C = 1000\n
@@posC:
    aam
    or     al,    30h
    mov    [buffer+27],    al   ; A = 0000, B = 0000, C = 1000\n
    mov    al,    ah
    aam
    or     ax,    3030h
    mov    [buffer+26],    al   ; A = 0000, B = 0000, C = 0001\n
    mov    [buffer+25],    ah   ; A = 0000, B = 0000, C = 0010\n
    mov    [buffer+28],    0ah  ; A = 0000, B = 0000, C = 0100\n
    
wrFile:
    mov    dx,    offset buffer
    mov    cx,    29
    mov    ah,    40h
    mov    bx,    handle
    int    21h
    mov    [buffer+4],     030h ; A = 1000, B = 0000, C = 0000\n
    mov    [buffer+14],    030h ; A = 0000, B = 1000, C = 0000\n
    mov    [buffer+24],    030h ; A = 0000, B = 0000, C = 1000\n
loop_skip:
    inc    [c]
    dec    [count_c]
    cmp    [count_c], -1
    jnz    loop_c  
    inc    [b]
    dec    [count_b]
    cmp    [count_b], -1
    jnz    loop_b
    inc    [a]
    dec    [count_a]
    cmp    [count_a], -1
    jnz    loop_a
    
clFile:
    mov    ah,    3Eh
    mov    bx,    [handle]
    int    21h
    
Exit:
    mov    ah,    04Ch
    mov    al,    0
    int    21h
    End    Start
    
    
