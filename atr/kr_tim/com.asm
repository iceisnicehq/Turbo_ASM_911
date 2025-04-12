.model tiny
.486
.code
    org 100h
start:
    DAA
    DAA
    
    NEG eax
    NEG ecx
    NEG edx
    NEG ebx
    NEG esp
    NEG ebp
    NEG esi
    NEG edi
    
    DAA
    
    NEG ax
    NEG cx
    NEG dx
    NEG bx
    NEG sp
    NEG bp
    NEG si
    NEG di
    NEG dh
    NEG bh
    NEG ch
    NEG dl
    NEG bl
    NEG cl
    NEG al
    NEG ah
    
    DAA
    
    NEG dword ptr fs:[ebx+edi*4+1122h]
    NEG word ptr gs:[bp+si+7fffh]
    NEG byte ptr ds:[eax+ecx*8+3344h]
    NEG dword ptr cs:[edx+55aah]
    NEG word ptr es:[di+0abcdh]
    NEG byte ptr ss:[esi+10h]
    NEG dword ptr [ebp+eax*2+6677h]
    NEG word ptr ds:[bx+di+8899h]
    NEG byte ptr cs:[edx+esi*1]
    NEG dword ptr gs:[ebp+edi*8+0beefh]
    NEG word ptr fs:[si+0ccddh]
    NEG byte ptr es:[ebx+44h]
    NEG dword ptr [esp+edx*4+0f0f0h]
    NEG word ptr ss:[bx+0ee11h]
    NEG byte ptr gs:[ecx+edi*2+0dadah]
    
    DAA
    
    NEG byte ptr ds:[ebx+0faceh]
    NEG word ptr cs:[si+9abch]
    NEG dword ptr fs:[ebp+0c0deh]
    NEG byte ptr ss:[edx+44h]
    NEG word ptr es:[di+0deadh]
    NEG dword ptr gs:[eax+ebx*2+1234h]
    NEG byte ptr [ecx+5678h]
    NEG word ptr ds:[bp+0beefh]
    NEG dword ptr fs:[esi+0c0ffeeh]
    NEG byte ptr cs:[edi+66h]
    NEG word ptr ss:[bx+0feedh]
    NEG dword ptr gs:[edx+0babeh]
    NEG byte ptr es:[eax+8h]
    NEG word ptr [ecx+edx*4+3333h]
    
    DAA
    
    SHR bl, 3
    SHR dx, cl
    SHR eax, 1
    SHR ch, 0bbh
    SHR word ptr fs:[bp+di+2468h], 1
    SHR byte ptr ds:[edi+8h], cl
    SHR dword ptr gs:[ebx+esi*4+1357h], 4
    SHR al, 0cch
    SHR ecx, 2
    SHR word ptr es:[si+0faceh], 0aah
    SHR byte ptr cs:[ebp+edx*8+0beefh], cl
    SHR dword ptr [eax+0deadh], 1
    SHR bh, 5
    SHR dword ptr ss:[ecx+edx*2+55aah], 3
    SHR word ptr gs:[di+9abch], cl
    SHR byte ptr fs:[eax+ebx*1+1122h], 0eeh
    
    DAA
    
    SHR dword ptr es:[ebp+0f00dh], 1
    SHR word ptr ds:[bx+si+0ba98h], 4
    SHR byte ptr cs:[edx+7654h], cl
    SHR ebp, 0ddh
    SHR ax, 7
    SHR dword ptr [edi+0cafeh], 2
    SHR word ptr ss:[ecx+esi*8+369h], 0bbh
    SHR byte ptr gs:[esp+edx*4+0d00dh], 3
    
    DAA
    
    SHR byte ptr ss:[ebx+0aaaah], 1
    SHR word ptr fs:[bp+0ffffh], cl
    SHR dword ptr ds:[eax+0bbbbh], 4
    SHR cl, 0eeh
    SHR esi, 5
    SHR word ptr gs:[di+0cccch], 0ffh
    SHR byte ptr cs:[edx+0ddddh], 2
    SHR dword ptr [ebp+0eeeeh], 1
    SHR bx, 6
    SHR byte ptr es:[ecx+0ffffh], cl
    SHR dword ptr ss:[edi+0abcdh], 3
    SHR al, 0f0h
    SHR word ptr ds:[si+0dcbah], 4
    SHR edx, 0aah
    SHR byte ptr fs:[ebx+0beefh], 1
    
    DAA
    
    end start