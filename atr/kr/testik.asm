.model tiny
.486
.code
    org 100h
Start:
    RCL     word ptr ss:[bx + si + 0FFh], 4
    RCL     word ptr es:[BP + Di + 88h], 0FFh
    BTS     word ptr ds:[0FFFFh], ax
    RCL     word ptr es:[BX], 67
    BTS     word ptr ss:[bx + si + 0FFh], 6
    RCL     byte ptr es:[BX + Di + 3458], cl
    RCL     dword ptr es:[BP + Si], 1
    BTS     word ptr es:[0AABBCCDDh], 5
    SAHF
    BTS     dword ptr cs:[bp + di + 0FFFFh], 1
    RCL     dword ptr es:[BP + Si + 1000], 1
    RCL     dword ptr cs:[bp + di + 0FFFFh], 1
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], esp
    RCL     byte ptr es:[Si + 10000], 13
    RCL     byte ptr gs:[di + 1818h], cl
    BTS     ax, ax
    BTS     dword ptr es:[ECX*8 - 1200000], 13h
    RCL     eax, 1
    RCL     word ptr es:[BP + 0FFh], 64
    RCL     dword ptr es:[BX + Si], 4
    RCL     cx, 0AAh
    RCL     dword ptr gs:[ecx + 18183268h], 0AAh
    RCL     byte ptr es:[Si], 13
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], 1
    RCL     word ptr es:[13h], cl
    RCL     dword ptr es:[13h], cl
    RCL     word ptr es:[BP + Di + 1789], 0FFh
    BTS     ebx, ecx
    RCL     cl, 0AAh
    BTS     esi, 0AAh
    RCL     word ptr es:[BX + Si + 13], 4
    RCL     edx, 4
    RCL     bx, cl
    BTS     dword ptr GS:[ebp + ebp*8 - 1000], 1
    BTS     word ptr es:[eax + edx], 5
    BTS     dword ptr cs:[bp + di + 0FFFFh], 1
    RCL     byte ptr es:[eax + edx], 0AAh
    RCL     word ptr es:[BP + Di], 0FFh
    RCL     word ptr es:[BX + Di], cl
    RCL     dword ptr fs:[ebp + esi*8 + 0FFFFh], 4
    BTS     sp, bp
    RCL     dword ptr es:[BP + Si + 0FFh], 1
    RCL     byte ptr ds:[0AAAAh], 1
    BTS     word ptr fs:[bp], sp
    RCL     dl, 4
    SAHF
    RCL     dword ptr es:[0AABBCCDDh], 4
    RCL     byte ptr es:[BX + Di + 1], cl
    BTS     bp, 3fh
    RCL     al, 1
    RCL     word ptr es:[BX + Si + 0FFFFh], 4
    BTS     dword ptr es:[0AABBCCDDh], ecx
    RCL     dword ptr ds:[ebx], cl
    BTS     dword ptr [ebp + edx], ebx
    RCL     byte ptr cs:[edi + ebx + 0FFFFCACAh], cl
    RCL     word ptr es:[0AABBCCDDh], 4
    RCL     word ptr fs:[bp], 0AAh
    RCL     byte ptr ss:[eax + 0ffh], 1
    RCL     word ptr es:[0FFFFh], 64
    RCL     dword ptr gs:[di + 1818h], cl
    BTS     word ptr ds:[ebx], 0AAh
    BTS     word ptr ss:[bx + si + 0FFh], bp
    RCL     word ptr es:[eax + edx], 0AAh
    RCL     byte ptr ES:[-1430532899], cl
    RCL     word ptr es:[Di + 13], 66
    RCL     dword ptr fs:[bp], 0AAh
    BTS     dword ptr fs:[ebp + edx], 1
    RCL     dword ptr es:[BP + Di + 0AAFFh], 66
    BTS     si, 0AAh

    
    RCL     word ptr es:[BX + Si], 4
    RCL     byte ptr es:[BX + Di], cl
    RCL     dword ptr es:[BP + Si], 1
    RCL     word ptr es:[BP + Di], 0FFh
    RCL     byte ptr es:[Si], 13
    RCL     dword ptr es:[Di], 66
    RCL     word ptr es:[0FFFFh], 64
    RCL     word ptr es:[BX], 67
    
    RCL     word ptr es:[BX + Si + 13], 4
    RCL     byte ptr es:[BX + Di + 1], cl
    RCL     dword ptr es:[BP + Si+ 0FFh], 1
    RCL     word ptr es:[BP + Di + 88h], 0FFh
    RCL     byte ptr es:[Si + 99h], 13
    RCL     dword ptr es:[Di + 13], 66
    RCL     word ptr es:[BP + 0FFh], 64
    RCL     word ptr es:[BX + 1], 67
    
    RCL     word ptr es:[BX + Si + 0FFFFh], 4
    RCL     byte ptr es:[BX + Di + 3458], cl
    RCL     dword ptr es:[BP + Si+ 1000], 1
    RCL     word ptr es:[BP + Di + 1789], 0FFh
    RCL     byte ptr es:[Si + 10000], 13
    RCL     dword ptr es:[Di + 0AAFFh], 66
    RCL     word ptr es:[BP + 6665h], 64
    RCL     word ptr es:[BX + 1], 67
    
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], esi
    RCL     dword ptr gs:[ecx + 18183268h], 0AAh
    BTS     ebx, ecx
    RCL     word ptr ss:[eax + 0ffh], 1
    RCL     dword ptr ds:[ebx], cl
    BTS     word ptr es:[13h], 5
    BTS     dword ptr es:[0AABBCCDDh], ecx
    RCL     dword ptr ss:[eax + 0ffh], 1
    RCL     al, 1
    BTS     dword ptr fs:[ebp + edx], 1
    RCL     byte ptr gs:[ecx + 18183268h], 0AAh
    RCL     word ptr gs:[di + 1818h], cl
    RCL     byte ptr es:[eax + edx], 0AAh
    BTS     dword ptr [ebp + edx], ebx
    RCL     byte ptr cs:[edi + ebx + 0FFFFCACAh], cl
    BTS     dword ptr cs:[bp + di + 0FFFFh], 1
    SAHF
    RCL     cl, 0AAh
    BTS     word ptr fs:[bp], sp
    RCL     eax, 1
    BTS     word ptr ds:[0FFFFh], ax
    RCL     byte ptr gs:[di + 1818h], cl
    BTS     esi, 0AAh
    RCL     byte ptr ss:[eax + 0ffh], 1
    RCL     dword ptr fs:[ebp + esi*8 + 0FFFFh], 4
    RCL     word ptr fs:[bp], 0AAh
    BTS     dword ptr ss:[eax + 0ffh], edi
    RCL     bx, cl
    BTS     ax, ax
    RCL     dword ptr es:[eax + edx], 0AAh
    RCL     edx, 4
    RCL     dword ptr es:[13h], cl
    RCL     cx, 0AAh
    BTS     word ptr ss:[bx + si + 0FFh], 6
    BTS     word ptr es:[eax + edx], 5
    BTS     bp, 3fh
    RCL     bl, cl
    RCL     word ptr cs:[edi + ebx + 0FFFFCACAh], cl
    BTS     word ptr CS:[EBP*4], 0FFh
    RCL     word ptr ss:[bx + si + 0FFh], 4
    BTS     word ptr ds:[ebx], 0AAh
    BTS     si, 0AAh
    RCL     byte ptr cs:[bp + di + 0FFFFh], 1
    RCL     byte ptr fs:[bp], 0AAh
    BTS     dword ptr GS:[ebp + ebp*8 - 1000], 1
    RCL     byte ptr ds:[0AAAAh], 1
    RCL     dword ptr ds:[0AAAAh], 1
    RCL     word ptr es:[eax + edx], 0AAh
    RCL     dword ptr fs:[bp], 0AAh
    RCL     word ptr es:[13h], cl
    BTS     sp, bp
    RCL     dword ptr es:[0AABBCCDDh], 4
    BTS     word ptr cs:[bp + di + 0FFFFh], si
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], 1
    BTS     word ptr ss:[bx + si + 0FFh], bp
    RCL     dword ptr gs:[di + 1818h], cl
    RCL     dl, 4
    BTS     dword ptr es:[ECX*8 - 1200000], 13h
    RCL     dword ptr gs:[ecx + 18183268h], 0AAh
    RCL     dx, 4
    BTS     eax, 5
    RCL     ecx, 0AAh
    RCL     ebx, cl
    RCL     word ptr es:[eax + edx], 0AAh
    BTS     word ptr es:[01h], bx
    RCL     dword ptr cs:[bp + di + 0FFFFh], 1
    BTS     word ptr es:[0AABBCCDDh], 5
    SAHF
    RCL     word ptr fs:[ebp + esi*8 + 0FFFFh], 4
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], esp

    RCL     word ptr DS:[BX + Si + 0FFh], 1
    RCL     word ptr es:[0AABBCCDDh], 4
    RCL     dword ptr es:[13h], cl ;1
    RCL     byte ptr ES:[-1430532899], cl
    BTS     word ptr ds:[ebx], 0AAh
    SAHF 
    RCL     byte ptr es:[0AABBCCDDh], 4
    RCL     word ptr ss:[bx + si + 0FFh], 4
    BTS     ax, 5
    RCL     word ptr gs:[di + 1818h], cl
    RCL     word ptr fs:[bp], 0AAh
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], esp
    BTS     bp, 3fh
    BTS     word ptr es:[eax + edx], 5
    RCL     byte ptr gs:[ecx + 18183268h], 0AAh
    RCL     word ptr cs:[edi + ebx + 0FFFFCACAh], cl
    RCL     word ptr ss:[eax + 0ffh], 1
    BTS     esi, edi
    RCL     byte ptr fs:[bp], 0AAh
    RCL     dword ptr ds:[ebx], cl
    BTS     dword ptr CS:[EAX*8 + 1200000], 1
    RCL     cl, 0AAh
    RCL     dword ptr ss:[bx + si + 0FFh], 4
    BTS     eax, 5
    BTS     dword ptr cs:[bp + di + 0FFFFh], 1
    RCL     dword ptr es:[eax + edx], 0AAh
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], 14h
    BTS     dword ptr ss:[eax + 0ffh], 6
    RCL     byte ptr fs:[ebp + esi*8 + 0FFFFh], 4
    RCL     dx, 4
    BTS     word ptr es:[0AABBCCDDh], 5
    BTS     word ptr ds:[0AAAAh], 0AAh
    RCL     dl, 4
    BTS     word ptr es:[13h], 5
    RCL     ebx, cl
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], 1
    BTS     dword ptr FS:[esp], esi
    BTS     word ptr gs:[di + 1818h], di
    BTS     dword ptr [ebp + edx], 1
    RCL     byte ptr es:[13h], cl
    RCL     dword ptr ds:[0AAAAh], 1
    RCL     byte ptr ss:[bx + si + 0FFh], 4
    BTS     dword ptr es:[0AABBCCDDh], ecx
    RCL     word ptr es:[eax + edx], 0AAh
    RCL     dword ptr fs:[bp], 0AAh
    RCL     byte ptr cs:[edi + ebx + 0FFFFCACAh], cl
    BTS     dword ptr ss:[eax + 0ffh], edi
    BTS     word ptr CS:[EBP*4], 0FFh
    BTS     dword ptr fs:[bp], 14h
    RCL     byte ptr gs:[di + 1818h], cl
    RCL     dword ptr cs:[edi + ebx + 0FFFFCACAh], cl
    RCL     dword ptr [ebp + edx], cl
    BTS     esi, 0AAh
    BTS     word ptr ss:[bx + si + 0FFh], 6
    BTS     dword ptr [ebp + edx], ebx

    RCL     dword ptr gs:[di + 1818h], cl
    RCL     byte ptr ds:[ebx], cl
    BTS     word ptr es:[01h], bx
    RCL     bl, cl
    BTS     si, 0AAh
    RCL     word ptr [ebp + edx], cl
    BTS     dword ptr gs:[ecx + 18183268h], ebp
    RCL     word ptr ds:[ebx], cl
    RCL     dword ptr ss:[eax + 0ffh], 1
    RCL     dword ptr fs:[ebp + esi*8 + 0FFFFh], 4
    BTS     dword ptr GS:[ebp + ebp*8 - 1000], 1
    BTS     dword ptr ES:[ECX*8 - 1200000], 13h
    RCL     byte ptr ds:[0AAAAh], 1
    BTS     word ptr fs:[bp], sp
    BTS     ebx, ecx
    RCL     byte ptr cs:[bp + di + 0FFFFh], 1
    RCL     edx, 4
    RCL     ax, 1
    RCL     word ptr fs:[ebp + esi*8 + 0FFFFh], 4
    BTS     ebp, 3fh
    RCL     word ptr ds:[0AAAAh], 1
    BTS     word ptr ds:[0FFFFh], ax
    RCL     byte ptr [ebp + edx], cl
    RCL     al, 1
    RCL     cx, 0AAh
    RCL     dword ptr es:[0AABBCCDDh], 4
    RCL     bx, cl
    BTS     dword ptr ds:[ebx], eax
    RCL     word ptr cs:[bp + di + 0FFFFh], 1
    RCL     ecx, 0AAh
    RCL     eax, 1
    RCL     dword ptr cs:[bp + di + 0FFFFh], 1
    BTS     dword ptr gs:[di + 1818h], 0FFh
    BTS     ax, ax
    RCL     byte ptr ss:[eax + 0ffh], 1
    SAHF
    RCL     word ptr es:[13h], cl
    RCL     word ptr gs:[ecx + 18183268h], 0AAh
    BTS     sp, bp
    RCL     byte ptr es:[eax + edx], 0AAh
    BTS     word ptr ss:[bx + si + 0FFh], bp
    BTS     dword ptr cs:[edi + ebx + 0FFFFCACAh], esi
    BTS     dword ptr gs:[ecx + 18183268h], 0FFh
    RCL     dword ptr gs:[ecx + 18183268h], 0AAh
    BTS     word ptr cs:[bp + di + 0FFFFh], si
    RCL     word ptr es:[0AABBCCDDh], 4
    
    
    RCL     dword ptr es:[13h], cl
    BTS     word ptr ds:[ebx], 0AAh
    SAHF 
    RCL     byte ptr es:[0AABBCCDDh], 4
    RCL     word ptr ss:[bx + si + 0FFh], 4
    BTS     ax, 5
    RCL     word ptr gs:[di + 1818h], cl
    RCL     word ptr fs:[bp], 0AAh
    BTS     dword ptr fs:[ebp + esi*8 + 0FFFFh], esp
    BTS     bp, 3fh
    BTS     word ptr es:[eax + edx], 5
    
    end     Start