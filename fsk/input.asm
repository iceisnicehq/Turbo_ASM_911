.model tiny
.486
.code
    org         100h
Start:
    IMUL        eax, fs:[EAX+ECX+1010h] 
    IMUL        byte ptr [bp+si]
    IMUL        bp
    IMUL        word ptr [bp]
    IMUL        esp
    IMUL        dword ptr [esp]
    IMUL        dword ptr [esp+ebp]
    IMUL        dword ptr [esp+ebp*4+100h]
    CDQ
    ; 69
    IMUL        ax, ax, 16h
    IMUL        ax, bx, 16h
    IMUL        eax, ebx, 16h
    IMUL        eax, eax, 16h
    IMUL        eax, ebx, 1h
    IMUL        eax, [bx+si], 1h
    IMUL        eax, [eax], 100h
    IMUL        eax, [eax], 0AAAAh
    IMUL        eax, [eax+ebx*8], 0AAAAh
    IMUL        al
    IMUL        byte ptr [bp+si]
    IMUL        bp
    IMUL        word ptr [bp]
    IMUL        esp
    IMUL        dword ptr [esp]
    IMUL        dword ptr [esp+ebp]
    IMUL        dword ptr [esp+ebp*4+100h]
rel8:
    ; NOP handling add SHORT
    jmp         rel8            ; EB
    jmp         Start   ; rel16 ; E9
    jmp         bx              ; FF 4
    jmp         [bx]            ; FF 4
    jmp         ebx             ; 66 FF 4
    jmp         [ebx]           ; 67 FF 4
    jmp         1000h:1000h     ; EA
    jmp         1000h:12341234h ; 66 EA
    jmp         far [bx]        ; FF 2F
    jmp         far [ebx]       ; 67 FF 2B
    jmp         gs: far [ebx]   ; 65 67 FF 2B
    jmp         gs:0100h:0100h
    jmp         fs:[0100h]:[101010h]
    jmp         
    ; JMP
    ; IMUL
; 69		r   					IMUL	r16/32	r/m16/32	imm16/32	
; 6B		r						IMUL	r16/32	r/m16/32	imm8
; 99								CDQ
; E9								JMP	    rel16/32
; EA								JMPF	ptr16:16/32
; EB								JMP	    rel8
; F6		5						IMUL	r/m8
; F7		5						IMUL	r/m16/32	
; FF		4						JMP	    r/m16/32
; FF		5						JMPF	m16:16/32
END Start 
