.model small
.186
.stack 100h

.data
    string                  db    'C=0000 B=0000 A=0000', 0Dh, 0Ah
    file_name               db    'answer.txt', 0
    A                       db    ?
    B                       db    ?
    C                       db    ?
    answer                  dw    ?
    

.code
Start:
        mov     ax, @data
        mov     ds, ax
        mov     es, ax
        
        mov     bh, A
        or      bh, bh
        jz      file
        mov     bl, B
        or      bl, bl
        jz      file
        mov     ch, C
        or      ch, ch
        jz      file
        jmp     formula  
file:        
        mov     ah, 3Ch
        mov     dx, offset file_name
        int     21h
        
        mov     cl, al
        
        mov     bx, 8080h  ; bh = A   bl = B 
        mov     ch, 80h    ; ch = C
        mov     di, offset string
        add     di, 2
        std
        
formula:
        
        ;bh = A   bl = B    ch = C

        mov     al, ch      ; al = C
        cbw                 ; ax = C
        mov     bp, ax      ; bp = C
        sal     ax, 1       ; ax = 2*C
        imul    bp          ; dx:ax = 2*C*C
        mov     bp, ax      ; dx:bp = 2*C*C
        
        mov     al, bl      ; al = B
        cbw                 ; ax = B
        mov     si, ax      ; si = B
        sal     ax, 2       ; ax = 4*B
        add     si, ax      ; si = 5*B
        sal     ax, 1       ; ax = 8*B
        add     si, ax      ; si = 13*B
        
        or      si, si
        js      minus_13B
        add     bp, si      ; dx:bp = 2*C*C + 13*B
        adc     dx, 0
        or      bp, bp
        js      wfile
        jmp     cycle_formula_2
        
minus_13B:
        neg     si
        sub     bp, si      ;
        sbb     dx, 0       ; dx:bp = 2*C*C - 13*B
        or      dx, dx
        js      cycle_formula_2
        or      bp, bp
        js      wfile
        
cycle_formula_2:
        or      cl, cl
        jnz     cycle_C
        or      bp, bp
        jz      program_end
        jmp     formula_2
        
cycle_C:        
        cmp     ch, 127    
        jnl     cycle_B
        inc     ch
        jmp     formula
cycle_B:
        cmp     bl, 127
        jnl     cycle_A
        inc     bl
        mov     ch, -128
        jmp     formula
cycle_A:
        cmp     bh, 127
        jnl     program_end
        inc     bh
        mov     ch, -128
        mov     bl, -128
        jmp     formula
        

program_end:
        xor     bh, bh
        mov     bl, cl
        mov     ah, 3Eh
        int     21h       
        
program_end_not_file:
        mov     ah, 4Ch
        int     21h
        
wfile:
        ;bh = A   bl = B    ch = C    ?l = deskriptor
        mov     bp, bx      ; bp = A, B
        mov     si, cx      ; si = C, deskriptor
        mov     al, ch      ; al = C
        mov     cx, 3       ; cx = 3
        
wfile_loop:
        mov     byte ptr [di], '+'
        or      al, al
        jns     plus_CBA
        neg     al
        mov     byte ptr [di], '-'
plus_CBA:
        add     di, 3
        aam
        or      al, 30h
        stosb
        mov     al, ah
        aam
        or      al, 30h
        stosb
        or      ah, 30h
        mov     al, ah
        stosb
        add     di, 7
        mov     al, bl
        cmp     cx, 3
        je      iteration
        mov     al, bh
iteration:        
        loop    wfile_loop
        
        sub     di, 21
        
        mov     ah, 40h
        mov     bx, si
        xor     bh, bh 
        mov     cx, 22
        mov     dx, offset string
        int     21h
        
        mov     bx, bp
        mov     cx, si
        jmp     cycle_C
           
formula_2:
        ;bp = denom
        mov     al, bl      ; al = B
        imul    al          ; ax = B*B
        mov     dx, ax      ; dx = B*B
        mov     al, bh      ; al = A
        cbw                 ; ax = A
        mov     si, ax      ; si = A
        sal     ax, 2       ; ax = 4A
        sal     si, 3       ; si = 8A
        add     ax, si      ; ax = 12A
        sal     si, 2       ; si = 32A
        add     ax, si      ; ax = 44A
        imul    dx          ; dx:ax = 44*A*B*B
        mov     si, ax      ; dx:si = 44*A*B*B
        mov     al, ch      ; al = C
        cbw                 ; ax = C
        sal     ax, 2       ; ax = 4*C
        mov     di, ax      ; di = 4*C
        sal     ax, 1       ; ax = 8*C
        add     di, ax      ; di = 12*C
        or      di, di
        js      minus_12C
        add     si, di      ;
        adc     dx, 0       ; dx:si = 44*A*B*B + 12*C
        jmp     formula_3
        
minus_12C:
        neg     di
        sub     si, di      ;
        sbb     dx, 0       ; dx:si = 44*A*B*B - 12*C
        
formula_3:
        mov     al, bh      ; al = A
        imul    al          ; ax = A*A
        sub     si, ax      ;
        sbb     dx, 0       ; dx:di = 44*A*B*B + 12*C - A*A
        mov     ax, si      ; dx:ax = 44*A*B*B + 12*C - A*A
        idiv    bp
        mov     answer, ax   
        jmp     program_end_not_file

end Start