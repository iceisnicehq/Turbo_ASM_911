.model small
.386
.stack 100h
.data
	op_es            equ   26h
	op_cs            equ   2Eh
	op_ss            equ   36h
	op_ds            equ   3Eh
	op_fs            equ   64h
	op_gs            equ   65h
	op_size          equ   66h
	op_addr          equ   67h
	op_cdq           equ   99h
	op_lock          equ   0F0h
	op_idiv8         equ   6h
	op_idiv16        equ   7h
	op_callrel       equ   8h
	op_callptr       equ   0Ah
	op_callrmm       equ   0Fh
	com_file         db    "COM.COM", 0    
	vivod            db    "VIVOD.ASM", 0
	cdq_mnm          db    "CDQ"
	cdq_len          equ   $ - cdq_mnm  
	idiv_mnm         db    "IDIV    "
	idiv_len         equ   $ - idiv_mnm
	call_mnm         db    "CALL    "
	call_len         equ   $ - call_mnm
	com_error        db    "COM_FILE_ERROR", 0dh, 0ah, "$"
	end_msg          db    "Result VIVOD.ASM", 0d, 0ah, "$"
	lock_mnm         db    "LOCK   "
	lock_len         equ   $ - lock_mnm
	regs             db    "ALCLDLBLAHCHDHBHAXCXDXBXSPBPSIDI"
	reg_len          equ   2
        bx_si            db    "BX+SI"
	bx_di            db    "BX+DI"
	bp_si            db    "BP+SI"
	bp_di            db    "BP+DI"
	si_              db    "SI"
	di_              db    "DI"
	bp_              db    "BP"
	bx_              db    "BX"
	rm16_len         equ   $ - bp_di
	rm16             dw    bx_si, bx_di, bp_si, bp_di, si_, di_, bp_, bx_
	word_ptr         db    "word ptr "
	byte_ptr         db    "byte ptr "
	ptr_len          equ   $ - byte_ptr
	ea16_len         equ   5
	mark_size_66     db    0
	mark_addr_67     db    0
	mark_solo_disp   db    0 	
	seg_byte         db    0
	buffer           db    64 dup (?) 
	com_data         db    2048 dup (?)
	byte_count       dw    ?   	
	dest             dw    ?
	size_ptr         dw    ?
	sibs             db    ?
	sibi             db    ?
	sibb             db    ?
	mode             db    ?
	rm               db    ?
	reg              db    ?
.code
Start:
	mov    ax, @DATA
	mov    ds, ax
	mov    es, ax
	cld
	mov    ax, 3D00h 		
	mov    dx, offset com_file
	int    21h
	jnc    no_err 		
	mov    dx, offset com_error 
	mov    ah, 9h               
	int    21h
	jmp    exit
no_err:
	mov    bx, ax
	mov    ah, 3fh 		
	mov    cx, 2048
	mov    dx, offset com_data
	int    21h
	add    ax, dx 		
	mov    byte_count, ax       
	mov    ah, 3Eh 		
	int    21h
	mov    ah, 3Ch 		
	xor    cx, cx 
	mov    dx, offset vivod
	int    21h
	mov    dest, ax   		
	mov    si, offset com_data
	mov    di, offset buffer
load_byte:
	cmp    si, byte_count 	
	jae    success_exit
	lodsb
	cmp    al, op_addr
	ja     commands
	cmp    al, op_gs
	jnbe   not_seg
	mov    seg_byte, al  
	jmp    load_byte
not_seg:
        cmp    al, op_size
	je     op_size_byte
	mov    mark_addr_67, al
	jmp    load_byte
op_size_byte:
	mov    mark_size_66, al
	jmp    load_byte
commands: 			
	cmp    al, op_lock
	jne    check_cdq
	mov    ax, offset lock_mnm
	mov    cx, lock_len
	call   pring_string
	jmp    load_byte
check_cdq:
	cmp    al, op_cdq
	jne    idiv_call
	mov    ax, offset cdq_mnm
	mov    cx, cdq_len
	call   pring_string
	jmp    end_buffer
idiv_call:
	and    al, 0Fh
	cmp    al, op_idiv16
	mov    dl, al
	ja     check_call
	call   modrm_byte
	mov    ax, offset idiv_mnm
	mov    cx, idiv_len
	call   pring_string
	cmp    dl, op_idiv8
	jne    check_idiv16
	mov    size_ptr, offset byte_ptr
	jmp    go_to_rm
check_idiv16:
	cmp    mode, 0C0h
	je     go_to_rm
	mov    size_ptr, offset word_ptr
	or     mark_size_66, 0
	jz     type_ptr
	mov    byte ptr [di], "d"
	inc    di
	jmp    type_ptr
check_call:
	mov    ax, offset call_mnm
	mov    cx, call_len
	call   pring_string
	cmp    dl, op_callrel
	jne    not_call_rel  	
	mov    ax, "+$" 	
	stosw
	xor    eax, eax 	
	mov    mark_solo_disp, 1 
	or     mark_size_66, 0
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
	jmp    end_buffer
rel_not0:
	jns    go_to_imm 		
	or     mark_size_66, 0
	jz     neg_ax
	neg    eax
	jmp    minus
neg_ax:
	neg    ax 			
minus:
	mov    byte ptr [di-1], "-"
	jmp    go_to_imm
not_call_rel:
	cmp    dl, op_callrmm
	jne    call_ptr 
	call   modrm_byte 
	mov    size_ptr, offset word_ptr
	cmp    reg, 4h  
	je     go_to_rm   
call_mem:
	mov    byte ptr [di], "d"
	inc    di	
	jmp    type_ptr
call_ptr:
	mov    mark_solo_disp, 1
	xor    eax, eax 
	mov    bx, ax
	lodsw
	or     mark_size_66, 0
	jz     no_ptr32 
	mov    bx, ax   
	lodsw           
no_ptr32:
	push   ax       
	lodsw           
	call   hex_to_ascii 
	mov    al, ":" 
	stosb
	pop    ax      
	or     mark_size_66, 0
	jz     go_to_imm 
	push   ax bx     
	pop    eax       
go_to_imm:
	call   hex_to_ascii
	jmp    end_buffer
go_to_rm:
	cmp    mode, 0C0h   
	jne    type_ptr 
	push   bx si
	mov    bx, offset regs
	cmp    dl, op_idiv8
	je     go_to_reg
	add    bx, 16
	or     mark_size_66, 0
	jz     go_to_reg
	mov    al, "E"
	stosb
go_to_reg:
	movzx  ax, rm
	mov    cx, reg_len
	add    ax, bx
	call   pring_string
	pop    si bx
	jmp    end_buffer
type_ptr:
	mov    cx, ptr_len
	mov    ax, size_ptr
	call   pring_string
go_to_seg:
	push   bx
	or     seg_byte, 0
	jz     default_seg       
	mov    al, 'E'
	cmp    seg_byte, op_es
	je     end_go_to_seg
	mov    al, 'C'
	cmp    seg_byte, op_cs
	je     end_go_to_seg
	mov    al, 'D'
	cmp    seg_byte, op_ds
	je     end_go_to_seg
	mov    al, 'S'
	cmp    seg_byte, op_ss
	je     end_go_to_seg
	mov    al, 'F'
	cmp    seg_byte, op_fs
	je     end_go_to_seg
	mov    al, 'G'
	jmp    end_go_to_seg
default_seg:
	mov    al, 'D'
	movzx  bx, rm
	or     mark_addr_67, 0
	jnz    modrm32             
	cmp    bl, 4h               
	je     go_to_ss
	cmp    bl, 6h               
	JE     go_to_ss
	cmp    bl, 0Ch           
	jne    end_go_to_seg   
	or     mode, 0             
	jnz    go_to_ss              
	jmp    end_go_to_seg         
modrm32:
	mov    al, 'D'      
	cmp    bl, 0Ah           
	jne    end_go_to_seg       
	or     mode, 0             
	jz     end_go_to_seg       
go_to_ss:
	mov    al, 'S'  
end_go_to_seg:
	stosb
	mov    al, 'S'
	stosb
	mov    ax, '[:'
	stosw
	pop    bx
	or     mark_addr_67, 0
	jnz    modrm32_bit  
	or     mode, 0   
	jnz    mode_01_10
	cmp    rm, 0Ch 
	jne    mode_01_10
	xor    eax, eax 
	lodsw
	mov    mark_solo_disp, 1
	call   hex_to_ascii
	jmp    end_rm
mode_01_10: 
	movzx  bx, rm
	mov    cx, 2
	cmp    bl, 6h
	ja     one_reg_rm16
	mov    cx, 5
one_reg_rm16:
	mov    ax, rm16[bx]
	call   pring_string     
	or     mode, 0           
	jz     end_rm
	xor    eax, eax            
	cmp    mode, 40h    
	jne    mod_10
	lodsb
	jmp    go_to_disp_8_16
mod_10:  
	lodsw
go_to_disp_8_16:
	call   hex_to_ascii
	jmp    end_rm  
modrm32_bit:
	cmp    rm, 8h             
	jne    no_sib             
	lodsb                          
	mov    ah, al
	and    ah, 0C0h
	mov    sibs, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 0Eh
	mov    sibi, ah
	and    al, 7h
	shl    al, 1
	mov    sibb, al
	movzx  bx, sibb
	mov    al, 'E'
	stosb
	mov    cx, reg_len
	lea    ax, regs+16             
	add    ax, bx 
	call   pring_string
	cmp    sibb, 0Ah           
	jne    not_base_ebp
	or     mode, 0                
	jnz    not_base_ebp
	sub    di, 3                    
	jmp    sib_index                   
not_base_ebp:
	cmp    sibi, 8h          
	je     scale_0                
	mov    al, "+"                 
	stosb
sib_index:
	movzx  bx, sibi               
	mov    al, 'E'
	stosb
	mov    cx, reg_len
	lea    ax, regs+16      
	add    ax, bx
	call   pring_string
	mov    ah, sibs             
	or     ah, ah                  
	jz     scale_0
	shr    ah, 5                   
	jnp    scale_2_4             
	mov    ah, 8                   
scale_2_4:                        
	add    ah, "0"                 
	mov    al, "*"                 
	stosw                           
scale_0:
	cmp    sibb, 0Ah          
	jne    check_disp_8_32         
	or     mode, 0               
	jz     disp_32
	jmp    check_disp_8_32         
no_sib:    
	cmp    rm, 0Ah             
	jne    go_to_rm32              
	or     mode, 0               
	jnz    go_to_rm32
	mov    mark_solo_disp, 1             
disp_32:
	xor    eax, eax
	lodsd
	call   hex_to_ascii
	jmp    end_rm
go_to_rm32:
	movzx  bx, rm
	mov    al, 'E'
	stosb
	mov    cx, reg_len
	lea    ax, regs+16
	add    ax, bx
	call   pring_string
	or     mode, 0               
	jz     end_rm
check_disp_8_32:
	cmp    mode, 40h       
	ja     disp_32
	jb     end_rm
	xor    eax, eax
	lodsb                           
	call   hex_to_ascii
end_rm:
	mov    al, "]"
	stosb
end_buffer:
	push   si
	mov    ax, 0a0dh
	stosw
	mov    ah, 40h
	mov    dx, offset buffer
	mov    cx, di
	sub    cx, dx  
	mov    di, dx
	mov    bx, dest
	push   cx
	int    21h
	pop    cx
	xor    al, al
	push   di
	rep    stosb
	pop    di
	mov    seg_byte, 0
	mov    mark_size_66, 0
	mov    mark_addr_67, 0
	mov    mark_solo_disp, 0
	mov    size_ptr, 0
	pop    si
	jmp    load_byte
success_exit:
	mov    dx, offset end_msg 
	mov    ah, 9
	int    21h
	mov    ah, 3Eh
	mov    bx, dest  
	int    21h
exit:
	mov    ah, 4Ch
	int    21h

pring_string proc
	push   si
	mov    si, ax
	rep    movsb
	pop    si
	ret
endp

modrm_byte proc
	lodsb
	mov    ah, al
	and    ah, 0C0h
	mov    mode, ah
	mov    ah, al
	shr    ah, 2
	and    ah, 0Eh
	mov    reg, ah
	and    al, 7h
	shl    al, 1
	mov    rm, al
	ret
endp

hex_to_ascii proc
	push   bx
	cmp    mark_solo_disp, 1  
	je     check_imm_zero
	or     eax, eax    
	jz     ret_hex_ascii 
	mov    byte ptr [di], "+" 
	inc    di                  
check_imm_zero:
	or     eax, eax        
	jnz    not_zero_imm
	mov    al, "0"         
	stosb
	jmp    go_to_h
not_zero_imm:
	mov    ebx, eax       
	mov    cl, 8          
	jmp    test_jump
leading_zeros:
	dec    cl             
	rol    ebx, 4         
test_jump:
	test   ebx, 0F0000000h  
	jz     leading_zeros
	xor    eax, eax
	shld   eax, ebx, 4    
	cmp    al, 9          
	jna    number_first
	mov    al, "0"         
	stosb
number_first:
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
go_to_h:
	mov    al, "H"         
	stosb
ret_hex_ascii:
	pop    bx
	ret
endp
    End    Start