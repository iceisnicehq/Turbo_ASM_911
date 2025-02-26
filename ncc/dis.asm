.model small
.386
.stack 100h
.data
	in_file      db    "IN.COM", 0 
	out_file     db    "OUT.ASM", 0
	_cwde        db    "CWDE", 0 
	_neg         db    "NEG", 9, 0 
	_call        db    "CALL", 9, 0
	jmps         dw    es_jump, 7 dup (load_byte), cs_jump, 7 dup (load_byte), ss_jump, 7 dup (load_byte), ds_jump
                         dw    37 dup(load_byte), fs_jump, gs_jump, size66_jump, addr67_jump, 48 dup(load_byte), cwde_jump, load_byte, call_jump
                         dw    77 dup(load_byte), call_jump, 7 dup(load_byte), lock_jump, 5 dup(load_byte), neg_jump, neg_jump, 7 dup(load_byte), call_jump
	com_error    db    "COM_ERROR", 0dh, 0ah, "$"
	end_msg      db    "Done!", 0d, 0ah, "$"
	_lock        db    "LOCK ", 0
	_AL          db    "AL", 0
	_CL          db    "CL", 0
	_DL          db    "DL", 0
	_BL          db    "BL", 0
	_AH          db    "AH", 0
	_CH          db    "CH", 0 
	_DH          db    "DH", 0 
	_BH          db    "BH", 0
	r8           dw    _AL, _CL, _DL, _BL, _AH, _CH, _DH, _BH 
	_AX          db    "AX", 0    
	_CX          db    "CX", 0
	_DX          db    "DX", 0
	_BX          db    "BX", 0
	_SP          db    "SP", 0
	_BP          db    "BP", 0
	_SI          db    "SI", 0
	_DI          db    "DI", 0
	dword_ptr    db    "dword ptr ", 0
	word_ptr     db    "word ptr ", 0
	byte_ptr     db    "byte ptr ", 0
	BX_SI        db    "BX+SI", 0
	BX_DI        db    "BX+DI", 0
	BP_SI        db    "BP+SI", 0
	BP_DI        db    "BP+DI", 0
	r16          dw    _AX, _CX, _DX, _BX, _SP, _BP, _SI, _DI 
	_ECX         db    "ECX", 0
	rm16         dw    BX_SI, BX_DI, BP_SI, BP_DI, _SI, _DI, _BP,  _BX 
	_es          db    "ES:[", 0
	_cs          db    "CS:[", 0
	_ss          db    "SS:[", 0
	_ds          db    "DS:[", 0
	_fs          db    "FS:[", 0
	_gs          db    "GS:[", 0
	rmseg        dw    _ds, _ds, _ss, _ss, _ds, _ds, _ds, _ds
	_EAX         db    "EAX", 0
	_EDX         db    "EDX", 0
	_EBX         db    "EBX", 0
	_ESP         db    "ESP", 0
	_EBP         db    "EBP", 0
	_ESI         db    "ESI", 0
	_EDI         db    "EDI", 0
	r32          dw    _EAX, _ECX, _EDX, _EBX, _ESP, _EBP, _ESI, _EDI 
	mode         db    0
	rm           db    0
	reg          db    0
	seg_ovr      dw    0
	flagsize_66  db    0
	flagaddr_67  db    0
	flagimm      db    0 	
	instruction  db    50 dup (?) 
	com_data     db    5000 dup (?)
	byte_count   dw    ? 	
	sib_byte_s   db    ?
	sib_byte_i   db    ?
	sib_byte_b   db    ?
	file         dw    ?
	curr_byte    db    ? 	

.code
Start:
	mov    ax, @DATA
	mov    ds, ax
	mov    es, ax
	cld
	mov    ax, 3D00h 		
	mov    dx, offset in_file
	int    21h
	jnc    no_err 		
	mov    dx, offset com_error 
	mov    ah, 9h               
	int    21h
	jmp    exit
no_err:
	mov    bx, ax
	mov    ah, 3fh 		
	mov    cx, 5000d
	mov    dx, offset com_data
	int    21h
	add    ax, dx 		
	mov    byte_count, ax       
	mov    ah, 3Eh 		
	int    21h
	mov    ah, 3Ch 		
	xor    cx, cx 
	mov    dx, offset out_file
	int    21h
	mov    file, ax   		
	mov    si, offset com_data
	mov    di, offset instruction
load_byte:
	cmp    si, byte_count 	
	jae    success_exit
	lodsb
	mov    curr_byte, al 	
	sub    al, 26h		
	movzx  bx, al
	shl    bx, 1
	jmp    jmps[bx]   	

es_jump:
	mov    ax, offset _es
	jmp    store_seg
cs_jump:
	mov    ax, offset _cs
	jmp    store_seg
ss_jump:
	mov    ax, offset _ss
	jmp    store_seg
ds_jump:
	mov    ax, offset _ds
	jmp    store_seg
fs_jump:
	mov    ax, offset _fs
	jmp    store_seg
gs_jump:
	mov    ax, offset _gs
store_seg:
	mov    seg_ovr, ax
	jmp    load_byte

size66_jump:
	mov    flagsize_66, 1
	jmp    load_byte
addr67_jump:
	mov    flagaddr_67, 1
	jmp    load_byte
lock_jump: 			
	mov    ax, offset _lock
	call   store_str
	jmp    load_byte
cwde_jump:  			
	mov    ax, offset _cwde
	call   store_str
	jmp    end_instruction
call_jump: 			
	mov    ax, offset _call
	call   store_str
	cmp    curr_byte, 0E8h
	jne    not_call_rel  	
	mov    ax, "+$" 	
	stosw
	xor    eax, eax 	
	mov    flagimm, 1 	
	or     flagsize_66, 0
	jz     rel16
	lodsd  			
	add    eax, 6 		
	jnz    rel_not0
	jmp    rel_onself
rel16:
	lodsw  			
	add    ax, 3 		
	jnz    rel_not0 	
rel_onself:
	dec    di 			
	jmp    end_instruction
rel_not0:
	jns    store_imm 		
	or     flagsize_66, 0
	jz     neg_ax
	neg    eax
	jmp    minus
neg_ax:
	neg    ax 			
minus:
	mov    byte ptr [di-1], "-"
	jmp    store_imm
not_call_rel:
	cmp    curr_byte, 0FFh
	jne    call_ptr 
	call   modrm_byte 
	cmp    reg, 100b 
	jne    call_mem
	cmp    mode, 11000000b
	je     put_rm
	mov    ax, offset word_ptr 
	jmp    type_ptr 
call_mem:
	mov    ax, offset dword_ptr 
	jmp    type_ptr
call_ptr:
	mov    flagimm, 1
	xor    eax, eax 
	mov    bx, ax
	lodsw
	or     flagsize_66, 0
	jz     no_ptr32 
	mov    bx, ax   
	lodsw           
no_ptr32:
	push   ax       
	lodsw           
	call   store_hex 
	mov    al, ":" 
	stosb
	pop    ax      
	or     flagsize_66, 0
	jz     store_imm 
	push   ax bx     
	pop    eax       
store_imm:
	call   store_hex
	jmp    end_instruction
neg_jump: 
	mov    ax, offset _neg
	call   store_str
	call   modrm_byte
put_rm:
	cmp    mode, 11000000b   
	jne    operand_not_reg
	push   bx si
	mov    bx, offset r8
	cmp    curr_byte, 0F6h
	je     put_reg
	mov    bx, offset r16
	or     flagsize_66, 0
	jz     put_reg
	mov    bx, offset r32
put_reg:
	movzx  si, rm
	mov    ax, [bx+si]
	call   store_str
	pop    si bx
	jmp    end_instruction
operand_not_reg:   
	cmp    curr_byte, 0F6h
	jne    not_rm8
	mov    ax, offset byte_ptr
	call   store_str
	jmp    put_seg
not_rm8:
	mov    ax, offset word_ptr
	or     flagsize_66, 0
	jz     type_ptr
	mov    ax, offset dword_ptr
type_ptr:
	call   store_str
put_seg:
	push   bx
	mov    ax, seg_ovr
	or     ax, ax
	jnz    end_put_seg       
	movzx  bx, rm
	or     flagaddr_67, 0
	jnz    modrm32             
	cmp    bl, 1100b           
	jne    put_def_seg   
	or     mode, 0             
	jnz    put_ss              
	jmp    put_def_seg         
modrm32:
	mov    ax, offset _ds      
	cmp    bl, 1010b           
	jne    end_put_seg       
	or     mode, 0             
	jz     end_put_seg       
put_ss:
	mov    ax, offset _ss  
	jmp    end_put_seg
put_def_seg:
    	mov    ax, rmseg[bx] 
end_put_seg:
	call   store_str 
	pop    bx
	or     flagaddr_67, 0
	jnz    bit32_addr  
	or     mode, 0   
	jnz    mod_123
	cmp    rm, 1100b 
	jne    mod_123
	xor    eax, eax 
	lodsw
	mov    flagimm, 1
	call   store_hex
	jmp    end_rm
mod_123: 
	movzx  bx, rm
	mov    ax, rm16[bx]
	call   store_str     
	or     mode, 0           
	jz     end_rm
	xor    eax, eax            
	cmp    mode, 1000000b    
	jne    mod_01
	lodsb
	jmp    put_disp_8_16
mod_01:  
	lodsw
put_disp_8_16:
	call   store_hex
	jmp    end_rm  
bit32_addr:
	cmp    rm, 1000b             
	jne    no_sib             
	lodsb                          
	mov    ah, al
	and    ah, 11000000b
	mov    sib_byte_s, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 1110b
	mov    sib_byte_i, ah
	and    al, 111b
	shl    al, 1
	mov    sib_byte_b, al
	movzx  bx, sib_byte_b
	mov    ax, r32[bx]        
	call   store_str
	cmp    sib_byte_b, 1010b           
	jne    not_base_ebp
	or     mode, 0                
	jnz    not_base_ebp
	sub    di, 3                    
	jmp    sib_index                   
not_base_ebp:
	cmp    sib_byte_i, 1000b          
	je     scale0                
	mov    al, "+"                 
	stosb
sib_index:
	movzx  bx, sib_byte_i               
	mov    ax, r32[bx]
	call   store_str
	mov    ah, sib_byte_s             
	or     ah, ah                  
	jz     scale0
	shr    ah, 5                   
	jnp    not_8             
	mov    ah, 8                   
not_8:                        
	add    ah, "0"                 
	mov    al, "*"                 
	stosw                           
scale0:
	cmp    sib_byte_b, 1010b          
	jne    is_disp_8_32         
	or     mode, 0               
	jz     disp_32
	jmp    is_disp_8_32         
no_sib:    
	cmp    rm, 1010b             
	jne    put_rm32              
	or     mode, 0               
	jnz    put_rm32
	mov    flagimm, 1             
disp_32:
	xor    eax, eax
	lodsd
	call   store_hex
	jmp    end_rm
put_rm32:
	movzx  bx, rm
	mov    ax, r32[bx]       
	call   store_str
	or     mode, 0               
	jz     end_rm
is_disp_8_32:
	cmp    mode, 1000000b       
	ja     disp_32
	jb     end_rm
	xor    eax, eax
	lodsb                           
	call   store_hex
end_rm:
	mov    al, "]"
	stosb
end_instruction:
	push   si
	mov    ax, 0a0dh
	stosw
	mov    ah, 40h
	mov    dx, offset instruction
	mov    cx, di
	sub    cx, dx  
	mov    di, dx
	mov    bx, file
	push   cx
	int    21h
	pop    cx
	xor    al, al
	push   di
	rep    stosb
	pop    di
	mov    seg_ovr, 0
	mov    flagsize_66, 0
	mov    flagaddr_67, 0
	mov    flagimm, 0
	pop    si
	jmp    load_byte
success_exit:
	mov    dx, offset end_msg 
	mov    ah, 9
	int    21h
	mov    ah, 3Eh
	mov    bx, file  
	int    21h
exit:
	mov    ah, 4Ch
	int    21h

store_str proc
	push   si
	mov    si, ax
storing:
	movsb
	cmp    byte ptr [si], 0
	jnz    storing 
	pop    si
	ret
store_str endp

modrm_byte proc
	lodsb
	mov    ah, al
	and    ah, 11000000b
	mov    mode, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 1110b
	mov    reg, ah
	and    al, 111b
	shl    al, 1
	mov    rm, al
	ret
endp

store_hex proc
	push   bx
	cmp    flagimm, 1  
	je     is_imm_zero
	or     eax, eax    
	jz     ret_hex 
	mov    byte ptr [di], "+" 
	inc    di                  
is_imm_zero:
	or     eax, eax        
	jnz    not_zero_imm
	mov    al, "0"         
	stosb
	jmp    put_h
not_zero_imm:
	mov    ebx, eax       
	mov    cl, 8          
	jmp    test_
del_lead_zeros:
	dec    cl             
	rol    ebx, 4         
test_:
	test   ebx, 0F0000000h  
	jz     del_lead_zeros
	xor    eax, eax
	shld   eax, ebx, 4    
	cmp    al, 9          
	jna    not_letter
	mov    al, "0"         
	stosb
not_letter:
	xor    al, al         
hex_ascii:
	shld   eax, ebx, 4    
	shl    ebx, 4
	cmp    al, 9          
	jna    number
	add    al, 7          
number: 
	add    al, 30h         
	stosb                   
	xor    al, al          
	loop   hex_ascii    
put_h:
	mov    al, "H"         
	stosb
ret_hex:
	pop    bx
	ret
store_hex endp
    End    Start
