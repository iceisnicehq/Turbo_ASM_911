.model small
.386
.stack 100h

.data
    input_message              db      "Enter your text: $"
    error_message              db      "Error, there are too few words$"
    output_message             db      "Answer: $"
    end_program_message        db      "press any key"
    
    new_line                   db      0Dh, 0Ah, '$'
    output_file                db      "answer.txt", 0
    
    input_buffer               db      255 dup (?)
    reversed_buffer            db      255 dup (?)
    
    reversed_count             dw      ?
    
    spaces_count               equ     4
    words_revers_start_count   equ     4
    words_revers_end_count     equ     5
    
.code

main:
    mov     ax, @data
    mov     ds, ax
    mov     es, ax

    mov     dx, offset input_message
    mov     ah, 09h
    int     21h

    xor     dx, dx
    mov     cx, 255
    mov     di, offset input_buffer
    mov     si, offset reversed_buffer + 254

read_character:
    mov     ah, 7
    int     21h

    cmp     al, 0Dh
    je      process_input

    cmp     al, 20h
    jne     process_char
    or      dl, dl
    jz      read_character
    
    inc     dh             
    cmp     dl, al         
    jne     process_char
    dec     dh             
    jmp     read_character

process_char:
    mov     ah, 2
    mov     dl, al
    int     21h

    cmp     dh, spaces_count
    jl      next_iteration
    jne     reset_spaces

    cmp     bh, words_revers_start_count
    jne     normal_store
    
    mov     [si], al
    dec     si
    inc     bl
    inc     reversed_count
    jmp     next_iteration

normal_store:
    stosb
    inc     bl
    jmp     next_iteration

reset_spaces:
    xor     dh, dh
    inc     bh
    cmp     bh, words_revers_end_count
    jne     next_iteration

    mov     bh, cl
    mov     cx, reversed_count
    rep     movsb
    mov     cl, bh

next_iteration:
    loop    read_character

    
    
process_input:
    cmp     bl, 1
    ja      create_file
    
    mov     ah, 9
    mov     dx, offset new_line
    int     21h
    mov     dx, offset error_message
    int     21h
    jmp     exit_program

create_file:
    mov     ah, 3Ch
    xor     cx, cx
    mov     dx, offset output_file
    int     21h

    cmp     bh, words_revers_start_count
    jne     write_content
    mov     cx, reversed_count
    rep     movsb

write_content:
    mov     si, ax
    
    mov     ah, 9
    mov     dx, offset new_line
    int     21h
    mov     dx, offset output_message
    int     21h
    
    mov     ah, 40h
    dec     bl
    mov     cl, bl
    xor     ch, ch
    mov     dx, offset input_buffer
    inc     dx
    xor     bx, bx
    int     21h
    
    mov     ah, 40h
    mov     bx, si
    int     21h
    
    mov     ah, 3Eh
    int     21h

exit_program:
    mov     ah, 09h
    mov     dx, offset new_line
    int     21h
    mov     dx, offset end_program_message
    int     21h
    
    mov     ah, 07h
    int     21h
    
    mov     ah, 4Ch
    int     21h

end main