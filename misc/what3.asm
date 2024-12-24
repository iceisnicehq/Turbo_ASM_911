.model small ; 12 583 167
.486
.stack 100h
.data
C       db      ?
A       db      ?
B       db      ?
D       dq      ?
.code
start:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax
    xor     ax, ax
    push    word ptr C
    push    word ptr B
    push    word ptr A
    call    calculation
    push    dword ptr D
    int     3
    mov     ah, 4Ch
    int     21h
calculation:
    push    bp                
    mov     bp, sp
    mov     al, [bp+8]  
    mov     ch, al
    cbw           
    mov     si, ax
    sal     ax, 1
    add     si, ax
    mov     al, [bp+4] 
    mov     cl, al
    imul    al      
    mov     bx, ax      
    mov     al, cl 
    cbw             
    imul    bx 
    or      dx, dx
    jz      positive
    cmp     dx, 0FFFFh
    jz      negatA
    jmp     short check
positive:
    sal     si, 1
    js      negatC_polA
    add     ax, si
    js      check      
    jc      check
    jmp     short chislitel
negatC_polA:
    neg     si
    sub     ax, si
    jc      chislitel
    js      check
    jmp     SHORT chislitel
negatA:
    sal     si, 1
    js      negatC_negA
    add     ax, si
    xchg    ax, si
    lahf
    test    ah, 10000001b  
    xchg    ax, si
    jz      check  
    jmp     SHORT chislitel
negatC_negA:
    neg     si
    sub     ax, si
    jns     check
    jnc      chislitel
check:
    pop     bp
    ret     
chislitel:
    or      ax, ax
    jz      check
    mov     di, ax 
    mov     ax, bx
    sal     ax, 3
    add     bx, ax
    mov     al, [bp+6]   
    cbw
    mov     dx, ax
    sal     ax, 2
    add     ax, dx
    sal     dx, 4 
    add     ax, dx 
    sal     ax, 1 
    mov     dx, ax  
    add     bx, dx 
    mov     al, ch  
    cbw 
    sub     bx, ax 
    mov     ax, bx
    cwd
    idiv    di
    movsx   eax, ax
    mov     dword ptr D,  eax
    pop     bp
    ret     
end start
