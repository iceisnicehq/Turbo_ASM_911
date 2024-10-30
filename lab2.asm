; permit tab
Microsoft Windows [Версия 6.0.6003]
(C) Корпорация Майкрософт, 2006. Все права защищены.

c:\User\KS2203_16>notepad user_list.txt

c:\User\KS2203_16>cd ..

c:\User>dir
 Том в устройстве C не имеет метки.
 Серийный номер тома: 6C0B-A49D

 Содержимое папки c:\User

18.10.2024  15:04    <DIR>          .
18.10.2024  15:04    <DIR>          ..
22.06.2024  22:10               220 crusru.bat
22.10.2024  15:22    <DIR>          KS2203_01
17.09.2024  17:27    <DIR>          KS2203_02
22.10.2024  15:57    <DIR>          KS2203_03
04.09.2024  18:08    <DIR>          KS2203_04
25.10.2024  17:12    <DIR>          KS2203_05
28.10.2024  11:41    <DIR>          KS2203_06
22.10.2024  16:04    <DIR>          KS2203_07
17.09.2024  18:25    <DIR>          KS2203_08
04.09.2024  18:00    <DIR>          KS2203_09
17.09.2024  18:15    <DIR>          KS2203_10
04.09.2024  18:02    <DIR>          KS2203_11
04.09.2024  18:03    <DIR>          KS2203_12
28.10.2024  11:41    <DIR>          KS2203_13
28.10.2024  10:22    <DIR>          KS2203_14
29.10.2024  12:52    <DIR>          KS2203_15
29.10.2024  13:01    <DIR>          KS2203_16
28.10.2024  10:24    <DIR>          KS2203_17
08.10.2024  17:33    <DIR>          KS2203_18
29.10.2024  12:50    <DIR>          KS2203_19
29.10.2024  12:02    <DIR>          KS2203_20
08.10.2024  17:26    <DIR>          KS2203_21
15.10.2024  12:08    <DIR>          KS2203_22
22.06.2024  23:57    <DIR>          KS2203_23
08.10.2024  18:01    <DIR>          KS2203_24
22.06.2024  23:57    <DIR>          KS2203_25
28.10.2024  11:03    <DIR>          KS2203_26
22.06.2024  23:57    <DIR>          KS2203_27
22.06.2024  23:57    <DIR>          KS2203_28
22.06.2024  23:57    <DIR>          KS2203_29
14.10.2024  20:18    <DIR>          KS2203_30
22.06.2024  23:57    <DIR>          KS2203_31
22.06.2024  23:57    <DIR>          KS2203_32
22.06.2024  23:57    <DIR>          KS2203_33
22.06.2024  23:57    <DIR>          KS2203_34
22.06.2024  23:57    <DIR>          KS2203_35
22.06.2024  23:57    <DIR>          KS2203_36
22.06.2024  23:57    <DIR>          KS2203_37
22.06.2024  23:57    <DIR>          KS2203_38
28.10.2024  11:38    <DIR>          leila
23.06.2024  08:19    <DIR>          lovet
03.03.2024  15:02               874 mkusru.bat
09.10.2024  18:26    <DIR>          renat
18.10.2024  15:04                55 TD.TR
18.10.2024  15:04               691 TDCONFIG.TD
23.06.2024  08:19    <DIR>          vlad
               4 файлов          1 840 байт
              44 папок  106 154 053 632 байт свободно

c:\User>cd KS2203_16

c:\User\KS2203_16>mkdir asm
Подпапка или файл asm уже существует.

c:\User\KS2203_16>tasm 2
Turbo Assembler  Version 4.1  Copyright (c) 1988, 1996 Borland International

Assembling file:   2.ASM
Error messages:    None
Warning messages:  None
Passes:            1
Remaining memory:  400k


c:\User\KS0ACE~1>tlink 2
Turbo Link  Version 7.1.30.1. Copyright (c) 1987, 1996 Borland International

C:\USER\KS0ACE~1>2
Enter your prompt: asd   aaa    2312 9 9 8 9 89 7 9 68 6 8 54 678                3       3       3       3        3       3      3 4
Output: 8 86    3 ·+F╘←V╓♣☼ Г╥ SЛ┌┴ш♦┴ъ♦┴у♀♂├[@Л╪┤H═!s♣╕☺ ы\ЙF╪ЙF┌☺FЄМ╚О╪║Ъ☺М╨О└
Н^╪╕♥K═!s♣╕☺ ы9ЛF№ЛV■♣☼ Г╥ SЛ┌┴ш♦┴ъ♦┴у♀♂├[@Л╪ОF╪┤J═!Л╞♠ ^ЁГ─☻=  t♠P┤I═!X_▼Y[╔├Ц◄
А у◄\ у◄l у◄C:\TASM\BIN\rtm.exe
                                                                        ¶ ☻
Stub error not be processor$unrecognized parameters$unable A20 parameter$bad cre
ate space$cannot copy error$unable copy chain stack$unable
C:\USER\KS0ACE~1>



.model SMALL
.186
.stack 100h

maxSize         EQU     256

.data
    file        db      'output.txt', 0
    prompt      db      'Enter your prompt: ', '$'
    limit       db      0Dh, 0Ah, 'LIMIT REACHED','$'  
    greeting    db      0Dh, 0Ah, 'Output: ','$'
    shrtStr     db      0Dh, 0Ah, 'Too short','$'
    space       db      ?
    buffer      db      maxSize DUP(?)    
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
    je      read_char
    cmp     al,   09h
    je      no_space
    cmp     al,   08h      
    jne     no_backspace  
    cmp     di,   si       
    je      read_char
    mov     al,   20h
    dec     di   
    scasb
    jne     not_space
    dec     bx
not_space:
    dec     di
    mov     ax,   0E08h
    int     10h
    mov     al,   20h    
    int     10h
    mov     al,   08h
    int     10h
    jmp     read_char
no_backspace:

    cmp     al,   20h
    jl      read_char   
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
mkFile:
    mov     dx,   offset file            
    mov     ah,   03Ch                   
    int     21h  
    mov     si,   ax
    mov     ah,   09h
    mov     dx,   offset greeting
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
