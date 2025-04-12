.model small
.186
.stack 100h

.data
    file                    db    "output.txt", 0
    text_for_writing        db    "XXXX XXXX XXXX", 0Dh, 0Ah
    A                       db    ?
    B                       db    ?
    C                       db    ?
    answer                  dw    ?

.code
Start:
        mov     ax, @data
        mov     ds, ax
        
        mov     bl, A
        or      bl, bl
        jz      file_definition
        
        mov     bh, B
        or      bh, bh
        jz      file_definition
        
        mov     cl, C
        or      cl, cl
        jz      file_definition

        jmp     calculate  

file_definition:        
        mov     ah, 03Ch
        mov     dx, offset file
        int     21h

        mov     ch, al

        mov     bx, 08080h  ; bh = B
        mov     cl, -128    ; cl = C
        
calculate:
        mov     al, cl      ; al = C
        cbw                 ; ax = C
        mov     si, ax      ; si = C
        shl     ax, 1       ; ax = 2*C
        imul    si          ; dx:ax = 2*C*C
        mov     si, ax      ; dx:si = 2*C*C
           
        mov     al, bh      ; al = B
        cbw                 ; ax = B
        mov     di, ax      ; di = B
        shl     ax, 2       ; ax = 4*B
        add     di, ax      ; di = 5*B
        shl     ax, 1       ; ax = 8*B
        add     di, ax      ; di = 13*B
        
        or      di, di
        jns     plus_B
        neg     di
        sub     si, di      ;
        sbb     dx, 0       ; dx:si = 2*C*C - 13*B
        or      dx, dx
        js      cycle_or_numerator
        or      si, si
        js      writing
        jmp     cycle_or_numerator

plus_B:
        add     si, di      ; dx:si = 2*C*C + 13*B
        adc     dx, 0
        or      si, si
        js      writing
        
cycle_or_numerator:
        or      ch, ch
        jnz     cycle
        or      si, si
        jz      end_program

numerator:
        ;??????????? ? si, ????????? ? dx:di, bx, cx - ??????????
        mov     al, bl      ; al = A
        cbw                 ; ax = A
        shl     ax, 2       ; ax = 4A
        mov     dx, ax      ; dx = 4A
        shl     ax, 1       ; ax = 8A
        add     dx, ax      ; dx = 12A
        shl     ax, 2       ; ax = 32A
        add     dx, ax      ; dx = 44A
        
        mov     al, bh      ; al = B
        imul    al          ; ax = B*B
        imul    dx          ; dx:ax = 44*A*B*B
        mov     di, ax      ; dx:di = 44*A*B*B
        
        mov     al, cl      ; al = C
        cbw                 ; ax = C
        shl     ax, 2       ; ax = 4*C
        mov     bp, ax      ; bp = 4*C
        shl     ax, 1       ; ax = 8*C
        add     bp, ax      ; bp = 12*C
        
        or      bp, bp
        jns     plus_12C
        sub     di, bp      ;
        sbb     dx, 0       ; dx:di = 44*A*B*B - 12*C
        jmp     next_stage
        
plus_12C:
        add     di, bp      ;
        adc     dx, 0       ; dx:di = 44*A*B*B + 12*C
        
next_stage:
        mov     al, bl      ; al = A
        imul    al          ; ax = A*A
        
        sub     di, ax      ;
        sbb     dx, 0       ; dx:di = 44*A*B*B + 12*C - A*A
        
        mov     ax, di      ; dx:ax = 44*A*B*B + 12*C - A*A
        
        
        idiv    si
        mov     answer, ax
        jmp     end_program
          
cycle:        
        cmp     bl, 127    
        jl      cycle_for_A

        cmp     bh, 127
        jl      cycle_for_B

        cmp     cl, 127
        jl      cycle_for_C

        mov     bl, ch
        mov     ah, 03Eh
        int     21h
        
end_program:        
        mov     ah, 04ch
        int     21h    
 
writing:
        mov     si, bx      ; si = A, B
        mov     bp, cx      ; di = C, deskriptor
        xor     di, di      ; bp = 0
        mov     cx, 3       ; cx = 3
        mov     al, bl      ; al = B 
writing_loop:
        mov     [text_for_writing + di], '+'
        or      al, al
        jns     plus
        neg     al
        mov     [text_for_writing + di], '-'
plus:
        aam
        or      al, 30h
        add     di, 3
        mov     [text_for_writing + di], al
        mov     al, ah
        aam
        or      al, 30h
        dec     di
        mov     [text_for_writing + di], al
        or      ah, 30h
        dec     di
        mov     [text_for_writing + di], ah
        add     di, 4
        mov     al, bh
        cmp     di, 10
        jne     looping
        mov     ax, bp
looping:        
        loop    writing_loop 

        mov     ah, 40h
        mov     bx, bp
        xchg    bl, bh
        xor     bh, bh 
        mov     cx, 16
        mov     dx, offset text_for_writing
        int     21h
        
        mov     bx, si
        mov     cx, bp
        jmp     cycle
        
cycle_for_A:
        inc     bl
        jmp     calculate    
cycle_for_B:
        mov     bl, -128
        inc     bh
        jmp     calculate    
cycle_for_C:
        mov     bl, -128
        mov     bh, -128
        inc     cl
        jmp     calculate 

end Start