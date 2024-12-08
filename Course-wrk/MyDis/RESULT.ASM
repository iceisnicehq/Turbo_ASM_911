0100h:  0F BA 3E FF FF 01                                 BTC     WORD PTR [0FFFFh], 01h
0106h:  2E 67 0F BB 84 05 00 00 FF FF                     BTC     WORD PTR CS:[EBP + EAX + 0FFFF0000h], AX
0110h:  2E 67 0F BB 44 05 01                              BTC     WORD PTR CS:[EBP + EAX + 01h], AX
0117h:  2E 67 0F BB 84 0B FE FF 00 00                     BTC     WORD PTR CS:[EBX + ECX + 00000FFFEh], AX
0121h:  0F BA 3E FF FF FF                                 BTC     WORD PTR [0FFFFh], 0FFh
0127h:  2E 67 0F BB 44 05 FF                              BTC     WORD PTR CS:[EBP + EAX + 0FFh], AX
012Eh:  2E 67 0F BB 04 0B                                 BTC     WORD PTR CS:[EBX + ECX], AX
0134h:  3E 67 0F BA 7C 2D 00 01                           BTC     WORD PTR DS:[EBP + EBP], 01h
013Ch:  67 0F BA 7C 00 1F 01                              BTC     WORD PTR [EAX + EAX + 1Fh], 01h
0143h:  F0 66 3E 67 0F BA BC 28 78 56 34 12 01            LOCK    BTC DWORD PTR DS:[EAX + EBP + 12345678h], 01h
0150h:  67 0F BA BC 43 0F 10 00 00 01                     BTC     WORD PTR [EBX + EAX*2 + 0000100Fh], 01h
015Ah:  67 0F BA BC 81 FF 00 00 00 01                     BTC     WORD PTR [ECX + EAX*4 + 000000FFh], 01h
0164h:  67 0F BA BC C0 FF 00 00 00 01                     BTC     WORD PTR [EAX + EAX*8 + 000000FFh], 01h
016Eh:  3E 67 0F BA BC 2D FF 00 00 00 01                  BTC     WORD PTR DS:[EBP + EBP + 000000FFh], 01h
0179h:  3E 67 0F BA 7C 2D 00 01                           BTC     WORD PTR DS:[EBP + EBP], 01h
0181h:  D5 0A                                             AAD     
0183h:  66 E3 E0                                          JCXZ    0166h
0186h:  67 E3 E0                                          JECXZ   0169h
0189h:  66 67 E3 E0                                       JECXZ   016Dh
018Dh:  2E 0F 80 EE F9                                    JO      0FB80h
0192h:  3E 0F 80 EE F9                                    JO      0FB85h
0197h:  0F BA F8 01                                       BTC     AX, 01h
019Bh:  0F BA F9 FF                                       BTC     CX, 0FFh
019Fh:  0F BA FA 01                                       BTC     DX, 01h
01A3h:  0F BA FB FF                                       BTC     BX, 0FFh
01A7h:  0F BA FC 01                                       BTC     SP, 01h
01ABh:  0F BA FD FF                                       BTC     BP, 0FFh
01AFh:  0F BA FE 01                                       BTC     SI, 01h
01B3h:  0F BA FF FF                                       BTC     DI, 0FFh
01B7h:  66 0F BA F8 01                                    BTC     EAX, 01h
01BCh:  66 0F BA F9 FF                                    BTC     ECX, 0FFh
01C1h:  66 0F BA FA 01                                    BTC     EDX, 01h
01C6h:  66 0F BA FB FF                                    BTC     EBX, 0FFh
01CBh:  66 0F BA FC 01                                    BTC     ESP, 01h
01D0h:  66 0F BA FD FF                                    BTC     EBP, 0FFh
01D5h:  66 0F BA FE 01                                    BTC     ESI, 01h
01DAh:  66 0F BA FF FF                                    BTC     EDI, 0FFh
01DFh:  F0 0F BA F8 01                                    LOCK    BTC AX, 01h
01E4h:  0F BB C0                                          BTC     AX, AX
01E7h:  0F BB C8                                          BTC     AX, CX
01EAh:  0F BB D0                                          BTC     AX, DX
01EDh:  0F BB D8                                          BTC     AX, BX
01F0h:  0F BB E0                                          BTC     AX, SP
01F3h:  0F BB E8                                          BTC     AX, BP
01F6h:  0F BB F0                                          BTC     AX, SI
01F9h:  0F BB F8                                          BTC     AX, DI
01FCh:  0F BB C1                                          BTC     CX, AX
01FFh:  0F BB C9                                          BTC     CX, CX
0202h:  0F BB D1                                          BTC     CX, DX
0205h:  0F BB D9                                          BTC     CX, BX
0208h:  0F BB E1                                          BTC     CX, SP
020Bh:  0F BB E9                                          BTC     CX, BP
020Eh:  0F BB F1                                          BTC     CX, SI
0211h:  0F BB F9                                          BTC     CX, DI
0214h:  0F BB C2                                          BTC     DX, AX
0217h:  0F BB CA                                          BTC     DX, CX
021Ah:  0F BB D2                                          BTC     DX, DX
021Dh:  0F BB DA                                          BTC     DX, BX
0220h:  0F BB E2                                          BTC     DX, SP
0223h:  0F BB EA                                          BTC     DX, BP
0226h:  0F BB F2                                          BTC     DX, SI
0229h:  0F BB FA                                          BTC     DX, DI
022Ch:  0F BB C3                                          BTC     BX, AX
022Fh:  0F BB CB                                          BTC     BX, CX
0232h:  0F BB D3                                          BTC     BX, DX
0235h:  0F BB DB                                          BTC     BX, BX
0238h:  0F BB E3                                          BTC     BX, SP
023Bh:  0F BB EB                                          BTC     BX, BP
023Eh:  0F BB F3                                          BTC     BX, SI
0241h:  0F BB FB                                          BTC     BX, DI
0244h:  0F BB C4                                          BTC     SP, AX
0247h:  0F BB CC                                          BTC     SP, CX
024Ah:  0F BB D4                                          BTC     SP, DX
024Dh:  0F BB DC                                          BTC     SP, BX
0250h:  0F BB E4                                          BTC     SP, SP
0253h:  0F BB EC                                          BTC     SP, BP
0256h:  0F BB F4                                          BTC     SP, SI
0259h:  0F BB FC                                          BTC     SP, DI
025Ch:  0F BB C5                                          BTC     BP, AX
025Fh:  0F BB CD                                          BTC     BP, CX
0262h:  0F BB D5                                          BTC     BP, DX
0265h:  0F BB DD                                          BTC     BP, BX
0268h:  0F BB E5                                          BTC     BP, SP
026Bh:  0F BB ED                                          BTC     BP, BP
026Eh:  0F BB F5                                          BTC     BP, SI
0271h:  0F BB FD                                          BTC     BP, DI
0274h:  0F BB C6                                          BTC     SI, AX
0277h:  0F BB CE                                          BTC     SI, CX
027Ah:  0F BB D6                                          BTC     SI, DX
027Dh:  0F BB DE                                          BTC     SI, BX
0280h:  0F BB E6                                          BTC     SI, SP
0283h:  0F BB EE                                          BTC     SI, BP
0286h:  0F BB F6                                          BTC     SI, SI
0289h:  0F BB FE                                          BTC     SI, DI
028Ch:  0F BB C7                                          BTC     DI, AX
028Fh:  0F BB CF                                          BTC     DI, CX
0292h:  0F BB D7                                          BTC     DI, DX
0295h:  0F BB DF                                          BTC     DI, BX
0298h:  0F BB E7                                          BTC     DI, SP
029Bh:  0F BB EF                                          BTC     DI, BP
029Eh:  0F BB F7                                          BTC     DI, SI
02A1h:  0F BB FF                                          BTC     DI, DI
02A4h:  F0 0F BB C0                                       LOCK    BTC AX, AX
02A8h:  66 0F BB C0                                       BTC     EAX, EAX
02ACh:  66 0F BB D8                                       BTC     EAX, EBX
02B0h:  66 0F BB C8                                       BTC     EAX, ECX
02B4h:  66 0F BB D0                                       BTC     EAX, EDX
02B8h:  66 0F BB E0                                       BTC     EAX, ESP
02BCh:  66 0F BB E8                                       BTC     EAX, EBP
02C0h:  66 0F BB F0                                       BTC     EAX, ESI
02C4h:  66 0F BB F8                                       BTC     EAX, EDI
02C8h:  66 0F BB C3                                       BTC     EBX, EAX
02CCh:  66 0F BB DB                                       BTC     EBX, EBX
02D0h:  66 0F BB CB                                       BTC     EBX, ECX
02D4h:  66 0F BB D3                                       BTC     EBX, EDX
02D8h:  66 0F BB E3                                       BTC     EBX, ESP
02DCh:  66 0F BB EB                                       BTC     EBX, EBP
02E0h:  66 0F BB F3                                       BTC     EBX, ESI
02E4h:  66 0F BB FB                                       BTC     EBX, EDI
02E8h:  66 0F BB C1                                       BTC     ECX, EAX
02ECh:  66 0F BB D9                                       BTC     ECX, EBX
02F0h:  66 0F BB C9                                       BTC     ECX, ECX
02F4h:  66 0F BB D1                                       BTC     ECX, EDX
02F8h:  66 0F BB E1                                       BTC     ECX, ESP
02FCh:  66 0F BB E9                                       BTC     ECX, EBP
0300h:  66 0F BB F1                                       BTC     ECX, ESI
0304h:  66 0F BB F9                                       BTC     ECX, EDI
0308h:  66 0F BB C2                                       BTC     EDX, EAX
030Ch:  66 0F BB DA                                       BTC     EDX, EBX
0310h:  66 0F BB CA                                       BTC     EDX, ECX
0314h:  66 0F BB D2                                       BTC     EDX, EDX
0318h:  66 0F BB E2                                       BTC     EDX, ESP
031Ch:  66 0F BB EA                                       BTC     EDX, EBP
0320h:  66 0F BB F2                                       BTC     EDX, ESI
0324h:  66 0F BB FA                                       BTC     EDX, EDI
0328h:  66 0F BB C4                                       BTC     ESP, EAX
032Ch:  66 0F BB DC                                       BTC     ESP, EBX
0330h:  66 0F BB CC                                       BTC     ESP, ECX
0334h:  66 0F BB D4                                       BTC     ESP, EDX
0338h:  66 0F BB E4                                       BTC     ESP, ESP
033Ch:  66 0F BB EC                                       BTC     ESP, EBP
0340h:  66 0F BB F4                                       BTC     ESP, ESI
0344h:  66 0F BB FC                                       BTC     ESP, EDI
0348h:  66 0F BB C5                                       BTC     EBP, EAX
034Ch:  66 0F BB DD                                       BTC     EBP, EBX
0350h:  66 0F BB CD                                       BTC     EBP, ECX
0354h:  66 0F BB D5                                       BTC     EBP, EDX
0358h:  66 0F BB E5                                       BTC     EBP, ESP
035Ch:  66 0F BB ED                                       BTC     EBP, EBP
0360h:  66 0F BB F5                                       BTC     EBP, ESI
0364h:  66 0F BB FD                                       BTC     EBP, EDI
0368h:  66 0F BB C6                                       BTC     ESI, EAX
036Ch:  66 0F BB DE                                       BTC     ESI, EBX
0370h:  66 0F BB CE                                       BTC     ESI, ECX
0374h:  66 0F BB D6                                       BTC     ESI, EDX
0378h:  66 0F BB E6                                       BTC     ESI, ESP
037Ch:  66 0F BB EE                                       BTC     ESI, EBP
0380h:  66 0F BB F6                                       BTC     ESI, ESI
0384h:  66 0F BB FE                                       BTC     ESI, EDI
0388h:  66 0F BB C7                                       BTC     EDI, EAX
038Ch:  66 0F BB DF                                       BTC     EDI, EBX
0390h:  66 0F BB CF                                       BTC     EDI, ECX
0394h:  66 0F BB D7                                       BTC     EDI, EDX
0398h:  66 0F BB E7                                       BTC     EDI, ESP
039Ch:  66 0F BB EF                                       BTC     EDI, EBP
03A0h:  66 0F BB F7                                       BTC     EDI, ESI
03A4h:  66 0F BB FF                                       BTC     EDI, EDI
03A8h:  F0 66 0F BB C0                                    LOCK    BTC EAX, EAX
03ADh:  0F BA 3E FF FF 01                                 BTC     WORD PTR [0FFFFh], 01h
03B3h:  26 0F BA 3E FF FF 01                              BTC     WORD PTR ES:[0FFFFh], 01h
03BAh:  2E 0F BA 3E FF FF 01                              BTC     WORD PTR CS:[0FFFFh], 01h
03C1h:  36 0F BA 3E FF FF 01                              BTC     WORD PTR SS:[0FFFFh], 01h
03C8h:  64 0F BA 3E FF FF 01                              BTC     WORD PTR FS:[0FFFFh], 01h
03CFh:  65 0F BA 3E FF FF 01                              BTC     WORD PTR GS:[0FFFFh], 01h
03D6h:  66 0F BA 3E FF FF 01                              BTC     DWORD PTR [0FFFFh], 01h
03DDh:  66 26 0F BA 3E FF FF 01                           BTC     DWORD PTR ES:[0FFFFh], 01h
03E5h:  66 2E 0F BA 3E FF FF 01                           BTC     DWORD PTR CS:[0FFFFh], 01h
03EDh:  66 36 0F BA 3E FF FF 01                           BTC     DWORD PTR SS:[0FFFFh], 01h
03F5h:  66 64 0F BA 3E FF FF 01                           BTC     DWORD PTR FS:[0FFFFh], 01h
03FDh:  66 65 0F BA 3E FF FF 01                           BTC     DWORD PTR GS:[0FFFFh], 01h
0405h:  0F BB 06 FF FF                                    BTC     WORD PTR [0FFFFh], AX
040Ah:  0F BB 1E FF FF                                    BTC     WORD PTR [0FFFFh], BX
040Fh:  0F BB 0E FF FF                                    BTC     WORD PTR [0FFFFh], CX
0414h:  0F BB 16 FF FF                                    BTC     WORD PTR [0FFFFh], DX
0419h:  0F BB 26 FF FF                                    BTC     WORD PTR [0FFFFh], SP
041Eh:  0F BB 2E FF FF                                    BTC     WORD PTR [0FFFFh], BP
0423h:  0F BB 36 FF FF                                    BTC     WORD PTR [0FFFFh], SI
0428h:  0F BB 3E FF FF                                    BTC     WORD PTR [0FFFFh], DI
042Dh:  26 0F BB 06 FF FF                                 BTC     WORD PTR ES:[0FFFFh], AX
0433h:  26 0F BB 1E FF FF                                 BTC     WORD PTR ES:[0FFFFh], BX
0439h:  26 0F BB 0E FF FF                                 BTC     WORD PTR ES:[0FFFFh], CX
043Fh:  26 0F BB 16 FF FF                                 BTC     WORD PTR ES:[0FFFFh], DX
0445h:  26 0F BB 26 FF FF                                 BTC     WORD PTR ES:[0FFFFh], SP
044Bh:  26 0F BB 2E FF FF                                 BTC     WORD PTR ES:[0FFFFh], BP
0451h:  26 0F BB 36 FF FF                                 BTC     WORD PTR ES:[0FFFFh], SI
0457h:  26 0F BB 3E FF FF                                 BTC     WORD PTR ES:[0FFFFh], DI
045Dh:  2E 0F BB 06 FF FF                                 BTC     WORD PTR CS:[0FFFFh], AX
0463h:  2E 0F BB 1E FF FF                                 BTC     WORD PTR CS:[0FFFFh], BX
0469h:  2E 0F BB 0E FF FF                                 BTC     WORD PTR CS:[0FFFFh], CX
046Fh:  2E 0F BB 16 FF FF                                 BTC     WORD PTR CS:[0FFFFh], DX
0475h:  2E 0F BB 26 FF FF                                 BTC     WORD PTR CS:[0FFFFh], SP
047Bh:  2E 0F BB 2E FF FF                                 BTC     WORD PTR CS:[0FFFFh], BP
0481h:  2E 0F BB 36 FF FF                                 BTC     WORD PTR CS:[0FFFFh], SI
0487h:  2E 0F BB 3E FF FF                                 BTC     WORD PTR CS:[0FFFFh], DI
048Dh:  36 0F BB 06 FF FF                                 BTC     WORD PTR SS:[0FFFFh], AX
0493h:  36 0F BB 1E FF FF                                 BTC     WORD PTR SS:[0FFFFh], BX
0499h:  36 0F BB 0E FF FF                                 BTC     WORD PTR SS:[0FFFFh], CX
049Fh:  36 0F BB 16 FF FF                                 BTC     WORD PTR SS:[0FFFFh], DX
04A5h:  36 0F BB 26 FF FF                                 BTC     WORD PTR SS:[0FFFFh], SP
04ABh:  36 0F BB 2E FF FF                                 BTC     WORD PTR SS:[0FFFFh], BP
04B1h:  36 0F BB 36 FF FF                                 BTC     WORD PTR SS:[0FFFFh], SI
04B7h:  36 0F BB 3E FF FF                                 BTC     WORD PTR SS:[0FFFFh], DI
04BDh:  64 0F BB 06 FF FF                                 BTC     WORD PTR FS:[0FFFFh], AX
04C3h:  64 0F BB 1E FF FF                                 BTC     WORD PTR FS:[0FFFFh], BX
04C9h:  64 0F BB 0E FF FF                                 BTC     WORD PTR FS:[0FFFFh], CX
04CFh:  64 0F BB 16 FF FF                                 BTC     WORD PTR FS:[0FFFFh], DX
04D5h:  64 0F BB 26 FF FF                                 BTC     WORD PTR FS:[0FFFFh], SP
04DBh:  64 0F BB 2E FF FF                                 BTC     WORD PTR FS:[0FFFFh], BP
04E1h:  64 0F BB 36 FF FF                                 BTC     WORD PTR FS:[0FFFFh], SI
04E7h:  64 0F BB 3E FF FF                                 BTC     WORD PTR FS:[0FFFFh], DI
04EDh:  65 0F BB 06 FF FF                                 BTC     WORD PTR GS:[0FFFFh], AX
04F3h:  65 0F BB 1E FF FF                                 BTC     WORD PTR GS:[0FFFFh], BX
04F9h:  65 0F BB 0E FF FF                                 BTC     WORD PTR GS:[0FFFFh], CX
04FFh:  65 0F BB 16 FF FF                                 BTC     WORD PTR GS:[0FFFFh], DX
0505h:  65 0F BB 26 FF FF                                 BTC     WORD PTR GS:[0FFFFh], SP
050Bh:  65 0F BB 2E FF FF                                 BTC     WORD PTR GS:[0FFFFh], BP
0511h:  65 0F BB 36 FF FF                                 BTC     WORD PTR GS:[0FFFFh], SI
0517h:  65 0F BB 3E FF FF                                 BTC     WORD PTR GS:[0FFFFh], DI
051Dh:  66 0F BB 06 FF FF                                 BTC     DWORD PTR [0FFFFh], EAX
0523h:  66 0F BB 1E FF FF                                 BTC     DWORD PTR [0FFFFh], EBX
0529h:  66 0F BB 0E FF FF                                 BTC     DWORD PTR [0FFFFh], ECX
052Fh:  66 0F BB 16 FF FF                                 BTC     DWORD PTR [0FFFFh], EDX
0535h:  66 0F BB 26 FF FF                                 BTC     DWORD PTR [0FFFFh], ESP
053Bh:  66 0F BB 2E FF FF                                 BTC     DWORD PTR [0FFFFh], EBP
0541h:  66 0F BB 36 FF FF                                 BTC     DWORD PTR [0FFFFh], ESI
0547h:  66 0F BB 3E FF FF                                 BTC     DWORD PTR [0FFFFh], EDI
054Dh:  66 26 0F BB 06 FF FF                              BTC     DWORD PTR ES:[0FFFFh], EAX
0554h:  66 26 0F BB 1E FF FF                              BTC     DWORD PTR ES:[0FFFFh], EBX
055Bh:  66 26 0F BB 0E FF FF                              BTC     DWORD PTR ES:[0FFFFh], ECX
0562h:  66 26 0F BB 16 FF FF                              BTC     DWORD PTR ES:[0FFFFh], EDX
0569h:  66 26 0F BB 26 FF FF                              BTC     DWORD PTR ES:[0FFFFh], ESP
0570h:  66 26 0F BB 2E FF FF                              BTC     DWORD PTR ES:[0FFFFh], EBP
0577h:  66 26 0F BB 36 FF FF                              BTC     DWORD PTR ES:[0FFFFh], ESI
057Eh:  66 26 0F BB 3E FF FF                              BTC     DWORD PTR ES:[0FFFFh], EDI
0585h:  66 2E 0F BB 06 FF FF                              BTC     DWORD PTR CS:[0FFFFh], EAX
058Ch:  66 2E 0F BB 1E FF FF                              BTC     DWORD PTR CS:[0FFFFh], EBX
0593h:  66 2E 0F BB 0E FF FF                              BTC     DWORD PTR CS:[0FFFFh], ECX
059Ah:  66 2E 0F BB 16 FF FF                              BTC     DWORD PTR CS:[0FFFFh], EDX
05A1h:  66 2E 0F BB 26 FF FF                              BTC     DWORD PTR CS:[0FFFFh], ESP
05A8h:  66 2E 0F BB 2E FF FF                              BTC     DWORD PTR CS:[0FFFFh], EBP
05AFh:  66 2E 0F BB 36 FF FF                              BTC     DWORD PTR CS:[0FFFFh], ESI
05B6h:  66 2E 0F BB 3E FF FF                              BTC     DWORD PTR CS:[0FFFFh], EDI
05BDh:  66 36 0F BB 06 FF FF                              BTC     DWORD PTR SS:[0FFFFh], EAX
05C4h:  66 36 0F BB 1E FF FF                              BTC     DWORD PTR SS:[0FFFFh], EBX
05CBh:  66 36 0F BB 0E FF FF                              BTC     DWORD PTR SS:[0FFFFh], ECX
05D2h:  66 36 0F BB 16 FF FF                              BTC     DWORD PTR SS:[0FFFFh], EDX
05D9h:  66 36 0F BB 26 FF FF                              BTC     DWORD PTR SS:[0FFFFh], ESP
05E0h:  66 36 0F BB 2E FF FF                              BTC     DWORD PTR SS:[0FFFFh], EBP
05E7h:  66 36 0F BB 36 FF FF                              BTC     DWORD PTR SS:[0FFFFh], ESI
05EEh:  66 36 0F BB 3E FF FF                              BTC     DWORD PTR SS:[0FFFFh], EDI
05F5h:  66 64 0F BB 06 FF FF                              BTC     DWORD PTR FS:[0FFFFh], EAX
05FCh:  66 64 0F BB 1E FF FF                              BTC     DWORD PTR FS:[0FFFFh], EBX
0603h:  66 64 0F BB 0E FF FF                              BTC     DWORD PTR FS:[0FFFFh], ECX
060Ah:  66 64 0F BB 16 FF FF                              BTC     DWORD PTR FS:[0FFFFh], EDX
0611h:  66 64 0F BB 26 FF FF                              BTC     DWORD PTR FS:[0FFFFh], ESP
0618h:  66 64 0F BB 2E FF FF                              BTC     DWORD PTR FS:[0FFFFh], EBP
061Fh:  66 64 0F BB 36 FF FF                              BTC     DWORD PTR FS:[0FFFFh], ESI
0626h:  66 64 0F BB 3E FF FF                              BTC     DWORD PTR FS:[0FFFFh], EDI
062Dh:  66 65 0F BB 06 FF FF                              BTC     DWORD PTR GS:[0FFFFh], EAX
0634h:  66 65 0F BB 1E FF FF                              BTC     DWORD PTR GS:[0FFFFh], EBX
063Bh:  66 65 0F BB 0E FF FF                              BTC     DWORD PTR GS:[0FFFFh], ECX
0642h:  66 65 0F BB 16 FF FF                              BTC     DWORD PTR GS:[0FFFFh], EDX
0649h:  66 65 0F BB 26 FF FF                              BTC     DWORD PTR GS:[0FFFFh], ESP
0650h:  66 65 0F BB 2E FF FF                              BTC     DWORD PTR GS:[0FFFFh], EBP
0657h:  66 65 0F BB 36 FF FF                              BTC     DWORD PTR GS:[0FFFFh], ESI
065Eh:  66 65 0F BB 3E FF FF                              BTC     DWORD PTR GS:[0FFFFh], EDI
0665h:  F0 0F BB 06 FF FF                                 LOCK    BTC WORD PTR [0FFFFh], AX
066Bh:  F0 0F BA 3E FF FF 01                              LOCK    BTC WORD PTR [0FFFFh], 01h
0672h:  F0 66 0F BB 06 FF FF                              LOCK    BTC DWORD PTR [0FFFFh], EAX
0679h:  F0 66 0F BA 3E FF FF 01                           LOCK    BTC DWORD PTR [0FFFFh], 01h
0681h:  70 FE                                             JO      0681h
0683h:  72 FC                                             JB      0681h
0685h:  73 FA                                             JNB     0681h
0687h:  74 F8                                             JZ      0681h
0689h:  75 F6                                             JNZ     0681h
068Bh:  76 F4                                             JBE     0681h
068Dh:  77 F2                                             JNBE    0681h
068Fh:  78 F0                                             JS      0681h
0691h:  79 EE                                             JNS     0681h
0693h:  7A EC                                             JP      0681h
0695h:  7B EA                                             JNP     0681h
0697h:  7C E8                                             JL      0681h
0699h:  7D E6                                             JNL     0681h
069Bh:  7E E4                                             JLE     0681h
069Dh:  7F E2                                             JNLE    0681h
069Fh:  E3 E0                                             JCXZ    0681h
06A1h:  67 E3 DD                                          JECXZ   0681h
06A4h:  0F 80 58 FA                                       JO      0100h
06A8h:  0F 82 54 FA                                       JB      0100h
06ACh:  0F 83 50 FA                                       JNB     0100h
06B0h:  0F 84 4C FA                                       JZ      0100h
06B4h:  0F 85 48 FA                                       JNZ     0100h
06B8h:  0F 86 44 FA                                       JBE     0100h
06BCh:  0F 87 40 FA                                       JNBE    0100h
06C0h:  0F 88 3C FA                                       JS      0100h
06C4h:  0F 89 38 FA                                       JNS     0100h
06C8h:  0F 8A 34 FA                                       JP      0100h
06CCh:  0F 8B 30 FA                                       JNP     0100h
06D0h:  0F 8C 2C FA                                       JL      0100h
06D4h:  0F 8D 28 FA                                       JNL     0100h
06D8h:  0F 8E 24 FA                                       JLE     0100h
06DCh:  0F 8F 20 FA                                       JNLE    0100h
