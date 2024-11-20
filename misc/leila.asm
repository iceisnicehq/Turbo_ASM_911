.model small
.386
.stack 100h
.data
	A	DB	'66O'
	B	DB	'9bH'
	C	DB	'+16D'
	D	Dd	12 DUP(?)
	errmsg	Db	'Incorrect input',0dh,0ah,'$'
.code
start:
	mov 	ax, @data
	mov 	ds, ax
	mov 	es, ax
	lea 	si, A
	mov 	ax,0600h
 	mov 	bh,07 
	mov 	cx, 0000
 	mov 	dx,184Fh 
	int 	10h
	xor	ax, ax
oct:
	lodsb
	cmp 	al, 'o'
	jz	end_oct
	cmp 	al, 'O'
	jz	end_oct
	shl	dx, 3
	cmp	al, '0'
	jb	exit	
	cmp	al, '7'
	jg	exit	
	sub	al, 30h
	or 	dl, al
	jmp	oct
end_oct: 
	cmp	dh, 0
	jnz	exit	
	mov	bh, dl	
	lea	si, B
	xor	dx, dx
hex:
	lodsb
	cmp 	al, 'h'
	jz	end_hex
	cmp 	al, 'H'
	jz	end_hex
	shl	dx, 4
	cmp	al, '0'
	jb	exit
	cmp	al, '9'
	jbe	next_num
	cmp	al, 'A'
	jb	exit
	cmp	al, 'F'
	jbe	next_let
	cmp	al, 'a'
	jb	exit
	cmp	al, 'f'
	jg	exit
	sub 	al,20h
	next_let:
	sub	al,7h
	next_num:
	sub	al, 30h
	or 	dl, al
	jmp	hex
end_hex:
	cmp	dh, 0
	jnz	exit	
	mov	bl, dl	
	lea	si, C
	mov	di, si	 
	cmp 	byte ptr [di], '0'
	jge 	decc 
	inc	si
decc:
	lodsb
	cmp 	al, 'd'
	jz	end_dec
	cmp 	al, 'D'
	jz	end_dec
	cmp	al, '0'
	jb	exit
	cmp	al, '9'
	jg	exit
	sub	al, 30h
	AAD
	mov 	ah, al
	jmp 	decc
end_dec:
	cmp	dh, 0
	jnz	exit
	mov	dl, ah
	cmp 	byte ptr [di], '+'
	jz	skip
	neg	dx
	skip:
	mov	cx, dx
end_1:
	movsx 	bp,bh
	mov 	ax,bp
	sal	ax,1
	add 	ax,bp
	movsx 	di,bl
	sal	di,2
	add 	di,ax
	add 	di,cx
	sub	di,1
	movsx 	edi,di
	jz L
	mov 	al,cl
	imul 	cl
	imul 	cx
	sal 	edx,16
	mov 	dx,ax
	mov 	ecx,edx
	sal	ecx,1
	mov 	al,bl
	imul 	bl
	imul 	bp
	sal	edx,16
	or	eax,edx
	sub 	eax,ecx
	cdq
	idiv	edi

	xor	esi,esi
	mov	cx,8
perevod:
	or	eax,eax
	jns	w
	neg	eax
	mov	ebp,eax
	mov	dl,'-'
	mov	ah,02h
	int	21h
	mov	eax,ebp
w:
	cmp	eax,10
	js	output
	mov	edx,eax
	shr	edx,16
	mov	bx,0Ah
	idiv	bx
	add	dl,30h
	mov	byte ptr ds:[si],dl
	inc	si
	loop	perevod
output:
	add	al,30h
	mov	byte ptr ds:[si],al
	mov	cx,si
	inc	cx
were:
	mov	dl,ds:[si]
	mov	ah,02h
	int	21h  
	dec	si
	loop	were
L:
	mov 	ah, 4Ch
	int 	21h
exit:
	mov	ah, 09h
	lea	dx, errmsg
	int	21h
	mov 	ah, 8 
	int 	21h
 	jmp 	L
end start
