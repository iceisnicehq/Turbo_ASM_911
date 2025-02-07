	sahf
    shl al, cl
    shl bx, cl
    shl ecx, cl
    shl dl, 1
    shl sp, 2
    shl ebp, 3
    shl byte ptr [si], cl
    shl word ptr [di], 1
    shl dword ptr [bp], cl
    shl byte ptr [bx+si], 1
    shl word ptr [bx+di], cl
    shl dword ptr [bp+si], 2
    shl byte ptr [bp+di], cl
    shl word ptr [si+1234h], 1
    shl dword ptr [di+5678h], cl
    shl byte ptr [bx+0AAAAh], 0AAH
    shl word ptr [bp+0BBBBh], cl
    shl dword ptr [si+12h], 3
    shl byte ptr [di+34h], 1
    shl word ptr [bx+1234h], cl
    shl dword ptr [bp+5678h], 2
    shl byte ptr [eax], cl
    shl word ptr [ebx], 1
    shl dword ptr [ecx], cl
    shl byte ptr [edx], 0
    shl word ptr [esi], cl
    shl dword ptr [edi], 1
    shl byte ptr [eax+ebx], cl
    shl word ptr [ecx+edx], 2
    shl dword ptr [esi+edi], cl
    shl byte ptr [eax+1234h], 1
    shl word ptr [ebx+5678h], cl
    shl dword ptr [ecx+1234h], 2
    shl byte ptr [edx+5678h], cl
    shl word ptr [esi+1234h], 1
    shl dword ptr [edi+5678h], cl
    shl byte ptr [eax+ebx*2], 2
    shl word ptr [ecx+edx*4], cl
    shl dword ptr [esi+edi*8], 1
    shl byte ptr [eax+ebx*2+10203040h], cl
    shl word ptr [ecx+edx*4+0AAAA5678h], 2
    shl dword ptr [esi+edi*8+0BBBB1234h], cl
    shl byte ptr [eax+ebx*2+0ABCDABCDh], 1
    shl word ptr [ecx+edx*4+1234h], cl
    shl dword ptr [esi+edi*8+5678h], 2
    shl byte ptr [eax+ebx*2+1234h], cl
    shl word ptr [ecx+edx*4+5678h], 1
    shl dword ptr [esi+edi*8+1234h], cl
    shl byte ptr [eax+ebx*2+5678h], 2
    shl word ptr [ecx+edx*4+1234h], cl
    shl dword ptr [esi+edi*8+5678h], 1
    lock shl dword ptr [esp],1
    xadd al, bl
    xadd ax, cx
    xadd eax, edx
    xadd bl, cl
    xadd bx, dx
    xadd ebx, ecx
    xadd cl, dl
    xadd cx, si
    xadd ecx, esi
    xadd dl, ah
    xadd dx, di
    xadd edx, edi
    xadd byte ptr [si], al
    xadd word ptr [di], bx
    xadd dword ptr [bp], ecx
    xadd byte ptr [bx+si], dl
    xadd word ptr [bx+di], si
    xadd dword ptr [bp+si], edx
    xadd byte ptr [bp+di], bh
    xadd word ptr [si+1234h], di
    xadd dword ptr [di+5678h], ebp
    xadd byte ptr [bx+0CCCCh], cl
    xadd word ptr [bp+0AAh], sp
    xadd dword ptr [si+12h], esi
    xadd byte ptr [di+56h], dh
    xadd word ptr [bx+1234h], bp
    xadd dword ptr [bp], edi
    xadd byte ptr [eax], bl
    xadd word ptr [ebx], cx
    xadd dword ptr [ecx], edx
    xadd byte ptr [edx], ah
    xadd word ptr [esi], di
    xadd dword ptr [edi], esp
    xadd byte ptr [eax+ebx], cl
    xadd word ptr [ecx+edx], si
    xadd dword ptr [esi+edi], ebp
    xadd byte ptr [eax+0AAAABBBBh], dl
    xadd word ptr [ebx+1000h], bp
    xadd dword ptr [ecx+1234h], esi
    xadd byte ptr [edx+edx], bh
    xadd word ptr [ebp+esi+12345678h], di
    xadd dword ptr [edi+5678h], ebp
    xadd byte ptr [eax+ebx*2], cl
    xadd word ptr [ecx+edx*4], si
    xadd dword ptr [esi+edi*8], ebp
    xadd byte ptr [eax+ebx*2+1234h], dl
    xadd word ptr [ecx+edx*4+5678h], bp
    xadd dword ptr [esi+edi*8+1234h], esi
    xadd byte ptr [eax+ebx*2+5678h], bh
    xadd word ptr [ecx+edx*4+1234h], di
    xadd dword ptr [esi+edi*8+5678h], ebp
    lock xadd dword ptr [ebp],ebp