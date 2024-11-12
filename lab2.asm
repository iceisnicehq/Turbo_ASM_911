; C:\USER\KS0ACE~1>2
; Enter your prompt: asd   aaa    2312 9 9 8 9 89 7 9 68 6 8 54 678                3       3       3       3        3       3      3 4
; Output: 8 86    3 ·+F╘←V╓♣☼ Г╥ SЛ┌┴ш♦┴ъ♦┴у♀♂├[@Л╪┤H═!s♣╕☺ ы\ЙF╪ЙF┌☺FЄМ╚О╪║Ъ☺М╨О└
; Н^╪╕♥K═!s♣╕☺ ы9ЛF№ЛV■♣☼ Г╥ SЛ┌┴ш♦┴ъ♦┴у♀♂├[@Л╪ОF╪┤J═!Л╞♠ ^ЁГ─☻=  t♠P┤I═!X_▼Y[╔├Ц◄
; А у◄\ у◄l у◄C:\TASM\BIN\rtm.exe
;                                                                         ¶ ☻
; Stub error not be processor$unrecognized parameters$unable A20 parameter$bad cre
; ate space$cannot copy error$unable copy chain stack$unable
; C:\USER\KS0ACE~1>

; ctrl
; Microsoft Windows [Версия 6.0.6003]
; (C) Корпорация Майкрософт, 2006. Все права защищены.

; c:\User\KS2203_16>notepad 2.asm

; c:\User\KS2203_16>tasm /zi 2
; Turbo Assembler  Version 4.1  Copyright (c) 1988, 1996 Borland International

; Assembling file:   2.ASM
; Error messages:    None
; Warning messages:  None
; Passes:            1
; Remaining memory:  397k


; c:\User\KS0ACE~1>tlink /v 2
; Turbo Link  Version 7.1.30.1. Copyright (c) 1987, 1996 Borland International

; C:\USER\KS0ACE~1>2
; Enter your prompt: ◄↨♣↕¶↓§      ☼       ☼►←↔☺‼

; ♂♂♀∟→↑♥▬☻♫ 3▲▼ 76y89 787 87 8679 8798 8768 9780-
;      <   ↓   ♀     ↓   ↓   ♂         ↓
;                  l            ♣а                         8            ♣P   ☺   ☺
;    ☺   }       ←   ☺       ←       !   ↔   ъ♦♥R√rF◄Ї ↔↕♦2
;  ☻▬☻ @ §


;                                                              $@☺ z☻G ♣ ┬☻▲  ♦↕♦↕
; ф Ї◄♥r√R♥♦ъ   ↔   !       ←       ☺   ←       }   ☺   ☺   ☺   P♣            8
;                       а♣            l
; C:\USER\KS0ACE~1>
; OUTPUT.txt:   87 f    
;      <                             
;                  l                                      8            P            }                        !      кRыrFф 2
; Њ F
;   @                                                                                                                                                                                                                                                                                                      z@ zG  В	к фrыRк      !                        }            P            8                                      l  


.model SMALL
.186
.stack 100h

maxSize         EQU     256

.data
    file        db      'output.txt', 0
    prompt      db      'Enter your prompt: ', '$'
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  
    outStr      db      0Dh, 0Ah, 'Output: ','$'
    shrtStr     db      0Dh, 0Ah, 'Too short','$'
    space       db      ?
    buffer      db      maxSize+1 DUP(?)    
.code

Start:
    mov     ax,    @data
    mov     ds,    ax
    mov     es,    ax 
    mov     ah,    09h      
    mov     dx,    offset prompt    
    int     21h 
    mov     di,    offset space
    mov     al,    20h
    stosb 
    mov     si,    di
    mov     cx,    maxSize
read_char:
    xor     ah,   ah
    int     16h 
    or      al,   al
    jz      read_char
    cmp     al,   0dh           
    je      end_input
    cmp     al,   7fh
    jae     read_char
    cmp     al,   20h
    jb      read_char
    jne     no_space
    inc     bx  
    dec     di
    scasb
    jne     no_space
    dec     bx
    jmp     read_char
no_space:
    mov     ah,   14
    int     10h
    stosb
    loop    read_char  
end_input_limit:
    mov     ah,   09h
    mov     dx,   offset limit
    int     21h
end_input:
    mov     al,   20h
    dec     di
    scasb
    jne     no_last_space
    dec     bx
    inc     cx
no_last_space:
    stosb
    cmp     bx,   4
    jnl     no_error
    mov     ah,   09h
    mov     dx,   offset shrtStr 
    int     21h
    jmp     SHORT exit
no_error:
    sub     cx,   maxSize+2
    not     cx
    mov     di,   si
    mov     bx,   si
    mov     ax,   0420h
    mov     dh,   2
fifth_wrd:
    scasb
    jnz     skip
    dec     ah
    jnz     skip
moving:
scasb
jb  output
dec di
    mov     dl,   cl
    mov     cx,   0ffffh
    repnz   scasb
    not     cx
    sub     dl,   cl
    dec     dh
    jnz     not_reverse
    mov     ah,   cl
    dec     di 
    dec     di
    xchg    si,   di
reverse:
    movsb
    dec     si
    dec     si
    loop    reverse
    mov     cl,   ah
    add     si,   cx
    inc     si
    inc     si
    jmp     SHORT reset
not_reverse:
    sub     di,   cx
    xchg    si,   di
    rep     movsb
reset:
    mov     cl, dl
    xchg    si, di
    mov     ah, 4
skip:
    loop    fifth_wrd
output:
    mov     di, si
;mkFile:
    mov     dx,   offset file            
    mov     ah,   03Ch                   
    int     21h  
    mov     si,   ax
    mov     ah,   09h
    mov     dx,   offset outStr
    int     21h
    mov     dx,   bx
    not     bx
    add     bx,   di
    mov     cx,   bx
    mov     bx,   1   
    mov     ah,   40h      
    int     21h     
wrFile:
    mov     bx,   si
    mov     ah,   40h
    int     21h
clFile:
    mov     ah,   3Eh
    int     21h
exit:
    mov     ah,   4ch      
    int     21h
    End     Start
