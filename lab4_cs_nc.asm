.model small
.386
.stack 100h
.dat
    A       dd +1.0
    B       dd +127.0
    C       dd +127.0
    six     dd +6.0
    twe     dd +12.0
    sixfive dd +65.0
    seven   dd +7.0
    D       dd ?
.code
start:
    mov     ax, @data
    mov     ds, ax
    fld     C                
    fld     st(0)            
    fmul    sixfive          
    fld     A                
    fld     st(0)            
    fmul    seven            
    fmul    st(0), st(1)     
    faddp   st(2), st(0)     
    jz      SHORT exit
    fadd    six              
    fxch    st(2)            
    fmul    B                
    fmul    twe              
    faddp   st(2), st(0)     
    fdivr   st(0), st(1)     
    fistp   D
exit:
    mov ah, 4ch
    int 21h
end start