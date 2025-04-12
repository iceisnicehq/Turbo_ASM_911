.model tiny
.486
.code
    org 100h
Start:
    SAHF
    BTS     dword ptr GS:[ebp + ebp*8 - 1000], 1
    BTS     ax, 5
    SAHF
    BTS     bp, 3fh
    BTS     si, 0AAh
    
    BTS     eax, 5
    BTS     ebp, 3fh
    BTS     esi, 0AAh
    
    
    BTS     ax, ax
    BTS     sp, bp
    
    BTS     ebx, ecx
    BTS     esi, edi
    
    BTS     word ptr ds:[0AAAAh], 0AAh
    BTS     word ptr es:[13h], 5
    BTS     word ptr ss:[bx + si + 0FFh], 6
    BTS     dword ptr fs:[bp], 14h
    BTS     dword ptr gs:[di + 1818h], 0FFh
    BTS     dword ptr cs:[bp + di + 0FFFFh], 1
    
    BTS     word ptr ds:[ebx], 0AAh
    BTS     word ptr es:[0AABBCCDDh], 5
    BTS     word ptr es:[eax + edx], 5
    BTS     dword ptr [ebp + edx], 1
    BTS     dword ptr ss:[eax + 0ffh], 6
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], 14h
    BTS     dword ptr gs:[ecx + 18183268h], 0FFh
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], 1
    
    BTS     word ptr ds:[0FFFFh], ax
    BTS     word ptr es:[01h], bx
    BTS     word ptr ss:[bx + si + 0FFh], bp
    BTS     word ptr fs:[bp], sp
    BTS     word ptr gs:[di + 1818h], di
    BTS     word ptr cs:[bp + di + 0FFFFh], si
    
    BTS     dword ptr ds:[ebx], eax
    BTS     dword ptr es:[0AABBCCDDh], ecx
    BTS     dword ptr es:[eax + edx], edx
    BTS     dword ptr [ebp + edx], ebx
    BTS     dword ptr ss:[eax + 0ffh], edi
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], esp
    BTS     dword ptr gs:[ecx + 18183268h], ebp
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], esi
    BTS     dword ptr FS:[esp], esi
    BTS     word ptr CS:[EBP*4], 0FFh
    BTS     dword ptr CS:[EAX*8 + 1200000], 1
    BTS     dword ptr ES:[ECX*8 - 1200000], 13h

    
    RCL     al, 1
    RCL     bl, cl
    RCL     dl, 4
    RCL     cl, 0AAh
    
    RCL     ax, 1
    RCL     bx, cl
    RCL     dx, 4
    RCL     cx, 0AAh
    
    RCL     eax, 1
    RCL     ebx, cl
    RCL     edx, 4
    RCL     ecx, 0AAh
    
    RCL     byte ptr ds:[0AAAAh], 1
    RCL     byte ptr es:[13h], cl
    RCL     byte ptr ss:[bx + si + 0FFh], 4
    RCL     byte ptr fs:[bp], 0AAh
    RCL     byte ptr gs:[di + 1818h], cl
    RCL     byte ptr cs:[bp + di + 0FFFFh], 1
    RCL     byte ptr ds:[ebx], cl
    RCL     byte ptr es:[0AABBCCDDh], 4
    RCL     byte ptr es:[eax + edx], 0AAh
    RCL     byte ptr [ebp + edx], cl
    RCL     byte ptr ss:[eax + 0ffh], 1
    RCL     byte ptr fs:[ebp + esi*8 + 0FFFFh], 4
    RCL     byte ptr gs:[ecx + 18183268h], 0AAh
    RCL     byte ptr cs:[edi + ebx + 0FFFFCACAh], cl
    RCL     word ptr ds:[0AAAAh], 1
    RCL     word ptr es:[13h], cl
    RCL     word ptr ss:[bx + si + 0FFh], 4
    RCL     word ptr fs:[bp], 0AAh
    RCL     word ptr gs:[di + 1818h], cl
    RCL     word ptr cs:[bp + di + 0FFFFh], 1
    RCL     word ptr ds:[ebx], cl
    RCL     word ptr es:[0AABBCCDDh], 4
    RCL     word ptr es:[eax + edx], 0AAh
    RCL     word ptr [ebp + edx], cl
    RCL     word ptr ss:[eax + 0ffh], 1
    RCL     word ptr fs:[ebp + esi*8 + 0FFFFh], 4
    RCL     word ptr gs:[ecx + 18183268h], 0AAh
    RCL     word ptr cs:[edi + ebx + 0FFFFCACAh], cl
    
    RCL     dword ptr ds:[0AAAAh], 1
    RCL     dword ptr es:[13h], cl
    RCL     dword ptr ss:[bx + si + 0FFh], 4
    RCL     dword ptr fs:[bp], 0AAh
    RCL     dword ptr gs:[di + 1818h], cl
    RCL     dword ptr cs:[bp + di + 0FFFFh], 1
    RCL     dword ptr ds:[ebx], cl
    RCL     dword ptr es:[0AABBCCDDh], 4
    RCL     dword ptr es:[eax + edx], 0AAh
    RCL     dword ptr [ebp + edx], cl
    RCL     dword ptr ss:[eax + 0ffh], 1
    RCL     dword ptr fs:[ebp + esi*8 + 0FFFFh], 4
    RCL     dword ptr gs:[ecx + 18183268h], 0AAh
    RCL     dword ptr cs:[edi + ebx + 0FFFFCACAh], cl
    
    end     Start