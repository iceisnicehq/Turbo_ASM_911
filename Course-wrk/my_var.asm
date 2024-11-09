.model tiny
.486
.code 
    org 100h
Start:
    aad
    btc ax, 1
    btc cx, 1
    btc dx, 1
    btc bx, 1
    btc sp, 1
    btc bp, 1
    btc si, 1
    btc di, 1
    btc eax, 1
    btc ecx, 1
    btc edx, 1
    btc ebx, 1
    btc esp, 1
    btc ebp, 1
    btc esi, 1 
    btc edi, 1
    btc ax, ax
    btc ax, cx
    btc ax, dx
    btc ax, bx
    btc ax, sp
    btc ax, bp
    btc ax, si
    btc ax, di
    btc cx, ax
    btc cx, cx
    btc cx, dx
    btc cx, bx
    btc cx, sp
    btc cx, bp
    btc cx, si
    btc cx, di
    btc dx, ax
    btc dx, cx
    btc dx, dx
    btc dx, bx
    btc dx, sp
    btc dx, bp
    btc dx, si
    btc dx, di
    btc bx, ax
    btc bx, cx
    btc bx, dx
    btc bx, bx
    btc bx, sp
    btc bx, bp
    btc bx, si
    btc bx, di
    btc sp, ax
    btc sp, cx
    btc sp, dx
    btc sp, bx
    btc sp, sp
    btc sp, bp
    btc sp, si
    btc sp, di
    btc bp, ax
    btc bp, cx
    btc bp, dx
    btc bp, bx
    btc bp, sp
    btc bp, bp
    btc bp, si
    btc bp, di
    btc si, ax
    btc si, cx
    btc si, dx
    btc si, bx
    btc si, sp
    btc si, bp
    btc si, si
    btc si, di
    btc di, ax
    btc di, cx
    btc di, dx
    btc di, bx
    btc di, sp
    btc di, bp
    btc di, si
    btc di, di
    btc eax, eax
    btc eax, ebx
    btc eax, ecx
    btc eax, edx
    btc eax, esp
    btc eax, ebp
    btc eax, esi
    btc eax, edi
    btc ebx, eax
    btc ebx, ebx
    btc ebx, ecx
    btc ebx, edx
    btc ebx, esp
    btc ebx, ebp
    btc ebx, esi
    btc ebx, edi
    btc ecx, eax
    btc ecx, ebx
    btc ecx, ecx
    btc ecx, edx
    btc ecx, esp
    btc ecx, ebp
    btc ecx, esi
    btc ecx, edi
    btc edx, eax
    btc edx, ebx
    btc edx, ecx
    btc edx, edx
    btc edx, esp
    btc edx, ebp
    btc edx, esi
    btc edx, edi
    btc esp, eax
    btc esp, ebx
    btc esp, ecx
    btc esp, edx
    btc esp, esp
    btc esp, ebp
    btc esp, esi
    btc esp, edi
    btc ebp, eax
    btc ebp, ebx
    btc ebp, ecx
    btc ebp, edx
    btc ebp, esp
    btc ebp, ebp
    btc ebp, esi
    btc ebp, edi
    btc esi, eax
    btc esi, ebx
    btc esi, ecx
    btc esi, edx
    btc esi, esp
    btc esi, ebp
    btc esi, esi
    btc esi, edi
    btc edi, eax
    btc edi, ebx
    btc edi, ecx
    btc edi, edx
    btc edi, esp
    btc edi, ebp
    btc edi, esi
    btc edi, edi
    btc word ptr ds:[0FFFFh], 1
    btc word ptr es:[0FFFFh], 1
    btc word ptr cs:[0FFFFh], 1
    btc word ptr ss:[0FFFFh], 1
    btc word ptr fs:[0FFFFh], 1
    btc word ptr gs:[0FFFFh], 1
    btc dword ptr ds:[0FFFFh], 1
    btc dword ptr es:[0FFFFh], 1
    btc dword ptr cs:[0FFFFh], 1
    btc dword ptr ss:[0FFFFh], 1
    btc dword ptr fs:[0FFFFh], 1
    btc dword ptr gs:[0FFFFh], 1
    btc word ptr ds:[0FFFFh], ax
    btc word ptr ds:[0FFFFh], bx
    btc word ptr ds:[0FFFFh], cx
    btc word ptr ds:[0FFFFh], dx
    btc word ptr ds:[0FFFFh], sp
    btc word ptr ds:[0FFFFh], bp
    btc word ptr ds:[0FFFFh], si
    btc word ptr ds:[0FFFFh], di
    btc word ptr es:[0FFFFh], ax
    btc word ptr es:[0FFFFh], bx
    btc word ptr es:[0FFFFh], cx
    btc word ptr es:[0FFFFh], dx
    btc word ptr es:[0FFFFh], sp
    btc word ptr es:[0FFFFh], bp
    btc word ptr es:[0FFFFh], si
    btc word ptr es:[0FFFFh], di
    btc word ptr cs:[0FFFFh], ax
    btc word ptr cs:[0FFFFh], bx
    btc word ptr cs:[0FFFFh], cx
    btc word ptr cs:[0FFFFh], dx
    btc word ptr cs:[0FFFFh], sp
    btc word ptr cs:[0FFFFh], bp
    btc word ptr cs:[0FFFFh], si
    btc word ptr cs:[0FFFFh], di
    btc word ptr ss:[0FFFFh], ax
    btc word ptr ss:[0FFFFh], bx
    btc word ptr ss:[0FFFFh], cx
    btc word ptr ss:[0FFFFh], dx
    btc word ptr ss:[0FFFFh], sp
    btc word ptr ss:[0FFFFh], bp
    btc word ptr ss:[0FFFFh], si
    btc word ptr ss:[0FFFFh], di
    btc word ptr fs:[0FFFFh], ax
    btc word ptr fs:[0FFFFh], bx
    btc word ptr fs:[0FFFFh], cx
    btc word ptr fs:[0FFFFh], dx
    btc word ptr fs:[0FFFFh], sp
    btc word ptr fs:[0FFFFh], bp
    btc word ptr fs:[0FFFFh], si
    btc word ptr fs:[0FFFFh], di
    btc word ptr gs:[0FFFFh], ax
    btc word ptr gs:[0FFFFh], bx
    btc word ptr gs:[0FFFFh], cx
    btc word ptr gs:[0FFFFh], dx
    btc word ptr gs:[0FFFFh], sp
    btc word ptr gs:[0FFFFh], bp
    btc word ptr gs:[0FFFFh], si
    btc word ptr gs:[0FFFFh], di
    btc dword ptr ds:[0FFFFh], eax
    btc dword ptr ds:[0FFFFh], ebx
    btc dword ptr ds:[0FFFFh], ecx
    btc dword ptr ds:[0FFFFh], edx
    btc dword ptr ds:[0FFFFh], esp
    btc dword ptr ds:[0FFFFh], ebp
    btc dword ptr ds:[0FFFFh], esi
    btc dword ptr ds:[0FFFFh], edi
    btc dword ptr es:[0FFFFh], eax
    btc dword ptr es:[0FFFFh], ebx
    btc dword ptr es:[0FFFFh], ecx
    btc dword ptr es:[0FFFFh], edx
    btc dword ptr es:[0FFFFh], esp
    btc dword ptr es:[0FFFFh], ebp
    btc dword ptr es:[0FFFFh], esi
    btc dword ptr es:[0FFFFh], edi
    btc dword ptr cs:[0FFFFh], eax
    btc dword ptr cs:[0FFFFh], ebx
    btc dword ptr cs:[0FFFFh], ecx
    btc dword ptr cs:[0FFFFh], edx
    btc dword ptr cs:[0FFFFh], esp
    btc dword ptr cs:[0FFFFh], ebp
    btc dword ptr cs:[0FFFFh], esi
    btc dword ptr cs:[0FFFFh], edi
    btc dword ptr ss:[0FFFFh], eax
    btc dword ptr ss:[0FFFFh], ebx
    btc dword ptr ss:[0FFFFh], ecx
    btc dword ptr ss:[0FFFFh], edx
    btc dword ptr ss:[0FFFFh], esp
    btc dword ptr ss:[0FFFFh], ebp
    btc dword ptr ss:[0FFFFh], esi
    btc dword ptr ss:[0FFFFh], edi
    btc dword ptr fs:[0FFFFh], eax
    btc dword ptr fs:[0FFFFh], ebx
    btc dword ptr fs:[0FFFFh], ecx
    btc dword ptr fs:[0FFFFh], edx
    btc dword ptr fs:[0FFFFh], esp
    btc dword ptr fs:[0FFFFh], ebp
    btc dword ptr fs:[0FFFFh], esi
    btc dword ptr fs:[0FFFFh], edi
    btc dword ptr gs:[0FFFFh], eax
    btc dword ptr gs:[0FFFFh], ebx
    btc dword ptr gs:[0FFFFh], ecx
    btc dword ptr gs:[0FFFFh], edx
    btc dword ptr gs:[0FFFFh], esp
    btc dword ptr gs:[0FFFFh], ebp
    btc dword ptr gs:[0FFFFh], esi
    btc dword ptr gs:[0FFFFh], edi
    jcc_rel8:
    JO jcc_rel8
    JC jcc_rel8
    JNC jcc_rel8
    JZ jcc_rel8
    JNZ jcc_rel8
    JNA jcc_rel8
    JA jcc_rel8
    JS jcc_rel8
    JNS jcc_rel8
    JP jcc_rel8
    JNP jcc_rel8
    JL jcc_rel8
    JNL jcc_rel8
    JNG jcc_rel8
    JG jcc_rel8
    JCXZ jcc_rel8
    JECXZ jcc_rel8
    JO Start
    JC Start
    JNC Start
    JZ Start
    JNZ Start
    JNA Start
    JA Start
    JS Start
    JNS Start
    JP Start
    JNP Start
    JL Start
    JNL Start
    JNG Start
    JG Start
end Start
