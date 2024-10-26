.model small
.stack 100h
.data
    message db 'Divide error', 0Dh, 0Ah, '$'
    old_offset dw ?
    old_segment dw ?

.code
start:
    ; Set up data segment
    mov ax, @data
    mov ds, ax

    ; Save old interrupt vector
    xor ax, ax
    mov es, ax
    mov ax, es:[0000]    ; Get offset of old interrupt handler
    mov [old_offset], ax
    mov ax, es:[0000+2]  ; Get segment of old interrupt handler
    mov [old_segment], ax

    ; Install new interrupt handler
    cli                 ; Disable interrupts
    mov word ptr es:[0000], offset new_handler
    mov word ptr es:[0000+2], cs
    sti                 ; Enable interrupts

    ; Test the new handler (uncomment to test)
     mov ax, 10
     mov bx, 0
     div bx  ; This will cause a divide-by-zero error

    ; Your main program code goes here

    ; Restore old interrupt vector before exiting
    cli
    mov ax, [old_offset]
    mov es:[0000], ax
    mov ax, [old_segment]
    mov es:[0000+2], ax
    sti

    ; Exit program
    mov ax, 4C00h
    int 21h

new_handler proc
; pushes three words to the stack
    pop  bx
    add  bx, 2
    push bx
    push ax
    push dx
    push ds

    ; Set up data segment for the message
    mov ax, @data
    mov ds, ax

    ; Display the error message
    mov ah, 9
    mov dx, offset message
    int 21h

    ; Clean up and return from interrupt
    pop ds
    pop dx
    pop ax
    iret
new_handler endp

end start