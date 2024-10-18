.model small
.186
.stack 100h
.data
C   db  ?
A   db  ?
B   db  ?
FileName    db  "overflow.txt", 0
handle  dw  ?
buffer  db  '0000, 0000, 0000', 0Dh, 0Ah
.code
start:
; cx: ch  = b, cl = desc
; bx: bh  = a, bl = c

    mov     ax, @data
    mov     ds, ax
    mov     bx, word ptr A
    mov     cl, B
    ;;;;;;;;;cmp     bx, 0000h
    or      bx, bx
    jne     example
    mov     ah, 3ch
    xor     cx, cx
    mov     dx, offset FileName
    int     21h
    mov     [handle], ax  
    mov	    al, -128  
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
    js      nega3
    or      dx, dx
    jnz     wof
LOCALS @@
    mov     di, ax
    sal     si, 1   ; 6c
    jns     @@pos
    neg     si
    sub     di, si
    jc      next
    js      wof
    jmp     check
@@pos:
    add     di, si
    js      wof
    jc      wof
    ; posit ax
    jmp     check

nega3:
    cmp     dx, 0ffffh
    jnz     wof
    ; negative ax
    mov     di, ax
    sal     si, 1   ; 6c 
    jns     @@pos
    neg     si
    sub     di, si
    jc      wof
    jns     wof
        jmp     check

@@pos:
    add     di, ax
    jns    wof
    jnc    wof
check:
    cmp     [handle], 0
    jnz    next
;    jmp    chislitel
; chislitel:
;     mov     al, bl  
;     cbw           
;     sal     ax, 1   
;     mov     si, ax  
;     sal     ax, 1   
;     add     si, ax 
    
;     mov     al, bh 
;     imul    al      
;     mov     bp, ax      
;     mov     al, bh  
;     cbw             
;     imul    bp 
;     mov     dx, ax 
;     jo      wof
;     add     si, dx  
;     jz      next    
;     mov     ax, bp
;     sal     ax, 1
;     sal     ax, 1
;     sal     ax, 1
;     add     bp, ax
;     mov     al, cl ;al=B  
;     cbw
;     mov     dx, ax
;     sal     ax, 1
;     sal     ax, 1
;     add     ax, dx
;     sal     dx, 1
;     sal     dx, 1
;     sal     dx, 1
;     sal     dx, 1
;     add     ax, dx
;     sal     ax, 1
;     mov     di, ax  
;     mov     al, bl  
;     cbw  
;     add     bp, di  
;     sub     bp, ax  
;     mov     ax, bp
;     cwd
;     idiv    si
;     cmp     [handle], 0
;     jnz     next
;     mov     ah, 4Ch
;     int     21h
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
    cbw 
    cmp     ax, 0
    jge     pA
    mov     [buffer], 2Dh
    neg     ax
    jmp     nextA    
pA:
    mov     [buffer], 2Bh
nextA:   
    aam
    add     al, 30H
    mov     [buffer+3], al
    mov     al,ah
    aam
    add     ax, 3030H
    mov     [buffer+2], al
    mov     [buffer+1], ah
    mov     al, cl
    cbw 
    cmp     ax, 0
    jge     pB
    mov     [buffer+6], 2Dh
    neg     ax
    jmp     nextB   
pB:
    mov     [buffer+6], 2Bh
nextB:   
    aam
    add     al, 30H
    mov     [buffer+9], al
    mov     al,ah
    aam
    add     ax, 3030H
    mov     [buffer+8], al
    mov     [buffer+7], ah
    mov     al, bl
    cbw 
    cmp     ax, 0
    jge     pC
    mov     [buffer+12], 2Dh
    neg     ax
    jmp     nextC    
pC:
    mov     [buffer+12], 2Bh
nextC:   
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
    mov     bx, [handle]     
    int     21h 
    mov	    cx, bp 
    mov     bx, di  
    jmp     next
close:
    mov     ah, 3Eh
    mov     bx, [handle]
    int     21h
    mov     ah, 4Ch
    int     21h  
end start
