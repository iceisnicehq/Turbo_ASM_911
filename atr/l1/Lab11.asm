.model small
.186
.stack 100h

.data
    FileName                db    "overflow.txt", 0
    D                       db    "A = 0000 B = 0000 C = 0000", 0Dh, 0Ah
    result                  db    "Error, division by zero"
    A                       db    -128
    B                       db    -128
    C                       db    -128
    FileNumber              dw    ?
    
   
.code
Start:
        mov     ax, @data
        mov     ds, ax 
        
        
        
create_file:        
        mov     ah, 03Ch
        mov     cx, 0
        mov     dx, offset FileName
        int     21h
        
        mov     [FileNumber], ax
program:
    ; bh = b
    ; bl = a
    ; ch = c
    ; cl = idfile
    mov     al, B ;al = b
    cbw ;ax = FF/00al = FF/00(b)
    mov     bp,ax ; bp = FF/00(b)
    sal     bp,2 ; bp = 4b
    sal     ax,1 ;ax = 2b
    add     bp,ax ;bp = 6b
    mov     al,A ;al = a
    cbw;ax=ff/00(a)
    imul    bp ;dx:ax = 6ab
    or      dx,dx
    jz      positive_6ab ;esli 0000 = dx prigaem v positive_ab
    js      negative_6ab ;esli FFFF = dx prigaem v negative_ab
    jmp     write_to_file ; inache zapis
positive_6ab:
    xchg    si,ax ; si = 6ab
    mov     al,C ; al = c
    cbw ;00/ff(c) = ax
    or      ax,ax
    js      negative_c1 ;esli sf=1, to c<0
    ;positive_c
    add     si,ax
    js      write_to_file
    jc      write_to_file
    jmp     jumping
    
negative_6ab:    
    xchg    si,ax ;si = 6ab
    mov     al,C ;al=c
    cbw ;ax = 00/FF(c)
    or      ax,ax
    js      negative_c2
    ;c>0
    add     si,ax
    lahf
    test    ah,10000001b
    jz      write_to_file
    jmp     jumping
negative_c1:
    neg     ax
    sub     si,ax
    jc      jumping
    js      write_to_file
    jmp     jumping
negative_c2:
    neg     ax
    sub     si,ax
    jns     write_to_file
    jc      write_to_file

jumping:        
        cmp     A, 127    
        jl      inc_A
        
        cmp     B, 127
        jl      inc_B
        
        cmp     C, 127
        jl      inc_C

        mov     bx, [FileNumber]
        mov     ah, 03Eh
        int     21h
ending:        
        mov     ah, 04ch
        int     21h

inc_A:

        inc     A
        jmp     program    
        
inc_B:
        mov     A, -128
        inc     B
        mov     cl, 00h
        jmp     program    
        
inc_C:
        mov     A, -128
        mov     B, -128
        mov     cl, 00h
        mov     ch, 00h
        inc     C
        jmp     program    
        
write_to_file:
        mov     al, A
        mov     [D + 4], '+'
        cmp     al, 0
        jge     not_minus_A
        neg     al
        mov     [D + 4], '-'
not_minus_A:
        aam
        or      al, 30h
        mov     [D + 7], al
        mov     al, ah
        aam
        or      al, 30h
        mov     [D + 6], al
        or      ah, 30h
        mov     [D + 5], ah
        
        cmp     cl, 1
        je      writing
        mov     al, B
        mov     [D + 13], '+'
        cmp     al, 0
        jge     not_minus_B
        neg     al
        mov     [D + 13], '-'
not_minus_B:
        aam
        or      al, 30h
        mov     [D + 16], al
        mov     al, ah
        aam    
        or      al, 30h
        mov     [D + 15], al
        or      ah, 30h
        mov     [D + 14], ah
        
        cmp     ch, 1
        je      writing
        mov     al, C
        mov     [D + 22], '+'
        cmp     al, 0
        jge     not_minus_C
        neg     al
        mov     [D + 22], '-'
not_minus_C:
        aam
        or      al, 30h
        mov     [D + 25], al
        mov     al, ah
        aam
        or      al, 30h
        mov     [D + 24], al
        or      ah, 30h
        mov     [D + 23], ah       
        
writing:        
        mov     ah, 40h
        mov     bx, [FileNumber]
        mov     cx, 28
        mov     dx, offset D
        int     21h
        mov     cx, 0101h
        jmp     jumping
        
end Start       