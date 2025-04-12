.model small
.stack 100h
.386
.data
    A                       db    ?
    B                       db    ?
    C                       db    ?
    result                  dd    ?
    
.code
Start:
    mov     ax, @data
    mov     ds, ax 
    
    push    offset A
    call    example
    mov     result, eax
    
ending:        
    mov     ah, 4Ch
    int     21h
        
example PROC
    mov     si, [esp + 2]
    mov     bx, [si]            ;bl = A bh = B
    movsx   ecx, byte ptr [si + 2]
    
    mov     al, bl              ;al = A
    movsx   di, al              ;di = A
    imul    al                  ;ax = A*A
    movsx   esi, ax             ;esi = A*A
    shl     eax, 2              ;eax = 4*A*A
    add     eax, esi
    add     eax, esi            ;eax = 6*A*A
    add     eax, 8              ;eax = 6*A*A + 8
    sub     eax, ecx            ;eax = 6*A*A + 8 - C
    jz      ending
    mov     ebp, eax            ;ebp = denominator
    
    shl     di, 2               ;di = 4*A
    mov     ax, di              ;ax = 4*A
    shl     di, 1               ;di = 8*A
    add     di, ax              ;di = 12*A
    inc     di                  ;di = 12*A + 1
    
    xor     eax, eax
    mov     al, bh              ;al = B
    imul    cl                  ;ax = B*C
    imul    di                  ;dx:ax = B*C * (12*A + 1)
    shl     edx, 16
    or      eax, edx            ;eax = B*C * (12*A + 1)
    sub     eax, esi            ;eax = B*C * (12*A + 1) - A*A
    cdq
    
    idiv    ebp
    
    ret
example ENDP        
       
end Start