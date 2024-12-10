.model small 
.386 
.stack 100h 
.data 
    b          db    127
    c          db    127
    a          db    1
    d          dd    ?
.code 
start:
    mov     ax,    @data 
    mov     ds,    ax 
    mov     es,    ax
    push    offset b
    mov     si,    sp
    call    calc 
    stosd
exit:
    mov     ax,    4C00h
    int     21h 
calc    proc near 

    SEGSS   lodsw    
    mov     si,   ax            
    lodsw                       
    mov     cx,   ax            
    lodsb                       
    mov     di,   si            
    cbw                         
    mov     dx,   ax            
    mov     si,   ax            
    add     si,   6             
    movsx   esi,  si            
    sal     ax,   3             
    sub     ax,   dx            
    imul    dx                  
    shl     eax,  16            
    shld    edx,  eax,   16     
    movsx   ax,   ch            
    mov     bx,   ax            
    sal     ax,   6             
    add     ax,   bx            
    cwde                        
    add     eax, edx            
    jz      exit
    mov     ebx, eax            
    mov     ax,  cx
    imul    ah                  
    cwde                        
    mov     edx, eax            
    sal     edx, 2              
    sal     eax, 3              
    add     eax, edx            
    add     eax, esi            
    cdq                         
    idiv    ebx
    ret     2
    calc    endp 

end start
