0100h:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
010Dh:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
011Ah:  0F BB 06 34 12                               BTC     DS:[1234h],AX
011Fh:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678h],AX
0128h:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123h],01h
0130h:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678h],10h
013Bh:  0F BA 38 A0                                  BTC     word ptr DS:[BX+SI],0A0h
013Fh:  66 0F BA 38 B0                               BTC     dword ptr DS:[BX+SI],0B0h
0144h:  0F BA 39 A0                                  BTC     word ptr DS:[BX+DI],0A0h
0148h:  66 0F BA 39 B0                               BTC     dword ptr DS:[BX+DI],0B0h
014Dh:  0F BA 3A A0                                  BTC     word ptr SS:[BP+SI],0A0h
0151h:  66 0F BA 3A B0                               BTC     dword ptr SS:[BP+SI],0B0h
0156h:  0F BA 3B A0                                  BTC     word ptr SS:[BP+DI],0A0h
015Ah:  66 0F BA 3B B0                               BTC     dword ptr SS:[BP+DI],0B0h
015Fh:  0F BA 7E 00 A0                               BTC     word ptr SS:[BP],0A0h
0164h:  66 0F BA 7E 00 B0                            BTC     dword ptr SS:[BP],0B0h
016Ah:  0F BA 3D A0                                  BTC     word ptr DS:[DI],0A0h
016Eh:  66 0F BA 3D B0                               BTC     dword ptr DS:[DI],0B0h
0173h:  0F BA 3C A0                                  BTC     word ptr DS:[SI],0A0h
0177h:  66 0F BA 3C B0                               BTC     dword ptr DS:[SI],0B0h
017Ch:  0F BB C0                                     BTC     AX,AX
017Fh:  0F BB C1                                     BTC     CX,AX
0182h:  0F BB C2                                     BTC     DX,AX
0185h:  0F BB C3                                     BTC     BX,AX
0188h:  0F BB C4                                     BTC     SP,AX
018Bh:  0F BB C5                                     BTC     BP,AX
018Eh:  0F BB C6                                     BTC     SI,AX
0191h:  0F BB C7                                     BTC     DI,AX
0194h:  0F BB 00                                     BTC     DS:[BX+SI],AX
0197h:  0F BB 01                                     BTC     DS:[BX+DI],AX
019Ah:  0F BB 02                                     BTC     SS:[BP+SI],AX
019Dh:  0F BB 03                                     BTC     SS:[BP+DI],AX
01A0h:  0F BB 46 00                                  BTC     SS:[BP],AX
01A4h:  0F BB 04                                     BTC     DS:[SI],AX
01A7h:  0F BB 05                                     BTC     DS:[DI],AX
01AAh:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234h],AX
01AFh:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234h],AX
01B4h:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234h],AX
01B9h:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234h],AX
01BEh:  0F BB 86 34 12                               BTC     SS:[BP+1234h],AX
01C3h:  0F BB 84 34 12                               BTC     DS:[SI+1234h],AX
01C8h:  0F BB 85 34 12                               BTC     DS:[DI+1234h],AX
01CDh:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],AX
01D6h:  67 0F BB 84 AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],AX
01DFh:  67 0F BB 44 2D 00                            BTC     SS:[EBP+EBP],AX
01E5h:  67 0F BB 04 2C                               BTC     SS:[ESP+EBP],AX
01EAh:  67 0F BB 04 DA                               BTC     DS:[EDX+EBX*8],AX
01EFh:  67 0F BB 44 4B 01                            BTC     DS:[EBX+ECX*2+01h],AX
01F5h:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],AX
01FEh:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],AX
0207h:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],AX
0210h:  F0 0F BB 00                                  LOCK BTC     DS:[BX+SI],AX
0214h:  F0 0F BB 01                                  LOCK BTC     DS:[BX+DI],AX
0218h:  F0 0F BB 02                                  LOCK BTC     SS:[BP+SI],AX
021Ch:  F0 0F BB 03                                  LOCK BTC     SS:[BP+DI],AX
0220h:  F0 0F BB 46 00                               LOCK BTC     SS:[BP],AX
0225h:  F0 0F BB 04                                  LOCK BTC     DS:[SI],AX
0229h:  F0 0F BB 05                                  LOCK BTC     DS:[DI],AX
022Dh:  F0 0F BB 80 34 12                            LOCK BTC     DS:[BX+SI+1234h],AX
0233h:  F0 0F BB 81 34 12                            LOCK BTC     DS:[BX+DI+1234h],AX
0239h:  F0 0F BB 82 34 12                            LOCK BTC     SS:[BP+SI+1234h],AX
023Fh:  F0 0F BB 83 34 12                            LOCK BTC     SS:[BP+DI+1234h],AX
0245h:  F0 0F BB 86 34 12                            LOCK BTC     SS:[BP+1234h],AX
024Bh:  F0 0F BB 84 34 12                            LOCK BTC     DS:[SI+1234h],AX
0251h:  F0 0F BB 85 34 12                            LOCK BTC     DS:[DI+1234h],AX
0257h:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
025Bh:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
025Fh:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
0263h:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
0267h:  2E 0F BB 46 00                               BTC     CS:[BP],AX
026Ch:  2E 0F BB 04                                  BTC     CS:[SI],AX
0270h:  2E 0F BB 05                                  BTC     CS:[DI],AX
0274h:  3E 0F BB 00                                  BTC     DS:[BX+SI],AX
0278h:  3E 0F BB 01                                  BTC     DS:[BX+DI],AX
027Ch:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
0280h:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
0284h:  3E 0F BB 46 00                               BTC     DS:[BP],AX
0289h:  3E 0F BB 04                                  BTC     DS:[SI],AX
028Dh:  3E 0F BB 05                                  BTC     DS:[DI],AX
0291h:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
0295h:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
0299h:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
029Dh:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
02A1h:  26 0F BB 46 00                               BTC     ES:[BP],AX
02A6h:  26 0F BB 04                                  BTC     ES:[SI],AX
02AAh:  26 0F BB 05                                  BTC     ES:[DI],AX
02AEh:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
02B2h:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
02B6h:  36 0F BB 02                                  BTC     SS:[BP+SI],AX
02BAh:  36 0F BB 03                                  BTC     SS:[BP+DI],AX
02BEh:  36 0F BB 46 00                               BTC     SS:[BP],AX
02C3h:  36 0F BB 04                                  BTC     SS:[SI],AX
02C7h:  36 0F BB 05                                  BTC     SS:[DI],AX
02CBh:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
02CFh:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
02D3h:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
02D7h:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
02DBh:  64 0F BB 46 00                               BTC     FS:[BP],AX
02E0h:  64 0F BB 04                                  BTC     FS:[SI],AX
02E4h:  64 0F BB 05                                  BTC     FS:[DI],AX
02E8h:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
02ECh:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
02F0h:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
02F4h:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
02F8h:  65 0F BB 46 00                               BTC     GS:[BP],AX
02FDh:  65 0F BB 04                                  BTC     GS:[SI],AX
0301h:  65 0F BB 05                                  BTC     GS:[DI],AX
0305h:  0F BA F8 01                                  BTC     AX,01h
0309h:  0F BA F8 FF                                  BTC     AX,0FFh
030Dh:  0F BB C8                                     BTC     AX,CX
0310h:  0F BB C9                                     BTC     CX,CX
0313h:  0F BB CA                                     BTC     DX,CX
0316h:  0F BB CB                                     BTC     BX,CX
0319h:  0F BB CC                                     BTC     SP,CX
031Ch:  0F BB CD                                     BTC     BP,CX
031Fh:  0F BB CE                                     BTC     SI,CX
0322h:  0F BB CF                                     BTC     DI,CX
0325h:  0F BB 08                                     BTC     DS:[BX+SI],CX
0328h:  0F BB 09                                     BTC     DS:[BX+DI],CX
032Bh:  0F BB 0A                                     BTC     SS:[BP+SI],CX
032Eh:  0F BB 0B                                     BTC     SS:[BP+DI],CX
0331h:  0F BB 4E 00                                  BTC     SS:[BP],CX
0335h:  0F BB 0C                                     BTC     DS:[SI],CX
0338h:  0F BB 0D                                     BTC     DS:[DI],CX
033Bh:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234h],CX
0340h:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234h],CX
0345h:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234h],CX
034Ah:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234h],CX
034Fh:  0F BB 8E 34 12                               BTC     SS:[BP+1234h],CX
0354h:  0F BB 8C 34 12                               BTC     DS:[SI+1234h],CX
0359h:  0F BB 8D 34 12                               BTC     DS:[DI+1234h],CX
035Eh:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],CX
0367h:  67 0F BB 8C AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],CX
0370h:  67 0F BB 4C 2D 00                            BTC     SS:[EBP+EBP],CX
0376h:  67 0F BB 0C 2C                               BTC     SS:[ESP+EBP],CX
037Bh:  67 0F BB 0C DA                               BTC     DS:[EDX+EBX*8],CX
0380h:  67 0F BB 4C 4B 01                            BTC     DS:[EBX+ECX*2+01h],CX
0386h:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],CX
038Fh:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],CX
0398h:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],CX
03A1h:  F0 0F BB 08                                  LOCK BTC     DS:[BX+SI],CX
03A5h:  F0 0F BB 09                                  LOCK BTC     DS:[BX+DI],CX
03A9h:  F0 0F BB 0A                                  LOCK BTC     SS:[BP+SI],CX
03ADh:  F0 0F BB 0B                                  LOCK BTC     SS:[BP+DI],CX
03B1h:  F0 0F BB 4E 00                               LOCK BTC     SS:[BP],CX
03B6h:  F0 0F BB 0C                                  LOCK BTC     DS:[SI],CX
03BAh:  F0 0F BB 0D                                  LOCK BTC     DS:[DI],CX
03BEh:  F0 0F BB 88 34 12                            LOCK BTC     DS:[BX+SI+1234h],CX
03C4h:  F0 0F BB 89 34 12                            LOCK BTC     DS:[BX+DI+1234h],CX
03CAh:  F0 0F BB 8A 34 12                            LOCK BTC     SS:[BP+SI+1234h],CX
03D0h:  F0 0F BB 8B 34 12                            LOCK BTC     SS:[BP+DI+1234h],CX
03D6h:  F0 0F BB 8E 34 12                            LOCK BTC     SS:[BP+1234h],CX
03DCh:  F0 0F BB 8C 34 12                            LOCK BTC     DS:[SI+1234h],CX
03E2h:  F0 0F BB 8D 34 12                            LOCK BTC     DS:[DI+1234h],CX
03E8h:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
03ECh:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
03F0h:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
03F4h:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
03F8h:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
03FDh:  2E 0F BB 0C                                  BTC     CS:[SI],CX
0401h:  2E 0F BB 0D                                  BTC     CS:[DI],CX
0405h:  3E 0F BB 08                                  BTC     DS:[BX+SI],CX
0409h:  3E 0F BB 09                                  BTC     DS:[BX+DI],CX
040Dh:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
0411h:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
0415h:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
041Ah:  3E 0F BB 0C                                  BTC     DS:[SI],CX
041Eh:  3E 0F BB 0D                                  BTC     DS:[DI],CX
0422h:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
0426h:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
042Ah:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
042Eh:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
0432h:  26 0F BB 4E 00                               BTC     ES:[BP],CX
0437h:  26 0F BB 0C                                  BTC     ES:[SI],CX
043Bh:  26 0F BB 0D                                  BTC     ES:[DI],CX
043Fh:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
0443h:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
0447h:  36 0F BB 0A                                  BTC     SS:[BP+SI],CX
044Bh:  36 0F BB 0B                                  BTC     SS:[BP+DI],CX
044Fh:  36 0F BB 4E 00                               BTC     SS:[BP],CX
0454h:  36 0F BB 0C                                  BTC     SS:[SI],CX
0458h:  36 0F BB 0D                                  BTC     SS:[DI],CX
045Ch:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
0460h:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
0464h:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
0468h:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
046Ch:  64 0F BB 4E 00                               BTC     FS:[BP],CX
0471h:  64 0F BB 0C                                  BTC     FS:[SI],CX
0475h:  64 0F BB 0D                                  BTC     FS:[DI],CX
0479h:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
047Dh:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
0481h:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
0485h:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
0489h:  65 0F BB 4E 00                               BTC     GS:[BP],CX
048Eh:  65 0F BB 0C                                  BTC     GS:[SI],CX
0492h:  65 0F BB 0D                                  BTC     GS:[DI],CX
0496h:  0F BA F9 01                                  BTC     CX,01h
049Ah:  0F BA F9 FF                                  BTC     CX,0FFh
049Eh:  0F BB D0                                     BTC     AX,DX
04A1h:  0F BB D1                                     BTC     CX,DX
04A4h:  0F BB D2                                     BTC     DX,DX
04A7h:  0F BB D3                                     BTC     BX,DX
04AAh:  0F BB D4                                     BTC     SP,DX
04ADh:  0F BB D5                                     BTC     BP,DX
04B0h:  0F BB D6                                     BTC     SI,DX
04B3h:  0F BB D7                                     BTC     DI,DX
04B6h:  0F BB 10                                     BTC     DS:[BX+SI],DX
04B9h:  0F BB 11                                     BTC     DS:[BX+DI],DX
04BCh:  0F BB 12                                     BTC     SS:[BP+SI],DX
04BFh:  0F BB 13                                     BTC     SS:[BP+DI],DX
04C2h:  0F BB 56 00                                  BTC     SS:[BP],DX
04C6h:  0F BB 14                                     BTC     DS:[SI],DX
04C9h:  0F BB 15                                     BTC     DS:[DI],DX
04CCh:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234h],DX
04D1h:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234h],DX
04D6h:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234h],DX
04DBh:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234h],DX
04E0h:  0F BB 96 34 12                               BTC     SS:[BP+1234h],DX
04E5h:  0F BB 94 34 12                               BTC     DS:[SI+1234h],DX
04EAh:  0F BB 95 34 12                               BTC     DS:[DI+1234h],DX
04EFh:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],DX
04F8h:  67 0F BB 94 AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],DX
0501h:  67 0F BB 54 2D 00                            BTC     SS:[EBP+EBP],DX
0507h:  67 0F BB 14 2C                               BTC     SS:[ESP+EBP],DX
050Ch:  67 0F BB 14 DA                               BTC     DS:[EDX+EBX*8],DX
0511h:  67 0F BB 54 4B 01                            BTC     DS:[EBX+ECX*2+01h],DX
0517h:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],DX
0520h:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],DX
0529h:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],DX
0532h:  F0 0F BB 10                                  LOCK BTC     DS:[BX+SI],DX
0536h:  F0 0F BB 11                                  LOCK BTC     DS:[BX+DI],DX
053Ah:  F0 0F BB 12                                  LOCK BTC     SS:[BP+SI],DX
053Eh:  F0 0F BB 13                                  LOCK BTC     SS:[BP+DI],DX
0542h:  F0 0F BB 56 00                               LOCK BTC     SS:[BP],DX
0547h:  F0 0F BB 14                                  LOCK BTC     DS:[SI],DX
054Bh:  F0 0F BB 15                                  LOCK BTC     DS:[DI],DX
054Fh:  F0 0F BB 90 34 12                            LOCK BTC     DS:[BX+SI+1234h],DX
0555h:  F0 0F BB 91 34 12                            LOCK BTC     DS:[BX+DI+1234h],DX
055Bh:  F0 0F BB 92 34 12                            LOCK BTC     SS:[BP+SI+1234h],DX
0561h:  F0 0F BB 93 34 12                            LOCK BTC     SS:[BP+DI+1234h],DX
0567h:  F0 0F BB 96 34 12                            LOCK BTC     SS:[BP+1234h],DX
056Dh:  F0 0F BB 94 34 12                            LOCK BTC     DS:[SI+1234h],DX
0573h:  F0 0F BB 95 34 12                            LOCK BTC     DS:[DI+1234h],DX
0579h:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
057Dh:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
0581h:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
0585h:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
0589h:  2E 0F BB 56 00                               BTC     CS:[BP],DX
058Eh:  2E 0F BB 14                                  BTC     CS:[SI],DX
0592h:  2E 0F BB 15                                  BTC     CS:[DI],DX
0596h:  3E 0F BB 10                                  BTC     DS:[BX+SI],DX
059Ah:  3E 0F BB 11                                  BTC     DS:[BX+DI],DX
059Eh:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
05A2h:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
05A6h:  3E 0F BB 56 00                               BTC     DS:[BP],DX
05ABh:  3E 0F BB 14                                  BTC     DS:[SI],DX
05AFh:  3E 0F BB 15                                  BTC     DS:[DI],DX
05B3h:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
05B7h:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
05BBh:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
05BFh:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
05C3h:  26 0F BB 56 00                               BTC     ES:[BP],DX
05C8h:  26 0F BB 14                                  BTC     ES:[SI],DX
05CCh:  26 0F BB 15                                  BTC     ES:[DI],DX
05D0h:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
05D4h:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
05D8h:  36 0F BB 12                                  BTC     SS:[BP+SI],DX
05DCh:  36 0F BB 13                                  BTC     SS:[BP+DI],DX
05E0h:  36 0F BB 56 00                               BTC     SS:[BP],DX
05E5h:  36 0F BB 14                                  BTC     SS:[SI],DX
05E9h:  36 0F BB 15                                  BTC     SS:[DI],DX
05EDh:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
05F1h:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
05F5h:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
05F9h:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
05FDh:  64 0F BB 56 00                               BTC     FS:[BP],DX
0602h:  64 0F BB 14                                  BTC     FS:[SI],DX
0606h:  64 0F BB 15                                  BTC     FS:[DI],DX
060Ah:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
060Eh:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
0612h:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
0616h:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
061Ah:  65 0F BB 56 00                               BTC     GS:[BP],DX
061Fh:  65 0F BB 14                                  BTC     GS:[SI],DX
0623h:  65 0F BB 15                                  BTC     GS:[DI],DX
0627h:  0F BA FA 01                                  BTC     DX,01h
062Bh:  0F BA FA FF                                  BTC     DX,0FFh
062Fh:  0F BB D8                                     BTC     AX,BX
0632h:  0F BB D9                                     BTC     CX,BX
0635h:  0F BB DA                                     BTC     DX,BX
0638h:  0F BB DB                                     BTC     BX,BX
063Bh:  0F BB DC                                     BTC     SP,BX
063Eh:  0F BB DD                                     BTC     BP,BX
0641h:  0F BB DE                                     BTC     SI,BX
0644h:  0F BB DF                                     BTC     DI,BX
0647h:  0F BB 18                                     BTC     DS:[BX+SI],BX
064Ah:  0F BB 19                                     BTC     DS:[BX+DI],BX
064Dh:  0F BB 1A                                     BTC     SS:[BP+SI],BX
0650h:  0F BB 1B                                     BTC     SS:[BP+DI],BX
0653h:  0F BB 5E 00                                  BTC     SS:[BP],BX
0657h:  0F BB 1C                                     BTC     DS:[SI],BX
065Ah:  0F BB 1D                                     BTC     DS:[DI],BX
065Dh:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234h],BX
0662h:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234h],BX
0667h:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234h],BX
066Ch:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234h],BX
0671h:  0F BB 9E 34 12                               BTC     SS:[BP+1234h],BX
0676h:  0F BB 9C 34 12                               BTC     DS:[SI+1234h],BX
067Bh:  0F BB 9D 34 12                               BTC     DS:[DI+1234h],BX
0680h:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],BX
0689h:  67 0F BB 9C AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],BX
0692h:  67 0F BB 5C 2D 00                            BTC     SS:[EBP+EBP],BX
0698h:  67 0F BB 1C 2C                               BTC     SS:[ESP+EBP],BX
069Dh:  67 0F BB 1C DA                               BTC     DS:[EDX+EBX*8],BX
06A2h:  67 0F BB 5C 4B 01                            BTC     DS:[EBX+ECX*2+01h],BX
06A8h:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],BX
06B1h:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],BX
06BAh:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],BX
06C3h:  F0 0F BB 18                                  LOCK BTC     DS:[BX+SI],BX
06C7h:  F0 0F BB 19                                  LOCK BTC     DS:[BX+DI],BX
06CBh:  F0 0F BB 1A                                  LOCK BTC     SS:[BP+SI],BX
06CFh:  F0 0F BB 1B                                  LOCK BTC     SS:[BP+DI],BX
06D3h:  F0 0F BB 5E 00                               LOCK BTC     SS:[BP],BX
06D8h:  F0 0F BB 1C                                  LOCK BTC     DS:[SI],BX
06DCh:  F0 0F BB 1D                                  LOCK BTC     DS:[DI],BX
06E0h:  F0 0F BB 98 34 12                            LOCK BTC     DS:[BX+SI+1234h],BX
06E6h:  F0 0F BB 99 34 12                            LOCK BTC     DS:[BX+DI+1234h],BX
06ECh:  F0 0F BB 9A 34 12                            LOCK BTC     SS:[BP+SI+1234h],BX
06F2h:  F0 0F BB 9B 34 12                            LOCK BTC     SS:[BP+DI+1234h],BX
06F8h:  F0 0F BB 9E 34 12                            LOCK BTC     SS:[BP+1234h],BX
06FEh:  F0 0F BB 9C 34 12                            LOCK BTC     DS:[SI+1234h],BX
0704h:  F0 0F BB 9D 34 12                            LOCK BTC     DS:[DI+1234h],BX
070Ah:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
070Eh:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
0712h:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
0716h:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
071Ah:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
071Fh:  2E 0F BB 1C                                  BTC     CS:[SI],BX
0723h:  2E 0F BB 1D                                  BTC     CS:[DI],BX
0727h:  3E 0F BB 18                                  BTC     DS:[BX+SI],BX
072Bh:  3E 0F BB 19                                  BTC     DS:[BX+DI],BX
072Fh:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
0733h:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
0737h:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
073Ch:  3E 0F BB 1C                                  BTC     DS:[SI],BX
0740h:  3E 0F BB 1D                                  BTC     DS:[DI],BX
0744h:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
0748h:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
074Ch:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
0750h:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
0754h:  26 0F BB 5E 00                               BTC     ES:[BP],BX
0759h:  26 0F BB 1C                                  BTC     ES:[SI],BX
075Dh:  26 0F BB 1D                                  BTC     ES:[DI],BX
0761h:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
0765h:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
0769h:  36 0F BB 1A                                  BTC     SS:[BP+SI],BX
076Dh:  36 0F BB 1B                                  BTC     SS:[BP+DI],BX
0771h:  36 0F BB 5E 00                               BTC     SS:[BP],BX
0776h:  36 0F BB 1C                                  BTC     SS:[SI],BX
077Ah:  36 0F BB 1D                                  BTC     SS:[DI],BX
077Eh:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
0782h:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
0786h:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
078Ah:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
078Eh:  64 0F BB 5E 00                               BTC     FS:[BP],BX
0793h:  64 0F BB 1C                                  BTC     FS:[SI],BX
0797h:  64 0F BB 1D                                  BTC     FS:[DI],BX
079Bh:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
079Fh:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
07A3h:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
07A7h:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
07ABh:  65 0F BB 5E 00                               BTC     GS:[BP],BX
07B0h:  65 0F BB 1C                                  BTC     GS:[SI],BX
07B4h:  65 0F BB 1D                                  BTC     GS:[DI],BX
07B8h:  0F BA FB 01                                  BTC     BX,01h
07BCh:  0F BA FB FF                                  BTC     BX,0FFh
07C0h:  0F BB E0                                     BTC     AX,SP
07C3h:  0F BB E1                                     BTC     CX,SP
07C6h:  0F BB E2                                     BTC     DX,SP
07C9h:  0F BB E3                                     BTC     BX,SP
07CCh:  0F BB E4                                     BTC     SP,SP
07CFh:  0F BB E5                                     BTC     BP,SP
07D2h:  0F BB E6                                     BTC     SI,SP
07D5h:  0F BB E7                                     BTC     DI,SP
07D8h:  0F BB 20                                     BTC     DS:[BX+SI],SP
07DBh:  0F BB 21                                     BTC     DS:[BX+DI],SP
07DEh:  0F BB 22                                     BTC     SS:[BP+SI],SP
07E1h:  0F BB 23                                     BTC     SS:[BP+DI],SP
07E4h:  0F BB 66 00                                  BTC     SS:[BP],SP
07E8h:  0F BB 24                                     BTC     DS:[SI],SP
07EBh:  0F BB 25                                     BTC     DS:[DI],SP
07EEh:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234h],SP
07F3h:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234h],SP
07F8h:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234h],SP
07FDh:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234h],SP
0802h:  0F BB A6 34 12                               BTC     SS:[BP+1234h],SP
0807h:  0F BB A4 34 12                               BTC     DS:[SI+1234h],SP
080Ch:  0F BB A5 34 12                               BTC     DS:[DI+1234h],SP
0811h:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],SP
081Ah:  67 0F BB A4 AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],SP
0823h:  67 0F BB 64 2D 00                            BTC     SS:[EBP+EBP],SP
0829h:  67 0F BB 24 2C                               BTC     SS:[ESP+EBP],SP
082Eh:  67 0F BB 24 DA                               BTC     DS:[EDX+EBX*8],SP
0833h:  67 0F BB 64 4B 01                            BTC     DS:[EBX+ECX*2+01h],SP
0839h:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],SP
0842h:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],SP
084Bh:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],SP
0854h:  F0 0F BB 20                                  LOCK BTC     DS:[BX+SI],SP
0858h:  F0 0F BB 21                                  LOCK BTC     DS:[BX+DI],SP
085Ch:  F0 0F BB 22                                  LOCK BTC     SS:[BP+SI],SP
0860h:  F0 0F BB 23                                  LOCK BTC     SS:[BP+DI],SP
0864h:  F0 0F BB 66 00                               LOCK BTC     SS:[BP],SP
0869h:  F0 0F BB 24                                  LOCK BTC     DS:[SI],SP
086Dh:  F0 0F BB 25                                  LOCK BTC     DS:[DI],SP
0871h:  F0 0F BB A0 34 12                            LOCK BTC     DS:[BX+SI+1234h],SP
0877h:  F0 0F BB A1 34 12                            LOCK BTC     DS:[BX+DI+1234h],SP
087Dh:  F0 0F BB A2 34 12                            LOCK BTC     SS:[BP+SI+1234h],SP
0883h:  F0 0F BB A3 34 12                            LOCK BTC     SS:[BP+DI+1234h],SP
0889h:  F0 0F BB A6 34 12                            LOCK BTC     SS:[BP+1234h],SP
088Fh:  F0 0F BB A4 34 12                            LOCK BTC     DS:[SI+1234h],SP
0895h:  F0 0F BB A5 34 12                            LOCK BTC     DS:[DI+1234h],SP
089Bh:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
089Fh:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
08A3h:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
08A7h:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
08ABh:  2E 0F BB 66 00                               BTC     CS:[BP],SP
08B0h:  2E 0F BB 24                                  BTC     CS:[SI],SP
08B4h:  2E 0F BB 25                                  BTC     CS:[DI],SP
08B8h:  3E 0F BB 20                                  BTC     DS:[BX+SI],SP
08BCh:  3E 0F BB 21                                  BTC     DS:[BX+DI],SP
08C0h:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
08C4h:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
08C8h:  3E 0F BB 66 00                               BTC     DS:[BP],SP
08CDh:  3E 0F BB 24                                  BTC     DS:[SI],SP
08D1h:  3E 0F BB 25                                  BTC     DS:[DI],SP
08D5h:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
08D9h:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
08DDh:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
08E1h:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
08E5h:  26 0F BB 66 00                               BTC     ES:[BP],SP
08EAh:  26 0F BB 24                                  BTC     ES:[SI],SP
08EEh:  26 0F BB 25                                  BTC     ES:[DI],SP
08F2h:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
08F6h:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
08FAh:  36 0F BB 22                                  BTC     SS:[BP+SI],SP
08FEh:  36 0F BB 23                                  BTC     SS:[BP+DI],SP
0902h:  36 0F BB 66 00                               BTC     SS:[BP],SP
0907h:  36 0F BB 24                                  BTC     SS:[SI],SP
090Bh:  36 0F BB 25                                  BTC     SS:[DI],SP
090Fh:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
0913h:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
0917h:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
091Bh:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
091Fh:  64 0F BB 66 00                               BTC     FS:[BP],SP
0924h:  64 0F BB 24                                  BTC     FS:[SI],SP
0928h:  64 0F BB 25                                  BTC     FS:[DI],SP
092Ch:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
0930h:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
0934h:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
0938h:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
093Ch:  65 0F BB 66 00                               BTC     GS:[BP],SP
0941h:  65 0F BB 24                                  BTC     GS:[SI],SP
0945h:  65 0F BB 25                                  BTC     GS:[DI],SP
0949h:  0F BA FC 01                                  BTC     SP,01h
094Dh:  0F BA FC FF                                  BTC     SP,0FFh
0951h:  0F BB E8                                     BTC     AX,BP
0954h:  0F BB E9                                     BTC     CX,BP
0957h:  0F BB EA                                     BTC     DX,BP
095Ah:  0F BB EB                                     BTC     BX,BP
095Dh:  0F BB EC                                     BTC     SP,BP
0960h:  0F BB ED                                     BTC     BP,BP
0963h:  0F BB EE                                     BTC     SI,BP
0966h:  0F BB EF                                     BTC     DI,BP
0969h:  0F BB 28                                     BTC     DS:[BX+SI],BP
096Ch:  0F BB 29                                     BTC     DS:[BX+DI],BP
096Fh:  0F BB 2A                                     BTC     SS:[BP+SI],BP
0972h:  0F BB 2B                                     BTC     SS:[BP+DI],BP
0975h:  0F BB 6E 00                                  BTC     SS:[BP],BP
0979h:  0F BB 2C                                     BTC     DS:[SI],BP
097Ch:  0F BB 2D                                     BTC     DS:[DI],BP
097Fh:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234h],BP
0984h:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234h],BP
0989h:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234h],BP
098Eh:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234h],BP
0993h:  0F BB AE 34 12                               BTC     SS:[BP+1234h],BP
0998h:  0F BB AC 34 12                               BTC     DS:[SI+1234h],BP
099Dh:  0F BB AD 34 12                               BTC     DS:[DI+1234h],BP
09A2h:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],BP
09ABh:  67 0F BB AC AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],BP
09B4h:  67 0F BB 6C 2D 00                            BTC     SS:[EBP+EBP],BP
09BAh:  67 0F BB 2C 2C                               BTC     SS:[ESP+EBP],BP
09BFh:  67 0F BB 2C DA                               BTC     DS:[EDX+EBX*8],BP
09C4h:  67 0F BB 6C 4B 01                            BTC     DS:[EBX+ECX*2+01h],BP
09CAh:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],BP
09D3h:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],BP
09DCh:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],BP
09E5h:  F0 0F BB 28                                  LOCK BTC     DS:[BX+SI],BP
09E9h:  F0 0F BB 29                                  LOCK BTC     DS:[BX+DI],BP
09EDh:  F0 0F BB 2A                                  LOCK BTC     SS:[BP+SI],BP
09F1h:  F0 0F BB 2B                                  LOCK BTC     SS:[BP+DI],BP
09F5h:  F0 0F BB 6E 00                               LOCK BTC     SS:[BP],BP
09FAh:  F0 0F BB 2C                                  LOCK BTC     DS:[SI],BP
09FEh:  F0 0F BB 2D                                  LOCK BTC     DS:[DI],BP
0A02h:  F0 0F BB A8 34 12                            LOCK BTC     DS:[BX+SI+1234h],BP
0A08h:  F0 0F BB A9 34 12                            LOCK BTC     DS:[BX+DI+1234h],BP
0A0Eh:  F0 0F BB AA 34 12                            LOCK BTC     SS:[BP+SI+1234h],BP
0A14h:  F0 0F BB AB 34 12                            LOCK BTC     SS:[BP+DI+1234h],BP
0A1Ah:  F0 0F BB AE 34 12                            LOCK BTC     SS:[BP+1234h],BP
0A20h:  F0 0F BB AC 34 12                            LOCK BTC     DS:[SI+1234h],BP
0A26h:  F0 0F BB AD 34 12                            LOCK BTC     DS:[DI+1234h],BP
0A2Ch:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
0A30h:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
0A34h:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
0A38h:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
0A3Ch:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
0A41h:  2E 0F BB 2C                                  BTC     CS:[SI],BP
0A45h:  2E 0F BB 2D                                  BTC     CS:[DI],BP
0A49h:  3E 0F BB 28                                  BTC     DS:[BX+SI],BP
0A4Dh:  3E 0F BB 29                                  BTC     DS:[BX+DI],BP
0A51h:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
0A55h:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
0A59h:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
0A5Eh:  3E 0F BB 2C                                  BTC     DS:[SI],BP
0A62h:  3E 0F BB 2D                                  BTC     DS:[DI],BP
0A66h:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
0A6Ah:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
0A6Eh:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
0A72h:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
0A76h:  26 0F BB 6E 00                               BTC     ES:[BP],BP
0A7Bh:  26 0F BB 2C                                  BTC     ES:[SI],BP
0A7Fh:  26 0F BB 2D                                  BTC     ES:[DI],BP
0A83h:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
0A87h:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
0A8Bh:  36 0F BB 2A                                  BTC     SS:[BP+SI],BP
0A8Fh:  36 0F BB 2B                                  BTC     SS:[BP+DI],BP
0A93h:  36 0F BB 6E 00                               BTC     SS:[BP],BP
0A98h:  36 0F BB 2C                                  BTC     SS:[SI],BP
0A9Ch:  36 0F BB 2D                                  BTC     SS:[DI],BP
0AA0h:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
0AA4h:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
0AA8h:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
0AACh:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
0AB0h:  64 0F BB 6E 00                               BTC     FS:[BP],BP
0AB5h:  64 0F BB 2C                                  BTC     FS:[SI],BP
0AB9h:  64 0F BB 2D                                  BTC     FS:[DI],BP
0ABDh:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
0AC1h:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
0AC5h:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
0AC9h:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
0ACDh:  65 0F BB 6E 00                               BTC     GS:[BP],BP
0AD2h:  65 0F BB 2C                                  BTC     GS:[SI],BP
0AD6h:  65 0F BB 2D                                  BTC     GS:[DI],BP
0ADAh:  0F BA FD 01                                  BTC     BP,01h
0ADEh:  0F BA FD FF                                  BTC     BP,0FFh
0AE2h:  0F BB F0                                     BTC     AX,SI
0AE5h:  0F BB F1                                     BTC     CX,SI
0AE8h:  0F BB F2                                     BTC     DX,SI
0AEBh:  0F BB F3                                     BTC     BX,SI
0AEEh:  0F BB F4                                     BTC     SP,SI
0AF1h:  0F BB F5                                     BTC     BP,SI
0AF4h:  0F BB F6                                     BTC     SI,SI
0AF7h:  0F BB F7                                     BTC     DI,SI
0AFAh:  0F BB 30                                     BTC     DS:[BX+SI],SI
0AFDh:  0F BB 31                                     BTC     DS:[BX+DI],SI
0B00h:  0F BB 32                                     BTC     SS:[BP+SI],SI
0B03h:  0F BB 33                                     BTC     SS:[BP+DI],SI
0B06h:  0F BB 76 00                                  BTC     SS:[BP],SI
0B0Ah:  0F BB 34                                     BTC     DS:[SI],SI
0B0Dh:  0F BB 35                                     BTC     DS:[DI],SI
0B10h:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234h],SI
0B15h:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234h],SI
0B1Ah:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234h],SI
0B1Fh:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234h],SI
0B24h:  0F BB B6 34 12                               BTC     SS:[BP+1234h],SI
0B29h:  0F BB B4 34 12                               BTC     DS:[SI+1234h],SI
0B2Eh:  0F BB B5 34 12                               BTC     DS:[DI+1234h],SI
0B33h:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],SI
0B3Ch:  67 0F BB B4 AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],SI
0B45h:  67 0F BB 74 2D 00                            BTC     SS:[EBP+EBP],SI
0B4Bh:  67 0F BB 34 2C                               BTC     SS:[ESP+EBP],SI
0B50h:  67 0F BB 34 DA                               BTC     DS:[EDX+EBX*8],SI
0B55h:  67 0F BB 74 4B 01                            BTC     DS:[EBX+ECX*2+01h],SI
0B5Bh:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],SI
0B64h:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],SI
0B6Dh:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],SI
0B76h:  F0 0F BB 30                                  LOCK BTC     DS:[BX+SI],SI
0B7Ah:  F0 0F BB 31                                  LOCK BTC     DS:[BX+DI],SI
0B7Eh:  F0 0F BB 32                                  LOCK BTC     SS:[BP+SI],SI
0B82h:  F0 0F BB 33                                  LOCK BTC     SS:[BP+DI],SI
0B86h:  F0 0F BB 76 00                               LOCK BTC     SS:[BP],SI
0B8Bh:  F0 0F BB 34                                  LOCK BTC     DS:[SI],SI
0B8Fh:  F0 0F BB 35                                  LOCK BTC     DS:[DI],SI
0B93h:  F0 0F BB B0 34 12                            LOCK BTC     DS:[BX+SI+1234h],SI
0B99h:  F0 0F BB B1 34 12                            LOCK BTC     DS:[BX+DI+1234h],SI
0B9Fh:  F0 0F BB B2 34 12                            LOCK BTC     SS:[BP+SI+1234h],SI
0BA5h:  F0 0F BB B3 34 12                            LOCK BTC     SS:[BP+DI+1234h],SI
0BABh:  F0 0F BB B6 34 12                            LOCK BTC     SS:[BP+1234h],SI
0BB1h:  F0 0F BB B4 34 12                            LOCK BTC     DS:[SI+1234h],SI
0BB7h:  F0 0F BB B5 34 12                            LOCK BTC     DS:[DI+1234h],SI
0BBDh:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
0BC1h:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
0BC5h:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
0BC9h:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
0BCDh:  2E 0F BB 76 00                               BTC     CS:[BP],SI
0BD2h:  2E 0F BB 34                                  BTC     CS:[SI],SI
0BD6h:  2E 0F BB 35                                  BTC     CS:[DI],SI
0BDAh:  3E 0F BB 30                                  BTC     DS:[BX+SI],SI
0BDEh:  3E 0F BB 31                                  BTC     DS:[BX+DI],SI
0BE2h:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
0BE6h:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
0BEAh:  3E 0F BB 76 00                               BTC     DS:[BP],SI
0BEFh:  3E 0F BB 34                                  BTC     DS:[SI],SI
0BF3h:  3E 0F BB 35                                  BTC     DS:[DI],SI
0BF7h:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
0BFBh:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
0BFFh:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
0C03h:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
0C07h:  26 0F BB 76 00                               BTC     ES:[BP],SI
0C0Ch:  26 0F BB 34                                  BTC     ES:[SI],SI
0C10h:  26 0F BB 35                                  BTC     ES:[DI],SI
0C14h:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
0C18h:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
0C1Ch:  36 0F BB 32                                  BTC     SS:[BP+SI],SI
0C20h:  36 0F BB 33                                  BTC     SS:[BP+DI],SI
0C24h:  36 0F BB 76 00                               BTC     SS:[BP],SI
0C29h:  36 0F BB 34                                  BTC     SS:[SI],SI
0C2Dh:  36 0F BB 35                                  BTC     SS:[DI],SI
0C31h:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
0C35h:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
0C39h:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
0C3Dh:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
0C41h:  64 0F BB 76 00                               BTC     FS:[BP],SI
0C46h:  64 0F BB 34                                  BTC     FS:[SI],SI
0C4Ah:  64 0F BB 35                                  BTC     FS:[DI],SI
0C4Eh:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
0C52h:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
0C56h:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
0C5Ah:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
0C5Eh:  65 0F BB 76 00                               BTC     GS:[BP],SI
0C63h:  65 0F BB 34                                  BTC     GS:[SI],SI
0C67h:  65 0F BB 35                                  BTC     GS:[DI],SI
0C6Bh:  0F BA FE 01                                  BTC     SI,01h
0C6Fh:  0F BA FE FF                                  BTC     SI,0FFh
0C73h:  0F BB F8                                     BTC     AX,DI
0C76h:  0F BB F9                                     BTC     CX,DI
0C79h:  0F BB FA                                     BTC     DX,DI
0C7Ch:  0F BB FB                                     BTC     BX,DI
0C7Fh:  0F BB FC                                     BTC     SP,DI
0C82h:  0F BB FD                                     BTC     BP,DI
0C85h:  0F BB FE                                     BTC     SI,DI
0C88h:  0F BB FF                                     BTC     DI,DI
0C8Bh:  0F BB 38                                     BTC     DS:[BX+SI],DI
0C8Eh:  0F BB 39                                     BTC     DS:[BX+DI],DI
0C91h:  0F BB 3A                                     BTC     SS:[BP+SI],DI
0C94h:  0F BB 3B                                     BTC     SS:[BP+DI],DI
0C97h:  0F BB 7E 00                                  BTC     SS:[BP],DI
0C9Bh:  0F BB 3C                                     BTC     DS:[SI],DI
0C9Eh:  0F BB 3D                                     BTC     DS:[DI],DI
0CA1h:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234h],DI
0CA6h:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234h],DI
0CABh:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234h],DI
0CB0h:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234h],DI
0CB5h:  0F BB BE 34 12                               BTC     SS:[BP+1234h],DI
0CBAh:  0F BB BC 34 12                               BTC     DS:[SI+1234h],DI
0CBFh:  0F BB BD 34 12                               BTC     DS:[DI+1234h],DI
0CC4h:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],DI
0CCDh:  67 0F BB BC AB 78 56 34 12                   BTC     DS:[EBX+EBP*4+12345678h],DI
0CD6h:  67 0F BB 7C 2D 00                            BTC     SS:[EBP+EBP],DI
0CDCh:  67 0F BB 3C 2C                               BTC     SS:[ESP+EBP],DI
0CE1h:  67 0F BB 3C DA                               BTC     DS:[EDX+EBX*8],DI
0CE6h:  67 0F BB 7C 4B 01                            BTC     DS:[EBX+ECX*2+01h],DI
0CECh:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],DI
0CF5h:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],DI
0CFEh:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],DI
0D07h:  F0 0F BB 38                                  LOCK BTC     DS:[BX+SI],DI
0D0Bh:  F0 0F BB 39                                  LOCK BTC     DS:[BX+DI],DI
0D0Fh:  F0 0F BB 3A                                  LOCK BTC     SS:[BP+SI],DI
0D13h:  F0 0F BB 3B                                  LOCK BTC     SS:[BP+DI],DI
0D17h:  F0 0F BB 7E 00                               LOCK BTC     SS:[BP],DI
0D1Ch:  F0 0F BB 3C                                  LOCK BTC     DS:[SI],DI
0D20h:  F0 0F BB 3D                                  LOCK BTC     DS:[DI],DI
0D24h:  F0 0F BB B8 34 12                            LOCK BTC     DS:[BX+SI+1234h],DI
0D2Ah:  F0 0F BB B9 34 12                            LOCK BTC     DS:[BX+DI+1234h],DI
0D30h:  F0 0F BB BA 34 12                            LOCK BTC     SS:[BP+SI+1234h],DI
0D36h:  F0 0F BB BB 34 12                            LOCK BTC     SS:[BP+DI+1234h],DI
0D3Ch:  F0 0F BB BE 34 12                            LOCK BTC     SS:[BP+1234h],DI
0D42h:  F0 0F BB BC 34 12                            LOCK BTC     DS:[SI+1234h],DI
0D48h:  F0 0F BB BD 34 12                            LOCK BTC     DS:[DI+1234h],DI
0D4Eh:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
0D52h:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
0D56h:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
0D5Ah:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
0D5Eh:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
0D63h:  2E 0F BB 3C                                  BTC     CS:[SI],DI
0D67h:  2E 0F BB 3D                                  BTC     CS:[DI],DI
0D6Bh:  3E 0F BB 38                                  BTC     DS:[BX+SI],DI
0D6Fh:  3E 0F BB 39                                  BTC     DS:[BX+DI],DI
0D73h:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
0D77h:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
0D7Bh:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
0D80h:  3E 0F BB 3C                                  BTC     DS:[SI],DI
0D84h:  3E 0F BB 3D                                  BTC     DS:[DI],DI
0D88h:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
0D8Ch:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
0D90h:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
0D94h:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
0D98h:  26 0F BB 7E 00                               BTC     ES:[BP],DI
0D9Dh:  26 0F BB 3C                                  BTC     ES:[SI],DI
0DA1h:  26 0F BB 3D                                  BTC     ES:[DI],DI
0DA5h:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
0DA9h:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
0DADh:  36 0F BB 3A                                  BTC     SS:[BP+SI],DI
0DB1h:  36 0F BB 3B                                  BTC     SS:[BP+DI],DI
0DB5h:  36 0F BB 7E 00                               BTC     SS:[BP],DI
0DBAh:  36 0F BB 3C                                  BTC     SS:[SI],DI
0DBEh:  36 0F BB 3D                                  BTC     SS:[DI],DI
0DC2h:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
0DC6h:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
0DCAh:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
0DCEh:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
0DD2h:  64 0F BB 7E 00                               BTC     FS:[BP],DI
0DD7h:  64 0F BB 3C                                  BTC     FS:[SI],DI
0DDBh:  64 0F BB 3D                                  BTC     FS:[DI],DI
0DDFh:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
0DE3h:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
0DE7h:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
0DEBh:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
0DEFh:  65 0F BB 7E 00                               BTC     GS:[BP],DI
0DF4h:  65 0F BB 3C                                  BTC     GS:[SI],DI
0DF8h:  65 0F BB 3D                                  BTC     GS:[DI],DI
0DFCh:  0F BA FF 01                                  BTC     DI,01h
0E00h:  0F BA FF FF                                  BTC     DI,0FFh
0E04h:  66 0F BB C0                                  BTC     EAX,EAX
0E08h:  66 0F BB C1                                  BTC     ECX,EAX
0E0Ch:  66 0F BB C2                                  BTC     EDX,EAX
0E10h:  66 0F BB C3                                  BTC     EBX,EAX
0E14h:  66 0F BB C4                                  BTC     ESP,EAX
0E18h:  66 0F BB C5                                  BTC     EBP,EAX
0E1Ch:  66 0F BB C6                                  BTC     ESI,EAX
0E20h:  66 0F BB C7                                  BTC     EDI,EAX
0E24h:  66 67 0F BB 00                               BTC     DS:[EAX],EAX
0E29h:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX+00001234h],ECX
0E32h:  2E 66 67 0F BB 18                            BTC     CS:[EAX],EBX
0E38h:  3E 66 67 0F BB 10                            BTC     DS:[EAX],EDX
0E3Eh:  26 66 67 0F BB 20                            BTC     ES:[EAX],ESP
0E44h:  36 66 67 0F BB 28                            BTC     SS:[EAX],EBP
0E4Ah:  64 66 67 0F BB 30                            BTC     FS:[EAX],ESI
0E50h:  65 66 67 0F BB 38                            BTC     GS:[EAX],EDI
0E56h:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EAX
0E60h:  66 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],EAX
0E6Ah:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP+EBP],EAX
0E71h:  66 67 0F BB 04 2C                            BTC     SS:[ESP+EBP],EAX
0E77h:  66 67 0F BB 04 DA                            BTC     DS:[EDX+EBX*8],EAX
0E7Dh:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX+ECX*2+01h],EAX
0E84h:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EAX
0E8Eh:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EAX
0E98h:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EAX
0EA2h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
0EAEh:  F0 66 0F BB 00                               LOCK BTC     DS:[BX+SI],EAX
0EB3h:  F0 66 0F BB 01                               LOCK BTC     DS:[BX+DI],EAX
0EB8h:  F0 66 0F BB 02                               LOCK BTC     SS:[BP+SI],EAX
0EBDh:  F0 66 0F BB 03                               LOCK BTC     SS:[BP+DI],EAX
0EC2h:  F0 66 0F BB 46 00                            LOCK BTC     SS:[BP],EAX
0EC8h:  F0 66 0F BB 04                               LOCK BTC     DS:[SI],EAX
0ECDh:  F0 66 0F BB 05                               LOCK BTC     DS:[DI],EAX
0ED2h:  F0 66 0F BB 80 34 12                         LOCK BTC     DS:[BX+SI+1234h],EAX
0ED9h:  F0 66 0F BB 81 34 12                         LOCK BTC     DS:[BX+DI+1234h],EAX
0EE0h:  F0 66 0F BB 82 34 12                         LOCK BTC     SS:[BP+SI+1234h],EAX
0EE7h:  F0 66 0F BB 83 34 12                         LOCK BTC     SS:[BP+DI+1234h],EAX
0EEEh:  F0 66 0F BB 86 34 12                         LOCK BTC     SS:[BP+1234h],EAX
0EF5h:  F0 66 0F BB 84 34 12                         LOCK BTC     DS:[SI+1234h],EAX
0EFCh:  F0 66 0F BB 85 34 12                         LOCK BTC     DS:[DI+1234h],EAX
0F03h:  66 0F BA F8 01                               BTC     EAX,01h
0F08h:  66 0F BA F8 FF                               BTC     EAX,0FFh
0F0Dh:  66 0F BB C8                                  BTC     EAX,ECX
0F11h:  66 0F BB C9                                  BTC     ECX,ECX
0F15h:  66 0F BB CA                                  BTC     EDX,ECX
0F19h:  66 0F BB CB                                  BTC     EBX,ECX
0F1Dh:  66 0F BB CC                                  BTC     ESP,ECX
0F21h:  66 0F BB CD                                  BTC     EBP,ECX
0F25h:  66 0F BB CE                                  BTC     ESI,ECX
0F29h:  66 0F BB CF                                  BTC     EDI,ECX
0F2Dh:  66 67 0F BB 01                               BTC     DS:[ECX],EAX
0F32h:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX+00001234h],ECX
0F3Bh:  2E 66 67 0F BB 19                            BTC     CS:[ECX],EBX
0F41h:  3E 66 67 0F BB 11                            BTC     DS:[ECX],EDX
0F47h:  26 66 67 0F BB 21                            BTC     ES:[ECX],ESP
0F4Dh:  36 66 67 0F BB 29                            BTC     SS:[ECX],EBP
0F53h:  64 66 67 0F BB 31                            BTC     FS:[ECX],ESI
0F59h:  65 66 67 0F BB 39                            BTC     GS:[ECX],EDI
0F5Fh:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],ECX
0F69h:  66 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],ECX
0F73h:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP+EBP],ECX
0F7Ah:  66 67 0F BB 0C 2C                            BTC     SS:[ESP+EBP],ECX
0F80h:  66 67 0F BB 0C DA                            BTC     DS:[EDX+EBX*8],ECX
0F86h:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX+ECX*2+01h],ECX
0F8Dh:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],ECX
0F97h:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],ECX
0FA1h:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],ECX
0FABh:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
0FB7h:  F0 66 0F BB 08                               LOCK BTC     DS:[BX+SI],ECX
0FBCh:  F0 66 0F BB 09                               LOCK BTC     DS:[BX+DI],ECX
0FC1h:  F0 66 0F BB 0A                               LOCK BTC     SS:[BP+SI],ECX
0FC6h:  F0 66 0F BB 0B                               LOCK BTC     SS:[BP+DI],ECX
0FCBh:  F0 66 0F BB 4E 00                            LOCK BTC     SS:[BP],ECX
0FD1h:  F0 66 0F BB 0C                               LOCK BTC     DS:[SI],ECX
0FD6h:  F0 66 0F BB 0D                               LOCK BTC     DS:[DI],ECX
0FDBh:  F0 66 0F BB 88 34 12                         LOCK BTC     DS:[BX+SI+1234h],ECX
0FE2h:  F0 66 0F BB 89 34 12                         LOCK BTC     DS:[BX+DI+1234h],ECX
0FE9h:  F0 66 0F BB 8A 34 12                         LOCK BTC     SS:[BP+SI+1234h],ECX
0FF0h:  F0 66 0F BB 8B 34 12                         LOCK BTC     SS:[BP+DI+1234h],ECX
0FF7h:  F0 66 0F BB 8E 34 12                         LOCK BTC     SS:[BP+1234h],ECX
0FFEh:  F0 66 0F BB 8C 34 12                         LOCK BTC     DS:[SI+1234h],ECX
1005h:  F0 66 0F BB 8D 34 12                         LOCK BTC     DS:[DI+1234h],ECX
100Ch:  66 0F BA F9 01                               BTC     ECX,01h
1011h:  66 0F BA F9 FF                               BTC     ECX,0FFh
1016h:  66 0F BB D0                                  BTC     EAX,EDX
101Ah:  66 0F BB D1                                  BTC     ECX,EDX
101Eh:  66 0F BB D2                                  BTC     EDX,EDX
1022h:  66 0F BB D3                                  BTC     EBX,EDX
1026h:  66 0F BB D4                                  BTC     ESP,EDX
102Ah:  66 0F BB D5                                  BTC     EBP,EDX
102Eh:  66 0F BB D6                                  BTC     ESI,EDX
1032h:  66 0F BB D7                                  BTC     EDI,EDX
1036h:  66 67 0F BB 02                               BTC     DS:[EDX],EAX
103Bh:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX+00001234h],ECX
1044h:  2E 66 67 0F BB 1A                            BTC     CS:[EDX],EBX
104Ah:  3E 66 67 0F BB 12                            BTC     DS:[EDX],EDX
1050h:  26 66 67 0F BB 22                            BTC     ES:[EDX],ESP
1056h:  36 66 67 0F BB 2A                            BTC     SS:[EDX],EBP
105Ch:  64 66 67 0F BB 32                            BTC     FS:[EDX],ESI
1062h:  65 66 67 0F BB 3A                            BTC     GS:[EDX],EDI
1068h:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EDX
1072h:  66 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],EDX
107Ch:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP+EBP],EDX
1083h:  66 67 0F BB 14 2C                            BTC     SS:[ESP+EBP],EDX
1089h:  66 67 0F BB 14 DA                            BTC     DS:[EDX+EBX*8],EDX
108Fh:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX+ECX*2+01h],EDX
1096h:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EDX
10A0h:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EDX
10AAh:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EDX
10B4h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
10C0h:  F0 66 0F BB 10                               LOCK BTC     DS:[BX+SI],EDX
10C5h:  F0 66 0F BB 11                               LOCK BTC     DS:[BX+DI],EDX
10CAh:  F0 66 0F BB 12                               LOCK BTC     SS:[BP+SI],EDX
10CFh:  F0 66 0F BB 13                               LOCK BTC     SS:[BP+DI],EDX
10D4h:  F0 66 0F BB 56 00                            LOCK BTC     SS:[BP],EDX
10DAh:  F0 66 0F BB 14                               LOCK BTC     DS:[SI],EDX
10DFh:  F0 66 0F BB 15                               LOCK BTC     DS:[DI],EDX
10E4h:  F0 66 0F BB 90 34 12                         LOCK BTC     DS:[BX+SI+1234h],EDX
10EBh:  F0 66 0F BB 91 34 12                         LOCK BTC     DS:[BX+DI+1234h],EDX
10F2h:  F0 66 0F BB 92 34 12                         LOCK BTC     SS:[BP+SI+1234h],EDX
10F9h:  F0 66 0F BB 93 34 12                         LOCK BTC     SS:[BP+DI+1234h],EDX
1100h:  F0 66 0F BB 96 34 12                         LOCK BTC     SS:[BP+1234h],EDX
1107h:  F0 66 0F BB 94 34 12                         LOCK BTC     DS:[SI+1234h],EDX
110Eh:  F0 66 0F BB 95 34 12                         LOCK BTC     DS:[DI+1234h],EDX
1115h:  66 0F BA FA 01                               BTC     EDX,01h
111Ah:  66 0F BA FA FF                               BTC     EDX,0FFh
111Fh:  66 0F BB D8                                  BTC     EAX,EBX
1123h:  66 0F BB D9                                  BTC     ECX,EBX
1127h:  66 0F BB DA                                  BTC     EDX,EBX
112Bh:  66 0F BB DB                                  BTC     EBX,EBX
112Fh:  66 0F BB DC                                  BTC     ESP,EBX
1133h:  66 0F BB DD                                  BTC     EBP,EBX
1137h:  66 0F BB DE                                  BTC     ESI,EBX
113Bh:  66 0F BB DF                                  BTC     EDI,EBX
113Fh:  66 67 0F BB 03                               BTC     DS:[EBX],EAX
1144h:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX+00001234h],ECX
114Dh:  2E 66 67 0F BB 1B                            BTC     CS:[EBX],EBX
1153h:  3E 66 67 0F BB 13                            BTC     DS:[EBX],EDX
1159h:  26 66 67 0F BB 23                            BTC     ES:[EBX],ESP
115Fh:  36 66 67 0F BB 2B                            BTC     SS:[EBX],EBP
1165h:  64 66 67 0F BB 33                            BTC     FS:[EBX],ESI
116Bh:  65 66 67 0F BB 3B                            BTC     GS:[EBX],EDI
1171h:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EBX
117Bh:  66 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],EBX
1185h:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP+EBP],EBX
118Ch:  66 67 0F BB 1C 2C                            BTC     SS:[ESP+EBP],EBX
1192h:  66 67 0F BB 1C DA                            BTC     DS:[EDX+EBX*8],EBX
1198h:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX+ECX*2+01h],EBX
119Fh:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EBX
11A9h:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EBX
11B3h:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EBX
11BDh:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
11C9h:  F0 66 0F BB 18                               LOCK BTC     DS:[BX+SI],EBX
11CEh:  F0 66 0F BB 19                               LOCK BTC     DS:[BX+DI],EBX
11D3h:  F0 66 0F BB 1A                               LOCK BTC     SS:[BP+SI],EBX
11D8h:  F0 66 0F BB 1B                               LOCK BTC     SS:[BP+DI],EBX
11DDh:  F0 66 0F BB 5E 00                            LOCK BTC     SS:[BP],EBX
11E3h:  F0 66 0F BB 1C                               LOCK BTC     DS:[SI],EBX
11E8h:  F0 66 0F BB 1D                               LOCK BTC     DS:[DI],EBX
11EDh:  F0 66 0F BB 98 34 12                         LOCK BTC     DS:[BX+SI+1234h],EBX
11F4h:  F0 66 0F BB 99 34 12                         LOCK BTC     DS:[BX+DI+1234h],EBX
11FBh:  F0 66 0F BB 9A 34 12                         LOCK BTC     SS:[BP+SI+1234h],EBX
1202h:  F0 66 0F BB 9B 34 12                         LOCK BTC     SS:[BP+DI+1234h],EBX
1209h:  F0 66 0F BB 9E 34 12                         LOCK BTC     SS:[BP+1234h],EBX
1210h:  F0 66 0F BB 9C 34 12                         LOCK BTC     DS:[SI+1234h],EBX
1217h:  F0 66 0F BB 9D 34 12                         LOCK BTC     DS:[DI+1234h],EBX
121Eh:  66 0F BA FB 01                               BTC     EBX,01h
1223h:  66 0F BA FB FF                               BTC     EBX,0FFh
1228h:  66 0F BB E0                                  BTC     EAX,ESP
122Ch:  66 0F BB E1                                  BTC     ECX,ESP
1230h:  66 0F BB E2                                  BTC     EDX,ESP
1234h:  66 0F BB E3                                  BTC     EBX,ESP
1238h:  66 0F BB E4                                  BTC     ESP,ESP
123Ch:  66 0F BB E5                                  BTC     EBP,ESP
1240h:  66 0F BB E6                                  BTC     ESI,ESP
1244h:  66 0F BB E7                                  BTC     EDI,ESP
1248h:  66 67 0F BB 04 24                            BTC     SS:[ESP+ESP],EAX
124Eh:  66 67 0F BB 8C 24 34 12 00 00                BTC     SS:[ESP+ESP+00001234h],ECX
1258h:  2E 66 67 0F BB 1C 24                         BTC     CS:[ESP+ESP],EBX
125Fh:  3E 66 67 0F BB 14 24                         BTC     DS:[ESP+ESP],EDX
1266h:  26 66 67 0F BB 24 24                         BTC     ES:[ESP+ESP],ESP
126Dh:  36 66 67 0F BB 2C 24                         BTC     SS:[ESP+ESP],EBP
1274h:  64 66 67 0F BB 34 24                         BTC     FS:[ESP+ESP],ESI
127Bh:  65 66 67 0F BB 3C 24                         BTC     GS:[ESP+ESP],EDI
1282h:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],ESP
128Ch:  66 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],ESP
1296h:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP+EBP],ESP
129Dh:  66 67 0F BB 24 2C                            BTC     SS:[ESP+EBP],ESP
12A3h:  66 67 0F BB 24 DA                            BTC     DS:[EDX+EBX*8],ESP
12A9h:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX+ECX*2+01h],ESP
12B0h:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],ESP
12BAh:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],ESP
12C4h:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],ESP
12CEh:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
12DAh:  F0 66 0F BB 20                               LOCK BTC     DS:[BX+SI],ESP
12DFh:  F0 66 0F BB 21                               LOCK BTC     DS:[BX+DI],ESP
12E4h:  F0 66 0F BB 22                               LOCK BTC     SS:[BP+SI],ESP
12E9h:  F0 66 0F BB 23                               LOCK BTC     SS:[BP+DI],ESP
12EEh:  F0 66 0F BB 66 00                            LOCK BTC     SS:[BP],ESP
12F4h:  F0 66 0F BB 24                               LOCK BTC     DS:[SI],ESP
12F9h:  F0 66 0F BB 25                               LOCK BTC     DS:[DI],ESP
12FEh:  F0 66 0F BB A0 34 12                         LOCK BTC     DS:[BX+SI+1234h],ESP
1305h:  F0 66 0F BB A1 34 12                         LOCK BTC     DS:[BX+DI+1234h],ESP
130Ch:  F0 66 0F BB A2 34 12                         LOCK BTC     SS:[BP+SI+1234h],ESP
1313h:  F0 66 0F BB A3 34 12                         LOCK BTC     SS:[BP+DI+1234h],ESP
131Ah:  F0 66 0F BB A6 34 12                         LOCK BTC     SS:[BP+1234h],ESP
1321h:  F0 66 0F BB A4 34 12                         LOCK BTC     DS:[SI+1234h],ESP
1328h:  F0 66 0F BB A5 34 12                         LOCK BTC     DS:[DI+1234h],ESP
132Fh:  66 0F BA FC 01                               BTC     ESP,01h
1334h:  66 0F BA FC FF                               BTC     ESP,0FFh
1339h:  66 0F BB E8                                  BTC     EAX,EBP
133Dh:  66 0F BB E9                                  BTC     ECX,EBP
1341h:  66 0F BB EA                                  BTC     EDX,EBP
1345h:  66 0F BB EB                                  BTC     EBX,EBP
1349h:  66 0F BB EC                                  BTC     ESP,EBP
134Dh:  66 0F BB ED                                  BTC     EBP,EBP
1351h:  66 0F BB EE                                  BTC     ESI,EBP
1355h:  66 0F BB EF                                  BTC     EDI,EBP
1359h:  66 67 0F BB 45 00                            BTC     SS:[EBP],EAX
135Fh:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP+00001234h],ECX
1368h:  2E 66 67 0F BB 5D 00                         BTC     CS:[EBP],EBX
136Fh:  3E 66 67 0F BB 55 00                         BTC     DS:[EBP],EDX
1376h:  26 66 67 0F BB 65 00                         BTC     ES:[EBP],ESP
137Dh:  36 66 67 0F BB 6D 00                         BTC     SS:[EBP],EBP
1384h:  64 66 67 0F BB 75 00                         BTC     FS:[EBP],ESI
138Bh:  65 66 67 0F BB 7D 00                         BTC     GS:[EBP],EDI
1392h:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EBP
139Ch:  66 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],EBP
13A6h:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP+EBP],EBP
13ADh:  66 67 0F BB 2C 2C                            BTC     SS:[ESP+EBP],EBP
13B3h:  66 67 0F BB 2C DA                            BTC     DS:[EDX+EBX*8],EBP
13B9h:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX+ECX*2+01h],EBP
13C0h:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EBP
13CAh:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EBP
13D4h:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EBP
13DEh:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
13EAh:  F0 66 0F BB 28                               LOCK BTC     DS:[BX+SI],EBP
13EFh:  F0 66 0F BB 29                               LOCK BTC     DS:[BX+DI],EBP
13F4h:  F0 66 0F BB 2A                               LOCK BTC     SS:[BP+SI],EBP
13F9h:  F0 66 0F BB 2B                               LOCK BTC     SS:[BP+DI],EBP
13FEh:  F0 66 0F BB 6E 00                            LOCK BTC     SS:[BP],EBP
1404h:  F0 66 0F BB 2C                               LOCK BTC     DS:[SI],EBP
1409h:  F0 66 0F BB 2D                               LOCK BTC     DS:[DI],EBP
140Eh:  F0 66 0F BB A8 34 12                         LOCK BTC     DS:[BX+SI+1234h],EBP
1415h:  F0 66 0F BB A9 34 12                         LOCK BTC     DS:[BX+DI+1234h],EBP
141Ch:  F0 66 0F BB AA 34 12                         LOCK BTC     SS:[BP+SI+1234h],EBP
1423h:  F0 66 0F BB AB 34 12                         LOCK BTC     SS:[BP+DI+1234h],EBP
142Ah:  F0 66 0F BB AE 34 12                         LOCK BTC     SS:[BP+1234h],EBP
1431h:  F0 66 0F BB AC 34 12                         LOCK BTC     DS:[SI+1234h],EBP
1438h:  F0 66 0F BB AD 34 12                         LOCK BTC     DS:[DI+1234h],EBP
143Fh:  66 0F BA FD 01                               BTC     EBP,01h
1444h:  66 0F BA FD FF                               BTC     EBP,0FFh
1449h:  66 0F BB F0                                  BTC     EAX,ESI
144Dh:  66 0F BB F1                                  BTC     ECX,ESI
1451h:  66 0F BB F2                                  BTC     EDX,ESI
1455h:  66 0F BB F3                                  BTC     EBX,ESI
1459h:  66 0F BB F4                                  BTC     ESP,ESI
145Dh:  66 0F BB F5                                  BTC     EBP,ESI
1461h:  66 0F BB F6                                  BTC     ESI,ESI
1465h:  66 0F BB F7                                  BTC     EDI,ESI
1469h:  66 67 0F BB 06                               BTC     DS:[ESI],EAX
146Eh:  66 67 0F BB 8E 34 12 00 00                   BTC     DS:[ESI+00001234h],ECX
1477h:  2E 66 67 0F BB 1E                            BTC     CS:[ESI],EBX
147Dh:  3E 66 67 0F BB 16                            BTC     DS:[ESI],EDX
1483h:  26 66 67 0F BB 26                            BTC     ES:[ESI],ESP
1489h:  36 66 67 0F BB 2E                            BTC     SS:[ESI],EBP
148Fh:  64 66 67 0F BB 36                            BTC     FS:[ESI],ESI
1495h:  65 66 67 0F BB 3E                            BTC     GS:[ESI],EDI
149Bh:  66 67 0F BB B4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],ESI
14A5h:  66 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],ESI
14AFh:  66 67 0F BB 74 2D 00                         BTC     SS:[EBP+EBP],ESI
14B6h:  66 67 0F BB 34 2C                            BTC     SS:[ESP+EBP],ESI
14BCh:  66 67 0F BB 34 DA                            BTC     DS:[EDX+EBX*8],ESI
14C2h:  66 67 0F BB 74 4B 01                         BTC     DS:[EBX+ECX*2+01h],ESI
14C9h:  66 67 0F BB B4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],ESI
14D3h:  66 67 0F BB B4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],ESI
14DDh:  66 67 0F BB B4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],ESI
14E7h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
14F3h:  F0 66 0F BB 30                               LOCK BTC     DS:[BX+SI],ESI
14F8h:  F0 66 0F BB 31                               LOCK BTC     DS:[BX+DI],ESI
14FDh:  F0 66 0F BB 32                               LOCK BTC     SS:[BP+SI],ESI
1502h:  F0 66 0F BB 33                               LOCK BTC     SS:[BP+DI],ESI
1507h:  F0 66 0F BB 76 00                            LOCK BTC     SS:[BP],ESI
150Dh:  F0 66 0F BB 34                               LOCK BTC     DS:[SI],ESI
1512h:  F0 66 0F BB 35                               LOCK BTC     DS:[DI],ESI
1517h:  F0 66 0F BB B0 34 12                         LOCK BTC     DS:[BX+SI+1234h],ESI
151Eh:  F0 66 0F BB B1 34 12                         LOCK BTC     DS:[BX+DI+1234h],ESI
1525h:  F0 66 0F BB B2 34 12                         LOCK BTC     SS:[BP+SI+1234h],ESI
152Ch:  F0 66 0F BB B3 34 12                         LOCK BTC     SS:[BP+DI+1234h],ESI
1533h:  F0 66 0F BB B6 34 12                         LOCK BTC     SS:[BP+1234h],ESI
153Ah:  F0 66 0F BB B4 34 12                         LOCK BTC     DS:[SI+1234h],ESI
1541h:  F0 66 0F BB B5 34 12                         LOCK BTC     DS:[DI+1234h],ESI
1548h:  66 0F BA FE 01                               BTC     ESI,01h
154Dh:  66 0F BA FE FF                               BTC     ESI,0FFh
1552h:  66 0F BB F8                                  BTC     EAX,EDI
1556h:  66 0F BB F9                                  BTC     ECX,EDI
155Ah:  66 0F BB FA                                  BTC     EDX,EDI
155Eh:  66 0F BB FB                                  BTC     EBX,EDI
1562h:  66 0F BB FC                                  BTC     ESP,EDI
1566h:  66 0F BB FD                                  BTC     EBP,EDI
156Ah:  66 0F BB FE                                  BTC     ESI,EDI
156Eh:  66 0F BB FF                                  BTC     EDI,EDI
1572h:  66 67 0F BB 07                               BTC     DS:[EDI],EAX
1577h:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI+00001234h],ECX
1580h:  2E 66 67 0F BB 1F                            BTC     CS:[EDI],EBX
1586h:  3E 66 67 0F BB 17                            BTC     DS:[EDI],EDX
158Ch:  26 66 67 0F BB 27                            BTC     ES:[EDI],ESP
1592h:  36 66 67 0F BB 2F                            BTC     SS:[EDI],EBP
1598h:  64 66 67 0F BB 37                            BTC     FS:[EDI],ESI
159Eh:  65 66 67 0F BB 3F                            BTC     GS:[EDI],EDI
15A4h:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EDI
15AEh:  66 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],EDI
15B8h:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP+EBP],EDI
15BFh:  66 67 0F BB 3C 2C                            BTC     SS:[ESP+EBP],EDI
15C5h:  66 67 0F BB 3C DA                            BTC     DS:[EDX+EBX*8],EDI
15CBh:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX+ECX*2+01h],EDI
15D2h:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EDI
15DCh:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EDI
15E6h:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EDI
15F0h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
15FCh:  F0 66 0F BB 38                               LOCK BTC     DS:[BX+SI],EDI
1601h:  F0 66 0F BB 39                               LOCK BTC     DS:[BX+DI],EDI
1606h:  F0 66 0F BB 3A                               LOCK BTC     SS:[BP+SI],EDI
160Bh:  F0 66 0F BB 3B                               LOCK BTC     SS:[BP+DI],EDI
1610h:  F0 66 0F BB 7E 00                            LOCK BTC     SS:[BP],EDI
1616h:  F0 66 0F BB 3C                               LOCK BTC     DS:[SI],EDI
161Bh:  F0 66 0F BB 3D                               LOCK BTC     DS:[DI],EDI
1620h:  F0 66 0F BB B8 34 12                         LOCK BTC     DS:[BX+SI+1234h],EDI
1627h:  F0 66 0F BB B9 34 12                         LOCK BTC     DS:[BX+DI+1234h],EDI
162Eh:  F0 66 0F BB BA 34 12                         LOCK BTC     SS:[BP+SI+1234h],EDI
1635h:  F0 66 0F BB BB 34 12                         LOCK BTC     SS:[BP+DI+1234h],EDI
163Ch:  F0 66 0F BB BE 34 12                         LOCK BTC     SS:[BP+1234h],EDI
1643h:  F0 66 0F BB BC 34 12                         LOCK BTC     DS:[SI+1234h],EDI
164Ah:  F0 66 0F BB BD 34 12                         LOCK BTC     DS:[DI+1234h],EDI
1651h:  66 0F BA FF 01                               BTC     EDI,01h
1656h:  66 0F BA FF FF                               BTC     EDI,0FFh
165Bh:  0F BB C0                                     BTC     AX,AX
165Eh:  0F BB C1                                     BTC     CX,AX
1661h:  0F BB C2                                     BTC     DX,AX
1664h:  0F BB C3                                     BTC     BX,AX
1667h:  0F BB C4                                     BTC     SP,AX
166Ah:  0F BB C5                                     BTC     BP,AX
166Dh:  0F BB C6                                     BTC     SI,AX
1670h:  0F BB C7                                     BTC     DI,AX
1673h:  0F BB 00                                     BTC     DS:[BX+SI],AX
1676h:  0F BB 01                                     BTC     DS:[BX+DI],AX
1679h:  0F BB 02                                     BTC     SS:[BP+SI],AX
167Ch:  0F BB 03                                     BTC     SS:[BP+DI],AX
167Fh:  0F BB 46 00                                  BTC     SS:[BP],AX
1683h:  0F BB 04                                     BTC     DS:[SI],AX
1686h:  0F BB 05                                     BTC     DS:[DI],AX
1689h:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234h],AX
168Eh:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234h],AX
1693h:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234h],AX
1698h:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234h],AX
169Dh:  0F BB 86 34 12                               BTC     SS:[BP+1234h],AX
16A2h:  0F BB 84 34 12                               BTC     DS:[SI+1234h],AX
16A7h:  0F BB 85 34 12                               BTC     DS:[DI+1234h],AX
16ACh:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
16B0h:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
16B4h:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
16B8h:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
16BCh:  2E 0F BB 46 00                               BTC     CS:[BP],AX
16C1h:  2E 0F BB 04                                  BTC     CS:[SI],AX
16C5h:  2E 0F BB 05                                  BTC     CS:[DI],AX
16C9h:  3E 0F BB 00                                  BTC     DS:[BX+SI],AX
16CDh:  3E 0F BB 01                                  BTC     DS:[BX+DI],AX
16D1h:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
16D5h:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
16D9h:  3E 0F BB 46 00                               BTC     DS:[BP],AX
16DEh:  3E 0F BB 04                                  BTC     DS:[SI],AX
16E2h:  3E 0F BB 05                                  BTC     DS:[DI],AX
16E6h:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
16EAh:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
16EEh:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
16F2h:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
16F6h:  26 0F BB 46 00                               BTC     ES:[BP],AX
16FBh:  26 0F BB 04                                  BTC     ES:[SI],AX
16FFh:  26 0F BB 05                                  BTC     ES:[DI],AX
1703h:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
1707h:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
170Bh:  36 0F BB 02                                  BTC     SS:[BP+SI],AX
170Fh:  36 0F BB 03                                  BTC     SS:[BP+DI],AX
1713h:  36 0F BB 46 00                               BTC     SS:[BP],AX
1718h:  36 0F BB 04                                  BTC     SS:[SI],AX
171Ch:  36 0F BB 05                                  BTC     SS:[DI],AX
1720h:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
1724h:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
1728h:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
172Ch:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
1730h:  64 0F BB 46 00                               BTC     FS:[BP],AX
1735h:  64 0F BB 04                                  BTC     FS:[SI],AX
1739h:  64 0F BB 05                                  BTC     FS:[DI],AX
173Dh:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
1741h:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
1745h:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
1749h:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
174Dh:  65 0F BB 46 00                               BTC     GS:[BP],AX
1752h:  65 0F BB 04                                  BTC     GS:[SI],AX
1756h:  65 0F BB 05                                  BTC     GS:[DI],AX
175Ah:  0F BA F8 01                                  BTC     AX,01h
175Eh:  0F BA F8 FF                                  BTC     AX,0FFh
1762h:  0F BB C8                                     BTC     AX,CX
1765h:  0F BB C9                                     BTC     CX,CX
1768h:  0F BB CA                                     BTC     DX,CX
176Bh:  0F BB CB                                     BTC     BX,CX
176Eh:  0F BB CC                                     BTC     SP,CX
1771h:  0F BB CD                                     BTC     BP,CX
1774h:  0F BB CE                                     BTC     SI,CX
1777h:  0F BB CF                                     BTC     DI,CX
177Ah:  0F BB 08                                     BTC     DS:[BX+SI],CX
177Dh:  0F BB 09                                     BTC     DS:[BX+DI],CX
1780h:  0F BB 0A                                     BTC     SS:[BP+SI],CX
1783h:  0F BB 0B                                     BTC     SS:[BP+DI],CX
1786h:  0F BB 4E 00                                  BTC     SS:[BP],CX
178Ah:  0F BB 0C                                     BTC     DS:[SI],CX
178Dh:  0F BB 0D                                     BTC     DS:[DI],CX
1790h:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234h],CX
1795h:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234h],CX
179Ah:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234h],CX
179Fh:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234h],CX
17A4h:  0F BB 8E 34 12                               BTC     SS:[BP+1234h],CX
17A9h:  0F BB 8C 34 12                               BTC     DS:[SI+1234h],CX
17AEh:  0F BB 8D 34 12                               BTC     DS:[DI+1234h],CX
17B3h:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
17B7h:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
17BBh:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
17BFh:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
17C3h:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
17C8h:  2E 0F BB 0C                                  BTC     CS:[SI],CX
17CCh:  2E 0F BB 0D                                  BTC     CS:[DI],CX
17D0h:  3E 0F BB 08                                  BTC     DS:[BX+SI],CX
17D4h:  3E 0F BB 09                                  BTC     DS:[BX+DI],CX
17D8h:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
17DCh:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
17E0h:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
17E5h:  3E 0F BB 0C                                  BTC     DS:[SI],CX
17E9h:  3E 0F BB 0D                                  BTC     DS:[DI],CX
17EDh:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
17F1h:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
17F5h:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
17F9h:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
17FDh:  26 0F BB 4E 00                               BTC     ES:[BP],CX
1802h:  26 0F BB 0C                                  BTC     ES:[SI],CX
1806h:  26 0F BB 0D                                  BTC     ES:[DI],CX
180Ah:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
180Eh:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
1812h:  36 0F BB 0A                                  BTC     SS:[BP+SI],CX
1816h:  36 0F BB 0B                                  BTC     SS:[BP+DI],CX
181Ah:  36 0F BB 4E 00                               BTC     SS:[BP],CX
181Fh:  36 0F BB 0C                                  BTC     SS:[SI],CX
1823h:  36 0F BB 0D                                  BTC     SS:[DI],CX
1827h:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
182Bh:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
182Fh:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
1833h:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
1837h:  64 0F BB 4E 00                               BTC     FS:[BP],CX
183Ch:  64 0F BB 0C                                  BTC     FS:[SI],CX
1840h:  64 0F BB 0D                                  BTC     FS:[DI],CX
1844h:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
1848h:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
184Ch:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
1850h:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
1854h:  65 0F BB 4E 00                               BTC     GS:[BP],CX
1859h:  65 0F BB 0C                                  BTC     GS:[SI],CX
185Dh:  65 0F BB 0D                                  BTC     GS:[DI],CX
1861h:  0F BA F9 01                                  BTC     CX,01h
1865h:  0F BA F9 FF                                  BTC     CX,0FFh
1869h:  0F BB D0                                     BTC     AX,DX
186Ch:  0F BB D1                                     BTC     CX,DX
186Fh:  0F BB D2                                     BTC     DX,DX
1872h:  0F BB D3                                     BTC     BX,DX
1875h:  0F BB D4                                     BTC     SP,DX
1878h:  0F BB D5                                     BTC     BP,DX
187Bh:  0F BB D6                                     BTC     SI,DX
187Eh:  0F BB D7                                     BTC     DI,DX
1881h:  0F BB 10                                     BTC     DS:[BX+SI],DX
1884h:  0F BB 11                                     BTC     DS:[BX+DI],DX
1887h:  0F BB 12                                     BTC     SS:[BP+SI],DX
188Ah:  0F BB 13                                     BTC     SS:[BP+DI],DX
188Dh:  0F BB 56 00                                  BTC     SS:[BP],DX
1891h:  0F BB 14                                     BTC     DS:[SI],DX
1894h:  0F BB 15                                     BTC     DS:[DI],DX
1897h:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234h],DX
189Ch:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234h],DX
18A1h:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234h],DX
18A6h:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234h],DX
18ABh:  0F BB 96 34 12                               BTC     SS:[BP+1234h],DX
18B0h:  0F BB 94 34 12                               BTC     DS:[SI+1234h],DX
18B5h:  0F BB 95 34 12                               BTC     DS:[DI+1234h],DX
18BAh:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
18BEh:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
18C2h:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
18C6h:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
18CAh:  2E 0F BB 56 00                               BTC     CS:[BP],DX
18CFh:  2E 0F BB 14                                  BTC     CS:[SI],DX
18D3h:  2E 0F BB 15                                  BTC     CS:[DI],DX
18D7h:  3E 0F BB 10                                  BTC     DS:[BX+SI],DX
18DBh:  3E 0F BB 11                                  BTC     DS:[BX+DI],DX
18DFh:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
18E3h:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
18E7h:  3E 0F BB 56 00                               BTC     DS:[BP],DX
18ECh:  3E 0F BB 14                                  BTC     DS:[SI],DX
18F0h:  3E 0F BB 15                                  BTC     DS:[DI],DX
18F4h:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
18F8h:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
18FCh:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
1900h:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
1904h:  26 0F BB 56 00                               BTC     ES:[BP],DX
1909h:  26 0F BB 14                                  BTC     ES:[SI],DX
190Dh:  26 0F BB 15                                  BTC     ES:[DI],DX
1911h:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
1915h:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
1919h:  36 0F BB 12                                  BTC     SS:[BP+SI],DX
191Dh:  36 0F BB 13                                  BTC     SS:[BP+DI],DX
1921h:  36 0F BB 56 00                               BTC     SS:[BP],DX
1926h:  36 0F BB 14                                  BTC     SS:[SI],DX
192Ah:  36 0F BB 15                                  BTC     SS:[DI],DX
192Eh:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
1932h:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
1936h:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
193Ah:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
193Eh:  64 0F BB 56 00                               BTC     FS:[BP],DX
1943h:  64 0F BB 14                                  BTC     FS:[SI],DX
1947h:  64 0F BB 15                                  BTC     FS:[DI],DX
194Bh:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
194Fh:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
1953h:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
1957h:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
195Bh:  65 0F BB 56 00                               BTC     GS:[BP],DX
1960h:  65 0F BB 14                                  BTC     GS:[SI],DX
1964h:  65 0F BB 15                                  BTC     GS:[DI],DX
1968h:  0F BA FA 01                                  BTC     DX,01h
196Ch:  0F BA FA FF                                  BTC     DX,0FFh
1970h:  0F BB D8                                     BTC     AX,BX
1973h:  0F BB D9                                     BTC     CX,BX
1976h:  0F BB DA                                     BTC     DX,BX
1979h:  0F BB DB                                     BTC     BX,BX
197Ch:  0F BB DC                                     BTC     SP,BX
197Fh:  0F BB DD                                     BTC     BP,BX
1982h:  0F BB DE                                     BTC     SI,BX
1985h:  0F BB DF                                     BTC     DI,BX
1988h:  0F BB 18                                     BTC     DS:[BX+SI],BX
198Bh:  0F BB 19                                     BTC     DS:[BX+DI],BX
198Eh:  0F BB 1A                                     BTC     SS:[BP+SI],BX
1991h:  0F BB 1B                                     BTC     SS:[BP+DI],BX
1994h:  0F BB 5E 00                                  BTC     SS:[BP],BX
1998h:  0F BB 1C                                     BTC     DS:[SI],BX
199Bh:  0F BB 1D                                     BTC     DS:[DI],BX
199Eh:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234h],BX
19A3h:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234h],BX
19A8h:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234h],BX
19ADh:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234h],BX
19B2h:  0F BB 9E 34 12                               BTC     SS:[BP+1234h],BX
19B7h:  0F BB 9C 34 12                               BTC     DS:[SI+1234h],BX
19BCh:  0F BB 9D 34 12                               BTC     DS:[DI+1234h],BX
19C1h:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
19C5h:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
19C9h:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
19CDh:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
19D1h:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
19D6h:  2E 0F BB 1C                                  BTC     CS:[SI],BX
19DAh:  2E 0F BB 1D                                  BTC     CS:[DI],BX
19DEh:  3E 0F BB 18                                  BTC     DS:[BX+SI],BX
19E2h:  3E 0F BB 19                                  BTC     DS:[BX+DI],BX
19E6h:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
19EAh:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
19EEh:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
19F3h:  3E 0F BB 1C                                  BTC     DS:[SI],BX
19F7h:  3E 0F BB 1D                                  BTC     DS:[DI],BX
19FBh:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
19FFh:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
1A03h:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
1A07h:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
1A0Bh:  26 0F BB 5E 00                               BTC     ES:[BP],BX
1A10h:  26 0F BB 1C                                  BTC     ES:[SI],BX
1A14h:  26 0F BB 1D                                  BTC     ES:[DI],BX
1A18h:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
1A1Ch:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
1A20h:  36 0F BB 1A                                  BTC     SS:[BP+SI],BX
1A24h:  36 0F BB 1B                                  BTC     SS:[BP+DI],BX
1A28h:  36 0F BB 5E 00                               BTC     SS:[BP],BX
1A2Dh:  36 0F BB 1C                                  BTC     SS:[SI],BX
1A31h:  36 0F BB 1D                                  BTC     SS:[DI],BX
1A35h:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
1A39h:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
1A3Dh:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
1A41h:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
1A45h:  64 0F BB 5E 00                               BTC     FS:[BP],BX
1A4Ah:  64 0F BB 1C                                  BTC     FS:[SI],BX
1A4Eh:  64 0F BB 1D                                  BTC     FS:[DI],BX
1A52h:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
1A56h:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
1A5Ah:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
1A5Eh:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
1A62h:  65 0F BB 5E 00                               BTC     GS:[BP],BX
1A67h:  65 0F BB 1C                                  BTC     GS:[SI],BX
1A6Bh:  65 0F BB 1D                                  BTC     GS:[DI],BX
1A6Fh:  0F BA FB 01                                  BTC     BX,01h
1A73h:  0F BA FB FF                                  BTC     BX,0FFh
1A77h:  0F BB E0                                     BTC     AX,SP
1A7Ah:  0F BB E1                                     BTC     CX,SP
1A7Dh:  0F BB E2                                     BTC     DX,SP
1A80h:  0F BB E3                                     BTC     BX,SP
1A83h:  0F BB E4                                     BTC     SP,SP
1A86h:  0F BB E5                                     BTC     BP,SP
1A89h:  0F BB E6                                     BTC     SI,SP
1A8Ch:  0F BB E7                                     BTC     DI,SP
1A8Fh:  0F BB 20                                     BTC     DS:[BX+SI],SP
1A92h:  0F BB 21                                     BTC     DS:[BX+DI],SP
1A95h:  0F BB 22                                     BTC     SS:[BP+SI],SP
1A98h:  0F BB 23                                     BTC     SS:[BP+DI],SP
1A9Bh:  0F BB 66 00                                  BTC     SS:[BP],SP
1A9Fh:  0F BB 24                                     BTC     DS:[SI],SP
1AA2h:  0F BB 25                                     BTC     DS:[DI],SP
1AA5h:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234h],SP
1AAAh:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234h],SP
1AAFh:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234h],SP
1AB4h:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234h],SP
1AB9h:  0F BB A6 34 12                               BTC     SS:[BP+1234h],SP
1ABEh:  0F BB A4 34 12                               BTC     DS:[SI+1234h],SP
1AC3h:  0F BB A5 34 12                               BTC     DS:[DI+1234h],SP
1AC8h:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
1ACCh:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
1AD0h:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
1AD4h:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
1AD8h:  2E 0F BB 66 00                               BTC     CS:[BP],SP
1ADDh:  2E 0F BB 24                                  BTC     CS:[SI],SP
1AE1h:  2E 0F BB 25                                  BTC     CS:[DI],SP
1AE5h:  3E 0F BB 20                                  BTC     DS:[BX+SI],SP
1AE9h:  3E 0F BB 21                                  BTC     DS:[BX+DI],SP
1AEDh:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
1AF1h:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
1AF5h:  3E 0F BB 66 00                               BTC     DS:[BP],SP
1AFAh:  3E 0F BB 24                                  BTC     DS:[SI],SP
1AFEh:  3E 0F BB 25                                  BTC     DS:[DI],SP
1B02h:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
1B06h:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
1B0Ah:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
1B0Eh:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
1B12h:  26 0F BB 66 00                               BTC     ES:[BP],SP
1B17h:  26 0F BB 24                                  BTC     ES:[SI],SP
1B1Bh:  26 0F BB 25                                  BTC     ES:[DI],SP
1B1Fh:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
1B23h:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
1B27h:  36 0F BB 22                                  BTC     SS:[BP+SI],SP
1B2Bh:  36 0F BB 23                                  BTC     SS:[BP+DI],SP
1B2Fh:  36 0F BB 66 00                               BTC     SS:[BP],SP
1B34h:  36 0F BB 24                                  BTC     SS:[SI],SP
1B38h:  36 0F BB 25                                  BTC     SS:[DI],SP
1B3Ch:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
1B40h:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
1B44h:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
1B48h:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
1B4Ch:  64 0F BB 66 00                               BTC     FS:[BP],SP
1B51h:  64 0F BB 24                                  BTC     FS:[SI],SP
1B55h:  64 0F BB 25                                  BTC     FS:[DI],SP
1B59h:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
1B5Dh:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
1B61h:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
1B65h:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
1B69h:  65 0F BB 66 00                               BTC     GS:[BP],SP
1B6Eh:  65 0F BB 24                                  BTC     GS:[SI],SP
1B72h:  65 0F BB 25                                  BTC     GS:[DI],SP
1B76h:  0F BA FC 01                                  BTC     SP,01h
1B7Ah:  0F BA FC FF                                  BTC     SP,0FFh
1B7Eh:  0F BB E8                                     BTC     AX,BP
1B81h:  0F BB E9                                     BTC     CX,BP
1B84h:  0F BB EA                                     BTC     DX,BP
1B87h:  0F BB EB                                     BTC     BX,BP
1B8Ah:  0F BB EC                                     BTC     SP,BP
1B8Dh:  0F BB ED                                     BTC     BP,BP
1B90h:  0F BB EE                                     BTC     SI,BP
1B93h:  0F BB EF                                     BTC     DI,BP
1B96h:  0F BB 28                                     BTC     DS:[BX+SI],BP
1B99h:  0F BB 29                                     BTC     DS:[BX+DI],BP
1B9Ch:  0F BB 2A                                     BTC     SS:[BP+SI],BP
1B9Fh:  0F BB 2B                                     BTC     SS:[BP+DI],BP
1BA2h:  0F BB 6E 00                                  BTC     SS:[BP],BP
1BA6h:  0F BB 2C                                     BTC     DS:[SI],BP
1BA9h:  0F BB 2D                                     BTC     DS:[DI],BP
1BACh:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234h],BP
1BB1h:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234h],BP
1BB6h:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234h],BP
1BBBh:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234h],BP
1BC0h:  0F BB AE 34 12                               BTC     SS:[BP+1234h],BP
1BC5h:  0F BB AC 34 12                               BTC     DS:[SI+1234h],BP
1BCAh:  0F BB AD 34 12                               BTC     DS:[DI+1234h],BP
1BCFh:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
1BD3h:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
1BD7h:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
1BDBh:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
1BDFh:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
1BE4h:  2E 0F BB 2C                                  BTC     CS:[SI],BP
1BE8h:  2E 0F BB 2D                                  BTC     CS:[DI],BP
1BECh:  3E 0F BB 28                                  BTC     DS:[BX+SI],BP
1BF0h:  3E 0F BB 29                                  BTC     DS:[BX+DI],BP
1BF4h:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
1BF8h:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
1BFCh:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
1C01h:  3E 0F BB 2C                                  BTC     DS:[SI],BP
1C05h:  3E 0F BB 2D                                  BTC     DS:[DI],BP
1C09h:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
1C0Dh:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
1C11h:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
1C15h:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
1C19h:  26 0F BB 6E 00                               BTC     ES:[BP],BP
1C1Eh:  26 0F BB 2C                                  BTC     ES:[SI],BP
1C22h:  26 0F BB 2D                                  BTC     ES:[DI],BP
1C26h:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
1C2Ah:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
1C2Eh:  36 0F BB 2A                                  BTC     SS:[BP+SI],BP
1C32h:  36 0F BB 2B                                  BTC     SS:[BP+DI],BP
1C36h:  36 0F BB 6E 00                               BTC     SS:[BP],BP
1C3Bh:  36 0F BB 2C                                  BTC     SS:[SI],BP
1C3Fh:  36 0F BB 2D                                  BTC     SS:[DI],BP
1C43h:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
1C47h:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
1C4Bh:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
1C4Fh:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
1C53h:  64 0F BB 6E 00                               BTC     FS:[BP],BP
1C58h:  64 0F BB 2C                                  BTC     FS:[SI],BP
1C5Ch:  64 0F BB 2D                                  BTC     FS:[DI],BP
1C60h:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
1C64h:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
1C68h:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
1C6Ch:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
1C70h:  65 0F BB 6E 00                               BTC     GS:[BP],BP
1C75h:  65 0F BB 2C                                  BTC     GS:[SI],BP
1C79h:  65 0F BB 2D                                  BTC     GS:[DI],BP
1C7Dh:  0F BA FD 01                                  BTC     BP,01h
1C81h:  0F BA FD FF                                  BTC     BP,0FFh
1C85h:  0F BB F0                                     BTC     AX,SI
1C88h:  0F BB F1                                     BTC     CX,SI
1C8Bh:  0F BB F2                                     BTC     DX,SI
1C8Eh:  0F BB F3                                     BTC     BX,SI
1C91h:  0F BB F4                                     BTC     SP,SI
1C94h:  0F BB F5                                     BTC     BP,SI
1C97h:  0F BB F6                                     BTC     SI,SI
1C9Ah:  0F BB F7                                     BTC     DI,SI
1C9Dh:  0F BB 30                                     BTC     DS:[BX+SI],SI
1CA0h:  0F BB 31                                     BTC     DS:[BX+DI],SI
1CA3h:  0F BB 32                                     BTC     SS:[BP+SI],SI
1CA6h:  0F BB 33                                     BTC     SS:[BP+DI],SI
1CA9h:  0F BB 76 00                                  BTC     SS:[BP],SI
1CADh:  0F BB 34                                     BTC     DS:[SI],SI
1CB0h:  0F BB 35                                     BTC     DS:[DI],SI
1CB3h:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234h],SI
1CB8h:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234h],SI
1CBDh:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234h],SI
1CC2h:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234h],SI
1CC7h:  0F BB B6 34 12                               BTC     SS:[BP+1234h],SI
1CCCh:  0F BB B4 34 12                               BTC     DS:[SI+1234h],SI
1CD1h:  0F BB B5 34 12                               BTC     DS:[DI+1234h],SI
1CD6h:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
1CDAh:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
1CDEh:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
1CE2h:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
1CE6h:  2E 0F BB 76 00                               BTC     CS:[BP],SI
1CEBh:  2E 0F BB 34                                  BTC     CS:[SI],SI
1CEFh:  2E 0F BB 35                                  BTC     CS:[DI],SI
1CF3h:  3E 0F BB 30                                  BTC     DS:[BX+SI],SI
1CF7h:  3E 0F BB 31                                  BTC     DS:[BX+DI],SI
1CFBh:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
1CFFh:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
1D03h:  3E 0F BB 76 00                               BTC     DS:[BP],SI
1D08h:  3E 0F BB 34                                  BTC     DS:[SI],SI
1D0Ch:  3E 0F BB 35                                  BTC     DS:[DI],SI
1D10h:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
1D14h:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
1D18h:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
1D1Ch:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
1D20h:  26 0F BB 76 00                               BTC     ES:[BP],SI
1D25h:  26 0F BB 34                                  BTC     ES:[SI],SI
1D29h:  26 0F BB 35                                  BTC     ES:[DI],SI
1D2Dh:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
1D31h:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
1D35h:  36 0F BB 32                                  BTC     SS:[BP+SI],SI
1D39h:  36 0F BB 33                                  BTC     SS:[BP+DI],SI
1D3Dh:  36 0F BB 76 00                               BTC     SS:[BP],SI
1D42h:  36 0F BB 34                                  BTC     SS:[SI],SI
1D46h:  36 0F BB 35                                  BTC     SS:[DI],SI
1D4Ah:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
1D4Eh:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
1D52h:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
1D56h:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
1D5Ah:  64 0F BB 76 00                               BTC     FS:[BP],SI
1D5Fh:  64 0F BB 34                                  BTC     FS:[SI],SI
1D63h:  64 0F BB 35                                  BTC     FS:[DI],SI
1D67h:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
1D6Bh:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
1D6Fh:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
1D73h:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
1D77h:  65 0F BB 76 00                               BTC     GS:[BP],SI
1D7Ch:  65 0F BB 34                                  BTC     GS:[SI],SI
1D80h:  65 0F BB 35                                  BTC     GS:[DI],SI
1D84h:  0F BA FE 01                                  BTC     SI,01h
1D88h:  0F BA FE FF                                  BTC     SI,0FFh
1D8Ch:  0F BB F8                                     BTC     AX,DI
1D8Fh:  0F BB F9                                     BTC     CX,DI
1D92h:  0F BB FA                                     BTC     DX,DI
1D95h:  0F BB FB                                     BTC     BX,DI
1D98h:  0F BB FC                                     BTC     SP,DI
1D9Bh:  0F BB FD                                     BTC     BP,DI
1D9Eh:  0F BB FE                                     BTC     SI,DI
1DA1h:  0F BB FF                                     BTC     DI,DI
1DA4h:  0F BB 38                                     BTC     DS:[BX+SI],DI
1DA7h:  0F BB 39                                     BTC     DS:[BX+DI],DI
1DAAh:  0F BB 3A                                     BTC     SS:[BP+SI],DI
1DADh:  0F BB 3B                                     BTC     SS:[BP+DI],DI
1DB0h:  0F BB 7E 00                                  BTC     SS:[BP],DI
1DB4h:  0F BB 3C                                     BTC     DS:[SI],DI
1DB7h:  0F BB 3D                                     BTC     DS:[DI],DI
1DBAh:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234h],DI
1DBFh:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234h],DI
1DC4h:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234h],DI
1DC9h:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234h],DI
1DCEh:  0F BB BE 34 12                               BTC     SS:[BP+1234h],DI
1DD3h:  0F BB BC 34 12                               BTC     DS:[SI+1234h],DI
1DD8h:  0F BB BD 34 12                               BTC     DS:[DI+1234h],DI
1DDDh:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
1DE1h:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
1DE5h:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
1DE9h:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
1DEDh:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
1DF2h:  2E 0F BB 3C                                  BTC     CS:[SI],DI
1DF6h:  2E 0F BB 3D                                  BTC     CS:[DI],DI
1DFAh:  3E 0F BB 38                                  BTC     DS:[BX+SI],DI
1DFEh:  3E 0F BB 39                                  BTC     DS:[BX+DI],DI
1E02h:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
1E06h:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
1E0Ah:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
1E0Fh:  3E 0F BB 3C                                  BTC     DS:[SI],DI
1E13h:  3E 0F BB 3D                                  BTC     DS:[DI],DI
1E17h:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
1E1Bh:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
1E1Fh:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
1E23h:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
1E27h:  26 0F BB 7E 00                               BTC     ES:[BP],DI
1E2Ch:  26 0F BB 3C                                  BTC     ES:[SI],DI
1E30h:  26 0F BB 3D                                  BTC     ES:[DI],DI
1E34h:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
1E38h:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
1E3Ch:  36 0F BB 3A                                  BTC     SS:[BP+SI],DI
1E40h:  36 0F BB 3B                                  BTC     SS:[BP+DI],DI
1E44h:  36 0F BB 7E 00                               BTC     SS:[BP],DI
1E49h:  36 0F BB 3C                                  BTC     SS:[SI],DI
1E4Dh:  36 0F BB 3D                                  BTC     SS:[DI],DI
1E51h:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
1E55h:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
1E59h:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
1E5Dh:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
1E61h:  64 0F BB 7E 00                               BTC     FS:[BP],DI
1E66h:  64 0F BB 3C                                  BTC     FS:[SI],DI
1E6Ah:  64 0F BB 3D                                  BTC     FS:[DI],DI
1E6Eh:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
1E72h:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
1E76h:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
1E7Ah:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
1E7Eh:  65 0F BB 7E 00                               BTC     GS:[BP],DI
1E83h:  65 0F BB 3C                                  BTC     GS:[SI],DI
1E87h:  65 0F BB 3D                                  BTC     GS:[DI],DI
1E8Bh:  0F BA FF 01                                  BTC     DI,01h
1E8Fh:  0F BA FF FF                                  BTC     DI,0FFh
1E93h:  66 0F BA F8 FF                               BTC     EAX,0FFh
1E98h:  66 0F BA F9 FF                               BTC     ECX,0FFh
1E9Dh:  66 0F BA FA FF                               BTC     EDX,0FFh
1EA2h:  66 0F BA FB FF                               BTC     EBX,0FFh
1EA7h:  66 0F BA FC FF                               BTC     ESP,0FFh
1EACh:  66 0F BA FD FF                               BTC     EBP,0FFh
1EB1h:  66 0F BA FE FF                               BTC     ESI,0FFh
1EB6h:  66 0F BA FF FF                               BTC     EDI,0FFh
1EBBh:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321h],AX
1EC5h:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321h],AX
1ECFh:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321h],AX
1ED9h:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321h],AX
1EE3h:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321h],AX
1EECh:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321h],AX
1EF5h:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678h],9Ah
1F02h:  70 FE                                        JO      1F02h
1F04h:  71 59                                        JNO     1F5Fh
1F06h:  72 FA                                        JB      1F02h
1F08h:  73 55                                        JNB     1F5Fh
1F0Ah:  74 F6                                        JZ      1F02h
1F0Ch:  75 51                                        JNZ     1F5Fh
1F0Eh:  76 F2                                        JBE     1F02h
1F10h:  77 4D                                        JNBE    1F5Fh
1F12h:  78 EE                                        JS      1F02h
1F14h:  79 49                                        JNS     1F5Fh
1F16h:  7A EA                                        JP      1F02h
1F18h:  7B 45                                        JNP     1F5Fh
1F1Ah:  7C E6                                        JL      1F02h
1F1Ch:  7D 41                                        JNL     1F5Fh
1F1Eh:  7E E2                                        JLE     1F02h
1F20h:  7F 3D                                        JNLE    1F5Fh
1F22h:  E3 DE                                        JCXZ    1F02h
1F24h:  67 E3 38                                     JECXZ   1F5Fh
1F27h:  70 92                                        JO      1EBBh
1F29h:  0F 81 D3 E1                                  JNO     0100h
1F2Dh:  72 8C                                        JB      1EBBh
1F2Fh:  0F 83 CD E1                                  JNB     0100h
1F33h:  74 86                                        JZ      1EBBh
1F35h:  0F 85 C7 E1                                  JNZ     0100h
1F39h:  76 80                                        JBE     1EBBh
1F3Bh:  0F 87 C1 E1                                  JNBE    0100h
1F3Fh:  0F 88 78 FF                                  JS      1EBBh
1F43h:  0F 89 B9 E1                                  JNS     0100h
1F47h:  0F 8A 70 FF                                  JP      1EBBh
1F4Bh:  0F 8B B1 E1                                  JNP     0100h
1F4Fh:  0F 8C 68 FF                                  JL      1EBBh
1F53h:  0F 8D A9 E1                                  JNL     0100h
1F57h:  0F 8E 60 FF                                  JLE     1EBBh
1F5Bh:  0F 8F A1 E1                                  JNLE    0100h
1F5Fh:  D5 0A                                        AAD
