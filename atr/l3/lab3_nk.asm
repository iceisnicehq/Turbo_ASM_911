.model small
.386
.stack 100h

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
    push    offset B
    push    offset C
    call    example
    mov     result, eax
    
ending:        
    mov     ah, 4Ch
    int     21h
        
example PROC
    mov     si, [esp + 2]
    movsx   ecx, byte ptr [si]
    mov     si, [esp + 4]
    mov     bh, [si]
    mov     si, [esp + 6]
    mov     bl, [si]
    
    mov     al, bl   
    movsx   di, al   
    imul    al       
    movsx   esi, ax  
    shl     eax, 2   
    add     eax, esi
    add     eax, esi 
    add     eax, 8   
    sub     eax, ecx 
    jz      ending
    mov     ebp, eax 
    
    shl     di, 2    
    mov     ax, di   
    shl     di, 1    
    add     di, ax   
    inc     di       
    
    xor     eax, eax
    mov     al, bh   
    imul    cl       
    imul    di       
    shl     edx, 16
    or      eax, edx 
    sub     eax, esi 
    cdq
    
    idiv    ebp
    
    ret     6
example ENDP        
       
end Start       