0100H:  66 67 0F BB 04 85 00 00 00 00                BTC     DS:[EAX*4],EAX
010AH:  67 0F BB 04 9D 00 00 00 00                   BTC     DS:[EBX*4],AX
0113H:  67 0F BB 04 AD 00 00 00 00                   BTC     SS:[EBP*4],AX
011CH:  66 67 0F BB 2C AD 01 00 00 00                BTC     SS:[EBP*4+00000001H],EBP
0126H:  66 67 0F BB 2C AD 00 01 00 00                BTC     SS:[EBP*4+00000100H],EBP
0130H:  67 0F BA 3C 28 FF                            BTC     word ptr DS:[EAX+EBP],0FFH
0136H:  66 67 0F BA 3C E8 FF                         BTC     dword ptr DS:[EAX+EBP*8],0FFH
013DH:  67 0F BA 7C 05 00 FF                         BTC     word ptr SS:[EBP+EAX],0FFH
0144H:  66 67 0F BA 7C C5 00 FF                      BTC     dword ptr SS:[EBP+EAX*8],0FFH
014CH:  67 0F BA 3C 04 FF                            BTC     word ptr SS:[ESP+EAX],0FFH
0152H:  66 67 0F BA 3C C4 FF                         BTC     dword ptr SS:[ESP+EAX*8],0FFH
0159H:  67 0F BA 3C 2C FF                            BTC     word ptr SS:[ESP+EBP],0FFH
015FH:  66 67 0F BA 3C EC FF                         BTC     dword ptr SS:[ESP+EBP*8],0FFH
0166H:  67 0F BA 7D 00 FF                            BTC     word ptr SS:[EBP],0FFH
016CH:  66 67 0F BA 3C 24 FF                         BTC     dword ptr SS:[ESP+ESP],0FFH
0173H:  0F BB 00                                     BTC     DS:[BX+SI],AX
0176H:  0F BB 01                                     BTC     DS:[BX+DI],AX
0179H:  0F BB 02                                     BTC     SS:[BP+SI],AX
017CH:  0F BB 03                                     BTC     SS:[BP+DI],AX
017FH:  0F BB 46 00                                  BTC     SS:[BP],AX
0183H:  0F BB 04                                     BTC     DS:[SI],AX
0186H:  0F BB 05                                     BTC     DS:[DI],AX
0189H:  F0 66 67 0F BA BC D8 21 43 65 A7 FF          LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH
0195H:  F0 67 0F BA BC E8 21 43 65 87 FF             LOCK BTC     word ptr DS:[EAX+EBP*8+87654321H],0FFH
01A0H:  F0 66 2E 67 0F BB 84 D8 21 43 65 B7          LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX
01ACH:  F0 3E 67 0F BB 84 E8 21 43 65 87             LOCK BTC     DS:[EAX+EBP*8+87654321H],AX
01B7H:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
01BDH:  36 67 0F BB 05 78 56 34 12                   BTC     SS:[12345678H],AX
01C6H:  66 64 0F BA 3E 23 01 01                      BTC     dword ptr FS:[0123H],01H
01CEH:  66 65 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr GS:[12345678H],10H
01D9H:  0F BB 06 34 12                               BTC     DS:[1234H],AX
01DEH:  67 0F BB 05 78 56 34 12                      BTC     DS:[12345678H],AX
01E6H:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
01EEH:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
01F9H:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
01FFH:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678H],AX
0208H:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
0210H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
021BH:  0F BA 38 A0                                  BTC     word ptr DS:[BX+SI],0A0H
021FH:  66 0F BA 38 B0                               BTC     dword ptr DS:[BX+SI],0B0H
0224H:  0F BA 39 A0                                  BTC     word ptr DS:[BX+DI],0A0H
0228H:  66 0F BA 39 B0                               BTC     dword ptr DS:[BX+DI],0B0H
022DH:  0F BA 3A A0                                  BTC     word ptr SS:[BP+SI],0A0H
0231H:  66 0F BA 3A B0                               BTC     dword ptr SS:[BP+SI],0B0H
0236H:  0F BA 3B A0                                  BTC     word ptr SS:[BP+DI],0A0H
023AH:  66 0F BA 3B B0                               BTC     dword ptr SS:[BP+DI],0B0H
023FH:  0F BA 7E 00 A0                               BTC     word ptr SS:[BP],0A0H
0244H:  66 0F BA 7E 00 B0                            BTC     dword ptr SS:[BP],0B0H
024AH:  0F BA 3D A0                                  BTC     word ptr DS:[DI],0A0H
024EH:  66 0F BA 3D B0                               BTC     dword ptr DS:[DI],0B0H
0253H:  0F BA 3C A0                                  BTC     word ptr DS:[SI],0A0H
0257H:  66 0F BA 3C B0                               BTC     dword ptr DS:[SI],0B0H
025CH:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],AX
0265H:  3E 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],AX
026FH:  67 0F BB 44 2D 00                            BTC     SS:[EBP+EBP],AX
0275H:  67 0F BB 04 2C                               BTC     SS:[ESP+EBP],AX
027AH:  67 0F BB 04 DA                               BTC     DS:[EDX+EBX*8],AX
027FH:  67 0F BB 44 4B 01                            BTC     DS:[EBX+ECX*2+01H],AX
0285H:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],AX
028EH:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX
0297H:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],AX
02A0H:  F0 0F BB 80 34 12                            LOCK BTC     DS:[BX+SI+1234H],AX
02A6H:  F0 0F BB 81 34 12                            LOCK BTC     DS:[BX+DI+1234H],AX
02ACH:  F0 0F BB 82 34 12                            LOCK BTC     SS:[BP+SI+1234H],AX
02B2H:  F0 0F BB 83 34 12                            LOCK BTC     SS:[BP+DI+1234H],AX
02B8H:  F0 0F BB 86 34 12                            LOCK BTC     SS:[BP+1234H],AX
02BEH:  F0 0F BB 84 34 12                            LOCK BTC     DS:[SI+1234H],AX
02C4H:  F0 0F BB 85 34 12                            LOCK BTC     DS:[DI+1234H],AX
02CAH:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],CX
02D3H:  3E 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],CX
02DDH:  67 0F BB 4C 2D 00                            BTC     SS:[EBP+EBP],CX
02E3H:  67 0F BB 0C 2C                               BTC     SS:[ESP+EBP],CX
02E8H:  67 0F BB 0C DA                               BTC     DS:[EDX+EBX*8],CX
02EDH:  67 0F BB 4C 4B 01                            BTC     DS:[EBX+ECX*2+01H],CX
02F3H:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],CX
02FCH:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX
0305H:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],CX
030EH:  F0 0F BB 08                                  LOCK BTC     DS:[BX+SI],CX
0312H:  F0 0F BB 09                                  LOCK BTC     DS:[BX+DI],CX
0316H:  F0 0F BB 0A                                  LOCK BTC     SS:[BP+SI],CX
031AH:  F0 0F BB 0B                                  LOCK BTC     SS:[BP+DI],CX
031EH:  F0 0F BB 4E 00                               LOCK BTC     SS:[BP],CX
0323H:  F0 0F BB 0C                                  LOCK BTC     DS:[SI],CX
0327H:  F0 0F BB 0D                                  LOCK BTC     DS:[DI],CX
032BH:  F0 0F BB 88 34 12                            LOCK BTC     DS:[BX+SI+1234H],CX
0331H:  F0 0F BB 89 34 12                            LOCK BTC     DS:[BX+DI+1234H],CX
0337H:  F0 0F BB 8A 34 12                            LOCK BTC     SS:[BP+SI+1234H],CX
033DH:  F0 0F BB 8B 34 12                            LOCK BTC     SS:[BP+DI+1234H],CX
0343H:  F0 0F BB 8E 34 12                            LOCK BTC     SS:[BP+1234H],CX
0349H:  F0 0F BB 8C 34 12                            LOCK BTC     DS:[SI+1234H],CX
034FH:  F0 0F BB 8D 34 12                            LOCK BTC     DS:[DI+1234H],CX
0355H:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DX
035EH:  3E 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DX
0368H:  67 0F BB 54 2D 00                            BTC     SS:[EBP+EBP],DX
036EH:  67 0F BB 14 2C                               BTC     SS:[ESP+EBP],DX
0373H:  67 0F BB 14 DA                               BTC     DS:[EDX+EBX*8],DX
0378H:  67 0F BB 54 4B 01                            BTC     DS:[EBX+ECX*2+01H],DX
037EH:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DX
0387H:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX
0390H:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DX
0399H:  F0 0F BB 10                                  LOCK BTC     DS:[BX+SI],DX
039DH:  F0 0F BB 11                                  LOCK BTC     DS:[BX+DI],DX
03A1H:  F0 0F BB 12                                  LOCK BTC     SS:[BP+SI],DX
03A5H:  F0 0F BB 13                                  LOCK BTC     SS:[BP+DI],DX
03A9H:  F0 0F BB 56 00                               LOCK BTC     SS:[BP],DX
03AEH:  F0 0F BB 14                                  LOCK BTC     DS:[SI],DX
03B2H:  F0 0F BB 15                                  LOCK BTC     DS:[DI],DX
03B6H:  F0 0F BB 90 34 12                            LOCK BTC     DS:[BX+SI+1234H],DX
03BCH:  F0 0F BB 91 34 12                            LOCK BTC     DS:[BX+DI+1234H],DX
03C2H:  F0 0F BB 92 34 12                            LOCK BTC     SS:[BP+SI+1234H],DX
03C8H:  F0 0F BB 93 34 12                            LOCK BTC     SS:[BP+DI+1234H],DX
03CEH:  F0 0F BB 96 34 12                            LOCK BTC     SS:[BP+1234H],DX
03D4H:  F0 0F BB 94 34 12                            LOCK BTC     DS:[SI+1234H],DX
03DAH:  F0 0F BB 95 34 12                            LOCK BTC     DS:[DI+1234H],DX
03E0H:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BX
03E9H:  3E 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BX
03F3H:  67 0F BB 5C 2D 00                            BTC     SS:[EBP+EBP],BX
03F9H:  67 0F BB 1C 2C                               BTC     SS:[ESP+EBP],BX
03FEH:  67 0F BB 1C DA                               BTC     DS:[EDX+EBX*8],BX
0403H:  67 0F BB 5C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BX
0409H:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BX
0412H:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX
041BH:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BX
0424H:  F0 0F BB 18                                  LOCK BTC     DS:[BX+SI],BX
0428H:  F0 0F BB 19                                  LOCK BTC     DS:[BX+DI],BX
042CH:  F0 0F BB 1A                                  LOCK BTC     SS:[BP+SI],BX
0430H:  F0 0F BB 1B                                  LOCK BTC     SS:[BP+DI],BX
0434H:  F0 0F BB 5E 00                               LOCK BTC     SS:[BP],BX
0439H:  F0 0F BB 1C                                  LOCK BTC     DS:[SI],BX
043DH:  F0 0F BB 1D                                  LOCK BTC     DS:[DI],BX
0441H:  F0 0F BB 98 34 12                            LOCK BTC     DS:[BX+SI+1234H],BX
0447H:  F0 0F BB 99 34 12                            LOCK BTC     DS:[BX+DI+1234H],BX
044DH:  F0 0F BB 9A 34 12                            LOCK BTC     SS:[BP+SI+1234H],BX
0453H:  F0 0F BB 9B 34 12                            LOCK BTC     SS:[BP+DI+1234H],BX
0459H:  F0 0F BB 9E 34 12                            LOCK BTC     SS:[BP+1234H],BX
045FH:  F0 0F BB 9C 34 12                            LOCK BTC     DS:[SI+1234H],BX
0465H:  F0 0F BB 9D 34 12                            LOCK BTC     DS:[DI+1234H],BX
046BH:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SP
0474H:  3E 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SP
047EH:  67 0F BB 64 2D 00                            BTC     SS:[EBP+EBP],SP
0484H:  67 0F BB 24 2C                               BTC     SS:[ESP+EBP],SP
0489H:  67 0F BB 24 DA                               BTC     DS:[EDX+EBX*8],SP
048EH:  67 0F BB 64 4B 01                            BTC     DS:[EBX+ECX*2+01H],SP
0494H:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SP
049DH:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP
04A6H:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SP
04AFH:  F0 0F BB 20                                  LOCK BTC     DS:[BX+SI],SP
04B3H:  F0 0F BB 21                                  LOCK BTC     DS:[BX+DI],SP
04B7H:  F0 0F BB 22                                  LOCK BTC     SS:[BP+SI],SP
04BBH:  F0 0F BB 23                                  LOCK BTC     SS:[BP+DI],SP
04BFH:  F0 0F BB 66 00                               LOCK BTC     SS:[BP],SP
04C4H:  F0 0F BB 24                                  LOCK BTC     DS:[SI],SP
04C8H:  F0 0F BB 25                                  LOCK BTC     DS:[DI],SP
04CCH:  F0 0F BB A0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SP
04D2H:  F0 0F BB A1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SP
04D8H:  F0 0F BB A2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SP
04DEH:  F0 0F BB A3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SP
04E4H:  F0 0F BB A6 34 12                            LOCK BTC     SS:[BP+1234H],SP
04EAH:  F0 0F BB A4 34 12                            LOCK BTC     DS:[SI+1234H],SP
04F0H:  F0 0F BB A5 34 12                            LOCK BTC     DS:[DI+1234H],SP
04F6H:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BP
04FFH:  3E 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BP
0509H:  67 0F BB 6C 2D 00                            BTC     SS:[EBP+EBP],BP
050FH:  67 0F BB 2C 2C                               BTC     SS:[ESP+EBP],BP
0514H:  67 0F BB 2C DA                               BTC     DS:[EDX+EBX*8],BP
0519H:  67 0F BB 6C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BP
051FH:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BP
0528H:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP
0531H:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BP
053AH:  F0 0F BB 28                                  LOCK BTC     DS:[BX+SI],BP
053EH:  F0 0F BB 29                                  LOCK BTC     DS:[BX+DI],BP
0542H:  F0 0F BB 2A                                  LOCK BTC     SS:[BP+SI],BP
0546H:  F0 0F BB 2B                                  LOCK BTC     SS:[BP+DI],BP
054AH:  F0 0F BB 6E 00                               LOCK BTC     SS:[BP],BP
054FH:  F0 0F BB 2C                                  LOCK BTC     DS:[SI],BP
0553H:  F0 0F BB 2D                                  LOCK BTC     DS:[DI],BP
0557H:  F0 0F BB A8 34 12                            LOCK BTC     DS:[BX+SI+1234H],BP
055DH:  F0 0F BB A9 34 12                            LOCK BTC     DS:[BX+DI+1234H],BP
0563H:  F0 0F BB AA 34 12                            LOCK BTC     SS:[BP+SI+1234H],BP
0569H:  F0 0F BB AB 34 12                            LOCK BTC     SS:[BP+DI+1234H],BP
056FH:  F0 0F BB AE 34 12                            LOCK BTC     SS:[BP+1234H],BP
0575H:  F0 0F BB AC 34 12                            LOCK BTC     DS:[SI+1234H],BP
057BH:  F0 0F BB AD 34 12                            LOCK BTC     DS:[DI+1234H],BP
0581H:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SI
058AH:  3E 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SI
0594H:  67 0F BB 74 2D 00                            BTC     SS:[EBP+EBP],SI
059AH:  67 0F BB 34 2C                               BTC     SS:[ESP+EBP],SI
059FH:  67 0F BB 34 DA                               BTC     DS:[EDX+EBX*8],SI
05A4H:  67 0F BB 74 4B 01                            BTC     DS:[EBX+ECX*2+01H],SI
05AAH:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SI
05B3H:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI
05BCH:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SI
05C5H:  F0 0F BB 30                                  LOCK BTC     DS:[BX+SI],SI
05C9H:  F0 0F BB 31                                  LOCK BTC     DS:[BX+DI],SI
05CDH:  F0 0F BB 32                                  LOCK BTC     SS:[BP+SI],SI
05D1H:  F0 0F BB 33                                  LOCK BTC     SS:[BP+DI],SI
05D5H:  F0 0F BB 76 00                               LOCK BTC     SS:[BP],SI
05DAH:  F0 0F BB 34                                  LOCK BTC     DS:[SI],SI
05DEH:  F0 0F BB 35                                  LOCK BTC     DS:[DI],SI
05E2H:  F0 0F BB B0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SI
05E8H:  F0 0F BB B1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SI
05EEH:  F0 0F BB B2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SI
05F4H:  F0 0F BB B3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SI
05FAH:  F0 0F BB B6 34 12                            LOCK BTC     SS:[BP+1234H],SI
0600H:  F0 0F BB B4 34 12                            LOCK BTC     DS:[SI+1234H],SI
0606H:  F0 0F BB B5 34 12                            LOCK BTC     DS:[DI+1234H],SI
060CH:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DI
0615H:  3E 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DI
061FH:  67 0F BB 7C 2D 00                            BTC     SS:[EBP+EBP],DI
0625H:  67 0F BB 3C 2C                               BTC     SS:[ESP+EBP],DI
062AH:  67 0F BB 3C DA                               BTC     DS:[EDX+EBX*8],DI
062FH:  67 0F BB 7C 4B 01                            BTC     DS:[EBX+ECX*2+01H],DI
0635H:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DI
063EH:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI
0647H:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DI
0650H:  F0 0F BB 38                                  LOCK BTC     DS:[BX+SI],DI
0654H:  F0 0F BB 39                                  LOCK BTC     DS:[BX+DI],DI
0658H:  F0 0F BB 3A                                  LOCK BTC     SS:[BP+SI],DI
065CH:  F0 0F BB 3B                                  LOCK BTC     SS:[BP+DI],DI
0660H:  F0 0F BB 7E 00                               LOCK BTC     SS:[BP],DI
0665H:  F0 0F BB 3C                                  LOCK BTC     DS:[SI],DI
0669H:  F0 0F BB 3D                                  LOCK BTC     DS:[DI],DI
066DH:  F0 0F BB B8 34 12                            LOCK BTC     DS:[BX+SI+1234H],DI
0673H:  F0 0F BB B9 34 12                            LOCK BTC     DS:[BX+DI+1234H],DI
0679H:  F0 0F BB BA 34 12                            LOCK BTC     SS:[BP+SI+1234H],DI
067FH:  F0 0F BB BB 34 12                            LOCK BTC     SS:[BP+DI+1234H],DI
0685H:  F0 0F BB BE 34 12                            LOCK BTC     SS:[BP+1234H],DI
068BH:  F0 0F BB BC 34 12                            LOCK BTC     DS:[SI+1234H],DI
0691H:  F0 0F BB BD 34 12                            LOCK BTC     DS:[DI+1234H],DI
0697H:  66 0F BB C0                                  BTC     EAX,EAX
069BH:  66 0F BB C1                                  BTC     ECX,EAX
069FH:  66 0F BB C2                                  BTC     EDX,EAX
06A3H:  66 0F BB C3                                  BTC     EBX,EAX
06A7H:  66 0F BB C4                                  BTC     ESP,EAX
06ABH:  66 0F BB C5                                  BTC     EBP,EAX
06AFH:  66 0F BB C6                                  BTC     ESI,EAX
06B3H:  66 0F BB C7                                  BTC     EDI,EAX
06B7H:  66 67 0F BB 00                               BTC     DS:[EAX],EAX
06BCH:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX+00001234H],ECX
06C5H:  66 2E 67 0F BB 18                            BTC     CS:[EAX],EBX
06CBH:  66 67 0F BB 10                               BTC     DS:[EAX],EDX
06D0H:  66 26 67 0F BB 20                            BTC     ES:[EAX],ESP
06D6H:  66 36 67 0F BB 28                            BTC     SS:[EAX],EBP
06DCH:  66 64 67 0F BB 30                            BTC     FS:[EAX],ESI
06E2H:  66 65 67 0F BB 38                            BTC     GS:[EAX],EDI
06E8H:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EAX
06F2H:  66 3E 67 0F BB 84 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EAX
06FDH:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP+EBP],EAX
0704H:  66 67 0F BB 04 2C                            BTC     SS:[ESP+EBP],EAX
070AH:  66 67 0F BB 04 DA                            BTC     DS:[EDX+EBX*8],EAX
0710H:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX+ECX*2+01H],EAX
0717H:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EAX
0721H:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX
072BH:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EAX
0735H:  F0 66 0F BB 00                               LOCK BTC     DS:[BX+SI],EAX
073AH:  F0 66 0F BB 01                               LOCK BTC     DS:[BX+DI],EAX
073FH:  F0 66 0F BB 02                               LOCK BTC     SS:[BP+SI],EAX
0744H:  F0 66 0F BB 03                               LOCK BTC     SS:[BP+DI],EAX
0749H:  F0 66 0F BB 46 00                            LOCK BTC     SS:[BP],EAX
074FH:  F0 66 0F BB 04                               LOCK BTC     DS:[SI],EAX
0754H:  F0 66 0F BB 05                               LOCK BTC     DS:[DI],EAX
0759H:  F0 66 0F BB 80 34 12                         LOCK BTC     DS:[BX+SI+1234H],EAX
0760H:  F0 66 0F BB 81 34 12                         LOCK BTC     DS:[BX+DI+1234H],EAX
0767H:  F0 66 0F BB 82 34 12                         LOCK BTC     SS:[BP+SI+1234H],EAX
076EH:  F0 66 0F BB 83 34 12                         LOCK BTC     SS:[BP+DI+1234H],EAX
0775H:  F0 66 0F BB 86 34 12                         LOCK BTC     SS:[BP+1234H],EAX
077CH:  F0 66 0F BB 84 34 12                         LOCK BTC     DS:[SI+1234H],EAX
0783H:  F0 66 0F BB 85 34 12                         LOCK BTC     DS:[DI+1234H],EAX
078AH:  66 0F BA F8 01                               BTC     EAX,01H
078FH:  66 0F BB C8                                  BTC     EAX,ECX
0793H:  66 0F BB C9                                  BTC     ECX,ECX
0797H:  66 0F BB CA                                  BTC     EDX,ECX
079BH:  66 0F BB CB                                  BTC     EBX,ECX
079FH:  66 0F BB CC                                  BTC     ESP,ECX
07A3H:  66 0F BB CD                                  BTC     EBP,ECX
07A7H:  66 0F BB CE                                  BTC     ESI,ECX
07ABH:  66 0F BB CF                                  BTC     EDI,ECX
07AFH:  66 67 0F BB 01                               BTC     DS:[ECX],EAX
07B4H:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX+00001234H],ECX
07BDH:  66 2E 67 0F BB 19                            BTC     CS:[ECX],EBX
07C3H:  66 67 0F BB 11                               BTC     DS:[ECX],EDX
07C8H:  66 26 67 0F BB 21                            BTC     ES:[ECX],ESP
07CEH:  66 36 67 0F BB 29                            BTC     SS:[ECX],EBP
07D4H:  66 64 67 0F BB 31                            BTC     FS:[ECX],ESI
07DAH:  66 65 67 0F BB 39                            BTC     GS:[ECX],EDI
07E0H:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ECX
07EAH:  66 3E 67 0F BB 8C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ECX
07F5H:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP+EBP],ECX
07FCH:  66 67 0F BB 0C 2C                            BTC     SS:[ESP+EBP],ECX
0802H:  66 67 0F BB 0C DA                            BTC     DS:[EDX+EBX*8],ECX
0808H:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX+ECX*2+01H],ECX
080FH:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ECX
0819H:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX
0823H:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ECX
082DH:  F0 66 0F BB 08                               LOCK BTC     DS:[BX+SI],ECX
0832H:  F0 66 0F BB 09                               LOCK BTC     DS:[BX+DI],ECX
0837H:  F0 66 0F BB 0A                               LOCK BTC     SS:[BP+SI],ECX
083CH:  F0 66 0F BB 0B                               LOCK BTC     SS:[BP+DI],ECX
0841H:  F0 66 0F BB 4E 00                            LOCK BTC     SS:[BP],ECX
0847H:  F0 66 0F BB 0C                               LOCK BTC     DS:[SI],ECX
084CH:  F0 66 0F BB 0D                               LOCK BTC     DS:[DI],ECX
0851H:  F0 66 0F BB 88 34 12                         LOCK BTC     DS:[BX+SI+1234H],ECX
0858H:  F0 66 0F BB 89 34 12                         LOCK BTC     DS:[BX+DI+1234H],ECX
085FH:  F0 66 0F BB 8A 34 12                         LOCK BTC     SS:[BP+SI+1234H],ECX
0866H:  F0 66 0F BB 8B 34 12                         LOCK BTC     SS:[BP+DI+1234H],ECX
086DH:  F0 66 0F BB 8E 34 12                         LOCK BTC     SS:[BP+1234H],ECX
0874H:  F0 66 0F BB 8C 34 12                         LOCK BTC     DS:[SI+1234H],ECX
087BH:  F0 66 0F BB 8D 34 12                         LOCK BTC     DS:[DI+1234H],ECX
0882H:  66 0F BA F9 01                               BTC     ECX,01H
0887H:  66 0F BB D0                                  BTC     EAX,EDX
088BH:  66 0F BB D1                                  BTC     ECX,EDX
088FH:  66 0F BB D2                                  BTC     EDX,EDX
0893H:  66 0F BB D3                                  BTC     EBX,EDX
0897H:  66 0F BB D4                                  BTC     ESP,EDX
089BH:  66 0F BB D5                                  BTC     EBP,EDX
089FH:  66 0F BB D6                                  BTC     ESI,EDX
08A3H:  66 0F BB D7                                  BTC     EDI,EDX
08A7H:  66 67 0F BB 02                               BTC     DS:[EDX],EAX
08ACH:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX+00001234H],ECX
08B5H:  66 2E 67 0F BB 1A                            BTC     CS:[EDX],EBX
08BBH:  66 67 0F BB 12                               BTC     DS:[EDX],EDX
08C0H:  66 26 67 0F BB 22                            BTC     ES:[EDX],ESP
08C6H:  66 36 67 0F BB 2A                            BTC     SS:[EDX],EBP
08CCH:  66 64 67 0F BB 32                            BTC     FS:[EDX],ESI
08D2H:  66 65 67 0F BB 3A                            BTC     GS:[EDX],EDI
08D8H:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDX
08E2H:  66 3E 67 0F BB 94 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDX
08EDH:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP+EBP],EDX
08F4H:  66 67 0F BB 14 2C                            BTC     SS:[ESP+EBP],EDX
08FAH:  66 67 0F BB 14 DA                            BTC     DS:[EDX+EBX*8],EDX
0900H:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDX
0907H:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDX
0911H:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX
091BH:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDX
0925H:  F0 66 0F BB 10                               LOCK BTC     DS:[BX+SI],EDX
092AH:  F0 66 0F BB 11                               LOCK BTC     DS:[BX+DI],EDX
092FH:  F0 66 0F BB 12                               LOCK BTC     SS:[BP+SI],EDX
0934H:  F0 66 0F BB 13                               LOCK BTC     SS:[BP+DI],EDX
0939H:  F0 66 0F BB 56 00                            LOCK BTC     SS:[BP],EDX
093FH:  F0 66 0F BB 14                               LOCK BTC     DS:[SI],EDX
0944H:  F0 66 0F BB 15                               LOCK BTC     DS:[DI],EDX
0949H:  F0 66 0F BB 90 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDX
0950H:  F0 66 0F BB 91 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDX
0957H:  F0 66 0F BB 92 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDX
095EH:  F0 66 0F BB 93 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDX
0965H:  F0 66 0F BB 96 34 12                         LOCK BTC     SS:[BP+1234H],EDX
096CH:  F0 66 0F BB 94 34 12                         LOCK BTC     DS:[SI+1234H],EDX
0973H:  F0 66 0F BB 95 34 12                         LOCK BTC     DS:[DI+1234H],EDX
097AH:  66 0F BA FA 01                               BTC     EDX,01H
097FH:  66 0F BB D8                                  BTC     EAX,EBX
0983H:  66 0F BB D9                                  BTC     ECX,EBX
0987H:  66 0F BB DA                                  BTC     EDX,EBX
098BH:  66 0F BB DB                                  BTC     EBX,EBX
098FH:  66 0F BB DC                                  BTC     ESP,EBX
0993H:  66 0F BB DD                                  BTC     EBP,EBX
0997H:  66 0F BB DE                                  BTC     ESI,EBX
099BH:  66 0F BB DF                                  BTC     EDI,EBX
099FH:  66 67 0F BB 03                               BTC     DS:[EBX],EAX
09A4H:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX+00001234H],ECX
09ADH:  66 2E 67 0F BB 1B                            BTC     CS:[EBX],EBX
09B3H:  66 67 0F BB 13                               BTC     DS:[EBX],EDX
09B8H:  66 26 67 0F BB 23                            BTC     ES:[EBX],ESP
09BEH:  66 36 67 0F BB 2B                            BTC     SS:[EBX],EBP
09C4H:  66 64 67 0F BB 33                            BTC     FS:[EBX],ESI
09CAH:  66 65 67 0F BB 3B                            BTC     GS:[EBX],EDI
09D0H:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBX
09DAH:  66 3E 67 0F BB 9C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBX
09E5H:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP+EBP],EBX
09ECH:  66 67 0F BB 1C 2C                            BTC     SS:[ESP+EBP],EBX
09F2H:  66 67 0F BB 1C DA                            BTC     DS:[EDX+EBX*8],EBX
09F8H:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBX
09FFH:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBX
0A09H:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX
0A13H:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBX
0A1DH:  F0 66 0F BB 18                               LOCK BTC     DS:[BX+SI],EBX
0A22H:  F0 66 0F BB 19                               LOCK BTC     DS:[BX+DI],EBX
0A27H:  F0 66 0F BB 1A                               LOCK BTC     SS:[BP+SI],EBX
0A2CH:  F0 66 0F BB 1B                               LOCK BTC     SS:[BP+DI],EBX
0A31H:  F0 66 0F BB 5E 00                            LOCK BTC     SS:[BP],EBX
0A37H:  F0 66 0F BB 1C                               LOCK BTC     DS:[SI],EBX
0A3CH:  F0 66 0F BB 1D                               LOCK BTC     DS:[DI],EBX
0A41H:  F0 66 0F BB 98 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBX
0A48H:  F0 66 0F BB 99 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBX
0A4FH:  F0 66 0F BB 9A 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBX
0A56H:  F0 66 0F BB 9B 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBX
0A5DH:  F0 66 0F BB 9E 34 12                         LOCK BTC     SS:[BP+1234H],EBX
0A64H:  F0 66 0F BB 9C 34 12                         LOCK BTC     DS:[SI+1234H],EBX
0A6BH:  F0 66 0F BB 9D 34 12                         LOCK BTC     DS:[DI+1234H],EBX
0A72H:  66 0F BA FB 01                               BTC     EBX,01H
0A77H:  66 0F BB E0                                  BTC     EAX,ESP
0A7BH:  66 0F BB E1                                  BTC     ECX,ESP
0A7FH:  66 0F BB E2                                  BTC     EDX,ESP
0A83H:  66 0F BB E3                                  BTC     EBX,ESP
0A87H:  66 0F BB E4                                  BTC     ESP,ESP
0A8BH:  66 0F BB E5                                  BTC     EBP,ESP
0A8FH:  66 0F BB E6                                  BTC     ESI,ESP
0A93H:  66 0F BB E7                                  BTC     EDI,ESP
0A97H:  66 67 0F BB 04 04                            BTC     SS:[ESP+EAX],EAX
0A9DH:  66 67 0F BB 8C 2C 34 12 00 00                BTC     SS:[ESP+EBP+00001234H],ECX
0AA7H:  66 2E 67 0F BB 1C 0C                         BTC     CS:[ESP+ECX],EBX
0AAEH:  66 3E 67 0F BB 14 14                         BTC     DS:[ESP+EDX],EDX
0AB5H:  66 26 67 0F BB 24 24                         BTC     ES:[ESP+ESP],ESP
0ABCH:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ESP
0AC6H:  66 3E 67 0F BB A4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ESP
0AD1H:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP+EBP],ESP
0AD8H:  66 67 0F BB 24 2C                            BTC     SS:[ESP+EBP],ESP
0ADEH:  66 67 0F BB 24 DA                            BTC     DS:[EDX+EBX*8],ESP
0AE4H:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX+ECX*2+01H],ESP
0AEBH:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ESP
0AF5H:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP
0AFFH:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ESP
0B09H:  F0 66 0F BB 20                               LOCK BTC     DS:[BX+SI],ESP
0B0EH:  F0 66 0F BB 21                               LOCK BTC     DS:[BX+DI],ESP
0B13H:  F0 66 0F BB 22                               LOCK BTC     SS:[BP+SI],ESP
0B18H:  F0 66 0F BB 23                               LOCK BTC     SS:[BP+DI],ESP
0B1DH:  F0 66 0F BB 66 00                            LOCK BTC     SS:[BP],ESP
0B23H:  F0 66 0F BB 24                               LOCK BTC     DS:[SI],ESP
0B28H:  F0 66 0F BB 25                               LOCK BTC     DS:[DI],ESP
0B2DH:  F0 66 0F BB A0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESP
0B34H:  F0 66 0F BB A1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESP
0B3BH:  F0 66 0F BB A2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESP
0B42H:  F0 66 0F BB A3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESP
0B49H:  F0 66 0F BB A6 34 12                         LOCK BTC     SS:[BP+1234H],ESP
0B50H:  F0 66 0F BB A4 34 12                         LOCK BTC     DS:[SI+1234H],ESP
0B57H:  F0 66 0F BB A5 34 12                         LOCK BTC     DS:[DI+1234H],ESP
0B5EH:  66 0F BA FC 01                               BTC     ESP,01H
0B63H:  66 0F BB E8                                  BTC     EAX,EBP
0B67H:  66 0F BB E9                                  BTC     ECX,EBP
0B6BH:  66 0F BB EA                                  BTC     EDX,EBP
0B6FH:  66 0F BB EB                                  BTC     EBX,EBP
0B73H:  66 0F BB EC                                  BTC     ESP,EBP
0B77H:  66 0F BB ED                                  BTC     EBP,EBP
0B7BH:  66 0F BB EE                                  BTC     ESI,EBP
0B7FH:  66 0F BB EF                                  BTC     EDI,EBP
0B83H:  66 67 0F BB 45 00                            BTC     SS:[EBP],EAX
0B89H:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP+00001234H],ECX
0B92H:  66 2E 67 0F BB 5D 00                         BTC     CS:[EBP],EBX
0B99H:  66 3E 67 0F BB 55 00                         BTC     DS:[EBP],EDX
0BA0H:  66 26 67 0F BB 65 00                         BTC     ES:[EBP],ESP
0BA7H:  66 67 0F BB 6D 00                            BTC     SS:[EBP],EBP
0BADH:  66 64 67 0F BB 75 00                         BTC     FS:[EBP],ESI
0BB4H:  66 65 67 0F BB 7D 00                         BTC     GS:[EBP],EDI
0BBBH:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBP
0BC5H:  66 3E 67 0F BB AC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBP
0BD0H:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP+EBP],EBP
0BD7H:  66 67 0F BB 2C 2C                            BTC     SS:[ESP+EBP],EBP
0BDDH:  66 67 0F BB 2C DA                            BTC     DS:[EDX+EBX*8],EBP
0BE3H:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBP
0BEAH:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBP
0BF4H:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP
0BFEH:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBP
0C08H:  F0 66 0F BB 28                               LOCK BTC     DS:[BX+SI],EBP
0C0DH:  F0 66 0F BB 29                               LOCK BTC     DS:[BX+DI],EBP
0C12H:  F0 66 0F BB 2A                               LOCK BTC     SS:[BP+SI],EBP
0C17H:  F0 66 0F BB 2B                               LOCK BTC     SS:[BP+DI],EBP
0C1CH:  F0 66 0F BB 6E 00                            LOCK BTC     SS:[BP],EBP
0C22H:  F0 66 0F BB 2C                               LOCK BTC     DS:[SI],EBP
0C27H:  F0 66 0F BB 2D                               LOCK BTC     DS:[DI],EBP
0C2CH:  F0 66 0F BB A8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBP
0C33H:  F0 66 0F BB A9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBP
0C3AH:  F0 66 0F BB AA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBP
0C41H:  F0 66 0F BB AB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBP
0C48H:  F0 66 0F BB AE 34 12                         LOCK BTC     SS:[BP+1234H],EBP
0C4FH:  F0 66 0F BB AC 34 12                         LOCK BTC     DS:[SI+1234H],EBP
0C56H:  F0 66 0F BB AD 34 12                         LOCK BTC     DS:[DI+1234H],EBP
0C5DH:  66 0F BA FD 01                               BTC     EBP,01H
0C62H:  66 0F BB F0                                  BTC     EAX,ESI
0C66H:  66 0F BB F1                                  BTC     ECX,ESI
0C6AH:  66 0F BB F2                                  BTC     EDX,ESI
0C6EH:  66 0F BB F3                                  BTC     EBX,ESI
0C72H:  66 0F BB F4                                  BTC     ESP,ESI
0C76H:  66 0F BB F5                                  BTC     EBP,ESI
0C7AH:  66 0F BB F6                                  BTC     ESI,ESI
0C7EH:  66 0F BB F7                                  BTC     EDI,ESI
0C82H:  66 67 0F BB 06 66 67 0F BB                   BTC     DS:[ESI],EAX
0C8BH:  8E 34 12                                     JLE     1EC2H
0C90H:  00 00 66 2E 67 0F BB 1E 66 67 0F             Unknown instUnknown instBTC     CS:[ESI],EAX
0C99H:  BB 16 66 26                                  BTC     DS:[2666H],DX
0C9DH:  67 0F BB 26 66 36 67 0F                      BTC     DS:[ESI],SP
0CA5H:  BB 2E 66 64                                  BTC     DS:[6466H],BP
0CA9H:  67 0F BB 36 66 65 67 0F                      BTC     DS:[ESI],SI
0CB1H:  BB 3E 66 67                                  BTC     DS:[6766H],DI
0CB5H:  0F BB B4 40 00                               BTC     DS:[SI+0040H],SI
0CBDH:  01 00 00 66 3E 67 0F BB B4 AB 78 56 34       Unknown instUnknown instUnknown instBTC     DS:[ESP+ESI*4+345678AH√ word ptr $dword ptr $AX$CX$DX$BX$SP$BP$SI$DI$EAX$ECX$EDX$EBX$ESP$EBP$ESI$EDI$ES:$CS:$SS:$DS:$FS:$GS:$BX+SI$BX+DI$BP+SI$BP+DI$SI$DI$BP$BX$syÖãéëî#&),/258;?CGKOSW[_cgkoUnknown inst$AAD$BTC     $JO      $JNO     $JB      $JNB     $JZ      $JNZ     $JBE     $JNBE    $JS      $JNS     $JP      $JNP     $JL      $JNL     $JLE     $JNLE    $JCXZ    $JECXZ   $LOCK $◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊      ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊     ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  
              ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  Ò ˙     ' 0 9 B K T ] f o x Ò ˙     ' 0 9 B K T ] f o x ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ËË◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ‰	  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  Å ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ì  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ◊  ˇ “ gª¨¿–¿∞†fgª¨-@0 fª(fª)fª*fª+fªn fª,fª-fª®4fª©4fª™4fª´4fªÆ4fª¨4fª≠4f∫˝fªfªÒfªÚfªÛfªÙfªıfªˆfª˜fgªfgªé4  f.gªfgªf&gª&f6gª.fdgª6fegª>fgª¥@   f>gª¥´xV4fgªt- fgª4,fgª4⁄fgªtKfgª¥ë   fgª¥¿–¿  4V4´xË                                                                                                                                                                                                                                    ˇ? ˇ ù, Ë@ Gî VH	ØØ˛ [r˚R‹  ©   .      ©          ©      ù                        8                         `            §                      C    	      K    
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
ˇˇˇˇ                   Õ!À          T               COM                 /t COM                                                                                                                       ó »
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
0CC8H:  12 66 67 0F BB 74 2D 00 66 67                Unknown instBTC     SS:[ESP+ESI*2+6766002DH],ESI
0CD1H:  0F BB 34                                     BTC     DS:[SI],SI
0CD5H:  2C 66 67 0F BB 34                            Unknown instBTC     SS:[ESP+ESI],ESI
0CDBH:  DA 66 67 0F BB 74                            Unknown instBTC     SS:[ESP+ESI*2],ESI
0CE2H:  4B 01 66 67 0F BB B4                         Unknown instUnknown instBTC     SS:[ESP+ESI*4],ESI
0CECH:  91 00 01 00 00 66 67 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instBTC  #SS:[ESP+ESI*4],ESI
0CF6H:  C0 D0 C0 B0 A0 66 67 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instBTC  #SS:[ESP+ESI*4],ESI
0D00H:  2D 40 30 20 10 F0 66 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instLOCK C     DS:[SI],ESI
0D05H:  30 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D0AH:  31 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D0FH:  32 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D14H:  33 F0 66 0F BB                               Unknown instLOCK BTC     DS:[SI],ESI
0D18H:  76 00                                        JBE     0D1AH
0D1AH:  F0 66 0F BB 34                               LOCK BTC     DS:[SI],ESI
0D1FH:  F0 66 0F BB 35                               LOCK BTC     DS:[DI],ESI
0D24H:  F0 66 0F BB B0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESI
0D2BH:  F0 66 0F BB B1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESI
0D32H:  F0 66 0F BB B2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESI
0D39H:  F0 66 0F BB B3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESI
0D40H:  F0 66 0F BB B6 34 12                         LOCK BTC     SS:[BP+1234H],ESI
0D47H:  F0 66 0F BB B4 34 12                         LOCK BTC     DS:[SI+1234H],ESI
0D4EH:  F0 66 0F BB B5 34 12                         LOCK BTC     DS:[DI+1234H],ESI
0D55H:  66 0F BA FE 01                               BTC     ESI,01H
0D5AH:  66 0F BB F8                                  BTC     EAX,EDI
0D5EH:  66 0F BB F9                                  BTC     ECX,EDI
0D62H:  66 0F BB FA                                  BTC     EDX,EDI
0D66H:  66 0F BB FB                                  BTC     EBX,EDI
0D6AH:  66 0F BB FC                                  BTC     ESP,EDI
0D6EH:  66 0F BB FD                                  BTC     EBP,EDI
0D72H:  66 0F BB FE                                  BTC     ESI,EDI
0D76H:  66 0F BB FF                                  BTC     EDI,EDI
0D7AH:  66 67 0F BB 07                               BTC     DS:[EDI],EAX
0D7FH:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI+00001234H],ECX
0D88H:  66 2E 67 0F BB 1F                            BTC     CS:[EDI],EBX
0D8EH:  66 67 0F BB 17                               BTC     DS:[EDI],EDX
0D93H:  66 26 67 0F BB 27                            BTC     ES:[EDI],ESP
0D99H:  66 36 67 0F BB 2F                            BTC     SS:[EDI],EBP
0D9FH:  66 64 67 0F BB 37                            BTC     FS:[EDI],ESI
0DA5H:  66 65 67 0F BB 3F                            BTC     GS:[EDI],EDI
0DABH:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDI
0DB5H:  66 3E 67 0F BB BC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDI
0DC0H:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP+EBP],EDI
0DC7H:  66 67 0F BB 3C 2C                            BTC     SS:[ESP+EBP],EDI
0DCDH:  66 67 0F BB 3C DA                            BTC     DS:[EDX+EBX*8],EDI
0DD3H:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDI
0DDAH:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDI
0DE4H:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI
0DEEH:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDI
0DF8H:  F0 64 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC         DS:[SI],ESI

 FS:[EBX+EBP+0FFEEDDCCH],0A0H
0E04H:  F0 66 0F BB 38                               LOCK BTC     DS:[BX+SI],EDI
0E09H:  F0 66 0F BB 39                               LOCK BTC     DS:[BX+DI],EDI
0E0EH:  F0 66 0F BB 3A                               LOCK BTC     SS:[BP+SI],EDI
0E13H:  F0 66 0F BB 3B                               LOCK BTC     SS:[BP+DI],EDI
0E18H:  F0 66 0F BB 7E 00                            LOCK BTC     SS:[BP],EDI
0E1EH:  F0 66 0F BB 3C                               LOCK BTC     DS:[SI],EDI
0E23H:  F0 66 0F BB 3D                               LOCK BTC     DS:[DI],EDI
0E28H:  F0 66 0F BB B8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDI
0E2FH:  F0 66 0F BB B9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDI
0E36H:  F0 66 0F BB BA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDI
0E3DH:  F0 66 0F BB BB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDI
0E44H:  F0 66 0F BB BE 34 12                         LOCK BTC     SS:[BP+1234H],EDI
0E4BH:  F0 66 0F BB BC 34 12                         LOCK BTC     DS:[SI+1234H],EDI
0E52H:  F0 66 0F BB BD 34 12                         LOCK BTC     DS:[DI+1234H],EDI
0E59H:  66 0F BA FF 01                               BTC     EDI,01H
0E5EH:  0F BB C0                                     BTC     AX,AX
0E61H:  0F BB C1                                     BTC     CX,AX
0E64H:  0F BB C2                                     BTC     DX,AX
0E67H:  0F BB C3                                     BTC     BX,AX
0E6AH:  0F BB C4                                     BTC     SP,AX
0E6DH:  0F BB C5                                     BTC     BP,AX
0E70H:  0F BB C6                                     BTC     SI,AX
0E73H:  0F BB C7                                     BTC     DI,AX
0E76H:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234H],AX
0E7BH:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234H],AX
0E80H:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234H],AX
0E85H:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234H],AX
0E8AH:  0F BB 86 34 12                               BTC     SS:[BP+1234H],AX
0E8FH:  0F BB 84 34 12                               BTC     DS:[SI+1234H],AX
0E94H:  0F BB 85 34 12                               BTC     DS:[DI+1234H],AX
0E99H:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
0E9DH:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
0EA1H:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
0EA5H:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
0EA9H:  2E 0F BB 46 00                               BTC     CS:[BP],AX
0EAEH:  2E 0F BB 04                                  BTC     CS:[SI],AX
0EB2H:  2E 0F BB 05                                  BTC     CS:[DI],AX
0EB6H:  0F BB 00                                     BTC     DS:[BX+SI],AX
0EB9H:  0F BB 01                                     BTC     DS:[BX+DI],AX
0EBCH:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
0EC0H:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
0EC4H:  3E 0F BB 46 00                               BTC     DS:[BP],AX
0EC9H:  0F BB 04                                     BTC     DS:[SI],AX
0ECCH:  0F BB 05                                     BTC     DS:[DI],AX
0ECFH:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
0ED3H:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
0ED7H:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
0EDBH:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
0EDFH:  26 0F BB 46 00                               BTC     ES:[BP],AX
0EE4H:  26 0F BB 04                                  BTC     ES:[SI],AX
0EE8H:  26 0F BB 05                                  BTC     ES:[DI],AX
0EECH:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
0EF0H:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
0EF4H:  0F BB 02                                     BTC     SS:[BP+SI],AX
0EF7H:  0F BB 03                                     BTC     SS:[BP+DI],AX
0EFAH:  0F BB 46 00                                  BTC     SS:[BP],AX
0EFEH:  36 0F BB 04                                  BTC     SS:[SI],AX
0F02H:  36 0F BB 05                                  BTC     SS:[DI],AX
0F06H:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
0F0AH:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
0F0EH:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
0F12H:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
0F16H:  64 0F BB 46 00                               BTC     FS:[BP],AX
0F1BH:  64 0F BB 04                                  BTC     FS:[SI],AX
0F1FH:  64 0F BB 05                                  BTC     FS:[DI],AX
0F23H:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
0F27H:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
0F2BH:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
0F2FH:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
0F33H:  65 0F BB 46 00                               BTC     GS:[BP],AX
0F38H:  65 0F BB 04                                  BTC     GS:[SI],AX
0F3CH:  65 0F BB 05                                  BTC     GS:[DI],AX
0F40H:  0F BA F8 01                                  BTC     AX,01H
0F44H:  0F BA F8 FF                                  BTC     AX,0FFH
0F48H:  0F BB C8                                     BTC     AX,CX
0F4BH:  0F BB C9                                     BTC     CX,CX
0F4EH:  0F BB CA                                     BTC     DX,CX
0F51H:  0F BB CB                                     BTC     BX,CX
0F54H:  0F BB CC                                     BTC     SP,CX
0F57H:  0F BB CD                                     BTC     BP,CX
0F5AH:  0F BB CE                                     BTC     SI,CX
0F5DH:  0F BB CF                                     BTC     DI,CX
0F60H:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234H],CX
0F65H:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234H],CX
0F6AH:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234H],CX
0F6FH:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234H],CX
0F74H:  0F BB 8E 34 12                               BTC     SS:[BP+1234H],CX
0F79H:  0F BB 8C 34 12                               BTC     DS:[SI+1234H],CX
0F7EH:  0F BB 8D 34 12                               BTC     DS:[DI+1234H],CX
0F83H:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
0F87H:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
0F8BH:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
0F8FH:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
0F93H:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
0F98H:  2E 0F BB 0C                                  BTC     CS:[SI],CX
0F9CH:  2E 0F BB 0D                                  BTC     CS:[DI],CX
0FA0H:  0F BB 08                                     BTC     DS:[BX+SI],CX
0FA3H:  0F BB 09                                     BTC     DS:[BX+DI],CX
0FA6H:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
0FAAH:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
0FAEH:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
0FB3H:  0F BB 0C                                     BTC     DS:[SI],CX
0FB6H:  0F BB 0D                                     BTC     DS:[DI],CX
0FB9H:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
0FBDH:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
0FC1H:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
0FC5H:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
0FC9H:  26 0F BB 4E 00                               BTC     ES:[BP],CX
0FCEH:  26 0F BB 0C                                  BTC     ES:[SI],CX
0FD2H:  26 0F BB 0D                                  BTC     ES:[DI],CX
0FD6H:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
0FDAH:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
0FDEH:  0F BB 0A                                     BTC     SS:[BP+SI],CX
0FE1H:  0F BB 0B                                     BTC     SS:[BP+DI],CX
0FE4H:  0F BB 4E 00                                  BTC     SS:[BP],CX
0FE8H:  36 0F BB 0C                                  BTC     SS:[SI],CX
0FECH:  36 0F BB 0D                                  BTC     SS:[DI],CX
0FF0H:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
0FF4H:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
0FF8H:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
0FFCH:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
1000H:  64 0F BB 4E 00                               BTC     FS:[BP],CX
1005H:  64 0F BB 0C                                  BTC     FS:[SI],CX
1009H:  64 0F BB 0D                                  BTC     FS:[DI],CX
100DH:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
1011H:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
1015H:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
1019H:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
101DH:  65 0F BB 4E 00                               BTC     GS:[BP],CX
1022H:  65 0F BB 0C                                  BTC     GS:[SI],CX
1026H:  65 0F BB 0D                                  BTC     GS:[DI],CX
102AH:  0F BA F9 01                                  BTC     CX,01H
102EH:  0F BA F9 FF                                  BTC     CX,0FFH
1032H:  0F BB D0                                     BTC     AX,DX
1035H:  0F BB D1                                     BTC     CX,DX
1038H:  0F BB D2                                     BTC     DX,DX
103BH:  0F BB D3                                     BTC     BX,DX
103EH:  0F BB D4                                     BTC     SP,DX
1041H:  0F BB D5                                     BTC     BP,DX
1044H:  0F BB D6                                     BTC     SI,DX
1047H:  0F BB D7                                     BTC     DI,DX
104AH:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234H],DX
104FH:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234H],DX
1054H:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234H],DX
1059H:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234H],DX
105EH:  0F BB 96 34 12                               BTC     SS:[BP+1234H],DX
1063H:  0F BB 94 34 12                               BTC     DS:[SI+1234H],DX
1068H:  0F BB 95 34 12                               BTC     DS:[DI+1234H],DX
106DH:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
1071H:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
1075H:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
1079H:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
107DH:  2E 0F BB 56 00                               BTC     CS:[BP],DX
1082H:  2E 0F BB 14                                  BTC     CS:[SI],DX
1086H:  2E 0F BB 15                                  BTC     CS:[DI],DX
108AH:  0F BB 10                                     BTC     DS:[BX+SI],DX
108DH:  0F BB 11                                     BTC     DS:[BX+DI],DX
1090H:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
1094H:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
1098H:  3E 0F BB 56 00                               BTC     DS:[BP],DX
109DH:  0F BB 14                                     BTC     DS:[SI],DX
10A0H:  0F BB 15                                     BTC     DS:[DI],DX
10A3H:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
10A7H:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
10ABH:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
10AFH:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
10B3H:  26 0F BB 56 00                               BTC     ES:[BP],DX
10B8H:  26 0F BB 14                                  BTC     ES:[SI],DX
10BCH:  26 0F BB 15                                  BTC     ES:[DI],DX
10C0H:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
10C4H:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
10C8H:  0F BB 12                                     BTC     SS:[BP+SI],DX
10CBH:  0F BB 13                                     BTC     SS:[BP+DI],DX
10CEH:  0F BB 56 00                                  BTC     SS:[BP],DX
10D2H:  36 0F BB 14                                  BTC     SS:[SI],DX
10D6H:  36 0F BB 15                                  BTC     SS:[DI],DX
10DAH:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
10DEH:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
10E2H:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
10E6H:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
10EAH:  64 0F BB 56 00                               BTC     FS:[BP],DX
10EFH:  64 0F BB 14                                  BTC     FS:[SI],DX
10F3H:  64 0F BB 15                                  BTC     FS:[DI],DX
10F7H:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
10FBH:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
10FFH:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
1103H:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
1107H:  65 0F BB 56 00                               BTC     GS:[BP],DX
110CH:  65 0F BB 14                                  BTC     GS:[SI],DX
1110H:  65 0F BB 15                                  BTC     GS:[DI],DX
1114H:  0F BA FA 01                                  BTC     DX,01H
1118H:  0F BA FA FF                                  BTC     DX,0FFH
111CH:  0F BB D8                                     BTC     AX,BX
111FH:  0F BB D9                                     BTC     CX,BX
1122H:  0F BB DA                                     BTC     DX,BX
1125H:  0F BB DB                                     BTC     BX,BX
1128H:  0F BB DC                                     BTC     SP,BX
112BH:  0F BB DD                                     BTC     BP,BX
112EH:  0F BB DE                                     BTC     SI,BX
1131H:  0F BB DF                                     BTC     DI,BX
1134H:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234H],BX
1139H:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234H],BX
113EH:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234H],BX
1143H:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234H],BX
1148H:  0F BB 9E 34 12                               BTC     SS:[BP+1234H],BX
114DH:  0F BB 9C 34 12                               BTC     DS:[SI+1234H],BX
1152H:  0F BB 9D 34 12                               BTC     DS:[DI+1234H],BX
1157H:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
115BH:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
115FH:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
1163H:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
1167H:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
116CH:  2E 0F BB 1C                                  BTC     CS:[SI],BX
1170H:  2E 0F BB 1D                                  BTC     CS:[DI],BX
1174H:  0F BB 18                                     BTC     DS:[BX+SI],BX
1177H:  0F BB 19                                     BTC     DS:[BX+DI],BX
117AH:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
117EH:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
1182H:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
1187H:  0F BB 1C                                     BTC     DS:[SI],BX
118AH:  0F BB 1D                                     BTC     DS:[DI],BX
118DH:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
1191H:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
1195H:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
1199H:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
119DH:  26 0F BB 5E 00                               BTC     ES:[BP],BX
11A2H:  26 0F BB 1C                                  BTC     ES:[SI],BX
11A6H:  26 0F BB 1D                                  BTC     ES:[DI],BX
11AAH:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
11AEH:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
11B2H:  0F BB 1A                                     BTC     SS:[BP+SI],BX
11B5H:  0F BB 1B                                     BTC     SS:[BP+DI],BX
11B8H:  0F BB 5E 00                                  BTC     SS:[BP],BX
11BCH:  36 0F BB 1C                                  BTC     SS:[SI],BX
11C0H:  36 0F BB 1D                                  BTC     SS:[DI],BX
11C4H:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
11C8H:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
11CCH:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
11D0H:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
11D4H:  64 0F BB 5E 00                               BTC     FS:[BP],BX
11D9H:  64 0F BB 1C                                  BTC     FS:[SI],BX
11DDH:  64 0F BB 1D                                  BTC     FS:[DI],BX
11E1H:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
11E5H:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
11E9H:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
11EDH:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
11F1H:  65 0F BB 5E 00                               BTC     GS:[BP],BX
11F6H:  65 0F BB 1C                                  BTC     GS:[SI],BX
11FAH:  65 0F BB 1D                                  BTC     GS:[DI],BX
11FEH:  0F BA FB 01                                  BTC     BX,01H
1202H:  0F BA FB FF                                  BTC     BX,0FFH
1206H:  0F BB E0                                     BTC     AX,SP
1209H:  0F BB E1                                     BTC     CX,SP
120CH:  0F BB E2                                     BTC     DX,SP
120FH:  0F BB E3                                     BTC     BX,SP
1212H:  0F BB E4                                     BTC     SP,SP
1215H:  0F BB E5                                     BTC     BP,SP
1218H:  0F BB E6                                     BTC     SI,SP
121BH:  0F BB E7                                     BTC     DI,SP
121EH:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234H],SP
1223H:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234H],SP
1228H:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234H],SP
122DH:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234H],SP
1232H:  0F BB A6 34 12                               BTC     SS:[BP+1234H],SP
1237H:  0F BB A4 34 12                               BTC     DS:[SI+1234H],SP
123CH:  0F BB A5 34 12                               BTC     DS:[DI+1234H],SP
1241H:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
1245H:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
1249H:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
124DH:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
1251H:  2E 0F BB 66 00                               BTC     CS:[BP],SP
1256H:  2E 0F BB 24                                  BTC     CS:[SI],SP
125AH:  2E 0F BB 25                                  BTC     CS:[DI],SP
125EH:  0F BB 20                                     BTC     DS:[BX+SI],SP
1261H:  0F BB 21                                     BTC     DS:[BX+DI],SP
1264H:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
1268H:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
126CH:  3E 0F BB 66 00                               BTC     DS:[BP],SP
1271H:  0F BB 24                                     BTC     DS:[SI],SP
1274H:  0F BB 25                                     BTC     DS:[DI],SP
1277H:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
127BH:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
127FH:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
1283H:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
1287H:  26 0F BB 66 00                               BTC     ES:[BP],SP
128CH:  26 0F BB 24                                  BTC     ES:[SI],SP
1290H:  26 0F BB 25                                  BTC     ES:[DI],SP
1294H:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
1298H:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
129CH:  0F BB 22                                     BTC     SS:[BP+SI],SP
129FH:  0F BB 23                                     BTC     SS:[BP+DI],SP
12A2H:  0F BB 66 00                                  BTC     SS:[BP],SP
12A6H:  36 0F BB 24                                  BTC     SS:[SI],SP
12AAH:  36 0F BB 25                                  BTC     SS:[DI],SP
12AEH:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
12B2H:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
12B6H:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
12BAH:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
12BEH:  64 0F BB 66 00                               BTC     FS:[BP],SP
12C3H:  64 0F BB 24                                  BTC     FS:[SI],SP
12C7H:  64 0F BB 25                                  BTC     FS:[DI],SP
12CBH:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
12CFH:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
12D3H:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
12D7H:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
12DBH:  65 0F BB 66 00                               BTC     GS:[BP],SP
12E0H:  65 0F BB 24                                  BTC     GS:[SI],SP
12E4H:  65 0F BB 25                                  BTC     GS:[DI],SP
12E8H:  0F BA FC 01                                  BTC     SP,01H
12ECH:  0F BA FC FF                                  BTC     SP,0FFH
12F0H:  0F BB E8                                     BTC     AX,BP
12F3H:  0F BB E9                                     BTC     CX,BP
12F6H:  0F BB EA                                     BTC     DX,BP
12F9H:  0F BB EB                                     BTC     BX,BP
12FCH:  0F BB EC                                     BTC     SP,BP
12FFH:  0F BB ED                                     BTC     BP,BP
1302H:  0F BB EE                                     BTC     SI,BP
1305H:  0F BB EF                                     BTC     DI,BP
1308H:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234H],BP
130DH:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234H],BP
1312H:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234H],BP
1317H:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234H],BP
131CH:  0F BB AE 34 12                               BTC     SS:[BP+1234H],BP
1321H:  0F BB AC 34 12                               BTC     DS:[SI+1234H],BP
1326H:  0F BB AD 34 12                               BTC     DS:[DI+1234H],BP
132BH:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
132FH:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
1333H:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
1337H:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
133BH:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
1340H:  2E 0F BB 2C                                  BTC     CS:[SI],BP
1344H:  2E 0F BB 2D                                  BTC     CS:[DI],BP
1348H:  0F BB 28                                     BTC     DS:[BX+SI],BP
134BH:  0F BB 29                                     BTC     DS:[BX+DI],BP
134EH:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
1352H:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
1356H:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
135BH:  0F BB 2C                                     BTC     DS:[SI],BP
135EH:  0F BB 2D                                     BTC     DS:[DI],BP
1361H:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
1365H:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
1369H:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
136DH:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
1371H:  26 0F BB 6E 00                               BTC     ES:[BP],BP
1376H:  26 0F BB 2C                                  BTC     ES:[SI],BP
137AH:  26 0F BB 2D                                  BTC     ES:[DI],BP
137EH:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
1382H:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
1386H:  0F BB 2A                                     BTC     SS:[BP+SI],BP
1389H:  0F BB 2B                                     BTC     SS:[BP+DI],BP
138CH:  0F BB 6E 00                                  BTC     SS:[BP],BP
1390H:  36 0F BB 2C                                  BTC     SS:[SI],BP
1394H:  36 0F BB 2D                                  BTC     SS:[DI],BP
1398H:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
139CH:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
13A0H:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
13A4H:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
13A8H:  64 0F BB 6E 00                               BTC     FS:[BP],BP
13ADH:  64 0F BB 2C                                  BTC     FS:[SI],BP
13B1H:  64 0F BB 2D                                  BTC     FS:[DI],BP
13B5H:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
13B9H:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
13BDH:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
13C1H:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
13C5H:  65 0F BB 6E 00                               BTC     GS:[BP],BP
13CAH:  65 0F BB 2C                                  BTC     GS:[SI],BP
13CEH:  65 0F BB 2D                                  BTC     GS:[DI],BP
13D2H:  0F BA FD 01                                  BTC     BP,01H
13D6H:  0F BA FD FF                                  BTC     BP,0FFH
13DAH:  0F BB F0                                     BTC     AX,SI
13DDH:  0F BB F1                                     BTC     CX,SI
13E0H:  0F BB F2                                     BTC     DX,SI
13E3H:  0F BB F3                                     BTC     BX,SI
13E6H:  0F BB F4                                     BTC     SP,SI
13E9H:  0F BB F5                                     BTC     BP,SI
13ECH:  0F BB F6                                     BTC     SI,SI
13EFH:  0F BB F7                                     BTC     DI,SI
13F2H:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234H],SI
13F7H:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234H],SI
13FCH:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234H],SI
1401H:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234H],SI
1406H:  0F BB B6 34 12                               BTC     SS:[BP+1234H],SI
140BH:  0F BB B4 34 12                               BTC     DS:[SI+1234H],SI
1410H:  0F BB B5 34 12                               BTC     DS:[DI+1234H],SI
1415H:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
1419H:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
141DH:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
1421H:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
1425H:  2E 0F BB 76 00                               BTC     CS:[BP],SI
142AH:  2E 0F BB 34                                  BTC     CS:[SI],SI
142EH:  2E 0F BB 35                                  BTC     CS:[DI],SI
1432H:  0F BB 30                                     BTC     DS:[BX+SI],SI
1435H:  0F BB 31                                     BTC     DS:[BX+DI],SI
1438H:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
143CH:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
1440H:  3E 0F BB 76 00                               BTC     DS:[BP],SI
1445H:  0F BB 34                                     BTC     DS:[SI],SI
1448H:  0F BB 35                                     BTC     DS:[DI],SI
144BH:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
144FH:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
1453H:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
1457H:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
145BH:  26 0F BB 76 00                               BTC     ES:[BP],SI
1460H:  26 0F BB 34                                  BTC     ES:[SI],SI
1464H:  26 0F BB 35                                  BTC     ES:[DI],SI
1468H:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
146CH:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
1470H:  0F BB 32                                     BTC     SS:[BP+SI],SI
1473H:  0F BB 33                                     BTC     SS:[BP+DI],SI
1476H:  0F BB 76 00                                  BTC     SS:[BP],SI
147AH:  36 0F BB 34                                  BTC     SS:[SI],SI
147EH:  36 0F BB 35                                  BTC     SS:[DI],SI
1482H:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
1486H:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
148AH:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
148EH:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
1492H:  64 0F BB 76 00                               BTC     FS:[BP],SI
1497H:  64 0F BB 34                                  BTC     FS:[SI],SI
149BH:  64 0F BB 35                                  BTC     FS:[DI],SI
149FH:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
14A3H:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
14A7H:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
14ABH:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
14AFH:  65 0F BB 76 00                               BTC     GS:[BP],SI
14B4H:  65 0F BB 34                                  BTC     GS:[SI],SI
14B8H:  65 0F BB 35                                  BTC     GS:[DI],SI
14BCH:  0F BA FE 01                                  BTC     SI,01H
14C0H:  0F BA FE FF                                  BTC     SI,0FFH
14C4H:  0F BB F8                                     BTC     AX,DI
14C7H:  0F BB F9                                     BTC     CX,DI
14CAH:  0F BB FA                                     BTC     DX,DI
14CDH:  0F BB FB                                     BTC     BX,DI
14D0H:  0F BB FC                                     BTC     SP,DI
14D3H:  0F BB FD                                     BTC     BP,DI
14D6H:  0F BB FE                                     BTC     SI,DI
14D9H:  0F BB FF                                     BTC     DI,DI
14DCH:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234H],DI
14E1H:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234H],DI
14E6H:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234H],DI
14EBH:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234H],DI
14F0H:  0F BB BE 34 12                               BTC     SS:[BP+1234H],DI
14F5H:  0F BB BC 34 12                               BTC     DS:[SI+1234H],DI
14FAH:  0F BB BD 34 12                               BTC     DS:[DI+1234H],DI
14FFH:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
1503H:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
1507H:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
150BH:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
150FH:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
1514H:  2E 0F BB 3C                                  BTC     CS:[SI],DI
1518H:  2E 0F BB 3D                                  BTC     CS:[DI],DI
151CH:  0F BB 38                                     BTC     DS:[BX+SI],DI
151FH:  0F BB 39                                     BTC     DS:[BX+DI],DI
1522H:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
1526H:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
152AH:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
152FH:  0F BB 3C                                     BTC     DS:[SI],DI
1532H:  0F BB 3D                                     BTC     DS:[DI],DI
1535H:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
1539H:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
153DH:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
1541H:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
1545H:  26 0F BB 7E 00                               BTC     ES:[BP],DI
154AH:  26 0F BB 3C                                  BTC     ES:[SI],DI
154EH:  26 0F BB 3D                                  BTC     ES:[DI],DI
1552H:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
1556H:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
155AH:  0F BB 3A                                     BTC     SS:[BP+SI],DI
155DH:  0F BB 3B                                     BTC     SS:[BP+DI],DI
1560H:  0F BB 7E 00                                  BTC     SS:[BP],DI
1564H:  36 0F BB 3C                                  BTC     SS:[SI],DI
1568H:  36 0F BB 3D                                  BTC     SS:[DI],DI
156CH:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
1570H:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
1574H:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
1578H:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
157CH:  64 0F BB 7E 00                               BTC     FS:[BP],DI
1581H:  64 0F BB 3C                                  BTC     FS:[SI],DI
1585H:  64 0F BB 3D                                  BTC     FS:[DI],DI
1589H:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
158DH:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
1591H:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
1595H:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
1599H:  65 0F BB 7E 00                               BTC     GS:[BP],DI
159EH:  65 0F BB 3C                                  BTC     GS:[SI],DI
15A2H:  65 0F BB 3D                                  BTC     GS:[DI],DI
15A6H:  0F BA FF 01                                  BTC     DI,01H
15AAH:  0F BA FF FF                                  BTC     DI,0FFH
15AEH:  66 0F BA F8 FF                               BTC     EAX,0FFH
15B3H:  66 0F BA F9 FF                               BTC     ECX,0FFH
15B8H:  66 0F BA FA FF                               BTC     EDX,0FFH
15BDH:  66 0F BA FB FF                               BTC     EBX,0FFH
15C2H:  66 0F BA FC FF                               BTC     ESP,0FFH
15C7H:  66 0F BA FD FF                               BTC     EBP,0FFH
15CCH:  66 0F BA FE FF                               BTC     ESI,0FFH
15D1H:  66 0F BA FF FF                               BTC     EDI,0FFH
15D6H:  0F 80 36 01                                  JO      1710H
15DAH:  0F 81 22 EB                                  JNO     0100H
15DEH:  0F 82 2E 01                                  JB      1710H
15E2H:  0F 83 1A EB                                  JNB     0100H
15E6H:  0F 84 26 01                                  JZ      1710H
15EAH:  0F 85 12 EB                                  JNZ     0100H
15EEH:  0F 86 1E 01                                  JBE     1710H
15F2H:  0F 87 0A EB                                  JNBE    0100H
15F6H:  0F 88 16 01                                  JS      1710H
15FAH:  0F 89 02 EB                                  JNS     0100H
15FEH:  0F 8A 0E 01                                  JP      1710H
1602H:  0F 8B FA EA                                  JNP     0100H
1606H:  0F 8C 06 01                                  JL      1710H
160AH:  0F 8D F2 EA                                  JNL     0100H
160EH:  0F 8E FE 00                                  JLE     1710H
1612H:  0F 8F EA EA                                  JNLE    0100H
1616H:  70 FE                                        JO      1616H
1618H:  71 21                                        JNO     163BH
161AH:  72 FA                                        JB      1616H
161CH:  73 1D                                        JNB     163BH
161EH:  74 F6                                        JZ      1616H
1620H:  75 19                                        JNZ     163BH
1622H:  76 F2                                        JBE     1616H
1624H:  77 15                                        JNBE    163BH
1626H:  78 EE                                        JS      1616H
1628H:  79 11                                        JNS     163BH
162AH:  7A EA                                        JP      1616H
162CH:  7B 0D                                        JNP     163BH
162EH:  7C E6                                        JL      1616H
1630H:  7D 09                                        JNL     163BH
1632H:  7E E2                                        JLE     1616H
1634H:  7F 05                                        JNLE    163BH
1636H:  E3 DE                                        JCXZ    1616H
1638H:  67 E3 00                                     JECXZ   163BH
163BH:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
1645H:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
164FH:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
1659H:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
1663H:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
166CH:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
1675H:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     ],ESI

 SS:[EBX+EAX*8+12345678H],9AH
1682H:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
168CH:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
1696H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
16A0H:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
16AAH:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
16B3H:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
16BCH:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     ],ESI

 SS:[EBX+EAX*8+12345678H],9AH
16C9H:  F0 67 0F BB 84 EB 21 43 00 00                LOCK BTC     DS:[EBX+EBP*8+00004321H],AX
16D3H:  F0 67 0F BB 85 21 43 00 00                   LOCK BTC     SS:[EBP+00004321H],AX
16DCH:  F0 67 0F BB 04 8D 21 43 00 00                LOCK BTC     DS:[ECX*4+00004321H],AX
16E6H:  F0 67 0F BB 04 ED B0 00 00 00                LOCK BTC     SS:[EBP*8+000000B0H],AX
16F0H:  F0 67 0F BB 04 B5 21 43 00 00                LOCK BTC     DS:[ESI*4+00004321H],AX
16FAH:  F0 67 0F BB 04 7D 21 43 65 87                LOCK BTC     DS:[EDI*2+87654321H],AX
1704H:  F0 66 67 0F BA BC 9D 78 56 34 12 9A          LOCK BTC     ],ESI

 SS:[EBP+EBX*4+12345678H],9AH
1710H:  D5 0A                                        AAD
