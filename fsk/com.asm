.model tiny
.486
    org 100h
.code
Start:
    jmp dword ptr [di]
    CDQ
    ;JMP
    ;IMUL

END Start 