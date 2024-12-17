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
016CH:  66 67 0F BA 3C 24 FF                         BTC     dword ptr SS:[ESP],0FFH
0173H:  0F BB 00                                     BTC     DS:[BX+SI],AX
0176H:  0F BB 01                                     BTC     DS:[BX+DI],AX
0179H:  0F BB 02                                     BTC     SS:[BP+SI],AX
017CH:  0F BB 03                                     BTC     SS:[BP+DI],AX
017FH:  0F BB 46 00                                  BTC     SS:[BP],AX
0183H:  0F BB 04                                     BTC     DS:[SI],AX
0186H:  0F BB 05                                     BTC     DS:[DI],AX
0189H:  0F BB 87 DC FE                               BTC     DS:[BX+0FEDCH],AX
018EH:  F0 66 67 0F BA BC D8 21 43 65 A7 FF          LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH
019AH:  F0 67 0F BA BC E8 21 43 65 87 FF             LOCK BTC     word ptr DS:[EAX+EBP*8+87654321H],0FFH
01A5H:  F0 66 2E 67 0F BB 84 D8 21 43 65 B7          LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX
01B1H:  F0 3E 67 0F BB 84 E8 21 43 65 87             LOCK BTC     DS:[EAX+EBP*8+87654321H],AX
01BCH:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
01C2H:  36 67 0F BB 05 78 56 34 12                   BTC     SS:[12345678H],AX
01CBH:  66 64 0F BA 3E 23 01 01                      BTC     dword ptr FS:[0123H],01H
01D3H:  66 65 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr GS:[12345678H],10H
01DEH:  0F BB 06 34 12                               BTC     DS:[1234H],AX
01E3H:  67 0F BB 05 78 56 34 12                      BTC     DS:[12345678H],AX
01EBH:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
01F3H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
01FEH:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
0204H:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678H],AX
020DH:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
0215H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
0220H:  0F BA 38 A0                                  BTC     word ptr DS:[BX+SI],0A0H
0224H:  66 0F BA 38 B0                               BTC     dword ptr DS:[BX+SI],0B0H
0229H:  0F BA 39 A0                                  BTC     word ptr DS:[BX+DI],0A0H
022DH:  66 0F BA 39 B0                               BTC     dword ptr DS:[BX+DI],0B0H
0232H:  0F BA 3A A0                                  BTC     word ptr SS:[BP+SI],0A0H
0236H:  66 0F BA 3A B0                               BTC     dword ptr SS:[BP+SI],0B0H
023BH:  0F BA 3B A0                                  BTC     word ptr SS:[BP+DI],0A0H
023FH:  66 0F BA 3B B0                               BTC     dword ptr SS:[BP+DI],0B0H
0244H:  0F BA 7E 00 A0                               BTC     word ptr SS:[BP],0A0H
0249H:  66 0F BA 7E 00 B0                            BTC     dword ptr SS:[BP],0B0H
024FH:  0F BA 3D A0                                  BTC     word ptr DS:[DI],0A0H
0253H:  66 0F BA 3D B0                               BTC     dword ptr DS:[DI],0B0H
0258H:  0F BA 3C A0                                  BTC     word ptr DS:[SI],0A0H
025CH:  66 0F BA 3C B0                               BTC     dword ptr DS:[SI],0B0H
0261H:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],AX
026AH:  3E 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],AX
0274H:  67 0F BB 44 2D 00                            BTC     SS:[EBP+EBP],AX
027AH:  67 0F BB 04 2C                               BTC     SS:[ESP+EBP],AX
027FH:  67 0F BB 04 DA                               BTC     DS:[EDX+EBX*8],AX
0284H:  67 0F BB 44 4B 01                            BTC     DS:[EBX+ECX*2+01H],AX
028AH:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],AX
0293H:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX
029CH:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],AX
02A5H:  F0 0F BB 80 34 12                            LOCK BTC     DS:[BX+SI+1234H],AX
02ABH:  F0 0F BB 81 34 12                            LOCK BTC     DS:[BX+DI+1234H],AX
02B1H:  F0 0F BB 82 34 12                            LOCK BTC     SS:[BP+SI+1234H],AX
02B7H:  F0 0F BB 83 34 12                            LOCK BTC     SS:[BP+DI+1234H],AX
02BDH:  F0 0F BB 86 34 12                            LOCK BTC     SS:[BP+1234H],AX
02C3H:  F0 0F BB 84 34 12                            LOCK BTC     DS:[SI+1234H],AX
02C9H:  F0 0F BB 85 34 12                            LOCK BTC     DS:[DI+1234H],AX
02CFH:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],CX
02D8H:  3E 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],CX
02E2H:  67 0F BB 4C 2D 00                            BTC     SS:[EBP+EBP],CX
02E8H:  67 0F BB 0C 2C                               BTC     SS:[ESP+EBP],CX
02EDH:  67 0F BB 0C DA                               BTC     DS:[EDX+EBX*8],CX
02F2H:  67 0F BB 4C 4B 01                            BTC     DS:[EBX+ECX*2+01H],CX
02F8H:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],CX
0301H:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX
030AH:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],CX
0313H:  F0 0F BB 08                                  LOCK BTC     DS:[BX+SI],CX
0317H:  F0 0F BB 09                                  LOCK BTC     DS:[BX+DI],CX
031BH:  F0 0F BB 0A                                  LOCK BTC     SS:[BP+SI],CX
031FH:  F0 0F BB 0B                                  LOCK BTC     SS:[BP+DI],CX
0323H:  F0 0F BB 4E 00                               LOCK BTC     SS:[BP],CX
0328H:  F0 0F BB 0C                                  LOCK BTC     DS:[SI],CX
032CH:  F0 0F BB 0D                                  LOCK BTC     DS:[DI],CX
0330H:  F0 0F BB 88 34 12                            LOCK BTC     DS:[BX+SI+1234H],CX
0336H:  F0 0F BB 89 34 12                            LOCK BTC     DS:[BX+DI+1234H],CX
033CH:  F0 0F BB 8A 34 12                            LOCK BTC     SS:[BP+SI+1234H],CX
0342H:  F0 0F BB 8B 34 12                            LOCK BTC     SS:[BP+DI+1234H],CX
0348H:  F0 0F BB 8E 34 12                            LOCK BTC     SS:[BP+1234H],CX
034EH:  F0 0F BB 8C 34 12                            LOCK BTC     DS:[SI+1234H],CX
0354H:  F0 0F BB 8D 34 12                            LOCK BTC     DS:[DI+1234H],CX
035AH:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DX
0363H:  3E 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DX
036DH:  67 0F BB 54 2D 00                            BTC     SS:[EBP+EBP],DX
0373H:  67 0F BB 14 2C                               BTC     SS:[ESP+EBP],DX
0378H:  67 0F BB 14 DA                               BTC     DS:[EDX+EBX*8],DX
037DH:  67 0F BB 54 4B 01                            BTC     DS:[EBX+ECX*2+01H],DX
0383H:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DX
038CH:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX
0395H:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DX
039EH:  F0 0F BB 10                                  LOCK BTC     DS:[BX+SI],DX
03A2H:  F0 0F BB 11                                  LOCK BTC     DS:[BX+DI],DX
03A6H:  F0 0F BB 12                                  LOCK BTC     SS:[BP+SI],DX
03AAH:  F0 0F BB 13                                  LOCK BTC     SS:[BP+DI],DX
03AEH:  F0 0F BB 56 00                               LOCK BTC     SS:[BP],DX
03B3H:  F0 0F BB 14                                  LOCK BTC     DS:[SI],DX
03B7H:  F0 0F BB 15                                  LOCK BTC     DS:[DI],DX
03BBH:  F0 0F BB 90 34 12                            LOCK BTC     DS:[BX+SI+1234H],DX
03C1H:  F0 0F BB 91 34 12                            LOCK BTC     DS:[BX+DI+1234H],DX
03C7H:  F0 0F BB 92 34 12                            LOCK BTC     SS:[BP+SI+1234H],DX
03CDH:  F0 0F BB 93 34 12                            LOCK BTC     SS:[BP+DI+1234H],DX
03D3H:  F0 0F BB 96 34 12                            LOCK BTC     SS:[BP+1234H],DX
03D9H:  F0 0F BB 94 34 12                            LOCK BTC     DS:[SI+1234H],DX
03DFH:  F0 0F BB 95 34 12                            LOCK BTC     DS:[DI+1234H],DX
03E5H:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BX
03EEH:  3E 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BX
03F8H:  67 0F BB 5C 2D 00                            BTC     SS:[EBP+EBP],BX
03FEH:  67 0F BB 1C 2C                               BTC     SS:[ESP+EBP],BX
0403H:  67 0F BB 1C DA                               BTC     DS:[EDX+EBX*8],BX
0408H:  67 0F BB 5C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BX
040EH:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BX
0417H:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX
0420H:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BX
0429H:  F0 0F BB 18                                  LOCK BTC     DS:[BX+SI],BX
042DH:  F0 0F BB 19                                  LOCK BTC     DS:[BX+DI],BX
0431H:  F0 0F BB 1A                                  LOCK BTC     SS:[BP+SI],BX
0435H:  F0 0F BB 1B                                  LOCK BTC     SS:[BP+DI],BX
0439H:  F0 0F BB 5E 00                               LOCK BTC     SS:[BP],BX
043EH:  F0 0F BB 1C                                  LOCK BTC     DS:[SI],BX
0442H:  F0 0F BB 1D                                  LOCK BTC     DS:[DI],BX
0446H:  F0 0F BB 98 34 12                            LOCK BTC     DS:[BX+SI+1234H],BX
044CH:  F0 0F BB 99 34 12                            LOCK BTC     DS:[BX+DI+1234H],BX
0452H:  F0 0F BB 9A 34 12                            LOCK BTC     SS:[BP+SI+1234H],BX
0458H:  F0 0F BB 9B 34 12                            LOCK BTC     SS:[BP+DI+1234H],BX
045EH:  F0 0F BB 9E 34 12                            LOCK BTC     SS:[BP+1234H],BX
0464H:  F0 0F BB 9C 34 12                            LOCK BTC     DS:[SI+1234H],BX
046AH:  F0 0F BB 9D 34 12                            LOCK BTC     DS:[DI+1234H],BX
0470H:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SP
0479H:  3E 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SP
0483H:  67 0F BB 64 2D 00                            BTC     SS:[EBP+EBP],SP
0489H:  67 0F BB 24 2C                               BTC     SS:[ESP+EBP],SP
048EH:  67 0F BB 24 DA                               BTC     DS:[EDX+EBX*8],SP
0493H:  67 0F BB 64 4B 01                            BTC     DS:[EBX+ECX*2+01H],SP
0499H:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SP
04A2H:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP
04ABH:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SP
04B4H:  F0 0F BB 20                                  LOCK BTC     DS:[BX+SI],SP
04B8H:  F0 0F BB 21                                  LOCK BTC     DS:[BX+DI],SP
04BCH:  F0 0F BB 22                                  LOCK BTC     SS:[BP+SI],SP
04C0H:  F0 0F BB 23                                  LOCK BTC     SS:[BP+DI],SP
04C4H:  F0 0F BB 66 00                               LOCK BTC     SS:[BP],SP
04C9H:  F0 0F BB 24                                  LOCK BTC     DS:[SI],SP
04CDH:  F0 0F BB 25                                  LOCK BTC     DS:[DI],SP
04D1H:  F0 0F BB A0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SP
04D7H:  F0 0F BB A1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SP
04DDH:  F0 0F BB A2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SP
04E3H:  F0 0F BB A3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SP
04E9H:  F0 0F BB A6 34 12                            LOCK BTC     SS:[BP+1234H],SP
04EFH:  F0 0F BB A4 34 12                            LOCK BTC     DS:[SI+1234H],SP
04F5H:  F0 0F BB A5 34 12                            LOCK BTC     DS:[DI+1234H],SP
04FBH:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BP
0504H:  3E 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BP
050EH:  67 0F BB 6C 2D 00                            BTC     SS:[EBP+EBP],BP
0514H:  67 0F BB 2C 2C                               BTC     SS:[ESP+EBP],BP
0519H:  67 0F BB 2C DA                               BTC     DS:[EDX+EBX*8],BP
051EH:  67 0F BB 6C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BP
0524H:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BP
052DH:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP
0536H:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BP
053FH:  F0 0F BB 28                                  LOCK BTC     DS:[BX+SI],BP
0543H:  F0 0F BB 29                                  LOCK BTC     DS:[BX+DI],BP
0547H:  F0 0F BB 2A                                  LOCK BTC     SS:[BP+SI],BP
054BH:  F0 0F BB 2B                                  LOCK BTC     SS:[BP+DI],BP
054FH:  F0 0F BB 6E 00                               LOCK BTC     SS:[BP],BP
0554H:  F0 0F BB 2C                                  LOCK BTC     DS:[SI],BP
0558H:  F0 0F BB 2D                                  LOCK BTC     DS:[DI],BP
055CH:  F0 0F BB A8 34 12                            LOCK BTC     DS:[BX+SI+1234H],BP
0562H:  F0 0F BB A9 34 12                            LOCK BTC     DS:[BX+DI+1234H],BP
0568H:  F0 0F BB AA 34 12                            LOCK BTC     SS:[BP+SI+1234H],BP
056EH:  F0 0F BB AB 34 12                            LOCK BTC     SS:[BP+DI+1234H],BP
0574H:  F0 0F BB AE 34 12                            LOCK BTC     SS:[BP+1234H],BP
057AH:  F0 0F BB AC 34 12                            LOCK BTC     DS:[SI+1234H],BP
0580H:  F0 0F BB AD 34 12                            LOCK BTC     DS:[DI+1234H],BP
0586H:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SI
058FH:  3E 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SI
0599H:  67 0F BB 74 2D 00                            BTC     SS:[EBP+EBP],SI
059FH:  67 0F BB 34 2C                               BTC     SS:[ESP+EBP],SI
05A4H:  67 0F BB 34 DA                               BTC     DS:[EDX+EBX*8],SI
05A9H:  67 0F BB 74 4B 01                            BTC     DS:[EBX+ECX*2+01H],SI
05AFH:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SI
05B8H:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI
05C1H:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SI
05CAH:  F0 0F BB 30                                  LOCK BTC     DS:[BX+SI],SI
05CEH:  F0 0F BB 31                                  LOCK BTC     DS:[BX+DI],SI
05D2H:  F0 0F BB 32                                  LOCK BTC     SS:[BP+SI],SI
05D6H:  F0 0F BB 33                                  LOCK BTC     SS:[BP+DI],SI
05DAH:  F0 0F BB 76 00                               LOCK BTC     SS:[BP],SI
05DFH:  F0 0F BB 34                                  LOCK BTC     DS:[SI],SI
05E3H:  F0 0F BB 35                                  LOCK BTC     DS:[DI],SI
05E7H:  F0 0F BB B0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SI
05EDH:  F0 0F BB B1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SI
05F3H:  F0 0F BB B2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SI
05F9H:  F0 0F BB B3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SI
05FFH:  F0 0F BB B6 34 12                            LOCK BTC     SS:[BP+1234H],SI
0605H:  F0 0F BB B4 34 12                            LOCK BTC     DS:[SI+1234H],SI
060BH:  F0 0F BB B5 34 12                            LOCK BTC     DS:[DI+1234H],SI
0611H:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DI
061AH:  3E 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DI
0624H:  67 0F BB 7C 2D 00                            BTC     SS:[EBP+EBP],DI
062AH:  67 0F BB 3C 2C                               BTC     SS:[ESP+EBP],DI
062FH:  67 0F BB 3C DA                               BTC     DS:[EDX+EBX*8],DI
0634H:  67 0F BB 7C 4B 01                            BTC     DS:[EBX+ECX*2+01H],DI
063AH:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DI
0643H:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI
064CH:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DI
0655H:  F0 0F BB 38                                  LOCK BTC     DS:[BX+SI],DI
0659H:  F0 0F BB 39                                  LOCK BTC     DS:[BX+DI],DI
065DH:  F0 0F BB 3A                                  LOCK BTC     SS:[BP+SI],DI
0661H:  F0 0F BB 3B                                  LOCK BTC     SS:[BP+DI],DI
0665H:  F0 0F BB 7E 00                               LOCK BTC     SS:[BP],DI
066AH:  F0 0F BB 3C                                  LOCK BTC     DS:[SI],DI
066EH:  F0 0F BB 3D                                  LOCK BTC     DS:[DI],DI
0672H:  F0 0F BB B8 34 12                            LOCK BTC     DS:[BX+SI+1234H],DI
0678H:  F0 0F BB B9 34 12                            LOCK BTC     DS:[BX+DI+1234H],DI
067EH:  F0 0F BB BA 34 12                            LOCK BTC     SS:[BP+SI+1234H],DI
0684H:  F0 0F BB BB 34 12                            LOCK BTC     SS:[BP+DI+1234H],DI
068AH:  F0 0F BB BE 34 12                            LOCK BTC     SS:[BP+1234H],DI
0690H:  F0 0F BB BC 34 12                            LOCK BTC     DS:[SI+1234H],DI
0696H:  F0 0F BB BD 34 12                            LOCK BTC     DS:[DI+1234H],DI
069CH:  66 0F BB C0                                  BTC     EAX,EAX
06A0H:  66 0F BB C1                                  BTC     ECX,EAX
06A4H:  66 0F BB C2                                  BTC     EDX,EAX
06A8H:  66 0F BB C3                                  BTC     EBX,EAX
06ACH:  66 0F BB C4                                  BTC     ESP,EAX
06B0H:  66 0F BB C5                                  BTC     EBP,EAX
06B4H:  66 0F BB C6                                  BTC     ESI,EAX
06B8H:  66 0F BB C7                                  BTC     EDI,EAX
06BCH:  66 67 0F BB 00                               BTC     DS:[EAX],EAX
06C1H:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX+00001234H],ECX
06CAH:  66 2E 67 0F BB 18                            BTC     CS:[EAX],EBX
06D0H:  66 67 0F BB 10                               BTC     DS:[EAX],EDX
06D5H:  66 26 67 0F BB 20                            BTC     ES:[EAX],ESP
06DBH:  66 36 67 0F BB 28                            BTC     SS:[EAX],EBP
06E1H:  66 64 67 0F BB 30                            BTC     FS:[EAX],ESI
06E7H:  66 65 67 0F BB 38                            BTC     GS:[EAX],EDI
06EDH:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EAX
06F7H:  66 3E 67 0F BB 84 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EAX
0702H:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP+EBP],EAX
0709H:  66 67 0F BB 04 2C                            BTC     SS:[ESP+EBP],EAX
070FH:  66 67 0F BB 04 DA                            BTC     DS:[EDX+EBX*8],EAX
0715H:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX+ECX*2+01H],EAX
071CH:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EAX
0726H:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX
0730H:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EAX
073AH:  F0 66 0F BB 00                               LOCK BTC     DS:[BX+SI],EAX
073FH:  F0 66 0F BB 01                               LOCK BTC     DS:[BX+DI],EAX
0744H:  F0 66 0F BB 02                               LOCK BTC     SS:[BP+SI],EAX
0749H:  F0 66 0F BB 03                               LOCK BTC     SS:[BP+DI],EAX
074EH:  F0 66 0F BB 46 00                            LOCK BTC     SS:[BP],EAX
0754H:  F0 66 0F BB 04                               LOCK BTC     DS:[SI],EAX
0759H:  F0 66 0F BB 05                               LOCK BTC     DS:[DI],EAX
075EH:  F0 66 0F BB 80 34 12                         LOCK BTC     DS:[BX+SI+1234H],EAX
0765H:  F0 66 0F BB 81 34 12                         LOCK BTC     DS:[BX+DI+1234H],EAX
076CH:  F0 66 0F BB 82 34 12                         LOCK BTC     SS:[BP+SI+1234H],EAX
0773H:  F0 66 0F BB 83 34 12                         LOCK BTC     SS:[BP+DI+1234H],EAX
077AH:  F0 66 0F BB 86 34 12                         LOCK BTC     SS:[BP+1234H],EAX
0781H:  F0 66 0F BB 84 34 12                         LOCK BTC     DS:[SI+1234H],EAX
0788H:  F0 66 0F BB 85 34 12                         LOCK BTC     DS:[DI+1234H],EAX
078FH:  66 0F BA F8 01                               BTC     EAX,01H
0794H:  66 0F BB C8                                  BTC     EAX,ECX
0798H:  66 0F BB C9                                  BTC     ECX,ECX
079CH:  66 0F BB CA                                  BTC     EDX,ECX
07A0H:  66 0F BB CB                                  BTC     EBX,ECX
07A4H:  66 0F BB CC                                  BTC     ESP,ECX
07A8H:  66 0F BB CD                                  BTC     EBP,ECX
07ACH:  66 0F BB CE                                  BTC     ESI,ECX
07B0H:  66 0F BB CF                                  BTC     EDI,ECX
07B4H:  66 67 0F BB 01                               BTC     DS:[ECX],EAX
07B9H:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX+00001234H],ECX
07C2H:  66 2E 67 0F BB 19                            BTC     CS:[ECX],EBX
07C8H:  66 67 0F BB 11                               BTC     DS:[ECX],EDX
07CDH:  66 26 67 0F BB 21                            BTC     ES:[ECX],ESP
07D3H:  66 36 67 0F BB 29                            BTC     SS:[ECX],EBP
07D9H:  66 64 67 0F BB 31                            BTC     FS:[ECX],ESI
07DFH:  66 65 67 0F BB 39                            BTC     GS:[ECX],EDI
07E5H:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ECX
07EFH:  66 3E 67 0F BB 8C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ECX
07FAH:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP+EBP],ECX
0801H:  66 67 0F BB 0C 2C                            BTC     SS:[ESP+EBP],ECX
0807H:  66 67 0F BB 0C DA                            BTC     DS:[EDX+EBX*8],ECX
080DH:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX+ECX*2+01H],ECX
0814H:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ECX
081EH:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX
0828H:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ECX
0832H:  F0 66 0F BB 08                               LOCK BTC     DS:[BX+SI],ECX
0837H:  F0 66 0F BB 09                               LOCK BTC     DS:[BX+DI],ECX
083CH:  F0 66 0F BB 0A                               LOCK BTC     SS:[BP+SI],ECX
0841H:  F0 66 0F BB 0B                               LOCK BTC     SS:[BP+DI],ECX
0846H:  F0 66 0F BB 4E 00                            LOCK BTC     SS:[BP],ECX
084CH:  F0 66 0F BB 0C                               LOCK BTC     DS:[SI],ECX
0851H:  F0 66 0F BB 0D                               LOCK BTC     DS:[DI],ECX
0856H:  F0 66 0F BB 88 34 12                         LOCK BTC     DS:[BX+SI+1234H],ECX
085DH:  F0 66 0F BB 89 34 12                         LOCK BTC     DS:[BX+DI+1234H],ECX
0864H:  F0 66 0F BB 8A 34 12                         LOCK BTC     SS:[BP+SI+1234H],ECX
086BH:  F0 66 0F BB 8B 34 12                         LOCK BTC     SS:[BP+DI+1234H],ECX
0872H:  F0 66 0F BB 8E 34 12                         LOCK BTC     SS:[BP+1234H],ECX
0879H:  F0 66 0F BB 8C 34 12                         LOCK BTC     DS:[SI+1234H],ECX
0880H:  F0 66 0F BB 8D 34 12                         LOCK BTC     DS:[DI+1234H],ECX
0887H:  66 0F BA F9 01                               BTC     ECX,01H
088CH:  66 0F BB D0                                  BTC     EAX,EDX
0890H:  66 0F BB D1                                  BTC     ECX,EDX
0894H:  66 0F BB D2                                  BTC     EDX,EDX
0898H:  66 0F BB D3                                  BTC     EBX,EDX
089CH:  66 0F BB D4                                  BTC     ESP,EDX
08A0H:  66 0F BB D5                                  BTC     EBP,EDX
08A4H:  66 0F BB D6                                  BTC     ESI,EDX
08A8H:  66 0F BB D7                                  BTC     EDI,EDX
08ACH:  66 67 0F BB 02                               BTC     DS:[EDX],EAX
08B1H:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX+00001234H],ECX
08BAH:  66 2E 67 0F BB 1A                            BTC     CS:[EDX],EBX
08C0H:  66 67 0F BB 12                               BTC     DS:[EDX],EDX
08C5H:  66 26 67 0F BB 22                            BTC     ES:[EDX],ESP
08CBH:  66 36 67 0F BB 2A                            BTC     SS:[EDX],EBP
08D1H:  66 64 67 0F BB 32                            BTC     FS:[EDX],ESI
08D7H:  66 65 67 0F BB 3A                            BTC     GS:[EDX],EDI
08DDH:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDX
08E7H:  66 3E 67 0F BB 94 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDX
08F2H:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP+EBP],EDX
08F9H:  66 67 0F BB 14 2C                            BTC     SS:[ESP+EBP],EDX
08FFH:  66 67 0F BB 14 DA                            BTC     DS:[EDX+EBX*8],EDX
0905H:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDX
090CH:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDX
0916H:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX
0920H:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDX
092AH:  F0 66 0F BB 10                               LOCK BTC     DS:[BX+SI],EDX
092FH:  F0 66 0F BB 11                               LOCK BTC     DS:[BX+DI],EDX
0934H:  F0 66 0F BB 12                               LOCK BTC     SS:[BP+SI],EDX
0939H:  F0 66 0F BB 13                               LOCK BTC     SS:[BP+DI],EDX
093EH:  F0 66 0F BB 56 00                            LOCK BTC     SS:[BP],EDX
0944H:  F0 66 0F BB 14                               LOCK BTC     DS:[SI],EDX
0949H:  F0 66 0F BB 15                               LOCK BTC     DS:[DI],EDX
094EH:  F0 66 0F BB 90 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDX
0955H:  F0 66 0F BB 91 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDX
095CH:  F0 66 0F BB 92 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDX
0963H:  F0 66 0F BB 93 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDX
096AH:  F0 66 0F BB 96 34 12                         LOCK BTC     SS:[BP+1234H],EDX
0971H:  F0 66 0F BB 94 34 12                         LOCK BTC     DS:[SI+1234H],EDX
0978H:  F0 66 0F BB 95 34 12                         LOCK BTC     DS:[DI+1234H],EDX
097FH:  66 0F BA FA 01                               BTC     EDX,01H
0984H:  66 0F BB D8                                  BTC     EAX,EBX
0988H:  66 0F BB D9                                  BTC     ECX,EBX
098CH:  66 0F BB DA                                  BTC     EDX,EBX
0990H:  66 0F BB DB                                  BTC     EBX,EBX
0994H:  66 0F BB DC                                  BTC     ESP,EBX
0998H:  66 0F BB DD                                  BTC     EBP,EBX
099CH:  66 0F BB DE                                  BTC     ESI,EBX
09A0H:  66 0F BB DF                                  BTC     EDI,EBX
09A4H:  66 67 0F BB 03                               BTC     DS:[EBX],EAX
09A9H:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX+00001234H],ECX
09B2H:  66 2E 67 0F BB 1B                            BTC     CS:[EBX],EBX
09B8H:  66 67 0F BB 13                               BTC     DS:[EBX],EDX
09BDH:  66 26 67 0F BB 23                            BTC     ES:[EBX],ESP
09C3H:  66 36 67 0F BB 2B                            BTC     SS:[EBX],EBP
09C9H:  66 64 67 0F BB 33                            BTC     FS:[EBX],ESI
09CFH:  66 65 67 0F BB 3B                            BTC     GS:[EBX],EDI
09D5H:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBX
09DFH:  66 3E 67 0F BB 9C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBX
09EAH:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP+EBP],EBX
09F1H:  66 67 0F BB 1C 2C                            BTC     SS:[ESP+EBP],EBX
09F7H:  66 67 0F BB 1C DA                            BTC     DS:[EDX+EBX*8],EBX
09FDH:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBX
0A04H:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBX
0A0EH:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX
0A18H:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBX
0A22H:  F0 66 0F BB 18                               LOCK BTC     DS:[BX+SI],EBX
0A27H:  F0 66 0F BB 19                               LOCK BTC     DS:[BX+DI],EBX
0A2CH:  F0 66 0F BB 1A                               LOCK BTC     SS:[BP+SI],EBX
0A31H:  F0 66 0F BB 1B                               LOCK BTC     SS:[BP+DI],EBX
0A36H:  F0 66 0F BB 5E 00                            LOCK BTC     SS:[BP],EBX
0A3CH:  F0 66 0F BB 1C                               LOCK BTC     DS:[SI],EBX
0A41H:  F0 66 0F BB 1D                               LOCK BTC     DS:[DI],EBX
0A46H:  F0 66 0F BB 98 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBX
0A4DH:  F0 66 0F BB 99 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBX
0A54H:  F0 66 0F BB 9A 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBX
0A5BH:  F0 66 0F BB 9B 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBX
0A62H:  F0 66 0F BB 9E 34 12                         LOCK BTC     SS:[BP+1234H],EBX
0A69H:  F0 66 0F BB 9C 34 12                         LOCK BTC     DS:[SI+1234H],EBX
0A70H:  F0 66 0F BB 9D 34 12                         LOCK BTC     DS:[DI+1234H],EBX
0A77H:  66 0F BA FB 01                               BTC     EBX,01H
0A7CH:  66 0F BB E0                                  BTC     EAX,ESP
0A80H:  66 0F BB E1                                  BTC     ECX,ESP
0A84H:  66 0F BB E2                                  BTC     EDX,ESP
0A88H:  66 0F BB E3                                  BTC     EBX,ESP
0A8CH:  66 0F BB E4                                  BTC     ESP,ESP
0A90H:  66 0F BB E5                                  BTC     EBP,ESP
0A94H:  66 0F BB E6                                  BTC     ESI,ESP
0A98H:  66 0F BB E7                                  BTC     EDI,ESP
0A9CH:  66 67 0F BB 04 04                            BTC     SS:[ESP+EAX],EAX
0AA2H:  66 67 0F BB 8C 2C 34 12 00 00                BTC     SS:[ESP+EBP+00001234H],ECX
0AACH:  66 2E 67 0F BB 1C 0C                         BTC     CS:[ESP+ECX],EBX
0AB3H:  66 3E 67 0F BB 14 14                         BTC     DS:[ESP+EDX],EDX
0ABAH:  66 26 67 0F BB 24 24                         BTC     ES:[ESP],ESP
0AC1H:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ESP
0ACBH:  66 3E 67 0F BB A4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ESP
0AD6H:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP+EBP],ESP
0ADDH:  66 67 0F BB 24 2C                            BTC     SS:[ESP+EBP],ESP
0AE3H:  66 67 0F BB 24 DA                            BTC     DS:[EDX+EBX*8],ESP
0AE9H:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX+ECX*2+01H],ESP
0AF0H:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ESP
0AFAH:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP
0B04H:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ESP
0B0EH:  F0 66 0F BB 20                               LOCK BTC     DS:[BX+SI],ESP
0B13H:  F0 66 0F BB 21                               LOCK BTC     DS:[BX+DI],ESP
0B18H:  F0 66 0F BB 22                               LOCK BTC     SS:[BP+SI],ESP
0B1DH:  F0 66 0F BB 23                               LOCK BTC     SS:[BP+DI],ESP
0B22H:  F0 66 0F BB 66 00                            LOCK BTC     SS:[BP],ESP
0B28H:  F0 66 0F BB 24                               LOCK BTC     DS:[SI],ESP
0B2DH:  F0 66 0F BB 25                               LOCK BTC     DS:[DI],ESP
0B32H:  F0 66 0F BB A0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESP
0B39H:  F0 66 0F BB A1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESP
0B40H:  F0 66 0F BB A2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESP
0B47H:  F0 66 0F BB A3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESP
0B4EH:  F0 66 0F BB A6 34 12                         LOCK BTC     SS:[BP+1234H],ESP
0B55H:  F0 66 0F BB A4 34 12                         LOCK BTC     DS:[SI+1234H],ESP
0B5CH:  F0 66 0F BB A5 34 12                         LOCK BTC     DS:[DI+1234H],ESP
0B63H:  66 0F BA FC 01                               BTC     ESP,01H
0B68H:  66 0F BB E8                                  BTC     EAX,EBP
0B6CH:  66 0F BB E9                                  BTC     ECX,EBP
0B70H:  66 0F BB EA                                  BTC     EDX,EBP
0B74H:  66 0F BB EB                                  BTC     EBX,EBP
0B78H:  66 0F BB EC                                  BTC     ESP,EBP
0B7CH:  66 0F BB ED                                  BTC     EBP,EBP
0B80H:  66 0F BB EE                                  BTC     ESI,EBP
0B84H:  66 0F BB EF                                  BTC     EDI,EBP
0B88H:  66 67 0F BB 45 00                            BTC     SS:[EBP],EAX
0B8EH:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP+00001234H],ECX
0B97H:  66 2E 67 0F BB 5D 00                         BTC     CS:[EBP],EBX
0B9EH:  66 3E 67 0F BB 55 00                         BTC     DS:[EBP],EDX
0BA5H:  66 26 67 0F BB 65 00                         BTC     ES:[EBP],ESP
0BACH:  66 67 0F BB 6D 00                            BTC     SS:[EBP],EBP
0BB2H:  66 64 67 0F BB 75 00                         BTC     FS:[EBP],ESI
0BB9H:  66 65 67 0F BB 7D 00                         BTC     GS:[EBP],EDI
0BC0H:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBP
0BCAH:  66 3E 67 0F BB AC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBP
0BD5H:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP+EBP],EBP
0BDCH:  66 67 0F BB 2C 2C                            BTC     SS:[ESP+EBP],EBP
0BE2H:  66 67 0F BB 2C DA                            BTC     DS:[EDX+EBX*8],EBP
0BE8H:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBP
0BEFH:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBP
0BF9H:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP
0C03H:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBP
0C0DH:  F0 66 0F BB 28                               LOCK BTC     DS:[BX+SI],EBP
0C12H:  F0 66 0F BB 29                               LOCK BTC     DS:[BX+DI],EBP
0C17H:  F0 66 0F BB 2A                               LOCK BTC     SS:[BP+SI],EBP
0C1CH:  F0 66 0F BB 2B                               LOCK BTC     SS:[BP+DI],EBP
0C21H:  F0 66 0F BB 6E 00                            LOCK BTC     SS:[BP],EBP
0C27H:  F0 66 0F BB 2C                               LOCK BTC     DS:[SI],EBP
0C2CH:  F0 66 0F BB 2D                               LOCK BTC     DS:[DI],EBP
0C31H:  F0 66 0F BB A8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBP
0C38H:  F0 66 0F BB A9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBP
0C3FH:  F0 66 0F BB AA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBP
0C46H:  F0 66 0F BB AB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBP
0C4DH:  F0 66 0F BB AE 34 12                         LOCK BTC     SS:[BP+1234H],EBP
0C54H:  F0 66 0F BB AC 34 12                         LOCK BTC     DS:[SI+1234H],EBP
0C5BH:  F0 66 0F BB AD 34 12                         LOCK BTC     DS:[DI+1234H],EBP
0C62H:  66 0F BA FD 01                               BTC     EBP,01H
0C67H:  66 0F BB F0                                  BTC     EAX,ESI
0C6BH:  66 0F BB F1                                  BTC     ECX,ESI
0C6FH:  66 0F BB F2                                  BTC     EDX,ESI
0C73H:  66 0F BB F3                                  BTC     EBX,ESI
0C77H:  66 0F BB F4                                  BTC     ESP,ESI
0C7BH:  66 0F BB F5                                  BTC     EBP,ESI
0C7FH:  66 0F BB F6                                  BTC     ESI,ESI
0C83H:  66 0F BB F7                                  BTC     EDI,ESI
0C87H:  66 67 0F BB 06                               BTC     DS:[ESI],EAX
0C8CH:  66 67 0F BB 8E 34 12 00 00                   BTC     DS:[ESI+00001234H],ECX
0C95H:  66 2E 67 0F BB 1E                            BTC     CS:[ESI],EBX
0C9BH:  66 67 0F BB 16                               BTC     DS:[ESI],EDX
0CA0H:  66 26 67 0F BB 26                            BTC     ES:[ESI],ESP
0CA6H:  66 36 67 0F BB 2E                            BTC     SS:[ESI],EBP
0CACH:  66 64 67 0F BB 36                            BTC     FS:[ESI],ESI
0CB2H:  66 65 67 0F BB 3E                            BTC     GS:[ESI],EDI
0CB8H:  66 67 0F BB B4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ESI
0CC2H:  66 3E 67 0F BB B4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ESI
0CCDH:  66 67 0F BB 74 2D 00                         BTC     SS:[EBP+EBP],ESI
0CD4H:  66 67 0F BB 34 2C                            BTC     SS:[ESP+EBP],ESI
0CDAH:  66 67 0F BB 34 DA                            BTC     DS:[EDX+EBX*8],ESI
0CE0H:  66 67 0F BB 74 4B 01                         BTC     DS:[EBX+ECX*2+01H],ESI
0CE7H:  66 67 0F BB B4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ESI
0CF1H:  66 67 0F BB B4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESI
0CFBH:  66 67 0F BB B4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ESI
0D05H:  F0 66 0F BB 30                               LOCK BTC     DS:[BX+SI],ESI
0D0AH:  F0 66 0F BB 31                               LOCK BTC     DS:[BX+DI],ESI
0D0FH:  F0 66 0F BB 32                               LOCK BTC     SS:[BP+SI],ESI
0D14H:  F0 66 0F BB 33                               LOCK BTC     SS:[BP+DI],ESI
0D19H:  F0 66 0F BB 76 00                            LOCK BTC     SS:[BP],ESI
0D1FH:  F0 66 0F BB 34                               LOCK BTC     DS:[SI],ESI
0D24H:  F0 66 0F BB 35                               LOCK BTC     DS:[DI],ESI
0D29H:  F0 66 0F BB B0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESI
0D30H:  F0 66 0F BB B1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESI
0D37H:  F0 66 0F BB B2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESI
0D3EH:  F0 66 0F BB B3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESI
0D45H:  F0 66 0F BB B6 34 12                         LOCK BTC     SS:[BP+1234H],ESI
0D4CH:  F0 66 0F BB B4 34 12                         LOCK BTC     DS:[SI+1234H],ESI
0D53H:  F0 66 0F BB B5 34 12                         LOCK BTC     DS:[DI+1234H],ESI
0D5AH:  66 0F BA FE 01                               BTC     ESI,01H
0D5FH:  66 0F BB F8                                  BTC     EAX,EDI
0D63H:  66 0F BB F9                                  BTC     ECX,EDI
0D67H:  66 0F BB FA                                  BTC     EDX,EDI
0D6BH:  66 0F BB FB                                  BTC     EBX,EDI
0D6FH:  66 0F BB FC                                  BTC     ESP,EDI
0D73H:  66 0F BB FD                                  BTC     EBP,EDI
0D77H:  66 0F BB FE                                  BTC     ESI,EDI
0D7BH:  66 0F BB FF                                  BTC     EDI,EDI
0D7FH:  66 67 0F BB 07                               BTC     DS:[EDI],EAX
0D84H:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI+00001234H],ECX
0D8DH:  66 2E 67 0F BB 1F                            BTC     CS:[EDI],EBX
0D93H:  66 67 0F BB 17                               BTC     DS:[EDI],EDX
0D98H:  66 26 67 0F BB 27                            BTC     ES:[EDI],ESP
0D9EH:  66 36 67 0F BB 2F                            BTC     SS:[EDI],EBP
0DA4H:  66 64 67 0F BB 37                            BTC     FS:[EDI],ESI
0DAAH:  66 65 67 0F BB 3F                            BTC     GS:[EDI],EDI
0DB0H:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDI
0DBAH:  66 3E 67 0F BB BC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDI
0DC5H:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP+EBP],EDI
0DCCH:  66 67 0F BB 3C 2C                            BTC     SS:[ESP+EBP],EDI
0DD2H:  66 67 0F BB 3C DA                            BTC     DS:[EDX+EBX*8],EDI
0DD8H:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDI
0DDFH:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDI
0DE9H:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI
0DF3H:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDI
0DFDH:  F0 64 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H
0E09H:  F0 66 0F BB 38                               LOCK BTC     DS:[BX+SI],EDI
0E0EH:  F0 66 0F BB 39                               LOCK BTC     DS:[BX+DI],EDI
0E13H:  F0 66 0F BB 3A                               LOCK BTC     SS:[BP+SI],EDI
0E18H:  F0 66 0F BB 3B                               LOCK BTC     SS:[BP+DI],EDI
0E1DH:  F0 66 0F BB 7E 00                            LOCK BTC     SS:[BP],EDI
0E23H:  F0 66 0F BB 3C                               LOCK BTC     DS:[SI],EDI
0E28H:  F0 66 0F BB 3D                               LOCK BTC     DS:[DI],EDI
0E2DH:  F0 66 0F BB B8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDI
0E34H:  F0 66 0F BB B9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDI
0E3BH:  F0 66 0F BB BA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDI
0E42H:  F0 66 0F BB BB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDI
0E49H:  F0 66 0F BB BE 34 12                         LOCK BTC     SS:[BP+1234H],EDI
0E50H:  F0 66 0F BB BC 34 12                         LOCK BTC     DS:[SI+1234H],EDI
0E57H:  F0 66 0F BB BD 34 12                         LOCK BTC     DS:[DI+1234H],EDI
0E5EH:  66 0F BA FF 01                               BTC     EDI,01H
0E63H:  0F BB C0                                     BTC     AX,AX
0E66H:  0F BB C1                                     BTC     CX,AX
0E69H:  0F BB C2                                     BTC     DX,AX
0E6CH:  0F BB C3                                     BTC     BX,AX
0E6FH:  0F BB C4                                     BTC     SP,AX
0E72H:  0F BB C5                                     BTC     BP,AX
0E75H:  0F BB C6                                     BTC     SI,AX
0E78H:  0F BB C7                                     BTC     DI,AX
0E7BH:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234H],AX
0E80H:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234H],AX
0E85H:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234H],AX
0E8AH:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234H],AX
0E8FH:  0F BB 86 34 12                               BTC     SS:[BP+1234H],AX
0E94H:  0F BB 84 34 12                               BTC     DS:[SI+1234H],AX
0E99H:  0F BB 85 34 12                               BTC     DS:[DI+1234H],AX
0E9EH:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
0EA2H:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
0EA6H:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
0EAAH:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
0EAEH:  2E 0F BB 46 00                               BTC     CS:[BP],AX
0EB3H:  2E 0F BB 04                                  BTC     CS:[SI],AX
0EB7H:  2E 0F BB 05                                  BTC     CS:[DI],AX
0EBBH:  0F BB 00                                     BTC     DS:[BX+SI],AX
0EBEH:  0F BB 01                                     BTC     DS:[BX+DI],AX
0EC1H:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
0EC5H:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
0EC9H:  3E 0F BB 46 00                               BTC     DS:[BP],AX
0ECEH:  0F BB 04                                     BTC     DS:[SI],AX
0ED1H:  0F BB 05                                     BTC     DS:[DI],AX
0ED4H:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
0ED8H:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
0EDCH:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
0EE0H:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
0EE4H:  26 0F BB 46 00                               BTC     ES:[BP],AX
0EE9H:  26 0F BB 04                                  BTC     ES:[SI],AX
0EEDH:  26 0F BB 05                                  BTC     ES:[DI],AX
0EF1H:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
0EF5H:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
0EF9H:  0F BB 02                                     BTC     SS:[BP+SI],AX
0EFCH:  0F BB 03                                     BTC     SS:[BP+DI],AX
0EFFH:  0F BB 46 00                                  BTC     SS:[BP],AX
0F03H:  36 0F BB 04                                  BTC     SS:[SI],AX
0F07H:  36 0F BB 05                                  BTC     SS:[DI],AX
0F0BH:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
0F0FH:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
0F13H:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
0F17H:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
0F1BH:  64 0F BB 46 00                               BTC     FS:[BP],AX
0F20H:  64 0F BB 04                                  BTC     FS:[SI],AX
0F24H:  64 0F BB 05                                  BTC     FS:[DI],AX
0F28H:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
0F2CH:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
0F30H:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
0F34H:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
0F38H:  65 0F BB 46 00                               BTC     GS:[BP],AX
0F3DH:  65 0F BB 04                                  BTC     GS:[SI],AX
0F41H:  65 0F BB 05                                  BTC     GS:[DI],AX
0F45H:  0F BA F8 01                                  BTC     AX,01H
0F49H:  0F BA F8 FF                                  BTC     AX,0FFH
0F4DH:  0F BB C8                                     BTC     AX,CX
0F50H:  0F BB C9                                     BTC     CX,CX
0F53H:  0F BB CA                                     BTC     DX,CX
0F56H:  0F BB CB                                     BTC     BX,CX
0F59H:  0F BB CC                                     BTC     SP,CX
0F5CH:  0F BB CD                                     BTC     BP,CX
0F5FH:  0F BB CE                                     BTC     SI,CX
0F62H:  0F BB CF                                     BTC     DI,CX
0F65H:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234H],CX
0F6AH:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234H],CX
0F6FH:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234H],CX
0F74H:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234H],CX
0F79H:  0F BB 8E 34 12                               BTC     SS:[BP+1234H],CX
0F7EH:  0F BB 8C 34 12                               BTC     DS:[SI+1234H],CX
0F83H:  0F BB 8D 34 12                               BTC     DS:[DI+1234H],CX
0F88H:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
0F8CH:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
0F90H:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
0F94H:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
0F98H:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
0F9DH:  2E 0F BB 0C                                  BTC     CS:[SI],CX
0FA1H:  2E 0F BB 0D                                  BTC     CS:[DI],CX
0FA5H:  0F BB 08                                     BTC     DS:[BX+SI],CX
0FA8H:  0F BB 09                                     BTC     DS:[BX+DI],CX
0FABH:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
0FAFH:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
0FB3H:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
0FB8H:  0F BB 0C                                     BTC     DS:[SI],CX
0FBBH:  0F BB 0D                                     BTC     DS:[DI],CX
0FBEH:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
0FC2H:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
0FC6H:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
0FCAH:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
0FCEH:  26 0F BB 4E 00                               BTC     ES:[BP],CX
0FD3H:  26 0F BB 0C                                  BTC     ES:[SI],CX
0FD7H:  26 0F BB 0D                                  BTC     ES:[DI],CX
0FDBH:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
0FDFH:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
0FE3H:  0F BB 0A                                     BTC     SS:[BP+SI],CX
0FE6H:  0F BB 0B                                     BTC     SS:[BP+DI],CX
0FE9H:  0F BB 4E 00                                  BTC     SS:[BP],CX
0FEDH:  36 0F BB 0C                                  BTC     SS:[SI],CX
0FF1H:  36 0F BB 0D                                  BTC     SS:[DI],CX
0FF5H:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
0FF9H:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
0FFDH:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
1001H:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
1005H:  64 0F BB 4E 00                               BTC     FS:[BP],CX
100AH:  64 0F BB 0C                                  BTC     FS:[SI],CX
100EH:  64 0F BB 0D                                  BTC     FS:[DI],CX
1012H:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
1016H:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
101AH:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
101EH:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
1022H:  65 0F BB 4E 00                               BTC     GS:[BP],CX
1027H:  65 0F BB 0C                                  BTC     GS:[SI],CX
102BH:  65 0F BB 0D                                  BTC     GS:[DI],CX
102FH:  0F BA F9 01                                  BTC     CX,01H
1033H:  0F BA F9 FF                                  BTC     CX,0FFH
1037H:  0F BB D0                                     BTC     AX,DX
103AH:  0F BB D1                                     BTC     CX,DX
103DH:  0F BB D2                                     BTC     DX,DX
1040H:  0F BB D3                                     BTC     BX,DX
1043H:  0F BB D4                                     BTC     SP,DX
1046H:  0F BB D5                                     BTC     BP,DX
1049H:  0F BB D6                                     BTC     SI,DX
104CH:  0F BB D7                                     BTC     DI,DX
104FH:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234H],DX
1054H:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234H],DX
1059H:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234H],DX
105EH:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234H],DX
1063H:  0F BB 96 34 12                               BTC     SS:[BP+1234H],DX
1068H:  0F BB 94 34 12                               BTC     DS:[SI+1234H],DX
106DH:  0F BB 95 34 12                               BTC     DS:[DI+1234H],DX
1072H:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
1076H:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
107AH:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
107EH:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
1082H:  2E 0F BB 56 00                               BTC     CS:[BP],DX
1087H:  2E 0F BB 14                                  BTC     CS:[SI],DX
108BH:  2E 0F BB 15                                  BTC     CS:[DI],DX
108FH:  0F BB 10                                     BTC     DS:[BX+SI],DX
1092H:  0F BB 11                                     BTC     DS:[BX+DI],DX
1095H:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
1099H:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
109DH:  3E 0F BB 56 00                               BTC     DS:[BP],DX
10A2H:  0F BB 14                                     BTC     DS:[SI],DX
10A5H:  0F BB 15                                     BTC     DS:[DI],DX
10A8H:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
10ACH:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
10B0H:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
10B4H:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
10B8H:  26 0F BB 56 00                               BTC     ES:[BP],DX
10BDH:  26 0F BB 14                                  BTC     ES:[SI],DX
10C1H:  26 0F BB 15                                  BTC     ES:[DI],DX
10C5H:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
10C9H:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
10CDH:  0F BB 12                                     BTC     SS:[BP+SI],DX
10D0H:  0F BB 13                                     BTC     SS:[BP+DI],DX
10D3H:  0F BB 56 00                                  BTC     SS:[BP],DX
10D7H:  36 0F BB 14                                  BTC     SS:[SI],DX
10DBH:  36 0F BB 15                                  BTC     SS:[DI],DX
10DFH:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
10E3H:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
10E7H:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
10EBH:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
10EFH:  64 0F BB 56 00                               BTC     FS:[BP],DX
10F4H:  64 0F BB 14                                  BTC     FS:[SI],DX
10F8H:  64 0F BB 15                                  BTC     FS:[DI],DX
10FCH:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
1100H:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
1104H:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
1108H:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
110CH:  65 0F BB 56 00                               BTC     GS:[BP],DX
1111H:  65 0F BB 14                                  BTC     GS:[SI],DX
1115H:  65 0F BB 15                                  BTC     GS:[DI],DX
1119H:  0F BA FA 01                                  BTC     DX,01H
111DH:  0F BA FA FF                                  BTC     DX,0FFH
1121H:  0F BB D8                                     BTC     AX,BX
1124H:  0F BB D9                                     BTC     CX,BX
1127H:  0F BB DA                                     BTC     DX,BX
112AH:  0F BB DB                                     BTC     BX,BX
112DH:  0F BB DC                                     BTC     SP,BX
1130H:  0F BB DD                                     BTC     BP,BX
1133H:  0F BB DE                                     BTC     SI,BX
1136H:  0F BB DF                                     BTC     DI,BX
1139H:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234H],BX
113EH:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234H],BX
1143H:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234H],BX
1148H:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234H],BX
114DH:  0F BB 9E 34 12                               BTC     SS:[BP+1234H],BX
1152H:  0F BB 9C 34 12                               BTC     DS:[SI+1234H],BX
1157H:  0F BB 9D 34 12                               BTC     DS:[DI+1234H],BX
115CH:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
1160H:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
1164H:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
1168H:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
116CH:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
1171H:  2E 0F BB 1C                                  BTC     CS:[SI],BX
1175H:  2E 0F BB 1D                                  BTC     CS:[DI],BX
1179H:  0F BB 18                                     BTC     DS:[BX+SI],BX
117CH:  0F BB 19                                     BTC     DS:[BX+DI],BX
117FH:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
1183H:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
1187H:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
118CH:  0F BB 1C                                     BTC     DS:[SI],BX
118FH:  0F BB 1D                                     BTC     DS:[DI],BX
1192H:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
1196H:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
119AH:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
119EH:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
11A2H:  26 0F BB 5E 00                               BTC     ES:[BP],BX
11A7H:  26 0F BB 1C                                  BTC     ES:[SI],BX
11ABH:  26 0F BB 1D                                  BTC     ES:[DI],BX
11AFH:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
11B3H:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
11B7H:  0F BB 1A                                     BTC     SS:[BP+SI],BX
11BAH:  0F BB 1B                                     BTC     SS:[BP+DI],BX
11BDH:  0F BB 5E 00                                  BTC     SS:[BP],BX
11C1H:  36 0F BB 1C                                  BTC     SS:[SI],BX
11C5H:  36 0F BB 1D                                  BTC     SS:[DI],BX
11C9H:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
11CDH:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
11D1H:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
11D5H:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
11D9H:  64 0F BB 5E 00                               BTC     FS:[BP],BX
11DEH:  64 0F BB 1C                                  BTC     FS:[SI],BX
11E2H:  64 0F BB 1D                                  BTC     FS:[DI],BX
11E6H:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
11EAH:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
11EEH:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
11F2H:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
11F6H:  65 0F BB 5E 00                               BTC     GS:[BP],BX
11FBH:  65 0F BB 1C                                  BTC     GS:[SI],BX
11FFH:  65 0F BB 1D                                  BTC     GS:[DI],BX
1203H:  0F BA FB 01                                  BTC     BX,01H
1207H:  0F BA FB FF                                  BTC     BX,0FFH
120BH:  0F BB E0                                     BTC     AX,SP
120EH:  0F BB E1                                     BTC     CX,SP
1211H:  0F BB E2                                     BTC     DX,SP
1214H:  0F BB E3                                     BTC     BX,SP
1217H:  0F BB E4                                     BTC     SP,SP
121AH:  0F BB E5                                     BTC     BP,SP
121DH:  0F BB E6                                     BTC     SI,SP
1220H:  0F BB E7                                     BTC     DI,SP
1223H:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234H],SP
1228H:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234H],SP
122DH:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234H],SP
1232H:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234H],SP
1237H:  0F BB A6 34 12                               BTC     SS:[BP+1234H],SP
123CH:  0F BB A4 34 12                               BTC     DS:[SI+1234H],SP
1241H:  0F BB A5 34 12                               BTC     DS:[DI+1234H],SP
1246H:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
124AH:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
124EH:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
1252H:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
1256H:  2E 0F BB 66 00                               BTC     CS:[BP],SP
125BH:  2E 0F BB 24                                  BTC     CS:[SI],SP
125FH:  2E 0F BB 25                                  BTC     CS:[DI],SP
1263H:  0F BB 20                                     BTC     DS:[BX+SI],SP
1266H:  0F BB 21                                     BTC     DS:[BX+DI],SP
1269H:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
126DH:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
1271H:  3E 0F BB 66 00                               BTC     DS:[BP],SP
1276H:  0F BB 24                                     BTC     DS:[SI],SP
1279H:  0F BB 25                                     BTC     DS:[DI],SP
127CH:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
1280H:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
1284H:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
1288H:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
128CH:  26 0F BB 66 00                               BTC     ES:[BP],SP
1291H:  26 0F BB 24                                  BTC     ES:[SI],SP
1295H:  26 0F BB 25                                  BTC     ES:[DI],SP
1299H:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
129DH:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
12A1H:  0F BB 22                                     BTC     SS:[BP+SI],SP
12A4H:  0F BB 23                                     BTC     SS:[BP+DI],SP
12A7H:  0F BB 66 00                                  BTC     SS:[BP],SP
12ABH:  36 0F BB 24                                  BTC     SS:[SI],SP
12AFH:  36 0F BB 25                                  BTC     SS:[DI],SP
12B3H:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
12B7H:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
12BBH:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
12BFH:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
12C3H:  64 0F BB 66 00                               BTC     FS:[BP],SP
12C8H:  64 0F BB 24                                  BTC     FS:[SI],SP
12CCH:  64 0F BB 25                                  BTC     FS:[DI],SP
12D0H:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
12D4H:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
12D8H:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
12DCH:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
12E0H:  65 0F BB 66 00                               BTC     GS:[BP],SP
12E5H:  65 0F BB 24                                  BTC     GS:[SI],SP
12E9H:  65 0F BB 25                                  BTC     GS:[DI],SP
12EDH:  0F BA FC 01                                  BTC     SP,01H
12F1H:  0F BA FC FF                                  BTC     SP,0FFH
12F5H:  0F BB E8                                     BTC     AX,BP
12F8H:  0F BB E9                                     BTC     CX,BP
12FBH:  0F BB EA                                     BTC     DX,BP
12FEH:  0F BB EB                                     BTC     BX,BP
1301H:  0F BB EC                                     BTC     SP,BP
1304H:  0F BB ED                                     BTC     BP,BP
1307H:  0F BB EE                                     BTC     SI,BP
130AH:  0F BB EF                                     BTC     DI,BP
130DH:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234H],BP
1312H:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234H],BP
1317H:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234H],BP
131CH:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234H],BP
1321H:  0F BB AE 34 12                               BTC     SS:[BP+1234H],BP
1326H:  0F BB AC 34 12                               BTC     DS:[SI+1234H],BP
132BH:  0F BB AD 34 12                               BTC     DS:[DI+1234H],BP
1330H:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
1334H:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
1338H:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
133CH:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
1340H:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
1345H:  2E 0F BB 2C                                  BTC     CS:[SI],BP
1349H:  2E 0F BB 2D                                  BTC     CS:[DI],BP
134DH:  0F BB 28                                     BTC     DS:[BX+SI],BP
1350H:  0F BB 29                                     BTC     DS:[BX+DI],BP
1353H:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
1357H:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
135BH:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
1360H:  0F BB 2C                                     BTC     DS:[SI],BP
1363H:  0F BB 2D                                     BTC     DS:[DI],BP
1366H:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
136AH:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
136EH:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
1372H:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
1376H:  26 0F BB 6E 00                               BTC     ES:[BP],BP
137BH:  26 0F BB 2C                                  BTC     ES:[SI],BP
137FH:  26 0F BB 2D                                  BTC     ES:[DI],BP
1383H:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
1387H:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
138BH:  0F BB 2A                                     BTC     SS:[BP+SI],BP
138EH:  0F BB 2B                                     BTC     SS:[BP+DI],BP
1391H:  0F BB 6E 00                                  BTC     SS:[BP],BP
1395H:  36 0F BB 2C                                  BTC     SS:[SI],BP
1399H:  36 0F BB 2D                                  BTC     SS:[DI],BP
139DH:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
13A1H:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
13A5H:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
13A9H:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
13ADH:  64 0F BB 6E 00                               BTC     FS:[BP],BP
13B2H:  64 0F BB 2C                                  BTC     FS:[SI],BP
13B6H:  64 0F BB 2D                                  BTC     FS:[DI],BP
13BAH:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
13BEH:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
13C2H:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
13C6H:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
13CAH:  65 0F BB 6E 00                               BTC     GS:[BP],BP
13CFH:  65 0F BB 2C                                  BTC     GS:[SI],BP
13D3H:  65 0F BB 2D                                  BTC     GS:[DI],BP
13D7H:  0F BA FD 01                                  BTC     BP,01H
13DBH:  0F BA FD FF                                  BTC     BP,0FFH
13DFH:  0F BB F0                                     BTC     AX,SI
13E2H:  0F BB F1                                     BTC     CX,SI
13E5H:  0F BB F2                                     BTC     DX,SI
13E8H:  0F BB F3                                     BTC     BX,SI
13EBH:  0F BB F4                                     BTC     SP,SI
13EEH:  0F BB F5                                     BTC     BP,SI
13F1H:  0F BB F6                                     BTC     SI,SI
13F4H:  0F BB F7                                     BTC     DI,SI
13F7H:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234H],SI
13FCH:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234H],SI
1401H:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234H],SI
1406H:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234H],SI
140BH:  0F BB B6 34 12                               BTC     SS:[BP+1234H],SI
1410H:  0F BB B4 34 12                               BTC     DS:[SI+1234H],SI
1415H:  0F BB B5 34 12                               BTC     DS:[DI+1234H],SI
141AH:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
141EH:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
1422H:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
1426H:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
142AH:  2E 0F BB 76 00                               BTC     CS:[BP],SI
142FH:  2E 0F BB 34                                  BTC     CS:[SI],SI
1433H:  2E 0F BB 35                                  BTC     CS:[DI],SI
1437H:  0F BB 30                                     BTC     DS:[BX+SI],SI
143AH:  0F BB 31                                     BTC     DS:[BX+DI],SI
143DH:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
1441H:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
1445H:  3E 0F BB 76 00                               BTC     DS:[BP],SI
144AH:  0F BB 34                                     BTC     DS:[SI],SI
144DH:  0F BB 35                                     BTC     DS:[DI],SI
1450H:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
1454H:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
1458H:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
145CH:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
1460H:  26 0F BB 76 00                               BTC     ES:[BP],SI
1465H:  26 0F BB 34                                  BTC     ES:[SI],SI
1469H:  26 0F BB 35                                  BTC     ES:[DI],SI
146DH:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
1471H:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
1475H:  0F BB 32                                     BTC     SS:[BP+SI],SI
1478H:  0F BB 33                                     BTC     SS:[BP+DI],SI
147BH:  0F BB 76 00                                  BTC     SS:[BP],SI
147FH:  36 0F BB 34                                  BTC     SS:[SI],SI
1483H:  36 0F BB 35                                  BTC     SS:[DI],SI
1487H:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
148BH:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
148FH:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
1493H:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
1497H:  64 0F BB 76 00                               BTC     FS:[BP],SI
149CH:  64 0F BB 34                                  BTC     FS:[SI],SI
14A0H:  64 0F BB 35                                  BTC     FS:[DI],SI
14A4H:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
14A8H:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
14ACH:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
14B0H:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
14B4H:  65 0F BB 76 00                               BTC     GS:[BP],SI
14B9H:  65 0F BB 34                                  BTC     GS:[SI],SI
14BDH:  65 0F BB 35                                  BTC     GS:[DI],SI
14C1H:  0F BA FE 01                                  BTC     SI,01H
14C5H:  0F BA FE FF                                  BTC     SI,0FFH
14C9H:  0F BB F8                                     BTC     AX,DI
14CCH:  0F BB F9                                     BTC     CX,DI
14CFH:  0F BB FA                                     BTC     DX,DI
14D2H:  0F BB FB                                     BTC     BX,DI
14D5H:  0F BB FC                                     BTC     SP,DI
14D8H:  0F BB FD                                     BTC     BP,DI
14DBH:  0F BB FE                                     BTC     SI,DI
14DEH:  0F BB FF                                     BTC     DI,DI
14E1H:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234H],DI
14E6H:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234H],DI
14EBH:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234H],DI
14F0H:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234H],DI
14F5H:  0F BB BE 34 12                               BTC     SS:[BP+1234H],DI
14FAH:  0F BB BC 34 12                               BTC     DS:[SI+1234H],DI
14FFH:  0F BB BD 34 12                               BTC     DS:[DI+1234H],DI
1504H:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
1508H:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
150CH:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
1510H:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
1514H:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
1519H:  2E 0F BB 3C                                  BTC     CS:[SI],DI
151DH:  2E 0F BB 3D                                  BTC     CS:[DI],DI
1521H:  0F BB 38                                     BTC     DS:[BX+SI],DI
1524H:  0F BB 39                                     BTC     DS:[BX+DI],DI
1527H:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
152BH:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
152FH:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
1534H:  0F BB 3C                                     BTC     DS:[SI],DI
1537H:  0F BB 3D                                     BTC     DS:[DI],DI
153AH:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
153EH:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
1542H:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
1546H:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
154AH:  26 0F BB 7E 00                               BTC     ES:[BP],DI
154FH:  26 0F BB 3C                                  BTC     ES:[SI],DI
1553H:  26 0F BB 3D                                  BTC     ES:[DI],DI
1557H:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
155BH:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
155FH:  0F BB 3A                                     BTC     SS:[BP+SI],DI
1562H:  0F BB 3B                                     BTC     SS:[BP+DI],DI
1565H:  0F BB 7E 00                                  BTC     SS:[BP],DI
1569H:  36 0F BB 3C                                  BTC     SS:[SI],DI
156DH:  36 0F BB 3D                                  BTC     SS:[DI],DI
1571H:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
1575H:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
1579H:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
157DH:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
1581H:  64 0F BB 7E 00                               BTC     FS:[BP],DI
1586H:  64 0F BB 3C                                  BTC     FS:[SI],DI
158AH:  64 0F BB 3D                                  BTC     FS:[DI],DI
158EH:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
1592H:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
1596H:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
159AH:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
159EH:  65 0F BB 7E 00                               BTC     GS:[BP],DI
15A3H:  65 0F BB 3C                                  BTC     GS:[SI],DI
15A7H:  65 0F BB 3D                                  BTC     GS:[DI],DI
15ABH:  0F BA FF 01                                  BTC     DI,01H
15AFH:  0F BA FF FF                                  BTC     DI,0FFH
15B3H:  66 0F BA F8 FF                               BTC     EAX,0FFH
15B8H:  66 0F BA F9 FF                               BTC     ECX,0FFH
15BDH:  66 0F BA FA FF                               BTC     EDX,0FFH
15C2H:  66 0F BA FB FF                               BTC     EBX,0FFH
15C7H:  66 0F BA FC FF                               BTC     ESP,0FFH
15CCH:  66 0F BA FD FF                               BTC     EBP,0FFH
15D1H:  66 0F BA FE FF                               BTC     ESI,0FFH
15D6H:  66 0F BA FF FF                               BTC     EDI,0FFH
15DBH:  0F 80 36 01                                  JO      1715H
15DFH:  0F 81 1D EB                                  JNO     0100H
15E3H:  0F 82 2E 01                                  JB      1715H
15E7H:  0F 83 15 EB                                  JNB     0100H
15EBH:  0F 84 26 01                                  JZ      1715H
15EFH:  0F 85 0D EB                                  JNZ     0100H
15F3H:  0F 86 1E 01                                  JBE     1715H
15F7H:  0F 87 05 EB                                  JNBE    0100H
15FBH:  0F 88 16 01                                  JS      1715H
15FFH:  0F 89 FD EA                                  JNS     0100H
1603H:  0F 8A 0E 01                                  JP      1715H
1607H:  0F 8B F5 EA                                  JNP     0100H
160BH:  0F 8C 06 01                                  JL      1715H
160FH:  0F 8D ED EA                                  JNL     0100H
1613H:  0F 8E FE 00                                  JLE     1715H
1617H:  0F 8F E5 EA                                  JNLE    0100H
161BH:  70 FE                                        JO      161BH
161DH:  71 21                                        JNO     1640H
161FH:  72 FA                                        JB      161BH
1621H:  73 1D                                        JNB     1640H
1623H:  74 F6                                        JZ      161BH
1625H:  75 19                                        JNZ     1640H
1627H:  76 F2                                        JBE     161BH
1629H:  77 15                                        JNBE    1640H
162BH:  78 EE                                        JS      161BH
162DH:  79 11                                        JNS     1640H
162FH:  7A EA                                        JP      161BH
1631H:  7B 0D                                        JNP     1640H
1633H:  7C E6                                        JL      161BH
1635H:  7D 09                                        JNL     1640H
1637H:  7E E2                                        JLE     161BH
1639H:  7F 05                                        JNLE    1640H
163BH:  E3 DE                                        JCXZ    161BH
163DH:  67 E3 00                                     JECXZ   1640H
1640H:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
164AH:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
1654H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
165EH:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
1668H:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
1671H:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
167AH:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
1687H:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
1691H:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
169BH:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
16A5H:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
16AFH:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
16B8H:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
16C1H:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
16CEH:  F0 67 0F BB 84 EB 21 43 00 00                LOCK BTC     DS:[EBX+EBP*8+00004321H],AX
16D8H:  F0 67 0F BB 85 21 43 00 00                   LOCK BTC     SS:[EBP+00004321H],AX
16E1H:  F0 67 0F BB 04 8D 21 43 00 00                LOCK BTC     DS:[ECX*4+00004321H],AX
16EBH:  F0 67 0F BB 04 ED B0 00 00 00                LOCK BTC     SS:[EBP*8+000000B0H],AX
16F5H:  F0 67 0F BB 04 B5 21 43 00 00                LOCK BTC     DS:[ESI*4+00004321H],AX
16FFH:  F0 67 0F BB 04 7D 21 43 65 87                LOCK BTC     DS:[EDI*2+87654321H],AX
1709H:  F0 66 67 0F BA BC 9D 78 56 34 12 9A          LOCK BTC     dword ptr SS:[EBP+EBX*4+12345678H],9AH
1715H:  D5 0A                                        AAD
