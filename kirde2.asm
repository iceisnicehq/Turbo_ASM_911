.model SMALL
.186
.stack 100h

maxSize         EQU     256

.data
    file        db      'output.txt', 0
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  
    ending      db      0Dh, 0Ah, 'Press any key to exit...', 0
    lenEnd      EQU     $ - ending - 1
    outStr      db      0Dh, 0Ah, 'Output: ','$'
    error       db      'lenError','$'
    lenError    EQU     $ - error - 1
    prompt      db      'Input: ', '$'
    space       db      ?
    buffer      db      maxSize-2 DUP(?)
    bufEnd      db      ?
.code

Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax 
    mov     ax,    0003h
    int     10h 
    mov     ah,    09h      
    mov     dx,    OFFSET prompt    
    int     21h 
    mov     di,    OFFSET space
    mov     al,    20h
    mov     si,    di
    mov     cx,    maxSize+1
reset_space:
    xor     bh,   bh
    dec     cx
read_char:
    mov     dh,   al
    xor     ah,   ah
    int     16h 
    cmp     al,   0Dh           
    je      end_input
    cmp     al,   7Fh
    jae     read_char
    cmp     al,   20h
    jb      read_char
    jne     no_space
    inc     bh
    cmp     al,   dh
    jne     no_space
    dec     bh
    jmp     read_char   
no_space:
    mov     ah,   0Eh
    int     10h
    cmp     bh,   3
    ja      reset_space
    jne     not_storing
    stosb
not_storing:
    loop    read_char  
end_input_limit:
    mov     ah,   09h
    mov     dx,   OFFSET limit
    int     21h
end_input:
    or      byte ptr [buffer], 0
    jnz     no_error
;;;;;;
    mov     ah,   02h         
    xor     bh,   bh
    xor     dx,   dx
    int     10h              
    mov     si,   cx
    mov     ax,   1301h
    mov     bx,   000Ch
    mov     bp,   OFFSET error
    mov     cx,   lenError
    int     10h 
    mov     cx,   si
cll:
    mov     ax,   0E20h
    int     10h
    loop    cll
    jmp     SHORT exit
no_error:
    ;inc     si   ; si = offset buffer
    ; mov     al,  20h
    ; mov     cx,   0FFFFh
    ; repnz   scasb
    ; repnz   scasb
    ; not     cx
    ; add     si, cx   ; si = offset of third word

; IDEA IS TO
; 1. find offset of third word, and find its length        (length - swan) (offset with loop/loopne + inc si cmp 20h dec)
; 2. move the word to the end of the buffer in reverse
; 3. move the reversed word back to the place of the original word 
; 4. the end of the buffer is in di after read_char, thus the length of the whole buffer can be calculated
; 5. output the buffer to the screen and 

; fifth_wrd:
;     scasb
;     jne     skip
;     dec     ah
;     jnz     skip
;     scasb
;     jnb     output
;     dec     di
;     mov     dl,   cl
;     mov     cx,   0FFFFh
;     repnz   scasb
;     not     cx
;     sub     dl,   cl
;     dec     dh
;     jnz     not_reverse
;     mov     ah,   cl
;     dec     di 
;     dec     di
;     xchg    si,   di
; reverse:
;     movsb
;     dec     si
;     dec     si
;     loop    reverse
;     mov     cl,   ah
;     add     si,   cx
;     inc     si
;     inc     si
;     jmp     SHORT reset
; not_reverse:
;     sub     di,   cx
;     xchg    si,   di
;     rep     movsb
; reset:
;     mov     cl,   dl
;     xchg    si,   di
;     mov     ah,   4
; skip:
;     loop    fifth_wrd
; output:
;     mov     ah,   09h
;     mov     dx,   OFFSET outStr
;     int     21h
;     mov     dx,   OFFSET file            
;     mov     ah,   03Ch                   
;     int     21h 
;     mov     dx,   bx
;     not     bx
;     mov     cx,   si
;     add     cx,   bx
;     mov     bx,   ax 
;     mov     ah,   40h      
;     int     21h
;     mov     ah,   3Eh
;     int     21h
;     mov     bx,   1   
;     mov     ah,   40h      
;     int     21h     
exit:
    mov     ah,   02h
    xor     bh,   bh
    mov     dx,   0700h
    int     10h
    mov     ax,   1301h                
    mov     bx,   0087h   
    mov     bp,   OFFSET ending
    mov     cx,   lenEnd
    int     10h 
    xor     ah,   ah
    int     16h
    mov     ax,    0003h
    int     10h 
    mov     ax,   4C00h      
    int     21h
    End     Start
