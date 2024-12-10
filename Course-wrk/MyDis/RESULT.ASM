0100h:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK    BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0FFh
010Dh:  0F BB C0                                     BTC     AX, AX
0110h:  0F BB C1                                     BTC     CX, AX
0113h:  0F BB C2                                     BTC     DX, AX
0116h:  0F BB C3                                     BTC     BX, AX
0119h:  0F BB C4                                     BTC     SP, AX
011Ch:  0F BB C5                                     BTC     BP, AX
011Fh:  0F BB C6                                     BTC     SI, AX
0122h:  0F BB C7                                     BTC     DI, AX
0125h:  0F BB 00                                     BTC     DS:[BX + SI], AX
0128h:  0F BB 01                                     BTC     DS:[BX + DI], AX
012Bh:  0F BB 02                                     BTC     SS:[BP + SI], AX
012Eh:  0F BB 03                                     BTC     SS:[BP + DI], AX
0131h:  0F BB 46 00                                  BTC     SS:[BP], AX
0135h:  0F BB 04                                     BTC     DS:[SI], AX
0138h:  0F BB 05                                     BTC     DS:[DI], AX
013Bh:  0F BB 80 34 12                               BTC     DS:[BX + SI + 1234h], AX
0140h:  0F BB 81 34 12                               BTC     DS:[BX + DI + 1234h], AX
0145h:  0F BB 82 34 12                               BTC     SS:[BP + SI + 1234h], AX
014Ah:  0F BB 83 34 12                               BTC     SS:[BP + DI + 1234h], AX
014Fh:  0F BB 86 34 12                               BTC     SS:[BP + 1234h], AX
0154h:  0F BB 84 34 12                               BTC     DS:[SI + 1234h], AX
0159h:  0F BB 85 34 12                               BTC     DS:[DI + 1234h], AX
015Eh:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], AX
0167h:  67 0F BB 84 AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], AX
0170h:  67 0F BB 44 2D 00                            BTC     SS:[EBP + EBP], AX
0176h:  67 0F BB 04 2C                               BTC     SS:[ESP + EBP], AX
017Bh:  67 0F BB 04 DA                               BTC     DS:[EDX + EBX*8], AX
0180h:  67 0F BB 44 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], AX
0186h:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], AX
018Fh:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], AX
0198h:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], AX
01A1h:  F0 0F BB 00                                  LOCK    BTC DS:[BX + SI], AX
01A5h:  F0 0F BB 01                                  LOCK    BTC DS:[BX + DI], AX
01A9h:  F0 0F BB 02                                  LOCK    BTC SS:[BP + SI], AX
01ADh:  F0 0F BB 03                                  LOCK    BTC SS:[BP + DI], AX
01B1h:  F0 0F BB 46 00                               LOCK    BTC SS:[BP], AX
01B6h:  F0 0F BB 04                                  LOCK    BTC DS:[SI], AX
01BAh:  F0 0F BB 05                                  LOCK    BTC DS:[DI], AX
01BEh:  F0 0F BB 80 34 12                            LOCK    BTC DS:[BX + SI + 1234h], AX
01C4h:  F0 0F BB 81 34 12                            LOCK    BTC DS:[BX + DI + 1234h], AX
01CAh:  F0 0F BB 82 34 12                            LOCK    BTC SS:[BP + SI + 1234h], AX
01D0h:  F0 0F BB 83 34 12                            LOCK    BTC SS:[BP + DI + 1234h], AX
01D6h:  F0 0F BB 86 34 12                            LOCK    BTC SS:[BP + 1234h], AX
01DCh:  F0 0F BB 84 34 12                            LOCK    BTC DS:[SI + 1234h], AX
01E2h:  F0 0F BB 85 34 12                            LOCK    BTC DS:[DI + 1234h], AX
01E9h:  2E 0F BB 00                                  BTC     CS:[BX + SI], AX
01EDh:  2E 0F BB 01                                  BTC     CS:[BX + DI], AX
01F1h:  2E 0F BB 02                                  BTC     CS:[BP + SI], AX
01F5h:  2E 0F BB 03                                  BTC     CS:[BP + DI], AX
01F9h:  2E 0F BB 46 00                               BTC     CS:[BP], AX
01FEh:  2E 0F BB 04                                  BTC     CS:[SI], AX
0202h:  2E 0F BB 05                                  BTC     CS:[DI], AX
0206h:  3E 0F BB 00                                  BTC     DS:[BX + SI], AX
020Ah:  3E 0F BB 01                                  BTC     DS:[BX + DI], AX
020Eh:  3E 0F BB 02                                  BTC     DS:[BP + SI], AX
0212h:  3E 0F BB 03                                  BTC     DS:[BP + DI], AX
0216h:  3E 0F BB 46 00                               BTC     DS:[BP], AX
021Bh:  3E 0F BB 04                                  BTC     DS:[SI], AX
021Fh:  3E 0F BB 05                                  BTC     DS:[DI], AX
0223h:  26 0F BB 00                                  BTC     ES:[BX + SI], AX
0227h:  26 0F BB 01                                  BTC     ES:[BX + DI], AX
022Bh:  26 0F BB 02                                  BTC     ES:[BP + SI], AX
022Fh:  26 0F BB 03                                  BTC     ES:[BP + DI], AX
0233h:  26 0F BB 46 00                               BTC     ES:[BP], AX
0238h:  26 0F BB 04                                  BTC     ES:[SI], AX
023Ch:  26 0F BB 05                                  BTC     ES:[DI], AX
0240h:  36 0F BB 00                                  BTC     SS:[BX + SI], AX
0244h:  36 0F BB 01                                  BTC     SS:[BX + DI], AX
0248h:  36 0F BB 02                                  BTC     SS:[BP + SI], AX
024Ch:  36 0F BB 03                                  BTC     SS:[BP + DI], AX
0250h:  36 0F BB 46 00                               BTC     SS:[BP], AX
0255h:  36 0F BB 04                                  BTC     SS:[SI], AX
0259h:  36 0F BB 05                                  BTC     SS:[DI], AX
025Dh:  64 0F BB 00                                  BTC     FS:[BX + SI], AX
0261h:  64 0F BB 01                                  BTC     FS:[BX + DI], AX
0265h:  64 0F BB 02                                  BTC     FS:[BP + SI], AX
0269h:  64 0F BB 03                                  BTC     FS:[BP + DI], AX
026Dh:  64 0F BB 46 00                               BTC     FS:[BP], AX
0272h:  64 0F BB 04                                  BTC     FS:[SI], AX
0276h:  64 0F BB 05                                  BTC     FS:[DI], AX
027Ah:  65 0F BB 00                                  BTC     GS:[BX + SI], AX
027Eh:  65 0F BB 01                                  BTC     GS:[BX + DI], AX
0282h:  65 0F BB 02                                  BTC     GS:[BP + SI], AX
0286h:  65 0F BB 03                                  BTC     GS:[BP + DI], AX
028Ah:  65 0F BB 46 00                               BTC     GS:[BP], AX
028Fh:  65 0F BB 04                                  BTC     GS:[SI], AX
0293h:  65 0F BB 05                                  BTC     GS:[DI], AX
0296h:  0F BA F8 01                                  BTC     AX, 01h
029Ah:  0F BA F8 FF                                  BTC     AX, 0FFh
029Eh:  0F BB C8                                     BTC     AX, CX
02A1h:  0F BB C9                                     BTC     CX, CX
02A4h:  0F BB CA                                     BTC     DX, CX
02A7h:  0F BB CB                                     BTC     BX, CX
02AAh:  0F BB CC                                     BTC     SP, CX
02ADh:  0F BB CD                                     BTC     BP, CX
02B0h:  0F BB CE                                     BTC     SI, CX
02B3h:  0F BB CF                                     BTC     DI, CX
02B6h:  0F BB 08                                     BTC     DS:[BX + SI], CX
02B9h:  0F BB 09                                     BTC     DS:[BX + DI], CX
02BCh:  0F BB 0A                                     BTC     SS:[BP + SI], CX
02BFh:  0F BB 0B                                     BTC     SS:[BP + DI], CX
02C2h:  0F BB 4E 00                                  BTC     SS:[BP], CX
02C6h:  0F BB 0C                                     BTC     DS:[SI], CX
02C9h:  0F BB 0D                                     BTC     DS:[DI], CX
02CCh:  0F BB 88 34 12                               BTC     DS:[BX + SI + 1234h], CX
02D1h:  0F BB 89 34 12                               BTC     DS:[BX + DI + 1234h], CX
02D6h:  0F BB 8A 34 12                               BTC     SS:[BP + SI + 1234h], CX
02DBh:  0F BB 8B 34 12                               BTC     SS:[BP + DI + 1234h], CX
02E0h:  0F BB 8E 34 12                               BTC     SS:[BP + 1234h], CX
02E5h:  0F BB 8C 34 12                               BTC     DS:[SI + 1234h], CX
02EAh:  0F BB 8D 34 12                               BTC     DS:[DI + 1234h], CX
02EFh:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], CX
02F8h:  67 0F BB 8C AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], CX
0301h:  67 0F BB 4C 2D 00                            BTC     SS:[EBP + EBP], CX
0307h:  67 0F BB 0C 2C                               BTC     SS:[ESP + EBP], CX
030Ch:  67 0F BB 0C DA                               BTC     DS:[EDX + EBX*8], CX
0311h:  67 0F BB 4C 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], CX
0317h:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], CX
0320h:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], CX
0329h:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], CX
0332h:  F0 0F BB 08                                  LOCK    BTC DS:[BX + SI], CX
0336h:  F0 0F BB 09                                  LOCK    BTC DS:[BX + DI], CX
033Ah:  F0 0F BB 0A                                  LOCK    BTC SS:[BP + SI], CX
033Eh:  F0 0F BB 0B                                  LOCK    BTC SS:[BP + DI], CX
0342h:  F0 0F BB 4E 00                               LOCK    BTC SS:[BP], CX
0347h:  F0 0F BB 0C                                  LOCK    BTC DS:[SI], CX
034Bh:  F0 0F BB 0D                                  LOCK    BTC DS:[DI], CX
034Fh:  F0 0F BB 88 34 12                            LOCK    BTC DS:[BX + SI + 1234h], CX
0355h:  F0 0F BB 89 34 12                            LOCK    BTC DS:[BX + DI + 1234h], CX
035Bh:  F0 0F BB 8A 34 12                            LOCK    BTC SS:[BP + SI + 1234h], CX
0361h:  F0 0F BB 8B 34 12                            LOCK    BTC SS:[BP + DI + 1234h], CX
0367h:  F0 0F BB 8E 34 12                            LOCK    BTC SS:[BP + 1234h], CX
036Dh:  F0 0F BB 8C 34 12                            LOCK    BTC DS:[SI + 1234h], CX
0373h:  F0 0F BB 8D 34 12                            LOCK    BTC DS:[DI + 1234h], CX
037Ah:  2E 0F BB 08                                  BTC     CS:[BX + SI], CX
037Eh:  2E 0F BB 09                                  BTC     CS:[BX + DI], CX
0382h:  2E 0F BB 0A                                  BTC     CS:[BP + SI], CX
0386h:  2E 0F BB 0B                                  BTC     CS:[BP + DI], CX
038Ah:  2E 0F BB 4E 00                               BTC     CS:[BP], CX
038Fh:  2E 0F BB 0C                                  BTC     CS:[SI], CX
0393h:  2E 0F BB 0D                                  BTC     CS:[DI], CX
0397h:  3E 0F BB 08                                  BTC     DS:[BX + SI], CX
039Bh:  3E 0F BB 09                                  BTC     DS:[BX + DI], CX
039Fh:  3E 0F BB 0A                                  BTC     DS:[BP + SI], CX
03A3h:  3E 0F BB 0B                                  BTC     DS:[BP + DI], CX
03A7h:  3E 0F BB 4E 00                               BTC     DS:[BP], CX
03ACh:  3E 0F BB 0C                                  BTC     DS:[SI], CX
03B0h:  3E 0F BB 0D                                  BTC     DS:[DI], CX
03B4h:  26 0F BB 08                                  BTC     ES:[BX + SI], CX
03B8h:  26 0F BB 09                                  BTC     ES:[BX + DI], CX
03BCh:  26 0F BB 0A                                  BTC     ES:[BP + SI], CX
03C0h:  26 0F BB 0B                                  BTC     ES:[BP + DI], CX
03C4h:  26 0F BB 4E 00                               BTC     ES:[BP], CX
03C9h:  26 0F BB 0C                                  BTC     ES:[SI], CX
03CDh:  26 0F BB 0D                                  BTC     ES:[DI], CX
03D1h:  36 0F BB 08                                  BTC     SS:[BX + SI], CX
03D5h:  36 0F BB 09                                  BTC     SS:[BX + DI], CX
03D9h:  36 0F BB 0A                                  BTC     SS:[BP + SI], CX
03DDh:  36 0F BB 0B                                  BTC     SS:[BP + DI], CX
03E1h:  36 0F BB 4E 00                               BTC     SS:[BP], CX
03E6h:  36 0F BB 0C                                  BTC     SS:[SI], CX
03EAh:  36 0F BB 0D                                  BTC     SS:[DI], CX
03EEh:  64 0F BB 08                                  BTC     FS:[BX + SI], CX
03F2h:  64 0F BB 09                                  BTC     FS:[BX + DI], CX
03F6h:  64 0F BB 0A                                  BTC     FS:[BP + SI], CX
03FAh:  64 0F BB 0B                                  BTC     FS:[BP + DI], CX
03FEh:  64 0F BB 4E 00                               BTC     FS:[BP], CX
0403h:  64 0F BB 0C                                  BTC     FS:[SI], CX
0407h:  64 0F BB 0D                                  BTC     FS:[DI], CX
040Bh:  65 0F BB 08                                  BTC     GS:[BX + SI], CX
040Fh:  65 0F BB 09                                  BTC     GS:[BX + DI], CX
0413h:  65 0F BB 0A                                  BTC     GS:[BP + SI], CX
0417h:  65 0F BB 0B                                  BTC     GS:[BP + DI], CX
041Bh:  65 0F BB 4E 00                               BTC     GS:[BP], CX
0420h:  65 0F BB 0C                                  BTC     GS:[SI], CX
0424h:  65 0F BB 0D                                  BTC     GS:[DI], CX
0427h:  0F BA F9 01                                  BTC     CX, 01h
042Bh:  0F BA F9 FF                                  BTC     CX, 0FFh
042Fh:  0F BB D0                                     BTC     AX, DX
0432h:  0F BB D1                                     BTC     CX, DX
0435h:  0F BB D2                                     BTC     DX, DX
0438h:  0F BB D3                                     BTC     BX, DX
043Bh:  0F BB D4                                     BTC     SP, DX
043Eh:  0F BB D5                                     BTC     BP, DX
0441h:  0F BB D6                                     BTC     SI, DX
0444h:  0F BB D7                                     BTC     DI, DX
0447h:  0F BB 10                                     BTC     DS:[BX + SI], DX
044Ah:  0F BB 11                                     BTC     DS:[BX + DI], DX
044Dh:  0F BB 12                                     BTC     SS:[BP + SI], DX
0450h:  0F BB 13                                     BTC     SS:[BP + DI], DX
0453h:  0F BB 56 00                                  BTC     SS:[BP], DX
0457h:  0F BB 14                                     BTC     DS:[SI], DX
045Ah:  0F BB 15                                     BTC     DS:[DI], DX
045Dh:  0F BB 90 34 12                               BTC     DS:[BX + SI + 1234h], DX
0462h:  0F BB 91 34 12                               BTC     DS:[BX + DI + 1234h], DX
0467h:  0F BB 92 34 12                               BTC     SS:[BP + SI + 1234h], DX
046Ch:  0F BB 93 34 12                               BTC     SS:[BP + DI + 1234h], DX
0471h:  0F BB 96 34 12                               BTC     SS:[BP + 1234h], DX
0476h:  0F BB 94 34 12                               BTC     DS:[SI + 1234h], DX
047Bh:  0F BB 95 34 12                               BTC     DS:[DI + 1234h], DX
0480h:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], DX
0489h:  67 0F BB 94 AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], DX
0492h:  67 0F BB 54 2D 00                            BTC     SS:[EBP + EBP], DX
0498h:  67 0F BB 14 2C                               BTC     SS:[ESP + EBP], DX
049Dh:  67 0F BB 14 DA                               BTC     DS:[EDX + EBX*8], DX
04A2h:  67 0F BB 54 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], DX
04A8h:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], DX
04B1h:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], DX
04BAh:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], DX
04C3h:  F0 0F BB 10                                  LOCK    BTC DS:[BX + SI], DX
04C7h:  F0 0F BB 11                                  LOCK    BTC DS:[BX + DI], DX
04CBh:  F0 0F BB 12                                  LOCK    BTC SS:[BP + SI], DX
04CFh:  F0 0F BB 13                                  LOCK    BTC SS:[BP + DI], DX
04D3h:  F0 0F BB 56 00                               LOCK    BTC SS:[BP], DX
04D8h:  F0 0F BB 14                                  LOCK    BTC DS:[SI], DX
04DCh:  F0 0F BB 15                                  LOCK    BTC DS:[DI], DX
04E0h:  F0 0F BB 90 34 12                            LOCK    BTC DS:[BX + SI + 1234h], DX
04E6h:  F0 0F BB 91 34 12                            LOCK    BTC DS:[BX + DI + 1234h], DX
04ECh:  F0 0F BB 92 34 12                            LOCK    BTC SS:[BP + SI + 1234h], DX
04F2h:  F0 0F BB 93 34 12                            LOCK    BTC SS:[BP + DI + 1234h], DX
04F8h:  F0 0F BB 96 34 12                            LOCK    BTC SS:[BP + 1234h], DX
04FEh:  F0 0F BB 94 34 12                            LOCK    BTC DS:[SI + 1234h], DX
0504h:  F0 0F BB 95 34 12                            LOCK    BTC DS:[DI + 1234h], DX
050Bh:  2E 0F BB 10                                  BTC     CS:[BX + SI], DX
050Fh:  2E 0F BB 11                                  BTC     CS:[BX + DI], DX
0513h:  2E 0F BB 12                                  BTC     CS:[BP + SI], DX
0517h:  2E 0F BB 13                                  BTC     CS:[BP + DI], DX
051Bh:  2E 0F BB 56 00                               BTC     CS:[BP], DX
0520h:  2E 0F BB 14                                  BTC     CS:[SI], DX
0524h:  2E 0F BB 15                                  BTC     CS:[DI], DX
0528h:  3E 0F BB 10                                  BTC     DS:[BX + SI], DX
052Ch:  3E 0F BB 11                                  BTC     DS:[BX + DI], DX
0530h:  3E 0F BB 12                                  BTC     DS:[BP + SI], DX
0534h:  3E 0F BB 13                                  BTC     DS:[BP + DI], DX
0538h:  3E 0F BB 56 00                               BTC     DS:[BP], DX
053Dh:  3E 0F BB 14                                  BTC     DS:[SI], DX
0541h:  3E 0F BB 15                                  BTC     DS:[DI], DX
0545h:  26 0F BB 10                                  BTC     ES:[BX + SI], DX
0549h:  26 0F BB 11                                  BTC     ES:[BX + DI], DX
054Dh:  26 0F BB 12                                  BTC     ES:[BP + SI], DX
0551h:  26 0F BB 13                                  BTC     ES:[BP + DI], DX
0555h:  26 0F BB 56 00                               BTC     ES:[BP], DX
055Ah:  26 0F BB 14                                  BTC     ES:[SI], DX
055Eh:  26 0F BB 15                                  BTC     ES:[DI], DX
0562h:  36 0F BB 10                                  BTC     SS:[BX + SI], DX
0566h:  36 0F BB 11                                  BTC     SS:[BX + DI], DX
056Ah:  36 0F BB 12                                  BTC     SS:[BP + SI], DX
056Eh:  36 0F BB 13                                  BTC     SS:[BP + DI], DX
0572h:  36 0F BB 56 00                               BTC     SS:[BP], DX
0577h:  36 0F BB 14                                  BTC     SS:[SI], DX
057Bh:  36 0F BB 15                                  BTC     SS:[DI], DX
057Fh:  64 0F BB 10                                  BTC     FS:[BX + SI], DX
0583h:  64 0F BB 11                                  BTC     FS:[BX + DI], DX
0587h:  64 0F BB 12                                  BTC     FS:[BP + SI], DX
058Bh:  64 0F BB 13                                  BTC     FS:[BP + DI], DX
058Fh:  64 0F BB 56 00                               BTC     FS:[BP], DX
0594h:  64 0F BB 14                                  BTC     FS:[SI], DX
0598h:  64 0F BB 15                                  BTC     FS:[DI], DX
059Ch:  65 0F BB 10                                  BTC     GS:[BX + SI], DX
05A0h:  65 0F BB 11                                  BTC     GS:[BX + DI], DX
05A4h:  65 0F BB 12                                  BTC     GS:[BP + SI], DX
05A8h:  65 0F BB 13                                  BTC     GS:[BP + DI], DX
05ACh:  65 0F BB 56 00                               BTC     GS:[BP], DX
05B1h:  65 0F BB 14                                  BTC     GS:[SI], DX
05B5h:  65 0F BB 15                                  BTC     GS:[DI], DX
05B8h:  0F BA FA 01                                  BTC     DX, 01h
05BCh:  0F BA FA FF                                  BTC     DX, 0FFh
05C0h:  0F BB D8                                     BTC     AX, BX
05C3h:  0F BB D9                                     BTC     CX, BX
05C6h:  0F BB DA                                     BTC     DX, BX
05C9h:  0F BB DB                                     BTC     BX, BX
05CCh:  0F BB DC                                     BTC     SP, BX
05CFh:  0F BB DD                                     BTC     BP, BX
05D2h:  0F BB DE                                     BTC     SI, BX
05D5h:  0F BB DF                                     BTC     DI, BX
05D8h:  0F BB 18                                     BTC     DS:[BX + SI], BX
05DBh:  0F BB 19                                     BTC     DS:[BX + DI], BX
05DEh:  0F BB 1A                                     BTC     SS:[BP + SI], BX
05E1h:  0F BB 1B                                     BTC     SS:[BP + DI], BX
05E4h:  0F BB 5E 00                                  BTC     SS:[BP], BX
05E8h:  0F BB 1C                                     BTC     DS:[SI], BX
05EBh:  0F BB 1D                                     BTC     DS:[DI], BX
05EEh:  0F BB 98 34 12                               BTC     DS:[BX + SI + 1234h], BX
05F3h:  0F BB 99 34 12                               BTC     DS:[BX + DI + 1234h], BX
05F8h:  0F BB 9A 34 12                               BTC     SS:[BP + SI + 1234h], BX
05FDh:  0F BB 9B 34 12                               BTC     SS:[BP + DI + 1234h], BX
0602h:  0F BB 9E 34 12                               BTC     SS:[BP + 1234h], BX
0607h:  0F BB 9C 34 12                               BTC     DS:[SI + 1234h], BX
060Ch:  0F BB 9D 34 12                               BTC     DS:[DI + 1234h], BX
0611h:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], BX
061Ah:  67 0F BB 9C AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], BX
0623h:  67 0F BB 5C 2D 00                            BTC     SS:[EBP + EBP], BX
0629h:  67 0F BB 1C 2C                               BTC     SS:[ESP + EBP], BX
062Eh:  67 0F BB 1C DA                               BTC     DS:[EDX + EBX*8], BX
0633h:  67 0F BB 5C 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], BX
0639h:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], BX
0642h:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], BX
064Bh:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], BX
0654h:  F0 0F BB 18                                  LOCK    BTC DS:[BX + SI], BX
0658h:  F0 0F BB 19                                  LOCK    BTC DS:[BX + DI], BX
065Ch:  F0 0F BB 1A                                  LOCK    BTC SS:[BP + SI], BX
0660h:  F0 0F BB 1B                                  LOCK    BTC SS:[BP + DI], BX
0664h:  F0 0F BB 5E 00                               LOCK    BTC SS:[BP], BX
0669h:  F0 0F BB 1C                                  LOCK    BTC DS:[SI], BX
066Dh:  F0 0F BB 1D                                  LOCK    BTC DS:[DI], BX
0671h:  F0 0F BB 98 34 12                            LOCK    BTC DS:[BX + SI + 1234h], BX
0677h:  F0 0F BB 99 34 12                            LOCK    BTC DS:[BX + DI + 1234h], BX
067Dh:  F0 0F BB 9A 34 12                            LOCK    BTC SS:[BP + SI + 1234h], BX
0683h:  F0 0F BB 9B 34 12                            LOCK    BTC SS:[BP + DI + 1234h], BX
0689h:  F0 0F BB 9E 34 12                            LOCK    BTC SS:[BP + 1234h], BX
068Fh:  F0 0F BB 9C 34 12                            LOCK    BTC DS:[SI + 1234h], BX
0695h:  F0 0F BB 9D 34 12                            LOCK    BTC DS:[DI + 1234h], BX
069Ch:  2E 0F BB 18                                  BTC     CS:[BX + SI], BX
06A0h:  2E 0F BB 19                                  BTC     CS:[BX + DI], BX
06A4h:  2E 0F BB 1A                                  BTC     CS:[BP + SI], BX
06A8h:  2E 0F BB 1B                                  BTC     CS:[BP + DI], BX
06ACh:  2E 0F BB 5E 00                               BTC     CS:[BP], BX
06B1h:  2E 0F BB 1C                                  BTC     CS:[SI], BX
06B5h:  2E 0F BB 1D                                  BTC     CS:[DI], BX
06B9h:  3E 0F BB 18                                  BTC     DS:[BX + SI], BX
06BDh:  3E 0F BB 19                                  BTC     DS:[BX + DI], BX
06C1h:  3E 0F BB 1A                                  BTC     DS:[BP + SI], BX
06C5h:  3E 0F BB 1B                                  BTC     DS:[BP + DI], BX
06C9h:  3E 0F BB 5E 00                               BTC     DS:[BP], BX
06CEh:  3E 0F BB 1C                                  BTC     DS:[SI], BX
06D2h:  3E 0F BB 1D                                  BTC     DS:[DI], BX
06D6h:  26 0F BB 18                                  BTC     ES:[BX + SI], BX
06DAh:  26 0F BB 19                                  BTC     ES:[BX + DI], BX
06DEh:  26 0F BB 1A                                  BTC     ES:[BP + SI], BX
06E2h:  26 0F BB 1B                                  BTC     ES:[BP + DI], BX
06E6h:  26 0F BB 5E 00                               BTC     ES:[BP], BX
06EBh:  26 0F BB 1C                                  BTC     ES:[SI], BX
06EFh:  26 0F BB 1D                                  BTC     ES:[DI], BX
06F3h:  36 0F BB 18                                  BTC     SS:[BX + SI], BX
06F7h:  36 0F BB 19                                  BTC     SS:[BX + DI], BX
06FBh:  36 0F BB 1A                                  BTC     SS:[BP + SI], BX
06FFh:  36 0F BB 1B                                  BTC     SS:[BP + DI], BX
0703h:  36 0F BB 5E 00                               BTC     SS:[BP], BX
0708h:  36 0F BB 1C                                  BTC     SS:[SI], BX
070Ch:  36 0F BB 1D                                  BTC     SS:[DI], BX
0710h:  64 0F BB 18                                  BTC     FS:[BX + SI], BX
0714h:  64 0F BB 19                                  BTC     FS:[BX + DI], BX
0718h:  64 0F BB 1A                                  BTC     FS:[BP + SI], BX
071Ch:  64 0F BB 1B                                  BTC     FS:[BP + DI], BX
0720h:  64 0F BB 5E 00                               BTC     FS:[BP], BX
0725h:  64 0F BB 1C                                  BTC     FS:[SI], BX
0729h:  64 0F BB 1D                                  BTC     FS:[DI], BX
072Dh:  65 0F BB 18                                  BTC     GS:[BX + SI], BX
0731h:  65 0F BB 19                                  BTC     GS:[BX + DI], BX
0735h:  65 0F BB 1A                                  BTC     GS:[BP + SI], BX
0739h:  65 0F BB 1B                                  BTC     GS:[BP + DI], BX
073Dh:  65 0F BB 5E 00                               BTC     GS:[BP], BX
0742h:  65 0F BB 1C                                  BTC     GS:[SI], BX
0746h:  65 0F BB 1D                                  BTC     GS:[DI], BX
0749h:  0F BA FB 01                                  BTC     BX, 01h
074Dh:  0F BA FB FF                                  BTC     BX, 0FFh
0751h:  0F BB E0                                     BTC     AX, SP
0754h:  0F BB E1                                     BTC     CX, SP
0757h:  0F BB E2                                     BTC     DX, SP
075Ah:  0F BB E3                                     BTC     BX, SP
075Dh:  0F BB E4                                     BTC     SP, SP
0760h:  0F BB E5                                     BTC     BP, SP
0763h:  0F BB E6                                     BTC     SI, SP
0766h:  0F BB E7                                     BTC     DI, SP
0769h:  0F BB 20                                     BTC     DS:[BX + SI], SP
076Ch:  0F BB 21                                     BTC     DS:[BX + DI], SP
076Fh:  0F BB 22                                     BTC     SS:[BP + SI], SP
0772h:  0F BB 23                                     BTC     SS:[BP + DI], SP
0775h:  0F BB 66 00                                  BTC     SS:[BP], SP
0779h:  0F BB 24                                     BTC     DS:[SI], SP
077Ch:  0F BB 25                                     BTC     DS:[DI], SP
077Fh:  0F BB A0 34 12                               BTC     DS:[BX + SI + 1234h], SP
0784h:  0F BB A1 34 12                               BTC     DS:[BX + DI + 1234h], SP
0789h:  0F BB A2 34 12                               BTC     SS:[BP + SI + 1234h], SP
078Eh:  0F BB A3 34 12                               BTC     SS:[BP + DI + 1234h], SP
0793h:  0F BB A6 34 12                               BTC     SS:[BP + 1234h], SP
0798h:  0F BB A4 34 12                               BTC     DS:[SI + 1234h], SP
079Dh:  0F BB A5 34 12                               BTC     DS:[DI + 1234h], SP
07A2h:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], SP
07ABh:  67 0F BB A4 AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], SP
07B4h:  67 0F BB 64 2D 00                            BTC     SS:[EBP + EBP], SP
07BAh:  67 0F BB 24 2C                               BTC     SS:[ESP + EBP], SP
07BFh:  67 0F BB 24 DA                               BTC     DS:[EDX + EBX*8], SP
07C4h:  67 0F BB 64 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], SP
07CAh:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], SP
07D3h:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], SP
07DCh:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], SP
07E5h:  F0 0F BB 20                                  LOCK    BTC DS:[BX + SI], SP
07E9h:  F0 0F BB 21                                  LOCK    BTC DS:[BX + DI], SP
07EDh:  F0 0F BB 22                                  LOCK    BTC SS:[BP + SI], SP
07F1h:  F0 0F BB 23                                  LOCK    BTC SS:[BP + DI], SP
07F5h:  F0 0F BB 66 00                               LOCK    BTC SS:[BP], SP
07FAh:  F0 0F BB 24                                  LOCK    BTC DS:[SI], SP
07FEh:  F0 0F BB 25                                  LOCK    BTC DS:[DI], SP
0802h:  F0 0F BB A0 34 12                            LOCK    BTC DS:[BX + SI + 1234h], SP
0808h:  F0 0F BB A1 34 12                            LOCK    BTC DS:[BX + DI + 1234h], SP
080Eh:  F0 0F BB A2 34 12                            LOCK    BTC SS:[BP + SI + 1234h], SP
0814h:  F0 0F BB A3 34 12                            LOCK    BTC SS:[BP + DI + 1234h], SP
081Ah:  F0 0F BB A6 34 12                            LOCK    BTC SS:[BP + 1234h], SP
0820h:  F0 0F BB A4 34 12                            LOCK    BTC DS:[SI + 1234h], SP
0826h:  F0 0F BB A5 34 12                            LOCK    BTC DS:[DI + 1234h], SP
082Dh:  2E 0F BB 20                                  BTC     CS:[BX + SI], SP
0831h:  2E 0F BB 21                                  BTC     CS:[BX + DI], SP
0835h:  2E 0F BB 22                                  BTC     CS:[BP + SI], SP
0839h:  2E 0F BB 23                                  BTC     CS:[BP + DI], SP
083Dh:  2E 0F BB 66 00                               BTC     CS:[BP], SP
0842h:  2E 0F BB 24                                  BTC     CS:[SI], SP
0846h:  2E 0F BB 25                                  BTC     CS:[DI], SP
084Ah:  3E 0F BB 20                                  BTC     DS:[BX + SI], SP
084Eh:  3E 0F BB 21                                  BTC     DS:[BX + DI], SP
0852h:  3E 0F BB 22                                  BTC     DS:[BP + SI], SP
0856h:  3E 0F BB 23                                  BTC     DS:[BP + DI], SP
085Ah:  3E 0F BB 66 00                               BTC     DS:[BP], SP
085Fh:  3E 0F BB 24                                  BTC     DS:[SI], SP
0863h:  3E 0F BB 25                                  BTC     DS:[DI], SP
0867h:  26 0F BB 20                                  BTC     ES:[BX + SI], SP
086Bh:  26 0F BB 21                                  BTC     ES:[BX + DI], SP
086Fh:  26 0F BB 22                                  BTC     ES:[BP + SI], SP
0873h:  26 0F BB 23                                  BTC     ES:[BP + DI], SP
0877h:  26 0F BB 66 00                               BTC     ES:[BP], SP
087Ch:  26 0F BB 24                                  BTC     ES:[SI], SP
0880h:  26 0F BB 25                                  BTC     ES:[DI], SP
0884h:  36 0F BB 20                                  BTC     SS:[BX + SI], SP
0888h:  36 0F BB 21                                  BTC     SS:[BX + DI], SP
088Ch:  36 0F BB 22                                  BTC     SS:[BP + SI], SP
0890h:  36 0F BB 23                                  BTC     SS:[BP + DI], SP
0894h:  36 0F BB 66 00                               BTC     SS:[BP], SP
0899h:  36 0F BB 24                                  BTC     SS:[SI], SP
089Dh:  36 0F BB 25                                  BTC     SS:[DI], SP
08A1h:  64 0F BB 20                                  BTC     FS:[BX + SI], SP
08A5h:  64 0F BB 21                                  BTC     FS:[BX + DI], SP
08A9h:  64 0F BB 22                                  BTC     FS:[BP + SI], SP
08ADh:  64 0F BB 23                                  BTC     FS:[BP + DI], SP
08B1h:  64 0F BB 66 00                               BTC     FS:[BP], SP
08B6h:  64 0F BB 24                                  BTC     FS:[SI], SP
08BAh:  64 0F BB 25                                  BTC     FS:[DI], SP
08BEh:  65 0F BB 20                                  BTC     GS:[BX + SI], SP
08C2h:  65 0F BB 21                                  BTC     GS:[BX + DI], SP
08C6h:  65 0F BB 22                                  BTC     GS:[BP + SI], SP
08CAh:  65 0F BB 23                                  BTC     GS:[BP + DI], SP
08CEh:  65 0F BB 66 00                               BTC     GS:[BP], SP
08D3h:  65 0F BB 24                                  BTC     GS:[SI], SP
08D7h:  65 0F BB 25                                  BTC     GS:[DI], SP
08DAh:  0F BA FC 01                                  BTC     SP, 01h
08DEh:  0F BA FC FF                                  BTC     SP, 0FFh
08E2h:  0F BB E8                                     BTC     AX, BP
08E5h:  0F BB E9                                     BTC     CX, BP
08E8h:  0F BB EA                                     BTC     DX, BP
08EBh:  0F BB EB                                     BTC     BX, BP
08EEh:  0F BB EC                                     BTC     SP, BP
08F1h:  0F BB ED                                     BTC     BP, BP
08F4h:  0F BB EE                                     BTC     SI, BP
08F7h:  0F BB EF                                     BTC     DI, BP
08FAh:  0F BB 28                                     BTC     DS:[BX + SI], BP
08FDh:  0F BB 29                                     BTC     DS:[BX + DI], BP
0900h:  0F BB 2A                                     BTC     SS:[BP + SI], BP
0903h:  0F BB 2B                                     BTC     SS:[BP + DI], BP
0906h:  0F BB 6E 00                                  BTC     SS:[BP], BP
090Ah:  0F BB 2C                                     BTC     DS:[SI], BP
090Dh:  0F BB 2D                                     BTC     DS:[DI], BP
0910h:  0F BB A8 34 12                               BTC     DS:[BX + SI + 1234h], BP
0915h:  0F BB A9 34 12                               BTC     DS:[BX + DI + 1234h], BP
091Ah:  0F BB AA 34 12                               BTC     SS:[BP + SI + 1234h], BP
091Fh:  0F BB AB 34 12                               BTC     SS:[BP + DI + 1234h], BP
0924h:  0F BB AE 34 12                               BTC     SS:[BP + 1234h], BP
0929h:  0F BB AC 34 12                               BTC     DS:[SI + 1234h], BP
092Eh:  0F BB AD 34 12                               BTC     DS:[DI + 1234h], BP
0933h:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], BP
093Ch:  67 0F BB AC AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], BP
0945h:  67 0F BB 6C 2D 00                            BTC     SS:[EBP + EBP], BP
094Bh:  67 0F BB 2C 2C                               BTC     SS:[ESP + EBP], BP
0950h:  67 0F BB 2C DA                               BTC     DS:[EDX + EBX*8], BP
0955h:  67 0F BB 6C 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], BP
095Bh:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], BP
0964h:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], BP
096Dh:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], BP
0976h:  F0 0F BB 28                                  LOCK    BTC DS:[BX + SI], BP
097Ah:  F0 0F BB 29                                  LOCK    BTC DS:[BX + DI], BP
097Eh:  F0 0F BB 2A                                  LOCK    BTC SS:[BP + SI], BP
0982h:  F0 0F BB 2B                                  LOCK    BTC SS:[BP + DI], BP
0986h:  F0 0F BB 6E 00                               LOCK    BTC SS:[BP], BP
098Bh:  F0 0F BB 2C                                  LOCK    BTC DS:[SI], BP
098Fh:  F0 0F BB 2D                                  LOCK    BTC DS:[DI], BP
0993h:  F0 0F BB A8 34 12                            LOCK    BTC DS:[BX + SI + 1234h], BP
0999h:  F0 0F BB A9 34 12                            LOCK    BTC DS:[BX + DI + 1234h], BP
099Fh:  F0 0F BB AA 34 12                            LOCK    BTC SS:[BP + SI + 1234h], BP
09A5h:  F0 0F BB AB 34 12                            LOCK    BTC SS:[BP + DI + 1234h], BP
09ABh:  F0 0F BB AE 34 12                            LOCK    BTC SS:[BP + 1234h], BP
09B1h:  F0 0F BB AC 34 12                            LOCK    BTC DS:[SI + 1234h], BP
09B7h:  F0 0F BB AD 34 12                            LOCK    BTC DS:[DI + 1234h], BP
09BEh:  2E 0F BB 28                                  BTC     CS:[BX + SI], BP
09C2h:  2E 0F BB 29                                  BTC     CS:[BX + DI], BP
09C6h:  2E 0F BB 2A                                  BTC     CS:[BP + SI], BP
09CAh:  2E 0F BB 2B                                  BTC     CS:[BP + DI], BP
09CEh:  2E 0F BB 6E 00                               BTC     CS:[BP], BP
09D3h:  2E 0F BB 2C                                  BTC     CS:[SI], BP
09D7h:  2E 0F BB 2D                                  BTC     CS:[DI], BP
09DBh:  3E 0F BB 28                                  BTC     DS:[BX + SI], BP
09DFh:  3E 0F BB 29                                  BTC     DS:[BX + DI], BP
09E3h:  3E 0F BB 2A                                  BTC     DS:[BP + SI], BP
09E7h:  3E 0F BB 2B                                  BTC     DS:[BP + DI], BP
09EBh:  3E 0F BB 6E 00                               BTC     DS:[BP], BP
09F0h:  3E 0F BB 2C                                  BTC     DS:[SI], BP
09F4h:  3E 0F BB 2D                                  BTC     DS:[DI], BP
09F8h:  26 0F BB 28                                  BTC     ES:[BX + SI], BP
09FCh:  26 0F BB 29                                  BTC     ES:[BX + DI], BP
0A00h:  26 0F BB 2A                                  BTC     ES:[BP + SI], BP
0A04h:  26 0F BB 2B                                  BTC     ES:[BP + DI], BP
0A08h:  26 0F BB 6E 00                               BTC     ES:[BP], BP
0A0Dh:  26 0F BB 2C                                  BTC     ES:[SI], BP
0A11h:  26 0F BB 2D                                  BTC     ES:[DI], BP
0A15h:  36 0F BB 28                                  BTC     SS:[BX + SI], BP
0A19h:  36 0F BB 29                                  BTC     SS:[BX + DI], BP
0A1Dh:  36 0F BB 2A                                  BTC     SS:[BP + SI], BP
0A21h:  36 0F BB 2B                                  BTC     SS:[BP + DI], BP
0A25h:  36 0F BB 6E 00                               BTC     SS:[BP], BP
0A2Ah:  36 0F BB 2C                                  BTC     SS:[SI], BP
0A2Eh:  36 0F BB 2D                                  BTC     SS:[DI], BP
0A32h:  64 0F BB 28                                  BTC     FS:[BX + SI], BP
0A36h:  64 0F BB 29                                  BTC     FS:[BX + DI], BP
0A3Ah:  64 0F BB 2A                                  BTC     FS:[BP + SI], BP
0A3Eh:  64 0F BB 2B                                  BTC     FS:[BP + DI], BP
0A42h:  64 0F BB 6E 00                               BTC     FS:[BP], BP
0A47h:  64 0F BB 2C                                  BTC     FS:[SI], BP
0A4Bh:  64 0F BB 2D                                  BTC     FS:[DI], BP
0A4Fh:  65 0F BB 28                                  BTC     GS:[BX + SI], BP
0A53h:  65 0F BB 29                                  BTC     GS:[BX + DI], BP
0A57h:  65 0F BB 2A                                  BTC     GS:[BP + SI], BP
0A5Bh:  65 0F BB 2B                                  BTC     GS:[BP + DI], BP
0A5Fh:  65 0F BB 6E 00                               BTC     GS:[BP], BP
0A64h:  65 0F BB 2C                                  BTC     GS:[SI], BP
0A68h:  65 0F BB 2D                                  BTC     GS:[DI], BP
0A6Bh:  0F BA FD 01                                  BTC     BP, 01h
0A6Fh:  0F BA FD FF                                  BTC     BP, 0FFh
0A73h:  0F BB F0                                     BTC     AX, SI
0A76h:  0F BB F1                                     BTC     CX, SI
0A79h:  0F BB F2                                     BTC     DX, SI
0A7Ch:  0F BB F3                                     BTC     BX, SI
0A7Fh:  0F BB F4                                     BTC     SP, SI
0A82h:  0F BB F5                                     BTC     BP, SI
0A85h:  0F BB F6                                     BTC     SI, SI
0A88h:  0F BB F7                                     BTC     DI, SI
0A8Bh:  0F BB 30                                     BTC     DS:[BX + SI], SI
0A8Eh:  0F BB 31                                     BTC     DS:[BX + DI], SI
0A91h:  0F BB 32                                     BTC     SS:[BP + SI], SI
0A94h:  0F BB 33                                     BTC     SS:[BP + DI], SI
0A97h:  0F BB 76 00                                  BTC     SS:[BP], SI
0A9Bh:  0F BB 34                                     BTC     DS:[SI], SI
0A9Eh:  0F BB 35                                     BTC     DS:[DI], SI
0AA1h:  0F BB B0 34 12                               BTC     DS:[BX + SI + 1234h], SI
0AA6h:  0F BB B1 34 12                               BTC     DS:[BX + DI + 1234h], SI
0AABh:  0F BB B2 34 12                               BTC     SS:[BP + SI + 1234h], SI
0AB0h:  0F BB B3 34 12                               BTC     SS:[BP + DI + 1234h], SI
0AB5h:  0F BB B6 34 12                               BTC     SS:[BP + 1234h], SI
0ABAh:  0F BB B4 34 12                               BTC     DS:[SI + 1234h], SI
0ABFh:  0F BB B5 34 12                               BTC     DS:[DI + 1234h], SI
0AC4h:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], SI
0ACDh:  67 0F BB B4 AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], SI
0AD6h:  67 0F BB 74 2D 00                            BTC     SS:[EBP + EBP], SI
0ADCh:  67 0F BB 34 2C                               BTC     SS:[ESP + EBP], SI
0AE1h:  67 0F BB 34 DA                               BTC     DS:[EDX + EBX*8], SI
0AE6h:  67 0F BB 74 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], SI
0AECh:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], SI
0AF5h:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], SI
0AFEh:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], SI
0B07h:  F0 0F BB 30                                  LOCK    BTC DS:[BX + SI], SI
0B0Bh:  F0 0F BB 31                                  LOCK    BTC DS:[BX + DI], SI
0B0Fh:  F0 0F BB 32                                  LOCK    BTC SS:[BP + SI], SI
0B13h:  F0 0F BB 33                                  LOCK    BTC SS:[BP + DI], SI
0B17h:  F0 0F BB 76 00                               LOCK    BTC SS:[BP], SI
0B1Ch:  F0 0F BB 34                                  LOCK    BTC DS:[SI], SI
0B20h:  F0 0F BB 35                                  LOCK    BTC DS:[DI], SI
0B24h:  F0 0F BB B0 34 12                            LOCK    BTC DS:[BX + SI + 1234h], SI
0B2Ah:  F0 0F BB B1 34 12                            LOCK    BTC DS:[BX + DI + 1234h], SI
0B30h:  F0 0F BB B2 34 12                            LOCK    BTC SS:[BP + SI + 1234h], SI
0B36h:  F0 0F BB B3 34 12                            LOCK    BTC SS:[BP + DI + 1234h], SI
0B3Ch:  F0 0F BB B6 34 12                            LOCK    BTC SS:[BP + 1234h], SI
0B42h:  F0 0F BB B4 34 12                            LOCK    BTC DS:[SI + 1234h], SI
0B48h:  F0 0F BB B5 34 12                            LOCK    BTC DS:[DI + 1234h], SI
0B4Fh:  2E 0F BB 30                                  BTC     CS:[BX + SI], SI
0B53h:  2E 0F BB 31                                  BTC     CS:[BX + DI], SI
0B57h:  2E 0F BB 32                                  BTC     CS:[BP + SI], SI
0B5Bh:  2E 0F BB 33                                  BTC     CS:[BP + DI], SI
0B5Fh:  2E 0F BB 76 00                               BTC     CS:[BP], SI
0B64h:  2E 0F BB 34                                  BTC     CS:[SI], SI
0B68h:  2E 0F BB 35                                  BTC     CS:[DI], SI
0B6Ch:  3E 0F BB 30                                  BTC     DS:[BX + SI], SI
0B70h:  3E 0F BB 31                                  BTC     DS:[BX + DI], SI
0B74h:  3E 0F BB 32                                  BTC     DS:[BP + SI], SI
0B78h:  3E 0F BB 33                                  BTC     DS:[BP + DI], SI
0B7Ch:  3E 0F BB 76 00                               BTC     DS:[BP], SI
0B81h:  3E 0F BB 34                                  BTC     DS:[SI], SI
0B85h:  3E 0F BB 35                                  BTC     DS:[DI], SI
0B89h:  26 0F BB 30                                  BTC     ES:[BX + SI], SI
0B8Dh:  26 0F BB 31                                  BTC     ES:[BX + DI], SI
0B91h:  26 0F BB 32                                  BTC     ES:[BP + SI], SI
0B95h:  26 0F BB 33                                  BTC     ES:[BP + DI], SI
0B99h:  26 0F BB 76 00                               BTC     ES:[BP], SI
0B9Eh:  26 0F BB 34                                  BTC     ES:[SI], SI
0BA2h:  26 0F BB 35                                  BTC     ES:[DI], SI
0BA6h:  36 0F BB 30                                  BTC     SS:[BX + SI], SI
0BAAh:  36 0F BB 31                                  BTC     SS:[BX + DI], SI
0BAEh:  36 0F BB 32                                  BTC     SS:[BP + SI], SI
0BB2h:  36 0F BB 33                                  BTC     SS:[BP + DI], SI
0BB6h:  36 0F BB 76 00                               BTC     SS:[BP], SI
0BBBh:  36 0F BB 34                                  BTC     SS:[SI], SI
0BBFh:  36 0F BB 35                                  BTC     SS:[DI], SI
0BC3h:  64 0F BB 30                                  BTC     FS:[BX + SI], SI
0BC7h:  64 0F BB 31                                  BTC     FS:[BX + DI], SI
0BCBh:  64 0F BB 32                                  BTC     FS:[BP + SI], SI
0BCFh:  64 0F BB 33                                  BTC     FS:[BP + DI], SI
0BD3h:  64 0F BB 76 00                               BTC     FS:[BP], SI
0BD8h:  64 0F BB 34                                  BTC     FS:[SI], SI
0BDCh:  64 0F BB 35                                  BTC     FS:[DI], SI
0BE0h:  65 0F BB 30                                  BTC     GS:[BX + SI], SI
0BE4h:  65 0F BB 31                                  BTC     GS:[BX + DI], SI
0BE8h:  65 0F BB 32                                  BTC     GS:[BP + SI], SI
0BECh:  65 0F BB 33                                  BTC     GS:[BP + DI], SI
0BF0h:  65 0F BB 76 00                               BTC     GS:[BP], SI
0BF5h:  65 0F BB 34                                  BTC     GS:[SI], SI
0BF9h:  65 0F BB 35                                  BTC     GS:[DI], SI
0BFCh:  0F BA FE 01                                  BTC     SI, 01h
0C00h:  0F BA FE FF                                  BTC     SI, 0FFh
0C04h:  0F BB F8                                     BTC     AX, DI
0C07h:  0F BB F9                                     BTC     CX, DI
0C0Ah:  0F BB FA                                     BTC     DX, DI
0C0Dh:  0F BB FB                                     BTC     BX, DI
0C10h:  0F BB FC                                     BTC     SP, DI
0C13h:  0F BB FD                                     BTC     BP, DI
0C16h:  0F BB FE                                     BTC     SI, DI
0C19h:  0F BB FF                                     BTC     DI, DI
0C1Ch:  0F BB 38                                     BTC     DS:[BX + SI], DI
0C1Fh:  0F BB 39                                     BTC     DS:[BX + DI], DI
0C22h:  0F BB 3A                                     BTC     SS:[BP + SI], DI
0C25h:  0F BB 3B                                     BTC     SS:[BP + DI], DI
0C28h:  0F BB 7E 00                                  BTC     SS:[BP], DI
0C2Ch:  0F BB 3C                                     BTC     DS:[SI], DI
0C2Fh:  0F BB 3D                                     BTC     DS:[DI], DI
0C32h:  0F BB B8 34 12                               BTC     DS:[BX + SI + 1234h], DI
0C37h:  0F BB B9 34 12                               BTC     DS:[BX + DI + 1234h], DI
0C3Ch:  0F BB BA 34 12                               BTC     SS:[BP + SI + 1234h], DI
0C41h:  0F BB BB 34 12                               BTC     SS:[BP + DI + 1234h], DI
0C46h:  0F BB BE 34 12                               BTC     SS:[BP + 1234h], DI
0C4Bh:  0F BB BC 34 12                               BTC     DS:[SI + 1234h], DI
0C50h:  0F BB BD 34 12                               BTC     DS:[DI + 1234h], DI
0C55h:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX + EAX*2 + 00000100h], DI
0C5Eh:  67 0F BB BC AB 78 56 34 12                   BTC     DS:[EBX + EBP*4 + 12345678h], DI
0C67h:  67 0F BB 7C 2D 00                            BTC     SS:[EBP + EBP], DI
0C6Dh:  67 0F BB 3C 2C                               BTC     SS:[ESP + EBP], DI
0C72h:  67 0F BB 3C DA                               BTC     DS:[EDX + EBX*8], DI
0C77h:  67 0F BB 7C 4B 01                            BTC     DS:[EBX + ECX*2 + 01h], DI
0C7Dh:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX + EDX*4 + 00000100h], DI
0C86h:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], DI
0C8Fh:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP + EBP + 10203040h], DI
0C98h:  F0 0F BB 38                                  LOCK    BTC DS:[BX + SI], DI
0C9Ch:  F0 0F BB 39                                  LOCK    BTC DS:[BX + DI], DI
0CA0h:  F0 0F BB 3A                                  LOCK    BTC SS:[BP + SI], DI
0CA4h:  F0 0F BB 3B                                  LOCK    BTC SS:[BP + DI], DI
0CA8h:  F0 0F BB 7E 00                               LOCK    BTC SS:[BP], DI
0CADh:  F0 0F BB 3C                                  LOCK    BTC DS:[SI], DI
0CB1h:  F0 0F BB 3D                                  LOCK    BTC DS:[DI], DI
0CB5h:  F0 0F BB B8 34 12                            LOCK    BTC DS:[BX + SI + 1234h], DI
0CBBh:  F0 0F BB B9 34 12                            LOCK    BTC DS:[BX + DI + 1234h], DI
0CC1h:  F0 0F BB BA 34 12                            LOCK    BTC SS:[BP + SI + 1234h], DI
0CC7h:  F0 0F BB BB 34 12                            LOCK    BTC SS:[BP + DI + 1234h], DI
0CCDh:  F0 0F BB BE 34 12                            LOCK    BTC SS:[BP + 1234h], DI
0CD3h:  F0 0F BB BC 34 12                            LOCK    BTC DS:[SI + 1234h], DI
0CD9h:  F0 0F BB BD 34 12                            LOCK    BTC DS:[DI + 1234h], DI
0CE0h:  2E 0F BB 38                                  BTC     CS:[BX + SI], DI
0CE4h:  2E 0F BB 39                                  BTC     CS:[BX + DI], DI
0CE8h:  2E 0F BB 3A                                  BTC     CS:[BP + SI], DI
0CECh:  2E 0F BB 3B                                  BTC     CS:[BP + DI], DI
0CF0h:  2E 0F BB 7E 00                               BTC     CS:[BP], DI
0CF5h:  2E 0F BB 3C                                  BTC     CS:[SI], DI
0CF9h:  2E 0F BB 3D                                  BTC     CS:[DI], DI
0CFDh:  3E 0F BB 38                                  BTC     DS:[BX + SI], DI
0D01h:  3E 0F BB 39                                  BTC     DS:[BX + DI], DI
0D05h:  3E 0F BB 3A                                  BTC     DS:[BP + SI], DI
0D09h:  3E 0F BB 3B                                  BTC     DS:[BP + DI], DI
0D0Dh:  3E 0F BB 7E 00                               BTC     DS:[BP], DI
0D12h:  3E 0F BB 3C                                  BTC     DS:[SI], DI
0D16h:  3E 0F BB 3D                                  BTC     DS:[DI], DI
0D1Ah:  26 0F BB 38                                  BTC     ES:[BX + SI], DI
0D1Eh:  26 0F BB 39                                  BTC     ES:[BX + DI], DI
0D22h:  26 0F BB 3A                                  BTC     ES:[BP + SI], DI
0D26h:  26 0F BB 3B                                  BTC     ES:[BP + DI], DI
0D2Ah:  26 0F BB 7E 00                               BTC     ES:[BP], DI
0D2Fh:  26 0F BB 3C                                  BTC     ES:[SI], DI
0D33h:  26 0F BB 3D                                  BTC     ES:[DI], DI
0D37h:  36 0F BB 38                                  BTC     SS:[BX + SI], DI
0D3Bh:  36 0F BB 39                                  BTC     SS:[BX + DI], DI
0D3Fh:  36 0F BB 3A                                  BTC     SS:[BP + SI], DI
0D43h:  36 0F BB 3B                                  BTC     SS:[BP + DI], DI
0D47h:  36 0F BB 7E 00                               BTC     SS:[BP], DI
0D4Ch:  36 0F BB 3C                                  BTC     SS:[SI], DI
0D50h:  36 0F BB 3D                                  BTC     SS:[DI], DI
0D54h:  64 0F BB 38                                  BTC     FS:[BX + SI], DI
0D58h:  64 0F BB 39                                  BTC     FS:[BX + DI], DI
0D5Ch:  64 0F BB 3A                                  BTC     FS:[BP + SI], DI
0D60h:  64 0F BB 3B                                  BTC     FS:[BP + DI], DI
0D64h:  64 0F BB 7E 00                               BTC     FS:[BP], DI
0D69h:  64 0F BB 3C                                  BTC     FS:[SI], DI
0D6Dh:  64 0F BB 3D                                  BTC     FS:[DI], DI
0D71h:  65 0F BB 38                                  BTC     GS:[BX + SI], DI
0D75h:  65 0F BB 39                                  BTC     GS:[BX + DI], DI
0D79h:  65 0F BB 3A                                  BTC     GS:[BP + SI], DI
0D7Dh:  65 0F BB 3B                                  BTC     GS:[BP + DI], DI
0D81h:  65 0F BB 7E 00                               BTC     GS:[BP], DI
0D86h:  65 0F BB 3C                                  BTC     GS:[SI], DI
0D8Ah:  65 0F BB 3D                                  BTC     GS:[DI], DI
0D8Dh:  0F BA FF 01                                  BTC     DI, 01h
0D91h:  0F BA FF FF                                  BTC     DI, 0FFh
0D95h:  66 0F BB C0                                  BTC     EAX, EAX
0D99h:  66 0F BB C1                                  BTC     ECX, EAX
0D9Dh:  66 0F BB C2                                  BTC     EDX, EAX
0DA1h:  66 0F BB C3                                  BTC     EBX, EAX
0DA5h:  66 0F BB C4                                  BTC     ESP, EAX
0DA9h:  66 0F BB C5                                  BTC     EBP, EAX
0DADh:  66 0F BB C6                                  BTC     ESI, EAX
0DB1h:  66 0F BB C7                                  BTC     EDI, EAX
0DB5h:  66 67 0F BB 00                               BTC     DS:[EAX], EAX
0DBAh:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX + 00001234h], ECX
0DC4h:  2E 66 67 0F BB 18                            BTC     CS:[EAX], EBX
0DCAh:  3E 66 67 0F BB 10                            BTC     DS:[EAX], EDX
0DD0h:  26 66 67 0F BB 20                            BTC     ES:[EAX], ESP
0DD6h:  36 66 67 0F BB 28                            BTC     SS:[EAX], EBP
0DDCh:  64 66 67 0F BB 30                            BTC     FS:[EAX], ESI
0DE2h:  65 66 67 0F BB 38                            BTC     GS:[EAX], EDI
0DE7h:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], EAX
0DF1h:  66 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], EAX
0DFBh:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP + EBP], EAX
0E02h:  66 67 0F BB 04 2C                            BTC     SS:[ESP + EBP], EAX
0E08h:  66 67 0F BB 04 DA                            BTC     DS:[EDX + EBX*8], EAX
0E0Eh:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], EAX
0E15h:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], EAX
0E1Fh:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EAX
0E29h:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], EAX
0E34h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
0E3Fh:  F0 66 0F BB 00                               LOCK    BTC DS:[BX + SI], EAX
0E44h:  F0 66 0F BB 01                               LOCK    BTC DS:[BX + DI], EAX
0E49h:  F0 66 0F BB 02                               LOCK    BTC SS:[BP + SI], EAX
0E4Eh:  F0 66 0F BB 03                               LOCK    BTC SS:[BP + DI], EAX
0E53h:  F0 66 0F BB 46 00                            LOCK    BTC SS:[BP], EAX
0E59h:  F0 66 0F BB 04                               LOCK    BTC DS:[SI], EAX
0E5Eh:  F0 66 0F BB 05                               LOCK    BTC DS:[DI], EAX
0E63h:  F0 66 0F BB 80 34 12                         LOCK    BTC DS:[BX + SI + 1234h], EAX
0E6Ah:  F0 66 0F BB 81 34 12                         LOCK    BTC DS:[BX + DI + 1234h], EAX
0E71h:  F0 66 0F BB 82 34 12                         LOCK    BTC SS:[BP + SI + 1234h], EAX
0E78h:  F0 66 0F BB 83 34 12                         LOCK    BTC SS:[BP + DI + 1234h], EAX
0E7Fh:  F0 66 0F BB 86 34 12                         LOCK    BTC SS:[BP + 1234h], EAX
0E86h:  F0 66 0F BB 84 34 12                         LOCK    BTC DS:[SI + 1234h], EAX
0E8Dh:  F0 66 0F BB 85 34 12                         LOCK    BTC DS:[DI + 1234h], EAX
0E94h:  66 0F BA F8 01                               BTC     EAX, 01h
0E99h:  66 0F BA F8 FF                               BTC     EAX, 0FFh
0E9Eh:  66 0F BB C8                                  BTC     EAX, ECX
0EA2h:  66 0F BB C9                                  BTC     ECX, ECX
0EA6h:  66 0F BB CA                                  BTC     EDX, ECX
0EAAh:  66 0F BB CB                                  BTC     EBX, ECX
0EAEh:  66 0F BB CC                                  BTC     ESP, ECX
0EB2h:  66 0F BB CD                                  BTC     EBP, ECX
0EB6h:  66 0F BB CE                                  BTC     ESI, ECX
0EBAh:  66 0F BB CF                                  BTC     EDI, ECX
0EBEh:  66 67 0F BB 01                               BTC     DS:[ECX], EAX
0EC3h:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX + 00001234h], ECX
0ECDh:  2E 66 67 0F BB 19                            BTC     CS:[ECX], EBX
0ED3h:  3E 66 67 0F BB 11                            BTC     DS:[ECX], EDX
0ED9h:  26 66 67 0F BB 21                            BTC     ES:[ECX], ESP
0EDFh:  36 66 67 0F BB 29                            BTC     SS:[ECX], EBP
0EE5h:  64 66 67 0F BB 31                            BTC     FS:[ECX], ESI
0EEBh:  65 66 67 0F BB 39                            BTC     GS:[ECX], EDI
0EF0h:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], ECX
0EFAh:  66 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], ECX
0F04h:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP + EBP], ECX
0F0Bh:  66 67 0F BB 0C 2C                            BTC     SS:[ESP + EBP], ECX
0F11h:  66 67 0F BB 0C DA                            BTC     DS:[EDX + EBX*8], ECX
0F17h:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], ECX
0F1Eh:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], ECX
0F28h:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ECX
0F32h:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], ECX
0F3Dh:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
0F48h:  F0 66 0F BB 08                               LOCK    BTC DS:[BX + SI], ECX
0F4Dh:  F0 66 0F BB 09                               LOCK    BTC DS:[BX + DI], ECX
0F52h:  F0 66 0F BB 0A                               LOCK    BTC SS:[BP + SI], ECX
0F57h:  F0 66 0F BB 0B                               LOCK    BTC SS:[BP + DI], ECX
0F5Ch:  F0 66 0F BB 4E 00                            LOCK    BTC SS:[BP], ECX
0F62h:  F0 66 0F BB 0C                               LOCK    BTC DS:[SI], ECX
0F67h:  F0 66 0F BB 0D                               LOCK    BTC DS:[DI], ECX
0F6Ch:  F0 66 0F BB 88 34 12                         LOCK    BTC DS:[BX + SI + 1234h], ECX
0F73h:  F0 66 0F BB 89 34 12                         LOCK    BTC DS:[BX + DI + 1234h], ECX
0F7Ah:  F0 66 0F BB 8A 34 12                         LOCK    BTC SS:[BP + SI + 1234h], ECX
0F81h:  F0 66 0F BB 8B 34 12                         LOCK    BTC SS:[BP + DI + 1234h], ECX
0F88h:  F0 66 0F BB 8E 34 12                         LOCK    BTC SS:[BP + 1234h], ECX
0F8Fh:  F0 66 0F BB 8C 34 12                         LOCK    BTC DS:[SI + 1234h], ECX
0F96h:  F0 66 0F BB 8D 34 12                         LOCK    BTC DS:[DI + 1234h], ECX
0F9Dh:  66 0F BA F9 01                               BTC     ECX, 01h
0FA2h:  66 0F BA F9 FF                               BTC     ECX, 0FFh
0FA7h:  66 0F BB D0                                  BTC     EAX, EDX
0FABh:  66 0F BB D1                                  BTC     ECX, EDX
0FAFh:  66 0F BB D2                                  BTC     EDX, EDX
0FB3h:  66 0F BB D3                                  BTC     EBX, EDX
0FB7h:  66 0F BB D4                                  BTC     ESP, EDX
0FBBh:  66 0F BB D5                                  BTC     EBP, EDX
0FBFh:  66 0F BB D6                                  BTC     ESI, EDX
0FC3h:  66 0F BB D7                                  BTC     EDI, EDX
0FC7h:  66 67 0F BB 02                               BTC     DS:[EDX], EAX
0FCCh:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX + 00001234h], ECX
0FD6h:  2E 66 67 0F BB 1A                            BTC     CS:[EDX], EBX
0FDCh:  3E 66 67 0F BB 12                            BTC     DS:[EDX], EDX
0FE2h:  26 66 67 0F BB 22                            BTC     ES:[EDX], ESP
0FE8h:  36 66 67 0F BB 2A                            BTC     SS:[EDX], EBP
0FEEh:  64 66 67 0F BB 32                            BTC     FS:[EDX], ESI
0FF4h:  65 66 67 0F BB 3A                            BTC     GS:[EDX], EDI
0FF9h:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], EDX
1003h:  66 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], EDX
100Dh:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP + EBP], EDX
1014h:  66 67 0F BB 14 2C                            BTC     SS:[ESP + EBP], EDX
101Ah:  66 67 0F BB 14 DA                            BTC     DS:[EDX + EBX*8], EDX
1020h:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], EDX
1027h:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], EDX
1031h:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EDX
103Bh:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], EDX
1046h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
1051h:  F0 66 0F BB 10                               LOCK    BTC DS:[BX + SI], EDX
1056h:  F0 66 0F BB 11                               LOCK    BTC DS:[BX + DI], EDX
105Bh:  F0 66 0F BB 12                               LOCK    BTC SS:[BP + SI], EDX
1060h:  F0 66 0F BB 13                               LOCK    BTC SS:[BP + DI], EDX
1065h:  F0 66 0F BB 56 00                            LOCK    BTC SS:[BP], EDX
106Bh:  F0 66 0F BB 14                               LOCK    BTC DS:[SI], EDX
1070h:  F0 66 0F BB 15                               LOCK    BTC DS:[DI], EDX
1075h:  F0 66 0F BB 90 34 12                         LOCK    BTC DS:[BX + SI + 1234h], EDX
107Ch:  F0 66 0F BB 91 34 12                         LOCK    BTC DS:[BX + DI + 1234h], EDX
1083h:  F0 66 0F BB 92 34 12                         LOCK    BTC SS:[BP + SI + 1234h], EDX
108Ah:  F0 66 0F BB 93 34 12                         LOCK    BTC SS:[BP + DI + 1234h], EDX
1091h:  F0 66 0F BB 96 34 12                         LOCK    BTC SS:[BP + 1234h], EDX
1098h:  F0 66 0F BB 94 34 12                         LOCK    BTC DS:[SI + 1234h], EDX
109Fh:  F0 66 0F BB 95 34 12                         LOCK    BTC DS:[DI + 1234h], EDX
10A6h:  66 0F BA FA 01                               BTC     EDX, 01h
10ABh:  66 0F BA FA FF                               BTC     EDX, 0FFh
10B0h:  66 0F BB D8                                  BTC     EAX, EBX
10B4h:  66 0F BB D9                                  BTC     ECX, EBX
10B8h:  66 0F BB DA                                  BTC     EDX, EBX
10BCh:  66 0F BB DB                                  BTC     EBX, EBX
10C0h:  66 0F BB DC                                  BTC     ESP, EBX
10C4h:  66 0F BB DD                                  BTC     EBP, EBX
10C8h:  66 0F BB DE                                  BTC     ESI, EBX
10CCh:  66 0F BB DF                                  BTC     EDI, EBX
10D0h:  66 67 0F BB 03                               BTC     DS:[EBX], EAX
10D5h:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX + 00001234h], ECX
10DFh:  2E 66 67 0F BB 1B                            BTC     CS:[EBX], EBX
10E5h:  3E 66 67 0F BB 13                            BTC     DS:[EBX], EDX
10EBh:  26 66 67 0F BB 23                            BTC     ES:[EBX], ESP
10F1h:  36 66 67 0F BB 2B                            BTC     SS:[EBX], EBP
10F7h:  64 66 67 0F BB 33                            BTC     FS:[EBX], ESI
10FDh:  65 66 67 0F BB 3B                            BTC     GS:[EBX], EDI
1102h:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], EBX
110Ch:  66 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], EBX
1116h:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP + EBP], EBX
111Dh:  66 67 0F BB 1C 2C                            BTC     SS:[ESP + EBP], EBX
1123h:  66 67 0F BB 1C DA                            BTC     DS:[EDX + EBX*8], EBX
1129h:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], EBX
1130h:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], EBX
113Ah:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EBX
1144h:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], EBX
114Fh:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
115Ah:  F0 66 0F BB 18                               LOCK    BTC DS:[BX + SI], EBX
115Fh:  F0 66 0F BB 19                               LOCK    BTC DS:[BX + DI], EBX
1164h:  F0 66 0F BB 1A                               LOCK    BTC SS:[BP + SI], EBX
1169h:  F0 66 0F BB 1B                               LOCK    BTC SS:[BP + DI], EBX
116Eh:  F0 66 0F BB 5E 00                            LOCK    BTC SS:[BP], EBX
1174h:  F0 66 0F BB 1C                               LOCK    BTC DS:[SI], EBX
1179h:  F0 66 0F BB 1D                               LOCK    BTC DS:[DI], EBX
117Eh:  F0 66 0F BB 98 34 12                         LOCK    BTC DS:[BX + SI + 1234h], EBX
1185h:  F0 66 0F BB 99 34 12                         LOCK    BTC DS:[BX + DI + 1234h], EBX
118Ch:  F0 66 0F BB 9A 34 12                         LOCK    BTC SS:[BP + SI + 1234h], EBX
1193h:  F0 66 0F BB 9B 34 12                         LOCK    BTC SS:[BP + DI + 1234h], EBX
119Ah:  F0 66 0F BB 9E 34 12                         LOCK    BTC SS:[BP + 1234h], EBX
11A1h:  F0 66 0F BB 9C 34 12                         LOCK    BTC DS:[SI + 1234h], EBX
11A8h:  F0 66 0F BB 9D 34 12                         LOCK    BTC DS:[DI + 1234h], EBX
11AFh:  66 0F BA FB 01                               BTC     EBX, 01h
11B4h:  66 0F BA FB FF                               BTC     EBX, 0FFh
11B9h:  66 0F BB E0                                  BTC     EAX, ESP
11BDh:  66 0F BB E1                                  BTC     ECX, ESP
11C1h:  66 0F BB E2                                  BTC     EDX, ESP
11C5h:  66 0F BB E3                                  BTC     EBX, ESP
11C9h:  66 0F BB E4                                  BTC     ESP, ESP
11CDh:  66 0F BB E5                                  BTC     EBP, ESP
11D1h:  66 0F BB E6                                  BTC     ESI, ESP
11D5h:  66 0F BB E7                                  BTC     EDI, ESP
11D9h:  66 67 0F BB 04 24                            BTC     SS:[ESP + ESP], EAX
11DFh:  66 67 0F BB 8C 24 34 12 00 00                BTC     SS:[ESP + ESP + 00001234h], ECX
11EAh:  2E 66 67 0F BB 1C 24                         BTC     CS:[ESP + ESP], EBX
11F1h:  3E 66 67 0F BB 14 24                         BTC     DS:[ESP + ESP], EDX
11F8h:  26 66 67 0F BB 24 24                         BTC     ES:[ESP + ESP], ESP
11FFh:  36 66 67 0F BB 2C 24                         BTC     SS:[ESP + ESP], EBP
1206h:  64 66 67 0F BB 34 24                         BTC     FS:[ESP + ESP], ESI
120Dh:  65 66 67 0F BB 3C 24                         BTC     GS:[ESP + ESP], EDI
1213h:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], ESP
121Dh:  66 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], ESP
1227h:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP + EBP], ESP
122Eh:  66 67 0F BB 24 2C                            BTC     SS:[ESP + EBP], ESP
1234h:  66 67 0F BB 24 DA                            BTC     DS:[EDX + EBX*8], ESP
123Ah:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], ESP
1241h:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], ESP
124Bh:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ESP
1255h:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], ESP
1260h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
126Bh:  F0 66 0F BB 20                               LOCK    BTC DS:[BX + SI], ESP
1270h:  F0 66 0F BB 21                               LOCK    BTC DS:[BX + DI], ESP
1275h:  F0 66 0F BB 22                               LOCK    BTC SS:[BP + SI], ESP
127Ah:  F0 66 0F BB 23                               LOCK    BTC SS:[BP + DI], ESP
127Fh:  F0 66 0F BB 66 00                            LOCK    BTC SS:[BP], ESP
1285h:  F0 66 0F BB 24                               LOCK    BTC DS:[SI], ESP
128Ah:  F0 66 0F BB 25                               LOCK    BTC DS:[DI], ESP
128Fh:  F0 66 0F BB A0 34 12                         LOCK    BTC DS:[BX + SI + 1234h], ESP
1296h:  F0 66 0F BB A1 34 12                         LOCK    BTC DS:[BX + DI + 1234h], ESP
129Dh:  F0 66 0F BB A2 34 12                         LOCK    BTC SS:[BP + SI + 1234h], ESP
12A4h:  F0 66 0F BB A3 34 12                         LOCK    BTC SS:[BP + DI + 1234h], ESP
12ABh:  F0 66 0F BB A6 34 12                         LOCK    BTC SS:[BP + 1234h], ESP
12B2h:  F0 66 0F BB A4 34 12                         LOCK    BTC DS:[SI + 1234h], ESP
12B9h:  F0 66 0F BB A5 34 12                         LOCK    BTC DS:[DI + 1234h], ESP
12C0h:  66 0F BA FC 01                               BTC     ESP, 01h
12C5h:  66 0F BA FC FF                               BTC     ESP, 0FFh
12CAh:  66 0F BB E8                                  BTC     EAX, EBP
12CEh:  66 0F BB E9                                  BTC     ECX, EBP
12D2h:  66 0F BB EA                                  BTC     EDX, EBP
12D6h:  66 0F BB EB                                  BTC     EBX, EBP
12DAh:  66 0F BB EC                                  BTC     ESP, EBP
12DEh:  66 0F BB ED                                  BTC     EBP, EBP
12E2h:  66 0F BB EE                                  BTC     ESI, EBP
12E6h:  66 0F BB EF                                  BTC     EDI, EBP
12EAh:  66 67 0F BB 45 00                            BTC     SS:[EBP], EAX
12F0h:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP + 00001234h], ECX
12FAh:  2E 66 67 0F BB 5D 00                         BTC     CS:[EBP], EBX
1301h:  3E 66 67 0F BB 55 00                         BTC     DS:[EBP], EDX
1308h:  26 66 67 0F BB 65 00                         BTC     ES:[EBP], ESP
130Fh:  36 66 67 0F BB 6D 00                         BTC     SS:[EBP], EBP
1316h:  64 66 67 0F BB 75 00                         BTC     FS:[EBP], ESI
131Dh:  65 66 67 0F BB 7D 00                         BTC     GS:[EBP], EDI
1323h:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], EBP
132Dh:  66 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], EBP
1337h:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP + EBP], EBP
133Eh:  66 67 0F BB 2C 2C                            BTC     SS:[ESP + EBP], EBP
1344h:  66 67 0F BB 2C DA                            BTC     DS:[EDX + EBX*8], EBP
134Ah:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], EBP
1351h:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], EBP
135Bh:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EBP
1365h:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], EBP
1370h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
137Bh:  F0 66 0F BB 28                               LOCK    BTC DS:[BX + SI], EBP
1380h:  F0 66 0F BB 29                               LOCK    BTC DS:[BX + DI], EBP
1385h:  F0 66 0F BB 2A                               LOCK    BTC SS:[BP + SI], EBP
138Ah:  F0 66 0F BB 2B                               LOCK    BTC SS:[BP + DI], EBP
138Fh:  F0 66 0F BB 6E 00                            LOCK    BTC SS:[BP], EBP
1395h:  F0 66 0F BB 2C                               LOCK    BTC DS:[SI], EBP
139Ah:  F0 66 0F BB 2D                               LOCK    BTC DS:[DI], EBP
139Fh:  F0 66 0F BB A8 34 12                         LOCK    BTC DS:[BX + SI + 1234h], EBP
13A6h:  F0 66 0F BB A9 34 12                         LOCK    BTC DS:[BX + DI + 1234h], EBP
13ADh:  F0 66 0F BB AA 34 12                         LOCK    BTC SS:[BP + SI + 1234h], EBP
13B4h:  F0 66 0F BB AB 34 12                         LOCK    BTC SS:[BP + DI + 1234h], EBP
13BBh:  F0 66 0F BB AE 34 12                         LOCK    BTC SS:[BP + 1234h], EBP
13C2h:  F0 66 0F BB AC 34 12                         LOCK    BTC DS:[SI + 1234h], EBP
13C9h:  F0 66 0F BB AD 34 12                         LOCK    BTC DS:[DI + 1234h], EBP
13D0h:  66 0F BA FD 01                               BTC     EBP, 01h
13D5h:  66 0F BA FD FF                               BTC     EBP, 0FFh
13DAh:  66 0F BB F0                                  BTC     EAX, ESI
13DEh:  66 0F BB F1                                  BTC     ECX, ESI
13E2h:  66 0F BB F2                                  BTC     EDX, ESI
13E6h:  66 0F BB F3                                  BTC     EBX, ESI
13EAh:  66 0F BB F4                                  BTC     ESP, ESI
13EEh:  66 0F BB F5                                  BTC     EBP, ESI
13F2h:  66 0F BB F6                                  BTC     ESI, ESI
13F6h:  66 0F BB F7                                  BTC     EDI, ESI
13FAh:  66 67 0F BB 06                               BTC     DS:[ESI], EAX
13FFh:  66 67 0F BB 8E 34 12 00 00                   BTC     DS:[ESI + 00001234h], ECX
1409h:  2E 66 67 0F BB 1E                            BTC     CS:[ESI], EBX
140Fh:  3E 66 67 0F BB 16                            BTC     DS:[ESI], EDX
1415h:  26 66 67 0F BB 26                            BTC     ES:[ESI], ESP
141Bh:  36 66 67 0F BB 2E                            BTC     SS:[ESI], EBP
1421h:  64 66 67 0F BB 36                            BTC     FS:[ESI], ESI
1427h:  65 66 67 0F BB 3E                            BTC     GS:[ESI], EDI
142Ch:  66 67 0F BB B4 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], ESI
1436h:  66 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], ESI
1440h:  66 67 0F BB 74 2D 00                         BTC     SS:[EBP + EBP], ESI
1447h:  66 67 0F BB 34 2C                            BTC     SS:[ESP + EBP], ESI
144Dh:  66 67 0F BB 34 DA                            BTC     DS:[EDX + EBX*8], ESI
1453h:  66 67 0F BB 74 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], ESI
145Ah:  66 67 0F BB B4 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], ESI
1464h:  66 67 0F BB B4 C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ESI
146Eh:  66 67 0F BB B4 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], ESI
1479h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
1484h:  F0 66 0F BB 30                               LOCK    BTC DS:[BX + SI], ESI
1489h:  F0 66 0F BB 31                               LOCK    BTC DS:[BX + DI], ESI
148Eh:  F0 66 0F BB 32                               LOCK    BTC SS:[BP + SI], ESI
1493h:  F0 66 0F BB 33                               LOCK    BTC SS:[BP + DI], ESI
1498h:  F0 66 0F BB 76 00                            LOCK    BTC SS:[BP], ESI
149Eh:  F0 66 0F BB 34                               LOCK    BTC DS:[SI], ESI
14A3h:  F0 66 0F BB 35                               LOCK    BTC DS:[DI], ESI
14A8h:  F0 66 0F BB B0 34 12                         LOCK    BTC DS:[BX + SI + 1234h], ESI
14AFh:  F0 66 0F BB B1 34 12                         LOCK    BTC DS:[BX + DI + 1234h], ESI
14B6h:  F0 66 0F BB B2 34 12                         LOCK    BTC SS:[BP + SI + 1234h], ESI
14BDh:  F0 66 0F BB B3 34 12                         LOCK    BTC SS:[BP + DI + 1234h], ESI
14C4h:  F0 66 0F BB B6 34 12                         LOCK    BTC SS:[BP + 1234h], ESI
14CBh:  F0 66 0F BB B4 34 12                         LOCK    BTC DS:[SI + 1234h], ESI
14D2h:  F0 66 0F BB B5 34 12                         LOCK    BTC DS:[DI + 1234h], ESI
14D9h:  66 0F BA FE 01                               BTC     ESI, 01h
14DEh:  66 0F BA FE FF                               BTC     ESI, 0FFh
14E3h:  66 0F BB F8                                  BTC     EAX, EDI
14E7h:  66 0F BB F9                                  BTC     ECX, EDI
14EBh:  66 0F BB FA                                  BTC     EDX, EDI
14EFh:  66 0F BB FB                                  BTC     EBX, EDI
14F3h:  66 0F BB FC                                  BTC     ESP, EDI
14F7h:  66 0F BB FD                                  BTC     EBP, EDI
14FBh:  66 0F BB FE                                  BTC     ESI, EDI
14FFh:  66 0F BB FF                                  BTC     EDI, EDI
1503h:  66 67 0F BB 07                               BTC     DS:[EDI], EAX
1508h:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI + 00001234h], ECX
1512h:  2E 66 67 0F BB 1F                            BTC     CS:[EDI], EBX
1518h:  3E 66 67 0F BB 17                            BTC     DS:[EDI], EDX
151Eh:  26 66 67 0F BB 27                            BTC     ES:[EDI], ESP
1524h:  36 66 67 0F BB 2F                            BTC     SS:[EDI], EBP
152Ah:  64 66 67 0F BB 37                            BTC     FS:[EDI], ESI
1530h:  65 66 67 0F BB 3F                            BTC     GS:[EDI], EDI
1535h:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX + EAX*2 + 00000100h], EDI
153Fh:  66 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX + EBP*4 + 12345678h], EDI
1549h:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP + EBP], EDI
1550h:  66 67 0F BB 3C 2C                            BTC     SS:[ESP + EBP], EDI
1556h:  66 67 0F BB 3C DA                            BTC     DS:[EDX + EBX*8], EDI
155Ch:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX + ECX*2 + 01h], EDI
1563h:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX + EDX*4 + 00000100h], EDI
156Dh:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EDI
1577h:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP + EBP + 10203040h], EDI
1582h:  64 F0 67 0F BA BC 2B CC DD EE FF A0          LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
158Dh:  F0 66 0F BB 38                               LOCK    BTC DS:[BX + SI], EDI
1592h:  F0 66 0F BB 39                               LOCK    BTC DS:[BX + DI], EDI
1597h:  F0 66 0F BB 3A                               LOCK    BTC SS:[BP + SI], EDI
159Ch:  F0 66 0F BB 3B                               LOCK    BTC SS:[BP + DI], EDI
15A1h:  F0 66 0F BB 7E 00                            LOCK    BTC SS:[BP], EDI
15A7h:  F0 66 0F BB 3C                               LOCK    BTC DS:[SI], EDI
15ACh:  F0 66 0F BB 3D                               LOCK    BTC DS:[DI], EDI
15B1h:  F0 66 0F BB B8 34 12                         LOCK    BTC DS:[BX + SI + 1234h], EDI
15B8h:  F0 66 0F BB B9 34 12                         LOCK    BTC DS:[BX + DI + 1234h], EDI
15BFh:  F0 66 0F BB BA 34 12                         LOCK    BTC SS:[BP + SI + 1234h], EDI
15C6h:  F0 66 0F BB BB 34 12                         LOCK    BTC SS:[BP + DI + 1234h], EDI
15CDh:  F0 66 0F BB BE 34 12                         LOCK    BTC SS:[BP + 1234h], EDI
15D4h:  F0 66 0F BB BC 34 12                         LOCK    BTC DS:[SI + 1234h], EDI
15DBh:  F0 66 0F BB BD 34 12                         LOCK    BTC DS:[DI + 1234h], EDI
15E2h:  66 0F BA FF 01                               BTC     EDI, 01h
15E7h:  66 0F BA FF FF                               BTC     EDI, 0FFh
15ECh:  0F BB C0                                     BTC     AX, AX
15EFh:  0F BB C1                                     BTC     CX, AX
15F2h:  0F BB C2                                     BTC     DX, AX
15F5h:  0F BB C3                                     BTC     BX, AX
15F8h:  0F BB C4                                     BTC     SP, AX
15FBh:  0F BB C5                                     BTC     BP, AX
15FEh:  0F BB C6                                     BTC     SI, AX
1601h:  0F BB C7                                     BTC     DI, AX
1604h:  0F BB 00                                     BTC     DS:[BX + SI], AX
1607h:  0F BB 01                                     BTC     DS:[BX + DI], AX
160Ah:  0F BB 02                                     BTC     SS:[BP + SI], AX
160Dh:  0F BB 03                                     BTC     SS:[BP + DI], AX
1610h:  0F BB 46 00                                  BTC     SS:[BP], AX
1614h:  0F BB 04                                     BTC     DS:[SI], AX
1617h:  0F BB 05                                     BTC     DS:[DI], AX
161Ah:  0F BB 80 34 12                               BTC     DS:[BX + SI + 1234h], AX
161Fh:  0F BB 81 34 12                               BTC     DS:[BX + DI + 1234h], AX
1624h:  0F BB 82 34 12                               BTC     SS:[BP + SI + 1234h], AX
1629h:  0F BB 83 34 12                               BTC     SS:[BP + DI + 1234h], AX
162Eh:  0F BB 86 34 12                               BTC     SS:[BP + 1234h], AX
1633h:  0F BB 84 34 12                               BTC     DS:[SI + 1234h], AX
1638h:  0F BB 85 34 12                               BTC     DS:[DI + 1234h], AX
163Eh:  2E 0F BB 00                                  BTC     CS:[BX + SI], AX
1642h:  2E 0F BB 01                                  BTC     CS:[BX + DI], AX
1646h:  2E 0F BB 02                                  BTC     CS:[BP + SI], AX
164Ah:  2E 0F BB 03                                  BTC     CS:[BP + DI], AX
164Eh:  2E 0F BB 46 00                               BTC     CS:[BP], AX
1653h:  2E 0F BB 04                                  BTC     CS:[SI], AX
1657h:  2E 0F BB 05                                  BTC     CS:[DI], AX
165Bh:  3E 0F BB 00                                  BTC     DS:[BX + SI], AX
165Fh:  3E 0F BB 01                                  BTC     DS:[BX + DI], AX
1663h:  3E 0F BB 02                                  BTC     DS:[BP + SI], AX
1667h:  3E 0F BB 03                                  BTC     DS:[BP + DI], AX
166Bh:  3E 0F BB 46 00                               BTC     DS:[BP], AX
1670h:  3E 0F BB 04                                  BTC     DS:[SI], AX
1674h:  3E 0F BB 05                                  BTC     DS:[DI], AX
1678h:  26 0F BB 00                                  BTC     ES:[BX + SI], AX
167Ch:  26 0F BB 01                                  BTC     ES:[BX + DI], AX
1680h:  26 0F BB 02                                  BTC     ES:[BP + SI], AX
1684h:  26 0F BB 03                                  BTC     ES:[BP + DI], AX
1688h:  26 0F BB 46 00                               BTC     ES:[BP], AX
168Dh:  26 0F BB 04                                  BTC     ES:[SI], AX
1691h:  26 0F BB 05                                  BTC     ES:[DI], AX
1695h:  36 0F BB 00                                  BTC     SS:[BX + SI], AX
1699h:  36 0F BB 01                                  BTC     SS:[BX + DI], AX
169Dh:  36 0F BB 02                                  BTC     SS:[BP + SI], AX
16A1h:  36 0F BB 03                                  BTC     SS:[BP + DI], AX
16A5h:  36 0F BB 46 00                               BTC     SS:[BP], AX
16AAh:  36 0F BB 04                                  BTC     SS:[SI], AX
16AEh:  36 0F BB 05                                  BTC     SS:[DI], AX
16B2h:  64 0F BB 00                                  BTC     FS:[BX + SI], AX
16B6h:  64 0F BB 01                                  BTC     FS:[BX + DI], AX
16BAh:  64 0F BB 02                                  BTC     FS:[BP + SI], AX
16BEh:  64 0F BB 03                                  BTC     FS:[BP + DI], AX
16C2h:  64 0F BB 46 00                               BTC     FS:[BP], AX
16C7h:  64 0F BB 04                                  BTC     FS:[SI], AX
16CBh:  64 0F BB 05                                  BTC     FS:[DI], AX
16CFh:  65 0F BB 00                                  BTC     GS:[BX + SI], AX
16D3h:  65 0F BB 01                                  BTC     GS:[BX + DI], AX
16D7h:  65 0F BB 02                                  BTC     GS:[BP + SI], AX
16DBh:  65 0F BB 03                                  BTC     GS:[BP + DI], AX
16DFh:  65 0F BB 46 00                               BTC     GS:[BP], AX
16E4h:  65 0F BB 04                                  BTC     GS:[SI], AX
16E8h:  65 0F BB 05                                  BTC     GS:[DI], AX
16EBh:  0F BA F8 01                                  BTC     AX, 01h
16EFh:  0F BA F8 FF                                  BTC     AX, 0FFh
16F3h:  0F BB C8                                     BTC     AX, CX
16F6h:  0F BB C9                                     BTC     CX, CX
16F9h:  0F BB CA                                     BTC     DX, CX
16FCh:  0F BB CB                                     BTC     BX, CX
16FFh:  0F BB CC                                     BTC     SP, CX
1702h:  0F BB CD                                     BTC     BP, CX
1705h:  0F BB CE                                     BTC     SI, CX
1708h:  0F BB CF                                     BTC     DI, CX
170Bh:  0F BB 08                                     BTC     DS:[BX + SI], CX
170Eh:  0F BB 09                                     BTC     DS:[BX + DI], CX
1711h:  0F BB 0A                                     BTC     SS:[BP + SI], CX
1714h:  0F BB 0B                                     BTC     SS:[BP + DI], CX
1717h:  0F BB 4E 00                                  BTC     SS:[BP], CX
171Bh:  0F BB 0C                                     BTC     DS:[SI], CX
171Eh:  0F BB 0D                                     BTC     DS:[DI], CX
1721h:  0F BB 88 34 12                               BTC     DS:[BX + SI + 1234h], CX
1726h:  0F BB 89 34 12                               BTC     DS:[BX + DI + 1234h], CX
172Bh:  0F BB 8A 34 12                               BTC     SS:[BP + SI + 1234h], CX
1730h:  0F BB 8B 34 12                               BTC     SS:[BP + DI + 1234h], CX
1735h:  0F BB 8E 34 12                               BTC     SS:[BP + 1234h], CX
173Ah:  0F BB 8C 34 12                               BTC     DS:[SI + 1234h], CX
173Fh:  0F BB 8D 34 12                               BTC     DS:[DI + 1234h], CX
1745h:  2E 0F BB 08                                  BTC     CS:[BX + SI], CX
1749h:  2E 0F BB 09                                  BTC     CS:[BX + DI], CX
174Dh:  2E 0F BB 0A                                  BTC     CS:[BP + SI], CX
1751h:  2E 0F BB 0B                                  BTC     CS:[BP + DI], CX
1755h:  2E 0F BB 4E 00                               BTC     CS:[BP], CX
175Ah:  2E 0F BB 0C                                  BTC     CS:[SI], CX
175Eh:  2E 0F BB 0D                                  BTC     CS:[DI], CX
1762h:  3E 0F BB 08                                  BTC     DS:[BX + SI], CX
1766h:  3E 0F BB 09                                  BTC     DS:[BX + DI], CX
176Ah:  3E 0F BB 0A                                  BTC     DS:[BP + SI], CX
176Eh:  3E 0F BB 0B                                  BTC     DS:[BP + DI], CX
1772h:  3E 0F BB 4E 00                               BTC     DS:[BP], CX
1777h:  3E 0F BB 0C                                  BTC     DS:[SI], CX
177Bh:  3E 0F BB 0D                                  BTC     DS:[DI], CX
177Fh:  26 0F BB 08                                  BTC     ES:[BX + SI], CX
1783h:  26 0F BB 09                                  BTC     ES:[BX + DI], CX
1787h:  26 0F BB 0A                                  BTC     ES:[BP + SI], CX
178Bh:  26 0F BB 0B                                  BTC     ES:[BP + DI], CX
178Fh:  26 0F BB 4E 00                               BTC     ES:[BP], CX
1794h:  26 0F BB 0C                                  BTC     ES:[SI], CX
1798h:  26 0F BB 0D                                  BTC     ES:[DI], CX
179Ch:  36 0F BB 08                                  BTC     SS:[BX + SI], CX
17A0h:  36 0F BB 09                                  BTC     SS:[BX + DI], CX
17A4h:  36 0F BB 0A                                  BTC     SS:[BP + SI], CX
17A8h:  36 0F BB 0B                                  BTC     SS:[BP + DI], CX
17ACh:  36 0F BB 4E 00                               BTC     SS:[BP], CX
17B1h:  36 0F BB 0C                                  BTC     SS:[SI], CX
17B5h:  36 0F BB 0D                                  BTC     SS:[DI], CX
17B9h:  64 0F BB 08                                  BTC     FS:[BX + SI], CX
17BDh:  64 0F BB 09                                  BTC     FS:[BX + DI], CX
17C1h:  64 0F BB 0A                                  BTC     FS:[BP + SI], CX
17C5h:  64 0F BB 0B                                  BTC     FS:[BP + DI], CX
17C9h:  64 0F BB 4E 00                               BTC     FS:[BP], CX
17CEh:  64 0F BB 0C                                  BTC     FS:[SI], CX
17D2h:  64 0F BB 0D                                  BTC     FS:[DI], CX
17D6h:  65 0F BB 08                                  BTC     GS:[BX + SI], CX
17DAh:  65 0F BB 09                                  BTC     GS:[BX + DI], CX
17DEh:  65 0F BB 0A                                  BTC     GS:[BP + SI], CX
17E2h:  65 0F BB 0B                                  BTC     GS:[BP + DI], CX
17E6h:  65 0F BB 4E 00                               BTC     GS:[BP], CX
17EBh:  65 0F BB 0C                                  BTC     GS:[SI], CX
17EFh:  65 0F BB 0D                                  BTC     GS:[DI], CX
17F2h:  0F BA F9 01                                  BTC     CX, 01h
17F6h:  0F BA F9 FF                                  BTC     CX, 0FFh
17FAh:  0F BB D0                                     BTC     AX, DX
17FDh:  0F BB D1                                     BTC     CX, DX
1800h:  0F BB D2                                     BTC     DX, DX
1803h:  0F BB D3                                     BTC     BX, DX
1806h:  0F BB D4                                     BTC     SP, DX
1809h:  0F BB D5                                     BTC     BP, DX
180Ch:  0F BB D6                                     BTC     SI, DX
180Fh:  0F BB D7                                     BTC     DI, DX
1812h:  0F BB 10                                     BTC     DS:[BX + SI], DX
1815h:  0F BB 11                                     BTC     DS:[BX + DI], DX
1818h:  0F BB 12                                     BTC     SS:[BP + SI], DX
181Bh:  0F BB 13                                     BTC     SS:[BP + DI], DX
181Eh:  0F BB 56 00                                  BTC     SS:[BP], DX
1822h:  0F BB 14                                     BTC     DS:[SI], DX
1825h:  0F BB 15                                     BTC     DS:[DI], DX
1828h:  0F BB 90 34 12                               BTC     DS:[BX + SI + 1234h], DX
182Dh:  0F BB 91 34 12                               BTC     DS:[BX + DI + 1234h], DX
1832h:  0F BB 92 34 12                               BTC     SS:[BP + SI + 1234h], DX
1837h:  0F BB 93 34 12                               BTC     SS:[BP + DI + 1234h], DX
183Ch:  0F BB 96 34 12                               BTC     SS:[BP + 1234h], DX
1841h:  0F BB 94 34 12                               BTC     DS:[SI + 1234h], DX
1846h:  0F BB 95 34 12                               BTC     DS:[DI + 1234h], DX
184Ch:  2E 0F BB 10                                  BTC     CS:[BX + SI], DX
1850h:  2E 0F BB 11                                  BTC     CS:[BX + DI], DX
1854h:  2E 0F BB 12                                  BTC     CS:[BP + SI], DX
1858h:  2E 0F BB 13                                  BTC     CS:[BP + DI], DX
185Ch:  2E 0F BB 56 00                               BTC     CS:[BP], DX
1861h:  2E 0F BB 14                                  BTC     CS:[SI], DX
1865h:  2E 0F BB 15                                  BTC     CS:[DI], DX
1869h:  3E 0F BB 10                                  BTC     DS:[BX + SI], DX
186Dh:  3E 0F BB 11                                  BTC     DS:[BX + DI], DX
1871h:  3E 0F BB 12                                  BTC     DS:[BP + SI], DX
1875h:  3E 0F BB 13                                  BTC     DS:[BP + DI], DX
1879h:  3E 0F BB 56 00                               BTC     DS:[BP], DX
187Eh:  3E 0F BB 14                                  BTC     DS:[SI], DX
1882h:  3E 0F BB 15                                  BTC     DS:[DI], DX
1886h:  26 0F BB 10                                  BTC     ES:[BX + SI], DX
188Ah:  26 0F BB 11                                  BTC     ES:[BX + DI], DX
188Eh:  26 0F BB 12                                  BTC     ES:[BP + SI], DX
1892h:  26 0F BB 13                                  BTC     ES:[BP + DI], DX
1896h:  26 0F BB 56 00                               BTC     ES:[BP], DX
189Bh:  26 0F BB 14                                  BTC     ES:[SI], DX
189Fh:  26 0F BB 15                                  BTC     ES:[DI], DX
18A3h:  36 0F BB 10                                  BTC     SS:[BX + SI], DX
18A7h:  36 0F BB 11                                  BTC     SS:[BX + DI], DX
18ABh:  36 0F BB 12                                  BTC     SS:[BP + SI], DX
18AFh:  36 0F BB 13                                  BTC     SS:[BP + DI], DX
18B3h:  36 0F BB 56 00                               BTC     SS:[BP], DX
18B8h:  36 0F BB 14                                  BTC     SS:[SI], DX
18BCh:  36 0F BB 15                                  BTC     SS:[DI], DX
18C0h:  64 0F BB 10                                  BTC     FS:[BX + SI], DX
18C4h:  64 0F BB 11                                  BTC     FS:[BX + DI], DX
18C8h:  64 0F BB 12                                  BTC     FS:[BP + SI], DX
18CCh:  64 0F BB 13                                  BTC     FS:[BP + DI], DX
18D0h:  64 0F BB 56 00                               BTC     FS:[BP], DX
18D5h:  64 0F BB 14                                  BTC     FS:[SI], DX
18D9h:  64 0F BB 15                                  BTC     FS:[DI], DX
18DDh:  65 0F BB 10                                  BTC     GS:[BX + SI], DX
18E1h:  65 0F BB 11                                  BTC     GS:[BX + DI], DX
18E5h:  65 0F BB 12                                  BTC     GS:[BP + SI], DX
18E9h:  65 0F BB 13                                  BTC     GS:[BP + DI], DX
18EDh:  65 0F BB 56 00                               BTC     GS:[BP], DX
18F2h:  65 0F BB 14                                  BTC     GS:[SI], DX
18F6h:  65 0F BB 15                                  BTC     GS:[DI], DX
18F9h:  0F BA FA 01                                  BTC     DX, 01h
18FDh:  0F BA FA FF                                  BTC     DX, 0FFh
1901h:  0F BB D8                                     BTC     AX, BX
1904h:  0F BB D9                                     BTC     CX, BX
1907h:  0F BB DA                                     BTC     DX, BX
190Ah:  0F BB DB                                     BTC     BX, BX
190Dh:  0F BB DC                                     BTC     SP, BX
1910h:  0F BB DD                                     BTC     BP, BX
1913h:  0F BB DE                                     BTC     SI, BX
1916h:  0F BB DF                                     BTC     DI, BX
1919h:  0F BB 18                                     BTC     DS:[BX + SI], BX
191Ch:  0F BB 19                                     BTC     DS:[BX + DI], BX
191Fh:  0F BB 1A                                     BTC     SS:[BP + SI], BX
1922h:  0F BB 1B                                     BTC     SS:[BP + DI], BX
1925h:  0F BB 5E 00                                  BTC     SS:[BP], BX
1929h:  0F BB 1C                                     BTC     DS:[SI], BX
192Ch:  0F BB 1D                                     BTC     DS:[DI], BX
192Fh:  0F BB 98 34 12                               BTC     DS:[BX + SI + 1234h], BX
1934h:  0F BB 99 34 12                               BTC     DS:[BX + DI + 1234h], BX
1939h:  0F BB 9A 34 12                               BTC     SS:[BP + SI + 1234h], BX
193Eh:  0F BB 9B 34 12                               BTC     SS:[BP + DI + 1234h], BX
1943h:  0F BB 9E 34 12                               BTC     SS:[BP + 1234h], BX
1948h:  0F BB 9C 34 12                               BTC     DS:[SI + 1234h], BX
194Dh:  0F BB 9D 34 12                               BTC     DS:[DI + 1234h], BX
1953h:  2E 0F BB 18                                  BTC     CS:[BX + SI], BX
1957h:  2E 0F BB 19                                  BTC     CS:[BX + DI], BX
195Bh:  2E 0F BB 1A                                  BTC     CS:[BP + SI], BX
195Fh:  2E 0F BB 1B                                  BTC     CS:[BP + DI], BX
1963h:  2E 0F BB 5E 00                               BTC     CS:[BP], BX
1968h:  2E 0F BB 1C                                  BTC     CS:[SI], BX
196Ch:  2E 0F BB 1D                                  BTC     CS:[DI], BX
1970h:  3E 0F BB 18                                  BTC     DS:[BX + SI], BX
1974h:  3E 0F BB 19                                  BTC     DS:[BX + DI], BX
1978h:  3E 0F BB 1A                                  BTC     DS:[BP + SI], BX
197Ch:  3E 0F BB 1B                                  BTC     DS:[BP + DI], BX
1980h:  3E 0F BB 5E 00                               BTC     DS:[BP], BX
1985h:  3E 0F BB 1C                                  BTC     DS:[SI], BX
1989h:  3E 0F BB 1D                                  BTC     DS:[DI], BX
198Dh:  26 0F BB 18                                  BTC     ES:[BX + SI], BX
1991h:  26 0F BB 19                                  BTC     ES:[BX + DI], BX
1995h:  26 0F BB 1A                                  BTC     ES:[BP + SI], BX
1999h:  26 0F BB 1B                                  BTC     ES:[BP + DI], BX
199Dh:  26 0F BB 5E 00                               BTC     ES:[BP], BX
19A2h:  26 0F BB 1C                                  BTC     ES:[SI], BX
19A6h:  26 0F BB 1D                                  BTC     ES:[DI], BX
19AAh:  36 0F BB 18                                  BTC     SS:[BX + SI], BX
19AEh:  36 0F BB 19                                  BTC     SS:[BX + DI], BX
19B2h:  36 0F BB 1A                                  BTC     SS:[BP + SI], BX
19B6h:  36 0F BB 1B                                  BTC     SS:[BP + DI], BX
19BAh:  36 0F BB 5E 00                               BTC     SS:[BP], BX
19BFh:  36 0F BB 1C                                  BTC     SS:[SI], BX
19C3h:  36 0F BB 1D                                  BTC     SS:[DI], BX
19C7h:  64 0F BB 18                                  BTC     FS:[BX + SI], BX
19CBh:  64 0F BB 19                                  BTC     FS:[BX + DI], BX
19CFh:  64 0F BB 1A                                  BTC     FS:[BP + SI], BX
19D3h:  64 0F BB 1B                                  BTC     FS:[BP + DI], BX
19D7h:  64 0F BB 5E 00                               BTC     FS:[BP], BX
19DCh:  64 0F BB 1C                                  BTC     FS:[SI], BX
19E0h:  64 0F BB 1D                                  BTC     FS:[DI], BX
19E4h:  65 0F BB 18                                  BTC     GS:[BX + SI], BX
19E8h:  65 0F BB 19                                  BTC     GS:[BX + DI], BX
19ECh:  65 0F BB 1A                                  BTC     GS:[BP + SI], BX
19F0h:  65 0F BB 1B                                  BTC     GS:[BP + DI], BX
19F4h:  65 0F BB 5E 00                               BTC     GS:[BP], BX
19F9h:  65 0F BB 1C                                  BTC     GS:[SI], BX
19FDh:  65 0F BB 1D                                  BTC     GS:[DI], BX
1A00h:  0F BA FB 01                                  BTC     BX, 01h
1A04h:  0F BA FB FF                                  BTC     BX, 0FFh
1A08h:  0F BB E0                                     BTC     AX, SP
1A0Bh:  0F BB E1                                     BTC     CX, SP
1A0Eh:  0F BB E2                                     BTC     DX, SP
1A11h:  0F BB E3                                     BTC     BX, SP
1A14h:  0F BB E4                                     BTC     SP, SP
1A17h:  0F BB E5                                     BTC     BP, SP
1A1Ah:  0F BB E6                                     BTC     SI, SP
1A1Dh:  0F BB E7                                     BTC     DI, SP
1A20h:  0F BB 20                                     BTC     DS:[BX + SI], SP
1A23h:  0F BB 21                                     BTC     DS:[BX + DI], SP
1A26h:  0F BB 22                                     BTC     SS:[BP + SI], SP
1A29h:  0F BB 23                                     BTC     SS:[BP + DI], SP
1A2Ch:  0F BB 66 00                                  BTC     SS:[BP], SP
1A30h:  0F BB 24                                     BTC     DS:[SI], SP
1A33h:  0F BB 25                                     BTC     DS:[DI], SP
1A36h:  0F BB A0 34 12                               BTC     DS:[BX + SI + 1234h], SP
1A3Bh:  0F BB A1 34 12                               BTC     DS:[BX + DI + 1234h], SP
1A40h:  0F BB A2 34 12                               BTC     SS:[BP + SI + 1234h], SP
1A45h:  0F BB A3 34 12                               BTC     SS:[BP + DI + 1234h], SP
1A4Ah:  0F BB A6 34 12                               BTC     SS:[BP + 1234h], SP
1A4Fh:  0F BB A4 34 12                               BTC     DS:[SI + 1234h], SP
1A54h:  0F BB A5 34 12                               BTC     DS:[DI + 1234h], SP
1A5Ah:  2E 0F BB 20                                  BTC     CS:[BX + SI], SP
1A5Eh:  2E 0F BB 21                                  BTC     CS:[BX + DI], SP
1A62h:  2E 0F BB 22                                  BTC     CS:[BP + SI], SP
1A66h:  2E 0F BB 23                                  BTC     CS:[BP + DI], SP
1A6Ah:  2E 0F BB 66 00                               BTC     CS:[BP], SP
1A6Fh:  2E 0F BB 24                                  BTC     CS:[SI], SP
1A73h:  2E 0F BB 25                                  BTC     CS:[DI], SP
1A77h:  3E 0F BB 20                                  BTC     DS:[BX + SI], SP
1A7Bh:  3E 0F BB 21                                  BTC     DS:[BX + DI], SP
1A7Fh:  3E 0F BB 22                                  BTC     DS:[BP + SI], SP
1A83h:  3E 0F BB 23                                  BTC     DS:[BP + DI], SP
1A87h:  3E 0F BB 66 00                               BTC     DS:[BP], SP
1A8Ch:  3E 0F BB 24                                  BTC     DS:[SI], SP
1A90h:  3E 0F BB 25                                  BTC     DS:[DI], SP
1A94h:  26 0F BB 20                                  BTC     ES:[BX + SI], SP
1A98h:  26 0F BB 21                                  BTC     ES:[BX + DI], SP
1A9Ch:  26 0F BB 22                                  BTC     ES:[BP + SI], SP
1AA0h:  26 0F BB 23                                  BTC     ES:[BP + DI], SP
1AA4h:  26 0F BB 66 00                               BTC     ES:[BP], SP
1AA9h:  26 0F BB 24                                  BTC     ES:[SI], SP
1AADh:  26 0F BB 25                                  BTC     ES:[DI], SP
1AB1h:  36 0F BB 20                                  BTC     SS:[BX + SI], SP
1AB5h:  36 0F BB 21                                  BTC     SS:[BX + DI], SP
1AB9h:  36 0F BB 22                                  BTC     SS:[BP + SI], SP
1ABDh:  36 0F BB 23                                  BTC     SS:[BP + DI], SP
1AC1h:  36 0F BB 66 00                               BTC     SS:[BP], SP
1AC6h:  36 0F BB 24                                  BTC     SS:[SI], SP
1ACAh:  36 0F BB 25                                  BTC     SS:[DI], SP
1ACEh:  64 0F BB 20                                  BTC     FS:[BX + SI], SP
1AD2h:  64 0F BB 21                                  BTC     FS:[BX + DI], SP
1AD6h:  64 0F BB 22                                  BTC     FS:[BP + SI], SP
1ADAh:  64 0F BB 23                                  BTC     FS:[BP + DI], SP
1ADEh:  64 0F BB 66 00                               BTC     FS:[BP], SP
1AE3h:  64 0F BB 24                                  BTC     FS:[SI], SP
1AE7h:  64 0F BB 25                                  BTC     FS:[DI], SP
1AEBh:  65 0F BB 20                                  BTC     GS:[BX + SI], SP
1AEFh:  65 0F BB 21                                  BTC     GS:[BX + DI], SP
1AF3h:  65 0F BB 22                                  BTC     GS:[BP + SI], SP
1AF7h:  65 0F BB 23                                  BTC     GS:[BP + DI], SP
1AFBh:  65 0F BB 66 00                               BTC     GS:[BP], SP
1B00h:  65 0F BB 24                                  BTC     GS:[SI], SP
1B04h:  65 0F BB 25                                  BTC     GS:[DI], SP
1B07h:  0F BA FC 01                                  BTC     SP, 01h
1B0Bh:  0F BA FC FF                                  BTC     SP, 0FFh
1B0Fh:  0F BB E8                                     BTC     AX, BP
1B12h:  0F BB E9                                     BTC     CX, BP
1B15h:  0F BB EA                                     BTC     DX, BP
1B18h:  0F BB EB                                     BTC     BX, BP
1B1Bh:  0F BB EC                                     BTC     SP, BP
1B1Eh:  0F BB ED                                     BTC     BP, BP
1B21h:  0F BB EE                                     BTC     SI, BP
1B24h:  0F BB EF                                     BTC     DI, BP
1B27h:  0F BB 28                                     BTC     DS:[BX + SI], BP
1B2Ah:  0F BB 29                                     BTC     DS:[BX + DI], BP
1B2Dh:  0F BB 2A                                     BTC     SS:[BP + SI], BP
1B30h:  0F BB 2B                                     BTC     SS:[BP + DI], BP
1B33h:  0F BB 6E 00                                  BTC     SS:[BP], BP
1B37h:  0F BB 2C                                     BTC     DS:[SI], BP
1B3Ah:  0F BB 2D                                     BTC     DS:[DI], BP
1B3Dh:  0F BB A8 34 12                               BTC     DS:[BX + SI + 1234h], BP
1B42h:  0F BB A9 34 12                               BTC     DS:[BX + DI + 1234h], BP
1B47h:  0F BB AA 34 12                               BTC     SS:[BP + SI + 1234h], BP
1B4Ch:  0F BB AB 34 12                               BTC     SS:[BP + DI + 1234h], BP
1B51h:  0F BB AE 34 12                               BTC     SS:[BP + 1234h], BP
1B56h:  0F BB AC 34 12                               BTC     DS:[SI + 1234h], BP
1B5Bh:  0F BB AD 34 12                               BTC     DS:[DI + 1234h], BP
1B61h:  2E 0F BB 28                                  BTC     CS:[BX + SI], BP
1B65h:  2E 0F BB 29                                  BTC     CS:[BX + DI], BP
1B69h:  2E 0F BB 2A                                  BTC     CS:[BP + SI], BP
1B6Dh:  2E 0F BB 2B                                  BTC     CS:[BP + DI], BP
1B71h:  2E 0F BB 6E 00                               BTC     CS:[BP], BP
1B76h:  2E 0F BB 2C                                  BTC     CS:[SI], BP
1B7Ah:  2E 0F BB 2D                                  BTC     CS:[DI], BP
1B7Eh:  3E 0F BB 28                                  BTC     DS:[BX + SI], BP
1B82h:  3E 0F BB 29                                  BTC     DS:[BX + DI], BP
1B86h:  3E 0F BB 2A                                  BTC     DS:[BP + SI], BP
1B8Ah:  3E 0F BB 2B                                  BTC     DS:[BP + DI], BP
1B8Eh:  3E 0F BB 6E 00                               BTC     DS:[BP], BP
1B93h:  3E 0F BB 2C                                  BTC     DS:[SI], BP
1B97h:  3E 0F BB 2D                                  BTC     DS:[DI], BP
1B9Bh:  26 0F BB 28                                  BTC     ES:[BX + SI], BP
1B9Fh:  26 0F BB 29                                  BTC     ES:[BX + DI], BP
1BA3h:  26 0F BB 2A                                  BTC     ES:[BP + SI], BP
1BA7h:  26 0F BB 2B                                  BTC     ES:[BP + DI], BP
1BABh:  26 0F BB 6E 00                               BTC     ES:[BP], BP
1BB0h:  26 0F BB 2C                                  BTC     ES:[SI], BP
1BB4h:  26 0F BB 2D                                  BTC     ES:[DI], BP
1BB8h:  36 0F BB 28                                  BTC     SS:[BX + SI], BP
1BBCh:  36 0F BB 29                                  BTC     SS:[BX + DI], BP
1BC0h:  36 0F BB 2A                                  BTC     SS:[BP + SI], BP
1BC4h:  36 0F BB 2B                                  BTC     SS:[BP + DI], BP
1BC8h:  36 0F BB 6E 00                               BTC     SS:[BP], BP
1BCDh:  36 0F BB 2C                                  BTC     SS:[SI], BP
1BD1h:  36 0F BB 2D                                  BTC     SS:[DI], BP
1BD5h:  64 0F BB 28                                  BTC     FS:[BX + SI], BP
1BD9h:  64 0F BB 29                                  BTC     FS:[BX + DI], BP
1BDDh:  64 0F BB 2A                                  BTC     FS:[BP + SI], BP
1BE1h:  64 0F BB 2B                                  BTC     FS:[BP + DI], BP
1BE5h:  64 0F BB 6E 00                               BTC     FS:[BP], BP
1BEAh:  64 0F BB 2C                                  BTC     FS:[SI], BP
1BEEh:  64 0F BB 2D                                  BTC     FS:[DI], BP
1BF2h:  65 0F BB 28                                  BTC     GS:[BX + SI], BP
1BF6h:  65 0F BB 29                                  BTC     GS:[BX + DI], BP
1BFAh:  65 0F BB 2A                                  BTC     GS:[BP + SI], BP
1BFEh:  65 0F BB 2B                                  BTC     GS:[BP + DI], BP
1C02h:  65 0F BB 6E 00                               BTC     GS:[BP], BP
1C07h:  65 0F BB 2C                                  BTC     GS:[SI], BP
1C0Bh:  65 0F BB 2D                                  BTC     GS:[DI], BP
1C0Eh:  0F BA FD 01                                  BTC     BP, 01h
1C12h:  0F BA FD FF                                  BTC     BP, 0FFh
1C16h:  0F BB F0                                     BTC     AX, SI
1C19h:  0F BB F1                                     BTC     CX, SI
1C1Ch:  0F BB F2                                     BTC     DX, SI
1C1Fh:  0F BB F3                                     BTC     BX, SI
1C22h:  0F BB F4                                     BTC     SP, SI
1C25h:  0F BB F5                                     BTC     BP, SI
1C28h:  0F BB F6                                     BTC     SI, SI
1C2Bh:  0F BB F7                                     BTC     DI, SI
1C2Eh:  0F BB 30                                     BTC     DS:[BX + SI], SI
1C31h:  0F BB 31                                     BTC     DS:[BX + DI], SI
1C34h:  0F BB 32                                     BTC     SS:[BP + SI], SI
1C37h:  0F BB 33                                     BTC     SS:[BP + DI], SI
1C3Ah:  0F BB 76 00                                  BTC     SS:[BP], SI
1C3Eh:  0F BB 34                                     BTC     DS:[SI], SI
1C41h:  0F BB 35                                     BTC     DS:[DI], SI
1C44h:  0F BB B0 34 12                               BTC     DS:[BX + SI + 1234h], SI
1C49h:  0F BB B1 34 12                               BTC     DS:[BX + DI + 1234h], SI
1C4Eh:  0F BB B2 34 12                               BTC     SS:[BP + SI + 1234h], SI
1C53h:  0F BB B3 34 12                               BTC     SS:[BP + DI + 1234h], SI
1C58h:  0F BB B6 34 12                               BTC     SS:[BP + 1234h], SI
1C5Dh:  0F BB B4 34 12                               BTC     DS:[SI + 1234h], SI
1C62h:  0F BB B5 34 12                               BTC     DS:[DI + 1234h], SI
1C68h:  2E 0F BB 30                                  BTC     CS:[BX + SI], SI
1C6Ch:  2E 0F BB 31                                  BTC     CS:[BX + DI], SI
1C70h:  2E 0F BB 32                                  BTC     CS:[BP + SI], SI
1C74h:  2E 0F BB 33                                  BTC     CS:[BP + DI], SI
1C78h:  2E 0F BB 76 00                               BTC     CS:[BP], SI
1C7Dh:  2E 0F BB 34                                  BTC     CS:[SI], SI
1C81h:  2E 0F BB 35                                  BTC     CS:[DI], SI
1C85h:  3E 0F BB 30                                  BTC     DS:[BX + SI], SI
1C89h:  3E 0F BB 31                                  BTC     DS:[BX + DI], SI
1C8Dh:  3E 0F BB 32                                  BTC     DS:[BP + SI], SI
1C91h:  3E 0F BB 33                                  BTC     DS:[BP + DI], SI
1C95h:  3E 0F BB 76 00                               BTC     DS:[BP], SI
1C9Ah:  3E 0F BB 34                                  BTC     DS:[SI], SI
1C9Eh:  3E 0F BB 35                                  BTC     DS:[DI], SI
1CA2h:  26 0F BB 30                                  BTC     ES:[BX + SI], SI
1CA6h:  26 0F BB 31                                  BTC     ES:[BX + DI], SI
1CAAh:  26 0F BB 32                                  BTC     ES:[BP + SI], SI
1CAEh:  26 0F BB 33                                  BTC     ES:[BP + DI], SI
1CB2h:  26 0F BB 76 00                               BTC     ES:[BP], SI
1CB7h:  26 0F BB 34                                  BTC     ES:[SI], SI
1CBBh:  26 0F BB 35                                  BTC     ES:[DI], SI
1CBFh:  36 0F BB 30                                  BTC     SS:[BX + SI], SI
1CC3h:  36 0F BB 31                                  BTC     SS:[BX + DI], SI
1CC7h:  36 0F BB 32                                  BTC     SS:[BP + SI], SI
1CCBh:  36 0F BB 33                                  BTC     SS:[BP + DI], SI
1CCFh:  36 0F BB 76 00                               BTC     SS:[BP], SI
1CD4h:  36 0F BB 34                                  BTC     SS:[SI], SI
1CD8h:  36 0F BB 35                                  BTC     SS:[DI], SI
1CDCh:  64 0F BB 30                                  BTC     FS:[BX + SI], SI
1CE0h:  64 0F BB 31                                  BTC     FS:[BX + DI], SI
1CE4h:  64 0F BB 32                                  BTC     FS:[BP + SI], SI
1CE8h:  64 0F BB 33                                  BTC     FS:[BP + DI], SI
1CECh:  64 0F BB 76 00                               BTC     FS:[BP], SI
1CF1h:  64 0F BB 34                                  BTC     FS:[SI], SI
1CF5h:  64 0F BB 35                                  BTC     FS:[DI], SI
1CF9h:  65 0F BB 30                                  BTC     GS:[BX + SI], SI
1CFDh:  65 0F BB 31                                  BTC     GS:[BX + DI], SI
1D01h:  65 0F BB 32                                  BTC     GS:[BP + SI], SI
1D05h:  65 0F BB 33                                  BTC     GS:[BP + DI], SI
1D09h:  65 0F BB 76 00                               BTC     GS:[BP], SI
1D0Eh:  65 0F BB 34                                  BTC     GS:[SI], SI
1D12h:  65 0F BB 35                                  BTC     GS:[DI], SI
1D15h:  0F BA FE 01                                  BTC     SI, 01h
1D19h:  0F BA FE FF                                  BTC     SI, 0FFh
1D1Dh:  0F BB F8                                     BTC     AX, DI
1D20h:  0F BB F9                                     BTC     CX, DI
1D23h:  0F BB FA                                     BTC     DX, DI
1D26h:  0F BB FB                                     BTC     BX, DI
1D29h:  0F BB FC                                     BTC     SP, DI
1D2Ch:  0F BB FD                                     BTC     BP, DI
1D2Fh:  0F BB FE                                     BTC     SI, DI
1D32h:  0F BB FF                                     BTC     DI, DI
1D35h:  0F BB 38                                     BTC     DS:[BX + SI], DI
1D38h:  0F BB 39                                     BTC     DS:[BX + DI], DI
1D3Bh:  0F BB 3A                                     BTC     SS:[BP + SI], DI
1D3Eh:  0F BB 3B                                     BTC     SS:[BP + DI], DI
1D41h:  0F BB 7E 00                                  BTC     SS:[BP], DI
1D45h:  0F BB 3C                                     BTC     DS:[SI], DI
1D48h:  0F BB 3D                                     BTC     DS:[DI], DI
1D4Bh:  0F BB B8 34 12                               BTC     DS:[BX + SI + 1234h], DI
1D50h:  0F BB B9 34 12                               BTC     DS:[BX + DI + 1234h], DI
1D55h:  0F BB BA 34 12                               BTC     SS:[BP + SI + 1234h], DI
1D5Ah:  0F BB BB 34 12                               BTC     SS:[BP + DI + 1234h], DI
1D5Fh:  0F BB BE 34 12                               BTC     SS:[BP + 1234h], DI
1D64h:  0F BB BC 34 12                               BTC     DS:[SI + 1234h], DI
1D69h:  0F BB BD 34 12                               BTC     DS:[DI + 1234h], DI
1D6Fh:  2E 0F BB 38                                  BTC     CS:[BX + SI], DI
1D73h:  2E 0F BB 39                                  BTC     CS:[BX + DI], DI
1D77h:  2E 0F BB 3A                                  BTC     CS:[BP + SI], DI
1D7Bh:  2E 0F BB 3B                                  BTC     CS:[BP + DI], DI
1D7Fh:  2E 0F BB 7E 00                               BTC     CS:[BP], DI
1D84h:  2E 0F BB 3C                                  BTC     CS:[SI], DI
1D88h:  2E 0F BB 3D                                  BTC     CS:[DI], DI
1D8Ch:  3E 0F BB 38                                  BTC     DS:[BX + SI], DI
1D90h:  3E 0F BB 39                                  BTC     DS:[BX + DI], DI
1D94h:  3E 0F BB 3A                                  BTC     DS:[BP + SI], DI
1D98h:  3E 0F BB 3B                                  BTC     DS:[BP + DI], DI
1D9Ch:  3E 0F BB 7E 00                               BTC     DS:[BP], DI
1DA1h:  3E 0F BB 3C                                  BTC     DS:[SI], DI
1DA5h:  3E 0F BB 3D                                  BTC     DS:[DI], DI
1DA9h:  26 0F BB 38                                  BTC     ES:[BX + SI], DI
1DADh:  26 0F BB 39                                  BTC     ES:[BX + DI], DI
1DB1h:  26 0F BB 3A                                  BTC     ES:[BP + SI], DI
1DB5h:  26 0F BB 3B                                  BTC     ES:[BP + DI], DI
1DB9h:  26 0F BB 7E 00                               BTC     ES:[BP], DI
1DBEh:  26 0F BB 3C                                  BTC     ES:[SI], DI
1DC2h:  26 0F BB 3D                                  BTC     ES:[DI], DI
1DC6h:  36 0F BB 38                                  BTC     SS:[BX + SI], DI
1DCAh:  36 0F BB 39                                  BTC     SS:[BX + DI], DI
1DCEh:  36 0F BB 3A                                  BTC     SS:[BP + SI], DI
1DD2h:  36 0F BB 3B                                  BTC     SS:[BP + DI], DI
1DD6h:  36 0F BB 7E 00                               BTC     SS:[BP], DI
1DDBh:  36 0F BB 3C                                  BTC     SS:[SI], DI
1DDFh:  36 0F BB 3D                                  BTC     SS:[DI], DI
1DE3h:  64 0F BB 38                                  BTC     FS:[BX + SI], DI
1DE7h:  64 0F BB 39                                  BTC     FS:[BX + DI], DI
1DEBh:  64 0F BB 3A                                  BTC     FS:[BP + SI], DI
1DEFh:  64 0F BB 3B                                  BTC     FS:[BP + DI], DI
1DF3h:  64 0F BB 7E 00                               BTC     FS:[BP], DI
1DF8h:  64 0F BB 3C                                  BTC     FS:[SI], DI
1DFCh:  64 0F BB 3D                                  BTC     FS:[DI], DI
1E00h:  65 0F BB 38                                  BTC     GS:[BX + SI], DI
1E04h:  65 0F BB 39                                  BTC     GS:[BX + DI], DI
1E08h:  65 0F BB 3A                                  BTC     GS:[BP + SI], DI
1E0Ch:  65 0F BB 3B                                  BTC     GS:[BP + DI], DI
1E10h:  65 0F BB 7E 00                               BTC     GS:[BP], DI
1E15h:  65 0F BB 3C                                  BTC     GS:[SI], DI
1E19h:  65 0F BB 3D                                  BTC     GS:[DI], DI
1E1Ch:  0F BA FF 01                                  BTC     DI, 01h
1E20h:  0F BA FF FF                                  BTC     DI, 0FFh
1E24h:  66 0F BA F8 FF                               BTC     EAX, 0FFh
1E29h:  66 0F BA F9 FF                               BTC     ECX, 0FFh
1E2Eh:  66 0F BA FA FF                               BTC     EDX, 0FFh
1E33h:  66 0F BA FB FF                               BTC     EBX, 0FFh
1E38h:  66 0F BA FC FF                               BTC     ESP, 0FFh
1E3Dh:  66 0F BA FD FF                               BTC     EBP, 0FFh
1E42h:  66 0F BA FE FF                               BTC     ESI, 0FFh
1E47h:  66 0F BA FF FF                               BTC     EDI, 0FFh
1E4Ch:  F0 67 0F BB 84 00 21 43 00 00                LOCK    BTC DS:[EAX + EAX + 00004321h], AX
1E56h:  F0 67 0F BB 84 40 21 43 00 00                LOCK    BTC DS:[EAX + EAX*2 + 00004321h], AX
1E60h:  F0 67 0F BB 84 80 21 43 00 00                LOCK    BTC DS:[EAX + EAX*4 + 00004321h], AX
1E6Ah:  F0 67 0F BB 84 C0 21 43 00 00                LOCK    BTC DS:[EAX + EAX*8 + 00004321h], AX
1E74h:  F0 67 0F BB 86 21 43 00 00                   LOCK    BTC DS:[ESI + 00004321h], AX
1E7Dh:  F0 67 0F BB 87 21 43 00 00                   LOCK    BTC DS:[EDI + 00004321h], AX
1E86h:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK    BTC DWORD PTR SS:[EBX + EAX*8 + 12345678h], 9Ah
1E93h:  70 FE                                        JO      1E93h
1E95h:  71 FC                                        JNO     1E93h
1E97h:  72 FA                                        JB      1E93h
1E99h:  73 F8                                        JNB     1E93h
1E9Bh:  74 F6                                        JZ      1E93h
1E9Dh:  75 F4                                        JNZ     1E93h
1E9Fh:  76 F2                                        JBE     1E93h
1EA1h:  77 F0                                        JNBE    1E93h
1EA3h:  78 EE                                        JS      1E93h
1EA5h:  79 EC                                        JNS     1E93h
1EA7h:  7A EA                                        JP      1E93h
1EA9h:  7B E8                                        JNP     1E93h
1EABh:  7C E6                                        JL      1E93h
1EADh:  7D E4                                        JNL     1E93h
1EAFh:  7E E2                                        JLE     1E93h
1EB1h:  7F E0                                        JNLE    1E93h
1EB3h:  E3 DE                                        JCXZ    1E93h
1EB5h:  67 E3 DB                                     JECXZ   1E93h
1EB8h:  70 92                                        JO      1E4Ch
1EBAh:  71 90                                        JNO     1E4Ch
1EBCh:  72 8E                                        JB      1E4Ch
1EBEh:  73 8C                                        JNB     1E4Ch
1EC0h:  74 8A                                        JZ      1E4Ch
1EC2h:  75 88                                        JNZ     1E4Ch
1EC4h:  76 86                                        JBE     1E4Ch
1EC6h:  77 84                                        JNBE    1E4Ch
1EC8h:  78 82                                        JS      1E4Ch
1ECAh:  79 80                                        JNS     1E4Ch
1ECCh:  0F 8A 7C FF                                  JP      1E4Ch
1ED0h:  0F 8B 78 FF                                  JNP     1E4Ch
1ED4h:  0F 8C 74 FF                                  JL      1E4Ch
1ED8h:  0F 8D 70 FF                                  JNL     1E4Ch
1EDCh:  0F 8E 6C FF                                  JLE     1E4Ch
1EE0h:  0F 8F 68 FF                                  JNLE    1E4Ch
1EE4h:  0F 8F 64 FF                                  JNLE    1E4Ch
1EE9h:  2E 70 F9                                     JO      1EE4h
1EECh:  3E 72 F6                                     JB      1EE4h
1EEFh:  2E 74 F3                                     JZ      1EE4h
1EF2h:  3E 76 F0                                     JBE     1EE4h
1EF5h:  2E E3 ED                                     JCXZ    1EE4h
1EF8h:  3E 67 E3 E9                                  JECXZ   1EE4h
1EFCh:  3E 0F 81 00 E2                               JNO     0100h
1F01h:  2E 0F 83 FB E1                               JNB     0100h
1F06h:  2E 0F 85 F6 E1                               JNZ     0100h
1F0Bh:  3E 0F 87 F1 E1                               JNBE    0100h
1F10h:  3E 0F 89 EC E1                               JNS     0100h
1F14h:  D5 0A                                        AAD     
