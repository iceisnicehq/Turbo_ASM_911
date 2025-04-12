.model small
.386
.stack 100h

.data
    six                     dt    -0.65625
    A                       dd    ?
    B                       dd    ?
    C                       dd    ?
    result                  dd    ?
    
    eight                   dd    8.0
    twelve                  dd    12.0
    one                     dd    1.0
    
.code

Start:
    mov     ax, @data
    mov     ds, ax 

    fld     A               ;st0 = A
    fld     st(0)           ;st0 = A   st1 = A
    fld     B               ;st0 = B   st1 = A    st2 = A
    fld     C               ;st0 = C   st1 = B    st2 = A   st3 = A
    fld     st(0)           ;st0 = C   st1 = C    st2 = B   st3 = A    st4 = A
    
    fxch    st(4)           ;st0 = A   st1 = C    st2 = B   st3 = A    st4 = C
    fmul    st(0), st(3)    ;st0 = A*A   st1 = C    st2 = B   st3 = A    st4 = C
    fld     st(0)           ;st0 = A*A   st1 = A*A   st2 = C    st3 = B   st4 = A    st5 = C 
    ;fmul    six             ;st0 = 6*A*A   st1 = A*A   st2 = C    st3 = B   st4 = A    st5 = C 
    fadd    eight           ;st0 = 6*A*A + 8  st1 = A*A   st2 = C    st3 = B   st4 = A    st5 = C 
    fsub    st(0), st(2)    ;st0 = 6*A*A + 8 - C  st1 = A*A   st2 = C    st3 = B   st4 = A    st5 = C
    jz      ending 
    
    fxch    st(4)           ;st0 = A  st1 = A*A   st2 = C    st3 = B   st4 = 6*A*A + 8 - C    st5 = C
    fmul    twelve          ;st0 = 12*A  st1 = A*A   st2 = C    st3 = B   st4 = 6*A*A + 8 - C    st5 = C
    fadd    one             ;st0 = 12*A + 1  st1 = A*A   st2 = C    st3 = B   st4 = 6*A*A + 8 - C    st5 = C
    
    fxch    st(3)           ;st0 = B  st1 = A*A   st2 = C    st3 = 12*A + 1   st4 = 6*A*A + 8 - C    st5 = C
    fmul    st(0), st(2)    ;st0 = B*C  st1 = A*A   st2 = C    st3 = 12*A + 1   st4 = 6*A*A + 8 - C    st5 = C
    fmul    st(0), st(3)    ;st0 = B*C * (12*A + 1)  st1 = A*A   st2 = C    st3 = 12*A + 1   st4 = 6*A*A + 8 - C    st5 = C
    fsub    st(0), st(1)    ;st0 = B*C * (12*A + 1) - A*A  st1 = A*A   st2 = C    st3 = 12*A + 1   st4 = 6*A*A + 8 - C    st5 = C
    
    fdiv    st(0), st(4)
    
    fist    result
    
ending:        
    mov     ah, 4Ch
    int     21h
             
end Start       