.186
.MODEL SMALL

.STACK 100h  ; Define stack size

.DATA        ; Start of data segment
    data_segment DB 12h, 23h, 34h, 45h, 56h, 67h, 78h, 89h, 9Ah, 0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0F0h, 20h
               DB 01h, 02h, 03h, 04h, 05h, 06h, 07h, 08h, 09h, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 00h
               DB 11h, 12h, 13h, 14h, 15h, 16h, 17h, 18h, 19h, 1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 10h
               DB 21h, 22h, 23h, 24h, 25h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 20h
               DB 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 3Ah, 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 30h
               DB 41h, 42h, 43h, 44h, 45h, 46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh, 4Eh, 4Fh, 40h
               DB 51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h, 59h, 5Ah, 5Bh, 5Ch, 5Dh, 5Eh, 5Fh, 50h
               DB 61h, 62h, 63h, 64h, 65h, 66h, 67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 6Dh, 6Eh, 6Fh, 60h

.CODE        ; Start of code segment
MAIN:
    MOV AX, @DATA     ; Load data segment into AX
    MOV DS, AX        ; Move AX into DS
    ADD ax, 1
    mov es, ax
    sub ax, 255h
    mov ss, ax
    ; Your code logic goes here
    MOV AX, 0AB9Ah   ; Load AX
    MOV BX, 0002h    ; Load BX
    MOV CX, 001Ch    ; Load CX
    MOV DX, 1514h    ; Load DX

    ; Set the index registers
    MOV SI, 0014h    ; Load SI
    MOV DI, 0026h    ; Load DI

    ; Set the base pointer (BP) and stack pointer (SP)
    MOV BP, 2540h    ; Load BP
    MOV SP, 2DDEh    ; Load SP

MOV AL, [BX]         ; Load the byte from memory at the address in BX into AL
MOV CH, [SI+5]       ; Load the byte from memory at SI + 5 into CH
MOV DX, [DI+10h]     ; Load the word from memory at DI + 10h into DX
MOV CL, [BX+SI]      ; Load the byte from memory at BX + SI into CL
MOV AH, [BX+DI+2]    ; Load the byte from memory at BX + DI + 2 into AH
MOV CX, [SI+BP+3]    ; Load the word from memory at SI + BP + 3 into CX
MOV AX, [BP+8h]      ; Load the word from memory at BP + 8h into AX
MOV DX, [DI]         ; Load the word from memory at DI into DX
MOV CX, [SI+3h]      ; Load the word from memory at SI + 3h into CX
MOV CL, [BX+SI]      ; Load the byte from memory at BX + SI into CL



    MOV AX, 4C00h     ; Exit program
    INT 21h

END MAIN
