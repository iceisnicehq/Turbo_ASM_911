.model small
.386
.stack 100h

.data
    A                       dd    ?
    B                       dd    ?
    C                       dd    ?
    result                  dd    ?
    six                     dd    6.0
    eight                   dd    8.0
    twelve                  dd    12.0
    one                     dd    1.0
    
.code

Start:
    mov     ax, @data
    mov     ds, ax 

    fld     A           
    fld     st(0)       
    fld     B           
    fld     C           
    fld     st(0)       
    
    fxch    st(4)       
    fmul    st(0), st(3)
    fld     st(0)       
    fmul    six         
    fadd    eight       
    fsub    st(0), st(2)
    jz      ending 
    
    fxch    st(4)       
    fmul    twelve      
    fadd    one         
    
    fxch    st(3)       
    fmul    st(0), st(2)
    fmul    st(0), st(3)
    fsub    st(0), st(1)
    
    fdiv    st(0), st(4)
    
    fist    result
    
ending:        
    mov     ah, 4Ch
    int     21h
             
end Start       