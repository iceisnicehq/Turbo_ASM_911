0100h:  70 4C                         JO      014Eh
0102h:  71 4A                         JNO     014Eh
0104h:  72 48                         JB      014Eh
0106h:  73 46                         JAE     014Eh
0108h:  74 44                         JE      014Eh
010Ah:  75 42                         JNE     014Eh
010Ch:  76 40                         JBE     014Eh
010Eh:  77 3E                         JA      014Eh
0110h:  78 3C                         JS      014Eh
0112h:  79 3A                         JNS     014Eh
0114h:  7A 38                         JP      014Eh
0116h:  7B 36                         JNP     014Eh
0118h:  7C 34                         JL      014Eh
011Ah:  7D 32                         JGE     014Eh
011Ch:  7E 30                         JLE     014Eh
011Eh:  7F 2E                         JG      014Eh
0120h:  26 A1 02 00                   MOV     AX, ES:[0002h]
0124h:  2E A1 02 00                   MOV     AX, CS:[0002h]
0128h:  3E 8B 46 02                   MOV     AX, WORD PTR DS:[BP + 02h]
012Ch:  A1 02 00                      MOV     AX, [0002h]
012Fh:  36 A1 02 00                   MOV     AX, SS:[0002h]
0133h:  BA 34 12                      MOV     DX, 1234h
0136h:  C6 41 21 78                   MOV     BYTE PTR [BX + DI + 21h], 78h
013Ah:  26 8B 16 5E 64                MOV     DX, WORD PTR ES:[645Eh]
013Fh:  8B DA                         MOV     BX, DX
0141h:  2E 8E 06 FF 00                MOV     EAX, WORD PTR CS:[00FFh]
0146h:  8E D1                         MOV     EDX, CX
0148h:  A1 03 00                      MOV     AX, [0003h]
014Bh:  A2 12 00                      MOV     [0012h], AL
014Eh:  F0 8B D8                      LOCK    MOV BX, AX
