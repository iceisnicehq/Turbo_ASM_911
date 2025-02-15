IMUL   EAX,FS:[10101010H]
IMUL   EAX,FS:[EAX+ECX+1010H]
IMUL   byte ptr SS:[BP+SI]
IMUL   BP
IMUL   word ptr SS:[BP]
IMUL   ESP
IMUL   dword ptr DS:[ESP]
IMUL   dword ptr DS:[ESP+EBP]
IMUL   dword ptr DS:[ESP+EBP*4+100H]
CDQ
IMUL   AX,16H
IMUL   AX,BX,16H
IMUL   EAX,EBX,16H
IMUL   EAX,16H
IMUL   EAX,EBX,1H
IMUL   EAX,DS:[BX+SI],1H
IMUL   EAX,DS:[EAX],100H
IMUL   EAX,DS:[EAX],0AAAAH
IMUL   EAX,DS:[EAX+EBX*8],0AAAAH
IMUL   AL
IMUL   byte ptr SS:[BP+SI]
IMUL   BP
IMUL   word ptr SS:[BP]
IMUL   ESP
IMUL   dword ptr DS:[ESP]
IMUL   dword ptr DS:[ESP+EBP]
IMUL   dword ptr DS:[ESP+EBP*4+100H]
JMP    $
JMP    $+7BH
JMP    $-86H
JMP    $-89H
JMP    BX
JMP    word ptr DS:[BX]
JMP    EBX
JMP    word ptr GS:[EBX]
JMP    word ptr DS:[BX]
JMP    dword ptr DS:[BX]
JMP    word ptr DS:[EBX]
JMP    dword ptr DS:[EBX]
JMP    word ptr FS:[BX]
JMP    dword ptr FS:[EBX]
JMP    word ptr GS:[EBX]
JMP    1234H:5678H
JMP    0H:56781234H
