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

        mov     bx, 08080h  
        mov     cl, -128    
        
calculate:
        mov     al, cl    
        cbw               
        mov     si, ax    
        shl     ax, 1     
        imul    si        
        mov     si, ax    
           
        mov     al, bh    
        cbw               
        mov     di, ax    
        shl     ax, 2     
        add     di, ax    
        shl     ax, 1     
        add     di, ax    
        
        or      di, di
        jns     plus_13B
        neg     di
        sub     si, di    
        sbb     dx, 0     
        or      dx, dx
        js      cycle_or_numerator
        or      si, si
        js      writing
        jmp     cycle_or_numerator

plus_13B:
        add     si, di      
        adc     dx, 0
        or      si, si
        js      writing
        
cycle_or_numerator:
        or      ch, ch
        jnz     cycle
        or      si, si
        jz      end_program

numerator:
        mov     al, bl     
        cbw                
        shl     ax, 2      
        mov     dx, ax     
        shl     ax, 1      
        add     dx, ax     
        shl     ax, 2      
        add     dx, ax     
        
        mov     al, bh     
        imul    al         
        imul    dx         
        mov     di, ax     
        
        mov     al, cl     
        cbw                
        shl     ax, 2      
        mov     bp, ax     
        shl     ax, 1      
        add     bp, ax     
        
        or      bp, bp
        jns     plus_12C
        sub     di, bp      
        sbb     dx, 0      
        jmp     next_stage
        
plus_12C:
        add     di, bp      
        adc     dx, 0   
        
next_stage:
        mov     al, bl      
        imul    al         
        
        sub     di, ax     
        sbb     dx, 0       
        
        mov     ax, di    
        
        
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
        mov     si, bx      
        mov     bp, cx      
        xor     di, di      
        mov     cx, 3      
        mov     al, bl      
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