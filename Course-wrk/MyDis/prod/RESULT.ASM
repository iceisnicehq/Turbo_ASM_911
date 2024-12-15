0100H:  66 67 0F BB 04 9D 00 00 00 00                BTC     DS:[EBX*4],EAX
010AH:  67 0F BB 04 9D 00 00 00 00                   BTC     DS:[EBX*4],AX
0113H:  67 0F BB 04 AD 00 00 00 00                   BTC     SS:[EBP*4],AX
011CH:  66 67 0F BB 2C AD 01 00 00 00                BTC     SS:[EBP*4+00000001H],EBP
0126H:  66 67 0F BB 2C AD 00 01 00 00                BTC     SS:[EBP*4+00000100H],EBP
0130H:  67 0F BA 3C 28 FF                            BTC     word ptr DS:[EAX+EBP],0FFH
0136H:  67 0F BA 3C E8 FF                            BTC     word ptr DS:[EAX+EBP*8],0FFH
013CH:  67 0F BA 7C 05 00 FF                         BTC     word ptr SS:[EBP+EAX],0FFH
0143H:  67 0F BA 7C C5 00 FF                         BTC     word ptr SS:[EBP+EAX*8],0FFH
014AH:  67 0F BA 3C 04 FF                            BTC     word ptr SS:[ESP+EAX],0FFH
0150H:  67 0F BA 3C C4 FF                            BTC     word ptr SS:[ESP+EAX*8],0FFH
0156H:  67 0F BA 3C 2C FF                            BTC     word ptr SS:[ESP+EBP],0FFH
015CH:  67 0F BA 3C EC FF                            BTC     word ptr SS:[ESP+EBP*8],0FFH
0162H:  67 0F BA 7D 00 FF                            BTC     word ptr SS:[EBP],0FFH
0168H:  67 0F BA 3C 24 FF                            BTC     word ptr SS:[ESP+ESP],0FFH
016EH:  0F BB 00                                     BTC     DS:[BX+SI],AX
0171H:  0F BB 01                                     BTC     DS:[BX+DI],AX
0174H:  0F BB 02                                     BTC     SS:[BP+SI],AX
0177H:  0F BB 03                                     BTC     SS:[BP+DI],AX
017AH:  0F BB 46 00                                  BTC     SS:[BP],AX
017EH:  0F BB 04                                     BTC     DS:[SI],AX
0181H:  0F BB 05                                     BTC     DS:[DI],AX
0184H:  F0 66 67 0F BA BC D8 21 43 65 A7 FF          LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH
0190H:  F0 67 0F BA BC E8 21 43 65 87 FF             LOCK BTC     word ptr DS:[EAX+EBP*8+87654321H],0FFH
019BH:  F0 66 2E 67 0F BB 84 D8 21 43 65 B7          LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX
01A7H:  F0 3E 67 0F BB 84 E8 21 43 65 87             LOCK BTC     DS:[EAX+EBP*8+87654321H],AX
01B2H:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
01B8H:  36 67 0F BB 05 78 56 34 12                   BTC     SS:[12345678H],AX
01C1H:  66 64 0F BA 3E 23 01 01                      BTC     dword ptr FS:[0123H],01H
01C9H:  66 65 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr GS:[12345678H],10H
01D4H:  0F BB 06 34 12                               BTC     DS:[1234H],AX
01D9H:  67 0F BB 05 78 56 34 12                      BTC     DS:[12345678H],AX
01E1H:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
01E9H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
01F4H:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
01FAH:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678H],AX
0203H:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
020BH:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
0216H:  0F BA 38 A0                                  BTC     word ptr DS:[BX+SI],0A0H
021AH:  66 0F BA 38 B0                               BTC     dword ptr DS:[BX+SI],0B0H
021FH:  0F BA 39 A0                                  BTC     word ptr DS:[BX+DI],0A0H
0223H:  66 0F BA 39 B0                               BTC     dword ptr DS:[BX+DI],0B0H
0228H:  0F BA 3A A0                                  BTC     word ptr SS:[BP+SI],0A0H
022CH:  66 0F BA 3A B0                               BTC     dword ptr SS:[BP+SI],0B0H
0231H:  0F BA 3B A0                                  BTC     word ptr SS:[BP+DI],0A0H
0235H:  66 0F BA 3B B0                               BTC     dword ptr SS:[BP+DI],0B0H
023AH:  0F BA 7E 00 A0                               BTC     word ptr SS:[BP],0A0H
023FH:  66 0F BA 7E 00 B0                            BTC     dword ptr SS:[BP],0B0H
0245H:  0F BA 3D A0                                  BTC     word ptr DS:[DI],0A0H
0249H:  66 0F BA 3D B0                               BTC     dword ptr DS:[DI],0B0H
024EH:  0F BA 3C A0                                  BTC     word ptr DS:[SI],0A0H
0252H:  66 0F BA 3C B0                               BTC     dword ptr DS:[SI],0B0H
0257H:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],AX
0260H:  3E 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],AX
026AH:  67 0F BB 44 2D 00                            BTC     SS:[EBP+EBP],AX
0270H:  67 0F BB 04 2C                               BTC     SS:[ESP+EBP],AX
0275H:  67 0F BB 04 DA                               BTC     DS:[EDX+EBX*8],AX
027AH:  67 0F BB 44 4B 01                            BTC     DS:[EBX+ECX*2+01H],AX
0280H:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],AX
0289H:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX
0292H:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],AX
029BH:  F0 0F BB 80 34 12                            LOCK BTC     DS:[BX+SI+1234H],AX
02A1H:  F0 0F BB 81 34 12                            LOCK BTC     DS:[BX+DI+1234H],AX
02A7H:  F0 0F BB 82 34 12                            LOCK BTC     SS:[BP+SI+1234H],AX
02ADH:  F0 0F BB 83 34 12                            LOCK BTC     SS:[BP+DI+1234H],AX
02B3H:  F0 0F BB 86 34 12                            LOCK BTC     SS:[BP+1234H],AX
02B9H:  F0 0F BB 84 34 12                            LOCK BTC     DS:[SI+1234H],AX
02BFH:  F0 0F BB 85 34 12                            LOCK BTC     DS:[DI+1234H],AX
02C5H:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],CX
02CEH:  3E 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],CX
02D8H:  67 0F BB 4C 2D 00                            BTC     SS:[EBP+EBP],CX
02DEH:  67 0F BB 0C 2C                               BTC     SS:[ESP+EBP],CX
02E3H:  67 0F BB 0C DA                               BTC     DS:[EDX+EBX*8],CX
02E8H:  67 0F BB 4C 4B 01                            BTC     DS:[EBX+ECX*2+01H],CX
02EEH:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],CX
02F7H:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX
0300H:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],CX
0309H:  F0 0F BB 08                                  LOCK BTC     DS:[BX+SI],CX
030DH:  F0 0F BB 09                                  LOCK BTC     DS:[BX+DI],CX
0311H:  F0 0F BB 0A                                  LOCK BTC     SS:[BP+SI],CX
0315H:  F0 0F BB 0B                                  LOCK BTC     SS:[BP+DI],CX
0319H:  F0 0F BB 4E 00                               LOCK BTC     SS:[BP],CX
031EH:  F0 0F BB 0C                                  LOCK BTC     DS:[SI],CX
0322H:  F0 0F BB 0D                                  LOCK BTC     DS:[DI],CX
0326H:  F0 0F BB 88 34 12                            LOCK BTC     DS:[BX+SI+1234H],CX
032CH:  F0 0F BB 89 34 12                            LOCK BTC     DS:[BX+DI+1234H],CX
0332H:  F0 0F BB 8A 34 12                            LOCK BTC     SS:[BP+SI+1234H],CX
0338H:  F0 0F BB 8B 34 12                            LOCK BTC     SS:[BP+DI+1234H],CX
033EH:  F0 0F BB 8E 34 12                            LOCK BTC     SS:[BP+1234H],CX
0344H:  F0 0F BB 8C 34 12                            LOCK BTC     DS:[SI+1234H],CX
034AH:  F0 0F BB 8D 34 12                            LOCK BTC     DS:[DI+1234H],CX
0350H:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DX
0359H:  3E 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DX
0363H:  67 0F BB 54 2D 00                            BTC     SS:[EBP+EBP],DX
0369H:  67 0F BB 14 2C                               BTC     SS:[ESP+EBP],DX
036EH:  67 0F BB 14 DA                               BTC     DS:[EDX+EBX*8],DX
0373H:  67 0F BB 54 4B 01                            BTC     DS:[EBX+ECX*2+01H],DX
0379H:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DX
0382H:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX
038BH:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DX
0394H:  F0 0F BB 10                                  LOCK BTC     DS:[BX+SI],DX
0398H:  F0 0F BB 11                                  LOCK BTC     DS:[BX+DI],DX
039CH:  F0 0F BB 12                                  LOCK BTC     SS:[BP+SI],DX
03A0H:  F0 0F BB 13                                  LOCK BTC     SS:[BP+DI],DX
03A4H:  F0 0F BB 56 00                               LOCK BTC     SS:[BP],DX
03A9H:  F0 0F BB 14                                  LOCK BTC     DS:[SI],DX
03ADH:  F0 0F BB 15                                  LOCK BTC     DS:[DI],DX
03B1H:  F0 0F BB 90 34 12                            LOCK BTC     DS:[BX+SI+1234H],DX
03B7H:  F0 0F BB 91 34 12                            LOCK BTC     DS:[BX+DI+1234H],DX
03BDH:  F0 0F BB 92 34 12                            LOCK BTC     SS:[BP+SI+1234H],DX
03C3H:  F0 0F BB 93 34 12                            LOCK BTC     SS:[BP+DI+1234H],DX
03C9H:  F0 0F BB 96 34 12                            LOCK BTC     SS:[BP+1234H],DX
03CFH:  F0 0F BB 94 34 12                            LOCK BTC     DS:[SI+1234H],DX
03D5H:  F0 0F BB 95 34 12                            LOCK BTC     DS:[DI+1234H],DX
03DBH:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BX
03E4H:  3E 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BX
03EEH:  67 0F BB 5C 2D 00                            BTC     SS:[EBP+EBP],BX
03F4H:  67 0F BB 1C 2C                               BTC     SS:[ESP+EBP],BX
03F9H:  67 0F BB 1C DA                               BTC     DS:[EDX+EBX*8],BX
03FEH:  67 0F BB 5C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BX
0404H:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BX
040DH:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX
0416H:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BX
041FH:  F0 0F BB 18                                  LOCK BTC     DS:[BX+SI],BX
0423H:  F0 0F BB 19                                  LOCK BTC     DS:[BX+DI],BX
0427H:  F0 0F BB 1A                                  LOCK BTC     SS:[BP+SI],BX
042BH:  F0 0F BB 1B                                  LOCK BTC     SS:[BP+DI],BX
042FH:  F0 0F BB 5E 00                               LOCK BTC     SS:[BP],BX
0434H:  F0 0F BB 1C                                  LOCK BTC     DS:[SI],BX
0438H:  F0 0F BB 1D                                  LOCK BTC     DS:[DI],BX
043CH:  F0 0F BB 98 34 12                            LOCK BTC     DS:[BX+SI+1234H],BX
0442H:  F0 0F BB 99 34 12                            LOCK BTC     DS:[BX+DI+1234H],BX
0448H:  F0 0F BB 9A 34 12                            LOCK BTC     SS:[BP+SI+1234H],BX
044EH:  F0 0F BB 9B 34 12                            LOCK BTC     SS:[BP+DI+1234H],BX
0454H:  F0 0F BB 9E 34 12                            LOCK BTC     SS:[BP+1234H],BX
045AH:  F0 0F BB 9C 34 12                            LOCK BTC     DS:[SI+1234H],BX
0460H:  F0 0F BB 9D 34 12                            LOCK BTC     DS:[DI+1234H],BX
0466H:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SP
046FH:  3E 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SP
0479H:  67 0F BB 64 2D 00                            BTC     SS:[EBP+EBP],SP
047FH:  67 0F BB 24 2C                               BTC     SS:[ESP+EBP],SP
0484H:  67 0F BB 24 DA                               BTC     DS:[EDX+EBX*8],SP
0489H:  67 0F BB 64 4B 01                            BTC     DS:[EBX+ECX*2+01H],SP
048FH:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SP
0498H:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP
04A1H:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SP
04AAH:  F0 0F BB 20                                  LOCK BTC     DS:[BX+SI],SP
04AEH:  F0 0F BB 21                                  LOCK BTC     DS:[BX+DI],SP
04B2H:  F0 0F BB 22                                  LOCK BTC     SS:[BP+SI],SP
04B6H:  F0 0F BB 23                                  LOCK BTC     SS:[BP+DI],SP
04BAH:  F0 0F BB 66 00                               LOCK BTC     SS:[BP],SP
04BFH:  F0 0F BB 24                                  LOCK BTC     DS:[SI],SP
04C3H:  F0 0F BB 25                                  LOCK BTC     DS:[DI],SP
04C7H:  F0 0F BB A0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SP
04CDH:  F0 0F BB A1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SP
04D3H:  F0 0F BB A2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SP
04D9H:  F0 0F BB A3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SP
04DFH:  F0 0F BB A6 34 12                            LOCK BTC     SS:[BP+1234H],SP
04E5H:  F0 0F BB A4 34 12                            LOCK BTC     DS:[SI+1234H],SP
04EBH:  F0 0F BB A5 34 12                            LOCK BTC     DS:[DI+1234H],SP
04F1H:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BP
04FAH:  3E 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BP
0504H:  67 0F BB 6C 2D 00                            BTC     SS:[EBP+EBP],BP
050AH:  67 0F BB 2C 2C                               BTC     SS:[ESP+EBP],BP
050FH:  67 0F BB 2C DA                               BTC     DS:[EDX+EBX*8],BP
0514H:  67 0F BB 6C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BP
051AH:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BP
0523H:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP
052CH:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BP
0535H:  F0 0F BB 28                                  LOCK BTC     DS:[BX+SI],BP
0539H:  F0 0F BB 29                                  LOCK BTC     DS:[BX+DI],BP
053DH:  F0 0F BB 2A                                  LOCK BTC     SS:[BP+SI],BP
0541H:  F0 0F BB 2B                                  LOCK BTC     SS:[BP+DI],BP
0545H:  F0 0F BB 6E 00                               LOCK BTC     SS:[BP],BP
054AH:  F0 0F BB 2C                                  LOCK BTC     DS:[SI],BP
054EH:  F0 0F BB 2D                                  LOCK BTC     DS:[DI],BP
0552H:  F0 0F BB A8 34 12                            LOCK BTC     DS:[BX+SI+1234H],BP
0558H:  F0 0F BB A9 34 12                            LOCK BTC     DS:[BX+DI+1234H],BP
055EH:  F0 0F BB AA 34 12                            LOCK BTC     SS:[BP+SI+1234H],BP
0564H:  F0 0F BB AB 34 12                            LOCK BTC     SS:[BP+DI+1234H],BP
056AH:  F0 0F BB AE 34 12                            LOCK BTC     SS:[BP+1234H],BP
0570H:  F0 0F BB AC 34 12                            LOCK BTC     DS:[SI+1234H],BP
0576H:  F0 0F BB AD 34 12                            LOCK BTC     DS:[DI+1234H],BP
057CH:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SI
0585H:  3E 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SI
058FH:  67 0F BB 74 2D 00                            BTC     SS:[EBP+EBP],SI
0595H:  67 0F BB 34 2C                               BTC     SS:[ESP+EBP],SI
059AH:  67 0F BB 34 DA                               BTC     DS:[EDX+EBX*8],SI
059FH:  67 0F BB 74 4B 01                            BTC     DS:[EBX+ECX*2+01H],SI
05A5H:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SI
05AEH:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI
05B7H:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SI
05C0H:  F0 0F BB 30                                  LOCK BTC     DS:[BX+SI],SI
05C4H:  F0 0F BB 31                                  LOCK BTC     DS:[BX+DI],SI
05C8H:  F0 0F BB 32                                  LOCK BTC     SS:[BP+SI],SI
05CCH:  F0 0F BB 33                                  LOCK BTC     SS:[BP+DI],SI
05D0H:  F0 0F BB 76 00                               LOCK BTC     SS:[BP],SI
05D5H:  F0 0F BB 34                                  LOCK BTC     DS:[SI],SI
05D9H:  F0 0F BB 35                                  LOCK BTC     DS:[DI],SI
05DDH:  F0 0F BB B0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SI
05E3H:  F0 0F BB B1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SI
05E9H:  F0 0F BB B2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SI
05EFH:  F0 0F BB B3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SI
05F5H:  F0 0F BB B6 34 12                            LOCK BTC     SS:[BP+1234H],SI
05FBH:  F0 0F BB B4 34 12                            LOCK BTC     DS:[SI+1234H],SI
0601H:  F0 0F BB B5 34 12                            LOCK BTC     DS:[DI+1234H],SI
0607H:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DI
0610H:  3E 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DI
061AH:  67 0F BB 7C 2D 00                            BTC     SS:[EBP+EBP],DI
0620H:  67 0F BB 3C 2C                               BTC     SS:[ESP+EBP],DI
0625H:  67 0F BB 3C DA                               BTC     DS:[EDX+EBX*8],DI
062AH:  67 0F BB 7C 4B 01                            BTC     DS:[EBX+ECX*2+01H],DI
0630H:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DI
0639H:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI
0642H:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DI
064BH:  F0 0F BB 38                                  LOCK BTC     DS:[BX+SI],DI
064FH:  F0 0F BB 39                                  LOCK BTC     DS:[BX+DI],DI
0653H:  F0 0F BB 3A                                  LOCK BTC     SS:[BP+SI],DI
0657H:  F0 0F BB 3B                                  LOCK BTC     SS:[BP+DI],DI
065BH:  F0 0F BB 7E 00                               LOCK BTC     SS:[BP],DI
0660H:  F0 0F BB 3C                                  LOCK BTC     DS:[SI],DI
0664H:  F0 0F BB 3D                                  LOCK BTC     DS:[DI],DI
0668H:  F0 0F BB B8 34 12                            LOCK BTC     DS:[BX+SI+1234H],DI
066EH:  F0 0F BB B9 34 12                            LOCK BTC     DS:[BX+DI+1234H],DI
0674H:  F0 0F BB BA 34 12                            LOCK BTC     SS:[BP+SI+1234H],DI
067AH:  F0 0F BB BB 34 12                            LOCK BTC     SS:[BP+DI+1234H],DI
0680H:  F0 0F BB BE 34 12                            LOCK BTC     SS:[BP+1234H],DI
0686H:  F0 0F BB BC 34 12                            LOCK BTC     DS:[SI+1234H],DI
068CH:  F0 0F BB BD 34 12                            LOCK BTC     DS:[DI+1234H],DI
0692H:  66 0F BB C0                                  BTC     EAX,EAX
0696H:  66 0F BB C1                                  BTC     ECX,EAX
069AH:  66 0F BB C2                                  BTC     EDX,EAX
069EH:  66 0F BB C3                                  BTC     EBX,EAX
06A2H:  66 0F BB C4                                  BTC     ESP,EAX
06A6H:  66 0F BB C5                                  BTC     EBP,EAX
06AAH:  66 0F BB C6                                  BTC     ESI,EAX
06AEH:  66 0F BB C7                                  BTC     EDI,EAX
06B2H:  66 67 0F BB 00                               BTC     DS:[EAX],EAX
06B7H:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX+00001234H],ECX
06C0H:  66 2E 67 0F BB 18                            BTC     CS:[EAX],EBX
06C6H:  66 67 0F BB 10                               BTC     DS:[EAX],EDX
06CBH:  66 26 67 0F BB 20                            BTC     ES:[EAX],ESP
06D1H:  66 36 67 0F BB 28                            BTC     SS:[EAX],EBP
06D7H:  66 64 67 0F BB 30                            BTC     FS:[EAX],ESI
06DDH:  66 65 67 0F BB 38                            BTC     GS:[EAX],EDI
06E3H:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EAX
06EDH:  66 3E 67 0F BB 84 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EAX
06F8H:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP+EBP],EAX
06FFH:  66 67 0F BB 04 2C                            BTC     SS:[ESP+EBP],EAX
0705H:  66 67 0F BB 04 DA                            BTC     DS:[EDX+EBX*8],EAX
070BH:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX+ECX*2+01H],EAX
0712H:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EAX
071CH:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX
0726H:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EAX
0730H:  F0 66 0F BB 00                               LOCK BTC     DS:[BX+SI],EAX
0735H:  F0 66 0F BB 01                               LOCK BTC     DS:[BX+DI],EAX
073AH:  F0 66 0F BB 02                               LOCK BTC     SS:[BP+SI],EAX
073FH:  F0 66 0F BB 03                               LOCK BTC     SS:[BP+DI],EAX
0744H:  F0 66 0F BB 46 00                            LOCK BTC     SS:[BP],EAX
074AH:  F0 66 0F BB 04                               LOCK BTC     DS:[SI],EAX
074FH:  F0 66 0F BB 05                               LOCK BTC     DS:[DI],EAX
0754H:  F0 66 0F BB 80 34 12                         LOCK BTC     DS:[BX+SI+1234H],EAX
075BH:  F0 66 0F BB 81 34 12                         LOCK BTC     DS:[BX+DI+1234H],EAX
0762H:  F0 66 0F BB 82 34 12                         LOCK BTC     SS:[BP+SI+1234H],EAX
0769H:  F0 66 0F BB 83 34 12                         LOCK BTC     SS:[BP+DI+1234H],EAX
0770H:  F0 66 0F BB 86 34 12                         LOCK BTC     SS:[BP+1234H],EAX
0777H:  F0 66 0F BB 84 34 12                         LOCK BTC     DS:[SI+1234H],EAX
077EH:  F0 66 0F BB 85 34 12                         LOCK BTC     DS:[DI+1234H],EAX
0785H:  66 0F BA F8 01                               BTC     EAX,01H
078AH:  66 0F BB C8                                  BTC     EAX,ECX
078EH:  66 0F BB C9                                  BTC     ECX,ECX
0792H:  66 0F BB CA                                  BTC     EDX,ECX
0796H:  66 0F BB CB                                  BTC     EBX,ECX
079AH:  66 0F BB CC                                  BTC     ESP,ECX
079EH:  66 0F BB CD                                  BTC     EBP,ECX
07A2H:  66 0F BB CE                                  BTC     ESI,ECX
07A6H:  66 0F BB CF                                  BTC     EDI,ECX
07AAH:  66 67 0F BB 01                               BTC     DS:[ECX],EAX
07AFH:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX+00001234H],ECX
07B8H:  66 2E 67 0F BB 19                            BTC     CS:[ECX],EBX
07BEH:  66 67 0F BB 11                               BTC     DS:[ECX],EDX
07C3H:  66 26 67 0F BB 21                            BTC     ES:[ECX],ESP
07C9H:  66 36 67 0F BB 29                            BTC     SS:[ECX],EBP
07CFH:  66 64 67 0F BB 31                            BTC     FS:[ECX],ESI
07D5H:  66 65 67 0F BB 39                            BTC     GS:[ECX],EDI
07DBH:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ECX
07E5H:  66 3E 67 0F BB 8C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ECX
07F0H:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP+EBP],ECX
07F7H:  66 67 0F BB 0C 2C                            BTC     SS:[ESP+EBP],ECX
07FDH:  66 67 0F BB 0C DA                            BTC     DS:[EDX+EBX*8],ECX
0803H:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX+ECX*2+01H],ECX
080AH:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ECX
0814H:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX
081EH:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ECX
0828H:  F0 66 0F BB 08                               LOCK BTC     DS:[BX+SI],ECX
082DH:  F0 66 0F BB 09                               LOCK BTC     DS:[BX+DI],ECX
0832H:  F0 66 0F BB 0A                               LOCK BTC     SS:[BP+SI],ECX
0837H:  F0 66 0F BB 0B                               LOCK BTC     SS:[BP+DI],ECX
083CH:  F0 66 0F BB 4E 00                            LOCK BTC     SS:[BP],ECX
0842H:  F0 66 0F BB 0C                               LOCK BTC     DS:[SI],ECX
0847H:  F0 66 0F BB 0D                               LOCK BTC     DS:[DI],ECX
084CH:  F0 66 0F BB 88 34 12                         LOCK BTC     DS:[BX+SI+1234H],ECX
0853H:  F0 66 0F BB 89 34 12                         LOCK BTC     DS:[BX+DI+1234H],ECX
085AH:  F0 66 0F BB 8A 34 12                         LOCK BTC     SS:[BP+SI+1234H],ECX
0861H:  F0 66 0F BB 8B 34 12                         LOCK BTC     SS:[BP+DI+1234H],ECX
0868H:  F0 66 0F BB 8E 34 12                         LOCK BTC     SS:[BP+1234H],ECX
086FH:  F0 66 0F BB 8C 34 12                         LOCK BTC     DS:[SI+1234H],ECX
0876H:  F0 66 0F BB 8D 34 12                         LOCK BTC     DS:[DI+1234H],ECX
087DH:  66 0F BA F9 01                               BTC     ECX,01H
0882H:  66 0F BB D0                                  BTC     EAX,EDX
0886H:  66 0F BB D1                                  BTC     ECX,EDX
088AH:  66 0F BB D2                                  BTC     EDX,EDX
088EH:  66 0F BB D3                                  BTC     EBX,EDX
0892H:  66 0F BB D4                                  BTC     ESP,EDX
0896H:  66 0F BB D5                                  BTC     EBP,EDX
089AH:  66 0F BB D6                                  BTC     ESI,EDX
089EH:  66 0F BB D7                                  BTC     EDI,EDX
08A2H:  66 67 0F BB 02                               BTC     DS:[EDX],EAX
08A7H:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX+00001234H],ECX
08B0H:  66 2E 67 0F BB 1A                            BTC     CS:[EDX],EBX
08B6H:  66 67 0F BB 12                               BTC     DS:[EDX],EDX
08BBH:  66 26 67 0F BB 22                            BTC     ES:[EDX],ESP
08C1H:  66 36 67 0F BB 2A                            BTC     SS:[EDX],EBP
08C7H:  66 64 67 0F BB 32                            BTC     FS:[EDX],ESI
08CDH:  66 65 67 0F BB 3A                            BTC     GS:[EDX],EDI
08D3H:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDX
08DDH:  66 3E 67 0F BB 94 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDX
08E8H:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP+EBP],EDX
08EFH:  66 67 0F BB 14 2C                            BTC     SS:[ESP+EBP],EDX
08F5H:  66 67 0F BB 14 DA                            BTC     DS:[EDX+EBX*8],EDX
08FBH:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDX
0902H:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDX
090CH:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX
0916H:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDX
0920H:  F0 66 0F BB 10                               LOCK BTC     DS:[BX+SI],EDX
0925H:  F0 66 0F BB 11                               LOCK BTC     DS:[BX+DI],EDX
092AH:  F0 66 0F BB 12                               LOCK BTC     SS:[BP+SI],EDX
092FH:  F0 66 0F BB 13                               LOCK BTC     SS:[BP+DI],EDX
0934H:  F0 66 0F BB 56 00                            LOCK BTC     SS:[BP],EDX
093AH:  F0 66 0F BB 14                               LOCK BTC     DS:[SI],EDX
093FH:  F0 66 0F BB 15                               LOCK BTC     DS:[DI],EDX
0944H:  F0 66 0F BB 90 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDX
094BH:  F0 66 0F BB 91 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDX
0952H:  F0 66 0F BB 92 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDX
0959H:  F0 66 0F BB 93 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDX
0960H:  F0 66 0F BB 96 34 12                         LOCK BTC     SS:[BP+1234H],EDX
0967H:  F0 66 0F BB 94 34 12                         LOCK BTC     DS:[SI+1234H],EDX
096EH:  F0 66 0F BB 95 34 12                         LOCK BTC     DS:[DI+1234H],EDX
0975H:  66 0F BA FA 01                               BTC     EDX,01H
097AH:  66 0F BB D8                                  BTC     EAX,EBX
097EH:  66 0F BB D9                                  BTC     ECX,EBX
0982H:  66 0F BB DA                                  BTC     EDX,EBX
0986H:  66 0F BB DB                                  BTC     EBX,EBX
098AH:  66 0F BB DC                                  BTC     ESP,EBX
098EH:  66 0F BB DD                                  BTC     EBP,EBX
0992H:  66 0F BB DE                                  BTC     ESI,EBX
0996H:  66 0F BB DF                                  BTC     EDI,EBX
099AH:  66 67 0F BB 03                               BTC     DS:[EBX],EAX
099FH:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX+00001234H],ECX
09A8H:  66 2E 67 0F BB 1B                            BTC     CS:[EBX],EBX
09AEH:  66 67 0F BB 13                               BTC     DS:[EBX],EDX
09B3H:  66 26 67 0F BB 23                            BTC     ES:[EBX],ESP
09B9H:  66 36 67 0F BB 2B                            BTC     SS:[EBX],EBP
09BFH:  66 64 67 0F BB 33                            BTC     FS:[EBX],ESI
09C5H:  66 65 67 0F BB 3B                            BTC     GS:[EBX],EDI
09CBH:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBX
09D5H:  66 3E 67 0F BB 9C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBX
09E0H:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP+EBP],EBX
09E7H:  66 67 0F BB 1C 2C                            BTC     SS:[ESP+EBP],EBX
09EDH:  66 67 0F BB 1C DA                            BTC     DS:[EDX+EBX*8],EBX
09F3H:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBX
09FAH:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBX
0A04H:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX
0A0EH:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBX
0A18H:  F0 66 0F BB 18                               LOCK BTC     DS:[BX+SI],EBX
0A1DH:  F0 66 0F BB 19                               LOCK BTC     DS:[BX+DI],EBX
0A22H:  F0 66 0F BB 1A                               LOCK BTC     SS:[BP+SI],EBX
0A27H:  F0 66 0F BB 1B                               LOCK BTC     SS:[BP+DI],EBX
0A2CH:  F0 66 0F BB 5E 00                            LOCK BTC     SS:[BP],EBX
0A32H:  F0 66 0F BB 1C                               LOCK BTC     DS:[SI],EBX
0A37H:  F0 66 0F BB 1D                               LOCK BTC     DS:[DI],EBX
0A3CH:  F0 66 0F BB 98 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBX
0A43H:  F0 66 0F BB 99 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBX
0A4AH:  F0 66 0F BB 9A 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBX
0A51H:  F0 66 0F BB 9B 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBX
0A58H:  F0 66 0F BB 9E 34 12                         LOCK BTC     SS:[BP+1234H],EBX
0A5FH:  F0 66 0F BB 9C 34 12                         LOCK BTC     DS:[SI+1234H],EBX
0A66H:  F0 66 0F BB 9D 34 12                         LOCK BTC     DS:[DI+1234H],EBX
0A6DH:  66 0F BA FB 01                               BTC     EBX,01H
0A72H:  66 0F BB E0                                  BTC     EAX,ESP
0A76H:  66 0F BB E1                                  BTC     ECX,ESP
0A7AH:  66 0F BB E2                                  BTC     EDX,ESP
0A7EH:  66 0F BB E3                                  BTC     EBX,ESP
0A82H:  66 0F BB E4                                  BTC     ESP,ESP
0A86H:  66 0F BB E5                                  BTC     EBP,ESP
0A8AH:  66 0F BB E6                                  BTC     ESI,ESP
0A8EH:  66 0F BB E7                                  BTC     EDI,ESP
0A92H:  66 67 0F BB 04 04                            BTC     SS:[ESP+EAX],EAX
0A98H:  66 67 0F BB 8C 2C 34 12 00 00                BTC     SS:[ESP+EBP+00001234H],ECX
0AA2H:  66 2E 67 0F BB 1C 0C                         BTC     CS:[ESP+ECX],EBX
0AA9H:  66 3E 67 0F BB 14 14                         BTC     DS:[ESP+EDX],EDX
0AB0H:  66 26 67 0F BB 24 24                         BTC     ES:[ESP+ESP],ESP
0AB7H:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ESP
0AC1H:  66 3E 67 0F BB A4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ESP
0ACCH:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP+EBP],ESP
0AD3H:  66 67 0F BB 24 2C                            BTC     SS:[ESP+EBP],ESP
0AD9H:  66 67 0F BB 24 DA                            BTC     DS:[EDX+EBX*8],ESP
0ADFH:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX+ECX*2+01H],ESP
0AE6H:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ESP
0AF0H:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP
0AFAH:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ESP
0B04H:  F0 66 0F BB 20                               LOCK BTC     DS:[BX+SI],ESP
0B09H:  F0 66 0F BB 21                               LOCK BTC     DS:[BX+DI],ESP
0B0EH:  F0 66 0F BB 22                               LOCK BTC     SS:[BP+SI],ESP
0B13H:  F0 66 0F BB 23                               LOCK BTC     SS:[BP+DI],ESP
0B18H:  F0 66 0F BB 66 00                            LOCK BTC     SS:[BP],ESP
0B1EH:  F0 66 0F BB 24                               LOCK BTC     DS:[SI],ESP
0B23H:  F0 66 0F BB 25                               LOCK BTC     DS:[DI],ESP
0B28H:  F0 66 0F BB A0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESP
0B2FH:  F0 66 0F BB A1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESP
0B36H:  F0 66 0F BB A2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESP
0B3DH:  F0 66 0F BB A3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESP
0B44H:  F0 66 0F BB A6 34 12                         LOCK BTC     SS:[BP+1234H],ESP
0B4BH:  F0 66 0F BB A4 34 12                         LOCK BTC     DS:[SI+1234H],ESP
0B52H:  F0 66 0F BB A5 34 12                         LOCK BTC     DS:[DI+1234H],ESP
0B59H:  66 0F BA FC 01                               BTC     ESP,01H
0B5EH:  66 0F BB E8                                  BTC     EAX,EBP
0B62H:  66 0F BB E9                                  BTC     ECX,EBP
0B66H:  66 0F BB EA                                  BTC     EDX,EBP
0B6AH:  66 0F BB EB                                  BTC     EBX,EBP
0B6EH:  66 0F BB EC                                  BTC     ESP,EBP
0B72H:  66 0F BB ED                                  BTC     EBP,EBP
0B76H:  66 0F BB EE                                  BTC     ESI,EBP
0B7AH:  66 0F BB EF                                  BTC     EDI,EBP
0B7EH:  66 67 0F BB 45 00                            BTC     SS:[EBP],EAX
0B84H:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP+00001234H],ECX
0B8DH:  66 2E 67 0F BB 5D 00                         BTC     CS:[EBP],EBX
0B94H:  66 3E 67 0F BB 55 00                         BTC     DS:[EBP],EDX
0B9BH:  66 26 67 0F BB 65 00                         BTC     ES:[EBP],ESP
0BA2H:  66 67 0F BB 6D 00                            BTC     SS:[EBP],EBP
0BA8H:  66 64 67 0F BB 75 00                         BTC     FS:[EBP],ESI
0BAFH:  66 65 67 0F BB 7D 00                         BTC     GS:[EBP],EDI
0BB6H:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBP
0BC0H:  66 3E 67 0F BB AC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBP
0BCBH:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP+EBP],EBP
0BD2H:  66 67 0F BB 2C 2C                            BTC     SS:[ESP+EBP],EBP
0BD8H:  66 67 0F BB 2C DA                            BTC     DS:[EDX+EBX*8],EBP
0BDEH:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBP
0BE5H:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBP
0BEFH:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP
0BF9H:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBP
0C03H:  F0 66 0F BB 28                               LOCK BTC     DS:[BX+SI],EBP
0C08H:  F0 66 0F BB 29                               LOCK BTC     DS:[BX+DI],EBP
0C0DH:  F0 66 0F BB 2A                               LOCK BTC     SS:[BP+SI],EBP
0C12H:  F0 66 0F BB 2B                               LOCK BTC     SS:[BP+DI],EBP
0C17H:  F0 66 0F BB 6E 00                            LOCK BTC     SS:[BP],EBP
0C1DH:  F0 66 0F BB 2C                               LOCK BTC     DS:[SI],EBP
0C22H:  F0 66 0F BB 2D                               LOCK BTC     DS:[DI],EBP
0C27H:  F0 66 0F BB A8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBP
0C2EH:  F0 66 0F BB A9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBP
0C35H:  F0 66 0F BB AA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBP
0C3CH:  F0 66 0F BB AB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBP
0C43H:  F0 66 0F BB AE 34 12                         LOCK BTC     SS:[BP+1234H],EBP
0C4AH:  F0 66 0F BB AC 34 12                         LOCK BTC     DS:[SI+1234H],EBP
0C51H:  F0 66 0F BB AD 34 12                         LOCK BTC     DS:[DI+1234H],EBP
0C58H:  66 0F BA FD 01                               BTC     EBP,01H
0C5DH:  66 0F BB F0                                  BTC     EAX,ESI
0C61H:  66 0F BB F1                                  BTC     ECX,ESI
0C65H:  66 0F BB F2                                  BTC     EDX,ESI
0C69H:  66 0F BB F3                                  BTC     EBX,ESI
0C6DH:  66 0F BB F4                                  BTC     ESP,ESI
0C71H:  66 0F BB F5                                  BTC     EBP,ESI
0C75H:  66 0F BB F6                                  BTC     ESI,ESI
0C79H:  66 0F BB F7                                  BTC     EDI,ESI
0C7DH:  66 67 0F BB 06 66 67 0F BB                   BTC     DS:[ESI],EAX
0C86H:  8E 34 12                                     JLE     1EBDH
0C8BH:  00 00 66 2E 67 0F BB 1E 66 67 0F             Unknown instUnknown instBTC     CS:[ESI],EAX
0C94H:  BB 16 66 26                                  BTC     DS:[2666H],DX
0C98H:  67 0F BB 26 66 36 67 0F                      BTC     DS:[ESI],SP
0CA0H:  BB 2E 66 64                                  BTC     DS:[6466H],BP
0CA4H:  67 0F BB 36 66 65 67 0F                      BTC     DS:[ESI],SI
0CACH:  BB 3E 66 67                                  BTC     DS:[6766H],DI
0CB0H:  0F BB B4 40 00                               BTC     DS:[SI+0040H],SI
0CB8H:  01 00 00 66 3E 67 0F BB B4 AB 78 56 34       Unknown instUnknown instUnknown instBTC     DS:[ESP+ESI*4+345678AH√ word ptr $dword ptr $AX$CX$DX$BX$SP$BP$SI$DI$EAX$ECX$EDX$EBX$ESP$EBP$ESI$EDI$ES:$CS:$SS:$DS:$FS:$GS:$BX+SI$BX+DI$BP+SI$BP+DI$SI$DI$BP$BX$syÖãéëî#&),/258;?CGKOSW[_cgkoUnknown inst$AAD$BTC     $JO      $JNO     $JB      $JNB     $JZ      $JNZ     $JBE     $JNBE    $JS      $JNS     $JP      $JNP     $JL      $JNL     $JLE     $JNLE    $JCXZ    $JECXZ   $LOCK $◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊      ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  
              ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  Ò ˙     ' 0 9 B K T ] f o x Ò ˙     ' 0 9 B K T ] f o x ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ËË◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ‰	  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  Å ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ì  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ˇ Õ –¿∞†fgª¨-@0 fª(fª)fª*fª+fªn fª,fª-fª®4fª©4fª™4fª´4fªÆ4fª¨4fª≠4f∫˝fªfªÒfªÚfªÛfªÙfªıfªˆfª˜fgªfgªé4  f.gªfgªf&gª&f6gª.fdgª6fegª>fgª¥@   f>gª¥´xV4fgªt- fgª4,fgª4⁄fgªtKfgª¥ë   fgª¥¿–¿∞†fg  4V4´xË                                                                                                                                                                                                                                    ˇ? ˇ ˇ?, Ë@ Gî VH	ØØ˛ [r˚R‹  ©   .      ©          ©      ù                        8                         `            §                      C    	      K    
      ]          ^          h          m          p          z          Ç                                                           @:ˇˇ   ˇ√             È                                                                                                                                                                            L                         •˛ áÈ Uˇ ÄŒ ÄŒ ÄŒ ‡Ã  p  Ã @Ã ÄŒ ÄŒ  –     †Ã ¿Ã  Ã '√(√`   p  p  p  p Tˇ `  `  •˛ áÈ Uˇ ÄŒ ÄŒ ÄŒ ‡Ã  p Ó  ¿ À @À `œ ÄÀ †À ¿œ ¿À  Õ `Ã ‡À Ÿh Ã X… `  È ¿‡–  — »⁄ ”h/Ã — @— `— Ä— †— @“ `  `  `  /Ã “ Í‡—   `   ƒ`  `  `  `  `  `  `  `  `  `  `  `  `  Äœ `  È ¿`  `  †œ `  `  `  `  Ä“ `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `  `                          `   ƒ`  `  `  `  `  `  `  `   Ã @Ã ÄŒ ÄŒ  –     †Ã ¿Ã                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ~ù~ù   .>&6deÚÛfg     MAXMEM MAXLOW SWAPFILE (No Value)  (Bad Value)  DPMIMEM= DPMI error in DPMIMEM environment variable:  
                                                                                                                                                            Ä»   SQRVWã^å—ã‘åŒøÄÅ« é÷ãÁQRË# ZYé—ã‚=  u	ˇvËsÉƒ=  tË±_^ZY[…ÀSQR© ux.°∂Î$h[ Ë(ÉƒÎ
$hi ËÉƒÎErgo DPMI (286) version $hw ËıÉƒPËÉƒÎrunning -- built at $h£ ËÕÉƒå»éÿ∫∏¥	Õ!.ˇ6Ä¥bÕ!.â~.åàåY.°é=  tÉ@.£ .°å.£  Ë˙ZY[√ ƒ  Ó√ú=  t{= t= t= tAù.ˇ.ùú.ˇ.âÉ√œ.É> t‚QSRVW.ˇ.ã˙&â&â]&âu_^Z[YÎø.É> t∑QSRVW.ã˙&ã&ã]&ãu.ˇ_^Z[YÎî`∏$ ∑ú.ˇÄˇ	uÄ˚rÄ˚wa∏ˇˇùœaÈoˇM 9.01 —  “       úÄ¸Lu"PS.ˇ6Ä¥QÕ!.;~t[XÎ	[èÏùÎzù.ˇ.æË¯ ZY[XÎ 
$hË~ÉƒÎDPMI: Unexpected error $hËZÉƒPËfÉƒÎat $h>ËCÉƒQËOÉƒRËHÉƒÎ 
$h\Ë%Éƒ¥LÕ!ËÑ °Ï¥LÕ!Ëz ZY[XÎUnhandled exception $hÅËÔÉƒPË˚ÉƒÎat $h©ËÿÉƒSË‰ÉƒQË›ÉƒÎ	ErrCode $h«ËµÉƒRË¡ÉƒÎ 
$h„ËûÉƒ¥LÕ!PSQR˙.éÄÉ>Ë t	ˇËtÈå ˜	 t˜	 tË∫
Îf3¿#¯.˜z t¥D∞ ª  ã¢Õg.˜z  tËA.˜z tË¸ .˜z tË,.˜z@ tË¥ ˜	 t
hÑËÉƒ.˜z tË ˜@ t.ˇ  ˚ZY[X√¥Eã¢Õg√»   SéF.ãÜ+^C¥JÕ!s∏@Î∏  […√=át=Üt.ˇ.¬∏ œ.éÄ3€äÄ˘~ÉÀ∂ ≤ZæÅøP3¿œ»   PRãVÉ˙ t¥ˇ,¥
ˇ,ZX…√ˇ60Ë€ˇÉƒˇ62Ë—ˇÉƒˇ64Ë«ˇÉƒˇ66ËΩˇÉƒ.É&zø√ PÉ&	˚∏@ éÿ.†T¢ X√Ä¸àu.° œ.ˇ.∆  K¸¡ùª	~ù~ù»   RP≈V¥	Õ!XZ…√»   PãF¡¿Ë ¡¿Ë ¡¿Ë ¡¿Ë ∞ Ë X…√P$<	0Î,
AË X√PRä–¥Õ!ZX√.éÄú˙èEÅ&EˇøèI˜	 t,f£Afâ5fâ=fâ9fâ6)fâ>%fâ.-å&Kå.MÎ£Aâ5â=â9â6)â>%â.-åG√Ëìˇå[.åäåY.åàËé.«| ˇË© tÎEèOèQåUâ&S.éà.ã&|ˇ6Íâ&Í¥QÕ!âGh^ È™éUã&Sˇ6Qˇ6Oˇ6EùË3˝˘éIÀ    ˜	 t,fã>%fã6)fã.-fã5fã9fã=f°Aé&Ké.MÎã>%ã6)ã.-ã5ã9ã=°AéG.â&|éUã&SÅ>W !u	É>ALuÎ]Ä>W u!SPª  é√äX∑ ¡„&ã£O&ãG£QX[Ä>Wtˇ6EhÖˇ6Yˇ6Qˇ6OéIœË^˛å—.éà.ã&|hËÈ∫∏ QÕ!é€∏  é¿&ˇ6X &ˇ6Z &ˇ6\ &ˇ6^ &ˇ6` &ˇ6b «
 Ìå .å».â& ÉÏPé &â&. &å0 ¥LÕ!.é».ã& ∏  é¿&èb &è` &è^ &è\ &èZ &èX Èhˇ          j ÎHjÎDjÎ@jÎ<jÎ8jÎ4jÎ0jÎ,jÎ(j	Î$j
Î jÎjÎjÎjÎjÎjÎjÎjÎ ˙.è!úS.éÄ.ã!Äøˆt¡„ˇ∑	.è#ˇ∑.è%[ù.ˇ.#[ù.éÄ˜	 t	f`†®Î`Ë˝å”ãÃ.éà.ã&|SQ.°!£]hc9Èn˙.è.èãƒ.£|.é.ã&˜	 t©°f_f^f]fÉƒf[fZfYfXÎaœœUãÏ`.éÄ£îãF £ñâ6òâ>ö.éÄøzå–éÿã˝É≈π ¸Û•å—ã‘.éà.ã&|QRh¶8È„ ZY.â&|é—ã‚a].éÄ°í<u∞œ`ú˙æU3¿é¿ã¯π ˜@ t
&ˇ6º &ˇ6æ ¸Û•˜@ t
&èæ &èº .Å&zˇÔùa√»   WRPƒ~ãFãV
&âE&àU&àuXZ_…√PR.°àã–¡‡¡ÍRPh Ë∆ˇÉƒZX√¥AÕg
‰t3€â¶Ö€t)æ®ø ¥AÕgãÀ¡È∏ﬁÕgÅ‚ É fâÉ∆É¡ÉÔuÊÀ$~À˙æ  _∫ ã‹∏ò π  Î,˙.éÄ£_âiâaâ6câ>k∏ò ∫ .ã|æ  ø™Î .éÄ˜	 uËh 0ù£âeˆ	u≤∏‡ Íb  fãﬁf°Ñf£ú°£®˜ t°£™Î∏† £™f3¿∏Rf£¨∏  £∞f3ˆåﬁf¡Êf3¿∏úf∏ﬁÕg˙.éÄã&§˙.éÄ.â&|éã&eã.˜! tËàˇ6ˇ6g˜	 t3¿é‡éËééÀ    0 ˇˇQVW.≈6e
.ƒ>i
π ¸Ûß„˘Î¯_^Y√.˜z tË ÎËû .É&zﬂ√Q.É>O	ˇtIËªˇrD.ˇO	πˇˇËÆˇr7‚˘ÎCannot enable A20$h≈
ËÆ˘ÉƒÎ 
$h„
Ëû˘ÉƒË¯¥LÕ!Y√P∞¥ﬂËê ¯X√P∞ ¥ﬂËÖ ¯X√P‰íÎ Êí¯X√P∞ ÊÚ¯X√PS¥ˇ,ˆ√Äu= u¯Î˘[X√Q.É>Q	ˇt.ˇQ	r
πˇˇËˇs‚˘Y√P∞ ¥›Ë1 ¯X√P∞¥›Ë& ¯X√P‰íÎ $˝Êí¯X√PX√PS¥ˇ,Ä˚Äs¯Î˘[X√PSãÿË) u$Î Î ∞—ÊdË uÎ äƒÊ`Ë uÄ˚u∞ˇÊdË [X√Qπˇˇ‰d®‡˙Y√SãË [√Pä«Ê!Î ä√Ê°Î X√ÊRÎ È6˛ú˙Ë˚ êêêú˙ËÛ êêêú˙ËÎ êêêú˙Ë„ êêêú˙Ë€ êêêú˙Ë” êêêú˙ËÀ êêêú˙Ë√ êêêú˙Ëª êêêú˙Ë≥ êêêú˙Ë´ êêêú˙Ë£ êêêú˙Ëõ êêêú˙Ëì êêêú˙Ëã êêêú˙ËÉ êêêú˙Ë{ êêêú˙Ës êêêú˙Ëk êêêú˙Ëc êêêú˙Ë[ êêêú˙ËS êêêú˙ËK êêêú˙ËC êêêú˙Ë; êêêú˙Ë3 êêêú˙Ë+ êêêú˙Ë# êêêú˙Ë êêêú˙Ë êêêú˙Ë êêêú˙Ë êêêUãÏá^ÅÎÛ¡Î.éÄâ]â>%â6)£Aâ=â9åGèIè-è5èEÅ&EˇøåUâ&S«Q  «O  .éà.ã&|˜	 tf`h@ÈÙ˚˜	 tf_f^f]fÉƒf[fZfYfXã>%ã6)ã.-ã5ã9ã=°AéG.â&|éUã&Sˇ6Eˇ6Qˇ6OéIœUãÏWWƒ~∏ﬁÕg__]√UãÏWWƒ~∏	ﬁÕg__]√»   çF‡PËŒˇÉƒ«F˛  «F¸  çF‡PËÃˇÉƒ…√UãÏãFFt	fãV∏ﬁÕg]√UãÏV3ˆÎXã∆¡‡ƒ^ÿ&ãG&ãÉ‚%  –t<ã∆¡‡ƒ^ÿ&ãG&ãÅ‚ %  –t ã∆¡‡ƒ^ÿ&ãG&ãÅ‚ %ˇˇPRËéˇÉƒFÅ˛ |¢^]√UãÏ¥DäFã^ãVÕg]√»
  V¥AÕgâ^˙ãF˙âF¯«Fˆ  ƒ^&É t\«F˛ Î8j ãF˛ª ô˜˚Pƒ^&ˇwË∞ˇÉƒãF˛% ¡‡âF¸ãFˆF¸ˇv¯PË+ˇÉƒˇF˛ƒ^&ãG
;F˛ºƒ^&ãGâF˛¥EãV˛Õgƒ^&É tSƒ^&ãGˇ % ˇãƒ^&É uÅ∆ Îƒ^&ˇwj Ë”˛Éƒƒ^&Åo ƒ^&9wsﬂƒ^&ãGâF˛éF˛¥IÕ!^…√                               Z  Bñ   TLINK   COMSPEC=Z:\COMMAND.COM PROMPT=$P$G BLASTER=A220 I7 D1 H5 P330 T6 PATH=Z:\;Z:\SYSTEM;Z:\BIN;Z:\DOS;Z:\4DOS;Z:\DEBUG;Z:\TEXTUTIL;E:\BIN   E:\BIN\RTM.EXE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ‡+¿+  ˇˇ  ” ∞å    –ò ˝X˛ –˛     0f)∞å      ˛ XXV  ˇ  ˇ˝   PøX  ˇ!% —  Ã√rÄ √ √Fr¸  √√  âh¸v [¸( v [TS   Z  (P             $*$*$*  DPMI Server 2P17:53:20 on 07/18/94
$ »  PSR∏ CÕ/<Äu∏CÕ/â^¸åF˛¥ ˇ^¸¥ˇ^¸Z[X…√‡© tË› ˜	 u∏@ÎuË)Ë_Ë• Ö¿uhË¨ˇËYËË°M  ™∏RTM     Õ ˇü ö˛hkø(√KˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇØ Ë~ù  
ˇˇˇˇ                   Õ!À          T               COM                 /t com                                                                                                                       ó »
0123456789ABCDEFSãÿÉ„I„—Í—ÿ—Í—ÿ—Í—ÿ—Í—ÿË‰ˇ.äó ∏ Õ![√PQRπ ËœˇZYX√PQRπ Ë¬ˇZYX√PQRπ ËµˇZYX√„	PQRË©ˇZYX√∏»
éÿ∏pª é–ã„â&  &° é¿&; tÈî úÎ{RTM loader version 1.5 Copyright (c) 1990-94 Borland International
This loader is invoked and required by Borland tools
$PR∫ñ ∏ 	Õ!ZXù∏ LÕ!&Å> 16tÈ`ˇ&Å>STtÈTˇ&Å>UBtÈHˇ.å å å å å ª9'+ ∏ JÕ!Ë\s∞%Èuå
 å å å åÀ∏
 Õ1£ é &å  π9'ÅÈ±ãŸ¡Î¡·∏Õ1s∏ È4â  â â> â6 ∏  π Õ1s∏ È£  £  £  £" ∏	 ã À¡ÈÉ…
Õ1∏ ã ã  ã Õ1ã Õ1∫ˇÅÍ±ã ¡È¡‚∏ ã    Õ1∏ ã ∫ˇÅÍ±Bã ¡È¡‚ÉÍÉŸ Õ1ã Õ1∏ ã ∫9'ÅÍˇBã ¡È¡‚ÉÍÉŸ Õ1∏ ã ∫pÅÍ»
Bã ¡È¡‚ÉÍÉŸ Õ1ËT é π æ ø(¸Û•ËCª±+ ∏ JÕ!Ë`h“ˇ6 h ˇ6 À=  uËËj∫±+ ∏ 1Õ!∞ ¥LÕ!∏ ã" ∫ˇˇπ  Õ1∫±ã ¡È¡‚∏ ã" Õ1πˇÅÈ±¡·¸é é" 3ˆ3ˇÛ•∫ˇã ¡È¡‚∏ ã" Õ1π9'ÅÈˇ¡·é é" 3ˆ3ˇÛ•√0123456789ABCDEFSãÿÉ„I„—Í—ÿ—Í—ÿ—Í—ÿ—Í—ÿË‰ˇ.äóa∏ Õ![√PQRπ ËœˇZYX√PQRπ Ë¬ˇZYX√PQRπ ËµˇZYX√„	PQRË©ˇZYX√∏áÕ/=  tÈÉ åv â>t Öˆt@SQR∏+πED∫QSÕ!<ˇtÅ∆ˇÅÊˇ˝∏ XÕ!Pª ∏XÕ!ãﬁ∏ HÕ![úP∏XÕ!XùZY[r;é¿3¿ˇt r3∏Õ1âz âx â6~ â>| ∏Õ1£Ä âÑ âÇ â6à â>Ü ¯√˘√˘√˘√WPã>ä∏  ˇÜ °Ä äX_ÀWPã>å∏  ˇÇ °Ä åX_ÀWPã>äÅˇä t°Ä )ä+¯∏ ˇÜ X_ÀWPã>åÅˇät°Ä )å+¯∏ ˇÇ X_ÀUãÏ.é  Ëxˇ£éâêâíâîâ>ñâ6òãF £öãF£úãF£ûãFãN
ãVã^æ
ø)ˇ.| PPUãÏP∏»
éÿËÇˇ°éâF¸ãêãíãîã>ñã6ò°öâF °úâF°ûâFX]ÀUãÏh»
Ë	ˇ£éâêâíâîâ>ñâ6òãF £öãF£úãF£ûãFãN
ãVã^ã6 ø¥ˇ.x PPUãÏP.é  Ë‘˛°éâF¸ãêãíãîã>ñã6ò°öâF °úâF°ûâFX]ÀPãƒˇ6 hˇ6 ˇ6 ˇ6 PËœ˛X√∏  ø$ ˇÜ √Pãƒˇ6 h;ˇ6 ˇ6
 ˇ6 PË.ˇX√VWPQRSËó˛VWPQRSËˇÀ=t=B˚uÈÈ Í–√˜¬ uıRP∫~∏ 	Õ!XZπ œYou have attempted to run Windows in enhanced mode while
running in a shell under a protected mode program.  This
is not a compatible configuration.  Run Windows in standard
mode instead (win /S).
$UãÏP∏»
éÿXÅ˚uª  Î{Å˚tÅ˚tr]È˛SQWVå–ãÃªpé”ã&  PQÉ.  Ëï˛é &ˇÙ"&« # hØˇ6 hìˇ6 Àé &« #  &ˇÙ"PRË-˛ZXÉ  Y[é”ã·^_Y[]œå–ã‹ãNãVãÏøpé◊ã&  RQÉÎSPËq Ë"˛X[YZhˇ6 hñ
ˇ6 Àã ∏ Õ1ã Õ1ã Õ1É√Õ1É√Õ1ã> ã6 ∏Õ1∏ LÕ!∏ 5/ Õ!.åb.â`∫R∏ %/ Õ!√.éb.ã`∏ %/ Õ!√0123456789ABCDEFSãÿÉ„I„—Í—ÿ—Í—ÿ—Í—ÿ—Í—ÿË‰ˇ.äóÅ∏ Õ![√PQRπ ËœˇZYX√PQRπ Ë¬ˇZYX√PQRπ ËµˇZYX√„	PQRË©ˇZYX√»   WV∏»
éÿå—ã‘ãFˇ6 h	ˇ6 ˇ6 ˇ6 hv
ËP¸QR«t	  ã–¡Í¡‡RPht	h;	ˇ6 hDŸÀZYˇ6 hW	ˇ6 ˇ6 ˇ6 hv
Ëá˚é—ã‚ãt	ãF“u3¿^_…  UãÏPSQRWV∏»
éÿj Ëfˇ“teâ†ã>r	å–âãFâEãFâEãF˛âEãF¸âEˇv˛j Ë5ˇâ¢ˇv¸j Ë(ˇâ§ãF£®ãF£¶Ér	
«FÅ
å»âF^_ZY[X]  «F˙  «FÙ  ÎË.é  Pãƒˇ6 h
ˇ6 ˇ6§ˇ6†PË√˙Xh-
ˇ6¶ˇ6®é¢ÀPPUãÏPSQRWV∏»
éÿÉ.r	
ã>r	ãƒˇ6 h_
ˇ6 ˇuˇ5PË
˚ãEâFãEâFãEâF˛ãEâF¸^_ZY[X]Àh»
Pãƒˇ6 h†
ˇ6 ˇ6§ˇ6†PË…˙Xh≤
ˇ6¶ˇ6®é¢ÀPPUãÏPSQRWV.é  É.r	
ã>r	ãƒˇ6 h‰
ˇ6 ˇuˇ5PË˙˘ãEâFãEâFãEâF˛ãEâF¸^_ZY[X]À          ∞¥ ˘   
ß è ó ü Ô ˜ 
»
pÁ ˇ                                                                                  P√f	√   S	√                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ä äÙ¥ –p4	¬ è ;                                                                                                                                                                                                                  ™                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Ω˜ ˙™˙™ƒ…ñ  Á  Ô \ ü\  ∑ F0˙ø  ˜ @ ß˜  &#˜ Ä≥Ï]∫ü`∫ ˜ ?  ?  Ç0  Ã0F0 Ãø  ∑ F08ø   ß ' ß PØ!◊?  
  ,  Pß0œ   Ø!Pl    B6ß  ∑ F2Ñ ∑ F2pûØ P◊˜ Ã ! Ô 0Kˆ#oÔ ß ~˜bÔ ÷÷~ ∑  ∑ F0æø   ß '÷÷¢W|÷: ÷˛:
¶úÅ÷÷∞ P÷F0  º/÷        »6ß œ   p4	¬ ⁄ΩÔ 0ì¥Íœ   ˘   ¬ Úø Løó Ã ! Hè 0                M  +ÇEUãRTM       '√Ÿh≥ æP∏≤éÿ«   XœP∏≤éÿ«   Xœ ∏ @Õ!ZY[X∞%È» ËÊsPSQRπ  ∫N ª ∏ @Õ!ZY[X∞%È® ≥ ∏Ë8° éÿâ"â"≥ å…∫"∏Ë≥∏Ë° éÿâ˙!â¯!≥å…∫È!∏Ë¯≥∏Ë° éÿâ6"â4"≥å…∫%"∏Ë‘≥∏ËÃ° éÿâ‹!â⁄!≥å…∫À!∏Ë∞ËI?Ö¿tÎË[0Ë`Ëˇ	Ë	3¿À¢  ÀWV.ã  é &ã< &ã>^ &Ä=›t &Ä}u&ãuÄ<ÕtÄ<UtÄ<Et∆∏â\É«‚’^_√UãÏÉÏâ â ∏ Ë;£ ∏
 åÀË0s∞ÈÂ £ å åÚ"å	 åŸéÿâ  éŸå Ëñ'∏ﬁ9- 9≤ˆÚã»âN¸∏  ËÙs∞È© âF˛å€∏ Ë‚âV¯âN˙æ 9éF˛ã-ˇ¡‡ãV¯ãN˙–É— ∏ å√Ëª3…ãT∏ Ë∞∞_π	 øä ¸ÚÆ&∆Eˇ πO øì ÚÆ&∆Eˇ ° &£P &ã &ã>T Væ(&ã]ã&â]É« ‚Ò^Ë'ÉƒË–˛° F˛åÉ∆ˇN¸É~¸ tÈtˇËóP∏  ¯Î˘…√≥1∏Ë9° éÿâÎâÈ≥1å…∫Ì∏Ë√«•  Ë—êË=<Ö¿tã–È&«´   ∏  π Ëˆs∫ Èãÿ∏ 3…∫ˇˇË· ∏ 3…∫ˇˇË“+ é≠ &ã, 3…—‚———‚———‚———‚——∏ Ë≠&â,  ãß 3…—‚———‚———‚———‚——∏ Ëà+ â´ ËØ πˇˇËqsÈì Ë≠sÈã ËN+sÈÉ £° Ë‹ r{°´ &£@  &£B &° É„˚Ëÿ£≥ ËÜ Ë,éÿ&â&H PS∏ /Õ!å¿&â &£
 [X˙é–ã„˚«•   « #  ˇ6≠ Ë3.Éƒ°≥ P&° P°≠ éÿå¡é¿Ω  ∏C˚ª  Õ/êÀ.é  Ë «•   3¿Àé≠ &é, 3ˆã¿tFÎ˜É∆√&° Ö¿u
&°J &ãF √PÉ„˚Ë3£µ X&ã €uVËE&ã\^É„˛°µ √£° ãÿπ@ ∫ß∏ ?Õ!rIËrCËTr>ËT'r9Ë‚r4Ëù'r/Ëhr*Ë‰$Éƒr!Ë$ rËrËf(rË\'rËUrË*rË¬	√∫" ˘√Ëºs√Ë•Ëë°° &£d °£ &£f °∞&&£< °¥&&£8 °∂&&£: °≠ &£P °ß &£D °© &£F °´ &£J &∆M  &∆L  &∆O ∏ &£^ º&&£` ¿&&£T &«à   ¸π Wøh 3¿Û´_¯√°° &£d °≠ &£P °ß &£D °© &£F °´ &£J &∆M  &∆L  &∆O ¸π Wøh 3¿Û´_√SãÂã„âØ â± ∏ BÕ![r#π@ ∫∑ ∏ ?Õ!r=@ uÅ>∑ NEu	É>”  t¯√∫# ˘√»  çF˛j j jj j PêË‘¡ã–=  uéF˛¯…√˘…√Ë â£ QêË§Àã–=  u¯√˘√PSR∏ º&¿&ãÿÉ√É„+ÿ°¿&√£¿&°” ª  ˆ„ã± € ã„ + Å¡ »+Ω º&¿&Z[X√æÛ#øä ãˇ#Ú§&∆ √æ†#øì ãÒ#Ú§&∆ √æ∑ +ˇπ@ —ÈÛ•&˜   t∫# ˘È˛&˜  Äu&É>  u∫# ˘√¯√É>”  tA&ãd ãØ ã± &" …∏ BÕ!r°” ª ˆ„= ã»&ãd ∫ß∏ ?Õ!r√+¿∫" ˘√∫# ˘√∫! ˘√«´! VWQS&ã6T øß&ã QË: Yr.ˇ´!É«É∆ ‚Ì&° ª  ˆ„&+6T ;∆u&6T &â6V ¯[Y_^√˘Î¯∫! ˘ÎÚã&âD
ãE&âDãE© t	%Ôˇ%ˇÔ@ © t © u@ &âãM°´!&; u9&â> &˜  Ät	&«   Î&Å>  s&«  „& r& s3…&âL&àD&åD¯√&ã>V Ë£r,&â>X ËÂr"Ë¿r&â>Z Ë#r&â>\ Ëfr	&;>f u	¯√3¿∫" ˘√∫],ESI
0CC3H:  12 66 67 0F BB 74 2D 00 66 67                Unknown instBTC     SS:[ESP+ESI*2+6766002DH],ESI
0CCCH:  0F BB 34                                     BTC     DS:[SI],SI
0CD0H:  2C 66 67 0F BB 34                            Unknown instBTC     SS:[ESP+ESI],ESI
0CD6H:  DA 66 67 0F BB 74                            Unknown instBTC     SS:[ESP+ESI*2],ESI
0CDDH:  4B 01 66 67 0F BB B4                         Unknown instUnknown instBTC     SS:[ESP+ESI*4],ESI
0CE7H:  91 00 01 00 00 66 67 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instBTC  #SS:[ESP+ESI*4],ESI
0CF1H:  C0 D0 C0 B0 A0 66 67 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instBTC  #SS:[ESP+ESI*4],ESI
0CFBH:  2D 40 30 20 10 F0 66 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instLOCK C     DS:[SI],ESI
0D00H:  30 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D05H:  31 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D0AH:  32 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D0FH:  33 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D13H:  76 00                                        JBE     0D15H
0D15H:  F0 66 0F BB 34                               LOCK BTC     DS:[SI],ESI
0D1AH:  F0 66 0F BB 35                               LOCK BTC     DS:[DI],ESI
0D1FH:  F0 66 0F BB B0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESI
0D26H:  F0 66 0F BB B1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESI
0D2DH:  F0 66 0F BB B2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESI
0D34H:  F0 66 0F BB B3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESI
0D3BH:  F0 66 0F BB B6 34 12                         LOCK BTC     SS:[BP+1234H],ESI
0D42H:  F0 66 0F BB B4 34 12                         LOCK BTC     DS:[SI+1234H],ESI
0D49H:  F0 66 0F BB B5 34 12                         LOCK BTC     DS:[DI+1234H],ESI
0D50H:  66 0F BA FE 01                               BTC     ESI,01H
0D55H:  66 0F BB F8                                  BTC     EAX,EDI
0D59H:  66 0F BB F9                                  BTC     ECX,EDI
0D5DH:  66 0F BB FA                                  BTC     EDX,EDI
0D61H:  66 0F BB FB                                  BTC     EBX,EDI
0D65H:  66 0F BB FC                                  BTC     ESP,EDI
0D69H:  66 0F BB FD                                  BTC     EBP,EDI
0D6DH:  66 0F BB FE                                  BTC     ESI,EDI
0D71H:  66 0F BB FF                                  BTC     EDI,EDI
0D75H:  66 67 0F BB 07                               BTC     DS:[EDI],EAX
0D7AH:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI+00001234H],ECX
0D83H:  66 2E 67 0F BB 1F                            BTC     CS:[EDI],EBX
0D89H:  66 67 0F BB 17                               BTC     DS:[EDI],EDX
0D8EH:  66 26 67 0F BB 27                            BTC     ES:[EDI],ESP
0D94H:  66 36 67 0F BB 2F                            BTC     SS:[EDI],EBP
0D9AH:  66 64 67 0F BB 37                            BTC     FS:[EDI],ESI
0DA0H:  66 65 67 0F BB 3F                            BTC     GS:[EDI],EDI
0DA6H:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDI
0DB0H:  66 3E 67 0F BB BC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDI
0DBBH:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP+EBP],EDI
0DC2H:  66 67 0F BB 3C 2C                            BTC     SS:[ESP+EBP],EDI
0DC8H:  66 67 0F BB 3C DA                            BTC     DS:[EDX+EBX*8],EDI
0DCEH:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDI
0DD5H:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDI
0DDFH:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI
0DE9H:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDI
0DF3H:  F0 64 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC         DS:[SI],ESI

 FS:[EBX+EBP+0FFEEDDCCH],0A0H
0DFFH:  F0 66 0F BB 38                               LOCK BTC     DS:[BX+SI],EDI
0E04H:  F0 66 0F BB 39                               LOCK BTC     DS:[BX+DI],EDI
0E09H:  F0 66 0F BB 3A                               LOCK BTC     SS:[BP+SI],EDI
0E0EH:  F0 66 0F BB 3B                               LOCK BTC     SS:[BP+DI],EDI
0E13H:  F0 66 0F BB 7E 00                            LOCK BTC     SS:[BP],EDI
0E19H:  F0 66 0F BB 3C                               LOCK BTC     DS:[SI],EDI
0E1EH:  F0 66 0F BB 3D                               LOCK BTC     DS:[DI],EDI
0E23H:  F0 66 0F BB B8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDI
0E2AH:  F0 66 0F BB B9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDI
0E31H:  F0 66 0F BB BA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDI
0E38H:  F0 66 0F BB BB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDI
0E3FH:  F0 66 0F BB BE 34 12                         LOCK BTC     SS:[BP+1234H],EDI
0E46H:  F0 66 0F BB BC 34 12                         LOCK BTC     DS:[SI+1234H],EDI
0E4DH:  F0 66 0F BB BD 34 12                         LOCK BTC     DS:[DI+1234H],EDI
0E54H:  66 0F BA FF 01                               BTC     EDI,01H
0E59H:  0F BB C0                                     BTC     AX,AX
0E5CH:  0F BB C1                                     BTC     CX,AX
0E5FH:  0F BB C2                                     BTC     DX,AX
0E62H:  0F BB C3                                     BTC     BX,AX
0E65H:  0F BB C4                                     BTC     SP,AX
0E68H:  0F BB C5                                     BTC     BP,AX
0E6BH:  0F BB C6                                     BTC     SI,AX
0E6EH:  0F BB C7                                     BTC     DI,AX
0E71H:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234H],AX
0E76H:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234H],AX
0E7BH:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234H],AX
0E80H:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234H],AX
0E85H:  0F BB 86 34 12                               BTC     SS:[BP+1234H],AX
0E8AH:  0F BB 84 34 12                               BTC     DS:[SI+1234H],AX
0E8FH:  0F BB 85 34 12                               BTC     DS:[DI+1234H],AX
0E94H:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
0E98H:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
0E9CH:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
0EA0H:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
0EA4H:  2E 0F BB 46 00                               BTC     CS:[BP],AX
0EA9H:  2E 0F BB 04                                  BTC     CS:[SI],AX
0EADH:  2E 0F BB 05                                  BTC     CS:[DI],AX
0EB1H:  0F BB 00                                     BTC     DS:[BX+SI],AX
0EB4H:  0F BB 01                                     BTC     DS:[BX+DI],AX
0EB7H:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
0EBBH:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
0EBFH:  3E 0F BB 46 00                               BTC     DS:[BP],AX
0EC4H:  0F BB 04                                     BTC     DS:[SI],AX
0EC7H:  0F BB 05                                     BTC     DS:[DI],AX
0ECAH:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
0ECEH:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
0ED2H:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
0ED6H:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
0EDAH:  26 0F BB 46 00                               BTC     ES:[BP],AX
0EDFH:  26 0F BB 04                                  BTC     ES:[SI],AX
0EE3H:  26 0F BB 05                                  BTC     ES:[DI],AX
0EE7H:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
0EEBH:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
0EEFH:  0F BB 02                                     BTC     SS:[BP+SI],AX
0EF2H:  0F BB 03                                     BTC     SS:[BP+DI],AX
0EF5H:  0F BB 46 00                                  BTC     SS:[BP],AX
0EF9H:  36 0F BB 04                                  BTC     SS:[SI],AX
0EFDH:  36 0F BB 05                                  BTC     SS:[DI],AX
0F01H:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
0F05H:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
0F09H:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
0F0DH:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
0F11H:  64 0F BB 46 00                               BTC     FS:[BP],AX
0F16H:  64 0F BB 04                                  BTC     FS:[SI],AX
0F1AH:  64 0F BB 05                                  BTC     FS:[DI],AX
0F1EH:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
0F22H:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
0F26H:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
0F2AH:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
0F2EH:  65 0F BB 46 00                               BTC     GS:[BP],AX
0F33H:  65 0F BB 04                                  BTC     GS:[SI],AX
0F37H:  65 0F BB 05                                  BTC     GS:[DI],AX
0F3BH:  0F BA F8 01                                  BTC     AX,01H
0F3FH:  0F BA F8 FF                                  BTC     AX,0FFH
0F43H:  0F BB C8                                     BTC     AX,CX
0F46H:  0F BB C9                                     BTC     CX,CX
0F49H:  0F BB CA                                     BTC     DX,CX
0F4CH:  0F BB CB                                     BTC     BX,CX
0F4FH:  0F BB CC                                     BTC     SP,CX
0F52H:  0F BB CD                                     BTC     BP,CX
0F55H:  0F BB CE                                     BTC     SI,CX
0F58H:  0F BB CF                                     BTC     DI,CX
0F5BH:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234H],CX
0F60H:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234H],CX
0F65H:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234H],CX
0F6AH:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234H],CX
0F6FH:  0F BB 8E 34 12                               BTC     SS:[BP+1234H],CX
0F74H:  0F BB 8C 34 12                               BTC     DS:[SI+1234H],CX
0F79H:  0F BB 8D 34 12                               BTC     DS:[DI+1234H],CX
0F7EH:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
0F82H:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
0F86H:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
0F8AH:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
0F8EH:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
0F93H:  2E 0F BB 0C                                  BTC     CS:[SI],CX
0F97H:  2E 0F BB 0D                                  BTC     CS:[DI],CX
0F9BH:  0F BB 08                                     BTC     DS:[BX+SI],CX
0F9EH:  0F BB 09                                     BTC     DS:[BX+DI],CX
0FA1H:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
0FA5H:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
0FA9H:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
0FAEH:  0F BB 0C                                     BTC     DS:[SI],CX
0FB1H:  0F BB 0D                                     BTC     DS:[DI],CX
0FB4H:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
0FB8H:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
0FBCH:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
0FC0H:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
0FC4H:  26 0F BB 4E 00                               BTC     ES:[BP],CX
0FC9H:  26 0F BB 0C                                  BTC     ES:[SI],CX
0FCDH:  26 0F BB 0D                                  BTC     ES:[DI],CX
0FD1H:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
0FD5H:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
0FD9H:  0F BB 0A                                     BTC     SS:[BP+SI],CX
0FDCH:  0F BB 0B                                     BTC     SS:[BP+DI],CX
0FDFH:  0F BB 4E 00                                  BTC     SS:[BP],CX
0FE3H:  36 0F BB 0C                                  BTC     SS:[SI],CX
0FE7H:  36 0F BB 0D                                  BTC     SS:[DI],CX
0FEBH:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
0FEFH:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
0FF3H:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
0FF7H:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
0FFBH:  64 0F BB 4E 00                               BTC     FS:[BP],CX
1000H:  64 0F BB 0C                                  BTC     FS:[SI],CX
1004H:  64 0F BB 0D                                  BTC     FS:[DI],CX
1008H:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
100CH:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
1010H:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
1014H:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
1018H:  65 0F BB 4E 00                               BTC     GS:[BP],CX
101DH:  65 0F BB 0C                                  BTC     GS:[SI],CX
1021H:  65 0F BB 0D                                  BTC     GS:[DI],CX
1025H:  0F BA F9 01                                  BTC     CX,01H
1029H:  0F BA F9 FF                                  BTC     CX,0FFH
102DH:  0F BB D0                                     BTC     AX,DX
1030H:  0F BB D1                                     BTC     CX,DX
1033H:  0F BB D2                                     BTC     DX,DX
1036H:  0F BB D3                                     BTC     BX,DX
1039H:  0F BB D4                                     BTC     SP,DX
103CH:  0F BB D5                                     BTC     BP,DX
103FH:  0F BB D6                                     BTC     SI,DX
1042H:  0F BB D7                                     BTC     DI,DX
1045H:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234H],DX
104AH:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234H],DX
104FH:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234H],DX
1054H:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234H],DX
1059H:  0F BB 96 34 12                               BTC     SS:[BP+1234H],DX
105EH:  0F BB 94 34 12                               BTC     DS:[SI+1234H],DX
1063H:  0F BB 95 34 12                               BTC     DS:[DI+1234H],DX
1068H:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
106CH:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
1070H:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
1074H:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
1078H:  2E 0F BB 56 00                               BTC     CS:[BP],DX
107DH:  2E 0F BB 14                                  BTC     CS:[SI],DX
1081H:  2E 0F BB 15                                  BTC     CS:[DI],DX
1085H:  0F BB 10                                     BTC     DS:[BX+SI],DX
1088H:  0F BB 11                                     BTC     DS:[BX+DI],DX
108BH:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
108FH:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
1093H:  3E 0F BB 56 00                               BTC     DS:[BP],DX
1098H:  0F BB 14                                     BTC     DS:[SI],DX
109BH:  0F BB 15                                     BTC     DS:[DI],DX
109EH:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
10A2H:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
10A6H:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
10AAH:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
10AEH:  26 0F BB 56 00                               BTC     ES:[BP],DX
10B3H:  26 0F BB 14                                  BTC     ES:[SI],DX
10B7H:  26 0F BB 15                                  BTC     ES:[DI],DX
10BBH:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
10BFH:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
10C3H:  0F BB 12                                     BTC     SS:[BP+SI],DX
10C6H:  0F BB 13                                     BTC     SS:[BP+DI],DX
10C9H:  0F BB 56 00                                  BTC     SS:[BP],DX
10CDH:  36 0F BB 14                                  BTC     SS:[SI],DX
10D1H:  36 0F BB 15                                  BTC     SS:[DI],DX
10D5H:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
10D9H:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
10DDH:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
10E1H:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
10E5H:  64 0F BB 56 00                               BTC     FS:[BP],DX
10EAH:  64 0F BB 14                                  BTC     FS:[SI],DX
10EEH:  64 0F BB 15                                  BTC     FS:[DI],DX
10F2H:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
10F6H:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
10FAH:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
10FEH:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
1102H:  65 0F BB 56 00                               BTC     GS:[BP],DX
1107H:  65 0F BB 14                                  BTC     GS:[SI],DX
110BH:  65 0F BB 15                                  BTC     GS:[DI],DX
110FH:  0F BA FA 01                                  BTC     DX,01H
1113H:  0F BA FA FF                                  BTC     DX,0FFH
1117H:  0F BB D8                                     BTC     AX,BX
111AH:  0F BB D9                                     BTC     CX,BX
111DH:  0F BB DA                                     BTC     DX,BX
1120H:  0F BB DB                                     BTC     BX,BX
1123H:  0F BB DC                                     BTC     SP,BX
1126H:  0F BB DD                                     BTC     BP,BX
1129H:  0F BB DE                                     BTC     SI,BX
112CH:  0F BB DF                                     BTC     DI,BX
112FH:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234H],BX
1134H:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234H],BX
1139H:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234H],BX
113EH:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234H],BX
1143H:  0F BB 9E 34 12                               BTC     SS:[BP+1234H],BX
1148H:  0F BB 9C 34 12                               BTC     DS:[SI+1234H],BX
114DH:  0F BB 9D 34 12                               BTC     DS:[DI+1234H],BX
1152H:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
1156H:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
115AH:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
115EH:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
1162H:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
1167H:  2E 0F BB 1C                                  BTC     CS:[SI],BX
116BH:  2E 0F BB 1D                                  BTC     CS:[DI],BX
116FH:  0F BB 18                                     BTC     DS:[BX+SI],BX
1172H:  0F BB 19                                     BTC     DS:[BX+DI],BX
1175H:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
1179H:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
117DH:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
1182H:  0F BB 1C                                     BTC     DS:[SI],BX
1185H:  0F BB 1D                                     BTC     DS:[DI],BX
1188H:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
118CH:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
1190H:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
1194H:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
1198H:  26 0F BB 5E 00                               BTC     ES:[BP],BX
119DH:  26 0F BB 1C                                  BTC     ES:[SI],BX
11A1H:  26 0F BB 1D                                  BTC     ES:[DI],BX
11A5H:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
11A9H:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
11ADH:  0F BB 1A                                     BTC     SS:[BP+SI],BX
11B0H:  0F BB 1B                                     BTC     SS:[BP+DI],BX
11B3H:  0F BB 5E 00                                  BTC     SS:[BP],BX
11B7H:  36 0F BB 1C                                  BTC     SS:[SI],BX
11BBH:  36 0F BB 1D                                  BTC     SS:[DI],BX
11BFH:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
11C3H:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
11C7H:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
11CBH:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
11CFH:  64 0F BB 5E 00                               BTC     FS:[BP],BX
11D4H:  64 0F BB 1C                                  BTC     FS:[SI],BX
11D8H:  64 0F BB 1D                                  BTC     FS:[DI],BX
11DCH:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
11E0H:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
11E4H:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
11E8H:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
11ECH:  65 0F BB 5E 00                               BTC     GS:[BP],BX
11F1H:  65 0F BB 1C                                  BTC     GS:[SI],BX
11F5H:  65 0F BB 1D                                  BTC     GS:[DI],BX
11F9H:  0F BA FB 01                                  BTC     BX,01H
11FDH:  0F BA FB FF                                  BTC     BX,0FFH
1201H:  0F BB E0                                     BTC     AX,SP
1204H:  0F BB E1                                     BTC     CX,SP
1207H:  0F BB E2                                     BTC     DX,SP
120AH:  0F BB E3                                     BTC     BX,SP
120DH:  0F BB E4                                     BTC     SP,SP
1210H:  0F BB E5                                     BTC     BP,SP
1213H:  0F BB E6                                     BTC     SI,SP
1216H:  0F BB E7                                     BTC     DI,SP
1219H:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234H],SP
121EH:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234H],SP
1223H:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234H],SP
1228H:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234H],SP
122DH:  0F BB A6 34 12                               BTC     SS:[BP+1234H],SP
1232H:  0F BB A4 34 12                               BTC     DS:[SI+1234H],SP
1237H:  0F BB A5 34 12                               BTC     DS:[DI+1234H],SP
123CH:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
1240H:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
1244H:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
1248H:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
124CH:  2E 0F BB 66 00                               BTC     CS:[BP],SP
1251H:  2E 0F BB 24                                  BTC     CS:[SI],SP
1255H:  2E 0F BB 25                                  BTC     CS:[DI],SP
1259H:  0F BB 20                                     BTC     DS:[BX+SI],SP
125CH:  0F BB 21                                     BTC     DS:[BX+DI],SP
125FH:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
1263H:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
1267H:  3E 0F BB 66 00                               BTC     DS:[BP],SP
126CH:  0F BB 24                                     BTC     DS:[SI],SP
126FH:  0F BB 25                                     BTC     DS:[DI],SP
1272H:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
1276H:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
127AH:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
127EH:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
1282H:  26 0F BB 66 00                               BTC     ES:[BP],SP
1287H:  26 0F BB 24                                  BTC     ES:[SI],SP
128BH:  26 0F BB 25                                  BTC     ES:[DI],SP
128FH:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
1293H:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
1297H:  0F BB 22                                     BTC     SS:[BP+SI],SP
129AH:  0F BB 23                                     BTC     SS:[BP+DI],SP
129DH:  0F BB 66 00                                  BTC     SS:[BP],SP
12A1H:  36 0F BB 24                                  BTC     SS:[SI],SP
12A5H:  36 0F BB 25                                  BTC     SS:[DI],SP
12A9H:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
12ADH:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
12B1H:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
12B5H:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
12B9H:  64 0F BB 66 00                               BTC     FS:[BP],SP
12BEH:  64 0F BB 24                                  BTC     FS:[SI],SP
12C2H:  64 0F BB 25                                  BTC     FS:[DI],SP
12C6H:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
12CAH:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
12CEH:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
12D2H:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
12D6H:  65 0F BB 66 00                               BTC     GS:[BP],SP
12DBH:  65 0F BB 24                                  BTC     GS:[SI],SP
12DFH:  65 0F BB 25                                  BTC     GS:[DI],SP
12E3H:  0F BA FC 01                                  BTC     SP,01H
12E7H:  0F BA FC FF                                  BTC     SP,0FFH
12EBH:  0F BB E8                                     BTC     AX,BP
12EEH:  0F BB E9                                     BTC     CX,BP
12F1H:  0F BB EA                                     BTC     DX,BP
12F4H:  0F BB EB                                     BTC     BX,BP
12F7H:  0F BB EC                                     BTC     SP,BP
12FAH:  0F BB ED                                     BTC     BP,BP
12FDH:  0F BB EE                                     BTC     SI,BP
1300H:  0F BB EF                                     BTC     DI,BP
1303H:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234H],BP
1308H:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234H],BP
130DH:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234H],BP
1312H:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234H],BP
1317H:  0F BB AE 34 12                               BTC     SS:[BP+1234H],BP
131CH:  0F BB AC 34 12                               BTC     DS:[SI+1234H],BP
1321H:  0F BB AD 34 12                               BTC     DS:[DI+1234H],BP
1326H:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
132AH:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
132EH:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
1332H:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
1336H:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
133BH:  2E 0F BB 2C                                  BTC     CS:[SI],BP
133FH:  2E 0F BB 2D                                  BTC     CS:[DI],BP
1343H:  0F BB 28                                     BTC     DS:[BX+SI],BP
1346H:  0F BB 29                                     BTC     DS:[BX+DI],BP
1349H:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
134DH:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
1351H:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
1356H:  0F BB 2C                                     BTC     DS:[SI],BP
1359H:  0F BB 2D                                     BTC     DS:[DI],BP
135CH:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
1360H:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
1364H:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
1368H:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
136CH:  26 0F BB 6E 00                               BTC     ES:[BP],BP
1371H:  26 0F BB 2C                                  BTC     ES:[SI],BP
1375H:  26 0F BB 2D                                  BTC     ES:[DI],BP
1379H:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
137DH:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
1381H:  0F BB 2A                                     BTC     SS:[BP+SI],BP
1384H:  0F BB 2B                                     BTC     SS:[BP+DI],BP
1387H:  0F BB 6E 00                                  BTC     SS:[BP],BP
138BH:  36 0F BB 2C                                  BTC     SS:[SI],BP
138FH:  36 0F BB 2D                                  BTC     SS:[DI],BP
1393H:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
1397H:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
139BH:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
139FH:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
13A3H:  64 0F BB 6E 00                               BTC     FS:[BP],BP
13A8H:  64 0F BB 2C                                  BTC     FS:[SI],BP
13ACH:  64 0F BB 2D                                  BTC     FS:[DI],BP
13B0H:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
13B4H:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
13B8H:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
13BCH:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
13C0H:  65 0F BB 6E 00                               BTC     GS:[BP],BP
13C5H:  65 0F BB 2C                                  BTC     GS:[SI],BP
13C9H:  65 0F BB 2D                                  BTC     GS:[DI],BP
13CDH:  0F BA FD 01                                  BTC     BP,01H
13D1H:  0F BA FD FF                                  BTC     BP,0FFH
13D5H:  0F BB F0                                     BTC     AX,SI
13D8H:  0F BB F1                                     BTC     CX,SI
13DBH:  0F BB F2                                     BTC     DX,SI
13DEH:  0F BB F3                                     BTC     BX,SI
13E1H:  0F BB F4                                     BTC     SP,SI
13E4H:  0F BB F5                                     BTC     BP,SI
13E7H:  0F BB F6                                     BTC     SI,SI
13EAH:  0F BB F7                                     BTC     DI,SI
13EDH:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234H],SI
13F2H:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234H],SI
13F7H:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234H],SI
13FCH:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234H],SI
1401H:  0F BB B6 34 12                               BTC     SS:[BP+1234H],SI
1406H:  0F BB B4 34 12                               BTC     DS:[SI+1234H],SI
140BH:  0F BB B5 34 12                               BTC     DS:[DI+1234H],SI
1410H:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
1414H:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
1418H:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
141CH:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
1420H:  2E 0F BB 76 00                               BTC     CS:[BP],SI
1425H:  2E 0F BB 34                                  BTC     CS:[SI],SI
1429H:  2E 0F BB 35                                  BTC     CS:[DI],SI
142DH:  0F BB 30                                     BTC     DS:[BX+SI],SI
1430H:  0F BB 31                                     BTC     DS:[BX+DI],SI
1433H:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
1437H:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
143BH:  3E 0F BB 76 00                               BTC     DS:[BP],SI
1440H:  0F BB 34                                     BTC     DS:[SI],SI
1443H:  0F BB 35                                     BTC     DS:[DI],SI
1446H:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
144AH:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
144EH:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
1452H:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
1456H:  26 0F BB 76 00                               BTC     ES:[BP],SI
145BH:  26 0F BB 34                                  BTC     ES:[SI],SI
145FH:  26 0F BB 35                                  BTC     ES:[DI],SI
1463H:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
1467H:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
146BH:  0F BB 32                                     BTC     SS:[BP+SI],SI
146EH:  0F BB 33                                     BTC     SS:[BP+DI],SI
1471H:  0F BB 76 00                                  BTC     SS:[BP],SI
1475H:  36 0F BB 34                                  BTC     SS:[SI],SI
1479H:  36 0F BB 35                                  BTC     SS:[DI],SI
147DH:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
1481H:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
1485H:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
1489H:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
148DH:  64 0F BB 76 00                               BTC     FS:[BP],SI
1492H:  64 0F BB 34                                  BTC     FS:[SI],SI
1496H:  64 0F BB 35                                  BTC     FS:[DI],SI
149AH:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
149EH:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
14A2H:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
14A6H:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
14AAH:  65 0F BB 76 00                               BTC     GS:[BP],SI
14AFH:  65 0F BB 34                                  BTC     GS:[SI],SI
14B3H:  65 0F BB 35                                  BTC     GS:[DI],SI
14B7H:  0F BA FE 01                                  BTC     SI,01H
14BBH:  0F BA FE FF                                  BTC     SI,0FFH
14BFH:  0F BB F8                                     BTC     AX,DI
14C2H:  0F BB F9                                     BTC     CX,DI
14C5H:  0F BB FA                                     BTC     DX,DI
14C8H:  0F BB FB                                     BTC     BX,DI
14CBH:  0F BB FC                                     BTC     SP,DI
14CEH:  0F BB FD                                     BTC     BP,DI
14D1H:  0F BB FE                                     BTC     SI,DI
14D4H:  0F BB FF                                     BTC     DI,DI
14D7H:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234H],DI
14DCH:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234H],DI
14E1H:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234H],DI
14E6H:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234H],DI
14EBH:  0F BB BE 34 12                               BTC     SS:[BP+1234H],DI
14F0H:  0F BB BC 34 12                               BTC     DS:[SI+1234H],DI
14F5H:  0F BB BD 34 12                               BTC     DS:[DI+1234H],DI
14FAH:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
14FEH:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
1502H:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
1506H:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
150AH:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
150FH:  2E 0F BB 3C                                  BTC     CS:[SI],DI
1513H:  2E 0F BB 3D                                  BTC     CS:[DI],DI
1517H:  0F BB 38                                     BTC     DS:[BX+SI],DI
151AH:  0F BB 39                                     BTC     DS:[BX+DI],DI
151DH:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
1521H:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
1525H:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
152AH:  0F BB 3C                                     BTC     DS:[SI],DI
152DH:  0F BB 3D                                     BTC     DS:[DI],DI
1530H:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
1534H:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
1538H:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
153CH:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
1540H:  26 0F BB 7E 00                               BTC     ES:[BP],DI
1545H:  26 0F BB 3C                                  BTC     ES:[SI],DI
1549H:  26 0F BB 3D                                  BTC     ES:[DI],DI
154DH:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
1551H:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
1555H:  0F BB 3A                                     BTC     SS:[BP+SI],DI
1558H:  0F BB 3B                                     BTC     SS:[BP+DI],DI
155BH:  0F BB 7E 00                                  BTC     SS:[BP],DI
155FH:  36 0F BB 3C                                  BTC     SS:[SI],DI
1563H:  36 0F BB 3D                                  BTC     SS:[DI],DI
1567H:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
156BH:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
156FH:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
1573H:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
1577H:  64 0F BB 7E 00                               BTC     FS:[BP],DI
157CH:  64 0F BB 3C                                  BTC     FS:[SI],DI
1580H:  64 0F BB 3D                                  BTC     FS:[DI],DI
1584H:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
1588H:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
158CH:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
1590H:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
1594H:  65 0F BB 7E 00                               BTC     GS:[BP],DI
1599H:  65 0F BB 3C                                  BTC     GS:[SI],DI
159DH:  65 0F BB 3D                                  BTC     GS:[DI],DI
15A1H:  0F BA FF 01                                  BTC     DI,01H
15A5H:  0F BA FF FF                                  BTC     DI,0FFH
15A9H:  66 0F BA F8 FF                               BTC     EAX,0FFH
15AEH:  66 0F BA F9 FF                               BTC     ECX,0FFH
15B3H:  66 0F BA FA FF                               BTC     EDX,0FFH
15B8H:  66 0F BA FB FF                               BTC     EBX,0FFH
15BDH:  66 0F BA FC FF                               BTC     ESP,0FFH
15C2H:  66 0F BA FD FF                               BTC     EBP,0FFH
15C7H:  66 0F BA FE FF                               BTC     ESI,0FFH
15CCH:  66 0F BA FF FF                               BTC     EDI,0FFH
15D1H:  0F 80 36 01                                  JO      170BH
15D5H:  0F 81 27 EB                                  JNO     0100H
15D9H:  0F 82 2E 01                                  JB      170BH
15DDH:  0F 83 1F EB                                  JNB     0100H
15E1H:  0F 84 26 01                                  JZ      170BH
15E5H:  0F 85 17 EB                                  JNZ     0100H
15E9H:  0F 86 1E 01                                  JBE     170BH
15EDH:  0F 87 0F EB                                  JNBE    0100H
15F1H:  0F 88 16 01                                  JS      170BH
15F5H:  0F 89 07 EB                                  JNS     0100H
15F9H:  0F 8A 0E 01                                  JP      170BH
15FDH:  0F 8B FF EA                                  JNP     0100H
1601H:  0F 8C 06 01                                  JL      170BH
1605H:  0F 8D F7 EA                                  JNL     0100H
1609H:  0F 8E FE 00                                  JLE     170BH
160DH:  0F 8F EF EA                                  JNLE    0100H
1611H:  70 FE                                        JO      1611H
1613H:  71 21                                        JNO     1636H
1615H:  72 FA                                        JB      1611H
1617H:  73 1D                                        JNB     1636H
1619H:  74 F6                                        JZ      1611H
161BH:  75 19                                        JNZ     1636H
161DH:  76 F2                                        JBE     1611H
161FH:  77 15                                        JNBE    1636H
1621H:  78 EE                                        JS      1611H
1623H:  79 11                                        JNS     1636H
1625H:  7A EA                                        JP      1611H
1627H:  7B 0D                                        JNP     1636H
1629H:  7C E6                                        JL      1611H
162BH:  7D 09                                        JNL     1636H
162DH:  7E E2                                        JLE     1611H
162FH:  7F 05                                        JNLE    1636H
1631H:  E3 DE                                        JCXZ    1611H
1633H:  67 E3 00                                     JECXZ   1636H
1636H:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
1640H:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
164AH:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
1654H:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
165EH:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
1667H:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
1670H:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     ],ESI

 SS:[EBX+EAX*8+12345678H],9AH
167DH:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
1687H:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
1691H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
169BH:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
16A5H:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
16AEH:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
16B7H:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     ],ESI

 SS:[EBX+EAX*8+12345678H],9AH
16C4H:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
16CEH:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
16D8H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
16E2H:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
16ECH:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
16F5H:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
16FEH:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     ],ESI

 SS:[EBX+EAX*8+12345678H],9AH
170BH:  D5 0A                                        AAD
