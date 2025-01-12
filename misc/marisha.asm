.MODEL SMALL 
.186 
.STACK 100H 
.data
    file1    db    'myfile.txt', 0
    row    db    'A = 0000 B = 0000 C = 0000', 0Dh, 0ah
    zadany    db    ?
    result    dw    ?
    A    db    ?
    B    db    ?
    C    db    ?
.CODE 
MAIN: 
    MOV    AX,    @data
    MOV    DS, AX
CHECK:
    mov    ch, [A] 
    mov    bh, [B]
    mov    cl, [C]
    mov    al, bh 
    cbw
    or    ax, cx
    jz    CREATE_FILE 
    mov    zadany, 1
    jmp    EXPRESSION
chislitel:
    mov    al, ch  
    imul    bh 
    neg    ax  
    mov    bp, ax 
    mov    al, cl 
    cbw        
    mov    dx, ax 
    shl    ax, 1  
    mov    di, ax 
    shl    ax, 3  
    add    di, ax 
    add    di, dx 
    add    bp, di 
    mov    ax, dx 
    mov    di, dx 
    shl    dx, 1  
    shl    ax, 2  
    add    ax, dx 
    imul    di    
    or    bp,bp
    jns    next
    neg    bp
    sub    ax, bp
    jmp    proverka
next:
    add    ax, bp 
proverka:
    js    minus_ax
    adc    dx, 0
    jmp    delenie
minus_ax:
    sbb    dx, 0 
delenie:
    idiv    si    
    mov    [result], ax      
    jmp    FINISH
CREATE_FILE:
    mov    AH, 3Ch 
    mov    DX, offset file1
    xor    CX, CX 
    int    21h 
    mov    bl, al
INITIAL_VALUE:
    mov    ch, -128   
    mov    bh, -128   
    mov    cl, -128   
    jmp    EXPRESSION
EXPRESSION:
    mov    al, ch 
    cbw        
    mov    si, ax 
    sal    ax, 2  
    add    si, ax 
    mov    al, bh     
    cbw
    imul    si    
    cmp    zadany, 0
    jnz    ZADAN_VAR
    or    dx, dx
    jz    PLUS_RESULT
    cmp    dx, 0FFFFh
    jnz    WRITE_A 
MINUS_RESULT:
    mov    si,ax 
    mov    al, cl 
    cbw 
    or    ax, ax
    js    MINUS_C1
PLUS_C1:
    add    si, ax 
    lahf 
    test    ah, 10000001b
    jz    WRITE_A  
    jmp    CYCLE
MINUS_C1:
    neg    ax
    sub    si, ax 
    jns    WRITE_A
    jc     WRITE_A
    jmp    CYCLE       
PLUS_RESULT:
    mov    si,ax 
    mov    al, cl 
    cbw 
    or    ax, ax
    js    MINUS_C2
PLUS_C2:
    add    si, ax 
    js    WRITE_A
    jc    WRITE_A
    jmp    CYCLE
MINUS_C2:
    neg    ax
    sub    si, ax 
    jc    CYCLE
    js    WRITE_A
    jmp    CYCLE
ZADAN_VAR:
    mov    si,ax 
    mov    al, cl 
    cbw 
    add    si, ax 
    jmp    chislitel
CYCLE:
    cmp    cl, 127
    JL    INC_C 
    mov    cl, -128
    cmp    bh, 127
    JL    INC_B
    mov    bh, -128
    cmp    ch, 127
    JL    INC_A
    JMP    CLOSE_FILE
INC_C:
    inc    cl
    jmp    EXPRESSION
INC_B:
    inc    bh  
    jmp    EXPRESSION
INC_A:  
    inc    ch
    jmp    EXPRESSION
WRITE_A:
    mov    al, bl
    mov    [row+4], "+"
    cmp    al, 0
    jl    NEG_A
    jmp    ASKII_A
NEG_A:
    neg    al
    mov    [row+4], "-"    
ASKII_A: 
    aam 
    or    al, 30h
    mov    [row+7], al
    mov    al, ah
    aam 
    or    al, 30h
    mov    [row+6], al
    or    ah, 30h
    mov    [row+5], ah 
WRITE_B:
    mov    al, bh
    mov    [row+13], "+"
    cmp    al, 0
    jl    NEG_B
    jmp    ASKII_B
NEG_B:
    neg    al
    mov    [row+13], "-"
ASKII_B:
    aam 
    or    al, 30h
    mov    [row+16], al
    mov    al, ah
    aam 
    or    al, 30h
    mov    [row+15], al
    or    ah, 30h
    mov    [row+14], ah 
WRITE_C:
    mov    al, cl
    mov    [row+22], "+"
    cmp    al, 0
    jl    NEG_C
    jmp    ASKII_C
NEG_C:
    neg    al
    mov    [row+22], "-"    
ASKII_C:
    aam 
    or    al, 30h
    mov    [row+25], al
    mov    al, ah
    aam 
    or    al, 30h
    mov    [row+24], al
    or    ah, 30h
    mov    [row+23], ah 
WRITE:
    mov    bp, bx 
    mov    di, cx 
    xor    bh, bh 
    mov    AH, 40h
    mov    dx, offset row
    mov    cx, 28
    int    21h 
    mov    bx, bp 
    mov    cx, di
    jmp    CYCLE
CLOSE_FILE:
    mov    AH, 3Eh 
    mov    bh, ch
    int    21h
FINISH:
    mov    AH, 4CH 
    INT    21H 
END MAIN  