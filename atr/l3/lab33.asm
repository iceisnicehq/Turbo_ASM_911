.model small
.386
.stack 100h

.data
    result                  db    "Error, division by zero"
    A                       db    ?
    B                       db    ?
    C                       db    ?
    
    
.code
Start:
        mov     ax, @data
        mov     ds, ax 
        
        push    offset A

        call    example
        
program:
        mov     ax, si      ; ax = A
        mov     bx, si      ; bx = A
        shl     bx, 2       ; bx = 4*A
        add     bx, ax      ; bx = 5*A
        add     bx, ax      ; bx = 6*A
        imul    bx          ; ax:dx = 6*A*A
        add     ax, 8       ;
        adc     dx, 0       ; ax:dx = 6*A*A + 8ss

        cmp     bp, 0
        jge     sub_C
        neg     bp
        add     ax, bp
        adc     dx, 0
        neg     bp
        cmp     dx, 0
        jne     write_to_file_first
        cmp     ah, 80h
        jae     write_to_file_first
        jmp SHORT jumping
sub_C:
        sub     ax, bp
        sbb     dx, 0
        jnz     write_to_file_second
        cmp     ah, 80h
        jae     write_to_file_second
        jmp SHORT jumping
        
program_second:
        mov     al, bl      ; al = A
        imul    al          ; ax = A*A
        mov     di, ax      ; di = A*A
        mov     bp, ax      ; bp = A*A
        shl     bp, 2       ; bp = 4*A*A
        add     bp, ax      ; bp = 5*A*A
        add     bp, ax      ; bp = 6*A*A
        add     bp, 8       ; bp = 6*A*A + 8
        mov     al, dl      ; al = C
        cbw                 ; ax = C
        sub     bp, ax      ; bp = 6*A*A + 8 - C = denominator
        jz      ending
        
        mov     al, bl      ; al = A
        cbw                 ; ax = A
        shl     ax, 2       ; ax = 4*A
        mov     si, ax      ; si = 4*A
        shl     ax, 1       ; ax = 8*A
        add     si, ax      ; si = 12A
        inc     si          ; si = 12A + 1
        
        mov     al, bh      ; al = B
        imul    dl          ; ax = B*C
        imul    si          ; ax:dx = BC*(12A + 1)

        sub     ax, di
        sbb     dx, 0       ; ax:dx = BC*(12A + 1) - A*A = numerator
        
        idiv    bp          ; answer
        mov     [result], ah
        mov     [result + 1], al
        jmp SHORT    ending

        
example PROC
    mov     ax, 5
example ENDP        

ending:        
        mov     ah, 04ch
        int     21h
        
end Start       