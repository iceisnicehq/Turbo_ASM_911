0100h:  0F BA 3E FF FF 01                       BTC     WORD PTR [0FFFFh], 01h
0106h:  2E 67 0F BB 84 05 00 00 FF FF           BTC     WORD PTR CS:[EBP + EAX + 0FFFF0000h], AX
0110h:  2E 67 0F BB 44 05 01                    BTC     WORD PTR CS:[EBP + EAX + 01h], AX
0117h:  2E 67 0F BB 84 0B FE FF 00 00           BTC     WORD PTR CS:[EBX + ECX + 00000FFFEh], AX
0121h:  0F BA 3E FF FF FF                       BTC     WORD PTR [0FFFFh], 0FFh
0127h:  2E 67 0F BB 44 05 FF                    BTC     WORD PTR CS:[EBP + EAX + 0FFh], AX
012Eh:  2E 67 0F BB 04 0B                       BTC     WORD PTR CS:[EBX + ECX], AX
0134h:  3E 67 0F BA 7C 2D 00 01                 BTC     WORD PTR DS:[EBP + EBP], 01h
013Ch:  67 0F BA 7C 00 1F 01                    BTC     WORD PTR [EAX + EAX + 1Fh], 01h
0143h:  3E 67 0F BA BC 28 78 56 34 12 01        BTC     WORD PTR DS:[EAX + EBP + 12345678h], 01h
014Eh:  67 0F BA BC 43 0F 10 00 00 01           BTC     WORD PTR [EBX + EAX*2 + 0000100Fh], 01h
0158h:  67 0F BA BC 81 FF 00 00 00 01           BTC     WORD PTR [ECX + EAX*4 + 000000FFh], 01h
0162h:  67 0F BA BC C0 FF 00 00 00 01           BTC     WORD PTR [EAX + EAX*86 + 000000FFh], 01h
016Ch:  3E 67 0F BA BC 2D FF 00 00 00 01        BTC     WORD PTR DS:[EBP + EBP + 000000FFh], 01h
0177h:  3E 67 0F BA 7C 2D 00 01                 BTC     WORD PTR DS:[EBP + EBP], 01h
017Fh:  D5 0A                                   AAD     
0181h:  66 E3 E0                                JCXZ    0164h
0184h:  67 E3 E0                                JECXZ   0167h
0187h:  66 67 E3 E0                             JECXZ   016Bh
018Bh:  2E 0F 80 EE F9                          JO      0FB7Eh
0190h:  3E 0F 80 EE F9                          JO      0FB83h
0195h:  0F BA F8 01                             BTC     AX, 01h
0199h:  0F BA F9 FF                             BTC     CX, 0FFh
019Dh:  0F BA FA 01                             BTC     DX, 01h
01A1h:  0F BA FB FF                             BTC     BX, 0FFh
01A5h:  0F BA FC 01                             BTC     SP, 01h
01A9h:  0F BA FD FF                             BTC     BP, 0FFh
01ADh:  0F BA FE 01                             BTC     SI, 01h
01B1h:  0F BA FF FF                             BTC     DI, 0FFh
01B5h:  66 0F BA F8 01                          BTC     EAX, 01h
01BAh:  66 0F BA F9 FF                          BTC     ECX, 0FFh
01BFh:  66 0F BA FA 01                          BTC     EDX, 01h
01C4h:  66 0F BA FB FF                          BTC     EBX, 0FFh
01C9h:  66 0F BA FC 01                          BTC     ESP, 01h
01CEh:  66 0F BA FD FF                          BTC     EBP, 0FFh
01D3h:  66 0F BA FE 01                          BTC     ESI, 01h
01D8h:  66 0F BA FF FF                          BTC     EDI, 0FFh
01DDh:  F0 0F BA F8 01                          LOCK    BTC AX, 01h
01E2h:  0F BB C0                                BTC     AX, AX
01E5h:  0F BB C8                                BTC     AX, CX
01E8h:  0F BB D0                                BTC     AX, DX
01EBh:  0F BB D8                                BTC     AX, BX
01EEh:  0F BB E0                                BTC     AX, SP
01F1h:  0F BB E8                                BTC     AX, BP
01F4h:  0F BB F0                                BTC     AX, SI
01F7h:  0F BB F8                                BTC     AX, DI
01FAh:  0F BB C1                                BTC     CX, AX
01FDh:  0F BB C9                                BTC     CX, CX
0200h:  0F BB D1                                BTC     CX, DX
0203h:  0F BB D9                                BTC     CX, BX
0206h:  0F BB E1                                BTC     CX, SP
0209h:  0F BB E9                                BTC     CX, BP
020Ch:  0F BB F1                                BTC     CX, SI
020Fh:  0F BB F9                                BTC     CX, DI
0212h:  0F BB C2                                BTC     DX, AX
0215h:  0F BB CA                                BTC     DX, CX
0218h:  0F BB D2                                BTC     DX, DX
021Bh:  0F BB DA                                BTC     DX, BX
021Eh:  0F BB E2                                BTC     DX, SP
0221h:  0F BB EA                                BTC     DX, BP
0224h:  0F BB F2                                BTC     DX, SI
0227h:  0F BB FA                                BTC     DX, DI
022Ah:  0F BB C3                                BTC     BX, AX
022Dh:  0F BB CB                                BTC     BX, CX
0230h:  0F BB D3                                BTC     BX, DX
0233h:  0F BB DB                                BTC     BX, BX
0236h:  0F BB E3                                BTC     BX, SP
0239h:  0F BB EB                                BTC     BX, BP
023Ch:  0F BB F3                                BTC     BX, SI
023Fh:  0F BB FB                                BTC     BX, DI
0242h:  0F BB C4                                BTC     SP, AX
0245h:  0F BB CC                                BTC     SP, CX
0248h:  0F BB D4                                BTC     SP, DX
024Bh:  0F BB DC                                BTC     SP, BX
024Eh:  0F BB E4                                BTC     SP, SP
0251h:  0F BB EC                                BTC     SP, BP
0254h:  0F BB F4                                BTC     SP, SI
0257h:  0F BB FC                                BTC     SP, DI
025Ah:  0F BB C5                                BTC     BP, AX
025Dh:  0F BB CD                                BTC     BP, CX
0260h:  0F BB D5                                BTC     BP, DX
0263h:  0F BB DD                                BTC     BP, BX
0266h:  0F BB E5                                BTC     BP, SP
0269h:  0F BB ED                                BTC     BP, BP
026Ch:  0F BB F5                                BTC     BP, SI
026Fh:  0F BB FD                                BTC     BP, DI
0272h:  0F BB C6                                BTC     SI, AX
0275h:  0F BB CE                                BTC     SI, CX
0278h:  0F BB D6                                BTC     SI, DX
027Bh:  0F BB DE                                BTC     SI, BX
027Eh:  0F BB E6                                BTC     SI, SP
0281h:  0F BB EE                                BTC     SI, BP
0284h:  0F BB F6                                BTC     SI, SI
0287h:  0F BB FE                                BTC     SI, DI
028Ah:  0F BB C7                                BTC     DI, AX
028Dh:  0F BB CF                                BTC     DI, CX
0290h:  0F BB D7                                BTC     DI, DX
0293h:  0F BB DF                                BTC     DI, BX
0296h:  0F BB E7                                BTC     DI, SP
0299h:  0F BB EF                                BTC     DI, BP
029Ch:  0F BB F7                                BTC     DI, SI
029Fh:  0F BB FF                                BTC     DI, DI
02A2h:  F0 0F BB C0                             LOCK    BTC AX, AX
02A6h:  66 0F BB C0                             BTC     EAX, EAX
02AAh:  66 0F BB D8                             BTC     EAX, EBX
02AEh:  66 0F BB C8                             BTC     EAX, ECX
02B2h:  66 0F BB D0                             BTC     EAX, EDX
02B6h:  66 0F BB E0                             BTC     EAX, ESP
02BAh:  66 0F BB E8                             BTC     EAX, EBP
02BEh:  66 0F BB F0                             BTC     EAX, ESI
02C2h:  66 0F BB F8                             BTC     EAX, EDI
02C6h:  66 0F BB C3                             BTC     EBX, EAX
02CAh:  66 0F BB DB                             BTC     EBX, EBX
02CEh:  66 0F BB CB                             BTC     EBX, ECX
02D2h:  66 0F BB D3                             BTC     EBX, EDX
02D6h:  66 0F BB E3                             BTC     EBX, ESP
02DAh:  66 0F BB EB                             BTC     EBX, EBP
02DEh:  66 0F BB F3                             BTC     EBX, ESI
02E2h:  66 0F BB FB                             BTC     EBX, EDI
02E6h:  66 0F BB C1                             BTC     ECX, EAX
02EAh:  66 0F BB D9                             BTC     ECX, EBX
02EEh:  66 0F BB C9                             BTC     ECX, ECX
02F2h:  66 0F BB D1                             BTC     ECX, EDX
02F6h:  66 0F BB E1                             BTC     ECX, ESP
02FAh:  66 0F BB E9                             BTC     ECX, EBP
02FEh:  66 0F BB F1                             BTC     ECX, ESI
0302h:  66 0F BB F9                             BTC     ECX, EDI
0306h:  66 0F BB C2                             BTC     EDX, EAX
030Ah:  66 0F BB DA                             BTC     EDX, EBX
030Eh:  66 0F BB CA                             BTC     EDX, ECX
0312h:  66 0F BB D2                             BTC     EDX, EDX
0316h:  66 0F BB E2                             BTC     EDX, ESP
031Ah:  66 0F BB EA                             BTC     EDX, EBP
031Eh:  66 0F BB F2                             BTC     EDX, ESI
0322h:  66 0F BB FA                             BTC     EDX, EDI
0326h:  66 0F BB C4                             BTC     ESP, EAX
032Ah:  66 0F BB DC                             BTC     ESP, EBX
032Eh:  66 0F BB CC                             BTC     ESP, ECX
0332h:  66 0F BB D4                             BTC     ESP, EDX
0336h:  66 0F BB E4                             BTC     ESP, ESP
033Ah:  66 0F BB EC                             BTC     ESP, EBP
033Eh:  66 0F BB F4                             BTC     ESP, ESI
0342h:  66 0F BB FC                             BTC     ESP, EDI
0346h:  66 0F BB C5                             BTC     EBP, EAX
034Ah:  66 0F BB DD                             BTC     EBP, EBX
034Eh:  66 0F BB CD                             BTC     EBP, ECX
0352h:  66 0F BB D5                             BTC     EBP, EDX
0356h:  66 0F BB E5                             BTC     EBP, ESP
035Ah:  66 0F BB ED                             BTC     EBP, EBP
035Eh:  66 0F BB F5                             BTC     EBP, ESI
0362h:  66 0F BB FD                             BTC     EBP, EDI
0366h:  66 0F BB C6                             BTC     ESI, EAX
036Ah:  66 0F BB DE                             BTC     ESI, EBX
036Eh:  66 0F BB CE                             BTC     ESI, ECX
0372h:  66 0F BB D6                             BTC     ESI, EDX
0376h:  66 0F BB E6                             BTC     ESI, ESP
037Ah:  66 0F BB EE                             BTC     ESI, EBP
037Eh:  66 0F BB F6                             BTC     ESI, ESI
0382h:  66 0F BB FE                             BTC     ESI, EDI
0386h:  66 0F BB C7                             BTC     EDI, EAX
038Ah:  66 0F BB DF                             BTC     EDI, EBX
038Eh:  66 0F BB CF                             BTC     EDI, ECX
0392h:  66 0F BB D7                             BTC     EDI, EDX
0396h:  66 0F BB E7                             BTC     EDI, ESP
039Ah:  66 0F BB EF                             BTC     EDI, EBP
039Eh:  66 0F BB F7                             BTC     EDI, ESI
03A2h:  66 0F BB FF                             BTC     EDI, EDI
03A6h:  F0 66 0F BB C0                          LOCK    BTC EAX, EAX
03ABh:  0F BA 3E FF FF 01                       BTC     WORD PTR [0FFFFh], 01h
03B1h:  26 0F BA 3E FF FF 01                    BTC     WORD PTR ES:[0FFFFh], 01h
03B8h:  2E 0F BA 3E FF FF 01                    BTC     WORD PTR CS:[0FFFFh], 01h
03BFh:  36 0F BA 3E FF FF 01                    BTC     WORD PTR SS:[0FFFFh], 01h
03C6h:  64 0F BA 3E FF FF 01                    BTC     WORD PTR FS:[0FFFFh], 01h
03CDh:  65 0F BA 3E FF FF 01                    BTC     WORD PTR GS:[0FFFFh], 01h
03D4h:  66 0F BA 3E FF FF 01                    BTC     DWORD PTR [0FFFFh], 01h
03DBh:  66 26 0F BA 3E FF FF 01                 BTC     DWORD PTR ES:[0FFFFh], 01h
03E3h:  66 2E 0F BA 3E FF FF 01                 BTC     DWORD PTR CS:[0FFFFh], 01h
03EBh:  66 36 0F BA 3E FF FF 01                 BTC     DWORD PTR SS:[0FFFFh], 01h
03F3h:  66 64 0F BA 3E FF FF 01                 BTC     DWORD PTR FS:[0FFFFh], 01h
03FBh:  66 65 0F BA 3E FF FF 01                 BTC     DWORD PTR GS:[0FFFFh], 01h
0403h:  0F BB 06 FF FF                          BTC     WORD PTR [0FFFFh], AX
0408h:  0F BB 1E FF FF                          BTC     WORD PTR [0FFFFh], BX
040Dh:  0F BB 0E FF FF                          BTC     WORD PTR [0FFFFh], CX
0412h:  0F BB 16 FF FF                          BTC     WORD PTR [0FFFFh], DX
0417h:  0F BB 26 FF FF                          BTC     WORD PTR [0FFFFh], SP
041Ch:  0F BB 2E FF FF                          BTC     WORD PTR [0FFFFh], BP
0421h:  0F BB 36 FF FF                          BTC     WORD PTR [0FFFFh], SI
0426h:  0F BB 3E FF FF                          BTC     WORD PTR [0FFFFh], DI
042Bh:  26 0F BB 06 FF FF                       BTC     WORD PTR ES:[0FFFFh], AX
0431h:  26 0F BB 1E FF FF                       BTC     WORD PTR ES:[0FFFFh], BX
0437h:  26 0F BB 0E FF FF                       BTC     WORD PTR ES:[0FFFFh], CX
043Dh:  26 0F BB 16 FF FF                       BTC     WORD PTR ES:[0FFFFh], DX
0443h:  26 0F BB 26 FF FF                       BTC     WORD PTR ES:[0FFFFh], SP
0449h:  26 0F BB 2E FF FF                       BTC     WORD PTR ES:[0FFFFh], BP
044Fh:  26 0F BB 36 FF FF                       BTC     WORD PTR ES:[0FFFFh], SI
0455h:  26 0F BB 3E FF FF                       BTC     WORD PTR ES:[0FFFFh], DI
045Bh:  2E 0F BB 06 FF FF                       BTC     WORD PTR CS:[0FFFFh], AX
0461h:  2E 0F BB 1E FF FF                       BTC     WORD PTR CS:[0FFFFh], BX
0467h:  2E 0F BB 0E FF FF                       BTC     WORD PTR CS:[0FFFFh], CX
046Dh:  2E 0F BB 16 FF FF                       BTC     WORD PTR CS:[0FFFFh], DX
0473h:  2E 0F BB 26 FF FF                       BTC     WORD PTR CS:[0FFFFh], SP
0479h:  2E 0F BB 2E FF FF                       BTC     WORD PTR CS:[0FFFFh], BP
047Fh:  2E 0F BB 36 FF FF                       BTC     WORD PTR CS:[0FFFFh], SI
0485h:  2E 0F BB 3E FF FF                       BTC     WORD PTR CS:[0FFFFh], DI
048Bh:  36 0F BB 06 FF FF                       BTC     WORD PTR SS:[0FFFFh], AX
0491h:  36 0F BB 1E FF FF                       BTC     WORD PTR SS:[0FFFFh], BX
0497h:  36 0F BB 0E FF FF                       BTC     WORD PTR SS:[0FFFFh], CX
049Dh:  36 0F BB 16 FF FF                       BTC     WORD PTR SS:[0FFFFh], DX
04A3h:  36 0F BB 26 FF FF                       BTC     WORD PTR SS:[0FFFFh], SP
04A9h:  36 0F BB 2E FF FF                       BTC     WORD PTR SS:[0FFFFh], BP
04AFh:  36 0F BB 36 FF FF                       BTC     WORD PTR SS:[0FFFFh], SI
04B5h:  36 0F BB 3E FF FF                       BTC     WORD PTR SS:[0FFFFh], DI
04BBh:  64 0F BB 06 FF FF                       BTC     WORD PTR FS:[0FFFFh], AX
04C1h:  64 0F BB 1E FF FF                       BTC     WORD PTR FS:[0FFFFh], BX
04C7h:  64 0F BB 0E FF FF                       BTC     WORD PTR FS:[0FFFFh], CX
04CDh:  64 0F BB 16 FF FF                       BTC     WORD PTR FS:[0FFFFh], DX
04D3h:  64 0F BB 26 FF FF                       BTC     WORD PTR FS:[0FFFFh], SP
04D9h:  64 0F BB 2E FF FF                       BTC     WORD PTR FS:[0FFFFh], BP
04DFh:  64 0F BB 36 FF FF                       BTC     WORD PTR FS:[0FFFFh], SI
04E5h:  64 0F BB 3E FF FF                       BTC     WORD PTR FS:[0FFFFh], DI
04EBh:  65 0F BB 06 FF FF                       BTC     WORD PTR GS:[0FFFFh], AX
04F1h:  65 0F BB 1E FF FF                       BTC     WORD PTR GS:[0FFFFh], BX
04F7h:  65 0F BB 0E FF FF                       BTC     WORD PTR GS:[0FFFFh], CX
04FDh:  65 0F BB 16 FF FF                       BTC     WORD PTR GS:[0FFFFh], DX
0503h:  65 0F BB 26 FF FF                       BTC     WORD PTR GS:[0FFFFh], SP
0509h:  65 0F BB 2E FF FF                       BTC     WORD PTR GS:[0FFFFh], BP
050Fh:  65 0F BB 36 FF FF                       BTC     WORD PTR GS:[0FFFFh], SI
0515h:  65 0F BB 3E FF FF                       BTC     WORD PTR GS:[0FFFFh], DI
051Bh:  66 0F BB 06 FF FF                       BTC     DWORD PTR [0FFFFh], EAX
0521h:  66 0F BB 1E FF FF                       BTC     DWORD PTR [0FFFFh], EBX
0527h:  66 0F BB 0E FF FF                       BTC     DWORD PTR [0FFFFh], ECX
052Dh:  66 0F BB 16 FF FF                       BTC     DWORD PTR [0FFFFh], EDX
0533h:  66 0F BB 26 FF FF                       BTC     DWORD PTR [0FFFFh], ESP
0539h:  66 0F BB 2E FF FF                       BTC     DWORD PTR [0FFFFh], EBP
053Fh:  66 0F BB 36 FF FF                       BTC     DWORD PTR [0FFFFh], ESI
0545h:  66 0F BB 3E FF FF                       BTC     DWORD PTR [0FFFFh], EDI
054Bh:  66 26 0F BB 06 FF FF                    BTC     DWORD PTR ES:[0FFFFh], EAX
0552h:  66 26 0F BB 1E FF FF                    BTC     DWORD PTR ES:[0FFFFh], EBX
0559h:  66 26 0F BB 0E FF FF                    BTC     DWORD PTR ES:[0FFFFh], ECX
0560h:  66 26 0F BB 16 FF FF                    BTC     DWORD PTR ES:[0FFFFh], EDX
0567h:  66 26 0F BB 26 FF FF                    BTC     DWORD PTR ES:[0FFFFh], ESP
056Eh:  66 26 0F BB 2E FF FF                    BTC     DWORD PTR ES:[0FFFFh], EBP
0575h:  66 26 0F BB 36 FF FF                    BTC     DWORD PTR ES:[0FFFFh], ESI
057Ch:  66 26 0F BB 3E FF FF                    BTC     DWORD PTR ES:[0FFFFh], EDI
0583h:  66 2E 0F BB 06 FF FF                    BTC     DWORD PTR CS:[0FFFFh], EAX
058Ah:  66 2E 0F BB 1E FF FF                    BTC     DWORD PTR CS:[0FFFFh], EBX
0591h:  66 2E 0F BB 0E FF FF                    BTC     DWORD PTR CS:[0FFFFh], ECX
0598h:  66 2E 0F BB 16 FF FF                    BTC     DWORD PTR CS:[0FFFFh], EDX
059Fh:  66 2E 0F BB 26 FF FF                    BTC     DWORD PTR CS:[0FFFFh], ESP
05A6h:  66 2E 0F BB 2E FF FF                    BTC     DWORD PTR CS:[0FFFFh], EBP
05ADh:  66 2E 0F BB 36 FF FF                    BTC     DWORD PTR CS:[0FFFFh], ESI
05B4h:  66 2E 0F BB 3E FF FF                    BTC     DWORD PTR CS:[0FFFFh], EDI
05BBh:  66 36 0F BB 06 FF FF                    BTC     DWORD PTR SS:[0FFFFh], EAX
05C2h:  66 36 0F BB 1E FF FF                    BTC     DWORD PTR SS:[0FFFFh], EBX
05C9h:  66 36 0F BB 0E FF FF                    BTC     DWORD PTR SS:[0FFFFh], ECX
05D0h:  66 36 0F BB 16 FF FF                    BTC     DWORD PTR SS:[0FFFFh], EDX
05D7h:  66 36 0F BB 26 FF FF                    BTC     DWORD PTR SS:[0FFFFh], ESP
05DEh:  66 36 0F BB 2E FF FF                    BTC     DWORD PTR SS:[0FFFFh], EBP
05E5h:  66 36 0F BB 36 FF FF                    BTC     DWORD PTR SS:[0FFFFh], ESI
05ECh:  66 36 0F BB 3E FF FF                    BTC     DWORD PTR SS:[0FFFFh], EDI
05F3h:  66 64 0F BB 06 FF FF                    BTC     DWORD PTR FS:[0FFFFh], EAX
05FAh:  66 64 0F BB 1E FF FF                    BTC     DWORD PTR FS:[0FFFFh], EBX
0601h:  66 64 0F BB 0E FF FF                    BTC     DWORD PTR FS:[0FFFFh], ECX
0608h:  66 64 0F BB 16 FF FF                    BTC     DWORD PTR FS:[0FFFFh], EDX
060Fh:  66 64 0F BB 26 FF FF                    BTC     DWORD PTR FS:[0FFFFh], ESP
0616h:  66 64 0F BB 2E FF FF                    BTC     DWORD PTR FS:[0FFFFh], EBP
061Dh:  66 64 0F BB 36 FF FF                    BTC     DWORD PTR FS:[0FFFFh], ESI
0624h:  66 64 0F BB 3E FF FF                    BTC     DWORD PTR FS:[0FFFFh], EDI
062Bh:  66 65 0F BB 06 FF FF                    BTC     DWORD PTR GS:[0FFFFh], EAX
0632h:  66 65 0F BB 1E FF FF                    BTC     DWORD PTR GS:[0FFFFh], EBX
0639h:  66 65 0F BB 0E FF FF                    BTC     DWORD PTR GS:[0FFFFh], ECX
0640h:  66 65 0F BB 16 FF FF                    BTC     DWORD PTR GS:[0FFFFh], EDX
0647h:  66 65 0F BB 26 FF FF                    BTC     DWORD PTR GS:[0FFFFh], ESP
064Eh:  66 65 0F BB 2E FF FF                    BTC     DWORD PTR GS:[0FFFFh], EBP
0655h:  66 65 0F BB 36 FF FF                    BTC     DWORD PTR GS:[0FFFFh], ESI
065Ch:  66 65 0F BB 3E FF FF                    BTC     DWORD PTR GS:[0FFFFh], EDI
0663h:  F0 0F BB 06 FF FF                       LOCK    BTC WORD PTR [0FFFFh], AX
0669h:  F0 0F BA 3E FF FF 01                    LOCK    BTC WORD PTR [0FFFFh], 01h
0670h:  F0 66 0F BB 06 FF FF                    LOCK    BTC DWORD PTR [0FFFFh], EAX
0677h:  F0 66 0F BA 3E FF FF 01                 LOCK    BTC DWORD PTR [0FFFFh], 01h
067Fh:  70 FE                                   JO      067Fh
0681h:  72 FC                                   JB      067Fh
0683h:  73 FA                                   JNB     067Fh
0685h:  74 F8                                   JZ      067Fh
0687h:  75 F6                                   JNZ     067Fh
0689h:  76 F4                                   JBE     067Fh
068Bh:  77 F2                                   JNBE    067Fh
068Dh:  78 F0                                   JS      067Fh
068Fh:  79 EE                                   JNS     067Fh
0691h:  7A EC                                   JP      067Fh
0693h:  7B EA                                   JNP     067Fh
0695h:  7C E8                                   JL      067Fh
0697h:  7D E6                                   JNL     067Fh
0699h:  7E E4                                   JLE     067Fh
069Bh:  7F E2                                   JNLE    067Fh
069Dh:  E3 E0                                   JCXZ    067Fh
069Fh:  67 E3 DD                                JECXZ   067Fh
06A2h:  0F 80 5A FA                             JO      0100h
06A6h:  0F 82 56 FA                             JB      0100h
06AAh:  0F 83 52 FA                             JNB     0100h
06AEh:  0F 84 4E FA                             JZ      0100h
06B2h:  0F 85 4A FA                             JNZ     0100h
06B6h:  0F 86 46 FA                             JBE     0100h
06BAh:  0F 87 42 FA                             JNBE    0100h
06BEh:  0F 88 3E FA                             JS      0100h
06C2h:  0F 89 3A FA                             JNS     0100h
06C6h:  0F 8A 36 FA                             JP      0100h
06CAh:  0F 8B 32 FA                             JNP     0100h
06CEh:  0F 8C 2E FA                             JL      0100h
06D2h:  0F 8D 2A FA                             JNL     0100h
06D6h:  0F 8E 26 FA                             JLE     0100h
06DAh:  0F 8F 22 FA                             JNLE    0100h
