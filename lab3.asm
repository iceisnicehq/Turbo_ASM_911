[Forwarded message]
  Alexander Sulimov, yesterday at 20:21

    [Forwarded message]
    Konstantin Abramov, 4 september at 22:16
    Третья

      [Forwarded message]
      Konstantin Abramov, 8 june at 13:05
      .model small 
      .386 
      .stack 100h 
      .data 
      A db 7Fh 
      B db 7Fh 
      C db 7Fh 
      D dd ? 
      .code 
      start: 
       mov ax,@data 
       mov ds,ax 
       mov es,ax 
       
       xor ax,ax 
       lea si,A 
       push si 
       lea si,B 
       push si 
       lea si,C 
       push si 
       lea si,D 
       push si 
       
       call vizov 
       
      znamenatelzero: 
       mov ah,4ch 
       int 21h 
       
       vizov proc near 
       push bp 
       mov bp,sp 
       mov si,[bp+10] 
       mov bl,[si] 
       mov si,[bp+6] 
       mov cl,[si] 
       mov si,[bp+8] 
       mov bh,[si] 
       
       
       
       MOV AL,CL 
       IMUL BL 
       CWDE 
       SAL EAX,3 
       MOV EDI,EAX 
       MOVSX AX,BH 
       MOV SI,AX 
       SAL SI,6 
       ADD SI,AX 
       SAL AX,3 
       ADD SI,AX 
       MOVSX ESI,SI 
       SUB ESI,EDI 
       MOVSX EAX,BL 
       ADD EAX,ESI 
       JZ znamenatelzero 
       MOV ESI,EAX 
       MOV AL,CL 
       IMUL CL 
       CWDE 
       MOV EDI,EAX 
       MOV AL,BH 
       IMUL BH 
       MOV CX,AX 
       MOVSX AX,BH 
       IMUL CX 
       SAL EDX,16 
       OR EAX,EDX 
       MOV ECX,EAX 
       MOVSX EAX,BL 
       IMUL ECX 
       ADD EAX,EDI 
       SUB EAX,56d 
       CDQ 
       IDIV ESI 
       
       mov [bp+4], eax 
       pop bp 
       ret 8 
       vizov endp 
       
      end start