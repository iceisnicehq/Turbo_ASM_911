.model small
.stack 200h

.data
    filename_in   db "input.bin",0     
	filename_out  db "output.asm",0    
    buffer        dd 0                  

	o_cmd         db "$$$$"             
	m_cmp         db "cmp$"
	m_rcl         db "rcl$"
	m_daa         db "daa$"
	m_err         db "ERR$"
	
	o_op1         db "$$$"              
	o_op2         db "$$$$$$$$"         
	
	o_cmd_full    db "                              $" 
	
	
	o_op1decb     db "alcldlblahchdhbh" 
	o_op1decw     db "axcxdxbxspbpsidi" 
	
    endl          db 0dh,0ah,"$"      
	errormsg      db "Error$"
	
	msg_fopen_err   db "fopen error$"
	msg_fseek_err   db "fseek error$"
	msg_fread_err   db "fread error$"
	msg_fwrite_err  db "fwrite error$"
	msg_fcreate_err db "fcreate error$"
	
	
	inp_filedesc  dw 0
	out_filedesc dw 0

.code
    mov ax, @data
    mov ds, ax                  
	
    lea dx, filename_in          
    mov al, 0                    
    call fopen

	mov word ptr inp_filedesc, ax 
	mov bx, ax
	
    lea dx, filename_out
    mov cx, 0                     
    call fcreate

	mov word ptr out_filedesc, ax
	
	call fsize
	
loop1:
	test di, di
	jnz loop1_di_notzero
	
	test si, si
	jz loop1_end
	dec si
	
loop1_di_notzero:
	dec di
	
	lea dx, buffer   
    mov cx, 1       
    call fread

	call disasm
	
	lea ax, m_err
	cmp ax, dx
	je loop1_continue
	
	lea dx, o_cmd_full
    call printstr
    call newline
	
	call fwritestr
	lea dx, endl      
	call fwritestr

loop1_continue:
	jmp loop1
	
loop1_end:
    mov ah, 3eh 
    int 21h     
    mov ah, 4ch 
    int 21h

write_eff_addr proc
	mov byte ptr [di], '['
	inc di
	
	test cl, 4
	jnz wea_bit3
	mov byte ptr [di], 'b'
	inc di
	
	test cl, 2 
	jnz wea_bit2
	mov byte ptr [di], 'x'
	jmp wea_1

wea_bit2:
	mov byte ptr [di], 'p'
	jmp wea_1
	
wea_1:
	inc di
	mov byte ptr [di], '+'
	inc di
	
	test cl, 1
	jnz wea_2
	
	mov byte ptr [di], 's'
	jmp wea_3
	
wea_2:
	mov byte ptr [di], 'd'

wea_3:
	inc di
	mov byte ptr [di], 'i'
	inc di
	jmp wea_end
	
wea_bit3:
	cmp cl, 5
	je wea_5
	cmp cl, 6
	je wea_6
	cmp cl, 7
	je wea_7
	
wea_4:
	mov word ptr [di], 'is'
	jmp wea_pre
	
wea_5:
	mov word ptr [di], 'id'
	jmp wea_pre
	
wea_6:
	mov word ptr [di], 'pb'
	jmp wea_pre
	
wea_7:
	mov word ptr [di], 'xb'
	jmp wea_pre

wea_pre:
	add di, 2
	
wea_end:
	mov byte ptr [di], ']'
	inc di
	ret
write_eff_addr endp

disasm proc
	push si
	push di
	push bx
	push cx
	mov cl, byte ptr buffer
	mov word ptr inp_filedesc, bx
	
	cmp cl, 27h
	je is_daa
	
	lea di, o_op1decb 
	cmp cl, 3ah
	je is_cmp
	
	lea di, o_op1decw 
	cmp cl, 3bh
	je is_cmp
	
	mov si, cx
	

	lea di, o_op1decb
	cmp cl, 0d0h
	je is_rcl_near
	
	cmp cl, 0d2h
	je is_rcl_near
	
	cmp cl, 0c0h
	je is_rcl_near
	
	lea di, o_op1decw
	cmp cl, 0d1h
	je is_rcl_near
	
	cmp cl, 0d3h
	je is_rcl_near
	
	cmp cl, 0c1h
	je is_rcl_near
	
	lea dx, m_err
	xor si, si
	jmp disasm_end
	
is_daa:
	lea dx, m_daa
	xor si, si
	jmp disasm_end

is_rcl_near:
	jmp is_rcl
	
is_cmp:
	lea dx, buffer+1
	mov cx, 1
	call fread
	mov bx, dx
	mov bl, [bx]
	
	; первый операнд
	mov cl, bl
	rcr cl, 3    
	and cx, 7   
	
	push bx      
	
	rcl cl, 1    
	mov bx, di
	add bx, cx
	mov cx, [bx] 
	
	lea bx, o_op1
	mov [bx], cx
	
	pop bx      
	
	mov ch, bl
	rcr ch, 6
	and ch, 3

	mov cl, bl
	and cl, 7
	
	cmp ch, 1
	je disasm_cmp_mod1
	
	cmp ch, 2
	je disasm_cmp_mod2
	
	cmp ch, 3
	je disasm_cmp_mod3
	
disasm_cmp_mod0:
	lea di, o_cmd_full+8 
	
	cmp cl, 6
	je disasm_cmp_mod0_1
	
	call write_eff_addr  
	jmp disasm_cmp_end
	
disasm_cmp_mod0_1:
	mov byte ptr [di], '['
	inc di
	
	lea dx, buffer+2
	mov cx, 2
	call fread
	mov bx, dx
	mov cx, [bx]
	
	call writeword
	
	mov byte ptr [di], 'h' 
	inc di

	mov byte ptr [di], ']'
	inc di
	jmp disasm_cmp_end
	
disasm_cmp_mod1:
	lea di, o_cmd_full+8
	call write_eff_addr
	jmp disasm_cmp_write_disp8
	
disasm_cmp_mod2:
	lea di, o_cmd_full+8
	call write_eff_addr
	jmp disasm_cmp_write_disp16
	
disasm_cmp_mod3:
	mov ch, 0   
	rcl cl, 1  
	mov bx, di
	add bx, cx
	mov cx, [bx] 
	
	lea di, o_cmd_full+8
	mov [di], cx
	add di, 2
	jmp disasm_cmp_end

disasm_cmp_write_disp8:
	
	lea dx, buffer+2
	mov cx, 1
	call fread
	mov bx, dx
	mov cl, [bx]
	
	mov byte ptr [di], '+'
	inc di
	
	call writebyte
	mov byte ptr [di], 'h'
	inc di
	jmp disasm_cmp_end

disasm_cmp_write_disp16:

	lea dx, buffer+2
	mov cx, 2
	call fread
	mov bx, dx
	mov cx, [bx]
	
	mov byte ptr [di], '+'
	inc di

	call writeword
	mov byte ptr [di], 'h'
	inc di

disasm_cmp_end:
	mov byte ptr [di], '$'
	lea dx, m_cmp
	
	lea di, o_cmd_full+3
	mov byte ptr [di], ' '
	inc di
	
	lea si, o_op1
	mov si, [si]
	mov [di], si
	add di, 2
	
	mov byte ptr [di], ',' 
	mov si, 1
	jmp disasm_end

is_rcl:
	lea dx, buffer+1
	mov cx, 1
	call fread
	mov bx, dx
	mov bl, [bx]
	
	mov cl, bl
	and cl, 7

	mov ch, bl
	rcr ch, 6
	and ch, 3
	
	cmp ch, 3
	je disasm_rcl_mod3_near
	jmp disasm_rcl_not_mod3
	
disasm_rcl_mod3_near:
	jmp disasm_rcl_mod3

disasm_rcl_not_mod3:
	lea di, o_cmd_full+4 
	mov dx, si
	
	cmp dl, 0d0h
	je is_rcl_byte_variation
	cmp dl, 0d2h
	je is_rcl_byte_variation
	cmp dl, 0c0h
	je is_rcl_byte_variation

is_rcl_word_variation:
	mov word ptr [di], 'ow'
	add di, 2
	mov word ptr [di], 'dr'
	add di, 2
	jmp disasm_rcl_1

is_rcl_byte_variation:
	mov word ptr [di], 'yb'
	add di, 2
	mov word ptr [di], 'et'
	add di, 2
	
disasm_rcl_1:
	mov word ptr [di], 'p '
	add di, 2
	mov word ptr [di], 'rt'
	add di, 2
	mov word ptr [di], ' '
	inc di
	
	cmp ch, 1
	je disasm_rcl_mod1
	
	cmp ch, 2
	je disasm_rcl_mod2
	
disasm_rcl_mod0:
	
	cmp cl, 6
	je disasm_rcl_mod0_1
	
	call write_eff_addr 
	jmp disasm_rcl_end
	
disasm_rcl_mod0_1:
	mov byte ptr [di], '['
	inc di
	
	lea dx, buffer+2
	mov cx, 2
	call fread
	mov bx, dx
	mov cx, [bx]
	
	call writeword
	
	mov byte ptr [di], 'h' 
	inc di
	
	mov byte ptr [di], ']'
	inc di
	jmp disasm_rcl_end
	
disasm_rcl_mod1:
	call write_eff_addr
	jmp disasm_rcl_write_disp8
	
disasm_rcl_mod2:
	call write_eff_addr
	jmp disasm_rcl_write_disp16
	
disasm_rcl_mod3:
	mov ch, 0
	rcl cl, 1   
	mov bx, di
	add bx, cx
	mov cx, [bx]
	
	lea di, o_cmd_full+4
	mov [di], cx
	add di, 2
	jmp disasm_rcl_end

disasm_rcl_write_disp8:
	lea dx, buffer+2
	mov cx, 1
	call fread
	mov bx, dx
	mov cl, [bx]
	
	mov byte ptr [di], '+'
	inc di
	
	call writebyte
	mov byte ptr [di], 'h'
	inc di
	jmp disasm_rcl_end

disasm_rcl_write_disp16:
	lea dx, buffer+2
	mov cx, 2
	call fread
	mov bx, dx
	mov cx, [bx]
	
	mov byte ptr [di], '+'
	inc di
	
	call writeword
	mov byte ptr [di], 'h'
	inc di
	
disasm_rcl_end:
	mov byte ptr [di], ','
	inc di
	mov byte ptr [di], ' '
	inc di
	
	mov dx, si
	
	cmp dl, 0d0h
	je is_rcl_1_variation
	cmp dl, 0d1h
	je is_rcl_1_variation
	
	cmp dl, 0d2h
	je is_rcl_cl_variation
	cmp dl, 0d3h
	je is_rcl_cl_variation
	
is_rcl_imm8_variation: 
	
	lea dx, buffer+2
	mov cx, 1
	call fread
	mov bx, dx
	mov cl, [bx]

	call writebyte
	mov byte ptr [di], 'h'
	inc di
	
	jmp disasm_rcl_end1
	
is_rcl_1_variation:
	mov byte ptr [di], '1'
	inc di
	jmp disasm_rcl_end1
	
is_rcl_cl_variation:
	mov word ptr [di], 'lc'
	add di, 2
	
disasm_rcl_end1:
	mov byte ptr [di], '$'
	lea dx, m_rcl
	mov si, 1
	
disasm_end:
	lea di, o_cmd_full
	mov bx, dx
	mov cx, [bx]
	mov [di], cx
	add di, 2
	add bx, 2
	mov cl, [bx]
	mov [di], cl
	
	cmp si, 0
	jne disasm_end1
	inc di
	mov byte ptr [di], '$'

disasm_end1:
	pop cx
	pop bx
	pop di
	pop si
	ret
disasm endp

printbyte proc
	push ax
	push dx
	
    mov ah, 2
	
	mov dl, cl
	shr dl, 4
	cmp dl, 9
	jle prb1
	add dl, 'A'-10
	jmp prb2
prb1:
	add dl, '0'
prb2:
    int 21h
	
	mov dl, cl
	and dl, 15
	cmp dl, 9
	jle prb3
	add dl, 'A'-10
	jmp prb4
prb3:
	add dl, '0'
prb4:
    int 21h
	
	pop dx
	pop ax
	ret
printbyte endp

writebyte proc
	push dx
	
	mov dl, cl
	shr dl, 4
	cmp dl, 9
	jle wb1
	add dl, 'A'-10
	jmp wb2
wb1:
	add dl, '0'
wb2:
    mov byte ptr [di], dl
	inc di
	
	mov dl, cl
	and dl, 15
	cmp dl, 9
	jle wb3
	add dl, 'A'-10
	jmp wb4
wb3:
	add dl, '0'
wb4:
    mov byte ptr [di], dl
	inc di
	
	pop dx
	ret
writebyte endp

printword proc
	push cx
	mov cl, ah
	call printbyte
	
	mov cl, al
	call printbyte

	pop cx
    ret
printword endp

writeword proc
	push cx
	mov cl, ch
	call writebyte
	
	pop cx
	call writebyte
    ret
writeword endp

printstr proc
	push ax
    mov ah, 9    
    int 21h
	pop ax
	ret
printstr endp

newline proc
	push ax
	push dx
    mov ah, 9
    lea dx, endl
    int 21h
	pop dx
	pop ax
	ret
newline endp

fopen proc
	mov ah, 3dh   
    int 21h   
	
    jc fopen_err
	ret
fopen_err:
	lea dx, msg_fopen_err
	call printstr
	call newline
	jmp error_occured
fopen endp

fcreate proc
	mov ah, 3ch    
    int 21h        
    jc fopen_err
	ret
fcreate_err:
	lea dx, msg_fcreate_err
	call printstr
	call newline
	jmp error_occured
fcreate endp

fread proc
	push bx
	mov bx, word ptr inp_filedesc
	mov ah, 3fh   
    int 21h
	pop bx
	jc fread_err
	ret       
	
fread_err:
	lea dx, msg_fread_err
	call printstr
	call newline
	jmp error_occured
fread endp

fseek proc
	push bx
	mov bx, word ptr inp_filedesc
	mov ah, 42h
	int 21h
	pop bx
	jc fseek_err
	ret
	
fseek_err:
	lea dx, msg_fseek_err
	call printstr
	call newline
	jmp error_occured
fseek endp

fsize proc
	push ax
	push cx
	push dx
	
	xor cx, cx
	xor dx, dx
	mov al, 1
	call fseek
	
	push dx
	push ax
	
	xor cx, cx
	xor dx, dx
	mov al, 2
	call fseek

	mov si, dx
	mov di, ax
	
	pop dx
	pop cx
	mov al, 0
	call fseek
	
	pop dx
	pop cx
	pop ax
	ret
fsize endp

fwritestr proc
	push cx
	push bx

	mov bx, dx
	xor cx, cx            
fwritestr_loop:
	mov al, [bx]        
	cmp al, '$'          
	je fwritestr_loop_end
	
	inc bx
	inc cx
	jmp fwritestr_loop

fwritestr_loop_end:
	mov bx, word ptr out_filedesc
	mov ah, 40h
	int 21h
	
	pop bx
	pop cx
	jc error_occured
	ret
fwritestr endp

error_occured:
	
    mov ah, 9     
    lea dx, errormsg
    int 21h

    mov ah, 4ch  
    int 21h

end
