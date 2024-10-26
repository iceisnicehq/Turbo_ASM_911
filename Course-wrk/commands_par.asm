.model small
.stack 200h

.data
	notbuffer dw 0,1,2,3,4,5,6,7,8
	buffer dw 0
	
.code
    cmp ax, ax
	cmp ax, bx
	cmp ax, cx
	cmp ax, dx
	
	cmp bx, ax
	cmp bx, bx
	cmp bx, cx
	cmp bx, dx
	
	cmp cx, ax
	cmp cx, bx
	cmp cx, cx
	cmp cx, dx
	
	cmp dx, ax
	cmp dx, bx
	cmp dx, cx
	cmp dx, dx
	
	cmp al, al
	cmp al, bl
	cmp al, cl
	cmp al, dl
	
	cmp bl, al
	cmp bl, bl
	cmp bl, cl
	cmp bl, dl
	
	cmp cl, al
	cmp cl, bl
	cmp cl, cl
	cmp cl, dl
	
	cmp dl, al
	cmp dl, bl
	cmp dl, cl
	cmp dl, dl
	
	cmp ah, ah
	cmp ah, bh
	cmp ah, ch
	cmp ah, dh
	
	cmp bh, ah
	cmp bh, bh
	cmp bh, ch
	cmp bh, dh
	
	cmp ch, ah
	cmp ch, bh
	cmp ch, ch
	cmp ch, dh
	
	cmp dh, ah
	cmp dh, bh
	cmp dh, ch
	cmp dh, dh
	
	cmp ax, si
	cmp ax, di
	cmp ax, sp
	cmp ax, bp
	
	cmp bx, si
	cmp bx, di
	cmp bx, sp
	cmp bx, bp
	
	cmp cx, si
	cmp cx, di
	cmp cx, sp
	cmp cx, bp
	
	cmp dx, si
	cmp dx, di
	cmp dx, sp
	cmp dx, bp
	
	cmp ax, word ptr buffer
	cmp bx, word ptr buffer
	cmp cx, word ptr buffer
	cmp dx, word ptr buffer
	
	cmp si, word ptr buffer
	cmp di, word ptr buffer
	cmp sp, word ptr buffer
	cmp bp, word ptr buffer
	
	cmp al, byte ptr buffer
	cmp bl, byte ptr buffer
	cmp cl, byte ptr buffer
	cmp dl, byte ptr buffer
	
	cmp al, [bx+si]
	cmp al, [bx+si]+3
	
	cmp ax, ax
	
	rcl ax, cl
	rcl bx, cl
	rcl cx, cl
	rcl dx, cl
	
	rcl ax, 1
	rcl bx, 1
	rcl cx, 1
	rcl dx, 1
	
	rcl byte ptr [bx], 1
	
	rcl word ptr buffer, 2
	rcl word ptr [bx+si]+03, 1
	rcl word ptr [bx+si]+0000h, cl
	daa

end
