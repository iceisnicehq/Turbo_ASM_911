0100h:  LOCK    BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0FFh
010Dh:  LOCK    BTC DWORD PTR ES:[EAX + EBP*8 + 87654321h], 0FFh
011Ah:  BTC     DS:[1234h], AX
0120h:  BTC     CS:[12345678h], AX
012Ah:  BTC     DWORD PTR ES:[0123h], 01h
0132h:  BTC     DWORD PTR SS:[12345678h], 10h
013Bh:  BTC     AX, AX
013Eh:  BTC     CX, AX
0141h:  BTC     DX, AX
0144h:  BTC     BX, AX
0147h:  BTC     SP, AX
014Ah:  BTC     BP, AX
014Dh:  BTC     SI, AX
0150h:  BTC     DI, AX
0153h:  BTC     DS:[BX + SI], AX
0156h:  BTC     DS:[BX + DI], AX
0159h:  BTC     SS:[BP + SI], AX
015Ch:  BTC     SS:[BP + DI], AX
015Fh:  BTC     SS:[BP], AX
0163h:  BTC     DS:[SI], AX
0166h:  BTC     DS:[DI], AX
0169h:  BTC     DS:[BX + SI + 1234h], AX
016Eh:  BTC     DS:[BX + DI + 1234h], AX
0173h:  BTC     SS:[BP + SI + 1234h], AX
0178h:  BTC     SS:[BP + DI + 1234h], AX
017Dh:  BTC     SS:[BP + 1234h], AX
0182h:  BTC     DS:[SI + 1234h], AX
0187h:  BTC     DS:[DI + 1234h], AX
018Ch:  BTC     DS:[EAX + EAX*2 + 00000100h], AX
0195h:  BTC     DS:[EBX + EBP*4 + 12345678h], AX
019Eh:  BTC     SS:[EBP + EBP], AX
01A4h:  BTC     SS:[ESP + EBP], AX
01A9h:  BTC     DS:[EDX + EBX*8], AX
01AEh:  BTC     DS:[EBX + ECX*2 + 01h], AX
01B4h:  BTC     DS:[ECX + EDX*4 + 00000100h], AX
01BDh:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], AX
01C6h:  BTC     SS:[EBP + EBP + 10203040h], AX
01CFh:  LOCK    BTC DS:[BX + SI], AX
01D3h:  LOCK    BTC DS:[BX + DI], AX
01D7h:  LOCK    BTC SS:[BP + SI], AX
01DBh:  LOCK    BTC SS:[BP + DI], AX
01DFh:  LOCK    BTC SS:[BP], AX
01E4h:  LOCK    BTC DS:[SI], AX
01E8h:  LOCK    BTC DS:[DI], AX
01ECh:  LOCK    BTC DS:[BX + SI + 1234h], AX
01F2h:  LOCK    BTC DS:[BX + DI + 1234h], AX
01F8h:  LOCK    BTC SS:[BP + SI + 1234h], AX
01FEh:  LOCK    BTC SS:[BP + DI + 1234h], AX
0204h:  LOCK    BTC SS:[BP + 1234h], AX
020Ah:  LOCK    BTC DS:[SI + 1234h], AX
0210h:  LOCK    BTC DS:[DI + 1234h], AX
0217h:  BTC     CS:[BX + SI], AX
021Bh:  BTC     CS:[BX + DI], AX
021Fh:  BTC     CS:[BP + SI], AX
0223h:  BTC     CS:[BP + DI], AX
0227h:  BTC     CS:[BP], AX
022Ch:  BTC     CS:[SI], AX
0230h:  BTC     CS:[DI], AX
0234h:  BTC     DS:[BX + SI], AX
0238h:  BTC     DS:[BX + DI], AX
023Ch:  BTC     DS:[BP + SI], AX
0240h:  BTC     DS:[BP + DI], AX
0244h:  BTC     DS:[BP], AX
0249h:  BTC     DS:[SI], AX
024Dh:  BTC     DS:[DI], AX
0251h:  BTC     ES:[BX + SI], AX
0255h:  BTC     ES:[BX + DI], AX
0259h:  BTC     ES:[BP + SI], AX
025Dh:  BTC     ES:[BP + DI], AX
0261h:  BTC     ES:[BP], AX
0266h:  BTC     ES:[SI], AX
026Ah:  BTC     ES:[DI], AX
026Eh:  BTC     SS:[BX + SI], AX
0272h:  BTC     SS:[BX + DI], AX
0276h:  BTC     SS:[BP + SI], AX
027Ah:  BTC     SS:[BP + DI], AX
027Eh:  BTC     SS:[BP], AX
0283h:  BTC     SS:[SI], AX
0287h:  BTC     SS:[DI], AX
028Bh:  BTC     FS:[BX + SI], AX
028Fh:  BTC     FS:[BX + DI], AX
0293h:  BTC     FS:[BP + SI], AX
0297h:  BTC     FS:[BP + DI], AX
029Bh:  BTC     FS:[BP], AX
02A0h:  BTC     FS:[SI], AX
02A4h:  BTC     FS:[DI], AX
02A8h:  BTC     GS:[BX + SI], AX
02ACh:  BTC     GS:[BX + DI], AX
02B0h:  BTC     GS:[BP + SI], AX
02B4h:  BTC     GS:[BP + DI], AX
02B8h:  BTC     GS:[BP], AX
02BDh:  BTC     GS:[SI], AX
02C1h:  BTC     GS:[DI], AX
02C4h:  BTC     AX, 01h
02C8h:  BTC     AX, 0FFh
02CCh:  BTC     AX, CX
02CFh:  BTC     CX, CX
02D2h:  BTC     DX, CX
02D5h:  BTC     BX, CX
02D8h:  BTC     SP, CX
02DBh:  BTC     BP, CX
02DEh:  BTC     SI, CX
02E1h:  BTC     DI, CX
02E4h:  BTC     DS:[BX + SI], CX
02E7h:  BTC     DS:[BX + DI], CX
02EAh:  BTC     SS:[BP + SI], CX
02EDh:  BTC     SS:[BP + DI], CX
02F0h:  BTC     SS:[BP], CX
02F4h:  BTC     DS:[SI], CX
02F7h:  BTC     DS:[DI], CX
02FAh:  BTC     DS:[BX + SI + 1234h], CX
02FFh:  BTC     DS:[BX + DI + 1234h], CX
0304h:  BTC     SS:[BP + SI + 1234h], CX
0309h:  BTC     SS:[BP + DI + 1234h], CX
030Eh:  BTC     SS:[BP + 1234h], CX
0313h:  BTC     DS:[SI + 1234h], CX
0318h:  BTC     DS:[DI + 1234h], CX
031Dh:  BTC     DS:[EAX + EAX*2 + 00000100h], CX
0326h:  BTC     DS:[EBX + EBP*4 + 12345678h], CX
032Fh:  BTC     SS:[EBP + EBP], CX
0335h:  BTC     SS:[ESP + EBP], CX
033Ah:  BTC     DS:[EDX + EBX*8], CX
033Fh:  BTC     DS:[EBX + ECX*2 + 01h], CX
0345h:  BTC     DS:[ECX + EDX*4 + 00000100h], CX
034Eh:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], CX
0357h:  BTC     SS:[EBP + EBP + 10203040h], CX
0360h:  LOCK    BTC DS:[BX + SI], CX
0364h:  LOCK    BTC DS:[BX + DI], CX
0368h:  LOCK    BTC SS:[BP + SI], CX
036Ch:  LOCK    BTC SS:[BP + DI], CX
0370h:  LOCK    BTC SS:[BP], CX
0375h:  LOCK    BTC DS:[SI], CX
0379h:  LOCK    BTC DS:[DI], CX
037Dh:  LOCK    BTC DS:[BX + SI + 1234h], CX
0383h:  LOCK    BTC DS:[BX + DI + 1234h], CX
0389h:  LOCK    BTC SS:[BP + SI + 1234h], CX
038Fh:  LOCK    BTC SS:[BP + DI + 1234h], CX
0395h:  LOCK    BTC SS:[BP + 1234h], CX
039Bh:  LOCK    BTC DS:[SI + 1234h], CX
03A1h:  LOCK    BTC DS:[DI + 1234h], CX
03A8h:  BTC     CS:[BX + SI], CX
03ACh:  BTC     CS:[BX + DI], CX
03B0h:  BTC     CS:[BP + SI], CX
03B4h:  BTC     CS:[BP + DI], CX
03B8h:  BTC     CS:[BP], CX
03BDh:  BTC     CS:[SI], CX
03C1h:  BTC     CS:[DI], CX
03C5h:  BTC     DS:[BX + SI], CX
03C9h:  BTC     DS:[BX + DI], CX
03CDh:  BTC     DS:[BP + SI], CX
03D1h:  BTC     DS:[BP + DI], CX
03D5h:  BTC     DS:[BP], CX
03DAh:  BTC     DS:[SI], CX
03DEh:  BTC     DS:[DI], CX
03E2h:  BTC     ES:[BX + SI], CX
03E6h:  BTC     ES:[BX + DI], CX
03EAh:  BTC     ES:[BP + SI], CX
03EEh:  BTC     ES:[BP + DI], CX
03F2h:  BTC     ES:[BP], CX
03F7h:  BTC     ES:[SI], CX
03FBh:  BTC     ES:[DI], CX
03FFh:  BTC     SS:[BX + SI], CX
0403h:  BTC     SS:[BX + DI], CX
0407h:  BTC     SS:[BP + SI], CX
040Bh:  BTC     SS:[BP + DI], CX
040Fh:  BTC     SS:[BP], CX
0414h:  BTC     SS:[SI], CX
0418h:  BTC     SS:[DI], CX
041Ch:  BTC     FS:[BX + SI], CX
0420h:  BTC     FS:[BX + DI], CX
0424h:  BTC     FS:[BP + SI], CX
0428h:  BTC     FS:[BP + DI], CX
042Ch:  BTC     FS:[BP], CX
0431h:  BTC     FS:[SI], CX
0435h:  BTC     FS:[DI], CX
0439h:  BTC     GS:[BX + SI], CX
043Dh:  BTC     GS:[BX + DI], CX
0441h:  BTC     GS:[BP + SI], CX
0445h:  BTC     GS:[BP + DI], CX
0449h:  BTC     GS:[BP], CX
044Eh:  BTC     GS:[SI], CX
0452h:  BTC     GS:[DI], CX
0455h:  BTC     CX, 01h
0459h:  BTC     CX, 0FFh
045Dh:  BTC     AX, DX
0460h:  BTC     CX, DX
0463h:  BTC     DX, DX
0466h:  BTC     BX, DX
0469h:  BTC     SP, DX
046Ch:  BTC     BP, DX
046Fh:  BTC     SI, DX
0472h:  BTC     DI, DX
0475h:  BTC     DS:[BX + SI], DX
0478h:  BTC     DS:[BX + DI], DX
047Bh:  BTC     SS:[BP + SI], DX
047Eh:  BTC     SS:[BP + DI], DX
0481h:  BTC     SS:[BP], DX
0485h:  BTC     DS:[SI], DX
0488h:  BTC     DS:[DI], DX
048Bh:  BTC     DS:[BX + SI + 1234h], DX
0490h:  BTC     DS:[BX + DI + 1234h], DX
0495h:  BTC     SS:[BP + SI + 1234h], DX
049Ah:  BTC     SS:[BP + DI + 1234h], DX
049Fh:  BTC     SS:[BP + 1234h], DX
04A4h:  BTC     DS:[SI + 1234h], DX
04A9h:  BTC     DS:[DI + 1234h], DX
04AEh:  BTC     DS:[EAX + EAX*2 + 00000100h], DX
04B7h:  BTC     DS:[EBX + EBP*4 + 12345678h], DX
04C0h:  BTC     SS:[EBP + EBP], DX
04C6h:  BTC     SS:[ESP + EBP], DX
04CBh:  BTC     DS:[EDX + EBX*8], DX
04D0h:  BTC     DS:[EBX + ECX*2 + 01h], DX
04D6h:  BTC     DS:[ECX + EDX*4 + 00000100h], DX
04DFh:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], DX
04E8h:  BTC     SS:[EBP + EBP + 10203040h], DX
04F1h:  LOCK    BTC DS:[BX + SI], DX
04F5h:  LOCK    BTC DS:[BX + DI], DX
04F9h:  LOCK    BTC SS:[BP + SI], DX
04FDh:  LOCK    BTC SS:[BP + DI], DX
0501h:  LOCK    BTC SS:[BP], DX
0506h:  LOCK    BTC DS:[SI], DX
050Ah:  LOCK    BTC DS:[DI], DX
050Eh:  LOCK    BTC DS:[BX + SI + 1234h], DX
0514h:  LOCK    BTC DS:[BX + DI + 1234h], DX
051Ah:  LOCK    BTC SS:[BP + SI + 1234h], DX
0520h:  LOCK    BTC SS:[BP + DI + 1234h], DX
0526h:  LOCK    BTC SS:[BP + 1234h], DX
052Ch:  LOCK    BTC DS:[SI + 1234h], DX
0532h:  LOCK    BTC DS:[DI + 1234h], DX
0539h:  BTC     CS:[BX + SI], DX
053Dh:  BTC     CS:[BX + DI], DX
0541h:  BTC     CS:[BP + SI], DX
0545h:  BTC     CS:[BP + DI], DX
0549h:  BTC     CS:[BP], DX
054Eh:  BTC     CS:[SI], DX
0552h:  BTC     CS:[DI], DX
0556h:  BTC     DS:[BX + SI], DX
055Ah:  BTC     DS:[BX + DI], DX
055Eh:  BTC     DS:[BP + SI], DX
0562h:  BTC     DS:[BP + DI], DX
0566h:  BTC     DS:[BP], DX
056Bh:  BTC     DS:[SI], DX
056Fh:  BTC     DS:[DI], DX
0573h:  BTC     ES:[BX + SI], DX
0577h:  BTC     ES:[BX + DI], DX
057Bh:  BTC     ES:[BP + SI], DX
057Fh:  BTC     ES:[BP + DI], DX
0583h:  BTC     ES:[BP], DX
0588h:  BTC     ES:[SI], DX
058Ch:  BTC     ES:[DI], DX
0590h:  BTC     SS:[BX + SI], DX
0594h:  BTC     SS:[BX + DI], DX
0598h:  BTC     SS:[BP + SI], DX
059Ch:  BTC     SS:[BP + DI], DX
05A0h:  BTC     SS:[BP], DX
05A5h:  BTC     SS:[SI], DX
05A9h:  BTC     SS:[DI], DX
05ADh:  BTC     FS:[BX + SI], DX
05B1h:  BTC     FS:[BX + DI], DX
05B5h:  BTC     FS:[BP + SI], DX
05B9h:  BTC     FS:[BP + DI], DX
05BDh:  BTC     FS:[BP], DX
05C2h:  BTC     FS:[SI], DX
05C6h:  BTC     FS:[DI], DX
05CAh:  BTC     GS:[BX + SI], DX
05CEh:  BTC     GS:[BX + DI], DX
05D2h:  BTC     GS:[BP + SI], DX
05D6h:  BTC     GS:[BP + DI], DX
05DAh:  BTC     GS:[BP], DX
05DFh:  BTC     GS:[SI], DX
05E3h:  BTC     GS:[DI], DX
05E6h:  BTC     DX, 01h
05EAh:  BTC     DX, 0FFh
05EEh:  BTC     AX, BX
05F1h:  BTC     CX, BX
05F4h:  BTC     DX, BX
05F7h:  BTC     BX, BX
05FAh:  BTC     SP, BX
05FDh:  BTC     BP, BX
0600h:  BTC     SI, BX
0603h:  BTC     DI, BX
0606h:  BTC     DS:[BX + SI], BX
0609h:  BTC     DS:[BX + DI], BX
060Ch:  BTC     SS:[BP + SI], BX
060Fh:  BTC     SS:[BP + DI], BX
0612h:  BTC     SS:[BP], BX
0616h:  BTC     DS:[SI], BX
0619h:  BTC     DS:[DI], BX
061Ch:  BTC     DS:[BX + SI + 1234h], BX
0621h:  BTC     DS:[BX + DI + 1234h], BX
0626h:  BTC     SS:[BP + SI + 1234h], BX
062Bh:  BTC     SS:[BP + DI + 1234h], BX
0630h:  BTC     SS:[BP + 1234h], BX
0635h:  BTC     DS:[SI + 1234h], BX
063Ah:  BTC     DS:[DI + 1234h], BX
063Fh:  BTC     DS:[EAX + EAX*2 + 00000100h], BX
0648h:  BTC     DS:[EBX + EBP*4 + 12345678h], BX
0651h:  BTC     SS:[EBP + EBP], BX
0657h:  BTC     SS:[ESP + EBP], BX
065Ch:  BTC     DS:[EDX + EBX*8], BX
0661h:  BTC     DS:[EBX + ECX*2 + 01h], BX
0667h:  BTC     DS:[ECX + EDX*4 + 00000100h], BX
0670h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], BX
0679h:  BTC     SS:[EBP + EBP + 10203040h], BX
0682h:  LOCK    BTC DS:[BX + SI], BX
0686h:  LOCK    BTC DS:[BX + DI], BX
068Ah:  LOCK    BTC SS:[BP + SI], BX
068Eh:  LOCK    BTC SS:[BP + DI], BX
0692h:  LOCK    BTC SS:[BP], BX
0697h:  LOCK    BTC DS:[SI], BX
069Bh:  LOCK    BTC DS:[DI], BX
069Fh:  LOCK    BTC DS:[BX + SI + 1234h], BX
06A5h:  LOCK    BTC DS:[BX + DI + 1234h], BX
06ABh:  LOCK    BTC SS:[BP + SI + 1234h], BX
06B1h:  LOCK    BTC SS:[BP + DI + 1234h], BX
06B7h:  LOCK    BTC SS:[BP + 1234h], BX
06BDh:  LOCK    BTC DS:[SI + 1234h], BX
06C3h:  LOCK    BTC DS:[DI + 1234h], BX
06CAh:  BTC     CS:[BX + SI], BX
06CEh:  BTC     CS:[BX + DI], BX
06D2h:  BTC     CS:[BP + SI], BX
06D6h:  BTC     CS:[BP + DI], BX
06DAh:  BTC     CS:[BP], BX
06DFh:  BTC     CS:[SI], BX
06E3h:  BTC     CS:[DI], BX
06E7h:  BTC     DS:[BX + SI], BX
06EBh:  BTC     DS:[BX + DI], BX
06EFh:  BTC     DS:[BP + SI], BX
06F3h:  BTC     DS:[BP + DI], BX
06F7h:  BTC     DS:[BP], BX
06FCh:  BTC     DS:[SI], BX
0700h:  BTC     DS:[DI], BX
0704h:  BTC     ES:[BX + SI], BX
0708h:  BTC     ES:[BX + DI], BX
070Ch:  BTC     ES:[BP + SI], BX
0710h:  BTC     ES:[BP + DI], BX
0714h:  BTC     ES:[BP], BX
0719h:  BTC     ES:[SI], BX
071Dh:  BTC     ES:[DI], BX
0721h:  BTC     SS:[BX + SI], BX
0725h:  BTC     SS:[BX + DI], BX
0729h:  BTC     SS:[BP + SI], BX
072Dh:  BTC     SS:[BP + DI], BX
0731h:  BTC     SS:[BP], BX
0736h:  BTC     SS:[SI], BX
073Ah:  BTC     SS:[DI], BX
073Eh:  BTC     FS:[BX + SI], BX
0742h:  BTC     FS:[BX + DI], BX
0746h:  BTC     FS:[BP + SI], BX
074Ah:  BTC     FS:[BP + DI], BX
074Eh:  BTC     FS:[BP], BX
0753h:  BTC     FS:[SI], BX
0757h:  BTC     FS:[DI], BX
075Bh:  BTC     GS:[BX + SI], BX
075Fh:  BTC     GS:[BX + DI], BX
0763h:  BTC     GS:[BP + SI], BX
0767h:  BTC     GS:[BP + DI], BX
076Bh:  BTC     GS:[BP], BX
0770h:  BTC     GS:[SI], BX
0774h:  BTC     GS:[DI], BX
0777h:  BTC     BX, 01h
077Bh:  BTC     BX, 0FFh
077Fh:  BTC     AX, SP
0782h:  BTC     CX, SP
0785h:  BTC     DX, SP
0788h:  BTC     BX, SP
078Bh:  BTC     SP, SP
078Eh:  BTC     BP, SP
0791h:  BTC     SI, SP
0794h:  BTC     DI, SP
0797h:  BTC     DS:[BX + SI], SP
079Ah:  BTC     DS:[BX + DI], SP
079Dh:  BTC     SS:[BP + SI], SP
07A0h:  BTC     SS:[BP + DI], SP
07A3h:  BTC     SS:[BP], SP
07A7h:  BTC     DS:[SI], SP
07AAh:  BTC     DS:[DI], SP
07ADh:  BTC     DS:[BX + SI + 1234h], SP
07B2h:  BTC     DS:[BX + DI + 1234h], SP
07B7h:  BTC     SS:[BP + SI + 1234h], SP
07BCh:  BTC     SS:[BP + DI + 1234h], SP
07C1h:  BTC     SS:[BP + 1234h], SP
07C6h:  BTC     DS:[SI + 1234h], SP
07CBh:  BTC     DS:[DI + 1234h], SP
07D0h:  BTC     DS:[EAX + EAX*2 + 00000100h], SP
07D9h:  BTC     DS:[EBX + EBP*4 + 12345678h], SP
07E2h:  BTC     SS:[EBP + EBP], SP
07E8h:  BTC     SS:[ESP + EBP], SP
07EDh:  BTC     DS:[EDX + EBX*8], SP
07F2h:  BTC     DS:[EBX + ECX*2 + 01h], SP
07F8h:  BTC     DS:[ECX + EDX*4 + 00000100h], SP
0801h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], SP
080Ah:  BTC     SS:[EBP + EBP + 10203040h], SP
0813h:  LOCK    BTC DS:[BX + SI], SP
0817h:  LOCK    BTC DS:[BX + DI], SP
081Bh:  LOCK    BTC SS:[BP + SI], SP
081Fh:  LOCK    BTC SS:[BP + DI], SP
0823h:  LOCK    BTC SS:[BP], SP
0828h:  LOCK    BTC DS:[SI], SP
082Ch:  LOCK    BTC DS:[DI], SP
0830h:  LOCK    BTC DS:[BX + SI + 1234h], SP
0836h:  LOCK    BTC DS:[BX + DI + 1234h], SP
083Ch:  LOCK    BTC SS:[BP + SI + 1234h], SP
0842h:  LOCK    BTC SS:[BP + DI + 1234h], SP
0848h:  LOCK    BTC SS:[BP + 1234h], SP
084Eh:  LOCK    BTC DS:[SI + 1234h], SP
0854h:  LOCK    BTC DS:[DI + 1234h], SP
085Bh:  BTC     CS:[BX + SI], SP
085Fh:  BTC     CS:[BX + DI], SP
0863h:  BTC     CS:[BP + SI], SP
0867h:  BTC     CS:[BP + DI], SP
086Bh:  BTC     CS:[BP], SP
0870h:  BTC     CS:[SI], SP
0874h:  BTC     CS:[DI], SP
0878h:  BTC     DS:[BX + SI], SP
087Ch:  BTC     DS:[BX + DI], SP
0880h:  BTC     DS:[BP + SI], SP
0884h:  BTC     DS:[BP + DI], SP
0888h:  BTC     DS:[BP], SP
088Dh:  BTC     DS:[SI], SP
0891h:  BTC     DS:[DI], SP
0895h:  BTC     ES:[BX + SI], SP
0899h:  BTC     ES:[BX + DI], SP
089Dh:  BTC     ES:[BP + SI], SP
08A1h:  BTC     ES:[BP + DI], SP
08A5h:  BTC     ES:[BP], SP
08AAh:  BTC     ES:[SI], SP
08AEh:  BTC     ES:[DI], SP
08B2h:  BTC     SS:[BX + SI], SP
08B6h:  BTC     SS:[BX + DI], SP
08BAh:  BTC     SS:[BP + SI], SP
08BEh:  BTC     SS:[BP + DI], SP
08C2h:  BTC     SS:[BP], SP
08C7h:  BTC     SS:[SI], SP
08CBh:  BTC     SS:[DI], SP
08CFh:  BTC     FS:[BX + SI], SP
08D3h:  BTC     FS:[BX + DI], SP
08D7h:  BTC     FS:[BP + SI], SP
08DBh:  BTC     FS:[BP + DI], SP
08DFh:  BTC     FS:[BP], SP
08E4h:  BTC     FS:[SI], SP
08E8h:  BTC     FS:[DI], SP
08ECh:  BTC     GS:[BX + SI], SP
08F0h:  BTC     GS:[BX + DI], SP
08F4h:  BTC     GS:[BP + SI], SP
08F8h:  BTC     GS:[BP + DI], SP
08FCh:  BTC     GS:[BP], SP
0901h:  BTC     GS:[SI], SP
0905h:  BTC     GS:[DI], SP
0908h:  BTC     SP, 01h
090Ch:  BTC     SP, 0FFh
0910h:  BTC     AX, BP
0913h:  BTC     CX, BP
0916h:  BTC     DX, BP
0919h:  BTC     BX, BP
091Ch:  BTC     SP, BP
091Fh:  BTC     BP, BP
0922h:  BTC     SI, BP
0925h:  BTC     DI, BP
0928h:  BTC     DS:[BX + SI], BP
092Bh:  BTC     DS:[BX + DI], BP
092Eh:  BTC     SS:[BP + SI], BP
0931h:  BTC     SS:[BP + DI], BP
0934h:  BTC     SS:[BP], BP
0938h:  BTC     DS:[SI], BP
093Bh:  BTC     DS:[DI], BP
093Eh:  BTC     DS:[BX + SI + 1234h], BP
0943h:  BTC     DS:[BX + DI + 1234h], BP
0948h:  BTC     SS:[BP + SI + 1234h], BP
094Dh:  BTC     SS:[BP + DI + 1234h], BP
0952h:  BTC     SS:[BP + 1234h], BP
0957h:  BTC     DS:[SI + 1234h], BP
095Ch:  BTC     DS:[DI + 1234h], BP
0961h:  BTC     DS:[EAX + EAX*2 + 00000100h], BP
096Ah:  BTC     DS:[EBX + EBP*4 + 12345678h], BP
0973h:  BTC     SS:[EBP + EBP], BP
0979h:  BTC     SS:[ESP + EBP], BP
097Eh:  BTC     DS:[EDX + EBX*8], BP
0983h:  BTC     DS:[EBX + ECX*2 + 01h], BP
0989h:  BTC     DS:[ECX + EDX*4 + 00000100h], BP
0992h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], BP
099Bh:  BTC     SS:[EBP + EBP + 10203040h], BP
09A4h:  LOCK    BTC DS:[BX + SI], BP
09A8h:  LOCK    BTC DS:[BX + DI], BP
09ACh:  LOCK    BTC SS:[BP + SI], BP
09B0h:  LOCK    BTC SS:[BP + DI], BP
09B4h:  LOCK    BTC SS:[BP], BP
09B9h:  LOCK    BTC DS:[SI], BP
09BDh:  LOCK    BTC DS:[DI], BP
09C1h:  LOCK    BTC DS:[BX + SI + 1234h], BP
09C7h:  LOCK    BTC DS:[BX + DI + 1234h], BP
09CDh:  LOCK    BTC SS:[BP + SI + 1234h], BP
09D3h:  LOCK    BTC SS:[BP + DI + 1234h], BP
09D9h:  LOCK    BTC SS:[BP + 1234h], BP
09DFh:  LOCK    BTC DS:[SI + 1234h], BP
09E5h:  LOCK    BTC DS:[DI + 1234h], BP
09ECh:  BTC     CS:[BX + SI], BP
09F0h:  BTC     CS:[BX + DI], BP
09F4h:  BTC     CS:[BP + SI], BP
09F8h:  BTC     CS:[BP + DI], BP
09FCh:  BTC     CS:[BP], BP
0A01h:  BTC     CS:[SI], BP
0A05h:  BTC     CS:[DI], BP
0A09h:  BTC     DS:[BX + SI], BP
0A0Dh:  BTC     DS:[BX + DI], BP
0A11h:  BTC     DS:[BP + SI], BP
0A15h:  BTC     DS:[BP + DI], BP
0A19h:  BTC     DS:[BP], BP
0A1Eh:  BTC     DS:[SI], BP
0A22h:  BTC     DS:[DI], BP
0A26h:  BTC     ES:[BX + SI], BP
0A2Ah:  BTC     ES:[BX + DI], BP
0A2Eh:  BTC     ES:[BP + SI], BP
0A32h:  BTC     ES:[BP + DI], BP
0A36h:  BTC     ES:[BP], BP
0A3Bh:  BTC     ES:[SI], BP
0A3Fh:  BTC     ES:[DI], BP
0A43h:  BTC     SS:[BX + SI], BP
0A47h:  BTC     SS:[BX + DI], BP
0A4Bh:  BTC     SS:[BP + SI], BP
0A4Fh:  BTC     SS:[BP + DI], BP
0A53h:  BTC     SS:[BP], BP
0A58h:  BTC     SS:[SI], BP
0A5Ch:  BTC     SS:[DI], BP
0A60h:  BTC     FS:[BX + SI], BP
0A64h:  BTC     FS:[BX + DI], BP
0A68h:  BTC     FS:[BP + SI], BP
0A6Ch:  BTC     FS:[BP + DI], BP
0A70h:  BTC     FS:[BP], BP
0A75h:  BTC     FS:[SI], BP
0A79h:  BTC     FS:[DI], BP
0A7Dh:  BTC     GS:[BX + SI], BP
0A81h:  BTC     GS:[BX + DI], BP
0A85h:  BTC     GS:[BP + SI], BP
0A89h:  BTC     GS:[BP + DI], BP
0A8Dh:  BTC     GS:[BP], BP
0A92h:  BTC     GS:[SI], BP
0A96h:  BTC     GS:[DI], BP
0A99h:  BTC     BP, 01h
0A9Dh:  BTC     BP, 0FFh
0AA1h:  BTC     AX, SI
0AA4h:  BTC     CX, SI
0AA7h:  BTC     DX, SI
0AAAh:  BTC     BX, SI
0AADh:  BTC     SP, SI
0AB0h:  BTC     BP, SI
0AB3h:  BTC     SI, SI
0AB6h:  BTC     DI, SI
0AB9h:  BTC     DS:[BX + SI], SI
0ABCh:  BTC     DS:[BX + DI], SI
0ABFh:  BTC     SS:[BP + SI], SI
0AC2h:  BTC     SS:[BP + DI], SI
0AC5h:  BTC     SS:[BP], SI
0AC9h:  BTC     DS:[SI], SI
0ACCh:  BTC     DS:[DI], SI
0ACFh:  BTC     DS:[BX + SI + 1234h], SI
0AD4h:  BTC     DS:[BX + DI + 1234h], SI
0AD9h:  BTC     SS:[BP + SI + 1234h], SI
0ADEh:  BTC     SS:[BP + DI + 1234h], SI
0AE3h:  BTC     SS:[BP + 1234h], SI
0AE8h:  BTC     DS:[SI + 1234h], SI
0AEDh:  BTC     DS:[DI + 1234h], SI
0AF2h:  BTC     DS:[EAX + EAX*2 + 00000100h], SI
0AFBh:  BTC     DS:[EBX + EBP*4 + 12345678h], SI
0B04h:  BTC     SS:[EBP + EBP], SI
0B0Ah:  BTC     SS:[ESP + EBP], SI
0B0Fh:  BTC     DS:[EDX + EBX*8], SI
0B14h:  BTC     DS:[EBX + ECX*2 + 01h], SI
0B1Ah:  BTC     DS:[ECX + EDX*4 + 00000100h], SI
0B23h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], SI
0B2Ch:  BTC     SS:[EBP + EBP + 10203040h], SI
0B35h:  LOCK    BTC DS:[BX + SI], SI
0B39h:  LOCK    BTC DS:[BX + DI], SI
0B3Dh:  LOCK    BTC SS:[BP + SI], SI
0B41h:  LOCK    BTC SS:[BP + DI], SI
0B45h:  LOCK    BTC SS:[BP], SI
0B4Ah:  LOCK    BTC DS:[SI], SI
0B4Eh:  LOCK    BTC DS:[DI], SI
0B52h:  LOCK    BTC DS:[BX + SI + 1234h], SI
0B58h:  LOCK    BTC DS:[BX + DI + 1234h], SI
0B5Eh:  LOCK    BTC SS:[BP + SI + 1234h], SI
0B64h:  LOCK    BTC SS:[BP + DI + 1234h], SI
0B6Ah:  LOCK    BTC SS:[BP + 1234h], SI
0B70h:  LOCK    BTC DS:[SI + 1234h], SI
0B76h:  LOCK    BTC DS:[DI + 1234h], SI
0B7Dh:  BTC     CS:[BX + SI], SI
0B81h:  BTC     CS:[BX + DI], SI
0B85h:  BTC     CS:[BP + SI], SI
0B89h:  BTC     CS:[BP + DI], SI
0B8Dh:  BTC     CS:[BP], SI
0B92h:  BTC     CS:[SI], SI
0B96h:  BTC     CS:[DI], SI
0B9Ah:  BTC     DS:[BX + SI], SI
0B9Eh:  BTC     DS:[BX + DI], SI
0BA2h:  BTC     DS:[BP + SI], SI
0BA6h:  BTC     DS:[BP + DI], SI
0BAAh:  BTC     DS:[BP], SI
0BAFh:  BTC     DS:[SI], SI
0BB3h:  BTC     DS:[DI], SI
0BB7h:  BTC     ES:[BX + SI], SI
0BBBh:  BTC     ES:[BX + DI], SI
0BBFh:  BTC     ES:[BP + SI], SI
0BC3h:  BTC     ES:[BP + DI], SI
0BC7h:  BTC     ES:[BP], SI
0BCCh:  BTC     ES:[SI], SI
0BD0h:  BTC     ES:[DI], SI
0BD4h:  BTC     SS:[BX + SI], SI
0BD8h:  BTC     SS:[BX + DI], SI
0BDCh:  BTC     SS:[BP + SI], SI
0BE0h:  BTC     SS:[BP + DI], SI
0BE4h:  BTC     SS:[BP], SI
0BE9h:  BTC     SS:[SI], SI
0BEDh:  BTC     SS:[DI], SI
0BF1h:  BTC     FS:[BX + SI], SI
0BF5h:  BTC     FS:[BX + DI], SI
0BF9h:  BTC     FS:[BP + SI], SI
0BFDh:  BTC     FS:[BP + DI], SI
0C01h:  BTC     FS:[BP], SI
0C06h:  BTC     FS:[SI], SI
0C0Ah:  BTC     FS:[DI], SI
0C0Eh:  BTC     GS:[BX + SI], SI
0C12h:  BTC     GS:[BX + DI], SI
0C16h:  BTC     GS:[BP + SI], SI
0C1Ah:  BTC     GS:[BP + DI], SI
0C1Eh:  BTC     GS:[BP], SI
0C23h:  BTC     GS:[SI], SI
0C27h:  BTC     GS:[DI], SI
0C2Ah:  BTC     SI, 01h
0C2Eh:  BTC     SI, 0FFh
0C32h:  BTC     AX, DI
0C35h:  BTC     CX, DI
0C38h:  BTC     DX, DI
0C3Bh:  BTC     BX, DI
0C3Eh:  BTC     SP, DI
0C41h:  BTC     BP, DI
0C44h:  BTC     SI, DI
0C47h:  BTC     DI, DI
0C4Ah:  BTC     DS:[BX + SI], DI
0C4Dh:  BTC     DS:[BX + DI], DI
0C50h:  BTC     SS:[BP + SI], DI
0C53h:  BTC     SS:[BP + DI], DI
0C56h:  BTC     SS:[BP], DI
0C5Ah:  BTC     DS:[SI], DI
0C5Dh:  BTC     DS:[DI], DI
0C60h:  BTC     DS:[BX + SI + 1234h], DI
0C65h:  BTC     DS:[BX + DI + 1234h], DI
0C6Ah:  BTC     SS:[BP + SI + 1234h], DI
0C6Fh:  BTC     SS:[BP + DI + 1234h], DI
0C74h:  BTC     SS:[BP + 1234h], DI
0C79h:  BTC     DS:[SI + 1234h], DI
0C7Eh:  BTC     DS:[DI + 1234h], DI
0C83h:  BTC     DS:[EAX + EAX*2 + 00000100h], DI
0C8Ch:  BTC     DS:[EBX + EBP*4 + 12345678h], DI
0C95h:  BTC     SS:[EBP + EBP], DI
0C9Bh:  BTC     SS:[ESP + EBP], DI
0CA0h:  BTC     DS:[EDX + EBX*8], DI
0CA5h:  BTC     DS:[EBX + ECX*2 + 01h], DI
0CABh:  BTC     DS:[ECX + EDX*4 + 00000100h], DI
0CB4h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], DI
0CBDh:  BTC     SS:[EBP + EBP + 10203040h], DI
0CC6h:  LOCK    BTC DS:[BX + SI], DI
0CCAh:  LOCK    BTC DS:[BX + DI], DI
0CCEh:  LOCK    BTC SS:[BP + SI], DI
0CD2h:  LOCK    BTC SS:[BP + DI], DI
0CD6h:  LOCK    BTC SS:[BP], DI
0CDBh:  LOCK    BTC DS:[SI], DI
0CDFh:  LOCK    BTC DS:[DI], DI
0CE3h:  LOCK    BTC DS:[BX + SI + 1234h], DI
0CE9h:  LOCK    BTC DS:[BX + DI + 1234h], DI
0CEFh:  LOCK    BTC SS:[BP + SI + 1234h], DI
0CF5h:  LOCK    BTC SS:[BP + DI + 1234h], DI
0CFBh:  LOCK    BTC SS:[BP + 1234h], DI
0D01h:  LOCK    BTC DS:[SI + 1234h], DI
0D07h:  LOCK    BTC DS:[DI + 1234h], DI
0D0Eh:  BTC     CS:[BX + SI], DI
0D12h:  BTC     CS:[BX + DI], DI
0D16h:  BTC     CS:[BP + SI], DI
0D1Ah:  BTC     CS:[BP + DI], DI
0D1Eh:  BTC     CS:[BP], DI
0D23h:  BTC     CS:[SI], DI
0D27h:  BTC     CS:[DI], DI
0D2Bh:  BTC     DS:[BX + SI], DI
0D2Fh:  BTC     DS:[BX + DI], DI
0D33h:  BTC     DS:[BP + SI], DI
0D37h:  BTC     DS:[BP + DI], DI
0D3Bh:  BTC     DS:[BP], DI
0D40h:  BTC     DS:[SI], DI
0D44h:  BTC     DS:[DI], DI
0D48h:  BTC     ES:[BX + SI], DI
0D4Ch:  BTC     ES:[BX + DI], DI
0D50h:  BTC     ES:[BP + SI], DI
0D54h:  BTC     ES:[BP + DI], DI
0D58h:  BTC     ES:[BP], DI
0D5Dh:  BTC     ES:[SI], DI
0D61h:  BTC     ES:[DI], DI
0D65h:  BTC     SS:[BX + SI], DI
0D69h:  BTC     SS:[BX + DI], DI
0D6Dh:  BTC     SS:[BP + SI], DI
0D71h:  BTC     SS:[BP + DI], DI
0D75h:  BTC     SS:[BP], DI
0D7Ah:  BTC     SS:[SI], DI
0D7Eh:  BTC     SS:[DI], DI
0D82h:  BTC     FS:[BX + SI], DI
0D86h:  BTC     FS:[BX + DI], DI
0D8Ah:  BTC     FS:[BP + SI], DI
0D8Eh:  BTC     FS:[BP + DI], DI
0D92h:  BTC     FS:[BP], DI
0D97h:  BTC     FS:[SI], DI
0D9Bh:  BTC     FS:[DI], DI
0D9Fh:  BTC     GS:[BX + SI], DI
0DA3h:  BTC     GS:[BX + DI], DI
0DA7h:  BTC     GS:[BP + SI], DI
0DABh:  BTC     GS:[BP + DI], DI
0DAFh:  BTC     GS:[BP], DI
0DB4h:  BTC     GS:[SI], DI
0DB8h:  BTC     GS:[DI], DI
0DBBh:  BTC     DI, 01h
0DBFh:  BTC     DI, 0FFh
0DC4h:  BTC     EAX, EAX
0DC8h:  BTC     ECX, EAX
0DCCh:  BTC     EDX, EAX
0DD0h:  BTC     EBX, EAX
0DD4h:  BTC     ESP, EAX
0DD8h:  BTC     EBP, EAX
0DDCh:  BTC     ESI, EAX
0DE0h:  BTC     EDI, EAX
0DE4h:  BTC     DS:[EAX], EAX
0DE9h:  BTC     DS:[EAX + 00001234h], ECX
0DF3h:  BTC     CS:[EAX], EBX
0DF9h:  BTC     DS:[EAX], EDX
0DFFh:  BTC     ES:[EAX], ESP
0E05h:  BTC     SS:[EAX], EBP
0E0Bh:  BTC     FS:[EAX], ESI
0E11h:  BTC     GS:[EAX], EDI
0E16h:  BTC     DS:[EAX + EAX*2 + 00000100h], EAX
0E20h:  BTC     DS:[EBX + EBP*4 + 12345678h], EAX
0E2Ah:  BTC     SS:[EBP + EBP], EAX
0E31h:  BTC     SS:[ESP + EBP], EAX
0E37h:  BTC     DS:[EDX + EBX*8], EAX
0E3Dh:  BTC     DS:[EBX + ECX*2 + 01h], EAX
0E44h:  BTC     DS:[ECX + EDX*4 + 00000100h], EAX
0E4Eh:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EAX
0E58h:  BTC     SS:[EBP + EBP + 10203040h], EAX
0E62h:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
0E6Dh:  LOCK    BTC DS:[BX + SI], EAX
0E72h:  LOCK    BTC DS:[BX + DI], EAX
0E77h:  LOCK    BTC SS:[BP + SI], EAX
0E7Ch:  LOCK    BTC SS:[BP + DI], EAX
0E81h:  LOCK    BTC SS:[BP], EAX
0E87h:  LOCK    BTC DS:[SI], EAX
0E8Ch:  LOCK    BTC DS:[DI], EAX
0E91h:  LOCK    BTC DS:[BX + SI + 1234h], EAX
0E98h:  LOCK    BTC DS:[BX + DI + 1234h], EAX
0E9Fh:  LOCK    BTC SS:[BP + SI + 1234h], EAX
0EA6h:  LOCK    BTC SS:[BP + DI + 1234h], EAX
0EADh:  LOCK    BTC SS:[BP + 1234h], EAX
0EB4h:  LOCK    BTC DS:[SI + 1234h], EAX
0EBBh:  LOCK    BTC DS:[DI + 1234h], EAX
0EC3h:  BTC     EAX, 01h
0EC8h:  BTC     EAX, 0FFh
0ECDh:  BTC     EAX, ECX
0ED1h:  BTC     ECX, ECX
0ED5h:  BTC     EDX, ECX
0ED9h:  BTC     EBX, ECX
0EDDh:  BTC     ESP, ECX
0EE1h:  BTC     EBP, ECX
0EE5h:  BTC     ESI, ECX
0EE9h:  BTC     EDI, ECX
0EEDh:  BTC     DS:[ECX], EAX
0EF2h:  BTC     DS:[ECX + 00001234h], ECX
0EFCh:  BTC     CS:[ECX], EBX
0F02h:  BTC     DS:[ECX], EDX
0F08h:  BTC     ES:[ECX], ESP
0F0Eh:  BTC     SS:[ECX], EBP
0F14h:  BTC     FS:[ECX], ESI
0F1Ah:  BTC     GS:[ECX], EDI
0F1Fh:  BTC     DS:[EAX + EAX*2 + 00000100h], ECX
0F29h:  BTC     DS:[EBX + EBP*4 + 12345678h], ECX
0F33h:  BTC     SS:[EBP + EBP], ECX
0F3Ah:  BTC     SS:[ESP + EBP], ECX
0F40h:  BTC     DS:[EDX + EBX*8], ECX
0F46h:  BTC     DS:[EBX + ECX*2 + 01h], ECX
0F4Dh:  BTC     DS:[ECX + EDX*4 + 00000100h], ECX
0F57h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ECX
0F61h:  BTC     SS:[EBP + EBP + 10203040h], ECX
0F6Bh:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
0F76h:  LOCK    BTC DS:[BX + SI], ECX
0F7Bh:  LOCK    BTC DS:[BX + DI], ECX
0F80h:  LOCK    BTC SS:[BP + SI], ECX
0F85h:  LOCK    BTC SS:[BP + DI], ECX
0F8Ah:  LOCK    BTC SS:[BP], ECX
0F90h:  LOCK    BTC DS:[SI], ECX
0F95h:  LOCK    BTC DS:[DI], ECX
0F9Ah:  LOCK    BTC DS:[BX + SI + 1234h], ECX
0FA1h:  LOCK    BTC DS:[BX + DI + 1234h], ECX
0FA8h:  LOCK    BTC SS:[BP + SI + 1234h], ECX
0FAFh:  LOCK    BTC SS:[BP + DI + 1234h], ECX
0FB6h:  LOCK    BTC SS:[BP + 1234h], ECX
0FBDh:  LOCK    BTC DS:[SI + 1234h], ECX
0FC4h:  LOCK    BTC DS:[DI + 1234h], ECX
0FCCh:  BTC     ECX, 01h
0FD1h:  BTC     ECX, 0FFh
0FD6h:  BTC     EAX, EDX
0FDAh:  BTC     ECX, EDX
0FDEh:  BTC     EDX, EDX
0FE2h:  BTC     EBX, EDX
0FE6h:  BTC     ESP, EDX
0FEAh:  BTC     EBP, EDX
0FEEh:  BTC     ESI, EDX
0FF2h:  BTC     EDI, EDX
0FF6h:  BTC     DS:[EDX], EAX
0FFBh:  BTC     DS:[EDX + 00001234h], ECX
1005h:  BTC     CS:[EDX], EBX
100Bh:  BTC     DS:[EDX], EDX
1011h:  BTC     ES:[EDX], ESP
1017h:  BTC     SS:[EDX], EBP
101Dh:  BTC     FS:[EDX], ESI
1023h:  BTC     GS:[EDX], EDI
1028h:  BTC     DS:[EAX + EAX*2 + 00000100h], EDX
1032h:  BTC     DS:[EBX + EBP*4 + 12345678h], EDX
103Ch:  BTC     SS:[EBP + EBP], EDX
1043h:  BTC     SS:[ESP + EBP], EDX
1049h:  BTC     DS:[EDX + EBX*8], EDX
104Fh:  BTC     DS:[EBX + ECX*2 + 01h], EDX
1056h:  BTC     DS:[ECX + EDX*4 + 00000100h], EDX
1060h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EDX
106Ah:  BTC     SS:[EBP + EBP + 10203040h], EDX
1074h:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
107Fh:  LOCK    BTC DS:[BX + SI], EDX
1084h:  LOCK    BTC DS:[BX + DI], EDX
1089h:  LOCK    BTC SS:[BP + SI], EDX
108Eh:  LOCK    BTC SS:[BP + DI], EDX
1093h:  LOCK    BTC SS:[BP], EDX
1099h:  LOCK    BTC DS:[SI], EDX
109Eh:  LOCK    BTC DS:[DI], EDX
10A3h:  LOCK    BTC DS:[BX + SI + 1234h], EDX
10AAh:  LOCK    BTC DS:[BX + DI + 1234h], EDX
10B1h:  LOCK    BTC SS:[BP + SI + 1234h], EDX
10B8h:  LOCK    BTC SS:[BP + DI + 1234h], EDX
10BFh:  LOCK    BTC SS:[BP + 1234h], EDX
10C6h:  LOCK    BTC DS:[SI + 1234h], EDX
10CDh:  LOCK    BTC DS:[DI + 1234h], EDX
10D5h:  BTC     EDX, 01h
10DAh:  BTC     EDX, 0FFh
10DFh:  BTC     EAX, EBX
10E3h:  BTC     ECX, EBX
10E7h:  BTC     EDX, EBX
10EBh:  BTC     EBX, EBX
10EFh:  BTC     ESP, EBX
10F3h:  BTC     EBP, EBX
10F7h:  BTC     ESI, EBX
10FBh:  BTC     EDI, EBX
10FFh:  BTC     DS:[EBX], EAX
1104h:  BTC     DS:[EBX + 00001234h], ECX
110Eh:  BTC     CS:[EBX], EBX
1114h:  BTC     DS:[EBX], EDX
111Ah:  BTC     ES:[EBX], ESP
1120h:  BTC     SS:[EBX], EBP
1126h:  BTC     FS:[EBX], ESI
112Ch:  BTC     GS:[EBX], EDI
1131h:  BTC     DS:[EAX + EAX*2 + 00000100h], EBX
113Bh:  BTC     DS:[EBX + EBP*4 + 12345678h], EBX
1145h:  BTC     SS:[EBP + EBP], EBX
114Ch:  BTC     SS:[ESP + EBP], EBX
1152h:  BTC     DS:[EDX + EBX*8], EBX
1158h:  BTC     DS:[EBX + ECX*2 + 01h], EBX
115Fh:  BTC     DS:[ECX + EDX*4 + 00000100h], EBX
1169h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EBX
1173h:  BTC     SS:[EBP + EBP + 10203040h], EBX
117Dh:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
1188h:  LOCK    BTC DS:[BX + SI], EBX
118Dh:  LOCK    BTC DS:[BX + DI], EBX
1192h:  LOCK    BTC SS:[BP + SI], EBX
1197h:  LOCK    BTC SS:[BP + DI], EBX
119Ch:  LOCK    BTC SS:[BP], EBX
11A2h:  LOCK    BTC DS:[SI], EBX
11A7h:  LOCK    BTC DS:[DI], EBX
11ACh:  LOCK    BTC DS:[BX + SI + 1234h], EBX
11B3h:  LOCK    BTC DS:[BX + DI + 1234h], EBX
11BAh:  LOCK    BTC SS:[BP + SI + 1234h], EBX
11C1h:  LOCK    BTC SS:[BP + DI + 1234h], EBX
11C8h:  LOCK    BTC SS:[BP + 1234h], EBX
11CFh:  LOCK    BTC DS:[SI + 1234h], EBX
11D6h:  LOCK    BTC DS:[DI + 1234h], EBX
11DEh:  BTC     EBX, 01h
11E3h:  BTC     EBX, 0FFh
11E8h:  BTC     EAX, ESP
11ECh:  BTC     ECX, ESP
11F0h:  BTC     EDX, ESP
11F4h:  BTC     EBX, ESP
11F8h:  BTC     ESP, ESP
11FCh:  BTC     EBP, ESP
1200h:  BTC     ESI, ESP
1204h:  BTC     EDI, ESP
1208h:  BTC     SS:[ESP + ESP], EAX
120Eh:  BTC     SS:[ESP + ESP + 00001234h], ECX
1219h:  BTC     CS:[ESP + ESP], EBX
1220h:  BTC     DS:[ESP + ESP], EDX
1227h:  BTC     ES:[ESP + ESP], ESP
122Eh:  BTC     SS:[ESP + ESP], EBP
1235h:  BTC     FS:[ESP + ESP], ESI
123Ch:  BTC     GS:[ESP + ESP], EDI
1242h:  BTC     DS:[EAX + EAX*2 + 00000100h], ESP
124Ch:  BTC     DS:[EBX + EBP*4 + 12345678h], ESP
1256h:  BTC     SS:[EBP + EBP], ESP
125Dh:  BTC     SS:[ESP + EBP], ESP
1263h:  BTC     DS:[EDX + EBX*8], ESP
1269h:  BTC     DS:[EBX + ECX*2 + 01h], ESP
1270h:  BTC     DS:[ECX + EDX*4 + 00000100h], ESP
127Ah:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ESP
1284h:  BTC     SS:[EBP + EBP + 10203040h], ESP
128Eh:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
1299h:  LOCK    BTC DS:[BX + SI], ESP
129Eh:  LOCK    BTC DS:[BX + DI], ESP
12A3h:  LOCK    BTC SS:[BP + SI], ESP
12A8h:  LOCK    BTC SS:[BP + DI], ESP
12ADh:  LOCK    BTC SS:[BP], ESP
12B3h:  LOCK    BTC DS:[SI], ESP
12B8h:  LOCK    BTC DS:[DI], ESP
12BDh:  LOCK    BTC DS:[BX + SI + 1234h], ESP
12C4h:  LOCK    BTC DS:[BX + DI + 1234h], ESP
12CBh:  LOCK    BTC SS:[BP + SI + 1234h], ESP
12D2h:  LOCK    BTC SS:[BP + DI + 1234h], ESP
12D9h:  LOCK    BTC SS:[BP + 1234h], ESP
12E0h:  LOCK    BTC DS:[SI + 1234h], ESP
12E7h:  LOCK    BTC DS:[DI + 1234h], ESP
12EFh:  BTC     ESP, 01h
12F4h:  BTC     ESP, 0FFh
12F9h:  BTC     EAX, EBP
12FDh:  BTC     ECX, EBP
1301h:  BTC     EDX, EBP
1305h:  BTC     EBX, EBP
1309h:  BTC     ESP, EBP
130Dh:  BTC     EBP, EBP
1311h:  BTC     ESI, EBP
1315h:  BTC     EDI, EBP
1319h:  BTC     SS:[EBP], EAX
131Fh:  BTC     SS:[EBP + 00001234h], ECX
1329h:  BTC     CS:[EBP], EBX
1330h:  BTC     DS:[EBP], EDX
1337h:  BTC     ES:[EBP], ESP
133Eh:  BTC     SS:[EBP], EBP
1345h:  BTC     FS:[EBP], ESI
134Ch:  BTC     GS:[EBP], EDI
1352h:  BTC     DS:[EAX + EAX*2 + 00000100h], EBP
135Ch:  BTC     DS:[EBX + EBP*4 + 12345678h], EBP
1366h:  BTC     SS:[EBP + EBP], EBP
136Dh:  BTC     SS:[ESP + EBP], EBP
1373h:  BTC     DS:[EDX + EBX*8], EBP
1379h:  BTC     DS:[EBX + ECX*2 + 01h], EBP
1380h:  BTC     DS:[ECX + EDX*4 + 00000100h], EBP
138Ah:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EBP
1394h:  BTC     SS:[EBP + EBP + 10203040h], EBP
139Eh:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
13A9h:  LOCK    BTC DS:[BX + SI], EBP
13AEh:  LOCK    BTC DS:[BX + DI], EBP
13B3h:  LOCK    BTC SS:[BP + SI], EBP
13B8h:  LOCK    BTC SS:[BP + DI], EBP
13BDh:  LOCK    BTC SS:[BP], EBP
13C3h:  LOCK    BTC DS:[SI], EBP
13C8h:  LOCK    BTC DS:[DI], EBP
13CDh:  LOCK    BTC DS:[BX + SI + 1234h], EBP
13D4h:  LOCK    BTC DS:[BX + DI + 1234h], EBP
13DBh:  LOCK    BTC SS:[BP + SI + 1234h], EBP
13E2h:  LOCK    BTC SS:[BP + DI + 1234h], EBP
13E9h:  LOCK    BTC SS:[BP + 1234h], EBP
13F0h:  LOCK    BTC DS:[SI + 1234h], EBP
13F7h:  LOCK    BTC DS:[DI + 1234h], EBP
13FFh:  BTC     EBP, 01h
1404h:  BTC     EBP, 0FFh
1409h:  BTC     EAX, ESI
140Dh:  BTC     ECX, ESI
1411h:  BTC     EDX, ESI
1415h:  BTC     EBX, ESI
1419h:  BTC     ESP, ESI
141Dh:  BTC     EBP, ESI
1421h:  BTC     ESI, ESI
1425h:  BTC     EDI, ESI
1429h:  BTC     DS:[ESI], EAX
142Eh:  BTC     DS:[ESI + 00001234h], ECX
1438h:  BTC     CS:[ESI], EBX
143Eh:  BTC     DS:[ESI], EDX
1444h:  BTC     ES:[ESI], ESP
144Ah:  BTC     SS:[ESI], EBP
1450h:  BTC     FS:[ESI], ESI
1456h:  BTC     GS:[ESI], EDI
145Bh:  BTC     DS:[EAX + EAX*2 + 00000100h], ESI
1465h:  BTC     DS:[EBX + EBP*4 + 12345678h], ESI
146Fh:  BTC     SS:[EBP + EBP], ESI
1476h:  BTC     SS:[ESP + EBP], ESI
147Ch:  BTC     DS:[EDX + EBX*8], ESI
1482h:  BTC     DS:[EBX + ECX*2 + 01h], ESI
1489h:  BTC     DS:[ECX + EDX*4 + 00000100h], ESI
1493h:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], ESI
149Dh:  BTC     SS:[EBP + EBP + 10203040h], ESI
14A7h:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
14B2h:  LOCK    BTC DS:[BX + SI], ESI
14B7h:  LOCK    BTC DS:[BX + DI], ESI
14BCh:  LOCK    BTC SS:[BP + SI], ESI
14C1h:  LOCK    BTC SS:[BP + DI], ESI
14C6h:  LOCK    BTC SS:[BP], ESI
14CCh:  LOCK    BTC DS:[SI], ESI
14D1h:  LOCK    BTC DS:[DI], ESI
14D6h:  LOCK    BTC DS:[BX + SI + 1234h], ESI
14DDh:  LOCK    BTC DS:[BX + DI + 1234h], ESI
14E4h:  LOCK    BTC SS:[BP + SI + 1234h], ESI
14EBh:  LOCK    BTC SS:[BP + DI + 1234h], ESI
14F2h:  LOCK    BTC SS:[BP + 1234h], ESI
14F9h:  LOCK    BTC DS:[SI + 1234h], ESI
1500h:  LOCK    BTC DS:[DI + 1234h], ESI
1508h:  BTC     ESI, 01h
150Dh:  BTC     ESI, 0FFh
1512h:  BTC     EAX, EDI
1516h:  BTC     ECX, EDI
151Ah:  BTC     EDX, EDI
151Eh:  BTC     EBX, EDI
1522h:  BTC     ESP, EDI
1526h:  BTC     EBP, EDI
152Ah:  BTC     ESI, EDI
152Eh:  BTC     EDI, EDI
1532h:  BTC     DS:[EDI], EAX
1537h:  BTC     DS:[EDI + 00001234h], ECX
1541h:  BTC     CS:[EDI], EBX
1547h:  BTC     DS:[EDI], EDX
154Dh:  BTC     ES:[EDI], ESP
1553h:  BTC     SS:[EDI], EBP
1559h:  BTC     FS:[EDI], ESI
155Fh:  BTC     GS:[EDI], EDI
1564h:  BTC     DS:[EAX + EAX*2 + 00000100h], EDI
156Eh:  BTC     DS:[EBX + EBP*4 + 12345678h], EDI
1578h:  BTC     SS:[EBP + EBP], EDI
157Fh:  BTC     SS:[ESP + EBP], EDI
1585h:  BTC     DS:[EDX + EBX*8], EDI
158Bh:  BTC     DS:[EBX + ECX*2 + 01h], EDI
1592h:  BTC     DS:[ECX + EDX*4 + 00000100h], EDI
159Ch:  BTC     DS:[EAX + EAX*8 + 0A0B00C0D0h], EDI
15A6h:  BTC     SS:[EBP + EBP + 10203040h], EDI
15B0h:  LOCK    BTC WORD PTR FS:[EBX + EBP + 0FFEE0DDCCh], 0A0h
15BBh:  LOCK    BTC DS:[BX + SI], EDI
15C0h:  LOCK    BTC DS:[BX + DI], EDI
15C5h:  LOCK    BTC SS:[BP + SI], EDI
15CAh:  LOCK    BTC SS:[BP + DI], EDI
15CFh:  LOCK    BTC SS:[BP], EDI
15D5h:  LOCK    BTC DS:[SI], EDI
15DAh:  LOCK    BTC DS:[DI], EDI
15DFh:  LOCK    BTC DS:[BX + SI + 1234h], EDI
15E6h:  LOCK    BTC DS:[BX + DI + 1234h], EDI
15EDh:  LOCK    BTC SS:[BP + SI + 1234h], EDI
15F4h:  LOCK    BTC SS:[BP + DI + 1234h], EDI
15FBh:  LOCK    BTC SS:[BP + 1234h], EDI
1602h:  LOCK    BTC DS:[SI + 1234h], EDI
1609h:  LOCK    BTC DS:[DI + 1234h], EDI
1611h:  BTC     EDI, 01h
1616h:  BTC     EDI, 0FFh
161Ah:  BTC     AX, AX
161Dh:  BTC     CX, AX
1620h:  BTC     DX, AX
1623h:  BTC     BX, AX
1626h:  BTC     SP, AX
1629h:  BTC     BP, AX
162Ch:  BTC     SI, AX
162Fh:  BTC     DI, AX
1632h:  BTC     DS:[BX + SI], AX
1635h:  BTC     DS:[BX + DI], AX
1638h:  BTC     SS:[BP + SI], AX
163Bh:  BTC     SS:[BP + DI], AX
163Eh:  BTC     SS:[BP], AX
1642h:  BTC     DS:[SI], AX
1645h:  BTC     DS:[DI], AX
1648h:  BTC     DS:[BX + SI + 1234h], AX
164Dh:  BTC     DS:[BX + DI + 1234h], AX
1652h:  BTC     SS:[BP + SI + 1234h], AX
1657h:  BTC     SS:[BP + DI + 1234h], AX
165Ch:  BTC     SS:[BP + 1234h], AX
1661h:  BTC     DS:[SI + 1234h], AX
1666h:  BTC     DS:[DI + 1234h], AX
166Ch:  BTC     CS:[BX + SI], AX
1670h:  BTC     CS:[BX + DI], AX
1674h:  BTC     CS:[BP + SI], AX
1678h:  BTC     CS:[BP + DI], AX
167Ch:  BTC     CS:[BP], AX
1681h:  BTC     CS:[SI], AX
1685h:  BTC     CS:[DI], AX
1689h:  BTC     DS:[BX + SI], AX
168Dh:  BTC     DS:[BX + DI], AX
1691h:  BTC     DS:[BP + SI], AX
1695h:  BTC     DS:[BP + DI], AX
1699h:  BTC     DS:[BP], AX
169Eh:  BTC     DS:[SI], AX
16A2h:  BTC     DS:[DI], AX
16A6h:  BTC     ES:[BX + SI], AX
16AAh:  BTC     ES:[BX + DI], AX
16AEh:  BTC     ES:[BP + SI], AX
16B2h:  BTC     ES:[BP + DI], AX
16B6h:  BTC     ES:[BP], AX
16BBh:  BTC     ES:[SI], AX
16BFh:  BTC     ES:[DI], AX
16C3h:  BTC     SS:[BX + SI], AX
16C7h:  BTC     SS:[BX + DI], AX
16CBh:  BTC     SS:[BP + SI], AX
16CFh:  BTC     SS:[BP + DI], AX
16D3h:  BTC     SS:[BP], AX
16D8h:  BTC     SS:[SI], AX
16DCh:  BTC     SS:[DI], AX
16E0h:  BTC     FS:[BX + SI], AX
16E4h:  BTC     FS:[BX + DI], AX
16E8h:  BTC     FS:[BP + SI], AX
16ECh:  BTC     FS:[BP + DI], AX
16F0h:  BTC     FS:[BP], AX
16F5h:  BTC     FS:[SI], AX
16F9h:  BTC     FS:[DI], AX
16FDh:  BTC     GS:[BX + SI], AX
1701h:  BTC     GS:[BX + DI], AX
1705h:  BTC     GS:[BP + SI], AX
1709h:  BTC     GS:[BP + DI], AX
170Dh:  BTC     GS:[BP], AX
1712h:  BTC     GS:[SI], AX
1716h:  BTC     GS:[DI], AX
1719h:  BTC     AX, 01h
171Dh:  BTC     AX, 0FFh
1721h:  BTC     AX, CX
1724h:  BTC     CX, CX
1727h:  BTC     DX, CX
172Ah:  BTC     BX, CX
172Dh:  BTC     SP, CX
1730h:  BTC     BP, CX
1733h:  BTC     SI, CX
1736h:  BTC     DI, CX
1739h:  BTC     DS:[BX + SI], CX
173Ch:  BTC     DS:[BX + DI], CX
173Fh:  BTC     SS:[BP + SI], CX
1742h:  BTC     SS:[BP + DI], CX
1745h:  BTC     SS:[BP], CX
1749h:  BTC     DS:[SI], CX
174Ch:  BTC     DS:[DI], CX
174Fh:  BTC     DS:[BX + SI + 1234h], CX
1754h:  BTC     DS:[BX + DI + 1234h], CX
1759h:  BTC     SS:[BP + SI + 1234h], CX
175Eh:  BTC     SS:[BP + DI + 1234h], CX
1763h:  BTC     SS:[BP + 1234h], CX
1768h:  BTC     DS:[SI + 1234h], CX
176Dh:  BTC     DS:[DI + 1234h], CX
1773h:  BTC     CS:[BX + SI], CX
1777h:  BTC     CS:[BX + DI], CX
177Bh:  BTC     CS:[BP + SI], CX
177Fh:  BTC     CS:[BP + DI], CX
1783h:  BTC     CS:[BP], CX
1788h:  BTC     CS:[SI], CX
178Ch:  BTC     CS:[DI], CX
1790h:  BTC     DS:[BX + SI], CX
1794h:  BTC     DS:[BX + DI], CX
1798h:  BTC     DS:[BP + SI], CX
179Ch:  BTC     DS:[BP + DI], CX
17A0h:  BTC     DS:[BP], CX
17A5h:  BTC     DS:[SI], CX
17A9h:  BTC     DS:[DI], CX
17ADh:  BTC     ES:[BX + SI], CX
17B1h:  BTC     ES:[BX + DI], CX
17B5h:  BTC     ES:[BP + SI], CX
17B9h:  BTC     ES:[BP + DI], CX
17BDh:  BTC     ES:[BP], CX
17C2h:  BTC     ES:[SI], CX
17C6h:  BTC     ES:[DI], CX
17CAh:  BTC     SS:[BX + SI], CX
17CEh:  BTC     SS:[BX + DI], CX
17D2h:  BTC     SS:[BP + SI], CX
17D6h:  BTC     SS:[BP + DI], CX
17DAh:  BTC     SS:[BP], CX
17DFh:  BTC     SS:[SI], CX
17E3h:  BTC     SS:[DI], CX
17E7h:  BTC     FS:[BX + SI], CX
17EBh:  BTC     FS:[BX + DI], CX
17EFh:  BTC     FS:[BP + SI], CX
17F3h:  BTC     FS:[BP + DI], CX
17F7h:  BTC     FS:[BP], CX
17FCh:  BTC     FS:[SI], CX
1800h:  BTC     FS:[DI], CX
1804h:  BTC     GS:[BX + SI], CX
1808h:  BTC     GS:[BX + DI], CX
180Ch:  BTC     GS:[BP + SI], CX
1810h:  BTC     GS:[BP + DI], CX
1814h:  BTC     GS:[BP], CX
1819h:  BTC     GS:[SI], CX
181Dh:  BTC     GS:[DI], CX
1820h:  BTC     CX, 01h
1824h:  BTC     CX, 0FFh
1828h:  BTC     AX, DX
182Bh:  BTC     CX, DX
182Eh:  BTC     DX, DX
1831h:  BTC     BX, DX
1834h:  BTC     SP, DX
1837h:  BTC     BP, DX
183Ah:  BTC     SI, DX
183Dh:  BTC     DI, DX
1840h:  BTC     DS:[BX + SI], DX
1843h:  BTC     DS:[BX + DI], DX
1846h:  BTC     SS:[BP + SI], DX
1849h:  BTC     SS:[BP + DI], DX
184Ch:  BTC     SS:[BP], DX
1850h:  BTC     DS:[SI], DX
1853h:  BTC     DS:[DI], DX
1856h:  BTC     DS:[BX + SI + 1234h], DX
185Bh:  BTC     DS:[BX + DI + 1234h], DX
1860h:  BTC     SS:[BP + SI + 1234h], DX
1865h:  BTC     SS:[BP + DI + 1234h], DX
186Ah:  BTC     SS:[BP + 1234h], DX
186Fh:  BTC     DS:[SI + 1234h], DX
1874h:  BTC     DS:[DI + 1234h], DX
187Ah:  BTC     CS:[BX + SI], DX
187Eh:  BTC     CS:[BX + DI], DX
1882h:  BTC     CS:[BP + SI], DX
1886h:  BTC     CS:[BP + DI], DX
188Ah:  BTC     CS:[BP], DX
188Fh:  BTC     CS:[SI], DX
1893h:  BTC     CS:[DI], DX
1897h:  BTC     DS:[BX + SI], DX
189Bh:  BTC     DS:[BX + DI], DX
189Fh:  BTC     DS:[BP + SI], DX
18A3h:  BTC     DS:[BP + DI], DX
18A7h:  BTC     DS:[BP], DX
18ACh:  BTC     DS:[SI], DX
18B0h:  BTC     DS:[DI], DX
18B4h:  BTC     ES:[BX + SI], DX
18B8h:  BTC     ES:[BX + DI], DX
18BCh:  BTC     ES:[BP + SI], DX
18C0h:  BTC     ES:[BP + DI], DX
18C4h:  BTC     ES:[BP], DX
18C9h:  BTC     ES:[SI], DX
18CDh:  BTC     ES:[DI], DX
18D1h:  BTC     SS:[BX + SI], DX
18D5h:  BTC     SS:[BX + DI], DX
18D9h:  BTC     SS:[BP + SI], DX
18DDh:  BTC     SS:[BP + DI], DX
18E1h:  BTC     SS:[BP], DX
18E6h:  BTC     SS:[SI], DX
18EAh:  BTC     SS:[DI], DX
18EEh:  BTC     FS:[BX + SI], DX
18F2h:  BTC     FS:[BX + DI], DX
18F6h:  BTC     FS:[BP + SI], DX
18FAh:  BTC     FS:[BP + DI], DX
18FEh:  BTC     FS:[BP], DX
1903h:  BTC     FS:[SI], DX
1907h:  BTC     FS:[DI], DX
190Bh:  BTC     GS:[BX + SI], DX
190Fh:  BTC     GS:[BX + DI], DX
1913h:  BTC     GS:[BP + SI], DX
1917h:  BTC     GS:[BP + DI], DX
191Bh:  BTC     GS:[BP], DX
1920h:  BTC     GS:[SI], DX
1924h:  BTC     GS:[DI], DX
1927h:  BTC     DX, 01h
192Bh:  BTC     DX, 0FFh
192Fh:  BTC     AX, BX
1932h:  BTC     CX, BX
1935h:  BTC     DX, BX
1938h:  BTC     BX, BX
193Bh:  BTC     SP, BX
193Eh:  BTC     BP, BX
1941h:  BTC     SI, BX
1944h:  BTC     DI, BX
1947h:  BTC     DS:[BX + SI], BX
194Ah:  BTC     DS:[BX + DI], BX
194Dh:  BTC     SS:[BP + SI], BX
1950h:  BTC     SS:[BP + DI], BX
1953h:  BTC     SS:[BP], BX
1957h:  BTC     DS:[SI], BX
195Ah:  BTC     DS:[DI], BX
195Dh:  BTC     DS:[BX + SI + 1234h], BX
1962h:  BTC     DS:[BX + DI + 1234h], BX
1967h:  BTC     SS:[BP + SI + 1234h], BX
196Ch:  BTC     SS:[BP + DI + 1234h], BX
1971h:  BTC     SS:[BP + 1234h], BX
1976h:  BTC     DS:[SI + 1234h], BX
197Bh:  BTC     DS:[DI + 1234h], BX
1981h:  BTC     CS:[BX + SI], BX
1985h:  BTC     CS:[BX + DI], BX
1989h:  BTC     CS:[BP + SI], BX
198Dh:  BTC     CS:[BP + DI], BX
1991h:  BTC     CS:[BP], BX
1996h:  BTC     CS:[SI], BX
199Ah:  BTC     CS:[DI], BX
199Eh:  BTC     DS:[BX + SI], BX
19A2h:  BTC     DS:[BX + DI], BX
19A6h:  BTC     DS:[BP + SI], BX
19AAh:  BTC     DS:[BP + DI], BX
19AEh:  BTC     DS:[BP], BX
19B3h:  BTC     DS:[SI], BX
19B7h:  BTC     DS:[DI], BX
19BBh:  BTC     ES:[BX + SI], BX
19BFh:  BTC     ES:[BX + DI], BX
19C3h:  BTC     ES:[BP + SI], BX
19C7h:  BTC     ES:[BP + DI], BX
19CBh:  BTC     ES:[BP], BX
19D0h:  BTC     ES:[SI], BX
19D4h:  BTC     ES:[DI], BX
19D8h:  BTC     SS:[BX + SI], BX
19DCh:  BTC     SS:[BX + DI], BX
19E0h:  BTC     SS:[BP + SI], BX
19E4h:  BTC     SS:[BP + DI], BX
19E8h:  BTC     SS:[BP], BX
19EDh:  BTC     SS:[SI], BX
19F1h:  BTC     SS:[DI], BX
19F5h:  BTC     FS:[BX + SI], BX
19F9h:  BTC     FS:[BX + DI], BX
19FDh:  BTC     FS:[BP + SI], BX
1A01h:  BTC     FS:[BP + DI], BX
1A05h:  BTC     FS:[BP], BX
1A0Ah:  BTC     FS:[SI], BX
1A0Eh:  BTC     FS:[DI], BX
1A12h:  BTC     GS:[BX + SI], BX
1A16h:  BTC     GS:[BX + DI], BX
1A1Ah:  BTC     GS:[BP + SI], BX
1A1Eh:  BTC     GS:[BP + DI], BX
1A22h:  BTC     GS:[BP], BX
1A27h:  BTC     GS:[SI], BX
1A2Bh:  BTC     GS:[DI], BX
1A2Eh:  BTC     BX, 01h
1A32h:  BTC     BX, 0FFh
1A36h:  BTC     AX, SP
1A39h:  BTC     CX, SP
1A3Ch:  BTC     DX, SP
1A3Fh:  BTC     BX, SP
1A42h:  BTC     SP, SP
1A45h:  BTC     BP, SP
1A48h:  BTC     SI, SP
1A4Bh:  BTC     DI, SP
1A4Eh:  BTC     DS:[BX + SI], SP
1A51h:  BTC     DS:[BX + DI], SP
1A54h:  BTC     SS:[BP + SI], SP
1A57h:  BTC     SS:[BP + DI], SP
1A5Ah:  BTC     SS:[BP], SP
1A5Eh:  BTC     DS:[SI], SP
1A61h:  BTC     DS:[DI], SP
1A64h:  BTC     DS:[BX + SI + 1234h], SP
1A69h:  BTC     DS:[BX + DI + 1234h], SP
1A6Eh:  BTC     SS:[BP + SI + 1234h], SP
1A73h:  BTC     SS:[BP + DI + 1234h], SP
1A78h:  BTC     SS:[BP + 1234h], SP
1A7Dh:  BTC     DS:[SI + 1234h], SP
1A82h:  BTC     DS:[DI + 1234h], SP
1A88h:  BTC     CS:[BX + SI], SP
1A8Ch:  BTC     CS:[BX + DI], SP
1A90h:  BTC     CS:[BP + SI], SP
1A94h:  BTC     CS:[BP + DI], SP
1A98h:  BTC     CS:[BP], SP
1A9Dh:  BTC     CS:[SI], SP
1AA1h:  BTC     CS:[DI], SP
1AA5h:  BTC     DS:[BX + SI], SP
1AA9h:  BTC     DS:[BX + DI], SP
1AADh:  BTC     DS:[BP + SI], SP
1AB1h:  BTC     DS:[BP + DI], SP
1AB5h:  BTC     DS:[BP], SP
1ABAh:  BTC     DS:[SI], SP
1ABEh:  BTC     DS:[DI], SP
1AC2h:  BTC     ES:[BX + SI], SP
1AC6h:  BTC     ES:[BX + DI], SP
1ACAh:  BTC     ES:[BP + SI], SP
1ACEh:  BTC     ES:[BP + DI], SP
1AD2h:  BTC     ES:[BP], SP
1AD7h:  BTC     ES:[SI], SP
1ADBh:  BTC     ES:[DI], SP
1ADFh:  BTC     SS:[BX + SI], SP
1AE3h:  BTC     SS:[BX + DI], SP
1AE7h:  BTC     SS:[BP + SI], SP
1AEBh:  BTC     SS:[BP + DI], SP
1AEFh:  BTC     SS:[BP], SP
1AF4h:  BTC     SS:[SI], SP
1AF8h:  BTC     SS:[DI], SP
1AFCh:  BTC     FS:[BX + SI], SP
1B00h:  BTC     FS:[BX + DI], SP
1B04h:  BTC     FS:[BP + SI], SP
1B08h:  BTC     FS:[BP + DI], SP
1B0Ch:  BTC     FS:[BP], SP
1B11h:  BTC     FS:[SI], SP
1B15h:  BTC     FS:[DI], SP
1B19h:  BTC     GS:[BX + SI], SP
1B1Dh:  BTC     GS:[BX + DI], SP
1B21h:  BTC     GS:[BP + SI], SP
1B25h:  BTC     GS:[BP + DI], SP
1B29h:  BTC     GS:[BP], SP
1B2Eh:  BTC     GS:[SI], SP
1B32h:  BTC     GS:[DI], SP
1B35h:  BTC     SP, 01h
1B39h:  BTC     SP, 0FFh
1B3Dh:  BTC     AX, BP
1B40h:  BTC     CX, BP
1B43h:  BTC     DX, BP
1B46h:  BTC     BX, BP
1B49h:  BTC     SP, BP
1B4Ch:  BTC     BP, BP
1B4Fh:  BTC     SI, BP
1B52h:  BTC     DI, BP
1B55h:  BTC     DS:[BX + SI], BP
1B58h:  BTC     DS:[BX + DI], BP
1B5Bh:  BTC     SS:[BP + SI], BP
1B5Eh:  BTC     SS:[BP + DI], BP
1B61h:  BTC     SS:[BP], BP
1B65h:  BTC     DS:[SI], BP
1B68h:  BTC     DS:[DI], BP
1B6Bh:  BTC     DS:[BX + SI + 1234h], BP
1B70h:  BTC     DS:[BX + DI + 1234h], BP
1B75h:  BTC     SS:[BP + SI + 1234h], BP
1B7Ah:  BTC     SS:[BP + DI + 1234h], BP
1B7Fh:  BTC     SS:[BP + 1234h], BP
1B84h:  BTC     DS:[SI + 1234h], BP
1B89h:  BTC     DS:[DI + 1234h], BP
1B8Fh:  BTC     CS:[BX + SI], BP
1B93h:  BTC     CS:[BX + DI], BP
1B97h:  BTC     CS:[BP + SI], BP
1B9Bh:  BTC     CS:[BP + DI], BP
1B9Fh:  BTC     CS:[BP], BP
1BA4h:  BTC     CS:[SI], BP
1BA8h:  BTC     CS:[DI], BP
1BACh:  BTC     DS:[BX + SI], BP
1BB0h:  BTC     DS:[BX + DI], BP
1BB4h:  BTC     DS:[BP + SI], BP
1BB8h:  BTC     DS:[BP + DI], BP
1BBCh:  BTC     DS:[BP], BP
1BC1h:  BTC     DS:[SI], BP
1BC5h:  BTC     DS:[DI], BP
1BC9h:  BTC     ES:[BX + SI], BP
1BCDh:  BTC     ES:[BX + DI], BP
1BD1h:  BTC     ES:[BP + SI], BP
1BD5h:  BTC     ES:[BP + DI], BP
1BD9h:  BTC     ES:[BP], BP
1BDEh:  BTC     ES:[SI], BP
1BE2h:  BTC     ES:[DI], BP
1BE6h:  BTC     SS:[BX + SI], BP
1BEAh:  BTC     SS:[BX + DI], BP
1BEEh:  BTC     SS:[BP + SI], BP
1BF2h:  BTC     SS:[BP + DI], BP
1BF6h:  BTC     SS:[BP], BP
1BFBh:  BTC     SS:[SI], BP
1BFFh:  BTC     SS:[DI], BP
1C03h:  BTC     FS:[BX + SI], BP
1C07h:  BTC     FS:[BX + DI], BP
1C0Bh:  BTC     FS:[BP + SI], BP
1C0Fh:  BTC     FS:[BP + DI], BP
1C13h:  BTC     FS:[BP], BP
1C18h:  BTC     FS:[SI], BP
1C1Ch:  BTC     FS:[DI], BP
1C20h:  BTC     GS:[BX + SI], BP
1C24h:  BTC     GS:[BX + DI], BP
1C28h:  BTC     GS:[BP + SI], BP
1C2Ch:  BTC     GS:[BP + DI], BP
1C30h:  BTC     GS:[BP], BP
1C35h:  BTC     GS:[SI], BP
1C39h:  BTC     GS:[DI], BP
1C3Ch:  BTC     BP, 01h
1C40h:  BTC     BP, 0FFh
1C44h:  BTC     AX, SI
1C47h:  BTC     CX, SI
1C4Ah:  BTC     DX, SI
1C4Dh:  BTC     BX, SI
1C50h:  BTC     SP, SI
1C53h:  BTC     BP, SI
1C56h:  BTC     SI, SI
1C59h:  BTC     DI, SI
1C5Ch:  BTC     DS:[BX + SI], SI
1C5Fh:  BTC     DS:[BX + DI], SI
1C62h:  BTC     SS:[BP + SI], SI
1C65h:  BTC     SS:[BP + DI], SI
1C68h:  BTC     SS:[BP], SI
1C6Ch:  BTC     DS:[SI], SI
1C6Fh:  BTC     DS:[DI], SI
1C72h:  BTC     DS:[BX + SI + 1234h], SI
1C77h:  BTC     DS:[BX + DI + 1234h], SI
1C7Ch:  BTC     SS:[BP + SI + 1234h], SI
1C81h:  BTC     SS:[BP + DI + 1234h], SI
1C86h:  BTC     SS:[BP + 1234h], SI
1C8Bh:  BTC     DS:[SI + 1234h], SI
1C90h:  BTC     DS:[DI + 1234h], SI
1C96h:  BTC     CS:[BX + SI], SI
1C9Ah:  BTC     CS:[BX + DI], SI
1C9Eh:  BTC     CS:[BP + SI], SI
1CA2h:  BTC     CS:[BP + DI], SI
1CA6h:  BTC     CS:[BP], SI
1CABh:  BTC     CS:[SI], SI
1CAFh:  BTC     CS:[DI], SI
1CB3h:  BTC     DS:[BX + SI], SI
1CB7h:  BTC     DS:[BX + DI], SI
1CBBh:  BTC     DS:[BP + SI], SI
1CBFh:  BTC     DS:[BP + DI], SI
1CC3h:  BTC     DS:[BP], SI
1CC8h:  BTC     DS:[SI], SI
1CCCh:  BTC     DS:[DI], SI
1CD0h:  BTC     ES:[BX + SI], SI
1CD4h:  BTC     ES:[BX + DI], SI
1CD8h:  BTC     ES:[BP + SI], SI
1CDCh:  BTC     ES:[BP + DI], SI
1CE0h:  BTC     ES:[BP], SI
1CE5h:  BTC     ES:[SI], SI
1CE9h:  BTC     ES:[DI], SI
1CEDh:  BTC     SS:[BX + SI], SI
1CF1h:  BTC     SS:[BX + DI], SI
1CF5h:  BTC     SS:[BP + SI], SI
1CF9h:  BTC     SS:[BP + DI], SI
1CFDh:  BTC     SS:[BP], SI
1D02h:  BTC     SS:[SI], SI
1D06h:  BTC     SS:[DI], SI
1D0Ah:  BTC     FS:[BX + SI], SI
1D0Eh:  BTC     FS:[BX + DI], SI
1D12h:  BTC     FS:[BP + SI], SI
1D16h:  BTC     FS:[BP + DI], SI
1D1Ah:  BTC     FS:[BP], SI
1D1Fh:  BTC     FS:[SI], SI
1D23h:  BTC     FS:[DI], SI
1D27h:  BTC     GS:[BX + SI], SI
1D2Bh:  BTC     GS:[BX + DI], SI
1D2Fh:  BTC     GS:[BP + SI], SI
1D33h:  BTC     GS:[BP + DI], SI
1D37h:  BTC     GS:[BP], SI
1D3Ch:  BTC     GS:[SI], SI
1D40h:  BTC     GS:[DI], SI
1D43h:  BTC     SI, 01h
1D47h:  BTC     SI, 0FFh
1D4Bh:  BTC     AX, DI
1D4Eh:  BTC     CX, DI
1D51h:  BTC     DX, DI
1D54h:  BTC     BX, DI
1D57h:  BTC     SP, DI
1D5Ah:  BTC     BP, DI
1D5Dh:  BTC     SI, DI
1D60h:  BTC     DI, DI
1D63h:  BTC     DS:[BX + SI], DI
1D66h:  BTC     DS:[BX + DI], DI
1D69h:  BTC     SS:[BP + SI], DI
1D6Ch:  BTC     SS:[BP + DI], DI
1D6Fh:  BTC     SS:[BP], DI
1D73h:  BTC     DS:[SI], DI
1D76h:  BTC     DS:[DI], DI
1D79h:  BTC     DS:[BX + SI + 1234h], DI
1D7Eh:  BTC     DS:[BX + DI + 1234h], DI
1D83h:  BTC     SS:[BP + SI + 1234h], DI
1D88h:  BTC     SS:[BP + DI + 1234h], DI
1D8Dh:  BTC     SS:[BP + 1234h], DI
1D92h:  BTC     DS:[SI + 1234h], DI
1D97h:  BTC     DS:[DI + 1234h], DI
1D9Dh:  BTC     CS:[BX + SI], DI
1DA1h:  BTC     CS:[BX + DI], DI
1DA5h:  BTC     CS:[BP + SI], DI
1DA9h:  BTC     CS:[BP + DI], DI
1DADh:  BTC     CS:[BP], DI
1DB2h:  BTC     CS:[SI], DI
1DB6h:  BTC     CS:[DI], DI
1DBAh:  BTC     DS:[BX + SI], DI
1DBEh:  BTC     DS:[BX + DI], DI
1DC2h:  BTC     DS:[BP + SI], DI
1DC6h:  BTC     DS:[BP + DI], DI
1DCAh:  BTC     DS:[BP], DI
1DCFh:  BTC     DS:[SI], DI
1DD3h:  BTC     DS:[DI], DI
1DD7h:  BTC     ES:[BX + SI], DI
1DDBh:  BTC     ES:[BX + DI], DI
1DDFh:  BTC     ES:[BP + SI], DI
1DE3h:  BTC     ES:[BP + DI], DI
1DE7h:  BTC     ES:[BP], DI
1DECh:  BTC     ES:[SI], DI
1DF0h:  BTC     ES:[DI], DI
1DF4h:  BTC     SS:[BX + SI], DI
1DF8h:  BTC     SS:[BX + DI], DI
1DFCh:  BTC     SS:[BP + SI], DI
1E00h:  BTC     SS:[BP + DI], DI
1E04h:  BTC     SS:[BP], DI
1E09h:  BTC     SS:[SI], DI
1E0Dh:  BTC     SS:[DI], DI
1E11h:  BTC     FS:[BX + SI], DI
1E15h:  BTC     FS:[BX + DI], DI
1E19h:  BTC     FS:[BP + SI], DI
1E1Dh:  BTC     FS:[BP + DI], DI
1E21h:  BTC     FS:[BP], DI
1E26h:  BTC     FS:[SI], DI
1E2Ah:  BTC     FS:[DI], DI
1E2Eh:  BTC     GS:[BX + SI], DI
1E32h:  BTC     GS:[BX + DI], DI
1E36h:  BTC     GS:[BP + SI], DI
1E3Ah:  BTC     GS:[BP + DI], DI
1E3Eh:  BTC     GS:[BP], DI
1E43h:  BTC     GS:[SI], DI
1E47h:  BTC     GS:[DI], DI
1E4Ah:  BTC     DI, 01h
1E4Eh:  BTC     DI, 0FFh
1E53h:  BTC     EAX, 0FFh
1E58h:  BTC     ECX, 0FFh
1E5Dh:  BTC     EDX, 0FFh
1E62h:  BTC     EBX, 0FFh
1E67h:  BTC     ESP, 0FFh
1E6Ch:  BTC     EBP, 0FFh
1E71h:  BTC     ESI, 0FFh
1E76h:  BTC     EDI, 0FFh
1E7Ah:  LOCK    BTC DS:[EAX + EAX + 00004321h], AX
1E84h:  LOCK    BTC DS:[EAX + EAX*2 + 00004321h], AX
1E8Eh:  LOCK    BTC DS:[EAX + EAX*4 + 00004321h], AX
1E98h:  LOCK    BTC DS:[EAX + EAX*8 + 00004321h], AX
1EA2h:  LOCK    BTC DS:[ESI + 00004321h], AX
1EABh:  LOCK    BTC DS:[EDI + 00004321h], AX
1EB4h:  LOCK    BTC DWORD PTR SS:[EBX + EAX*8 + 12345678h], 9Ah
1EC1h:  JO      1EC1h
1EC3h:  JNO     1EC1h
1EC5h:  JB      1EC1h
1EC7h:  JNB     1EC1h
1EC9h:  JZ      1EC1h
1ECBh:  JNZ     1EC1h
1ECDh:  JBE     1EC1h
1ECFh:  JNBE    1EC1h
1ED1h:  JS      1EC1h
1ED3h:  JNS     1EC1h
1ED5h:  JP      1EC1h
1ED7h:  JNP     1EC1h
1ED9h:  JL      1EC1h
1EDBh:  JNL     1EC1h
1EDDh:  JLE     1EC1h
1EDFh:  JNLE    1EC1h
1EE1h:  JCXZ    1EC1h
1EE3h:  JECXZ   1EC1h
1EE6h:  JO      1E7Ah
1EE8h:  JNO     1E7Ah
1EEAh:  JB      1E7Ah
1EECh:  JNB     1E7Ah
1EEEh:  JZ      1E7Ah
1EF0h:  JNZ     1E7Ah
1EF2h:  JBE     1E7Ah
1EF4h:  JNBE    1E7Ah
1EF6h:  JS      1E7Ah
1EF8h:  JNS     1E7Ah
1EFAh:  JP      1E7Ah
1EFEh:  JNP     1E7Ah
1F02h:  JL      1E7Ah
1F06h:  JNL     1E7Ah
1F0Ah:  JLE     1E7Ah
1F0Eh:  JNLE    1E7Ah
1F12h:  JNLE    1E7Ah
1F17h:  JO      1F12h
1F1Ah:  JB      1F12h
1F1Dh:  JZ      1F12h
1F20h:  JBE     1F12h
1F23h:  JCXZ    1F12h
1F26h:  JECXZ   1F12h
1F2Ah:  JNO     0100h
1F2Fh:  JNB     0100h
1F34h:  JNZ     0100h
1F39h:  JNBE    0100h
1F3Eh:  JNS     0100h
1F42h:  AAD     
