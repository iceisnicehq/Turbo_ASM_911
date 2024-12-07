0100h:  3E 67 0F BA 7C 2D 00 01                 BTC     WORD PTR DS:[EBP + EBP], 01h
0108h:  67 0F BA 7C 00 1F 01                    BTC     WORD PTR [EAX + EAX + 1Fh], 01h
010Fh:  3E 67 0F BA BC 28 78 56 34 12 01        BTC     WORD PTR DS:[EAX + EBP + 12345678h], 01h
011Ah:  67 0F BA BC 43 0F 10 00 00 01           BTC     WORD PTR [EBX + EAX*2 + 0000100Fh], 01h
0124h:  67 0F BA BC 81 FF 00 00 00 01           BTC     WORD PTR [ECX + EAX*4 + 000000FFh], 01h
012Eh:  67 0F BA BC C0 FF 00 00 00 01           BTC     WORD PTR [EAX + EAX*86 + 000000FFh], 01h
0138h:  3E 67 0F BA BC 2D FF 00 00 00 01        BTC     WORD PTR DS:[EBP + EBP + 000000FFh], 01h
0143h:  3E 67 0F BA 7C 2D 00 01                 BTC     WORD PTR DS:[EBP + EBP], 01h
014Bh:  D5 0A                                   AAD     
014Dh:  66 E3 E0                                JCXZ    0130h
0150h:  67 E3 E0                                JECXZ   0133h
0153h:  66 67 E3 E0                             JECXZ   0137h
0157h:  2E 0F 80 EE F9                          JO      0FB4Ah
015Ch:  3E 0F 80 EE F9                          JO      0FB4Fh
0161h:  0F BA F8 01                             BTC     AX, 01h
0165h:  0F BA F9 FF                             BTC     CX, 0FFh
0169h:  0F BA FA 01                             BTC     DX, 01h
016Dh:  0F BA FB FF                             BTC     BX, 0FFh
0171h:  0F BA FC 01                             BTC     SP, 01h
0175h:  0F BA FD FF                             BTC     BP, 0FFh
0179h:  0F BA FE 01                             BTC     SI, 01h
017Dh:  0F BA FF FF                             BTC     DI, 0FFh
0181h:  66 0F BA F8 01                          BTC     EAX, 01h
0186h:  66 0F BA F9 FF                          BTC     ECX, 0FFh
018Bh:  66 0F BA FA 01                          BTC     EDX, 01h
0190h:  66 0F BA FB FF                          BTC     EBX, 0FFh
0195h:  66 0F BA FC 01                          BTC     ESP, 01h
019Ah:  66 0F BA FD FF                          BTC     EBP, 0FFh
019Fh:  66 0F BA FE 01                          BTC     ESI, 01h
01A4h:  66 0F BA FF FF                          BTC     EDI, 0FFh
01A9h:  F0 0F BA F8 01                          LOCK    BTC AX, 01h
01AEh:  0F BB C0                                BTC     AX, AX
01B1h:  0F BB C8                                BTC     AX, CX
01B4h:  0F BB D0                                BTC     AX, DX
01B7h:  0F BB D8                                BTC     AX, BX
01BAh:  0F BB E0                                BTC     AX, SP
01BDh:  0F BB E8                                BTC     AX, BP
01C0h:  0F BB F0                                BTC     AX, SI
01C3h:  0F BB F8                                BTC     AX, DI
01C6h:  0F BB C1                                BTC     CX, AX
01C9h:  0F BB C9                                BTC     CX, CX
01CCh:  0F BB D1                                BTC     CX, DX
01CFh:  0F BB D9                                BTC     CX, BX
01D2h:  0F BB E1                                BTC     CX, SP
01D5h:  0F BB E9                                BTC     CX, BP
01D8h:  0F BB F1                                BTC     CX, SI
01DBh:  0F BB F9                                BTC     CX, DI
01DEh:  0F BB C2                                BTC     DX, AX
01E1h:  0F BB CA                                BTC     DX, CX
01E4h:  0F BB D2                                BTC     DX, DX
01E7h:  0F BB DA                                BTC     DX, BX
01EAh:  0F BB E2                                BTC     DX, SP
01EDh:  0F BB EA                                BTC     DX, BP
01F0h:  0F BB F2                                BTC     DX, SI
01F3h:  0F BB FA                                BTC     DX, DI
01F6h:  0F BB C3                                BTC     BX, AX
01F9h:  0F BB CB                                BTC     BX, CX
01FCh:  0F BB D3                                BTC     BX, DX
01FFh:  0F BB DB                                BTC     BX, BX
0202h:  0F BB E3                                BTC     BX, SP
0205h:  0F BB EB                                BTC     BX, BP
0208h:  0F BB F3                                BTC     BX, SI
020Bh:  0F BB FB                                BTC     BX, DI
020Eh:  0F BB C4                                BTC     SP, AX
0211h:  0F BB CC                                BTC     SP, CX
0214h:  0F BB D4                                BTC     SP, DX
0217h:  0F BB DC                                BTC     SP, BX
021Ah:  0F BB E4                                BTC     SP, SP
021Dh:  0F BB EC                                BTC     SP, BP
0220h:  0F BB F4                                BTC     SP, SI
0223h:  0F BB FC                                BTC     SP, DI
0226h:  0F BB C5                                BTC     BP, AX
0229h:  0F BB CD                                BTC     BP, CX
022Ch:  0F BB D5                                BTC     BP, DX
022Fh:  0F BB DD                                BTC     BP, BX
0232h:  0F BB E5                                BTC     BP, SP
0235h:  0F BB ED                                BTC     BP, BP
0238h:  0F BB F5                                BTC     BP, SI
023Bh:  0F BB FD                                BTC     BP, DI
023Eh:  0F BB C6                                BTC     SI, AX
0241h:  0F BB CE                                BTC     SI, CX
0244h:  0F BB D6                                BTC     SI, DX
0247h:  0F BB DE                                BTC     SI, BX
024Ah:  0F BB E6                                BTC     SI, SP
024Dh:  0F BB EE                                BTC     SI, BP
0250h:  0F BB F6                                BTC     SI, SI
0253h:  0F BB FE                                BTC     SI, DI
0256h:  0F BB C7                                BTC     DI, AX
0259h:  0F BB CF                                BTC     DI, CX
025Ch:  0F BB D7                                BTC     DI, DX
025Fh:  0F BB DF                                BTC     DI, BX
0262h:  0F BB E7                                BTC     DI, SP
0265h:  0F BB EF                                BTC     DI, BP
0268h:  0F BB F7                                BTC     DI, SI
026Bh:  0F BB FF                                BTC     DI, DI
026Eh:  F0 0F BB C0                             LOCK    BTC AX, AX
0272h:  66 0F BB C0                             BTC     EAX, EAX
0276h:  66 0F BB D8                             BTC     EAX, EBX
027Ah:  66 0F BB C8                             BTC     EAX, ECX
027Eh:  66 0F BB D0                             BTC     EAX, EDX
0282h:  66 0F BB E0                             BTC     EAX, ESP
0286h:  66 0F BB E8                             BTC     EAX, EBP
028Ah:  66 0F BB F0                             BTC     EAX, ESI
028Eh:  66 0F BB F8                             BTC     EAX, EDI
0292h:  66 0F BB C3                             BTC     EBX, EAX
0296h:  66 0F BB DB                             BTC     EBX, EBX
029Ah:  66 0F BB CB                             BTC     EBX, ECX
029Eh:  66 0F BB D3                             BTC     EBX, EDX
02A2h:  66 0F BB E3                             BTC     EBX, ESP
02A6h:  66 0F BB EB                             BTC     EBX, EBP
02AAh:  66 0F BB F3                             BTC     EBX, ESI
02AEh:  66 0F BB FB                             BTC     EBX, EDI
02B2h:  66 0F BB C1                             BTC     ECX, EAX
02B6h:  66 0F BB D9                             BTC     ECX, EBX
02BAh:  66 0F BB C9                             BTC     ECX, ECX
02BEh:  66 0F BB D1                             BTC     ECX, EDX
02C2h:  66 0F BB E1                             BTC     ECX, ESP
02C6h:  66 0F BB E9                             BTC     ECX, EBP
02CAh:  66 0F BB F1                             BTC     ECX, ESI
02CEh:  66 0F BB F9                             BTC     ECX, EDI
02D2h:  66 0F BB C2                             BTC     EDX, EAX
02D6h:  66 0F BB DA                             BTC     EDX, EBX
02DAh:  66 0F BB CA                             BTC     EDX, ECX
02DEh:  66 0F BB D2                             BTC     EDX, EDX
02E2h:  66 0F BB E2                             BTC     EDX, ESP
02E6h:  66 0F BB EA                             BTC     EDX, EBP
02EAh:  66 0F BB F2                             BTC     EDX, ESI
02EEh:  66 0F BB FA                             BTC     EDX, EDI
02F2h:  66 0F BB C4                             BTC     ESP, EAX
02F6h:  66 0F BB DC                             BTC     ESP, EBX
02FAh:  66 0F BB CC                             BTC     ESP, ECX
02FEh:  66 0F BB D4                             BTC     ESP, EDX
0302h:  66 0F BB E4                             BTC     ESP, ESP
0306h:  66 0F BB EC                             BTC     ESP, EBP
030Ah:  66 0F BB F4                             BTC     ESP, ESI
030Eh:  66 0F BB FC                             BTC     ESP, EDI
0312h:  66 0F BB C5                             BTC     EBP, EAX
0316h:  66 0F BB DD                             BTC     EBP, EBX
031Ah:  66 0F BB CD                             BTC     EBP, ECX
031Eh:  66 0F BB D5                             BTC     EBP, EDX
0322h:  66 0F BB E5                             BTC     EBP, ESP
0326h:  66 0F BB ED                             BTC     EBP, EBP
032Ah:  66 0F BB F5                             BTC     EBP, ESI
032Eh:  66 0F BB FD                             BTC     EBP, EDI
0332h:  66 0F BB C6                             BTC     ESI, EAX
0336h:  66 0F BB DE                             BTC     ESI, EBX
033Ah:  66 0F BB CE                             BTC     ESI, ECX
033Eh:  66 0F BB D6                             BTC     ESI, EDX
0342h:  66 0F BB E6                             BTC     ESI, ESP
0346h:  66 0F BB EE                             BTC     ESI, EBP
034Ah:  66 0F BB F6                             BTC     ESI, ESI
034Eh:  66 0F BB FE                             BTC     ESI, EDI
0352h:  66 0F BB C7                             BTC     EDI, EAX
0356h:  66 0F BB DF                             BTC     EDI, EBX
035Ah:  66 0F BB CF                             BTC     EDI, ECX
035Eh:  66 0F BB D7                             BTC     EDI, EDX
0362h:  66 0F BB E7                             BTC     EDI, ESP
0366h:  66 0F BB EF                             BTC     EDI, EBP
036Ah:  66 0F BB F7                             BTC     EDI, ESI
036Eh:  66 0F BB FF                             BTC     EDI, EDI
0372h:  F0 66 0F BB C0                          LOCK    BTC EAX, EAX
0377h:  0F BA 3E FF FF 01                       BTC     WORD PTR [0000h], 01h
037Dh:  26 0F BA 3E FF FF 01                    BTC     WORD PTR ES:[0000h], 01h
0384h:  2E 0F BA 3E FF FF 01                    BTC     WORD PTR CS:[0000h], 01h
038Bh:  36 0F BA 3E FF FF 01                    BTC     WORD PTR SS:[0000h], 01h
0392h:  64 0F BA 3E FF FF 01                    BTC     WORD PTR FS:[0000h], 01h
0399h:  65 0F BA 3E FF FF 01                    BTC     WORD PTR GS:[0000h], 01h
03A0h:  66 0F BA 3E FF FF 01                    BTC     DWORD PTR [0000h], 01h
03A7h:  66 26 0F BA 3E FF FF 01                 BTC     DWORD PTR ES:[0000h], 01h
03AFh:  66 2E 0F BA 3E FF FF 01                 BTC     DWORD PTR CS:[0000h], 01h
03B7h:  66 36 0F BA 3E FF FF 01                 BTC     DWORD PTR SS:[0000h], 01h
03BFh:  66 64 0F BA 3E FF FF 01                 BTC     DWORD PTR FS:[0000h], 01h
03C7h:  66 65 0F BA 3E FF FF 01                 BTC     DWORD PTR GS:[0000h], 01h
03CFh:  0F BB 06 FF FF                          BTC     WORD PTR [0000h], AX
03D4h:  0F BB 1E FF FF                          BTC     WORD PTR [0000h], BX
03D9h:  0F BB 0E FF FF                          BTC     WORD PTR [0000h], CX
03DEh:  0F BB 16 FF FF                          BTC     WORD PTR [0000h], DX
03E3h:  0F BB 26 FF FF                          BTC     WORD PTR [0000h], SP
03E8h:  0F BB 2E FF FF                          BTC     WORD PTR [0000h], BP
03EDh:  0F BB 36 FF FF                          BTC     WORD PTR [0000h], SI
03F2h:  0F BB 3E FF FF                          BTC     WORD PTR [0000h], DI
03F7h:  26 0F BB 06 FF FF                       BTC     WORD PTR ES:[0000h], AX
03FDh:  26 0F BB 1E FF FF                       BTC     WORD PTR ES:[0000h], BX
0403h:  26 0F BB 0E FF FF                       BTC     WORD PTR ES:[0000h], CX
0409h:  26 0F BB 16 FF FF                       BTC     WORD PTR ES:[0000h], DX
040Fh:  26 0F BB 26 FF FF                       BTC     WORD PTR ES:[0000h], SP
0415h:  26 0F BB 2E FF FF                       BTC     WORD PTR ES:[0000h], BP
041Bh:  26 0F BB 36 FF FF                       BTC     WORD PTR ES:[0000h], SI
0421h:  26 0F BB 3E FF FF                       BTC     WORD PTR ES:[0000h], DI
0427h:  2E 0F BB 06 FF FF                       BTC     WORD PTR CS:[0000h], AX
042Dh:  2E 0F BB 1E FF FF                       BTC     WORD PTR CS:[0000h], BX
0433h:  2E 0F BB 0E FF FF                       BTC     WORD PTR CS:[0000h], CX
0439h:  2E 0F BB 16 FF FF                       BTC     WORD PTR CS:[0000h], DX
043Fh:  2E 0F BB 26 FF FF                       BTC     WORD PTR CS:[0000h], SP
0445h:  2E 0F BB 2E FF FF                       BTC     WORD PTR CS:[0000h], BP
044Bh:  2E 0F BB 36 FF FF                       BTC     WORD PTR CS:[0000h], SI
0451h:  2E 0F BB 3E FF FF                       BTC     WORD PTR CS:[0000h], DI
0457h:  36 0F BB 06 FF FF                       BTC     WORD PTR SS:[0000h], AX
045Dh:  36 0F BB 1E FF FF                       BTC     WORD PTR SS:[0000h], BX
0463h:  36 0F BB 0E FF FF                       BTC     WORD PTR SS:[0000h], CX
0469h:  36 0F BB 16 FF FF                       BTC     WORD PTR SS:[0000h], DX
046Fh:  36 0F BB 26 FF FF                       BTC     WORD PTR SS:[0000h], SP
0475h:  36 0F BB 2E FF FF                       BTC     WORD PTR SS:[0000h], BP
047Bh:  36 0F BB 36 FF FF                       BTC     WORD PTR SS:[0000h], SI
0481h:  36 0F BB 3E FF FF                       BTC     WORD PTR SS:[0000h], DI
0487h:  64 0F BB 06 FF FF                       BTC     WORD PTR FS:[0000h], AX
048Dh:  64 0F BB 1E FF FF                       BTC     WORD PTR FS:[0000h], BX
0493h:  64 0F BB 0E FF FF                       BTC     WORD PTR FS:[0000h], CX
0499h:  64 0F BB 16 FF FF                       BTC     WORD PTR FS:[0000h], DX
049Fh:  64 0F BB 26 FF FF                       BTC     WORD PTR FS:[0000h], SP
04A5h:  64 0F BB 2E FF FF                       BTC     WORD PTR FS:[0000h], BP
04ABh:  64 0F BB 36 FF FF                       BTC     WORD PTR FS:[0000h], SI
04B1h:  64 0F BB 3E FF FF                       BTC     WORD PTR FS:[0000h], DI
04B7h:  65 0F BB 06 FF FF                       BTC     WORD PTR GS:[0000h], AX
04BDh:  65 0F BB 1E FF FF                       BTC     WORD PTR GS:[0000h], BX
04C3h:  65 0F BB 0E FF FF                       BTC     WORD PTR GS:[0000h], CX
04C9h:  65 0F BB 16 FF FF                       BTC     WORD PTR GS:[0000h], DX
04CFh:  65 0F BB 26 FF FF                       BTC     WORD PTR GS:[0000h], SP
04D5h:  65 0F BB 2E FF FF                       BTC     WORD PTR GS:[0000h], BP
04DBh:  65 0F BB 36 FF FF                       BTC     WORD PTR GS:[0000h], SI
04E1h:  65 0F BB 3E FF FF                       BTC     WORD PTR GS:[0000h], DI
04E7h:  66 0F BB 06 FF FF                       BTC     DWORD PTR [0000h], EAX
04EDh:  66 0F BB 1E FF FF                       BTC     DWORD PTR [0000h], EBX
04F3h:  66 0F BB 0E FF FF                       BTC     DWORD PTR [0000h], ECX
04F9h:  66 0F BB 16 FF FF                       BTC     DWORD PTR [0000h], EDX
04FFh:  66 0F BB 26 FF FF                       BTC     DWORD PTR [0000h], ESP
0505h:  66 0F BB 2E FF FF                       BTC     DWORD PTR [0000h], EBP
050Bh:  66 0F BB 36 FF FF                       BTC     DWORD PTR [0000h], ESI
0511h:  66 0F BB 3E FF FF                       BTC     DWORD PTR [0000h], EDI
0517h:  66 26 0F BB 06 FF FF                    BTC     DWORD PTR ES:[0000h], EAX
051Eh:  66 26 0F BB 1E FF FF                    BTC     DWORD PTR ES:[0000h], EBX
0525h:  66 26 0F BB 0E FF FF                    BTC     DWORD PTR ES:[0000h], ECX
052Ch:  66 26 0F BB 16 FF FF                    BTC     DWORD PTR ES:[0000h], EDX
0533h:  66 26 0F BB 26 FF FF                    BTC     DWORD PTR ES:[0000h], ESP
053Ah:  66 26 0F BB 2E FF FF                    BTC     DWORD PTR ES:[0000h], EBP
0541h:  66 26 0F BB 36 FF FF                    BTC     DWORD PTR ES:[0000h], ESI
0548h:  66 26 0F BB 3E FF FF                    BTC     DWORD PTR ES:[0000h], EDI
054Fh:  66 2E 0F BB 06 FF FF                    BTC     DWORD PTR CS:[0000h], EAX
0556h:  66 2E 0F BB 1E FF FF                    BTC     DWORD PTR CS:[0000h], EBX
055Dh:  66 2E 0F BB 0E FF FF                    BTC     DWORD PTR CS:[0000h], ECX
0564h:  66 2E 0F BB 16 FF FF                    BTC     DWORD PTR CS:[0000h], EDX
056Bh:  66 2E 0F BB 26 FF FF                    BTC     DWORD PTR CS:[0000h], ESP
0572h:  66 2E 0F BB 2E FF FF                    BTC     DWORD PTR CS:[0000h], EBP
0579h:  66 2E 0F BB 36 FF FF                    BTC     DWORD PTR CS:[0000h], ESI
0580h:  66 2E 0F BB 3E FF FF                    BTC     DWORD PTR CS:[0000h], EDI
0587h:  66 36 0F BB 06 FF FF                    BTC     DWORD PTR SS:[0000h], EAX
058Eh:  66 36 0F BB 1E FF FF                    BTC     DWORD PTR SS:[0000h], EBX
0595h:  66 36 0F BB 0E FF FF                    BTC     DWORD PTR SS:[0000h], ECX
059Ch:  66 36 0F BB 16 FF FF                    BTC     DWORD PTR SS:[0000h], EDX
05A3h:  66 36 0F BB 26 FF FF                    BTC     DWORD PTR SS:[0000h], ESP
05AAh:  66 36 0F BB 2E FF FF                    BTC     DWORD PTR SS:[0000h], EBP
05B1h:  66 36 0F BB 36 FF FF                    BTC     DWORD PTR SS:[0000h], ESI
05B8h:  66 36 0F BB 3E FF FF                    BTC     DWORD PTR SS:[0000h], EDI
05BFh:  66 64 0F BB 06 FF FF                    BTC     DWORD PTR FS:[0000h], EAX
05C6h:  66 64 0F BB 1E FF FF                    BTC     DWORD PTR FS:[0000h], EBX
05CDh:  66 64 0F BB 0E FF FF                    BTC     DWORD PTR FS:[0000h], ECX
05D4h:  66 64 0F BB 16 FF FF                    BTC     DWORD PTR FS:[0000h], EDX
05DBh:  66 64 0F BB 26 FF FF                    BTC     DWORD PTR FS:[0000h], ESP
05E2h:  66 64 0F BB 2E FF FF                    BTC     DWORD PTR FS:[0000h], EBP
05E9h:  66 64 0F BB 36 FF FF                    BTC     DWORD PTR FS:[0000h], ESI
05F0h:  66 64 0F BB 3E FF FF                    BTC     DWORD PTR FS:[0000h], EDI
05F7h:  66 65 0F BB 06 FF FF                    BTC     DWORD PTR GS:[0000h], EAX
05FEh:  66 65 0F BB 1E FF FF                    BTC     DWORD PTR GS:[0000h], EBX
0605h:  66 65 0F BB 0E FF FF                    BTC     DWORD PTR GS:[0000h], ECX
060Ch:  66 65 0F BB 16 FF FF                    BTC     DWORD PTR GS:[0000h], EDX
0613h:  66 65 0F BB 26 FF FF                    BTC     DWORD PTR GS:[0000h], ESP
061Ah:  66 65 0F BB 2E FF FF                    BTC     DWORD PTR GS:[0000h], EBP
0621h:  66 65 0F BB 36 FF FF                    BTC     DWORD PTR GS:[0000h], ESI
0628h:  66 65 0F BB 3E FF FF                    BTC     DWORD PTR GS:[0000h], EDI
062Fh:  F0 0F BB 06 FF FF                       LOCK    BTC WORD PTR [0000h], AX
0635h:  F0 0F BA 3E FF FF 01                    LOCK    BTC WORD PTR [0000h], 01h
063Ch:  F0 66 0F BB 06 FF FF                    LOCK    BTC DWORD PTR [0000h], EAX
0643h:  F0 66 0F BA 3E FF FF 01                 LOCK    BTC DWORD PTR [0000h], 01h
064Bh:  70 FE                                   JO      064Bh
064Dh:  72 FC                                   JB      064Bh
064Fh:  73 FA                                   JNB     064Bh
0651h:  74 F8                                   JZ      064Bh
0653h:  75 F6                                   JNZ     064Bh
0655h:  76 F4                                   JBE     064Bh
0657h:  77 F2                                   JNBE    064Bh
0659h:  78 F0                                   JS      064Bh
065Bh:  79 EE                                   JNS     064Bh
065Dh:  7A EC                                   JP      064Bh
065Fh:  7B EA                                   JNP     064Bh
0661h:  7C E8                                   JL      064Bh
0663h:  7D E6                                   JNL     064Bh
0665h:  7E E4                                   JLE     064Bh
0667h:  7F E2                                   JNLE    064Bh
0669h:  E3 E0                                   JCXZ    064Bh
066Bh:  67 E3 DD                                JECXZ   064Bh
066Eh:  0F 80 8E FA                             JO      0100h
0672h:  0F 82 8A FA                             JB      0100h
0676h:  0F 83 86 FA                             JNB     0100h
067Ah:  0F 84 82 FA                             JZ      0100h
067Eh:  0F 85 7E FA                             JNZ     0100h
0682h:  0F 86 7A FA                             JBE     0100h
0686h:  0F 87 76 FA                             JNBE    0100h
068Ah:  0F 88 72 FA                             JS      0100h
068Eh:  0F 89 6E FA                             JNS     0100h
0692h:  0F 8A 6A FA                             JP      0100h
0696h:  0F 8B 66 FA                             JNP     0100h
069Ah:  0F 8C 62 FA                             JL      0100h
069Eh:  0F 8D 5E FA                             JNL     0100h
06A2h:  0F 8E 5A FA                             JLE     0100h
06A6h:  0F 8F 56 FA                             JNLE    0100h
