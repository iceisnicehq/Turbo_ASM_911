0100H:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321H],0FFH
010DH:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321H],0FFH
011AH:  0F BB 06 34 12                               BTC     DS:[1234H],AX
011FH:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678H],AX
0128H:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
0130H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
013BH:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321H],0FFH
0148H:  0F BB 06 34 12                               BTC     DS:[1234H],AX
014DH:  67 0F BB 05 78 56 34 12                      BTC     DS:[12345678H],AX
0155H:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321H],0FFH
0162H:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321H],0FFH
016FH:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
0177H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
0182H:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321H],0FFH
018FH:  26 0F BB 06 34 12                            BTC     ES:[1234H],AX
0195H:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678H],AX
019EH:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123H],01H
01A6H:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678H],10H
01B1H:  0F BA 38 A0                                  BTC     word ptr DS:[BX+SI],0A0H
01B5H:  66 0F BA 38 B0                               BTC     dword ptr DS:[BX+SI],0B0H
01BAH:  0F BA 39 A0                                  BTC     word ptr DS:[BX+DI],0A0H
01BEH:  66 0F BA 39 B0                               BTC     dword ptr DS:[BX+DI],0B0H
01C3H:  0F BA 3A A0                                  BTC     word ptr SS:[BP+SI],0A0H
01C7H:  66 0F BA 3A B0                               BTC     dword ptr SS:[BP+SI],0B0H
01CCH:  0F BA 3B A0                                  BTC     word ptr SS:[BP+DI],0A0H
01D0H:  66 0F BA 3B B0                               BTC     dword ptr SS:[BP+DI],0B0H
01D5H:  0F BA 7E 00 A0                               BTC     word ptr SS:[BP],0A0H
01DAH:  66 0F BA 7E 00 B0                            BTC     dword ptr SS:[BP],0B0H
01E0H:  0F BA 3D A0                                  BTC     word ptr DS:[DI],0A0H
01E4H:  66 0F BA 3D B0                               BTC     dword ptr DS:[DI],0B0H
01E9H:  0F BA 3C A0                                  BTC     word ptr DS:[SI],0A0H
01EDH:  66 0F BA 3C B0                               BTC     dword ptr DS:[SI],0B0H
01F2H:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],AX
01FBH:  3E 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],AX
0205H:  67 0F BB 44 2D 00                            BTC     SS:[EBP+EBP],AX
020BH:  67 0F BB 04 2C                               BTC     SS:[ESP+EBP],AX
0210H:  67 0F BB 04 DA                               BTC     DS:[EDX+EBX*8],AX
0215H:  67 0F BB 44 4B 01                            BTC     DS:[EBX+ECX*2+01H],AX
021BH:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],AX
0224H:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX
022DH:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],AX
0236H:  F0 0F BB 00                                  LOCK BTC     DS:[BX+SI],AX
023AH:  F0 0F BB 01                                  LOCK BTC     DS:[BX+DI],AX
023EH:  F0 0F BB 02                                  LOCK BTC     SS:[BP+SI],AX
0242H:  F0 0F BB 03                                  LOCK BTC     SS:[BP+DI],AX
0246H:  F0 0F BB 46 00                               LOCK BTC     SS:[BP],AX
024BH:  F0 0F BB 04                                  LOCK BTC     DS:[SI],AX
024FH:  F0 0F BB 05                                  LOCK BTC     DS:[DI],AX
0253H:  F0 0F BB 80 34 12                            LOCK BTC     DS:[BX+SI+1234H],AX
0259H:  F0 0F BB 81 34 12                            LOCK BTC     DS:[BX+DI+1234H],AX
025FH:  F0 0F BB 82 34 12                            LOCK BTC     SS:[BP+SI+1234H],AX
0265H:  F0 0F BB 83 34 12                            LOCK BTC     SS:[BP+DI+1234H],AX
026BH:  F0 0F BB 86 34 12                            LOCK BTC     SS:[BP+1234H],AX
0271H:  F0 0F BB 84 34 12                            LOCK BTC     DS:[SI+1234H],AX
0277H:  F0 0F BB 85 34 12                            LOCK BTC     DS:[DI+1234H],AX
027DH:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],CX
0286H:  3E 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],CX
0290H:  67 0F BB 4C 2D 00                            BTC     SS:[EBP+EBP],CX
0296H:  67 0F BB 0C 2C                               BTC     SS:[ESP+EBP],CX
029BH:  67 0F BB 0C DA                               BTC     DS:[EDX+EBX*8],CX
02A0H:  67 0F BB 4C 4B 01                            BTC     DS:[EBX+ECX*2+01H],CX
02A6H:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],CX
02AFH:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX
02B8H:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],CX
02C1H:  F0 0F BB 08                                  LOCK BTC     DS:[BX+SI],CX
02C5H:  F0 0F BB 09                                  LOCK BTC     DS:[BX+DI],CX
02C9H:  F0 0F BB 0A                                  LOCK BTC     SS:[BP+SI],CX
02CDH:  F0 0F BB 0B                                  LOCK BTC     SS:[BP+DI],CX
02D1H:  F0 0F BB 4E 00                               LOCK BTC     SS:[BP],CX
02D6H:  F0 0F BB 0C                                  LOCK BTC     DS:[SI],CX
02DAH:  F0 0F BB 0D                                  LOCK BTC     DS:[DI],CX
02DEH:  F0 0F BB 88 34 12                            LOCK BTC     DS:[BX+SI+1234H],CX
02E4H:  F0 0F BB 89 34 12                            LOCK BTC     DS:[BX+DI+1234H],CX
02EAH:  F0 0F BB 8A 34 12                            LOCK BTC     SS:[BP+SI+1234H],CX
02F0H:  F0 0F BB 8B 34 12                            LOCK BTC     SS:[BP+DI+1234H],CX
02F6H:  F0 0F BB 8E 34 12                            LOCK BTC     SS:[BP+1234H],CX
02FCH:  F0 0F BB 8C 34 12                            LOCK BTC     DS:[SI+1234H],CX
0302H:  F0 0F BB 8D 34 12                            LOCK BTC     DS:[DI+1234H],CX
0308H:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DX
0311H:  3E 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DX
031BH:  67 0F BB 54 2D 00                            BTC     SS:[EBP+EBP],DX
0321H:  67 0F BB 14 2C                               BTC     SS:[ESP+EBP],DX
0326H:  67 0F BB 14 DA                               BTC     DS:[EDX+EBX*8],DX
032BH:  67 0F BB 54 4B 01                            BTC     DS:[EBX+ECX*2+01H],DX
0331H:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DX
033AH:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX
0343H:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DX
034CH:  F0 0F BB 10                                  LOCK BTC     DS:[BX+SI],DX
0350H:  F0 0F BB 11                                  LOCK BTC     DS:[BX+DI],DX
0354H:  F0 0F BB 12                                  LOCK BTC     SS:[BP+SI],DX
0358H:  F0 0F BB 13                                  LOCK BTC     SS:[BP+DI],DX
035CH:  F0 0F BB 56 00                               LOCK BTC     SS:[BP],DX
0361H:  F0 0F BB 14                                  LOCK BTC     DS:[SI],DX
0365H:  F0 0F BB 15                                  LOCK BTC     DS:[DI],DX
0369H:  F0 0F BB 90 34 12                            LOCK BTC     DS:[BX+SI+1234H],DX
036FH:  F0 0F BB 91 34 12                            LOCK BTC     DS:[BX+DI+1234H],DX
0375H:  F0 0F BB 92 34 12                            LOCK BTC     SS:[BP+SI+1234H],DX
037BH:  F0 0F BB 93 34 12                            LOCK BTC     SS:[BP+DI+1234H],DX
0381H:  F0 0F BB 96 34 12                            LOCK BTC     SS:[BP+1234H],DX
0387H:  F0 0F BB 94 34 12                            LOCK BTC     DS:[SI+1234H],DX
038DH:  F0 0F BB 95 34 12                            LOCK BTC     DS:[DI+1234H],DX
0393H:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BX
039CH:  3E 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BX
03A6H:  67 0F BB 5C 2D 00                            BTC     SS:[EBP+EBP],BX
03ACH:  67 0F BB 1C 2C                               BTC     SS:[ESP+EBP],BX
03B1H:  67 0F BB 1C DA                               BTC     DS:[EDX+EBX*8],BX
03B6H:  67 0F BB 5C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BX
03BCH:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BX
03C5H:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX
03CEH:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BX
03D7H:  F0 0F BB 18                                  LOCK BTC     DS:[BX+SI],BX
03DBH:  F0 0F BB 19                                  LOCK BTC     DS:[BX+DI],BX
03DFH:  F0 0F BB 1A                                  LOCK BTC     SS:[BP+SI],BX
03E3H:  F0 0F BB 1B                                  LOCK BTC     SS:[BP+DI],BX
03E7H:  F0 0F BB 5E 00                               LOCK BTC     SS:[BP],BX
03ECH:  F0 0F BB 1C                                  LOCK BTC     DS:[SI],BX
03F0H:  F0 0F BB 1D                                  LOCK BTC     DS:[DI],BX
03F4H:  F0 0F BB 98 34 12                            LOCK BTC     DS:[BX+SI+1234H],BX
03FAH:  F0 0F BB 99 34 12                            LOCK BTC     DS:[BX+DI+1234H],BX
0400H:  F0 0F BB 9A 34 12                            LOCK BTC     SS:[BP+SI+1234H],BX
0406H:  F0 0F BB 9B 34 12                            LOCK BTC     SS:[BP+DI+1234H],BX
040CH:  F0 0F BB 9E 34 12                            LOCK BTC     SS:[BP+1234H],BX
0412H:  F0 0F BB 9C 34 12                            LOCK BTC     DS:[SI+1234H],BX
0418H:  F0 0F BB 9D 34 12                            LOCK BTC     DS:[DI+1234H],BX
041EH:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SP
0427H:  3E 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SP
0431H:  67 0F BB 64 2D 00                            BTC     SS:[EBP+EBP],SP
0437H:  67 0F BB 24 2C                               BTC     SS:[ESP+EBP],SP
043CH:  67 0F BB 24 DA                               BTC     DS:[EDX+EBX*8],SP
0441H:  67 0F BB 64 4B 01                            BTC     DS:[EBX+ECX*2+01H],SP
0447H:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SP
0450H:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP
0459H:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SP
0462H:  F0 0F BB 20                                  LOCK BTC     DS:[BX+SI],SP
0466H:  F0 0F BB 21                                  LOCK BTC     DS:[BX+DI],SP
046AH:  F0 0F BB 22                                  LOCK BTC     SS:[BP+SI],SP
046EH:  F0 0F BB 23                                  LOCK BTC     SS:[BP+DI],SP
0472H:  F0 0F BB 66 00                               LOCK BTC     SS:[BP],SP
0477H:  F0 0F BB 24                                  LOCK BTC     DS:[SI],SP
047BH:  F0 0F BB 25                                  LOCK BTC     DS:[DI],SP
047FH:  F0 0F BB A0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SP
0485H:  F0 0F BB A1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SP
048BH:  F0 0F BB A2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SP
0491H:  F0 0F BB A3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SP
0497H:  F0 0F BB A6 34 12                            LOCK BTC     SS:[BP+1234H],SP
049DH:  F0 0F BB A4 34 12                            LOCK BTC     DS:[SI+1234H],SP
04A3H:  F0 0F BB A5 34 12                            LOCK BTC     DS:[DI+1234H],SP
04A9H:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],BP
04B2H:  3E 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],BP
04BCH:  67 0F BB 6C 2D 00                            BTC     SS:[EBP+EBP],BP
04C2H:  67 0F BB 2C 2C                               BTC     SS:[ESP+EBP],BP
04C7H:  67 0F BB 2C DA                               BTC     DS:[EDX+EBX*8],BP
04CCH:  67 0F BB 6C 4B 01                            BTC     DS:[EBX+ECX*2+01H],BP
04D2H:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],BP
04DBH:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP
04E4H:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],BP
04EDH:  F0 0F BB 28                                  LOCK BTC     DS:[BX+SI],BP
04F1H:  F0 0F BB 29                                  LOCK BTC     DS:[BX+DI],BP
04F5H:  F0 0F BB 2A                                  LOCK BTC     SS:[BP+SI],BP
04F9H:  F0 0F BB 2B                                  LOCK BTC     SS:[BP+DI],BP
04FDH:  F0 0F BB 6E 00                               LOCK BTC     SS:[BP],BP
0502H:  F0 0F BB 2C                                  LOCK BTC     DS:[SI],BP
0506H:  F0 0F BB 2D                                  LOCK BTC     DS:[DI],BP
050AH:  F0 0F BB A8 34 12                            LOCK BTC     DS:[BX+SI+1234H],BP
0510H:  F0 0F BB A9 34 12                            LOCK BTC     DS:[BX+DI+1234H],BP
0516H:  F0 0F BB AA 34 12                            LOCK BTC     SS:[BP+SI+1234H],BP
051CH:  F0 0F BB AB 34 12                            LOCK BTC     SS:[BP+DI+1234H],BP
0522H:  F0 0F BB AE 34 12                            LOCK BTC     SS:[BP+1234H],BP
0528H:  F0 0F BB AC 34 12                            LOCK BTC     DS:[SI+1234H],BP
052EH:  F0 0F BB AD 34 12                            LOCK BTC     DS:[DI+1234H],BP
0534H:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],SI
053DH:  3E 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],SI
0547H:  67 0F BB 74 2D 00                            BTC     SS:[EBP+EBP],SI
054DH:  67 0F BB 34 2C                               BTC     SS:[ESP+EBP],SI
0552H:  67 0F BB 34 DA                               BTC     DS:[EDX+EBX*8],SI
0557H:  67 0F BB 74 4B 01                            BTC     DS:[EBX+ECX*2+01H],SI
055DH:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],SI
0566H:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI
056FH:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],SI
0578H:  F0 0F BB 30                                  LOCK BTC     DS:[BX+SI],SI
057CH:  F0 0F BB 31                                  LOCK BTC     DS:[BX+DI],SI
0580H:  F0 0F BB 32                                  LOCK BTC     SS:[BP+SI],SI
0584H:  F0 0F BB 33                                  LOCK BTC     SS:[BP+DI],SI
0588H:  F0 0F BB 76 00                               LOCK BTC     SS:[BP],SI
058DH:  F0 0F BB 34                                  LOCK BTC     DS:[SI],SI
0591H:  F0 0F BB 35                                  LOCK BTC     DS:[DI],SI
0595H:  F0 0F BB B0 34 12                            LOCK BTC     DS:[BX+SI+1234H],SI
059BH:  F0 0F BB B1 34 12                            LOCK BTC     DS:[BX+DI+1234H],SI
05A1H:  F0 0F BB B2 34 12                            LOCK BTC     SS:[BP+SI+1234H],SI
05A7H:  F0 0F BB B3 34 12                            LOCK BTC     SS:[BP+DI+1234H],SI
05ADH:  F0 0F BB B6 34 12                            LOCK BTC     SS:[BP+1234H],SI
05B3H:  F0 0F BB B4 34 12                            LOCK BTC     DS:[SI+1234H],SI
05B9H:  F0 0F BB B5 34 12                            LOCK BTC     DS:[DI+1234H],SI
05BFH:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100H],DI
05C8H:  3E 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678H],DI
05D2H:  67 0F BB 7C 2D 00                            BTC     SS:[EBP+EBP],DI
05D8H:  67 0F BB 3C 2C                               BTC     SS:[ESP+EBP],DI
05DDH:  67 0F BB 3C DA                               BTC     DS:[EDX+EBX*8],DI
05E2H:  67 0F BB 7C 4B 01                            BTC     DS:[EBX+ECX*2+01H],DI
05E8H:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100H],DI
05F1H:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI
05FAH:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040H],DI
0603H:  F0 0F BB 38                                  LOCK BTC     DS:[BX+SI],DI
0607H:  F0 0F BB 39                                  LOCK BTC     DS:[BX+DI],DI
060BH:  F0 0F BB 3A                                  LOCK BTC     SS:[BP+SI],DI
060FH:  F0 0F BB 3B                                  LOCK BTC     SS:[BP+DI],DI
0613H:  F0 0F BB 7E 00                               LOCK BTC     SS:[BP],DI
0618H:  F0 0F BB 3C                                  LOCK BTC     DS:[SI],DI
061CH:  F0 0F BB 3D                                  LOCK BTC     DS:[DI],DI
0620H:  F0 0F BB B8 34 12                            LOCK BTC     DS:[BX+SI+1234H],DI
0626H:  F0 0F BB B9 34 12                            LOCK BTC     DS:[BX+DI+1234H],DI
062CH:  F0 0F BB BA 34 12                            LOCK BTC     SS:[BP+SI+1234H],DI
0632H:  F0 0F BB BB 34 12                            LOCK BTC     SS:[BP+DI+1234H],DI
0638H:  F0 0F BB BE 34 12                            LOCK BTC     SS:[BP+1234H],DI
063EH:  F0 0F BB BC 34 12                            LOCK BTC     DS:[SI+1234H],DI
0644H:  F0 0F BB BD 34 12                            LOCK BTC     DS:[DI+1234H],DI
064AH:  66 0F BB C0                                  BTC     EAX,EAX
064EH:  66 0F BB C1                                  BTC     ECX,EAX
0652H:  66 0F BB C2                                  BTC     EDX,EAX
0656H:  66 0F BB C3                                  BTC     EBX,EAX
065AH:  66 0F BB C4                                  BTC     ESP,EAX
065EH:  66 0F BB C5                                  BTC     EBP,EAX
0662H:  66 0F BB C6                                  BTC     ESI,EAX
0666H:  66 0F BB C7                                  BTC     EDI,EAX
066AH:  66 67 0F BB 00                               BTC     DS:[EAX],EAX
066FH:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX+00001234H],ECX
0678H:  66 2E 67 0F BB 18                            BTC     CS:[EAX],EBX
067EH:  66 67 0F BB 10                               BTC     DS:[EAX],EDX
0683H:  66 26 67 0F BB 20                            BTC     ES:[EAX],ESP
0689H:  66 36 67 0F BB 28                            BTC     SS:[EAX],EBP
068FH:  66 64 67 0F BB 30                            BTC     FS:[EAX],ESI
0695H:  66 65 67 0F BB 38                            BTC     GS:[EAX],EDI
069BH:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EAX
06A5H:  66 3E 67 0F BB 84 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EAX
06B0H:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP+EBP],EAX
06B7H:  66 67 0F BB 04 2C                            BTC     SS:[ESP+EBP],EAX
06BDH:  66 67 0F BB 04 DA                            BTC     DS:[EDX+EBX*8],EAX
06C3H:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX+ECX*2+01H],EAX
06CAH:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EAX
06D4H:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX
06DEH:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EAX
06E8H:  F0 66 0F BB 00                               LOCK BTC     DS:[BX+SI],EAX
06EDH:  F0 66 0F BB 01                               LOCK BTC     DS:[BX+DI],EAX
06F2H:  F0 66 0F BB 02                               LOCK BTC     SS:[BP+SI],EAX
06F7H:  F0 66 0F BB 03                               LOCK BTC     SS:[BP+DI],EAX
06FCH:  F0 66 0F BB 46 00                            LOCK BTC     SS:[BP],EAX
0702H:  F0 66 0F BB 04                               LOCK BTC     DS:[SI],EAX
0707H:  F0 66 0F BB 05                               LOCK BTC     DS:[DI],EAX
070CH:  F0 66 0F BB 80 34 12                         LOCK BTC     DS:[BX+SI+1234H],EAX
0713H:  F0 66 0F BB 81 34 12                         LOCK BTC     DS:[BX+DI+1234H],EAX
071AH:  F0 66 0F BB 82 34 12                         LOCK BTC     SS:[BP+SI+1234H],EAX
0721H:  F0 66 0F BB 83 34 12                         LOCK BTC     SS:[BP+DI+1234H],EAX
0728H:  F0 66 0F BB 86 34 12                         LOCK BTC     SS:[BP+1234H],EAX
072FH:  F0 66 0F BB 84 34 12                         LOCK BTC     DS:[SI+1234H],EAX
0736H:  F0 66 0F BB 85 34 12                         LOCK BTC     DS:[DI+1234H],EAX
073DH:  66 0F BA F8 01                               BTC     EAX,01H
0742H:  66 0F BB C8                                  BTC     EAX,ECX
0746H:  66 0F BB C9                                  BTC     ECX,ECX
074AH:  66 0F BB CA                                  BTC     EDX,ECX
074EH:  66 0F BB CB                                  BTC     EBX,ECX
0752H:  66 0F BB CC                                  BTC     ESP,ECX
0756H:  66 0F BB CD                                  BTC     EBP,ECX
075AH:  66 0F BB CE                                  BTC     ESI,ECX
075EH:  66 0F BB CF                                  BTC     EDI,ECX
0762H:  66 67 0F BB 01                               BTC     DS:[ECX],EAX
0767H:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX+00001234H],ECX
0770H:  66 2E 67 0F BB 19                            BTC     CS:[ECX],EBX
0776H:  66 67 0F BB 11                               BTC     DS:[ECX],EDX
077BH:  66 26 67 0F BB 21                            BTC     ES:[ECX],ESP
0781H:  66 36 67 0F BB 29                            BTC     SS:[ECX],EBP
0787H:  66 64 67 0F BB 31                            BTC     FS:[ECX],ESI
078DH:  66 65 67 0F BB 39                            BTC     GS:[ECX],EDI
0793H:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ECX
079DH:  66 3E 67 0F BB 8C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ECX
07A8H:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP+EBP],ECX
07AFH:  66 67 0F BB 0C 2C                            BTC     SS:[ESP+EBP],ECX
07B5H:  66 67 0F BB 0C DA                            BTC     DS:[EDX+EBX*8],ECX
07BBH:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX+ECX*2+01H],ECX
07C2H:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ECX
07CCH:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX
07D6H:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ECX
07E0H:  F0 66 0F BB 08                               LOCK BTC     DS:[BX+SI],ECX
07E5H:  F0 66 0F BB 09                               LOCK BTC     DS:[BX+DI],ECX
07EAH:  F0 66 0F BB 0A                               LOCK BTC     SS:[BP+SI],ECX
07EFH:  F0 66 0F BB 0B                               LOCK BTC     SS:[BP+DI],ECX
07F4H:  F0 66 0F BB 4E 00                            LOCK BTC     SS:[BP],ECX
07FAH:  F0 66 0F BB 0C                               LOCK BTC     DS:[SI],ECX
07FFH:  F0 66 0F BB 0D                               LOCK BTC     DS:[DI],ECX
0804H:  F0 66 0F BB 88 34 12                         LOCK BTC     DS:[BX+SI+1234H],ECX
080BH:  F0 66 0F BB 89 34 12                         LOCK BTC     DS:[BX+DI+1234H],ECX
0812H:  F0 66 0F BB 8A 34 12                         LOCK BTC     SS:[BP+SI+1234H],ECX
0819H:  F0 66 0F BB 8B 34 12                         LOCK BTC     SS:[BP+DI+1234H],ECX
0820H:  F0 66 0F BB 8E 34 12                         LOCK BTC     SS:[BP+1234H],ECX
0827H:  F0 66 0F BB 8C 34 12                         LOCK BTC     DS:[SI+1234H],ECX
082EH:  F0 66 0F BB 8D 34 12                         LOCK BTC     DS:[DI+1234H],ECX
0835H:  66 0F BA F9 01                               BTC     ECX,01H
083AH:  66 0F BB D0                                  BTC     EAX,EDX
083EH:  66 0F BB D1                                  BTC     ECX,EDX
0842H:  66 0F BB D2                                  BTC     EDX,EDX
0846H:  66 0F BB D3                                  BTC     EBX,EDX
084AH:  66 0F BB D4                                  BTC     ESP,EDX
084EH:  66 0F BB D5                                  BTC     EBP,EDX
0852H:  66 0F BB D6                                  BTC     ESI,EDX
0856H:  66 0F BB D7                                  BTC     EDI,EDX
085AH:  66 67 0F BB 02                               BTC     DS:[EDX],EAX
085FH:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX+00001234H],ECX
0868H:  66 2E 67 0F BB 1A                            BTC     CS:[EDX],EBX
086EH:  66 67 0F BB 12                               BTC     DS:[EDX],EDX
0873H:  66 26 67 0F BB 22                            BTC     ES:[EDX],ESP
0879H:  66 36 67 0F BB 2A                            BTC     SS:[EDX],EBP
087FH:  66 64 67 0F BB 32                            BTC     FS:[EDX],ESI
0885H:  66 65 67 0F BB 3A                            BTC     GS:[EDX],EDI
088BH:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDX
0895H:  66 3E 67 0F BB 94 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDX
08A0H:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP+EBP],EDX
08A7H:  66 67 0F BB 14 2C                            BTC     SS:[ESP+EBP],EDX
08ADH:  66 67 0F BB 14 DA                            BTC     DS:[EDX+EBX*8],EDX
08B3H:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDX
08BAH:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDX
08C4H:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX
08CEH:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDX
08D8H:  F0 66 0F BB 10                               LOCK BTC     DS:[BX+SI],EDX
08DDH:  F0 66 0F BB 11                               LOCK BTC     DS:[BX+DI],EDX
08E2H:  F0 66 0F BB 12                               LOCK BTC     SS:[BP+SI],EDX
08E7H:  F0 66 0F BB 13                               LOCK BTC     SS:[BP+DI],EDX
08ECH:  F0 66 0F BB 56 00                            LOCK BTC     SS:[BP],EDX
08F2H:  F0 66 0F BB 14                               LOCK BTC     DS:[SI],EDX
08F7H:  F0 66 0F BB 15                               LOCK BTC     DS:[DI],EDX
08FCH:  F0 66 0F BB 90 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDX
0903H:  F0 66 0F BB 91 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDX
090AH:  F0 66 0F BB 92 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDX
0911H:  F0 66 0F BB 93 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDX
0918H:  F0 66 0F BB 96 34 12                         LOCK BTC     SS:[BP+1234H],EDX
091FH:  F0 66 0F BB 94 34 12                         LOCK BTC     DS:[SI+1234H],EDX
0926H:  F0 66 0F BB 95 34 12                         LOCK BTC     DS:[DI+1234H],EDX
092DH:  66 0F BA FA 01                               BTC     EDX,01H
0932H:  66 0F BB D8                                  BTC     EAX,EBX
0936H:  66 0F BB D9                                  BTC     ECX,EBX
093AH:  66 0F BB DA                                  BTC     EDX,EBX
093EH:  66 0F BB DB                                  BTC     EBX,EBX
0942H:  66 0F BB DC                                  BTC     ESP,EBX
0946H:  66 0F BB DD                                  BTC     EBP,EBX
094AH:  66 0F BB DE                                  BTC     ESI,EBX
094EH:  66 0F BB DF                                  BTC     EDI,EBX
0952H:  66 67 0F BB 03                               BTC     DS:[EBX],EAX
0957H:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX+00001234H],ECX
0960H:  66 2E 67 0F BB 1B                            BTC     CS:[EBX],EBX
0966H:  66 67 0F BB 13                               BTC     DS:[EBX],EDX
096BH:  66 26 67 0F BB 23                            BTC     ES:[EBX],ESP
0971H:  66 36 67 0F BB 2B                            BTC     SS:[EBX],EBP
0977H:  66 64 67 0F BB 33                            BTC     FS:[EBX],ESI
097DH:  66 65 67 0F BB 3B                            BTC     GS:[EBX],EDI
0983H:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBX
098DH:  66 3E 67 0F BB 9C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBX
0998H:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP+EBP],EBX
099FH:  66 67 0F BB 1C 2C                            BTC     SS:[ESP+EBP],EBX
09A5H:  66 67 0F BB 1C DA                            BTC     DS:[EDX+EBX*8],EBX
09ABH:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBX
09B2H:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBX
09BCH:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX
09C6H:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBX
09D0H:  F0 66 0F BB 18                               LOCK BTC     DS:[BX+SI],EBX
09D5H:  F0 66 0F BB 19                               LOCK BTC     DS:[BX+DI],EBX
09DAH:  F0 66 0F BB 1A                               LOCK BTC     SS:[BP+SI],EBX
09DFH:  F0 66 0F BB 1B                               LOCK BTC     SS:[BP+DI],EBX
09E4H:  F0 66 0F BB 5E 00                            LOCK BTC     SS:[BP],EBX
09EAH:  F0 66 0F BB 1C                               LOCK BTC     DS:[SI],EBX
09EFH:  F0 66 0F BB 1D                               LOCK BTC     DS:[DI],EBX
09F4H:  F0 66 0F BB 98 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBX
09FBH:  F0 66 0F BB 99 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBX
0A02H:  F0 66 0F BB 9A 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBX
0A09H:  F0 66 0F BB 9B 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBX
0A10H:  F0 66 0F BB 9E 34 12                         LOCK BTC     SS:[BP+1234H],EBX
0A17H:  F0 66 0F BB 9C 34 12                         LOCK BTC     DS:[SI+1234H],EBX
0A1EH:  F0 66 0F BB 9D 34 12                         LOCK BTC     DS:[DI+1234H],EBX
0A25H:  66 0F BA FB 01                               BTC     EBX,01H
0A2AH:  66 0F BB E0                                  BTC     EAX,ESP
0A2EH:  66 0F BB E1                                  BTC     ECX,ESP
0A32H:  66 0F BB E2                                  BTC     EDX,ESP
0A36H:  66 0F BB E3                                  BTC     EBX,ESP
0A3AH:  66 0F BB E4                                  BTC     ESP,ESP
0A3EH:  66 0F BB E5                                  BTC     EBP,ESP
0A42H:  66 0F BB E6                                  BTC     ESI,ESP
0A46H:  66 0F BB E7                                  BTC     EDI,ESP
0A4AH:  66 67 0F BB 04 04                            BTC     SS:[ESP+EAX],EAX
0A50H:  66 67 0F BB 8C 2C 34 12 00 00                BTC     SS:[ESP+EBP+00001234H],ECX
0A5AH:  66 2E 67 0F BB 1C 0C                         BTC     CS:[ESP+ECX],EBX
0A61H:  66 3E 67 0F BB 14 14                         BTC     DS:[ESP+EDX],EDX
0A68H:  66 26 67 0F BB 24 24                         BTC     ES:[ESP+ESP],ESP
0A6FH:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],ESP
0A79H:  66 3E 67 0F BB A4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],ESP
0A84H:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP+EBP],ESP
0A8BH:  66 67 0F BB 24 2C                            BTC     SS:[ESP+EBP],ESP
0A91H:  66 67 0F BB 24 DA                            BTC     DS:[EDX+EBX*8],ESP
0A97H:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX+ECX*2+01H],ESP
0A9EH:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],ESP
0AA8H:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP
0AB2H:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],ESP
0ABCH:  F0 66 0F BB 20                               LOCK BTC     DS:[BX+SI],ESP
0AC1H:  F0 66 0F BB 21                               LOCK BTC     DS:[BX+DI],ESP
0AC6H:  F0 66 0F BB 22                               LOCK BTC     SS:[BP+SI],ESP
0ACBH:  F0 66 0F BB 23                               LOCK BTC     SS:[BP+DI],ESP
0AD0H:  F0 66 0F BB 66 00                            LOCK BTC     SS:[BP],ESP
0AD6H:  F0 66 0F BB 24                               LOCK BTC     DS:[SI],ESP
0ADBH:  F0 66 0F BB 25                               LOCK BTC     DS:[DI],ESP
0AE0H:  F0 66 0F BB A0 34 12                         LOCK BTC     DS:[BX+SI+1234H],ESP
0AE7H:  F0 66 0F BB A1 34 12                         LOCK BTC     DS:[BX+DI+1234H],ESP
0AEEH:  F0 66 0F BB A2 34 12                         LOCK BTC     SS:[BP+SI+1234H],ESP
0AF5H:  F0 66 0F BB A3 34 12                         LOCK BTC     SS:[BP+DI+1234H],ESP
0AFCH:  F0 66 0F BB A6 34 12                         LOCK BTC     SS:[BP+1234H],ESP
0B03H:  F0 66 0F BB A4 34 12                         LOCK BTC     DS:[SI+1234H],ESP
0B0AH:  F0 66 0F BB A5 34 12                         LOCK BTC     DS:[DI+1234H],ESP
0B11H:  66 0F BA FC 01                               BTC     ESP,01H
0B16H:  66 0F BB E8                                  BTC     EAX,EBP
0B1AH:  66 0F BB E9                                  BTC     ECX,EBP
0B1EH:  66 0F BB EA                                  BTC     EDX,EBP
0B22H:  66 0F BB EB                                  BTC     EBX,EBP
0B26H:  66 0F BB EC                                  BTC     ESP,EBP
0B2AH:  66 0F BB ED                                  BTC     EBP,EBP
0B2EH:  66 0F BB EE                                  BTC     ESI,EBP
0B32H:  66 0F BB EF                                  BTC     EDI,EBP
0B36H:  66 67 0F BB 45 00                            BTC     SS:[EBP],EAX
0B3CH:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP+00001234H],ECX
0B45H:  66 2E 67 0F BB 5D 00                         BTC     CS:[EBP],EBX
0B4CH:  66 3E 67 0F BB 55 00                         BTC     DS:[EBP],EDX
0B53H:  66 26 67 0F BB 65 00                         BTC     ES:[EBP],ESP
0B5AH:  66 67 0F BB 6D 00                            BTC     SS:[EBP],EBP
0B60H:  66 64 67 0F BB 75 00                         BTC     FS:[EBP],ESI
0B67H:  66 65 67 0F BB 7D 00                         BTC     GS:[EBP],EDI
0B6EH:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EBP
0B78H:  66 3E 67 0F BB AC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EBP
0B83H:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP+EBP],EBP
0B8AH:  66 67 0F BB 2C 2C                            BTC     SS:[ESP+EBP],EBP
0B90H:  66 67 0F BB 2C DA                            BTC     DS:[EDX+EBX*8],EBP
0B96H:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EBP
0B9DH:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EBP
0BA7H:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP
0BB1H:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EBP
0BBBH:  F0 66 0F BB 28                               LOCK BTC     DS:[BX+SI],EBP
0BC0H:  F0 66 0F BB 29                               LOCK BTC     DS:[BX+DI],EBP
0BC5H:  F0 66 0F BB 2A                               LOCK BTC     SS:[BP+SI],EBP
0BCAH:  F0 66 0F BB 2B                               LOCK BTC     SS:[BP+DI],EBP
0BCFH:  F0 66 0F BB 6E 00                            LOCK BTC     SS:[BP],EBP
0BD5H:  F0 66 0F BB 2C                               LOCK BTC     DS:[SI],EBP
0BDAH:  F0 66 0F BB 2D                               LOCK BTC     DS:[DI],EBP
0BDFH:  F0 66 0F BB A8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EBP
0BE6H:  F0 66 0F BB A9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EBP
0BEDH:  F0 66 0F BB AA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EBP
0BF4H:  F0 66 0F BB AB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EBP
0BFBH:  F0 66 0F BB AE 34 12                         LOCK BTC     SS:[BP+1234H],EBP
0C02H:  F0 66 0F BB AC 34 12                         LOCK BTC     DS:[SI+1234H],EBP
0C09H:  F0 66 0F BB AD 34 12                         LOCK BTC     DS:[DI+1234H],EBP
0C10H:  66 0F BA FD 01                               BTC     EBP,01H
0C15H:  66 0F BB F0                                  BTC     EAX,ESI
0C19H:  66 0F BB F1                                  BTC     ECX,ESI
0C1DH:  66 0F BB F2                                  BTC     EDX,ESI
0C21H:  66 0F BB F3                                  BTC     EBX,ESI
0C25H:  66 0F BB F4                                  BTC     ESP,ESI
0C29H:  66 0F BB F5                                  BTC     EBP,ESI
0C2DH:  66 0F BB F6                                  BTC     ESI,ESI
0C31H:  66 0F BB F7                                  BTC     EDI,ESI
0C35H:  66 67 0F BB 06 66 67 0F BB                   BTC     DS:[ESI],EAX
0C3EH:  8E 34 12                                     JLE     1E75H
0C43H:  00 00 66 2E 67 0F BB 1E 66 67 0F             Unknown instUnknown instBTC     CS:[ESI],EAX
0C4CH:  BB 16 66 26                                  BTC     DS:[2666H],DX
0C50H:  67 0F BB 26 66 36 67 0F                      BTC     DS:[ESI],SP
0C58H:  BB 2E 66 64                                  BTC     DS:[6466H],BP
0C5CH:  67 0F BB 36 66 65 67 0F                      BTC     DS:[ESI],SI
0C64H:  BB 3E 66 67                                  BTC     DS:[6766H],DI
0C68H:  0F BB B4 40 00                               BTC     DS:[SI+0040H],SI
0C70H:  01 00 00 66 3E 67 0F BB B4 AB 78 56 34       Unknown instUnknown instUnknown instBTC     DS:[ESP+ESI*4+345678AH√ ˇ Ö fª´4fªÆ4fª¨4fª≠4f∫˝fªfªÒfªÚfªÛfªÙfªıfªˆfª˜fgªfgªé4  f.gªfgªf&gª&f6gª.fdgª6fegª>fgª¥@   f>gª¥´xV4fgªt- fgª4,fgª4⁄fgªtKfgª¥ë   fgª¥¿–¿∞†fgª¥-@0 fª0fª1fª2fª3fªv fª4fª5fª∞4fª±4fª≤4fª≥4  4V4´x word ptr $dword ptr $AX$CX$DX$BX$SP$BP$SI$DI$EAX$ECX$EDX$EBX$ESP$EBP$ESI$EDI$ES:$CS:$SS:$DS:$FS:$GS:$BX+SI$BX+DI$BP+SI$BP+DI$SI$DI$BP$BX$ëóù£©¨Ø≤ADGJMPSVY]aeimquy}ÅÖâç,6Unknown inst$AAD$BTC     $JO      $JNO     $JB      $JNB     $JZ      $JNZ     $JBE     $JNBE    $JS      $JNS     $JP      $JNP     $JL      $JNL     $JLE     $JNLE    $JCXZ    $JECXZ   $LOCK $ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı      ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı     ı  ı  ı  ı  ı  ı  ı     ı  ı  ı  ı  ı  ı  ı     ı  ı  ı  ı  ı  ı  ı     ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  
              ı  ı  ı  ı  ı  ı  ı  ı    ! * 3 < E N W ` i r { Ñ ç ñ   ! * 3 < E N W ` i r { Ñ ç ñ ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  	  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ü ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ±  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı  ı                                                                                                                                                                                                                               ˇ?, ËU· @ Gî tH  ]º2Úª2˚R
  Æ   .      ≠          ≠      ù                        8                         ∫            ¥                           	           
                            )           .           1           ;           C      ˛'j j j j j h¸'êË{=  uˇ6¸'j j êË¯√∏ Î˘ËÂ¸°ˆ';¯'s∏ Î=rˆ£ (∏  √Ë≤˚Ë›ˇÖ¿u
ËH˚Ö¿uËìˇ√ã6(ã>(∏ËAﬁ√ UãÏÉÏVWãv3ˇVçF¸PêËõÉ~¸ u;VçF˙PêËÉôã~˙ÉÁ ãF˙ %ﬂˇ ÄâF˙ãF˛3“V˙%ˇˇâF˛âV¸Vˇv˛RêË/õã«_^…√UãÏÉÏVãvVçF¸PêËºöãV¸˜¬ ÄtVRêËwíÉf¸ Éf˛ˇVˇv˛ˇv¸êËö^…√UãÏÉÏVãvVçF¸PêËÄöãF¸âF˙˜F˙ ÄuVçF˙PêË‰òãF˙^…√UãÏÉÏˇvçF¸PêËOöãF˛…√UãÏÉÏVãvVçF¸PêË5öVËúˇY© uÉF¸ ÉV˛Vˇv˛ˇv¸êËoöãF˛^…√UãÏÉÏVãvVçF¸PêË¸ôVËcˇY© u3¿F˛tÉn¸ É^˛Vˇv˛ˇv¸êË/öãF˛^…√EUãÏÉÏVWã~.é  É~u5WçF˛PêËµòˇv˛çF˛PêËó–3“æ§:Îã;F˛uWˇ\ÎBÉ∆É˙@|Í∏ _^…M  UãÏãF© t© t
© t© @t	©Ä u3¿Î∏ ]√UãÏãF©  t∫ Î© t3“Î∫ ã¬]√UãÏˇvj ˇvˇvêË9¢Éƒ]√UãÏÉÏWêËrâF˛É~
 r wÅ~ˇˇvWƒ~π Ä1¿¸Û´_Én É^
Îˇvj ˇvˇvêËÔ°Éƒ«F
  «F  ãFF
tãFF˛âF«F  ãFF
uü_…√UãÏVWêËîqã–É~ r%wÅ~ˇˇvWVπ Äƒ~≈v¸Û•^_Én É^Îˇvˇv
ˇvˇvˇvêË.°Éƒ
ÎãF¬âF«F  ãF
¬âF
«F  Î†_^]√∏	EUãÏéÿÉÏVãv
VË®˛Y¿uÈ√ VËƒ˛Yã–˜∆ @t
åN˙«F¯œAÎ
«F˙  «F¯  É~ r\wÅ~ˇˇvS˜∆ tÅÊˇ˛ÉŒj ˇvˇvRˇv˙ˇv¯çF¸PêË†Ü¿ui˜∆@ u˜∆ uˇvˇvˇv¸j Ëå˛Éƒˇv¸Ën¸YãF¸ÎBj ˇvRˇv˙ˇv¯çF¸PêËkÉ¿u&˜∆@ tˇvˇv¸j Ë:˛Éƒˇv¸Ë4¸YéF¸&∆   Îª3¿^çf˛]M  ∏	EUãÏéÿÉÏVãvVçF¸PêË¨ï¿u7VË∆¸Y¿u.ãF¸% 0= 0t˜F¸ 0t˜F¸ uVjË2˝VêËîã¿u3¿Îã∆^Y]M  ∏	EUãÏéÿÉÏVãvVçF¸PêËKï¿t3“Î:˜F¸ u,VËå˚Y¿té∆&∆   VãF¸%¯ˇ PêËjé¿tVË∆˚YÎ…VËF¸Yã÷3¿^Y]M  ∏	EUãÏéÿˇvêË ]M  ∏	EUãÏéÿVãvVËà˚YVËC¸Y^]M  ∏	EUãÏéÿÉÏVWãvã~WË∏¸Y¿t˜«Ä t˜«  u˜«Ä u˜« t3¿È5ãFF
uF˜«Ä tVWË´¸Y%ˇPêËøçÈVËã˚Y¿u“VêËÉ© t«˜« t¡VçF¸PêËHîVãF¸ 0Î…VêËÏ âV˙âF¯É~
 vÈÅ uÅ~ˇˇwxÉ~˙ wruÅ~¯ˇˇwiVˇvêËeã¿tÈpˇ˜«@ t#ãF
ãV;F˙rw;V¯vãF+F¯PVˇv¯Ë-¸Éƒ˜«Ä tWËÿ˚Y¿tVWËˆ˚Y%ˇPêË
ç˜« @t[VhœAêË‹îÎO˜« tÈˇWˇv
ˇvË·¸ã¯ˇt3VêË< ;V
wr;FsVêË* ÎãV
ãFRPVj Wj Ë@¸ÉƒVËî˝ã˜ã∆_^çf˛]M  ∏	EUãÏéÿÉÏVãvVçF¯PêË1ì¿uãF¯% 0= 0tVçF˙PêËSëãV¸ãF˙Î3“3¿^çf˛]M  ∏	EUãÏéÿãF]M  ∏	EUãÏéÿãF]M  ∏	EUãÏéÿÉÏVWã~3ˆWçF¸PêËºí¿u?WçF¯PêË1î˜F¸ t˜F¯ ÄtãF¯%   tæ ãF¸% 0= 0uæ @WË°˘Y%ˇ ã∆_^çf˛]M  ∏	EUãÏéÿÉÏVWÉ> ) uhÄj h§:êËÂúÉƒ« ) ∏ QÕ!SçF¸PêË® 3ˇæ§:Îã;F¸uãFãVâDâTÎTGÉ∆Éˇ@|‚3ˇæ§:ÎÉ< uãF¸âÎ÷GÉ∆Éˇ@|Îˇ˛(}«˛(? ã˛(k€ãF¸âá§:ã˛(k€ãFãVâá®:âó¶:_^Y]M  ∏	EUãÏéÿÉÏ«F˙  «F¯  É~ w"uÅ~ˇˇwj ˇvjj j çF¸PêËË~¿tj ˇvˇvjj j çF¸PêËæÅ¿u,éF¸&∆   ˇv¸êËŸ—˙—ÿ—˙—ÿ—˙—ÿ—˙—ÿâ¬ãF¸âF¯âV˙ãV˙ãF¯çf˛]M  ∏	EUãÏéÿˇvËG˚]M  ∏	EUãÏéÿjj êË9é]M  ∏	EUãÏéÿÉÏVãvVçF¸PêË‘ê¿t3“3¿Îã∆ã÷^Y]M  ∏	EUãÏéÿãFFtˇvˇvêË¥ñjjêË€ç]M  ∏	EUãÏéÿˇvË˚]M  ∏	EUãÏéÿˇvËÉ˚]M  ∏	EUãÏéÿˇvËÏ˙∏ ]M  ∏	EUãÏéÿˇvËR˚]M  ∏	EUãÏéÿVãvVËπ˙ã∆^]M   UãÏVWã~ãV)ã«ãââ|«D  «D  ã^;sã∆Î3¿ã¯ˇtâuã∆_^]√UãÏVWã~ãvÉ} tã}ãUâuã⁄âwâTâ|Î	âuâtât_^]√UãÏVWãVãvã|ãL;˜u	ã⁄«G  Îã⁄ââMãŸâ«D  «D  _^]√EUãÏÉÏãFâF˛…M  EUãÏÉÏVWÉ~ uÈÉ ° âF˛ã^˛É ttãF âF˙;Frfã^˛ãwã;F˙rN+F˙= vˇv˙Vˇv˛ËÒ˛ÉƒãÎ
Vˇv˛ËYˇÉƒã∆ âF¸˜F@ tåÿé¿ãNã~¸1¿¸—ÈÛ´——Û™ãF¸Îãtã^˛9wu†3¿_^…M  EUãÏVWã> 3“É} tãu9sã¬Îãã–ãt9uuÏã¬_^]M  EUãÏ3¿]M  EUãÏÉÏVWãV“uÈ¿ ° âF˛ãÚÉÓ ;DwãDÎ3¿âF¸É~¸ tDã^¸É uÉ t5ˇv¸ˇv˛Ëå˛Éƒãã^¸ã∆ã^˛;sã∆Î3¿ã¯ˇtãF¸âEãv¸ã∆ã^˛;sã∆Î3¿ã¯ˇt6É} uÉ} t*Wˇv˛Ë4˛Éƒãã∆ã^˛;sã∆Î3¿ã¯ˇtâuVˇv˛Ë÷˝Éƒ3¿_^…M  EUãÏãF]M  EUãÏÉÏVWãvÉ~
 uå^
É~ uˇv
êË"˙+∆âFvÉ~s«F ãF ;∆r3¿Èï ã∆+FâFÚˇv
êË÷˜ãF
é¿ã~ãNÚ1¿¸—ÈÛ´——Û™ãF
âF˛«F¸  ƒ^¸ãF&âG âFãF
ãVâF˙âV¯ƒ^¯&â7ãF&âGãF
ãVâFˆâVÙãFÚ- ƒ^Ù&â&«G  ƒ^¯&ãGƒ^Ù&âGƒ^¯ƒ^Ù&âG∏ _^…M  EUãÏãF]M  EUãÏÉÏVWÉ~
 uÈãF âFÙ° âF˛ãF
- âF¸ã^¸ã;FÙuãF
ÈÏ ã^¸ã;FÙsgˇvˇvË˝âFˆ¿uÈÃ ã^¸ã- âFÚåÿé¿ãv
ã~ˆãNÚ¸—ÈÛ•——Û§˜F@ tåÿé¿ã~ˆ~Ú1¿ãN+NÚ¸—ÈÛ´——Û™ˇv
ËÖ˝ãFˆÎ{ã^¸ã+FÙ= wÈyˇãF¸FÙâF¯ã+FÙã^¯â«G  «G  ãF¸âGã^¸ãFÙâã^¯ãF¯ã^˛;s
ã^¯ãF¯Î3¿âF˙É~˙ t	ã^˙ãF¯âGãF¯ PË˝ÈˇÈˇ3¿_^…M  EUãÏ3¿]M  EUãÏã^ÉÎã- ]M  EUãÏ3¿]M  ∏	EUãÏéÿÉÏ«F˙ Ä«F¯ É>) tËç3“  Å  ÄÎ7«) ∏ Õ1àN˝äF˝¥ ãÿäá)òô	F¯	V˙Ë≈¿t	ÅN¯ ÉN˙ ãV˙ãF¯çf˛]MÀ∏	EUãÏéÿÉÏ∏ QÕ!â^¸éF¸&ã, 3¿Y]MÀ∏	EUãÏéÿÉÏ«F¸  «F˙
¥0Õ!àf¸àF˝ãV¸ãF˙YY]MÀ∏	éÿË£cÀ∏	EUãÏéÿ]M  ∏	EUãÏéÿÉÏˇvˇvçF¸PçF˙PêË•øâF¯¿uãF¸Î%ãF¯=" t=# t=& tÎ∏ Î∏ Î3¿Î∏ çf˛]M  ∏	EUãÏéÿÉÏãF¿tPçF¸PêË∂øY]M  ∏	EUãÏéÿÉÏãF
É~ tˇvˇvPçF˙PêËÉ¿¿t3“3¿ÎˇvPçF˙PêË¡¿¿uËãV¸ãF˙YY]M  ∏	EUãÏéÿÉÏˇvçF¸PêË¿¿uãF¸Î3¿Y]M  ∏	EUãÏéÿÉÏˇvˇvçF¸Pj êËaø¿uãF¸Î3¿Y]M  ∏	EUãÏéÿÉÏTVWã~3ˆˇvçF™PêË±¿¿u<çF™åV¸âF˙ÎFƒ^˙ˇF˙&Ä? uÛ;˜~ã˜NVçF™Pˇv
ˇvêËHìÉƒ
ƒ^ﬁ&∆ ã∆_^çf˛]M  ∏	EUãÏéÿÉÏVãvVçF˙PêË6ø¿uã∆Î#VçF˙PêË5â¿t3¿Îˇv˙çF¸PêË¡ãF¸^YY]M  XêEUãÏéÿúVPRæ)ä
“tF∏ Õ!ÎÚZX^ùãFË¬πúÎ
$PR∫æQ∏ 	Õ!ZXùäF¥LÕ!Õ!ÀXêEUãÏéÿËÿ&° ¿t>Ës¡ËM¡éÿ&ãL&+ â
 &ãLâ â &ã> &ãT&+ J; wPQRêËZ˙Ë9»rå«&ãP é√ªÅ å—…∏ ∫ ]MÀXêEUãÏéÿãF]M  XêEUãÏéÿãF]M  êêêUãÏVWãVãFãN ƒ^&åW&å_&âw&â
&âO&â&âW&âg3¿_^…  êêêã‹6ãO6≈wéTãdãÏÉ≈ãDâF ãD
âF˙ãDâF¸ãDâF˛ãâFãDâFã¡_^…  U VéŒ9π 3¿Ë•À&£Ôπ  ∫  ãÿ∏ ËìÀ@3…∫ˇˇËäÀπ 3¿ËÇÀ&£!π  ∫  ãÿ∏ ËpÀ@πˇˇ∫ˇˇËfÀπ 3¿Ë^À&£Sπ  ∫ ãÿ∏ ËLÀ@3…∫ˇˇËCÀπ 3¿Ë;À&£Ùπ
 ∫  ãÿ∏ Ë)À@3…∫ˇˇË Àπ 3¿ËÀ&£π ∫  ãÿ∏ ËÀ@3…∫ˇˇË˝ π 3¿Ëı &£π ∫ Äãÿ∏ Ë„ @3…∫ˇˇË⁄ π 3¿Ë“ &£]π ∫  ãÿ∏ Ë¿ @3…∫ˇˇË∑ π 3¿ËØ &£π ∫  ãÿ∏ Ëù @3…∫ˇˇËî π 3¿Ëå &£Dπ ∫  ãÿ∏ Ëz @3…∫ˇˇËq π 3¿Ëi &£Xπ ∫  ãÿ∏ ËW @3…∫ˇˇËN ∏ Õ1&£»&«√ ËY˙&£^√éŒ9&°√∏ ãÔË  ã!Ë ãSË ãÙË ãË ãË˝…ã]Ëˆ…ãËÔ…ãËË…ãDË·…ãXË⁄…√∏	EUãÏéÿÉ~ t∏
 ã^Õ1s3¿Î3¿π Õ1s3¿]M  ∏	EUãÏéÿ∏ ã^Õ1r3€ã√]M  ∏	EUãÏéÿÉÏˇvËüˇâF¸É~¸ tN¸¡…Ä…∏	 ã^¸Õ1ãF¸Y]M  ∏	EUãÏéÿN¡…ÄÒ∏	 ã^Õ1ãF;Ft"ˇvPË# êRPË@ êˇvˇvËY êRPËl êãF]M  ∏	EUãÏéÿ∏ ã^Õ1rã¬ã—Î3¿3“]M  ∏	EUãÏéÿ∏ ã^
ãNãVÕ1s3€ã√]M  ∏	EUãÏéÿ3“Ft3¿]M  ∏	EUãÏéÿ∏ ã^
3…ãVÕ13¿]M  ∏	EUãÏéÿ∏ >ã^Õ!r3¿Î£$<∏ˇˇ]M  ∏	EUãÏéÿ∏ ?ã^ãN≈VÕ!rÎ£$<∏ˇˇ]M  ∏	EUãÏéÿ∏ @ã^ãN≈VÕ!rÎ£$<∏ˇˇ]M  ∏	EUãÏéÿ∏ Bã^ãVãN
äFÕ!râFâV
ãV
ãFÎ	£$<∫ˇˇ∏ˇˇ]M  ∏	EUãÏéÿ∏ =äF3…≈VÕ!rÎ£$<∏ˇˇ]M  ∏	EUãÏéÿ∏ <ãN≈VÕ!rÎ£$<∏ˇˇ]M  UãÏ∏ A≈VÕ!r3¿Î£$<∏ ]√UãÏ∏ C≈VÕ!rã¡Î∏ˇˇ]√UãÏW∏ V≈Vƒ~Õ!r3¿Î£$<∏ _]√UãÏÉÏ∏ Wã^Õ!râN˛âV¸ãV˛ãF¸Î3“3¿…√UãÏÉÏ
VãFãVâF˛âV¸ãF
ãVâF˙âV¯ƒ^¸&Ä:t∏ Õ!àF˜äF˜Aƒ^¯&àˇF¯ƒ^¯&∆:Î!ƒ^¸&äƒ^¯&àˇF¸ˇF¯ƒ^¸&äƒ^¯&àˇF¸ˇF¯ƒ^¸&Ä?\tS&Ä?/tMƒ^&äàF˜Ä~˜a~†ÎäF˜¿àF˜ƒ^¯&∆\ˇF¯ƒ^¯&∆ ∏ GäV˜≈v¯Õ!ƒ^¯ˇF¯&Ä? uÙƒ^¯&∆Gˇ\ƒ^¸ˇF¸&äƒ^¯ˇF¯&à
¿uÍ^…√UãÏÅÏÑ ˇvˇvË≥˛Éƒ©uˇv
ˇvˇvˇvË¯˛Éƒ3¿ÈÅçÜ|ˇPjxËøêçñ|ˇ¬åV˙âF¯ãFãVâFˆâVÙƒ^¯&Äˇ\t&&Äˇ/t&Äˇ:t&∆\Îƒ^Ù&äƒ^¯&àˇFÙˇF¯ƒ^Ù&Ä? uÂƒ^¯&∆ çÜ|ˇPË&˛Éƒ©uÈÍ «F¸  ° âF˛ƒ^¸&ãG,âF˛Î%ƒ^¸&Å?PAu&ÅTHu&Ä=tƒ^¸ˇF¸&Ä? uÙƒ^¸&Ä? u“ƒ^¸&äò¿u°$<È≤ ÉF¸Èú çÜ|ˇåV˙âF¯ãFãVâFˆâVÙˇF¸Îƒ^¸&äƒ^¯&àˇF¸ˇF¯ƒ^¸&Ä?;t&Ä? uﬂƒ^¯&Äˇ\t&&Äˇ/t&Äˇ:t&∆\Îƒ^Ù&äƒ^¯&àˇFÙˇF¯ƒ^Ù&Ä? uÂƒ^¯&∆ çÜ|ˇPË9˝Éƒ©uˇv
ˇvçÜ|ˇPÈÉ˛ƒ^¸&Ä? tÈXˇ∏ …√∏	EUãÏéÿÉÏVWãv˜∆ ÄuMƒ^&∆à&∆G˜∆ t&«G  ãF ˇv
PˇvˇvË*˝ÉƒÎãF ˇv
PˇvˇvËÛ˝Éƒƒ^&âG˜∆ At(ƒ^&É tVãF ˇv
PˇvˇvËÂ¸Éƒ∏ˇˇÈ≠ Î8˜∆ @tƒ^&É t(ÎÊÎ$ƒ^&É u⁄˜∆ tãF ˇv
PË2¸Éƒ¿u¿3¿Îo˜∆ tãF ˇv
Pj ËÍ˚ÎãF ˇv
PVË∞˚ã¯Éˇˇt?WËH¸YâV¸âF˙˜∆ tƒ^&ãG&ãW;F¸u;V˙tWËÃ˙È`ˇƒ^ãF¸ãV˙&âG&âWã«_^YY]M 
 ∏	EUãÏéÿÉÏVW†*)ò¿uPæ*)«F˙  ° âF¸ƒ^˙&ãG,âF¸Îƒ^˙ˇF˙&Ä? uÙƒ^˙&Ä? uÎÉF˙ƒ^˙ˇF˙&äãﬁFà
¿uÓÎNÄ<\u˙∆ ø*)ÎGÄ= u˙ã«-*);Fs!π*)ãF
ãVâF¸âV˙ƒ^˙ˇF˙ãÒAä&à
¿uÓã«-*)_^YY]M  ∏	EUãÏéÿˇv
ˇvˇvË=ˇ]M   UãÏ3“ÎˇFBƒ^&Ä? uÛã¬]√UãÏVW¸≈vƒ~ãN—ÈÛ•s§_^]√∏&<£,*£**√UãÏÉÏVWã>,*ÅÔ&<æ&<ˇt!°**+,*Pˇ6,*h&<ËØˇÉƒ
«,*&<)>**Å>**&>s"∏&>+**âF˛ˇvˇ6**PêËp˘âF¸**ÎFÄ<
tÄ<t;6**rÔ;6**tÄ<uÄ|
uÉ∆ÎFâ6,*Å˛&>u∏ˇˇÎ°,*-&<_^…√UãÏÉÏVã6,*ÅÓ&<ˇvh&<VêË4˘âF˛9v˛t3¿Î∏ ^…√UãÏVãvÎFÄ< t˙Ä<	tıÄ<tÄ<
u;6,*uÂã∆^]√UãÏVãvÎNÅ˛&<tÄºˇˇ tÚÄºˇˇ	tÎÄºˇˇt‰Äºˇˇ
t›ã∆^]√UãÏVãv3…;Œ}9ƒ^ˇF&äƒ^ˇF&äÄ˙a|Ä˙zÄ¬‡Ä˚a|Ä˚zÄ√‡:”t3¿ÎA;Œ|«∏ ^]√UãÏVWÎth&<ËMˇYã¯;>,*tXÄ=[uSã6,*@PË6ˇYã¯ÎNÅ˛&<vÄºˇˇ]uÚã∆HPËEˇYã;˜v)+«Pˇv
ˇvWËaˇÉƒ
¿tã∆+«ƒ^ÿ&Ä? u∏ ÎÉ~ˇtˇvË≤˛YˇvË	˛Y¿Å3¿_^]√UãÏVWÎph&<Ë¡˛Yã¯;>,*tÄ=[tgÄ=;tJã˜ÎF;6,*tÄ<=uÙ;6,*t4VËΩ˛Yã;˜v)+«Pˇv
ˇvWËŸ˛Éƒ
¿tã∆+«ƒ^ÿ&Ä? u∏ ÎÉ~ˇtˇvË*˛YˇvËÅ˝Y¿Ö3¿_^]√∏	EUãÏéÿÉÏVWãv
ãFãVâF¸âV˙PRË˝Éƒã¯ˇvˇvj êËó˜âF¯Ë1˝É~¯ˇuÈÜãFFtÈãFãVâFˆâVÙˆtÈÿ Èµh&<Ë€˝Yã¯;>,*uÈ√ Ä=[tÈª °,*âFÚã«@PË∫˝Yã¯ÎˇNÚÅ~Ú&<v
ã^ÚÄøˇˇ]uÏãFÚHPË¬˝YâFÚ9~ÚwÈÅ ãV÷É¬˛3¿+VÙ  ãFÚ+«;¬~B“~ãF∆˛ˇ3“+FÙÉ⁄ PWˇvˆˇvÙË^¸Éƒ
ƒ^&∆Äˇˇ &∆Ä˛ˇ ˇv¯êËˆã∆˛ˇÈãFÚ+«PWˇvˆˇvÙË+¸Éƒ
ãFÚ+«FÙƒ^Ù&∆ ˇFÙˇv¯Ë6¸Y¿~Èˇƒ^Ù&∆ ˇFÙˇv¯êË¿ıãFÙ3“+FÉ⁄ ÈØˇvˇvjˇˇv¯Ëv˝Éƒ¿uÈBãFFtÈı ãFãVâFˆâVÙˆtÈº Èyh&<Ëü¸Yã¯;>,*tÄ=[uÈ∞ Ä=;uÈö â~ÚÎˇFÚãFÚ;,*tã^ÚÄ?=uÏãFÚ;,*txPËâ¸YâFÚ9~ÚvkãV÷É¬˛3¿+VÙ  ãFÚ+«;¬~,“ÈÊ˛ãF∆˛ˇ3“+FÙÉ⁄ PWˇvˆˇvÙË%˚Éƒ
Èƒ˛È¡˛ãFÚ+«PWˇvˆˇvÙË˚Éƒ
ãFÚ+«FÙƒ^Ù&∆ ˇFÙˇv¯Ë˚Y¿~È9ˇƒ^Ù&∆ ˇFÙˇv¯êË†ÙãFÙÈ›˛ˇvˇvjˇˇv¯ËÍ¸Éƒ¿t-°,*âFˆø&<ÎGÄ==u˙GWËõ˚Yã¯ˇvˆËª˚YâFˆå^¸â~˙+«ã¯ˇv¯êËPÙã∆H;«~ Wˇv¸ˇv˙ˇvˇvËo˙Éƒ
ƒ^ﬂ&∆ ã«Î+É˛|$ã∆HPˇv¸ˇv˙ˇvˇvËG˙Éƒ
ƒ^&∆Äˇˇ ã∆HÎ3¿_^çf˛]M  ∏	EUãÏéÿÉÏVWˇvˇvj êËâÙã¯Ë$˙ÉˇˇuÈÇ ˇvˇvjˇWËê˚Éƒ¿tiˇvˇvjˇWË	¸Éƒ¿tV«F¸  °,*âF˙æ&<ÎFÄ<=u˙FVËµ˙Yãˇv˙Ë’˙YâF˙ÎäòãV¸k“
–É¬–âV¸F;v˙s
Ä<0|Ä<9~ﬂWêËSÛãF¸Î	WêËHÛãF
_^YY]M  ∏	EUãÏéÿÅÏêVW3ˆˇvˇvj êËŒÛâF¸Ëh˘É~¸ˇuÈêçÜnˇåVˆâFÙˇvˇvË˘Éƒ@PˇvˇvçÜnˇPË˘Éƒ
çÜnˇåV˙âF¯Î%ƒ^¯&Ä?\t&Ä?:t&Ä?/uãF˙ãV¯BâFˆâVÙˇF¯ƒ^¯&Ä? u“jh.*ˇvˆˇvÙË–¯Éƒ
çÜnˇPj êËeÛã¯ÉˇˇuÈ«æ ˇvˇvPˇv¸ËB˙Éƒ¿tÈä ãFFuÈ ãF
FtwˇvˇvËh¯ÉƒâFÚ∆Ün˝∆Üo˝
∆Üp˝[PˇvˇvçÜq˝PË[¯Éƒ
çÜq˝ã^Úÿ6∆]çÜr˝ã^Úÿ6∆çÜs˝ã^Úÿ6∆
WçÜn˝PãFÚ PêË6ÚãVÚÉ¬;¬t3ˆˆuÈãFFuh<*jˇˇv¸Ë˙Éƒæ È– WË≤¯YãˆuÈ¬ ˇvˇvWˇv¸Ë˚˘Éƒ¿tˇv¸ËÏ˜YãF
FuÈú ˇvˇvËô˜ÉƒâFÚˇvˇv
Ëä˜ÉƒâFˇvÚˇvˇvçÜn˝PËä˜Éƒ
çÜn˝ã^Úÿ6∆=ˇvˇvˇv
çÜo˝ãVÚ–RËc˜Éƒ
ã^Ú^çÜo˝ÿ6∆ã^Ú^çÜp˝ÿ6∆
ãFÚF âFÓWçÜn˝PˇvÓêË=Ò;FÓt3ˆˆt%WËﬁ˜Yã¿tÎWË—˜Y¿u3ˆÎˇv¸Ë ˜Y¿ËWêËπˇv¸êË±ˆt!ˇvˇvË¶ÒÉƒˇvˇvçÜnˇPË«ÒÉƒÈ-çÜnˇPËÖÒÉƒÈãFFuÈãFFuÈãF
FuÈ˝ ˇvˇvj êË*ÒâF˙É~˙ˇuÈ‰ ˇvˇvËXˆÉƒã¯ˇvˇvËJˆÉƒâF¯ˇvˇv
Ë;ˆÉƒâFˆæ ∆Ün˝[WˇvˇvçÜo˝PË5ˆÉƒ
∆Éo˝]∆Ép˝∆Éq˝
ˇv¯ˇvˇvçÜr˝ã◊–RËˆÉƒ
ãﬂ^¯çÜr˝ÿ6∆=ˇvˆˇvˇv
ã«F¯çñs˝¬PË‚ıÉƒ
ãﬂ^¯^ˆçÜs˝ÿ6∆ãﬂ^¯^ˆçÜt˝ÿ6∆
~¯~ˆÉ«ˇv˙çÜn˝PWêËªÔ;«t3ˆˇv˙êË_Ôã∆_^çf˛]M  V†™)ò¿u/æ™)h™)hÄ êËéÙãﬁFÄ? u¯N∆\F«RT«DM.«DIN«DI ^√∏	EUãÏéÿËπˇˇvˇvˇvˇvˇvˇvˇv
ˇvˇvh™)ËŒ˜]M  ∏	EUãÏéÿËÉˇˇvˇvˇv
ˇvˇvh™)ËÀ˙]M 
 ∏	EUãÏéÿËYˇˇvˇvˇvˇv
ˇvˇvh™)ËV˚]M  SQRVË˛»r&ã6V &ã&ã3¿—‚—–‚˙ã»&ãd ∏ BÕ!^ZY[√PQVå¿¿t2¿πˇ WÚÆã«^+∆Hå«éﬂøA*W™ã»Û§_^YX√øA*¨<ar<zw, ™
¿u√SWVπ © Äu9å√€tBV ãä&:u5äFG¨&äG<ar<zw, Ä˚arÄ˚zwÄÎ :√u‚ﬁå√€u	%ˇ;«u3…^_[√»  ˇvj jj jË¿uÈâF¯ˇvPËi¿uÈˆ âF˙PËÌ“uÈÁ ˇvˇv¯Ë§“tÈ⁄ âF˛ã–éF˙3€¸ãFâF¸É~ tHÉ~ tƒvËˇéF˙&É? uÈ´ &˜G Ätã˚É«æA*&ä:uGF
¿uÛ&ãGâF¸Î
&&+u…Î{ãFÉ~
 tJÉ~
 t	ƒvËÕ˛éF˙&É? t]&˜G Ät#ã˚É«2¿πˇˇÚÆæA*&ä:uGF
¿uÛ&ãGÎ
&&+u«Î(3€ãN˛ãV¸&É? t&;Wu&;Gt
&&+uÊÎ…¬
 3¿Î¯XêEUãÏéÿÉÏVWÉ~ uÈª å^¸é^ã6V ;6X u3ˆÎX¸≠ƒ~é^¸Ëˇ˝ã¿tË:˛„ãD∫ ˜‚É∆ÎÊ3ˆÎ-é^¸Ä>@*t!ã\É∆ƒ~
é^¸Ëƒ˝ãDË˛„É∆KuÚ3ˆã∆¿u;ãFFt3é^¸ˇvˇvˇv
ˇvˇvË.˛¿t%ˇÅ‚ˇâF
«F  âV«F  ÈJˇ_^ÉÌãÂ]M 
 3ˆÎ≠XêEUãÏéÿÉÏVWãFé¿Ëj∆r'âF¸&ã>V &ãã~&ã3¿—‚—–‚˙ã»ã^¸∏ BÕ!ã√s∏ˇˇ_^ÉÌãÂ]M  »  çF¸ˇvPêË{qã~¸éF˛…√»   WˇvË‹ˇÉƒˇt&«E  &«E
  _…√XêEUãÏéÿÉÏWVÉ~ tCéFã~&É} u"WË3jRPêË=ÿ¿téF&âEPWêËfqéF&ãE^_ÉÌãÂ]M  3¿ÎÔ»   ãFéFéÿãNIÉ~
 tπˇˇ3“&ãd ∏ ?Õ!råÿ Én
sÿ¯…√XêEUãÏéÿÉÏWVÉ~ t`ˇvËˇÉƒâ~¯åF˙&É}
 tˇvêËıÿ“t>Î-Ë§¥Ë⁄ƒr4éF˙ËÕ˚r,WËy RPˇvËqˇÉƒrƒ~¯&«E
 3¿ãVÎˇvêË3Ÿ3¿3“Ëô¥^_ÉÌãÂ]M  XêEUãÏéÿWVˇvêËŸ¿uˇvËå˛ÉƒˇvêË˜c&«E  &«E
  ^_]M  XêEUãÏéÿéF&ãV &ã∏ ”‡ã^&ãW˜‚]M  »   PSQRW¸πˇˇPãFéÿé¿XWã~3¿ÚÆ˜ŸI_ãVª ∏ @Õ!_ZY[X…¬ XêEUãÏéÿÉÏVW≈våÿ¿uæø+VË¢ˇPSQRπ ∫1,ª ∏ @Õ!ZY[X≈vVËÇˇPSQRπ ∫4,ª ∏ @Õ!ZY[Xã^É„—„ãü≈+SËZˇ¸∏ ãVÉ‚˜‚ø—+¯G∏ Õ!
¿t˜< tJ<tFπ WÚÆ_„ÊA—ÈàF¸∆F˝ çF¸PËˇPSQRπ ∫7,ª ∏ @Õ!ZY[X∏ +¡2‰_^ÉÌãÂ]M  &äEˇÎ¥XêEUãÏéÿ3¿]M 
 XêEUãÏéÿ∏DW]MÀXêEUãÏéÿW3¿Õã¬ª7 3“˜„ã¯ãÚ3“ã¡˜„ã–÷ã«_]MÀ»  WÉ~u7ç~¸ˇvWêË¢mçv˛ˇvVêËõlãF˛PVêË§ƒ~¸&ãMÉ«&«E  ‚¯_…  XêEUãÏéÿÉÏVWË-≤ãF¡Ë@ˇvj Pj jêË?˚¿uÈ,éFã¯&ãU&ã6V &ã∏ ”‡˜‚âF¸&É>à  uN∏à æÂmj jj VPêËÓX=  tÈ‚ ∆@*j j j jêË‹˙∆@* &ˇ6à j PêË*m&É} t8&ãu&éà ãNÉ·3¿„¨‚˚¨ã»;FvãNã¡„ÎÈÜ ¸ƒ~Û§&∆ Î|Ëê¯çF¯&ˇ6à PêË7iãF¯&âEF¸&ˇ6à PêË@bs&«E  ÎE&É} uãF¸ &ˇ6à PêËbr)&«E ãN¸&éà &ãU∏ ?&ãd Õ!rÈTˇ&«E  3¿Ë±_^ÉÌãÂ]M 
 XêEUãÏéÿWÉ~ t1ƒ~πˇˇ3¿¸ÚÆ˜ŸI+˘O&ä<ar	<zw, &àG‚ÌãVãF_]M  3¿äF<ar<zw, _]M  XêEUãÏéÿWÉ~ t1ƒ~πˇˇ3¿¸ÚÆ˜ŸI+˘O&ä<Ar	<Zw &àG‚ÌãVãF_]M  3¿äF<Ar<Zw _]M   UãÏÉÏVWã~«F˛  «F¸ æ ;v}Fã«ôPRãV˛ãF¸Y[Ë‡sâV˛âF¸;v|‰ã«ôPRãV˛ãF¸Y[Ë≈s- É⁄ ;V
r…u;Fr¬3ˆÎLˇv˛ˇv¸ˇv
ˇvËórã–ã^⁄äƒ^&àˇFã¬ôPRãV˛ãF¸Y[Ë~s)FV
ã«ôRPˇv˛ˇv¸ËarâV˛âF¸FãF¸F˛u¨ã∆_^…√UãÏÉÏ VWãNø
 3ˆçF‡åV¸âF˙«F¯@,ãFãVâFˆâVÙÉ˘ˇuπ äFò=X t?=d t=x t0ÎUÉ~
 O|É~ sGãF
ãV˜ÿ˜⁄  âF
âVƒ^˙&∆-ˇF˙FÎ'«F¯Q,ø É~ tƒ^˙&∆0ˇF˙ƒ^˙äF&àˇF˙É∆ˇv¯WQˇv
ˇvˇv¸ˇv˙Ëó˛Éƒ∆âF˛ãF;F˛}ãF˛âF3ˇ;~}ãNã~éF∏  —ÈÛ´s™É~ uãFãVV+V˛âFˆâVÙ3ˇ;~˛}ƒ^ÙﬂäÉ‡ˇ&àG;~˛|ÓãVãFF_^…√UãÏÉÏVWãN∆Fˇ ãFãVâF¸âV˙É˘ˇuπ }3ˆÎFƒ^ﬁ&Ä? uÙ;Ò~ãÒÉ~ t∆Fˇ09v}âv3“;V}ãNã~éFäFˇä‡—ÈÛ´s™É~ uãFãVV+÷âF¸âV˙3“;÷}ƒ^⁄&äƒ^˙⁄&àB;÷|ÎãVãFF_^…√∏	EUãÏéÿÉÏVWãFãVâF¸âV˙ãFãV
âF¯âVˆçFåVÙâFÚÈƒ^ˆ&Ä?%u&Ä%uƒ^ˆ&äƒ^˙&àˇFˆÈ˙3ˇæˇˇ«FÏ  «FÍ  «FË  Î%ƒ^ˆ&äò=# t=- t=0 tÎˇFÏÎˇFËÎˇFÍˇFˆƒ^ˆ&Ä?-tœ&Ä?#t…&Ä?0t√Îƒ^ˆ&äòã◊k“
¬–ˇã¯ˇFˆƒ^ˆ&Ä?0|&Ä?9~€ƒ^ˆ&Ä?.u)3ˆÎƒ^ˆ&äòã÷k“
¬–ˇãˇFˆƒ^ˆ&Ä?0|&Ä?9~€ƒ^ˆˇFˆ&äòâFπ ªVu.ã;FtÉ√‚ÛÈ.ˇgƒ^Ú&äàFÊ∆FÁ ˇvÍˇvÏVWçFÊPˇv¸ˇv˙Ë˛ÉƒâV¸âF˙ÉFÚÈ˜ ˇvÍˇvÏVWƒ^Ú&ˇw&ˇ7ˇv¸ˇv˙Ë‰˝ÉƒÈØ jdj ˇvÏVWƒ^Ú&ãôRPˇv¸ˇv˙Ë•¸ÉƒâV¸âF˙ÉFÚÈ´ ƒ^ˆ&äáˇˇPˇvËˇvÏVWƒ^Új &ˇ7ˇv¸ˇv˙Ës¸ÉƒâV¸âF˙ÉFÚÎzƒ^ˆˇFˆ&äòâFÓπ ªBu.ã;FÓtÉ√‚ÛÎ=.ˇg
jdj Îƒ^ˆ&äáˇˇPˇvËˇvÏVWƒ^Ú&ˇw&ˇ7ˇv¸ˇv˙Ë¸ÉƒâV¸âF˙ÉFÚÎƒ^˙&∆lˇF˙ƒ^ˆ&äáˇˇƒ^˙&àˇF˙ƒ^ˆ&Ä? tÈ’˝ƒ^˙&∆ ãF˙3“+FÉ⁄ _^çf˛]MÀX d i u x Õt«t«tÕtÕtX c d i l s u x ptÒsEtEt°t$tptptXêEUãÏéÿWVƒ~
πˇˇ3¿¸ÚÆ˜ŸIƒ~≈v
Ú§^_]M  XêEUãÏéÿWVƒ~≈vãN¸Ú§^_]M 
 XêEUãÏéÿ∏ ]MÀ ã»@3¿√UãÏÉÏVWãv3¿: Pã∆Z+¬ª" ô˜˚âF˛ãFHÖFt∏ È˙ Ë2ã¯¿tË)ã–¿uWËfY∏ È› ãF˛â∏ äN˛”‡âD«D  «D  «D  «D
  ãFHâDãFâDãF
âDâ|âT É>8  tã8 ãG;F
v°8 âDâ68 Î)ã8 ÎãŸãOãŸÉ tã_ãG;F
rËãŸãGâDâw«E  ã⁄«G  ââU∆E∆G	«E  «E  «G  «G  «E  «E  «G  «G  «E  «E
  «G  «G
  3¿_^…√UãÏVãvãﬁÉ˚w—„.ˇß÷w∏ Èß É~~∏ Èõ é»@ˇv
ˇvˇv3¿ãVk“"¬: PËè˛Éƒã–“té ÎnÉÊã^k€"âw>ã^k€"ãFâGTã^k€"ãFâGVãﬁÉ˚w=—„.ˇßŒw∏ äN”‡	, Î(∏ äN”‡	. Î∏ äN”‡	0 Î∏ äN”‡	2 é 3¿^]√èwùw´wπw$w$w$w$wUãÏÉÏVWã^ãF#G  t∏ Èàã^ãF
#G  uÏË5	ã¿t;Ë	ã¯¿uVËi	Î+Ë	âF˛¿uVËY	YWÎË˙ã»¿uVËH	YWË(	Yˇv˛Ë!	Y∏ È0ã^ãFãV
WGW
G∆D ãFãVâDâTãFãV
âDâTâDâT
ã_ ãGâDã^ãG âDã\âwã\âwãFâDãF˛âDâDâLã^˛«G  «G  ââãŸ«G  «G  ââ∆G	ã^˛∆GãFãVâGâW«G  «G  V
FãŸâGâW«G  «G  ã^˛âwãŸâwã^˛«G
  ã^ãGã^˛âGã^ãŸâG
ã^ãŸâGãFãVâEâUãFãV
âEâU∆E ã^ãGâE
âEâMãF˛âEâMâEâu3¿_^…√UãÏÉÏé»@ˇvˇv
ˇvˇv3¿ãVk“"¬: PË1˛Éƒ
âF˛é …√UãÏ]√UãÏÉÏVWå^˛«Fˆ  «FÙ  çFÙPˇvˇvˇVÉƒã^3…Å√˚ˇÉ—ˇ3“∏ Ëbj¢É“ âV˙âF¯ãF˙ãV¯;Frw;Vv∏ ÈπQã~ÙéFˆ3¿Û´ãFˆ£»@é»@3ˆãFk¿"É∆:∞M¢ ¢  ∆ h∆ e∆ a∆ dãF˛£ 3¿2£  3¿ãVk“¬£" ãF£& ∏ äN”‡£, 3¿£( ãFH£$ π ;Ns&3¿ã—Bk“¬ãŸk€âáãŸk€∆á A;Nr⁄ã^Kk€«á  «8   ˇv
ˇvˇvVËı˙Éƒã–¿uˇvˇvˇvˇvVË›¸Éƒ
ã–¿t	é ã¬È«D  ãF£ ãF£
 « ∑îã\ãGâF¸ã^¸ã_ããF£* ∆∆∏ äN”‡£ ∏ ”‡£"â>$ãE£&«(ˇˇ«*ˇˇ3¿ã^¸ã_âG3¿âEãF¸£,ãEãU£âãF˙ãV¯£âT  ã\3…˜”˜—#”#¡)UEãF˙ãV¯T  ã\3…˜”˜—#”#¡UEãF˙ãV¯T  ã\3…˜”˜—#”#¡ã^¸)W
GãF˙ãV¯T  ã\3…˜”˜—#”#¡)T
Dé 3¿_^…√UãÏÉÏVWãvãDâF˛ã^˛ãF#G  t∏ È°VËûY¿t∏ ÈíãDãT;Fu;VuÈ}ãDãT;FvÈ÷ r;VrÈÃ ãFãV+TDâF¸âV˙ã\ã_Ä toËÅã¯¿u∏ È:ã\ãGâEãDâEã_âã\âãGâEãDâEã_âã\âãGãWâEâUãF¸ãV˙âEâU∆E ã^˛ãGâE
âEâuÎã\ã_ãF¸ãV˙WGã^˛ãF¸ãV˙WGW
GTDT
D],ESI
0C7BH:  12 66 67 0F BB 74 2D 00 66 67                Unknown instBTC     SS:[ESP+ESI*2+6766002DH],ESI
0C84H:  0F BB 34                                     BTC     DS:[SI],SI
0C88H:  2C 66 67 0F BB 34                            Unknown instBTC     SS:[ESP+ESI],ESI
0C8EH:  DA 66 67 0F BB 74                            Unknown instBTC     SS:[ESP+ESI*2],ESI
0C95H:  4B 01 66 67 0F BB B4                         Unknown instUnknown instBTC     SS:[ESP+ESI*4],ESI
0C9FH:  91 00 01 00 00 66 67 0F BB                   Unknown instUnknown instUnknown instUnknown instUnknown instBTC  #SS:[ESP+ESI*4],ESI
0CA4H:  66 0F BB B6 34 12                            BTC     SS:[BP+1234H],ESI
0CAAH:  F0 66 0F BB B4 34 12                         LOCK BTC     DS:[SI+1234H],ESI
0CB1H:  F0 66 0F BB B5 34 12                         LOCK BTC     DS:[DI+1234H],ESI
0CB8H:  66 0F BA FE 01                               BTC     ESI,01H
0CBDH:  66 0F BB F8                                  BTC     EAX,EDI
0CC1H:  66 0F BB F9                                  BTC     ECX,EDI
0CC5H:  66 0F BB FA                                  BTC     EDX,EDI
0CC9H:  66 0F BB FB                                  BTC     EBX,EDI
0CCDH:  66 0F BB FC                                  BTC     ESP,EDI
0CD1H:  66 0F BB FD                                  BTC     EBP,EDI
0CD5H:  66 0F BB FE                                  BTC     ESI,EDI
0CD9H:  66 0F BB FF                                  BTC     EDI,EDI
0CDDH:  66 67 0F BB 07                               BTC     DS:[EDI],EAX
0CE2H:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI+00001234H],ECX
0CEBH:  66 2E 67 0F BB 1F                            BTC     CS:[EDI],EBX
0CF1H:  66 67 0F BB 17                               BTC     DS:[EDI],EDX
0CF6H:  66 26 67 0F BB 27                            BTC     ES:[EDI],ESP
0CFCH:  66 36 67 0F BB 2F                            BTC     SS:[EDI],EBP
0D02H:  66 64 67 0F BB 37                            BTC     FS:[EDI],ESI
0D08H:  66 65 67 0F BB 3F                            BTC     GS:[EDI],EDI
0D0EH:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100H],EDI
0D18H:  66 3E 67 0F BB BC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678H],EDI
0D23H:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP+EBP],EDI
0D2AH:  66 67 0F BB 3C 2C                            BTC     SS:[ESP+EBP],EDI
0D30H:  66 67 0F BB 3C DA                            BTC     DS:[EDX+EBX*8],EDI
0D36H:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX+ECX*2+01H],EDI
0D3DH:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100H],EDI
0D47H:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI
0D51H:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040H],EDI
0D5BH:  F0 64 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H
0D67H:  F0 66 0F BB 38                               LOCK BTC     DS:[BX+SI],EDI
0D6CH:  F0 66 0F BB 39                               LOCK BTC     DS:[BX+DI],EDI
0D71H:  F0 66 0F BB 3A                               LOCK BTC     SS:[BP+SI],EDI
0D76H:  F0 66 0F BB 3B                               LOCK BTC     SS:[BP+DI],EDI
0D7BH:  F0 66 0F BB 7E 00                            LOCK BTC     SS:[BP],EDI
0D81H:  F0 66 0F BB 3C                               LOCK BTC     DS:[SI],EDI
0D86H:  F0 66 0F BB 3D                               LOCK BTC     DS:[DI],EDI
0D8BH:  F0 66 0F BB B8 34 12                         LOCK BTC     DS:[BX+SI+1234H],EDI
0D92H:  F0 66 0F BB B9 34 12                         LOCK BTC     DS:[BX+DI+1234H],EDI
0D99H:  F0 66 0F BB BA 34 12                         LOCK BTC     SS:[BP+SI+1234H],EDI
0DA0H:  F0 66 0F BB BB 34 12                         LOCK BTC     SS:[BP+DI+1234H],EDI
0DA7H:  F0 66 0F BB BE 34 12                         LOCK BTC     SS:[BP+1234H],EDI
0DAEH:  F0 66 0F BB BC 34 12                         LOCK BTC     DS:[SI+1234H],EDI
0DB5H:  F0 66 0F BB BD 34 12                         LOCK BTC     DS:[DI+1234H],EDI
0DBCH:  66 0F BA FF 01                               BTC     EDI,01H
0DC1H:  0F BB C0                                     BTC     AX,AX
0DC4H:  0F BB C1                                     BTC     CX,AX
0DC7H:  0F BB C2                                     BTC     DX,AX
0DCAH:  0F BB C3                                     BTC     BX,AX
0DCDH:  0F BB C4                                     BTC     SP,AX
0DD0H:  0F BB C5                                     BTC     BP,AX
0DD3H:  0F BB C6                                     BTC     SI,AX
0DD6H:  0F BB C7                                     BTC     DI,AX
0DD9H:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234H],AX
0DDEH:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234H],AX
0DE3H:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234H],AX
0DE8H:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234H],AX
0DEDH:  0F BB 86 34 12                               BTC     SS:[BP+1234H],AX
0DF2H:  0F BB 84 34 12                               BTC     DS:[SI+1234H],AX
0DF7H:  0F BB 85 34 12                               BTC     DS:[DI+1234H],AX
0DFCH:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
0E00H:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
0E04H:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
0E08H:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
0E0CH:  2E 0F BB 46 00                               BTC     CS:[BP],AX
0E11H:  2E 0F BB 04                                  BTC     CS:[SI],AX
0E15H:  2E 0F BB 05                                  BTC     CS:[DI],AX
0E19H:  0F BB 00                                     BTC     DS:[BX+SI],AX
0E1CH:  0F BB 01                                     BTC     DS:[BX+DI],AX
0E1FH:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
0E23H:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
0E27H:  3E 0F BB 46 00                               BTC     DS:[BP],AX
0E2CH:  0F BB 04                                     BTC     DS:[SI],AX
0E2FH:  0F BB 05                                     BTC     DS:[DI],AX
0E32H:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
0E36H:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
0E3AH:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
0E3EH:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
0E42H:  26 0F BB 46 00                               BTC     ES:[BP],AX
0E47H:  26 0F BB 04                                  BTC     ES:[SI],AX
0E4BH:  26 0F BB 05                                  BTC     ES:[DI],AX
0E4FH:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
0E53H:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
0E57H:  0F BB 02                                     BTC     SS:[BP+SI],AX
0E5AH:  0F BB 03                                     BTC     SS:[BP+DI],AX
0E5DH:  0F BB 46 00                                  BTC     SS:[BP],AX
0E61H:  36 0F BB 04                                  BTC     SS:[SI],AX
0E65H:  36 0F BB 05                                  BTC     SS:[DI],AX
0E69H:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
0E6DH:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
0E71H:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
0E75H:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
0E79H:  64 0F BB 46 00                               BTC     FS:[BP],AX
0E7EH:  64 0F BB 04                                  BTC     FS:[SI],AX
0E82H:  64 0F BB 05                                  BTC     FS:[DI],AX
0E86H:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
0E8AH:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
0E8EH:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
0E92H:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
0E96H:  65 0F BB 46 00                               BTC     GS:[BP],AX
0E9BH:  65 0F BB 04                                  BTC     GS:[SI],AX
0E9FH:  65 0F BB 05                                  BTC     GS:[DI],AX
0EA3H:  0F BA F8 01                                  BTC     AX,01H
0EA7H:  0F BA F8 FF                                  BTC     AX,0FFH
0EABH:  0F BB C8                                     BTC     AX,CX
0EAEH:  0F BB C9                                     BTC     CX,CX
0EB1H:  0F BB CA                                     BTC     DX,CX
0EB4H:  0F BB CB                                     BTC     BX,CX
0EB7H:  0F BB CC                                     BTC     SP,CX
0EBAH:  0F BB CD                                     BTC     BP,CX
0EBDH:  0F BB CE                                     BTC     SI,CX
0EC0H:  0F BB CF                                     BTC     DI,CX
0EC3H:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234H],CX
0EC8H:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234H],CX
0ECDH:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234H],CX
0ED2H:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234H],CX
0ED7H:  0F BB 8E 34 12                               BTC     SS:[BP+1234H],CX
0EDCH:  0F BB 8C 34 12                               BTC     DS:[SI+1234H],CX
0EE1H:  0F BB 8D 34 12                               BTC     DS:[DI+1234H],CX
0EE6H:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
0EEAH:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
0EEEH:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
0EF2H:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
0EF6H:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
0EFBH:  2E 0F BB 0C                                  BTC     CS:[SI],CX
0EFFH:  2E 0F BB 0D                                  BTC     CS:[DI],CX
0F03H:  0F BB 08                                     BTC     DS:[BX+SI],CX
0F06H:  0F BB 09                                     BTC     DS:[BX+DI],CX
0F09H:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
0F0DH:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
0F11H:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
0F16H:  0F BB 0C                                     BTC     DS:[SI],CX
0F19H:  0F BB 0D                                     BTC     DS:[DI],CX
0F1CH:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
0F20H:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
0F24H:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
0F28H:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
0F2CH:  26 0F BB 4E 00                               BTC     ES:[BP],CX
0F31H:  26 0F BB 0C                                  BTC     ES:[SI],CX
0F35H:  26 0F BB 0D                                  BTC     ES:[DI],CX
0F39H:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
0F3DH:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
0F41H:  0F BB 0A                                     BTC     SS:[BP+SI],CX
0F44H:  0F BB 0B                                     BTC     SS:[BP+DI],CX
0F47H:  0F BB 4E 00                                  BTC     SS:[BP],CX
0F4BH:  36 0F BB 0C                                  BTC     SS:[SI],CX
0F4FH:  36 0F BB 0D                                  BTC     SS:[DI],CX
0F53H:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
0F57H:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
0F5BH:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
0F5FH:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
0F63H:  64 0F BB 4E 00                               BTC     FS:[BP],CX
0F68H:  64 0F BB 0C                                  BTC     FS:[SI],CX
0F6CH:  64 0F BB 0D                                  BTC     FS:[DI],CX
0F70H:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
0F74H:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
0F78H:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
0F7CH:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
0F80H:  65 0F BB 4E 00                               BTC     GS:[BP],CX
0F85H:  65 0F BB 0C                                  BTC     GS:[SI],CX
0F89H:  65 0F BB 0D                                  BTC     GS:[DI],CX
0F8DH:  0F BA F9 01                                  BTC     CX,01H
0F91H:  0F BA F9 FF                                  BTC     CX,0FFH
0F95H:  0F BB D0                                     BTC     AX,DX
0F98H:  0F BB D1                                     BTC     CX,DX
0F9BH:  0F BB D2                                     BTC     DX,DX
0F9EH:  0F BB D3                                     BTC     BX,DX
0FA1H:  0F BB D4                                     BTC     SP,DX
0FA4H:  0F BB D5                                     BTC     BP,DX
0FA7H:  0F BB D6                                     BTC     SI,DX
0FAAH:  0F BB D7                                     BTC     DI,DX
0FADH:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234H],DX
0FB2H:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234H],DX
0FB7H:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234H],DX
0FBCH:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234H],DX
0FC1H:  0F BB 96 34 12                               BTC     SS:[BP+1234H],DX
0FC6H:  0F BB 94 34 12                               BTC     DS:[SI+1234H],DX
0FCBH:  0F BB 95 34 12                               BTC     DS:[DI+1234H],DX
0FD0H:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
0FD4H:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
0FD8H:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
0FDCH:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
0FE0H:  2E 0F BB 56 00                               BTC     CS:[BP],DX
0FE5H:  2E 0F BB 14                                  BTC     CS:[SI],DX
0FE9H:  2E 0F BB 15                                  BTC     CS:[DI],DX
0FEDH:  0F BB 10                                     BTC     DS:[BX+SI],DX
0FF0H:  0F BB 11                                     BTC     DS:[BX+DI],DX
0FF3H:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
0FF7H:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
0FFBH:  3E 0F BB 56 00                               BTC     DS:[BP],DX
1000H:  0F BB 14                                     BTC     DS:[SI],DX
1003H:  0F BB 15                                     BTC     DS:[DI],DX
1006H:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
100AH:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
100EH:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
1012H:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
1016H:  26 0F BB 56 00                               BTC     ES:[BP],DX
101BH:  26 0F BB 14                                  BTC     ES:[SI],DX
101FH:  26 0F BB 15                                  BTC     ES:[DI],DX
1023H:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
1027H:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
102BH:  0F BB 12                                     BTC     SS:[BP+SI],DX
102EH:  0F BB 13                                     BTC     SS:[BP+DI],DX
1031H:  0F BB 56 00                                  BTC     SS:[BP],DX
1035H:  36 0F BB 14                                  BTC     SS:[SI],DX
1039H:  36 0F BB 15                                  BTC     SS:[DI],DX
103DH:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
1041H:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
1045H:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
1049H:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
104DH:  64 0F BB 56 00                               BTC     FS:[BP],DX
1052H:  64 0F BB 14                                  BTC     FS:[SI],DX
1056H:  64 0F BB 15                                  BTC     FS:[DI],DX
105AH:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
105EH:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
1062H:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
1066H:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
106AH:  65 0F BB 56 00                               BTC     GS:[BP],DX
106FH:  65 0F BB 14                                  BTC     GS:[SI],DX
1073H:  65 0F BB 15                                  BTC     GS:[DI],DX
1077H:  0F BA FA 01                                  BTC     DX,01H
107BH:  0F BA FA FF                                  BTC     DX,0FFH
107FH:  0F BB D8                                     BTC     AX,BX
1082H:  0F BB D9                                     BTC     CX,BX
1085H:  0F BB DA                                     BTC     DX,BX
1088H:  0F BB DB                                     BTC     BX,BX
108BH:  0F BB DC                                     BTC     SP,BX
108EH:  0F BB DD                                     BTC     BP,BX
1091H:  0F BB DE                                     BTC     SI,BX
1094H:  0F BB DF                                     BTC     DI,BX
1097H:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234H],BX
109CH:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234H],BX
10A1H:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234H],BX
10A6H:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234H],BX
10ABH:  0F BB 9E 34 12                               BTC     SS:[BP+1234H],BX
10B0H:  0F BB 9C 34 12                               BTC     DS:[SI+1234H],BX
10B5H:  0F BB 9D 34 12                               BTC     DS:[DI+1234H],BX
10BAH:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
10BEH:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
10C2H:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
10C6H:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
10CAH:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
10CFH:  2E 0F BB 1C                                  BTC     CS:[SI],BX
10D3H:  2E 0F BB 1D                                  BTC     CS:[DI],BX
10D7H:  0F BB 18                                     BTC     DS:[BX+SI],BX
10DAH:  0F BB 19                                     BTC     DS:[BX+DI],BX
10DDH:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
10E1H:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
10E5H:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
10EAH:  0F BB 1C                                     BTC     DS:[SI],BX
10EDH:  0F BB 1D                                     BTC     DS:[DI],BX
10F0H:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
10F4H:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
10F8H:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
10FCH:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
1100H:  26 0F BB 5E 00                               BTC     ES:[BP],BX
1105H:  26 0F BB 1C                                  BTC     ES:[SI],BX
1109H:  26 0F BB 1D                                  BTC     ES:[DI],BX
110DH:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
1111H:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
1115H:  0F BB 1A                                     BTC     SS:[BP+SI],BX
1118H:  0F BB 1B                                     BTC     SS:[BP+DI],BX
111BH:  0F BB 5E 00                                  BTC     SS:[BP],BX
111FH:  36 0F BB 1C                                  BTC     SS:[SI],BX
1123H:  36 0F BB 1D                                  BTC     SS:[DI],BX
1127H:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
112BH:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
112FH:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
1133H:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
1137H:  64 0F BB 5E 00                               BTC     FS:[BP],BX
113CH:  64 0F BB 1C                                  BTC     FS:[SI],BX
1140H:  64 0F BB 1D                                  BTC     FS:[DI],BX
1144H:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
1148H:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
114CH:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
1150H:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
1154H:  65 0F BB 5E 00                               BTC     GS:[BP],BX
1159H:  65 0F BB 1C                                  BTC     GS:[SI],BX
115DH:  65 0F BB 1D                                  BTC     GS:[DI],BX
1161H:  0F BA FB 01                                  BTC     BX,01H
1165H:  0F BA FB FF                                  BTC     BX,0FFH
1169H:  0F BB E0                                     BTC     AX,SP
116CH:  0F BB E1                                     BTC     CX,SP
116FH:  0F BB E2                                     BTC     DX,SP
1172H:  0F BB E3                                     BTC     BX,SP
1175H:  0F BB E4                                     BTC     SP,SP
1178H:  0F BB E5                                     BTC     BP,SP
117BH:  0F BB E6                                     BTC     SI,SP
117EH:  0F BB E7                                     BTC     DI,SP
1181H:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234H],SP
1186H:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234H],SP
118BH:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234H],SP
1190H:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234H],SP
1195H:  0F BB A6 34 12                               BTC     SS:[BP+1234H],SP
119AH:  0F BB A4 34 12                               BTC     DS:[SI+1234H],SP
119FH:  0F BB A5 34 12                               BTC     DS:[DI+1234H],SP
11A4H:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
11A8H:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
11ACH:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
11B0H:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
11B4H:  2E 0F BB 66 00                               BTC     CS:[BP],SP
11B9H:  2E 0F BB 24                                  BTC     CS:[SI],SP
11BDH:  2E 0F BB 25                                  BTC     CS:[DI],SP
11C1H:  0F BB 20                                     BTC     DS:[BX+SI],SP
11C4H:  0F BB 21                                     BTC     DS:[BX+DI],SP
11C7H:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
11CBH:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
11CFH:  3E 0F BB 66 00                               BTC     DS:[BP],SP
11D4H:  0F BB 24                                     BTC     DS:[SI],SP
11D7H:  0F BB 25                                     BTC     DS:[DI],SP
11DAH:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
11DEH:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
11E2H:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
11E6H:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
11EAH:  26 0F BB 66 00                               BTC     ES:[BP],SP
11EFH:  26 0F BB 24                                  BTC     ES:[SI],SP
11F3H:  26 0F BB 25                                  BTC     ES:[DI],SP
11F7H:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
11FBH:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
11FFH:  0F BB 22                                     BTC     SS:[BP+SI],SP
1202H:  0F BB 23                                     BTC     SS:[BP+DI],SP
1205H:  0F BB 66 00                                  BTC     SS:[BP],SP
1209H:  36 0F BB 24                                  BTC     SS:[SI],SP
120DH:  36 0F BB 25                                  BTC     SS:[DI],SP
1211H:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
1215H:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
1219H:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
121DH:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
1221H:  64 0F BB 66 00                               BTC     FS:[BP],SP
1226H:  64 0F BB 24                                  BTC     FS:[SI],SP
122AH:  64 0F BB 25                                  BTC     FS:[DI],SP
122EH:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
1232H:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
1236H:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
123AH:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
123EH:  65 0F BB 66 00                               BTC     GS:[BP],SP
1243H:  65 0F BB 24                                  BTC     GS:[SI],SP
1247H:  65 0F BB 25                                  BTC     GS:[DI],SP
124BH:  0F BA FC 01                                  BTC     SP,01H
124FH:  0F BA FC FF                                  BTC     SP,0FFH
1253H:  0F BB E8                                     BTC     AX,BP
1256H:  0F BB E9                                     BTC     CX,BP
1259H:  0F BB EA                                     BTC     DX,BP
125CH:  0F BB EB                                     BTC     BX,BP
125FH:  0F BB EC                                     BTC     SP,BP
1262H:  0F BB ED                                     BTC     BP,BP
1265H:  0F BB EE                                     BTC     SI,BP
1268H:  0F BB EF                                     BTC     DI,BP
126BH:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234H],BP
1270H:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234H],BP
1275H:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234H],BP
127AH:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234H],BP
127FH:  0F BB AE 34 12                               BTC     SS:[BP+1234H],BP
1284H:  0F BB AC 34 12                               BTC     DS:[SI+1234H],BP
1289H:  0F BB AD 34 12                               BTC     DS:[DI+1234H],BP
128EH:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
1292H:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
1296H:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
129AH:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
129EH:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
12A3H:  2E 0F BB 2C                                  BTC     CS:[SI],BP
12A7H:  2E 0F BB 2D                                  BTC     CS:[DI],BP
12ABH:  0F BB 28                                     BTC     DS:[BX+SI],BP
12AEH:  0F BB 29                                     BTC     DS:[BX+DI],BP
12B1H:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
12B5H:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
12B9H:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
12BEH:  0F BB 2C                                     BTC     DS:[SI],BP
12C1H:  0F BB 2D                                     BTC     DS:[DI],BP
12C4H:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
12C8H:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
12CCH:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
12D0H:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
12D4H:  26 0F BB 6E 00                               BTC     ES:[BP],BP
12D9H:  26 0F BB 2C                                  BTC     ES:[SI],BP
12DDH:  26 0F BB 2D                                  BTC     ES:[DI],BP
12E1H:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
12E5H:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
12E9H:  0F BB 2A                                     BTC     SS:[BP+SI],BP
12ECH:  0F BB 2B                                     BTC     SS:[BP+DI],BP
12EFH:  0F BB 6E 00                                  BTC     SS:[BP],BP
12F3H:  36 0F BB 2C                                  BTC     SS:[SI],BP
12F7H:  36 0F BB 2D                                  BTC     SS:[DI],BP
12FBH:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
12FFH:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
1303H:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
1307H:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
130BH:  64 0F BB 6E 00                               BTC     FS:[BP],BP
1310H:  64 0F BB 2C                                  BTC     FS:[SI],BP
1314H:  64 0F BB 2D                                  BTC     FS:[DI],BP
1318H:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
131CH:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
1320H:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
1324H:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
1328H:  65 0F BB 6E 00                               BTC     GS:[BP],BP
132DH:  65 0F BB 2C                                  BTC     GS:[SI],BP
1331H:  65 0F BB 2D                                  BTC     GS:[DI],BP
1335H:  0F BA FD 01                                  BTC     BP,01H
1339H:  0F BA FD FF                                  BTC     BP,0FFH
133DH:  0F BB F0                                     BTC     AX,SI
1340H:  0F BB F1                                     BTC     CX,SI
1343H:  0F BB F2                                     BTC     DX,SI
1346H:  0F BB F3                                     BTC     BX,SI
1349H:  0F BB F4                                     BTC     SP,SI
134CH:  0F BB F5                                     BTC     BP,SI
134FH:  0F BB F6                                     BTC     SI,SI
1352H:  0F BB F7                                     BTC     DI,SI
1355H:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234H],SI
135AH:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234H],SI
135FH:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234H],SI
1364H:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234H],SI
1369H:  0F BB B6 34 12                               BTC     SS:[BP+1234H],SI
136EH:  0F BB B4 34 12                               BTC     DS:[SI+1234H],SI
1373H:  0F BB B5 34 12                               BTC     DS:[DI+1234H],SI
1378H:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
137CH:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
1380H:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
1384H:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
1388H:  2E 0F BB 76 00                               BTC     CS:[BP],SI
138DH:  2E 0F BB 34                                  BTC     CS:[SI],SI
1391H:  2E 0F BB 35                                  BTC     CS:[DI],SI
1395H:  0F BB 30                                     BTC     DS:[BX+SI],SI
1398H:  0F BB 31                                     BTC     DS:[BX+DI],SI
139BH:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
139FH:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
13A3H:  3E 0F BB 76 00                               BTC     DS:[BP],SI
13A8H:  0F BB 34                                     BTC     DS:[SI],SI
13ABH:  0F BB 35                                     BTC     DS:[DI],SI
13AEH:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
13B2H:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
13B6H:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
13BAH:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
13BEH:  26 0F BB 76 00                               BTC     ES:[BP],SI
13C3H:  26 0F BB 34                                  BTC     ES:[SI],SI
13C7H:  26 0F BB 35                                  BTC     ES:[DI],SI
13CBH:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
13CFH:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
13D3H:  0F BB 32                                     BTC     SS:[BP+SI],SI
13D6H:  0F BB 33                                     BTC     SS:[BP+DI],SI
13D9H:  0F BB 76 00                                  BTC     SS:[BP],SI
13DDH:  36 0F BB 34                                  BTC     SS:[SI],SI
13E1H:  36 0F BB 35                                  BTC     SS:[DI],SI
13E5H:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
13E9H:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
13EDH:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
13F1H:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
13F5H:  64 0F BB 76 00                               BTC     FS:[BP],SI
13FAH:  64 0F BB 34                                  BTC     FS:[SI],SI
13FEH:  64 0F BB 35                                  BTC     FS:[DI],SI
1402H:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
1406H:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
140AH:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
140EH:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
1412H:  65 0F BB 76 00                               BTC     GS:[BP],SI
1417H:  65 0F BB 34                                  BTC     GS:[SI],SI
141BH:  65 0F BB 35                                  BTC     GS:[DI],SI
141FH:  0F BA FE 01                                  BTC     SI,01H
1423H:  0F BA FE FF                                  BTC     SI,0FFH
1427H:  0F BB F8                                     BTC     AX,DI
142AH:  0F BB F9                                     BTC     CX,DI
142DH:  0F BB FA                                     BTC     DX,DI
1430H:  0F BB FB                                     BTC     BX,DI
1433H:  0F BB FC                                     BTC     SP,DI
1436H:  0F BB FD                                     BTC     BP,DI
1439H:  0F BB FE                                     BTC     SI,DI
143CH:  0F BB FF                                     BTC     DI,DI
143FH:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234H],DI
1444H:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234H],DI
1449H:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234H],DI
144EH:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234H],DI
1453H:  0F BB BE 34 12                               BTC     SS:[BP+1234H],DI
1458H:  0F BB BC 34 12                               BTC     DS:[SI+1234H],DI
145DH:  0F BB BD 34 12                               BTC     DS:[DI+1234H],DI
1462H:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
1466H:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
146AH:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
146EH:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
1472H:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
1477H:  2E 0F BB 3C                                  BTC     CS:[SI],DI
147BH:  2E 0F BB 3D                                  BTC     CS:[DI],DI
147FH:  0F BB 38                                     BTC     DS:[BX+SI],DI
1482H:  0F BB 39                                     BTC     DS:[BX+DI],DI
1485H:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
1489H:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
148DH:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
1492H:  0F BB 3C                                     BTC     DS:[SI],DI
1495H:  0F BB 3D                                     BTC     DS:[DI],DI
1498H:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
149CH:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
14A0H:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
14A4H:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
14A8H:  26 0F BB 7E 00                               BTC     ES:[BP],DI
14ADH:  26 0F BB 3C                                  BTC     ES:[SI],DI
14B1H:  26 0F BB 3D                                  BTC     ES:[DI],DI
14B5H:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
14B9H:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
14BDH:  0F BB 3A                                     BTC     SS:[BP+SI],DI
14C0H:  0F BB 3B                                     BTC     SS:[BP+DI],DI
14C3H:  0F BB 7E 00                                  BTC     SS:[BP],DI
14C7H:  36 0F BB 3C                                  BTC     SS:[SI],DI
14CBH:  36 0F BB 3D                                  BTC     SS:[DI],DI
14CFH:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
14D3H:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
14D7H:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
14DBH:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
14DFH:  64 0F BB 7E 00                               BTC     FS:[BP],DI
14E4H:  64 0F BB 3C                                  BTC     FS:[SI],DI
14E8H:  64 0F BB 3D                                  BTC     FS:[DI],DI
14ECH:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
14F0H:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
14F4H:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
14F8H:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
14FCH:  65 0F BB 7E 00                               BTC     GS:[BP],DI
1501H:  65 0F BB 3C                                  BTC     GS:[SI],DI
1505H:  65 0F BB 3D                                  BTC     GS:[DI],DI
1509H:  0F BA FF 01                                  BTC     DI,01H
150DH:  0F BA FF FF                                  BTC     DI,0FFH
1511H:  66 0F BA F8 FF                               BTC     EAX,0FFH
1516H:  66 0F BA F9 FF                               BTC     ECX,0FFH
151BH:  66 0F BA FA FF                               BTC     EDX,0FFH
1520H:  66 0F BA FB FF                               BTC     EBX,0FFH
1525H:  66 0F BA FC FF                               BTC     ESP,0FFH
152AH:  66 0F BA FD FF                               BTC     EBP,0FFH
152FH:  66 0F BA FE FF                               BTC     ESI,0FFH
1534H:  66 0F BA FF FF                               BTC     EDI,0FFH
1539H:  0F 80 36 01                                  JO      1673H
153DH:  0F 81 6F EB                                  JNO     00B0H
1541H:  0F 82 2E 01                                  JB      1673H
1545H:  0F 83 67 EB                                  JNB     00B0H
1549H:  0F 84 26 01                                  JZ      1673H
154DH:  0F 85 5F EB                                  JNZ     00B0H
1551H:  0F 86 1E 01                                  JBE     1673H
1555H:  0F 87 57 EB                                  JNBE    00B0H
1559H:  0F 88 16 01                                  JS      1673H
155DH:  0F 89 4F EB                                  JNS     00B0H
1561H:  0F 8A 0E 01                                  JP      1673H
1565H:  0F 8B 47 EB                                  JNP     00B0H
1569H:  0F 8C 06 01                                  JL      1673H
156DH:  0F 8D 3F EB                                  JNL     00B0H
1571H:  0F 8E FE 00                                  JLE     1673H
1575H:  0F 8F 37 EB                                  JNLE    00B0H
1579H:  70 FE                                        JO      1579H
157BH:  71 21                                        JNO     159EH
157DH:  72 FA                                        JB      1579H
157FH:  73 1D                                        JNB     159EH
1581H:  74 F6                                        JZ      1579H
1583H:  75 19                                        JNZ     159EH
1585H:  76 F2                                        JBE     1579H
1587H:  77 15                                        JNBE    159EH
1589H:  78 EE                                        JS      1579H
158BH:  79 11                                        JNS     159EH
158DH:  7A EA                                        JP      1579H
158FH:  7B 0D                                        JNP     159EH
1591H:  7C E6                                        JL      1579H
1593H:  7D 09                                        JNL     159EH
1595H:  7E E2                                        JLE     1579H
1597H:  7F 05                                        JNLE    159EH
1599H:  E3 DE                                        JCXZ    1579H
159BH:  67 E3 00                                     JECXZ   159EH
159EH:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
15A8H:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
15B2H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
15BCH:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
15C6H:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
15CFH:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
15D8H:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
15E5H:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
15EFH:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
15F9H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
1603H:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
160DH:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
1616H:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
161FH:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
162CH:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321H],AX
1636H:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321H],AX
1640H:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321H],AX
164AH:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321H],AX
1654H:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321H],AX
165DH:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321H],AX
1666H:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH
1673H:  D5 0A                                        AAD
