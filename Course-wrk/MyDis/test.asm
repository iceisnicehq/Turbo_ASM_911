.MODEL TINY
.486
.CODE 
    ORG 100H        
START:
;segs

JCC_REL16_PREF:
    LOCK BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0ffh
    LOCK BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0ffh
	BTC word ptr ds:[1234h], ax
	btc WORD PTR cs:[12345678h], ax
	btc dword ptr es:[123h], 01h
	btc dword ptr ss:[12345678h], 10h
    IRP     EA, <[bx+si], [bx+di], [bp+si], [bp+di], [bp], [di], [si]>
    BTC EA, 0a0h
    BTC DWORD PTR EA, 0b0h
    ENDM
    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     ax, reg
    btc     cx, reg
    btc     dx, reg
    btc     bx, reg
    btc     sp, reg
    btc     bp, reg
    btc     si, reg
    btc     di, reg
    btc     [bx+si], reg
    btc     [bx+di], reg
    btc     [bp+si], reg
    btc     [bp+di], reg
    btc     [bp], reg
    btc     [si], reg
    btc     [di], reg
    btc     [bx+si+1234h], reg
    btc     [bx+di+1234h], reg
    btc     [bp+si+1234h], reg
    btc     [bp+di+1234h], reg
    btc     [bp+1234h], reg
    btc     [si+1234h], reg
    btc     [di+1234h], reg
    btc     [EAX + EAX*2 + 100h], reg
    btc     [EBX + EBP*4 + 12345678h], reg
    btc     [EBP + EBP], reg
    btc     [EBP + ESP], reg
    btc     [EDX + EBX*8], reg
    btc     [EBX + ECX*2 + 1h], reg
    btc     [ECX + EDX*4 + 100h], reg
    btc     [EAX + EAX*8 + 0a0b0c0d0h], reg
    btc     [EBP + EBP + 10203040h], reg
	LOCK btc     [bx+si], reg
    LOCK btc     [bx+di], reg
    LOCK btc     [bp+si], reg
    LOCK btc     [bp+di], reg
    LOCK btc     [bp], reg
    LOCK btc     [si], reg
    LOCK btc     [di], reg
    LOCK btc     [bx+si+1234h], reg
    LOCK btc     [bx+di+1234h], reg
    LOCK btc     [bp+si+1234h], reg
    LOCK btc     [bp+di+1234h], reg
    LOCK btc     [bp+1234h], reg
    LOCK btc     [si+1234h], reg
    LOCK btc     [di+1234h], reg
	SEGCS btc     [bx+si], reg
    SEGCS btc     [bx+di], reg
    SEGCS btc     [bp+si], reg
    SEGCS btc     [bp+di], reg
    SEGCS btc     [bp], reg
    SEGCS btc     [si], reg
    SEGCS btc     [di], reg
	SEGDS btc     [bx+si], reg
    SEGDS btc     [bx+di], reg
    SEGDS btc     [bp+si], reg
    SEGDS btc     [bp+di], reg
    SEGDS btc     [bp], reg
    SEGDS btc     [si], reg
    SEGDS btc     [di], reg
	SEGES btc     [bx+si], reg
    SEGES btc     [bx+di], reg
    SEGES btc     [bp+si], reg
    SEGES btc     [bp+di], reg
    SEGES btc     [bp], reg
    SEGES btc     [si], reg
    SEGES btc     [di], reg
	SEGSS btc     [bx+si], reg
    SEGSS btc     [bx+di], reg
    SEGSS btc     [bp+si], reg
    SEGSS btc     [bp+di], reg
    SEGSS btc     [bp], reg
    SEGSS btc     [si], reg
    SEGSS btc     [di], reg
	SEGFS btc     [bx+si], reg
    SEGFS btc     [bx+di], reg
    SEGFS btc     [bp+si], reg
    SEGFS btc     [bp+di], reg
    SEGFS btc     [bp], reg
    SEGFS btc     [si], reg
    SEGFS btc     [di], reg
	SEGGS btc     [bx+si], reg
    SEGGS btc     [bx+di], reg
    SEGGS btc     [bp+si], reg
    SEGGS btc     [bp+di], reg
    SEGGS btc     [bp], reg
    SEGGS btc     [si], reg
    SEGGS btc     [di], reg
    btc     reg, 1
	btc     reg, 0ffh
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
    btc     [reg], eax
    btc     [reg+1234h], ecx
	SEGCS btc     [reg], ebx
	SEGDS btc     [reg], edx
	SEGES btc     [reg], esp
	SEGSS btc     [reg], ebp
	SEGFS btc     [reg], esi
	SEGGS btc     [reg], edi
    btc     [EAX + EAX*2 + 100h], reg
    btc     [EBX + EBP*4 + 12345678h], reg
    btc     [EBP + EBP], reg
    btc     [EBP + ESP], reg
    btc     [EDX + EBX*8], reg
    btc     [EBX + ECX*2 + 1h], reg
    btc     [ECX + EDX*4 + 100h], reg
    btc     [EAX + EAX*8 + 0a0b0c0d0h], reg
    btc     [EBP + EBP + 10203040h], reg
	SEGFS   LOCK BTC [EBX + EBP + 0ffeeddcch], 0a0h
	LOCK btc     [bx+si], reg
    LOCK btc     [bx+di], reg
    LOCK btc     [bp+si], reg
    LOCK btc     [bp+di], reg
    LOCK btc     [bp], reg
    LOCK btc     [si], reg
    LOCK btc     [di], reg
    LOCK btc     [bx+si+1234h], reg
    LOCK btc     [bx+di+1234h], reg
    LOCK btc     [bp+si+1234h], reg
    LOCK btc     [bp+di+1234h], reg
    LOCK btc     [bp+1234h], reg
    LOCK btc     [si+1234h], reg
    LOCK btc     [di+1234h], reg
    btc     reg, 1
	btc     reg, 0ffh
    ENDM

    IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    btc     ax, reg
    btc     cx, reg
    btc     dx, reg
    btc     bx, reg
    btc     sp, reg
    btc     bp, reg
    btc     si, reg
    btc     di, reg
    btc     [bx+si], reg
    btc     [bx+di], reg
    btc     [bp+si], reg
    btc     [bp+di], reg
    btc     [bp], reg
    btc     [si], reg
    btc     [di], reg
    btc     [bx+si+1234h], reg
    btc     [bx+di+1234h], reg
    btc     [bp+si+1234h], reg
    btc     [bp+di+1234h], reg
    btc     [bp+1234h], reg
    btc     [si+1234h], reg
    btc     [di+1234h], reg
	SEGCS btc     [bx+si], reg
    SEGCS btc     [bx+di], reg
    SEGCS btc     [bp+si], reg
    SEGCS btc     [bp+di], reg
    SEGCS btc     [bp], reg
    SEGCS btc     [si], reg
    SEGCS btc     [di], reg
	SEGDS btc     [bx+si], reg
    SEGDS btc     [bx+di], reg
    SEGDS btc     [bp+si], reg
    SEGDS btc     [bp+di], reg
    SEGDS btc     [bp], reg
    SEGDS btc     [si], reg
    SEGDS btc     [di], reg
	SEGES btc     [bx+si], reg
    SEGES btc     [bx+di], reg
    SEGES btc     [bp+si], reg
    SEGES btc     [bp+di], reg
    SEGES btc     [bp], reg
    SEGES btc     [si], reg
    SEGES btc     [di], reg
	SEGSS btc     [bx+si], reg
    SEGSS btc     [bx+di], reg
    SEGSS btc     [bp+si], reg
    SEGSS btc     [bp+di], reg
    SEGSS btc     [bp], reg
    SEGSS btc     [si], reg
    SEGSS btc     [di], reg
	SEGFS btc     [bx+si], reg
    SEGFS btc     [bx+di], reg
    SEGFS btc     [bp+si], reg
    SEGFS btc     [bp+di], reg
    SEGFS btc     [bp], reg
    SEGFS btc     [si], reg
    SEGFS btc     [di], reg
	SEGGS btc     [bx+si], reg
    SEGGS btc     [bx+di], reg
    SEGGS btc     [bp+si], reg
    SEGGS btc     [bp+di], reg
    SEGGS btc     [bp], reg
    SEGGS btc     [si], reg
    SEGGS btc     [di], reg
    btc     reg, 1
	btc     reg, 0ffh
    ENDM

    ; IRP     reg, <eax, ecx, edx, ebx, esp, ebp, esi, edi>
    ; btc     eax, reg
    ; btc     ecx, reg
    ; btc     edx, reg
    ; btc     ebx, reg
    ; btc     esp, reg
    ; btc     ebp, reg
    ; btc     esi, reg
    ; btc     edi, reg
    ; ENDM

    ;IRP     reg, <ax, cx, dx, bx, sp, bp, si, di>
    ;btc     [1234h], reg
    ;ENDM


    ;IRP     reg, <eax, ecx, edx, ebx, esp, ebp, esi, edi>
    ;btc     [1234h], reg
    ;ENDM

    IRP     reg, <eax, ecx, edx, ebx, esp, ebp, esi, edi>
    btc     reg, 0ffh
    ENDM

JCC_REL16:
	lock btc	[eax + eax + 4321h], ax
	lock btc	[2*eax + eax + 4321h], ax
	lock btc	[4*eax + eax + 4321h], ax
	lock btc	[8*eax + eax + 4321h], ax
	lock btc	[esi + 4321h], ax
	lock btc	[edi + 4321h], ax
	lock btc	DWORD PTR SS:[8*eax + ebx + 12345678h], 9ah 

JCC_REL8:
    JO      JCC_REL8
    JNO     JCC_REL8
    JB      JCC_REL8
    JNB     JCC_REL8
    JZ      JCC_REL8
    JNZ     JCC_REL8
    JBE     JCC_REL8
    JNBE    JCC_REL8
    JS      JCC_REL8
    JNS     JCC_REL8
    JP      JCC_REL8
    JNP     JCC_REL8
    JL      JCC_REL8
    JNL     JCC_REL8
    JLE     JCC_REL8
    JNLE    JCC_REL8
    JCXZ    JCC_REL8
    JECXZ   JCC_REL8
    JO      JCC_REL16
    JNO     JCC_REL16
    JB      JCC_REL16
    JNB     JCC_REL16
    JZ      JCC_REL16
    JNZ     JCC_REL16
    JBE     JCC_REL16
    JNBE    JCC_REL16
    JS      JCC_REL16
    JNS     JCC_REL16
    JP      JCC_REL16
    JNP     JCC_REL16
    JL      JCC_REL16
    JNL     JCC_REL16
    JLE     JCC_REL16
    JNLE    JCC_REL16
JCC_REL8_PREF:
    JNLE    JCC_REL16
	db 2eh
    JO      JCC_REL8_PREF
	db 3eh
    JB      JCC_REL8_PREF
	db 2eh
    JZ      JCC_REL8_PREF
	db 3eh
    JBE     JCC_REL8_PREF
	db 2eh
    JCXZ    JCC_REL8_PREF
	db 3eh
    JECXZ   JCC_REL8_PREF
	db 3eh
    JNO     JCC_REL16_PREF
	db 2eh
    JNB     JCC_REL16_PREF
	db 2eh
    JNZ     JCC_REL16_PREF
	db 3eh
    JNBE    JCC_REL16_PREF
	db 3eh
    JNS     JCC_REL16_PREF
    AAD
END     START
