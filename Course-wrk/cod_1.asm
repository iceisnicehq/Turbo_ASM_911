.model small
.186
.stack 100h
.data
B 		db 	1024 DUP(?)
_COM 	db 	'com_1.com',0
_output	db 	'output.asm',0
_DAS 	db 	9,'DAS',13,10,'$'
_ROL	db	9,'ROL',9, 45 DUP (?)
_MOV	db	9,'MOV',9, 45 DUP (?) 
rgstr	db	30 DUP (?)
temp_al	db	0
temp_ModRM	db	0
temp_pref	dw	0
temp_di	db	0	
temp_cl	db	0
temp_bx	dw	0
_ptr_	dw	0
sib_ind	dw	0
_ss_	db	0
jump_table dw offset option0, offset option1, offset option2, offset option3
           dw offset option4, offset option5, offset option6, offset option7
seg_table	dw offset seg0, offset seg1, offset seg2, offset seg3
           dw offset seg4, offset seg5
.code
start:
	mov 	ax,@data
	mov 	ds,ax
	mov	es,ax

	lea	dx,_COM	
	mov	ax,3d00h
	int	21h
	
	mov	bx,ax	
	mov	ax,3f00h
	mov	cx,1024d
	lea	dx,b
	int	21h

	mov	ax,3e00h 	
	int	21h
	
	lea	dx,_output	
	mov	ax,3c00h
	mov	cx,2
	int	21h

	lea	si,b

	xor bp,bp

start_mark:
	xor	ah,ah
	lodsb
	
	cmp al,066h
	jne n1
	add bp,1 
	jmp start_mark
n1:
	cmp al,067h
	jne n2
	add bp,2 
	jmp start_mark
n2:      
	cmp al,26h
	jne n3
	mov word ptr [temp_pref], 'SE'
	jmp start_mark
n3:
	cmp al,02Eh
	jne n4
	mov word ptr [temp_pref], 'SC'
	jmp start_mark
n4:
	cmp al,36h
	jne n5
	mov word ptr [temp_pref], 'SS'
	jmp start_mark
n5:
	cmp al,3Eh
	jne n6
	mov word ptr [temp_pref], 'SD'
	jmp start_mark
n6:
	cmp al,64h
	jne n7
	mov word ptr [temp_pref], 'SF'
	jmp start_mark
n7:
	cmp al,65h
	jne n8
	mov word ptr [temp_pref], 'SG'
	jmp start_mark
n8:
	cmp	al,2Fh
	jnz n9
	jmp	COM_DAS
n9:
	push ax
	and al,0F0h
	cmp al,0D0h
	pop ax
	
	jne n10
	jmp CHECK_ROL_D
n10:
	cmp	al,0C0h
	jne n11
	mov [temp_cl],0
	jmp	ROL_C
n11:
	cmp al,0C1h
	jne n12
	mov [temp_cl],1
	jmp	ROL_C
n12:
	push ax
	and al,0F0h
	cmp al,0B0h
	pop ax
	
	jne n13
	jmp CHECK_MOV_B
n13:
	push ax
	and al,0F0h
	cmp al,0A0h
	pop ax
	
	jne n14
	jmp CHECK_MOV_A
n14:
	push ax
	and al,0F0h
	cmp al,080h
	pop ax
	
	jne n15
	jmp CHECK_MOV_8
n15:
	cmp	al,0C6h
	jne n16
	mov [temp_cl],0
	jmp	MOV_C6_C7
n16:
	cmp al,0C7h
	jne n17
	mov [temp_cl],1
	jmp	MOV_C6_C7
n17:
	jmp exit
CHECK_ROL_D: 
	mov [temp_di], al
	cmp	al,0D4h
	jna d1
	jmp	exit
d1:
	and al,3
	cmp al,0
	jne d2
	mov [temp_cl],0
	jmp ROL_D
d2:
	cmp al,1
	jne d3
	mov [temp_cl],1
	jmp ROL_D
d3:
	cmp al,2
	jne d4
	mov [temp_cl],0
	jmp ROL_D
d4:
	mov [temp_cl],1
	jmp ROL_D

CHECK_MOV_B: 
	lea bx,_MOV + 5
	cmp al,0B8h
	jae MOV_B8_BF
	mov cl,0 
	
	cmp al,0B0h
	jne b1
	jmp MOV_B0
b1:
	cmp al,0B1h
	jne b2
	jmp MOV_B1
b2:
	cmp al,0B2h
	jne b3
	jmp MOV_B2
b3:
	cmp al,0B3h
	jne b4
	jmp MOV_B3
b4:
	cmp al,0B4h
	jne b5
	jmp MOV_B4
b5:
	cmp al,0B5h
	jne b6
	jmp MOV_B5
b6:
	cmp al,0B6h
	jne b7
	jmp MOV_B6
b7:
	cmp al,0B7h
	jne b15
	jmp MOV_B7
MOV_B8_BF:
	mov cl,1 
	cmp al,0B8h
	jne b8
	jmp MOV_B8
b8:
	cmp al,0B9h
	jne b9
	jmp MOV_B9
b9:
	cmp al,0BAh
	jne b10
	jmp MOV_BA
b10:
	cmp al,0BBh
	jne b11
	jmp MOV_BB
b11:
	cmp al,0BCh
	jne b12
	jmp MOV_BC
b12:
	cmp al,0BDh
	jne b13
	jmp MOV_BD
b13:
	cmp al,0BEh
	jne b14
	jmp MOV_BE
b14:
	cmp al,0BFh
	jne b15
	jmp MOV_BF
b15:
	jmp exit
CHECK_MOV_A:
	cmp al,0A0h
	jne a1
	jmp MOV_A0
a1:
	cmp al,0A1h
	jne a2
	jmp MOV_A1
a2:
	cmp al,0A2h
	jne a3
	jmp MOV_A2
a3:
	cmp al,0A3h
	jne a4
	jmp MOV_A3
a4:
	jmp exit

CHECK_MOV_8:
	cmp al,088h
	jne m8_1
	mov [temp_cl],0
	jmp MOV_88_89
m8_1:
	cmp al,089h
	jne m8_2
	mov [temp_cl],1
	jmp MOV_88_89
m8_2:
	cmp al,08Ah
	jne m8_3
	mov [temp_cl],0
	jmp MOV_8A_8B
m8_3:
	cmp al,08Bh
	jne m8_4
	mov [temp_cl],1
	jmp MOV_8A_8B
m8_4:
	cmp al,08Ch
	jne m8_5
	mov [temp_cl],1
	jmp MOV_8C
m8_5:
	cmp al,08Eh
	jne m8_5
	mov [temp_cl],1
	jmp MOV_8E
m8_6:
	jmp exit
hex2sym:
	push bx
	mov bh,al
	shr al,4
	add al,30h
	cmp al,39h
	
	jbe dalee
	
	add al,7
dalee:
	mov ah,al
	mov al,bh
	and al,0Fh
	
	add al,30h
	cmp al,39h
	
	jbe dalee2
	
	add al,7
dalee2:
	pop bx
	xchg ah,al
	ret
mem_16:
	cmp word ptr [temp_pref], 0h
	je mem_pref_16
	mov cx, word ptr [temp_pref]
	mov word ptr [bx], cx
	mov byte ptr [bx+2], ':'
	add bx,3
	mov word ptr [temp_pref], 3h
mem_pref_16:
	mov byte ptr [bx],'['
	and al,7
	cmp al,0
	jne mem1
	mov [bx+1], 'XB'
	mov byte ptr [bx+3],'+'
	mov [bx+4], 'IS'
	mov cx,6
	ret
mem1:
	cmp al,1
	jne mem2
	mov [bx+1], 'XB'
	mov byte ptr [bx+3],'+'
	mov [bx+4], 'ID'
	mov cx,6
	ret
mem2:
	cmp al,2
	jne mem3
	mov [bx+1], 'PB'
	mov byte ptr [bx+3],'+'
	mov [bx+4], 'IS'
	mov cx,6
	ret
mem3:
	cmp al,3
	jne mem4
	mov [bx+1], 'PB'
	mov byte ptr [bx+3],'+'
	mov [bx+4], 'ID'
	mov cx,6
	ret
mem4:
	cmp al,4
	jne mem5
	mov [bx+1], 'IS'
	mov cx,3
	ret
mem5:
	cmp al,5
	jne mem6
	mov [bx+1], 'ID'
	mov cx,3
	ret
mem6:
	cmp al,6
	jne mem7
	mov al, byte ptr [temp_al]
	and al,0C0h
	cmp al,0h
	je mem6_disp
	mov [bx+1], 'PB'
	mov cx,3
	ret
mem6_disp:
	lodsb
	
	call hex2sym
	
	mov [bx+4], ax
	mov byte ptr [bx+6],'h'
	
	lodsb
	
	call hex2sym
	
	mov [bx+2],ax
	mov byte ptr [bx+1],'0'
	mov cx, 7
	ret	
mem7:
	mov [bx+1], 'XB'
	mov cx,3
	ret
mem_32:
	cmp word ptr [temp_pref], 0h
	je mem_pref_32
	mov cx, word ptr [temp_pref]
	mov word ptr [bx], cx
	mov byte ptr [bx+2], ':'
	add bx,3
	mov word ptr [temp_pref], 3h
mem_pref_32:
	mov byte ptr [bx],'['
	mov [temp_al], al
	and al,7
	cmp al,0
	jne mem_32_1
	
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'XA'
	cmp byte ptr [sib_ind],0             
	mov di,4
	je mm_1
	jmp mem_sib1
mm_1:
	mov cx,4
	ret
mem_32_1:
	cmp al,1
	jne mem_32_2
	
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'XC'
	cmp byte ptr [sib_ind],0                  
	mov di,4
	je mm_2
	jmp mem_sib1
mm_2:
	mov cx,4
	ret
mem_32_2:
	cmp al,2
	jne mem_32_3
	
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'XD'
	cmp byte ptr [sib_ind],0              
	mov di,4
	je mm_3
	jmp mem_sib1
mm_3:
	mov cx,4
	ret
mem_32_3:
	cmp al,3
	jne mem_32_4
	
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'XB'
	mov di,4
	cmp byte ptr [sib_ind],0             
	je mm_4
	jmp mem_sib1
mm_4:
	mov cx,4
	ret
mem_32_4:
	cmp al,4
	jne mem_32_5
	cmp byte ptr [sib_ind],0
	jne mem_32_4_ind
	
	mov al, byte ptr [temp_al]
	mov byte ptr [temp_ModRM], al
	lodsb
	
	push ax
	and al, 0C0h
	mov [_ss_], al
	pop ax
	
	mov byte ptr [sib_ind], 1
	call mem_pref_32
	ret

mem_32_4_ind:
	mov byte ptr [bx+1], 'E'
	mov word ptr [bx+2], 'PS'
	mov di,4
	jmp mem_sib1
mem_32_5:
	cmp al,5
	je mm_5
	jmp mem_32_6
mm_5:
	cmp byte ptr [sib_ind],0
	jne mm_5_sib
	mov al, byte ptr [temp_al]
	jmp mm5_cont
mm_5_sib:
	mov al, byte ptr [temp_ModRM]
mm5_cont:
	and al, 0C0h
	cmp al, 0h
	jne mem_base_1
	
	lodsb
	
	call hex2sym
	
	mov [bx+8], ax
	mov byte ptr [bx+10],'h'
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+6], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+4], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+2], ax
	mov byte ptr [bx+1], '0'
	mov cx,11
	jmp mem_base_ret
mem_base_1:
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'PB' 

	mov di,4
	cmp byte ptr [sib_ind],0
	jne mem_sib1
	mov cx,4
mem_base_ret:
	ret
mem_32_6:
	cmp al,6
	jne mem_32_7
	
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'IS'
	cmp byte ptr [sib_ind],0            
	mov di,4
	jne mem_sib1
	mov cx,4
	ret
mem_32_7:
	mov byte ptr [bx+1],'E'
	mov word ptr [bx+2],'ID'
	cmp byte ptr [sib_ind],0                
	mov di,4
	jne mem_sib1
	mov cx,4
	ret
mem_sib1:
	mov byte ptr [bx+di],'+'
	mov al, [temp_al]
	and al,38h
	cmp al,0
	jne mem_sib2
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'XA'
	mov cx,di
	add cx,4
	ret
mem_sib2:
	cmp al,8h
	jne mem_sib3
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'XC'
	mov cx,di
	add cx,4
	ret
mem_sib3:
	cmp al,10h
	jne mem_sib4
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'XD'
	mov cx,di
	add cx,4
	ret
mem_sib4:
	cmp al,18h
	jne mem_sib5
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'XB'
	mov cx,di
	add cx,4
	ret
mem_sib5:
	cmp al,20h
	jne mem_sib6
	mov cx,di
	ret
mem_sib6:
	cmp al,28h
	jne mem_sib7
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'PB'
	mov cx,di
	add cx,4
	ret
mem_sib7:
	cmp al,30h
	jne mem_sib8
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'IS'
	mov cx,di
	add cx,4
	ret
mem_sib8:
	mov byte ptr [bx+di+1],'E'
	mov [bx+di+2],'ID'
	mov cx,di
	add cx,4
	ret
option0:
    cmp [temp_cl],0
	jne word_reg0
	mov word ptr [rgstr],'LA'
	ret
	
word_reg0:
	mov word ptr [rgstr],'XA'
	ret
option1:
	cmp [temp_cl],0
	jne word_reg1
	mov word ptr [rgstr],'LC'
	ret

word_reg1:
	mov word ptr [rgstr],'XC'
	ret

option2:
	cmp [temp_cl],0
	jne word_reg2
	mov word ptr [rgstr],'LD'
	ret

word_reg2:
	mov word ptr [rgstr],'XD'
	ret

option3:
	cmp [temp_cl],0
	jne word_reg3
	mov word ptr [rgstr],'LB'
	ret

word_reg3:
	mov word ptr [rgstr],'XB'
	ret

option4:
	cmp [temp_cl],0
	jne word_reg4
	mov word ptr [rgstr],'HA'
	ret

word_reg4:
	mov word ptr [rgstr],'PS'
	ret
option5:
	cmp [temp_cl],0
	jne word_reg5
	mov word ptr [rgstr],'HC'
	ret
word_reg5:
	mov word ptr [rgstr],'PB'
	ret
    
option6:
	cmp [temp_cl],0
	jne word_reg6
	mov word ptr [rgstr],'HD'
	ret
word_reg6:
	mov word ptr [rgstr],'IS'
	ret
option7:
	cmp [temp_cl],0
	jne word_reg7
	mov word ptr [rgstr],'HB'
	ret
word_reg7:
	mov word ptr [rgstr],'ID'
	ret
byte_ptr:
	mov word ptr [bx], 'yb'
	mov word ptr [bx+2], 'et'
	mov word ptr [bx+4], 'p '
	mov word ptr [bx+6], 'rt'
	mov byte ptr [bx+8], ' '
	add bx,9
	mov byte ptr [_ptr_],9
	ret
word_ptr:
	mov word ptr [bx], 'ow'
	mov word ptr [bx+2], 'dr'
	mov word ptr [bx+4], 'p '
	mov word ptr [bx+6], 'rt'
	mov byte ptr [bx+8], ' '
	add bx,9
	mov byte ptr [_ptr_],9
	ret
dword_ptr:
	mov byte ptr [bx], 'd'
	mov word ptr [bx+1], 'ow'
	mov word ptr [bx+3], 'dr'
	mov word ptr [bx+5], 'p '
	mov word ptr [bx+7], 'rt'
	mov byte ptr [bx+9], ' '
	add bx,10
	mov byte ptr [_ptr_],10
	ret
check_ss:
	cmp [_ss_], 0C0h
	jne ss_1
	mov word ptr [bx+di], '8*'
	add bx,2
	mov word ptr [sib_ind], 2
	ret
ss_1:
	cmp [_ss_], 080h
	jne ss_2
	mov word ptr [bx+di], '4*'
	add bx,2
	mov word ptr [sib_ind], 2
	ret 
ss_2:
	cmp [_ss_], 040h
	jne ss_3
	mov word ptr [bx+di], '2*'
	add bx,2
	mov word ptr [sib_ind], 2
	ret
ss_3:
	mov word ptr [sib_ind], 0
	ret
find_ptr:
	test bp, 1
	jz f1
	call dword_ptr
	ret
f1:
	cmp [temp_cl],1
	jne f2
	call word_ptr
	ret
f2:
	call byte_ptr
	ret
find_num:
	test bp,1
	jz fn1
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+7], ax
	mov byte ptr [bx+di+9],'h'
	mov [bx+di+10],0A0Dh
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+5], ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+3], ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+1], ax
	mov byte ptr [bx+di], '0'
	
	add di,12
	ret
fn1:
	cmp [temp_cl], 1
	jne fn2
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+3], ax
	mov byte ptr [bx+di+5],'h'
	mov [bx+di+6],0A0Dh
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+1], ax
	mov byte ptr [bx+di], '0'
	
	add di,8
	ret
fn2:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '0'
	mov [bx+di+1], ax
	mov byte ptr [bx+di+3],'h'
	mov [bx+di+4],0A0Dh
	
	add di,6
	ret
seg0:
	mov word ptr [rgstr],'SE'
	ret
seg1:
	mov word ptr [rgstr],'SC'
	ret
seg2:
	mov word ptr [rgstr],'SS'
	ret
seg3:
	mov word ptr [rgstr],'SD'
	ret
seg4:
	mov word ptr [rgstr],'SF'
	ret
seg5:
	mov word ptr [rgstr],'SG'
	ret
exit:
	mov	ah,03Eh
	mov	bx,5
	int	21h
	mov	ah,4ch
	int	21h
output:
	mov	ah,40h
	mov 	bx,5
	int	21h

	ret

COM_DAS:
	lea	dx,_DAS
	mov	cx,6
	call	output
	
	jmp	start_mark

	
ROL_C:
	lodsb
	
	mov [temp_al],al
	and al,0C0h
	cmp al,0C0h
	jne rcmod1
	jmp ROL_C_md11
rcmod1:
	cmp al,080h
	jne rcmod2
	jmp ROL_C_md10
rcmod2:
	cmp al,040h
	jne rcmod3
	jmp ROL_C_md01
rcmod3:
	jmp ROL_C_md00

ROL_C_md11:
	mov al,[temp_al]
	
	and	al,7
	mov bx, ax
    shl bx, 1                   
    call [jump_table + bx]
	
	lea bx,_ROL + 5
	cmp bp,1
	jb rc_reg8_16
	mov byte ptr [bx],'E'
	inc bx
rc_reg8_16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	
	mov [bx+2]," ,"
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+4], '0'
	mov [bx+5], ax
	mov byte ptr [bx+7],'h'
	mov [bx+8],0A0Dh
	
	mov	cx,14
	add cx,bp
	xor bp,bp
	lea	dx,_ROL
	
	call output
	
	jmp start_mark

ROL_C_md10:
	mov al, [temp_al]
	
	lea	bx,_ROL + 5
	call find_ptr
	cmp bp,2
	jae mem_ROL_md10_32
	call mem_16
	jmp mem_cont_md10
mem_ROL_md10_32:
	call mem_32
mem_cont_md10:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne ROL_c_md10_disp
	call check_ss
ROL_c_md10_disp:
	cmp bp,2
	jb ROL_c_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+8], ax
	mov word ptr [bx+di+10],']h'
	mov word ptr [bx+di+12],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+6],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+4],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov byte ptr [bx+di+1], '0'
	add di, 14
	jmp ROL_c_md10_disp16_cont
ROL_c_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+4], ax
	mov word ptr [bx+di+6],']h'
	mov word ptr [bx+di+8],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov byte ptr [bx+di+1], '0'
	add di,10
ROL_c_md10_disp16_cont:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '0'
	mov [bx+di+1], ax
	mov byte ptr [bx+di+3],'h'
	mov [bx+di+4],0A0Dh
	
	add di,11
	jmp rc_viv
ROL_C_md01:
	mov al,[temp_al]
	
	lea	bx,_ROL + 5
	call find_ptr
	cmp bp,2
	jae mem_ROL_md01_32
	call mem_16
	jmp mem_cont_md01
mem_ROL_md01_32:
	call mem_32
mem_cont_md01:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne ROL_c_md01_disp
	call check_ss
ROL_c_md01_disp:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	mov word ptr [bx+di+6],' ,'

	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di+8], '0'
	mov [bx+di+9], ax
	mov byte ptr [bx+di+11],'h'
	mov [bx+di+12],0A0Dh
	
	add di,19
	jmp rc_viv
ROL_C_md00:
	mov al,[temp_al]
	
	lea	bx,_ROL + 5
	call find_ptr
	cmp bp,2
	jae mem_ROL_md00_32
	call mem_16
	jmp mem_cont_md00
mem_ROL_md00_32: 
	call mem_32
mem_cont_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne ROL_c_md00_disp
	call check_ss
ROL_c_md00_disp:
	mov byte ptr [bx+di],']'
	mov word ptr [bx+di+1],' ,'

	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di+3], '0'
	mov [bx+di+4], ax
	mov byte ptr [bx+di+6],'h'
	mov [bx+di+7],0A0Dh
	
	add di,14
rc_viv:
	mov	cx,di
	add cx, [temp_pref]
	add cx, word ptr [_ptr_]
	add cx, word ptr [sib_ind]
	lea	dx,_ROL
	xor bp,bp
	mov word ptr [sib_ind], 00000h
	mov word ptr [temp_pref], 0h
	
	call output

	jmp	start_mark	

ROL_D:
	lodsb
	mov [temp_al], al
	and al,0C0h
	cmp al,0C0h
	jne rdmod1
	jmp ROL_D_md11
rdmod1:
	cmp al,080h
	jne rdmod2
	jmp ROL_D_md10
rdmod2:
	cmp al,040h
	jne rdmod3
	jmp ROL_D_md01
rdmod3:
	jmp ROL_D_md00
	
ROL_D_md11:	
	mov al, [temp_al]
	
	and	al,7
	mov bx, ax
    shl bx, 1                   ;
    call [jump_table + bx]
	
	lea	bx,_ROL + 5
	cmp bp,1
	jb rd1_reg8_16
	mov byte ptr [bx],'E'
	inc bx	
rd1_reg8_16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	
	
	mov	ax," ,"
	mov	[bx+2],ax
	mov ax,di
	cmp al,0D2h
	jae rd2
	mov [bx+4],'h1'
	jmp rd_md_11_viv
rd2:
	mov [bx+4],'LC'
rd_md_11_viv:
	mov [bx+6],0A0Dh

	mov	cx,13
	lea	dx,_ROL
	xor bp,bp
	
	call output

	jmp	start_mark	
ROL_D_md10:
	mov al, [temp_al]
	
	lea	bx,_ROL + 5
	call find_ptr
	cmp bp,0
	jne mem_ROL_d_md10_32
	call mem_16
	jmp mem_cont_d_md10
mem_ROL_d_md10_32:
	call mem_32
mem_cont_d_md10:
	
	mov di,cx
	cmp byte ptr [sib_ind], 1
	jne ROL_d_md10_disp
	call check_ss
ROL_d_md10_disp:
	cmp bp,2
	jb ROL_d_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+8], ax
	mov word ptr [bx+di+10],']h'
	mov word ptr [bx+di+12],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+6],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+4],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov byte ptr [bx+di+1], '0'
	add di, 14
	jmp ROL_d_md10_disp16_cont
ROL_d_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+4], ax
	mov word ptr [bx+di+6],']h'
	mov word ptr [bx+di+8],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov byte ptr [bx+di+1], '0'
	add di,10
ROL_d_md10_disp16_cont:
	
	mov al, byte ptr [temp_di]
	cmp al,0D2h
	
	jae rd5
	mov [bx+di],'h1'
	mov [bx+di+2],0A0Dh
	add di,4
	jmp rd_viv
rd5:
	mov [bx+di],'LC'
	mov [bx+di+2],0A0Dh
	add di,4
	jmp rd_viv
	
ROL_D_md01:
	mov al, [temp_al]
	
	lea	bx,_ROL + 5
	call find_ptr
	cmp bp,0
	jne mem_ROL_d_md01_32
	call mem_16
	jmp mem_cont_d_md01
mem_ROL_d_md01_32:
	call mem_32
mem_cont_d_md01:
	lodsb
	
	call hex2sym
	push ax
	
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne ROL_d_md01_disp
	call check_ss
ROL_d_md01_disp:
	pop ax
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	mov word ptr [bx+di+6],' ,'
	
	mov al, byte ptr [temp_di]
	cmp al,0D2h
	
	jae rd4
	mov [bx+di+8],'h1'
	mov [bx+di+10],0A0Dh
	add di,12
	jmp rd_viv
rd4:
	mov [bx+di+8],'LC'
	mov [bx+di+10],0A0Dh
	add di,12
	jmp rd_viv
	
ROL_D_md00:
	mov al, [temp_al]
	
	lea	bx,_ROL + 5
	call find_ptr
	cmp bp,0
	jne mem_ROL_d_md00_32
	call mem_16
	jmp mem_cont_d_md00
mem_ROL_d_md00_32:
	call mem_32
mem_cont_d_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne ROL_d_md00_disp
	call check_ss
ROL_d_md00_disp:
	mov byte ptr [bx+di],']'
	mov word ptr [bx+di+1],' ,'
	
	mov al, byte ptr [temp_di]
	cmp al,0D2h
	jae rd3
	
	mov [bx+di+3],'h1'
	mov [bx+di+5],0A0Dh
	add di,7
	jmp rd_viv
rd3:
	mov [bx+di+3],'LC'
	mov [bx+di+5],0A0Dh
	add di,7
rd_viv:
	mov	cx,di
	add cx,5
	add cx, [temp_pref]
	add cx, word ptr [_ptr_]
	add cx, word ptr [sib_ind]
	lea	dx,_ROL
	xor bp,bp
	mov word ptr [sib_ind], 00000h
	mov word ptr [temp_pref], 0h
	
	call output

	jmp	start_mark	
	

MOV_B0:
	mov ax,'LA'
	
	jmp MOV_B0_BF
MOV_B1:
	mov ax,'LC'
	
	jmp MOV_B0_BF
MOV_B2:
	mov ax,'LD'
	
	jmp MOV_B0_BF
MOV_B3:
	mov ax,'LB'
	
	jmp MOV_B0_BF
MOV_B4:
	mov ax,'HA'
	
	jmp MOV_B0_BF
MOV_B5:
	mov ax,'HC'
	
	jmp MOV_B0_BF
MOV_B6:
	mov ax,'HD'
	
	jmp MOV_B0_BF
MOV_B7:
	mov ax,'HB'
	
	jmp MOV_B0_BF
MOV_B8:
	cmp bp,1
	jne mb8_reg16
	mov byte ptr [bx],'E'
	inc bx	
mb8_reg16:
	mov ax,'XA'
	
	jmp MOV_B0_BF
MOV_B9:
	cmp bp,1
	jne mb9_reg16
	mov byte ptr [bx],'E'
	inc bx	
mb9_reg16:
	mov ax,'XC'
	
	jmp MOV_B0_BF
MOV_BA:
	cmp bp,1
	jne mba_reg16
	mov byte ptr [bx],'E'
	inc bx	
mba_reg16:
	mov ax,'XD'
	
	jmp MOV_B0_BF
MOV_BB:
	cmp bp,1
	jne mbb_reg16
	mov byte ptr [bx],'E'
	inc bx	
mbb_reg16:
	mov ax,'XB'
	
	jmp MOV_B0_BF
MOV_BC:
	cmp bp,1
	jne mbc_reg16
	mov byte ptr [bx],'E'
	inc bx	
mbc_reg16:
	mov ax,'PS'
	
	jmp MOV_B0_BF
MOV_BD:
	cmp bp,1
	jne mbd_reg16
	mov byte ptr [bx],'E'
	inc bx	
mbd_reg16:
	mov ax,'PB'
	
	jmp MOV_B0_BF
MOV_BE:
	cmp bp,1
	jne mbe_reg16
	mov byte ptr [bx],'E'
	inc bx	
mbe_reg16:
	mov ax,'IS'
	
	jmp MOV_B0_BF
MOV_BF:
	cmp bp,1
	jne mbf_reg16
	mov byte ptr [bx],'E'
	inc bx	
mbf_reg16:
	mov ax,'ID'
	
MOV_B0_BF:
	mov [bx],ax
	mov	ax," ,"
	mov	[bx+2],ax
	
	cmp cl,1
	jne mb_reg8
	cmp bp,1
	jne mb_reg16
	
	lodsb
	
	call hex2sym
	
	mov [bx+11], ax
	mov byte ptr [bx+13],'h'
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+9], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+7], ax
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+4],'0'
	mov word ptr [bx+5], ax
	mov	[bx+14],0A0Dh
	
	mov	cx,21
	xor bp,bp
	
	jmp	mb_viv
mb_reg16:
	lodsb
	
	call hex2sym
	
	mov [bx+7], ax
	mov byte ptr [bx+9],'h'
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+4],'0'
	mov word ptr [bx+5], ax
	mov	[bx+10],0A0Dh
	
	mov	cx,16
	xor bp,bp

	jmp	mb_viv
mb_reg8:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+4],'0'
	mov [bx+5], ax
	mov byte ptr [bx+7],'h'
	mov [bx+8],0A0Dh
	
	mov	cx,14
mb_viv:
	lea	dx,_MOV
	
	call output
	
	jmp	start_mark


MOV_A0:
	lea bx,_MOV + 5
	mov [bx],"LA"
	
	mov [bx+2]," ,"
	
	mov byte ptr [bx+4], '['
	mov byte ptr [bx+5], '0'
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+8], ax
	mov word ptr [bx+10],"]h"
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+6], ax
	
	mov	[bx+12],0A0Dh
	
	mov	cx,18
	lea	dx,_MOV
	
	call output
	
	jmp start_mark
MOV_A1:
	lea bx,_MOV + 5
	test bp,1
	jz ma1_reg16
	mov byte ptr [bx],'E'
	inc bx	
	mov di, 1
ma1_reg16:
	xor di, di
	mov [bx],"XA"
	
	mov [bx+2]," ,"
	
	mov byte ptr [bx+4], '['
	mov byte ptr [bx+5], '0'
	
	cmp bp,2
	jb ma_1_mem_16
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+12], ax
	mov word ptr [bx+14], ']h'
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+10], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+8], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+6], ax
	add di,16
	jmp ma_1_cont
ma_1_mem_16:
	lodsb
	
	call hex2sym
	
	
	mov word ptr [bx+8], ax
	mov word ptr [bx+10],"]h"
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+6], ax
	add di,12
ma_1_cont:
	mov	[bx+di],0A0Dh
	
	mov cx,0
	add cx,di
	add cx,7
	lea	dx,_MOV
	xor bp,bp
	
	call output
	
	jmp start_mark
MOV_A2:
	lea bx,_MOV + 5
	
	mov byte ptr [bx], '['
	mov byte ptr [bx+1], '0'
	
	lodsb
	
	call hex2sym
	
	
	mov word ptr [bx+4], ax
	mov word ptr [bx+6],"]h"
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+2], ax
	mov [bx+8]," ,"
	
	mov [bx+10],"LA"
	
	mov	[bx+12],0A0Dh
	
	mov	cx,18
	lea	dx,_MOV
	
	call output
	
	jmp start_mark
MOV_A3:
	lea bx,_MOV + 5
	mov byte ptr [bx], '['
	mov byte ptr [bx+1], '0'
	cmp bp,2
	jb ma_3_mem_16
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+8], ax
	mov word ptr [bx+10], ']h'
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+6], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+4], ax
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+2], ax
	mov word ptr [bx+12], ' ,'
	mov di,14
	jmp ma_3_cont
ma_3_mem_16:
	lodsb
	
	call hex2sym
	
	
	mov word ptr [bx+4], ax
	mov word ptr [bx+6],"]h"
	
	lodsb
	
	call hex2sym
	
	mov word ptr [bx+2], ax
	mov [bx+8]," ,"
	mov di,10
ma_3_cont:
	test bp,1
	jz ma2_reg16
	mov byte ptr [bx+di],'E'
	inc di
ma2_reg16:
	mov [bx+di],"XA"
	
	mov	[bx+di+2],0A0Dh
	
	mov cx,0
	add cx,di
	add cx,9
	lea	dx,_MOV
	xor bp,bp
	
	call output
	
	jmp start_mark

MOV_88_89:
	lodsb
	
	mov byte ptr [temp_al],al
	mov byte ptr [temp_di], al
	and al,0C0h
	cmp al,0C0h
	jne rm_88_mod1
	jmp MOV_88_MOD_11
rm_88_mod1:
	cmp al,080h
	jne rm_88_mod2
	jmp MOV_88_MOD_10
rm_88_mod2:
	cmp al,040h
	jne rm_88_mod3
	jmp MOV_88_MOD_01
rm_88_mod3:
	jmp MOV_88_MOD_00

MOV_88_MOD_11:
	mov al, byte ptr [temp_al]

	and	al, 7h
	mov bx, ax
    shl bx, 1                 
	call [jump_table + bx]
	
	lea bx,_MOV + 5
	test bp,1
	jz mov_88_reg16
	mov byte ptr [bx],'E'
	mov byte ptr [bx+5],'E'
	inc bx	
mov_88_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	
	mov al, byte ptr [temp_al]
	
	mov [temp_bx], bx
	
	and al, 038h
	xor ah,ah
	mov bx, ax
    shl bx, 1                  
    mov cl, byte ptr [temp_cl]
	call [jump_table + bx]
	
	mov bx, [temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+4],ax
	mov	[bx+6],0A0Dh
	
	mov	cx,13
	lea	dx,_MOV
	xor bp,bp
	
	call output
	
	jmp start_mark
MOV_88_MOD_10:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	cmp bp,2
	jae mem_mov_88_md10_32
	call mem_16
	jmp mem_mov_88_cont_md10
mem_mov_88_md10_32: 
	call mem_32
mem_mov_88_cont_md10:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_88_md10_disp
	call check_ss
mov_88_md10_disp:
	cmp bp,2
	jb mov_88_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1],'0'
	mov [bx+di+8], ax
	mov word ptr [bx+di+10],']h'
	mov word ptr [bx+di+12],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+6],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+4], ax
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	add di,14
	jmp mov_88_md10_disp_cont
mov_88_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1],'0'
	mov [bx+di+4], ax
	mov word ptr [bx+di+6],']h'
	mov word ptr [bx+di+8],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	
	add di,10
mov_88_md10_disp_cont:
	mov al, byte ptr [temp_di]
	
	mov [temp_bx], bx
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1      
	call [jump_table + bx]
	
	mov bx, [temp_bx]
	
	test bp,1
	jz mov_88_md10_reg16
	mov byte ptr [bx+di],'E'
	inc bx	
mov_88_md10_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+di],ax
	
	mov [bx+di+2],0A0Dh
	
	add di,4
	jmp mov_8_viv
	
MOV_88_MOD_01:
	int 3
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	cmp bp,2
	jae mem_mov_88_md01_32
	call mem_16
	jmp mem_mov_88_cont_md01
mem_mov_88_md01_32: 
	call mem_32
mem_mov_88_cont_md01:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_88_md01_disp
	call check_ss
mov_88_md01_disp:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1],'0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	mov word ptr [bx+di+6],' ,'

	mov al, byte ptr [temp_di]
	
	mov [temp_bx], bx
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1         
    call [jump_table + bx]
	
	mov bx, [temp_bx]
	
	test bp,1
	jz mov_88_md01_reg16
	mov byte ptr [bx+di+8],'E'
	inc bx	
mov_88_md01_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+di+8],ax
	
	mov [bx+di+10],0A0Dh
	
	add di,12
	jmp mov_8_viv

MOV_88_MOD_00:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	cmp bp,2
	jae mem_mov_88_md00_32
	call mem_16
	jmp mem_mov_88_cont_md00
mem_mov_88_md00_32: 
	call mem_32
mem_mov_88_cont_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_88_md00_disp
	call check_ss
mov_88_md00_disp:
	mov byte ptr [bx+di],']'
	mov word ptr [bx+di+1],' ,'

	mov al, byte ptr [temp_di]
	
	mov [temp_bx], bx
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1              
    call [jump_table + bx]
	
	mov bx,[temp_bx]
	
	test bp,1
	jz mov_88_md00_reg16
	mov byte ptr [bx+di+3],'E'
	inc bx	
mov_88_md00_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+di+3],ax
	
	mov [bx+di+5],0A0Dh
	
	add di,7
	jmp mov_8_viv

MOV_8A_8B:
	lodsb
	
	mov byte ptr [temp_al],al
	mov byte ptr [temp_di],al
	and al,0C0h
	cmp al,0C0h
	jne rm_8A_mod1
	jmp MOV_8A_MOD_11
rm_8A_mod1:
	cmp al,080h
	jne rm_8A_mod2
	jmp MOV_8A_MOD_10
rm_8A_mod2:
	cmp al,040h
	jne rm_8A_mod3
	jmp MOV_8A_MOD_01
rm_8A_mod3:
	jmp MOV_8A_MOD_00

MOV_8A_MOD_11:
	mov al, byte ptr [temp_al]

	and	al, 038h
	shr al, 3
	mov bx, ax
    shl bx, 1                  
	call [jump_table + bx]
	
	lea bx,_MOV + 5
	test bp,1
	jz mov_8A_reg16
	mov byte ptr [bx],'E'
	mov byte ptr [bx+5],'E'
	inc bx	
mov_8A_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	
	mov al, byte ptr [temp_al]
	
	mov [temp_bx], bx
	
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1            
	call [jump_table + bx]
	
	mov bx, [temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+4],ax
	mov	[bx+6],0A0Dh
	
	mov	cx,13
	lea	dx,_MOV
	xor bp,bp
	
	call output
	
	jmp start_mark
MOV_8A_MOD_10:
	mov al,[temp_di]
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1               
    call [jump_table + bx]
	
	lea	bx,_MOV + 5
	
	test bp,1
	jz mov_8A_md10_reg16
	mov byte ptr [bx],'E'
	inc bx	
mov_8A_md10_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov word ptr [bx+2],' ,'
	add bx,4
	
	mov al, [temp_di]
	cmp bp,2
	jae mem_mov_8A_md10_32
	call mem_16
	jmp mem_mov_8A_cont_md10
mem_mov_8A_md10_32: 
	call mem_32
mem_mov_8A_cont_md10:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8A_md10_disp
	call check_ss
mov_8A_md10_disp:
	cmp bp,2
	jb mov_8A_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+7], ax
	mov word ptr [bx+di+9],']h'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+5],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+3], ax
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+1],ax
	mov [bx+di+11],0A0Dh
	add di,17
	jmp mov_8_viv
mov_8A_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+3], ax
	mov word ptr [bx+di+5],']h'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+1],ax
	
	mov [bx+di+7],0A0Dh
	add di,13
	jmp mov_8_viv
MOV_8A_MOD_01:
	mov al,[temp_di]
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1                 
    call [jump_table + bx]
	
	lea	bx,_MOV + 5
	
	test bp,1
	jz mov_8A_md01_reg16
	mov byte ptr [bx],'E'
	inc bx	
mov_8A_md01_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov word ptr [bx+2],' ,'
	add bx,4
	
	mov al, [temp_di]
	cmp bp,2
	jae mem_mov_8A_md01_32
	call mem_16
	jmp mem_mov_8A_cont_md01
mem_mov_8A_md01_32: 
	call mem_32
mem_mov_8A_cont_md01:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8A_md01_disp
	call check_ss
mov_8A_md01_disp:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	
	mov [bx+di+6],0A0Dh
	add di,12
	jmp mov_8_viv
	
MOV_8A_MOD_00:
	int 3
	mov al,[temp_di]
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1                
    call [jump_table + bx]
	
	lea	bx,_MOV + 5
	
	test bp,1
	jz mov_8A_md00_reg16
	mov byte ptr [bx],'E'
	inc bx	
mov_8A_md00_reg16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov word ptr [bx+2],' ,'
	add bx, 4
	
	mov al, [temp_di]
	cmp bp,2
	jae mem_mov_8A_md00_32
	call mem_16
	jmp mem_mov_8A_cont_md00
mem_mov_8A_md00_32: 
	call mem_32
mem_mov_8A_cont_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8A_md00_disp
	call check_ss
mov_8A_md00_disp:
	mov byte ptr [bx+di],']'
	
	mov [bx+di+1],0A0Dh
	add di,7
	jmp mov_8_viv
	
MOV_8C:
	lodsb
	
	mov byte ptr [temp_al],al
	mov byte ptr [temp_di], al
	and al,0C0h
	cmp al,0C0h
	jne rm_8C_mod1
	jmp MOV_8C_MOD_11
rm_8C_mod1:
	cmp al,080h
	jne rm_8C_mod2
	jmp MOV_8C_MOD_10
rm_8C_mod2:
	cmp al,040h
	jne rm_8C_mod3
	jmp MOV_8C_MOD_01
rm_8C_mod3:
	jmp MOV_8C_MOD_00
MOV_8C_MOD_11:
	mov al, [temp_al]
	
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1                   
	call [jump_table + bx]

	
	lea bx,_MOV + 5
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	
	mov al, byte ptr [temp_al]
	
	mov [temp_bx], bx
	
	and	al, 038h
	xor ah,ah
	shr al, 3
	mov bx, ax
    shl bx, 1                 
	call [seg_table + bx]
	
	mov bx, [temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+4],ax
	mov	[bx+6],0A0Dh
	
	mov	cx,13
	lea	dx,_MOV
	xor bp,bp
	
	call output
	
	jmp start_mark
MOV_8C_MOD_10:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	cmp bp,2
	jae mem_mov_8C_md10_32
	call mem_16
	jmp mem_mov_8C_cont_md10
mem_mov_8C_md10_32: 
	call mem_32
mem_mov_8C_cont_md10:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8C_md10_disp
	call check_ss
mov_8C_md10_disp:
	cmp bp,2
	jb mov_8C_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+8], ax
	mov word ptr [bx+di+10],']h'
	mov word ptr [bx+di+12],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+6],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+4], ax
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	add di,14
	jmp mov_8C_md10_disp_cont
mov_8C_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+4], ax
	mov word ptr [bx+di+6],']h'
	mov word ptr [bx+di+8],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	
	add di,10
mov_8C_md10_disp_cont:
	mov al, byte ptr [temp_di]
	
	mov [temp_bx], bx
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1                  
	call [seg_table + bx]
	
	mov bx, [temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+di],ax
	
	mov [bx+di+2],0A0Dh
	
	add di,4
	jmp mov_8_viv
MOV_8C_MOD_01:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	cmp bp,2
	jae mem_mov_8C_md01_32
	call mem_16
	jmp mem_mov_8C_cont_md01
mem_mov_8C_md01_32: 
	call mem_32
mem_mov_8C_cont_md01:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8C_md01_disp
	call check_ss
mov_8C_md01_disp:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	mov word ptr [bx+di+6],' ,'

	mov al, byte ptr [temp_di]
	
	mov [temp_bx], bx
	
	shr al, 3
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1                 
    call [seg_table + bx]
	
	mov bx, [temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+di+8],ax
	
	mov [bx+di+10],0A0Dh
	
	add di,12
	jmp mov_8_viv
MOV_8C_MOD_00:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	cmp bp,2
	jae mem_mov_8C_md00_32
	call mem_16
	jmp mem_mov_8C_cont_md00
mem_mov_8C_md00_32: 
	call mem_32
mem_mov_8C_cont_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8C_md00_disp
	call check_ss
mov_8C_md00_disp:
	mov byte ptr [bx+di],']'
	mov word ptr [bx+di+1],' ,'

	mov al, byte ptr [temp_di]
	
	mov [temp_bx], bx
	
	and al, 38h
	xor ah,ah
	shr al, 3
	mov bx, ax
    shl bx, 1                 
    call [seg_table + bx]
	
	mov bx,[temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+di+3],ax
	
	mov [bx+di+5],0A0Dh
	
	add di,7
	jmp mov_8_viv

MOV_8E:
	lodsb
	
	mov byte ptr [temp_al],al
	mov byte ptr [temp_di], al
	and al,0C0h
	cmp al,0C0h
	jne rm_8E_mod1
	jmp MOV_8E_MOD_11
rm_8E_mod1:
	cmp al,080h
	jne rm_8E_mod2
	jmp MOV_8E_MOD_10
rm_8E_mod2:
	cmp al,040h
	jne rm_8E_mod3
	jmp MOV_8E_MOD_01
rm_8E_mod3:
	jmp MOV_8E_MOD_00
MOV_8E_MOD_11:
	mov al, [temp_al]
	
	and	al, 038h
	xor ah,ah
	shr al, 3
	mov bx, ax
    shl bx, 1                   
	call [seg_table + bx]
	
	lea bx,_MOV + 5
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	
	mov al, byte ptr [temp_al]
	
	mov [temp_bx], bx
	
	and al, 07h
	xor ah,ah
	mov bx, ax
    shl bx, 1                  
	call [jump_table + bx]
	
	mov bx, [temp_bx]
	
	mov ax, word ptr [rgstr]
	mov	word ptr [bx+4],ax
	mov	[bx+6],0A0Dh
	
	mov	cx,13
	lea	dx,_MOV
	xor bp,bp
	
	call output
	
	jmp start_mark
MOV_8E_MOD_10:
	mov al, [temp_al]
	
	and	al, 038h
	xor ah,ah
	shr al, 3
	mov bx, ax
    shl bx, 1         
	call [seg_table + bx]
	
	lea bx,_MOV + 5
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	add bx,4
	
	mov al, [temp_al]
	cmp bp,2
	jae mem_mov_8E_md10_32
	call mem_16
	jmp mem_mov_8E_cont_md10
mem_mov_8E_md10_32: 
	call mem_32
mem_mov_8E_cont_md10:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8E_md10_disp
	call check_ss
mov_8E_md10_disp:
	cmp bp,2
	jb mov_8E_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+8], ax
	mov word ptr [bx+di+10],']h'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+6],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+4], ax
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov [bx+di+12],0A0Dh
	add di,18
	jmp mov_8_viv
mov_8E_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+4], ax
	mov word ptr [bx+di+6],']h'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	
	mov [bx+di+8],0A0Dh
	add di,14
	jmp mov_8_viv
MOV_8E_MOD_01:
	mov al, [temp_al]
	
	and	al, 038h
	xor ah,ah
	shr al, 3
	mov bx, ax
    shl bx, 1   
	call [seg_table + bx]
	
	lea bx,_MOV + 5
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	add bx,4
	
	mov al, [temp_al]
	cmp bp,2
	jae mem_mov_8E_md01_32
	call mem_16
	jmp mem_mov_8E_cont_md01
mem_mov_8E_md01_32: 
	call mem_32
mem_mov_8E_cont_md01:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8E_md01_disp
	call check_ss
mov_8E_md01_disp:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	
	mov [bx+di+6],0A0Dh
	add di,12
	jmp mov_8_viv
MOV_8E_MOD_00:
	mov al, [temp_al]
	
	and	al, 038h
	xor ah,ah
	shr al, 3
	mov bx, ax
    shl bx, 1        
	call [seg_table + bx]
	
	lea bx,_MOV + 5
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	mov	word ptr [bx+2], ' ,'
	add bx,4
	
	mov al, byte ptr [temp_al]
	
	cmp bp,2
	jae mem_mov_8E_md00_32
	call mem_16
	jmp mem_mov_8E_cont_md00
mem_mov_8E_md00_32: 
	call mem_32
mem_mov_8E_cont_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_8E_md00_disp
	call check_ss
mov_8E_md00_disp:
	mov byte ptr [bx+di],']'
	
	mov [bx+di+1],0A0Dh
	add di,7
mov_8_viv:
	mov	cx,di
	add cx,5
	add cx, [temp_pref]
	add cx, word ptr [sib_ind]
	lea	dx,_MOV
	xor bp,bp
	mov word ptr [sib_ind], 00000h
	mov word ptr [temp_pref], 0h
	
	call output

	jmp	start_mark	

MOV_C6_C7:	
	lodsb
	
	mov byte ptr [temp_al],al
	and al, 0C0h 
	cmp al, 0C0h
	jne mc0
	jmp MOV_C_MOD_11
mc0:	
	cmp al, 80h
	jne mc1
	jmp MOV_C_MOD_10
mc1:
	cmp al, 40h
	jne mc2
	jmp MOV_C_MOD_01
mc2:	
	jmp MOV_C_MOD_00
MOV_C_MOD_11:
	mov al,[temp_al]
	
	and	al,7
	mov bx, ax
    shl bx, 1                  
    call [jump_table + bx]
	
	lea bx,_MOV + 5
	cmp bp,1
	jb mov_c_reg8_16
	mov byte ptr [bx],'E'
	inc bx
mov_c_reg8_16:
	mov ax, word ptr [rgstr]
	mov	word ptr [bx],ax
	
	mov [bx+2]," ,"
	
	mov di, 4
	call find_num
	
	mov	cx,di
	add cx, 5
	lea	dx,_MOV
	
	call output
	
	jmp start_mark

MOV_C_MOD_10:
	mov al, [temp_al]
	
	lea	bx,_MOV + 5
	call find_ptr
	cmp bp,2
	jae mem_mov_c_md10_32
	call mem_16
	jmp mem_cont_mov_c_md10
mem_mov_c_md10_32:
	call mem_32
mem_cont_mov_c_md10:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_c_md10_disp
	call check_ss
mov_c_md10_disp:
	cmp bp,2
	jb mov_c_md10_disp16
	
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+8], ax
	mov word ptr [bx+di+10],']h'
	mov word ptr [bx+di+12],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+6],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+4],ax
	
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov byte ptr [bx+di+1], '0'
	add di,14
	jmp mov_c_md10_disp16_cont
mov_c_md10_disp16:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov [bx+di+4], ax
	mov word ptr [bx+di+6],']h'
	mov word ptr [bx+di+8],' ,'
		
	lodsb
	
	call hex2sym
	
	mov [bx+di+2],ax
	mov byte ptr [bx+di+1],'0'
	add di,10
mov_c_md10_disp16_cont:
	call find_num
	jmp mov_c_viv
MOV_C_MOD_01:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	call find_ptr
	cmp bp,2
	jae mem_mov_c_md01_32
	call mem_16
	jmp mem_cont_mov_c_md01
mem_mov_c_md01_32:
	call mem_32
mem_cont_mov_c_md01:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_c_md01_disp
	call check_ss
mov_c_md01_disp:
	lodsb
	
	call hex2sym
	
	mov byte ptr [bx+di], '+'
	mov byte ptr [bx+di+1], '0'
	mov [bx+di+2], ax
	mov word ptr [bx+di+4],']h'
	mov word ptr [bx+di+6],' ,'
	add di, 8
	
	call find_num
	jmp mov_c_viv
MOV_C_MOD_00:
	mov al,[temp_al]
	
	lea	bx,_MOV + 5
	call find_ptr
	cmp bp,2
	jae mem_mov_c_md00_32
	call mem_16
	jmp mem_cont_mov_c_md00
mem_mov_c_md00_32: 
	call mem_32
mem_cont_mov_c_md00:
	mov di,cx
	
	cmp byte ptr [sib_ind], 1
	jne mov_c_md00_disp
	call check_ss
mov_c_md00_disp:
	mov byte ptr [bx+di],']'
	mov word ptr [bx+di+1],' ,'
	add di, 3
	
	call find_num
mov_c_viv:
	mov	cx,di
	add cx, 5
	add cx, [temp_pref]
	add cx, word ptr [_ptr_]
	add cx, word ptr [sib_ind]
	lea	dx,_MOV
	xor bp,bp
	mov word ptr [sib_ind], 00000h
	mov word ptr [temp_pref], 0h
	
	call output

	jmp	start_mark	
end start
