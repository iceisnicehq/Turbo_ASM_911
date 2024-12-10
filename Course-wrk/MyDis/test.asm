.model tiny
.486
.code 
    org 100h        
Start:
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     ax, reg
    btc     cx, reg
    btc     dx, reg
    btc     bx, reg
    btc     sp, reg
    btc     bp, reg
    btc     si, reg
    btc     di, reg
    ENDM
    IRP     reg, <eax, ecx, edx, ebx, esp, ebp, esi, edi>
    btc     eax, reg
    btc     ecx, reg
    btc     edx, reg
    btc     ebx, reg
    btc     esp, reg
    btc     ebp, reg
    btc     esi, reg
    btc     edi, reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bx+si], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bx+di], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp+si], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp+di], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp], reg
    ENDM
    ;IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    ;btc     [1234h], reg
    ;ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [si], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [di], reg
    ENDM

    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bx+si+1234h], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bx+di+1234h], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp+si+1234h], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp+di+1234h], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [bp+1234h], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [si+1234h], reg
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     [di+1234h], reg
    ENDM

    ;IRP     reg, <eax, ecx, edx, ebx, esp, ebp, esi, edi>
    ;btc     [1234h], reg
    ;ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     reg, 1
    ENDM
    IRP     reg, <eax, ecx, edx, ebx, esp, ebp, esi, edi>
    btc     reg, 0ffh
    ENDM


    btc     word ptr ds:[0FFFFh], 1
    btc     word ptr cs:[EBP + EAX + 0FFFF0000h], AX
    btc     word ptr cs:[EBP + EAX + 01h], AX
    btc     word ptr cs:[EBX + ECX + 65534d], AX
    db 0Fh, 0BAh, 3Eh, 0FFh, 0FFh, 0ffh 
    db 2Eh, 67h, 0Fh, 0BBh, 44h, 05h, 0ffh
    btc     word ptr cs:[EBX + ECX], AX
    btc     word ptr ds:[EBP + EBP], 1
    btc     word ptr ds:[EAX + EAX + 1fh], 1
    btc     word ptr ds:[EAX + EBP + 12345678h], 1
    btc     word ptr ds:[EBX + EAX*2 + 100fh], 1
    btc     word ptr ds:[ECX + EAX*4 + 0ffh], 1
    btc     word ptr ds:[EAX + EAX*8 + 0ffh], 1
    btc     word ptr ds:[EBP + EBP + 0ffh], 1
    btc     word ptr ds:[EBP + EBP], 1
    aad
    ; defining jumps with prefixes
    db 66h, 0E3h, 0E0h ; only 3b
    db 67h, 0E3h, 0E0h ; only 3b
    db 66h, 67h, 0E3h, 0E0h ; only 4b
    db 2Eh, 0fh, 80h, 0eeh, 0f9h
    db 3Eh, 0fh, 80h, 0eeh, 0f9h 
    btc     ax, 1
    btc     cx, 0ffh
    btc     dx, 1
    btc     bx, 0ffh
    btc     sp, 1
    btc     bp, 0ffh
    btc     si, 1
    btc     di, 0ffh
    btc     eax, 1
    btc     ecx, 0ffh
    btc     edx, 1
    btc     ebx, 0ffh
    btc     esp, 1
    btc     ebp, 0ffh
    btc     esi, 1 
    btc     edi, 0ffh
    lock    btc     ax, 1
    btc     ax, ax
    btc     ax, cx
    btc     ax, dx
    btc     ax, bx
    btc     ax, sp
    btc     ax, bp
    btc     ax, si
    btc     ax, di
    btc     cx, ax
    btc     cx, cx
    btc     cx, dx
    btc     cx, bx
    btc     cx, sp
    btc     cx, bp
    btc     cx, si
    btc     cx, di
    btc     dx, ax
    btc     dx, cx
    btc     dx, dx
    btc     dx, bx
    btc     dx, sp
    btc     dx, bp
    btc     dx, si
    btc     dx, di
    btc     bx, ax
    btc     bx, cx
    btc     bx, dx
    btc     bx, bx
    btc     bx, sp
    btc     bx, bp
    btc     bx, si
    btc     bx, di
    btc     sp, ax
    btc     sp, cx
    btc     sp, dx
    btc     sp, bx
    btc     sp, sp
    btc     sp, bp
    btc     sp, si
    btc     sp, di
    btc     bp, ax
    btc     bp, cx
    btc     bp, dx
    btc     bp, bx
    btc     bp, sp
    btc     bp, bp
    btc     bp, si
    btc     bp, di
    btc     si, ax
    btc     si, cx
    btc     si, dx
    btc     si, bx
    btc     si, sp
    btc     si, bp
    btc     si, si
    btc     si, di
    btc     di, ax
    btc     di, cx
    btc     di, dx
    btc     di, bx
    btc     di, sp
    btc     di, bp
    btc     di, si
    btc     di, di
    lock    btc     ax, ax
    btc     eax, eax
    btc     eax, ebx
    btc     eax, ecx
    btc     eax, edx
    btc     eax, esp
    btc     eax, ebp
    btc     eax, esi
    btc     eax, edi
    btc     ebx, eax
    btc     ebx, ebx
    btc     ebx, ecx
    btc     ebx, edx
    btc     ebx, esp
    btc     ebx, ebp
    btc     ebx, esi
    btc     ebx, edi
    btc     ecx, eax
    btc     ecx, ebx
    btc     ecx, ecx
    btc     ecx, edx
    btc     ecx, esp
    btc     ecx, ebp
    btc     ecx, esi
    btc     ecx, edi
    btc     edx, eax
    btc     edx, ebx
    btc     edx, ecx
    btc     edx, edx
    btc     edx, esp
    btc     edx, ebp
    btc     edx, esi
    btc     edx, edi
    btc     esp, eax
    btc     esp, ebx
    btc     esp, ecx
    btc     esp, edx
    btc     esp, esp
    btc     esp, ebp
    btc     esp, esi
    btc     esp, edi
    btc     ebp, eax
    btc     ebp, ebx
    btc     ebp, ecx
    btc     ebp, edx
    btc     ebp, esp
    btc     ebp, ebp
    btc     ebp, esi
    btc     ebp, edi
    btc     esi, eax
    btc     esi, ebx
    btc     esi, ecx
    btc     esi, edx
    btc     esi, esp
    btc     esi, ebp
    btc     esi, esi
    btc     esi, edi
    btc     edi, eax
    btc     edi, ebx
    btc     edi, ecx
    btc     edi, edx
    btc     edi, esp
    btc     edi, ebp
    btc     edi, esi
    btc     edi, edi
    lock    btc     eax, eax
    btc     word ptr ds:[0FFFFh], 1
    btc     word ptr es:[0FFFFh], 1
    btc     word ptr cs:[0FFFFh], 1
    btc     word ptr ss:[0FFFFh], 1
    btc     word ptr fs:[0FFFFh], 1
    btc     word ptr gs:[0FFFFh], 1
    btc     dword ptr ds:[0FFFFh], 1
    btc     dword ptr es:[0FFFFh], 1
    btc     dword ptr cs:[0FFFFh], 1
    btc     dword ptr ss:[0FFFFh], 1
    btc     dword ptr fs:[0FFFFh], 1
    btc     dword ptr gs:[0FFFFh], 1
    btc     word ptr ds:[0FFFFh], ax
    btc     word ptr ds:[0FFFFh], bx
    btc     word ptr ds:[0FFFFh], cx
    btc     word ptr ds:[0FFFFh], dx
    btc     word ptr ds:[0FFFFh], sp
    btc     word ptr ds:[0FFFFh], bp
    btc     word ptr ds:[0FFFFh], si
    btc     word ptr ds:[0FFFFh], di
    btc     word ptr es:[0FFFFh], ax
    btc     word ptr es:[0FFFFh], bx
    btc     word ptr es:[0FFFFh], cx
    btc     word ptr es:[0FFFFh], dx
    btc     word ptr es:[0FFFFh], sp
    btc     word ptr es:[0FFFFh], bp
    btc     word ptr es:[0FFFFh], si
    btc     word ptr es:[0FFFFh], di
    btc     word ptr cs:[0FFFFh], ax
    btc     word ptr cs:[0FFFFh], bx
    btc     word ptr cs:[0FFFFh], cx
    btc     word ptr cs:[0FFFFh], dx
    btc     word ptr cs:[0FFFFh], sp
    btc     word ptr cs:[0FFFFh], bp
    btc     word ptr cs:[0FFFFh], si
    btc     word ptr cs:[0FFFFh], di
    btc     word ptr ss:[0FFFFh], ax
    btc     word ptr ss:[0FFFFh], bx
    btc     word ptr ss:[0FFFFh], cx
    btc     word ptr ss:[0FFFFh], dx
    btc     word ptr ss:[0FFFFh], sp
    btc     word ptr ss:[0FFFFh], bp
    btc     word ptr ss:[0FFFFh], si
    btc     word ptr ss:[0FFFFh], di
    btc     word ptr fs:[0FFFFh], ax
    btc     word ptr fs:[0FFFFh], bx
    btc     word ptr fs:[0FFFFh], cx
    btc     word ptr fs:[0FFFFh], dx
    btc     word ptr fs:[0FFFFh], sp
    btc     word ptr fs:[0FFFFh], bp
    btc     word ptr fs:[0FFFFh], si
    btc     word ptr fs:[0FFFFh], di
    btc     word ptr gs:[0FFFFh], ax
    btc     word ptr gs:[0FFFFh], bx
    btc     word ptr gs:[0FFFFh], cx
    btc     word ptr gs:[0FFFFh], dx
    btc     word ptr gs:[0FFFFh], sp
    btc     word ptr gs:[0FFFFh], bp
    btc     word ptr gs:[0FFFFh], si
    btc     word ptr gs:[0FFFFh], di
    btc     dword ptr ds:[0FFFFh], eax
    btc     dword ptr ds:[0FFFFh], ebx
    btc     dword ptr ds:[0FFFFh], ecx
    btc     dword ptr ds:[0FFFFh], edx
    btc     dword ptr ds:[0FFFFh], esp
    btc     dword ptr ds:[0FFFFh], ebp
    btc     dword ptr ds:[0FFFFh], esi
    btc     dword ptr ds:[0FFFFh], edi
    btc     dword ptr es:[0FFFFh], eax
    btc     dword ptr es:[0FFFFh], ebx
    btc     dword ptr es:[0FFFFh], ecx
    btc     dword ptr es:[0FFFFh], edx
    btc     dword ptr es:[0FFFFh], esp
    btc     dword ptr es:[0FFFFh], ebp
    btc     dword ptr es:[0FFFFh], esi
    btc     dword ptr es:[0FFFFh], edi
    btc     dword ptr cs:[0FFFFh], eax
    btc     dword ptr cs:[0FFFFh], ebx
    btc     dword ptr cs:[0FFFFh], ecx
    btc     dword ptr cs:[0FFFFh], edx
    btc     dword ptr cs:[0FFFFh], esp
    btc     dword ptr cs:[0FFFFh], ebp
    btc     dword ptr cs:[0FFFFh], esi
    btc     dword ptr cs:[0FFFFh], edi
    btc     dword ptr ss:[0FFFFh], eax
    btc     dword ptr ss:[0FFFFh], ebx
    btc     dword ptr ss:[0FFFFh], ecx
    btc     dword ptr ss:[0FFFFh], edx
    btc     dword ptr ss:[0FFFFh], esp
    btc     dword ptr ss:[0FFFFh], ebp
    btc     dword ptr ss:[0FFFFh], esi
    btc     dword ptr ss:[0FFFFh], edi
    btc     dword ptr fs:[0FFFFh], eax
    btc     dword ptr fs:[0FFFFh], ebx
    btc     dword ptr fs:[0FFFFh], ecx
    btc     dword ptr fs:[0FFFFh], edx
    btc     dword ptr fs:[0FFFFh], esp
    btc     dword ptr fs:[0FFFFh], ebp
    btc     dword ptr fs:[0FFFFh], esi
    btc     dword ptr fs:[0FFFFh], edi
    btc     dword ptr gs:[0FFFFh], eax
    btc     dword ptr gs:[0FFFFh], ebx
    btc     dword ptr gs:[0FFFFh], ecx
    btc     dword ptr gs:[0FFFFh], edx
    btc     dword ptr gs:[0FFFFh], esp
    btc     dword ptr gs:[0FFFFh], ebp
    btc     dword ptr gs:[0FFFFh], esi
    btc     dword ptr gs:[0FFFFh], edi
    lock    btc     word ptr ds:[0FFFFh], ax
    lock    btc     word ptr ds:[0FFFFh], 1
    lock    btc     dword ptr ds:[0FFFFh], eax
    lock    btc     dword ptr ds:[0FFFFh], 1

jcc_rel8:
    JO      jcc_rel8
    JC      jcc_rel8
    JNC     jcc_rel8
    JZ      jcc_rel8
    JNZ     jcc_rel8
    JNA     jcc_rel8
    JA      jcc_rel8
    JS      jcc_rel8
    JNS     jcc_rel8
    JP      jcc_rel8
    JNP     jcc_rel8
    JL      jcc_rel8
    JNL     jcc_rel8
    JNG     jcc_rel8
    JG      jcc_rel8
    JCXZ    jcc_rel8
    JECXZ   jcc_rel8
    JO      Start
    JC      Start
    JNC     Start
    JZ      Start
    JNZ     Start
    JNA     Start
    JA      Start
    JS      Start
    JNS     Start
    JP      Start
    JNP     Start
    JL      Start
    JNL     Start
    JNG     Start
    JG      Start
end     Start
