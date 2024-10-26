	aam
	ror	al, cl
	ror	ax, cl
	ror	eax, cl
	ror	byte ptr [bx], 1
	ror	word ptr [bx], 1
	ror	dword ptr [bx], 1
	ror	byte ptr [ebx], 1
	ror	word ptr [ebx], 1
	ror	dword ptr [ebx], 1
	ror	byte ptr [bx], cl
	ror	word ptr [bx], cl
	ror	dword ptr [bx], cl
	ror	byte ptr [ebx], cl
	ror	word ptr [ebx], cl
	ror	dword ptr [ebx], cl
	ror	al, cl
	ror	al, 04
	ror	ax, 1
	ror	ax, cl
	ror	ax, 04
	ror	eax, 1
	ror	eax, cl
	ror	eax, 04
	add	al, al
	add	al, cl
	add	al, bl
	add	al, dl
	add	al, ah
	add	al, ch
	add	al, bh
	add	al, dh
	add	cl, al
	add	cl, cl
	add	cl, bl
	add	cl, dl
	add	cl, ah
	add	cl, ch
	add	cl, bh
	add	cl, dh
	add	dl, al
	add	dl, cl
	add	dl, bl
	add	dl, dl
	add	dl, ah
	add	dl, ch
	add	dl, bh
	add	dl, dh
	add	bl, al
	add	bl, cl
	add	bl, bl
	add	bl, dl
	add	bl, ah
	add	bl, ch
	add	bl, bh
	add	bl, dh
	add	ah, al
	add	ah, cl
	add	ah, bl
	add	ah, dl
	add	ah, ah
	add	ah, ch
	add	ah, bh
	add	ah, dh
	add	ch, al
	add	ch, cl
	add	ch, bl
	add	ch, dl
	add	ch, ah
	add	ch, ch
	add	ch, bh
	add	ch, dh
	add	dh, al
	add	dh, cl
	add	dh, bl
	add	dh, dl
	add	dh, ah
	add	dh, ch
	add	dh, bh
	add	dh, dh
	add	bh, al
	add	bh, cl
	add	bh, bl
	add	bh, dl
	add	bh, ah
	add	bh, ch
	add	bh, bh
	add	bh, dh
	add	ax, ax
	add	ax, cx
	add	ax, dx
	add	ax, bx
	add	ax, sp
	add	ax, bp
	add	ax, si
	add	ax, di
	add	cx, ax
	add	cx, cx
	add	cx, dx
	add	cx, bx
	add	cx, sp
	add	cx, bp
	add	cx, si
	add	cx, di
	add	dx, ax
	add	dx, cx
	add	dx, dx
	add	dx, bx
	add	dx, sp
	add	dx, bp
	add	dx, si
	add	dx, di
	add	bx, ax
	add	bx, cx
	add	bx, dx
	add	bx, bx
	add	bx, sp
	add	bx, bp
	add	bx, si
	add	bx, di
	add	sp, ax
	add	sp, cx
	add	sp, dx
	add	sp, bx
	add	sp, sp
	add	sp, bp
	add	sp, si
	add	bp, di
	add	bp, ax
	add	bp, cx
	add	bp, dx
	add	bp, bx
	add	bp, sp
	add	bp, bp
	add	bp, si
	add	bp, di
	add	si, ax
	add	si, cx
	add	si, dx
	add	si, bx
	add	si, sp
	add	si, bp
	add	si, si
	add	si, di
	add	di, ax
	add	di, cx
	add	di, dx
	add	di, bx
	add	di, sp
	add	di, bp
	add	di, si
	add	di, di
	add	eax, eax
	add	eax, ecx
	add	eax, edx
	add	eax, ebx
	add	eax, esp
	add	eax, ebp
	add	eax, esi
	add	eax, edi
	add	ecx, eax
	add	ecx, ecx
	add	ecx, edx
	add	ecx, ebx
	add	ecx, esp
	add	ecx, ebp
	add	ecx, esi
	add	ecx, edi
	add	edx, eax
	add	edx, ecx
	add	edx, edx
	add	edx, ebx
	add	edx, esp
	add	edx, ebp
	add	edx, esi
	add	edx, edi
	add	ebx, eax
	add	ebx, ecx
	add	ebx, edx
	add	ebx, ebx
	add	ebx, esp
	add	ebx, ebp
	add	ebx, esi
	add	ebx, edi
	add	esp, eax
	add	esp, ecx
	add	esp, edx
	add	esp, ebx
	add	esp, esp
	add	esp, ebp
	add	esp, esi
	add	ebp, edi
	add	ebp, eax
	add	ebp, ecx
	add	ebp, edx
	add	ebp, ebx
	add	ebp, esp
	add	ebp, ebp
	add	ebp, esi
	add	ebp, edi
	add	esi, eax
	add	esi, ecx
	add	esi, edx
	add	esi, ebx
	add	esi, esp
	add	esi, ebp
	add	esi, esi
	add	esi, edi
	add	edi, eax
	add	edi, ecx
	add	edi, edx
	add	edi, ebx
	add	edi, esp
	add	edi, ebp
	add	edi, esi
	add	edi, edi
	add	al, [bx+si]
	add	al, [bx+di]
	add	al, [bp+si]
	add	al, [bp+di]
	add	al, [si]
	add	al, [di]
	add	al, [bx]
	add	cl, [bx+si]
	add	cl, [bx+di]
	add	cl, [bp+si]
	add	cl, [bp+di]
	add	cl, [si]
	add	cl, [di]
	add	cl, [bx]
	add	dl, [bx+si]
	add	dl, [bx+di]
	add	dl, [bp+si]
	add	dl, [bp+di]
	add	dl, [si]
	add	dl, [di]
	add	dl, [bx]
	add	bl, [bx+si]
	add	bl, [bx+di]
	add	bl, [bp+si]
	add	bl, [bp+di]
	add	bl, [si]
	add	bl, [di]
	add	bl, [bx]
	add	ah, [bx+si]
	add	ah, [bx+di]
	add	ah, [bp+si]
	add	ah, [bp+di]
	add	ah, [si]
	add	ah, [di]
	add	ah, [bx]
	add	ch, [bx+si]
	add	ch, [bx+di]
	add	ch, [bp+si]
	add	ch, [bp+di]
	add	ch, [si]
	add	ch, [di]
	add	ch, [bx]
	add	dh, [bx+si]
	add	dh, [bx+di]
	add	dh, [bp+si]
	add	dh, [bp+di]
	add	dh, [si]
	add	dh, [di]
	add	dh, [bx]
	add	bh, [bx+si]
	add	bh, [bx+di]
	add	bh, [bp+si]
	add	bh, [bp+di]
	add	bh, [si]
	add	bh, [di]
	add	bh, [bx]
	add	[bx+si], al
	add	[bx+di], al
	add	[bp+si], al
	add	[bp+di], al
	add	[si], al
	add	[di], al
	add	[bx], al
	add	[bx+si], cl
	add	[bx+di], cl
	add	[bp+si], cl
	add	[bp+di], cl
	add	[si], cl
	add	[di], cl
	add	[bx], cl
	add	[bx+si], dl
	add	[bx+di], dl
	add	[bp+si], dl
	add	[bp+di], dl
	add	[si], dl
	add	[di], dl
	add	[bx], dl
	add	[bx+si], bl
	add	[bx+di], bl
	add	[bp+si], bl
	add	[bp+di], bl
	add	[si], bl
	add	[di], bl
	add	[bx], bl
	add	[bx+si], ah
	add	[bx+di], ah
	add	[bp+si], ah
	add	[bp+di], ah
	add	[si], ah
	add	[di], ah
	add	[bx], ah
	add	[bx+si], ch
	add	[bx+di], ch
	add	[bp+si], ch
	add	[bp+di], ch
	add	[si], ch
	add	[di], ch
	add	[bx], ch
	add	[bx+si], dh
	add	[bx+di], dh
	add	[bp+si], dh
	add	[bp+di], dh
	add	[si], dh
	add	[di], dh
	add	[bx], dh
	add	[bx+si], bh
	add	[bx+di], bh
	add	[bp+si], bh
	add	[bp+di], bh
	add	[si], bh
	add	[di], bh
	add	[bx], bh
	add	ax, [bx+si]
	add	ax, [bx+di]
	add	ax, [bp+si]
	add	ax, [bp+di]
	add	ax, [si]
	add	ax, [di]
	add	ax, [bx]
	add	cx, [bx+si]
	add	cx, [bx+di]
	add	cx, [bp+si]
	add	cx, [bp+di]
	add	cx, [si]
	add	cx, [di]
	add	cx, [bx]
	add	dx, [bx+si]
	add	dx, [bx+di]
	add	dx, [bp+si]
	add	dx, [bp+di]
	add	dx, [si]
	add	dx, [di]
	add	dx, [bx]
	add	bx, [bx+si]
	add	bx, [bx+di]
	add	bx, [bp+si]
	add	bx, [bp+di]
	add	bx, [si]
	add	bx, [di]
	add	bx, [bx]
	add	sp, [bx+si]
	add	sp, [bx+di]
	add	sp, [bp+si]
	add	sp, [bp+di]
	add	sp, [si]
	add	sp, [di]
	add	sp, [bx]
	add	bp, [bx+si]
	add	bp, [bx+di]
	add	bp, [bp+si]
	add	bp, [bp+di]
	add	bp, [si]
	add	bp, [di]
	add	bp, [bx]
	add	si, [bx+si]
	add	si, [bx+di]
	add	si, [bp+si]
	add	si, [bp+di]
	add	si, [si]
	add	si, [di]
	add	si, [bx]
	add	di, [bx+si]
	add	di, [bx+di]
	add	di, [bp+si]
	add	di, [bp+di]
	add	di, [si]
	add	di, [di]
	add	di, [bx]
	add	[bx+si], ax
	add	[bx+di], ax
	add	[bp+si], ax
	add	[bp+di], ax
	add	[si], ax
	add	[di], ax
	add	[bx], ax
	add	[bx+si], cx
	add	[bx+di], cx
	add	[bp+si], cx
	add	[bp+di], cx
	add	[si], cx
	add	[di], cx
	add	[bx], cx
	add	[bx+si], dx
	add	[bx+di], dx
	add	[bp+si], dx
	add	[bp+di], dx
	add	[si], dx
	add	[di], dx
	add	[bx], dx
	add	[bx+si], bx
	add	[bx+di], bx
	add	[bp+si], bx
	add	[bp+di], bx
	add	[si], bx
	add	[di], bx
	add	[bx], bx
	add	[bx+si], sp
	add	[bx+di], sp
	add	[bp+si], sp
	add	[bp+di], sp
	add	[si], sp
	add	[di], sp
	add	[bx], sp
	add	[bx+si], bp
	add	[bx+di], bp
	add	[bp+si], bp
	add	[bp+di], bp
	add	[si], bp
	add	[di], bp
	add	[bx], bp
	add	[bx+si], si
	add	[bx+di], si
	add	[bp+si], si
	add	[bp+di], si
	add	[si], si
	add	[di], si
	add	[bx], si
	add	[bx+si], di
	add	[bx+di], di
	add	[bp+si], di
	add	[bp+di], di
	add	[si], di
	add	[di], di
	add	[bx], di
	add	eax, [bx+si]
	add	eax, [bx+di]
	add	eax, [bp+si]
	add	eax, [bp+di]
	add	eax, [si]
	add	eax, [di]
	add	eax, [bx]
	add	ecx, [bx+si]
	add	ecx, [bx+di]
	add	ecx, [bp+si]
	add	ecx, [bp+di]
	add	ecx, [si]
	add	ecx, [di]
	add	ecx, [bx]
	add	edx, [bx+si]
	add	edx, [bx+di]
	add	edx, [bp+si]
	add	edx, [bp+di]
	add	edx, [si]
	add	edx, [di]
	add	edx, [bx]
	add	ebx, [bx+si]
	add	ebx, [bx+di]
	add	ebx, [bp+si]
	add	ebx, [bp+di]
	add	ebx, [si]
	add	ebx, [di]
	add	ebx, [bx]
	add	esp, [bx+si]
	add	esp, [bx+di]
	add	esp, [bp+si]
	add	esp, [bp+di]
	add	esp, [si]
	add	esp, [di]
	add	esp, [bx]
	add	ebp, [bx+si]
	add	ebp, [bx+di]
	add	ebp, [bp+si]
	add	ebp, [bp+di]
	add	ebp, [si]
	add	ebp, [di]
	add	ebp, [bx]
	add	esi, [bx+si]
	add	esi, [bx+di]
	add	esi, [bp+si]
	add	esi, [bp+di]
	add	esi, [si]
	add	esi, [di]
	add	esi, [bx]
	add	edi, [bx+si]
	add	edi, [bx+di]
	add	edi, [bp+si]
	add	edi, [bp+di]
	add	edi, [si]
	add	edi, [di]
	add	edi, [bx]
	add	[bx+si], eax
	add	[bx+di], eax
	add	[bp+si], eax
	add	[bp+di], eax
	add	[si], eax
	add	[di], eax
	add	[bx], eax
	add	[bx+si], ecx
	add	[bx+di], ecx
	add	[bp+si], ecx
	add	[bp+di], ecx
	add	[si], ecx
	add	[di], ecx
	add	[bx], ecx
	add	[bx+si], edx
	add	[bx+di], edx
	add	[bp+si], edx
	add	[bp+di], edx
	add	[si], edx
	add	[di], edx
	add	[bx], edx
	add	[bx+si], ebx
	add	[bx+di], ebx
	add	[bp+si], ebx
	add	[bp+di], ebx
	add	[si], ebx
	add	[di], ebx
	add	[bx], ebx
	add	[bx+si], esp
	add	[bx+di], esp
	add	[bp+si], esp
	add	[bp+di], esp
	add	[si], esp
	add	[di], esp
	add	[bx], esp
	add	[bx+si], ebp
	add	[bx+di], ebp
	add	[bp+si], ebp
	add	[bp+di], ebp
	add	[si], ebp
	add	[di], ebp
	add	[bx], ebp
	add	[bx+si], esi
	add	[bx+di], esi
	add	[bp+si], esi
	add	[bp+di], esi
	add	[si], esi
	add	[di], esi
	add	[bx], esi
	add	[bx+si], edi
	add	[bx+di], edi
	add	[bp+si], edi
	add	[bp+di], edi
	add	[si], edi
	add	[di], edi
	add	[bx], edi
	add	ax, [bx+si+01]
	add	ax, [bx+di+01]
	add	ax, [bp+si+01]
	add	ax, [bp+di+01]
	add	ax, [si+01]
	add	ax, [di+01]
	add	ax, [bx+01]
	add	[bx+si+01], ax
	add	[bx+di+01], ax
	add	[bp+si+01], ax
	add	[bp+di+01], ax
	add	[si+01], ax
	add	[di+01], ax
	add	[bx+01], ax
	add	ax, [bx+si+01F4]
	add	ax, [bx+di+01F4]
	add	ax, [bp+si+01F4]
	add	ax, [bp+di+01F4]
	add	ax, [si+01F4]
	add	ax, [di+01F4]
	add	ax, [bx+01F4]
	add	[bx+si+01F4], ax
	add	[bx+di+01F4], ax
	add	[bp+si+01F4], ax
	add	[bp+di+01F4], ax
	add	[si+01F4], ax
	add	[di+01F4], ax
	add	[bx+01F4], ax
	add	ax, [eax]
	add	ax, [ecx]
	add	ax, [edx]
	add	ax, [ebx]
	add	ax, FS:[0001]
	add	ax, [  eax +eax]
	add	ax, [2*eax +eax]
	add	ax, [4*eax +eax]
	add	ax, [8*eax +eax]
	add	ax, [esi]
	add	ax, [edi]
	add	[eax], ax
	add	[ecx], ax
	add	[edx], ax
	add	[ebx], ax
	add	[0100], ax
	add	GS:[  eax +eax], ax
	add	ES:[2*eax +eax], ax
	add	SS:[4*eax +eax], ax
	add	CS:[8*eax +eax], ax
	add	[esi], ax
	add	[edi], ax
	add	ax, [eax+01]
	add	ax, [ecx+01]
	add	ax, [edx+01]
	add	ax, [ebx+01]
	add	ax, FS:[bp+00]
	add	ax, [  eax +eax+01]
	add	ax, [2*eax +eax+01]
	add	ax, [4*eax +eax+01]
	add	ax, [8*eax +eax+01]
	add	ax, [esi+01]
	add	ax, [edi+01]
	add	[eax+01], ax
	add	[ecx+01], ax
	add	[edx+01], ax
	add	[ebx+01], ax
	add	FS:[bp+00], ax
	add	[  eax +eax+01], ax
	add	[2*eax +eax+01], ax
	add	[4*eax +eax+01], ax
	add	[8*eax +eax+01], ax
	add	[esi+01], ax
	add	[edi+01], ax
	add	ax, [eax+000001F5]
	add	ax, [ecx+000001F5]
	add	ax, [edx+000001F5]
	add	ax, [ebx+000001F5]
	add	ax, FS:[bp+01F5]
	add	ax, [  eax +eax+000001F5]
	add	ax, [2*eax +eax+000001F5]
	add	ax, [4*eax +eax+000001F5]
	add	ax, [8*eax +eax+000001F5]
	add	ax, [esi+000001F5]
	add	ax, [edi+000001F5]
	add	[eax+000001F5], ax
	add	[ecx+000001F5], ax
	add	[edx+000001F5], ax
	add	[ebx+000001F5], ax
	add	FS:[bp+01F5], ax
	add	[  eax +eax+000001F5], ax
	add	[2*eax +eax+000001F5], ax
	add	[4*eax +eax+000001F5], ax
	add	[8*eax +eax+000001F5], ax
	add	[esi+000001F5], ax
	add	[edi+000001F5], ax
	add	al, 01
	add	cl, 01
	add	dl, 01
	add	bl, 01
	add	ah, 01
	add	ch, 01
	add	dh, 01
	add	bh, 01
	add	ax, 01F4
	add	cx, 01F4
	add	dx, 01F4
	add	bx, 01F4
	add	sp, 01F4
	add	bp, 01F4
	add	si, 01F4
	add	di, 01F4
	add	ax, 0001
	add	cx, 01
	add	dx, 01
	add	bx, 01
	add	sp, 01
	add	bp, 01
	add	si, 01
	add	di, 01
	add	eax, 000001F4
	add	ecx, 000001F4
	add	edx, 000001F4
	add	ebx, 000001F4
	add	esp, 000001F4
	add	ebp, 000001F4
	add	esi, 000001F4
	add	edi, 000001F4
	add	eax, 01
	add	ecx, 01
	add	edx, 01
	add	ebx, 01
	add	esp, 01
	add	ebp, 01
	add	esi, 01
	add	edi, 01
	add	byte ptr [bx+si], 01
	add	byte ptr [bx+di], 01
	add	byte ptr [bp+si], 01
	add	byte ptr [bp+di], 01
	add	byte ptr [si], 01
	add	byte ptr [di], 01
	add	byte ptr [0001], 01
	add	byte ptr [bx], 01
	add	byte ptr [bx+si+01], 01
	add	byte ptr [bx+di+01], 01
	add	byte ptr [bp+si+01], 01
	add	byte ptr [bp+di+01], 01
	add	byte ptr [si+01], 01
	add	byte ptr [di+01], 01
	add	byte ptr DS:[bp+01], 01
	add	byte ptr [bx+01], 01
	add	byte ptr [bx+si+01F5], 01
	add	byte ptr [bx+di+01F5], 01
	add	byte ptr [bp+si+01F5], 01
	add	byte ptr [bp+di+01F5], 01
	add	byte ptr [si+01F5], 01
	add	byte ptr [di+01F5], 01
	add	byte ptr DS:[bp+01F5], 01
	add	byte ptr [bx+01F5], 01
	add	word ptr [bx+si], 01
	add	word ptr [bx+di], 01
	add	word ptr [bp+si], 01
	add	word ptr [bp+di], 01
	add	word ptr [si], 01
	add	word ptr [di], 01
	add	word ptr [0001], 01
	add	word ptr [bx], 01
	add	word ptr [bx+si+01], 01
	add	word ptr [bx+di+01], 01
	add	word ptr [bp+si+01], 01
	add	word ptr [bp+di+01], 01
	add	word ptr [si+01], 01
	add	word ptr [di+01], 01
	add	word ptr DS:[bp+01], 01
	add	word ptr [bx+01], 01
	add	word ptr [bx+si+01F5], 01
	add	word ptr [bx+di+01F5], 01
	add	word ptr [bp+si+01F5], 01
	add	word ptr [bp+di+01F5], 01
	add	word ptr [si+01F5], 01
	add	word ptr [di+01F5], 01
	add	word ptr DS:[bp+01F5], 01
	add	word ptr [bx+01F5], 01
	add	dword ptr [bx+si], 01
	add	dword ptr [bx+di], 01
	add	dword ptr [bp+si], 01
	add	dword ptr [bp+di], 01
	add	dword ptr [si], 01
	add	dword ptr [di], 01
	add	dword ptr [0001], 01
	add	dword ptr [bx], 01
	add	dword ptr [bx+si+01], 01
	add	dword ptr [bx+di+01], 01
	add	dword ptr [bp+si+01], 01
	add	dword ptr [bp+di+01], 01
	add	dword ptr [si+01], 01
	add	dword ptr [di+01], 01
	add	dword ptr DS:[bp+01], 01
	add	dword ptr [bx+01], 01
	add	dword ptr [bx+si+01F5], 01
	add	dword ptr [bx+di+01F5], 01
	add	dword ptr [bp+si+01F5], 01
	add	dword ptr [bp+di+01F5], 01
	add	dword ptr [si+01F5], 01
	add	dword ptr [di+01F5], 01
	add	dword ptr DS:[bp+01F5], 01
	add	dword ptr [bx+01F5], 01
	add	word ptr [bx+si], 01F5
	add	word ptr [bx+di], 01F5
	add	word ptr [bp+si], 01F5
	add	word ptr [bp+di], 01F5
	add	word ptr [si], 01F5
	add	word ptr [di], 01F5
	add	word ptr [0001], 01F5
	add	word ptr [bx], 01F5
	add	word ptr [bx+si+01], 01F5
	add	word ptr [bx+di+01], 01F5
	add	word ptr [bp+si+01], 01F5
	add	word ptr [bp+di+01], 01F5
	add	word ptr [si+01], 01F5
	add	word ptr [di+01], 01F5
	add	word ptr DS:[bp+01], 01F5
	add	word ptr [bx+01], 01F5
	add	word ptr [bx+si+01F5], 01F5
	add	word ptr [bx+di+01F5], 01F5
	add	word ptr [bp+si+01F5], 01F5
	add	word ptr [bp+di+01F5], 01F5
	add	word ptr [si+01F5], 01F5
	add	word ptr [di+01F5], 01F5
	add	word ptr DS:[bp+01F5], 01F5
	add	word ptr [bx+01F5], 01F5
	add	dword ptr [bx+si], 000001F5
	add	dword ptr [bx+di], 000001F5
	add	dword ptr [bp+si], 000001F5
	add	dword ptr [bp+di], 000001F5
	add	dword ptr [si], 000001F5
	add	dword ptr [di], 000001F5
	add	dword ptr [0001], 000001F5
	add	dword ptr [bx], 000001F5
	add	dword ptr [bx+si+01], 000001F5
	add	dword ptr [bx+di+01], 000001F5
	add	dword ptr [bp+si+01], 000001F5
	add	dword ptr [bp+di+01], 000001F5
	add	dword ptr [si+01], 000001F5
	add	dword ptr [di+01], 000001F5
	add	dword ptr DS:[bp+01], 000001F5
	add	dword ptr [bx+01], 000001F5
	add	dword ptr [bx+si+01F5], 000001F5
	add	dword ptr [bx+di+01F5], 000001F5
	add	dword ptr [bp+si+01F5], 000001F5
	add	dword ptr [bp+di+01F5], 000001F5
	add	dword ptr [si+01F5], 000001F5
	add	dword ptr [di+01F5], 000001F5
	add	dword ptr DS:[bp+01F5], 000001F5
	add	dword ptr [bx+01F5], 000001F5
