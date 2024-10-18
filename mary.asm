.model small ; 12 583 167
.186
.stack 100h
.data
FileName    db  "overflow.txt", 0
buffer  db  '0000, 0000, 0000', 0Dh, 0Ah
C   db  ?
A   db  ?
B   db  ?
D   dw  ?
JUMPS
.code
start:
; cx: ch  = b, cl = desc
; bx: bh  = a, bl = c

    mov     ax, @data
    mov     ds, ax
    mov     bx, word ptr A
    mov     cl, B
    or      bx, cx
    jne     example
    mov     ah, 3ch
    xor     cx, cx
    mov     dx, offset FileName
    int     21h
    mov     ch, al  
    mov	    al, -128  
    int 3
    mov     bh, al ;A
    mov     bl, al ;C
    mov     cl, al ;B
example:  ; EXAMPLE = 9*a^2 + 42*b - c / a^3 + 6*c
    ; bh = a
    ; bl = c
    ; cl = b

    mov     al, bl  
    cbw           
    mov     si, ax
    sal     ax, 1
    add     si, ax  ; 3c

    mov     al, bh 
    imul    al      
    mov     bp, ax      
    mov     al, bh  
    cbw             
    imul    bp 
    or      dx, dx
    jz      positive
    cmp     dx, 0FFFFh
    jz      negative
    jmp     wof
LOCALS @@
positive:
    sal     si, 1
    js      @@negative
    add     ax, si
    js      wof      
    jc      wof
    jmp     SHORT check
@@negative:
    neg     si
    sub     ax, si
    jc      check
    js      wof
    jmp     SHORT check
negative:
    sal     si, 1
    js      @@negative
    add     ax, si
    xchg    ax, si
    lahf
    ;AH := EFLAGS(SF:ZF:0:AF:0:PF:1:CF).
    test ah, 10000001b
    xchg    ax, si
    jz   wof  
    jmp     SHORT check
@@negative:
    neg     si
    sub     ax, si
    jns     wof
    jc      wof
check:
    or     ch, ch
    jnz    next
  jmp    chislitel
chislitel:
    mov     al, bl  
    cbw           
    sal     ax, 1   
    mov     si, ax  
    sal     ax, 1   
    add     si, ax 
    
    mov     al, bh 
    imul    al      
    mov     bp, ax      
    mov     al, bh  
    cbw             
    imul    bp 
    mov     dx, ax 
    jo      wof
    add     si, dx  
    jz      next    
    mov     ax, bp
    sal     ax, 1
    sal     ax, 1
    sal     ax, 1
    add     bp, ax
    mov     al, cl ;al=B  
    cbw
    mov     dx, ax
    sal     ax, 1
    sal     ax, 1
    add     ax, dx
    sal     dx, 1
    sal     dx, 1
    sal     dx, 1
    sal     dx, 1
    add     ax, dx
    sal     ax, 1
    mov     di, ax  
    mov     al, bl  
    cbw  
    add     bp, di  
    sub     bp, ax  
    mov     ax, bp
    cwd
    idiv    si
    mov     D,  ax
    mov     ah, 4Ch
    int     21h
next:
    inc     bl
    cmp     bl, 128d
    jne     example
    inc     cl
    cmp     cl, 128d
    jne     resertC
    inc     bh
    cmp     bh, 128d
    jne     resertB
    jmp     close     
resertC:
    mov     bl, -128d
    jmp     example    
resertB:
    mov     cl, -128d
    jmp     example    
wof:
    mov     di, bx
    mov	    bp, cx
    mov     al, bh
    cmp     al, 0
    mov     [buffer], 2Bh
    jge     pA
    mov     [buffer], 2Dh
    neg     ax   
pA:  
    aam
    add     al, 30H
    mov     [buffer+3], al
    mov     al,ah
    aam
    add     ax, 3030H
    mov     [buffer+2], al
    mov     [buffer+1], ah
    mov     al, cl
    mov     [buffer+6], 2Bh
    cmp     al, 0
    jge     pB
    mov     [buffer+6], 2Dh
    neg     ax 
pB: 
    aam
    add     al, 30H
    mov     [buffer+9], al
    mov     al,ah
    aam
    add     ax, 3030H
    mov     [buffer+8], al
    mov     [buffer+7], ah
    mov     al, bl
    mov     [buffer+12], 2Bh
    cmp     al, 0
    jge     pC
    mov     [buffer+12], 2Dh
    neg     ax 
pC:
    aam
    add     al, 30H
    mov     [buffer+15], al
    mov     al,ah
    aam
    add     ax, 3030H
    mov     [buffer+14], al
    mov     [buffer+13], ah  
    mov     dx, offset buffer
    mov     cx, 18
    mov     ah, 40h          
    mov     bx, bp  
    mov     bl, bh 
    xor     bh, bh  
    int     21h 
    mov	    cx, bp 
    mov     bx, di  
    jmp     next
close:
    mov     ah, 3Eh
    mov     bl, ch
    xor     bh, bh
    int     21h
    mov     ah, 4Ch
    mov     al, 0
    int     21h  
end start
