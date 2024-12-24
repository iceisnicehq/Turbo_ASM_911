.model small
.386
.stack 100h
.data
    A       dd +1.0
    B       dd +127.0
    C       dd +127.0
    D       dd ?
.code
Start:
    mov     ax, @data
    mov     ds, ax
    fld     C                  
    fld     A                  
    fld1                       
    fadd    st(0), st(0)       
    fld     st(0)              
    fscale                     
    fxch    st(1)              
    fsubp   st(1), st(0)       
    fld     st(2)              
    fscale                     
    fadd    st(0), st()       
    fld     st(1)              
    fmul    st(0), st(3)       
    fadd    st(0), st(3)       
    fmul    st(0), st(3)       
    faddp                      
    jz      SHORT  exit    
    fld     B                  
    fadd    st(0), st(0)       
    fmul    st(0), st(2)       
    fmul    st(0), st(4)       
    fadd    st(0), st(3)       
    fadd    st(0), st(2)       
    fdiv    st(0), st(1)       
    fistp   D
Exit:
    mov     ah, 4ch
    int     21h
End Start