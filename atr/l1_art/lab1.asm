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
        
        mov     bx, 8080h  
        mov     ch, 80h    
        mov     di, offset string
        add     di, 2
        std
        
formula:
        mov     al, ch     
        cbw                
        mov     bp, ax     
        sal     ax, 1      
        imul    bp         
        mov     bp, ax     
        
        mov     al, bl     
        cbw                
        mov     si, ax     
        sal     ax, 2      
        add     si, ax     
        sal     ax, 1      
        add     si, ax     
        
        or      si, si
        js      minus_13B
        add     bp, si     
        adc     dx, 0
        or      bp, bp
        js      wfile
        jmp     cycle_formula_2
        
minus_13B:
        neg     si
        sub     bp, si      
        sbb     dx, 0       
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
       
        mov     bp, bx   
        mov     si, cx   
        mov     al, ch   
        mov     cx, 3    
        
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
        mov     al, bl    
        imul    al        
        mov     dx, ax    
        mov     al, bh    
        cbw               
        mov     si, ax    
        sal     ax, 2     
        sal     si, 3     
        add     ax, si    
        sal     si, 2     
        add     ax, si    
        imul    dx        
        mov     si, ax    
        mov     al, ch    
        cbw               
        sal     ax, 2     
        mov     di, ax    
        sal     ax, 1     
        add     di, ax    
        or      di, di
        js      minus_12C
        add     si, di    
        adc     dx, 0     
        jmp     formula_3
        
minus_12C:
        neg     di
        sub     si, di    
        sbb     dx, 0     
        
formula_3:
        mov     al, bh    
        imul    al        
        sub     si, ax    
        sbb     dx, 0     
        mov     ax, si    
        idiv    bp
        mov     answer, ax   
        jmp     program_end_not_file

end Start