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
