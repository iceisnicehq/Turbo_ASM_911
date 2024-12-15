0100h:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
010Dh:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
011Ah:  0F BB 06 34 12                               BTC     DS:[1234h],AX
011Fh:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678h],AX
0128h:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123h],01h
0130h:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678h],10h
013Bh:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
0148h:  0F BB 06 34 12                               BTC     DS:[1234h],AX
014Dh:  67 0F BB 05 78 56 34 12                      BTC     DS:[12345678h],AX
0155h:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
0162h:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
016Fh:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123h],01h
0177h:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678h],10h
0182h:  F0 66 26 67 0F BA BC E8 21 43 65 87 FF       LOCK BTC     dword ptr ES:[EAX+EBP*8+87654321h],0FFh
018Fh:  26 0F BB 06 34 12                            BTC     ES:[1234h],AX
0195h:  2E 67 0F BB 05 78 56 34 12                   BTC     CS:[12345678h],AX
019Eh:  66 26 0F BA 3E 23 01 01                      BTC     dword ptr ES:[0123h],01h
01A6h:  66 36 67 0F BA 3D 78 56 34 12 10             BTC     dword ptr SS:[12345678h],10h
01B1h:  0F BA 38 A0                                  BTC     word ptr DS:[BX+SI],0A0h
01B5h:  66 0F BA 38 B0                               BTC     dword ptr DS:[BX+SI],0B0h
01BAh:  0F BA 39 A0                                  BTC     word ptr DS:[BX+DI],0A0h
01BEh:  66 0F BA 39 B0                               BTC     dword ptr DS:[BX+DI],0B0h
01C3h:  0F BA 3A A0                                  BTC     word ptr SS:[BP+SI],0A0h
01C7h:  66 0F BA 3A B0                               BTC     dword ptr SS:[BP+SI],0B0h
01CCh:  0F BA 3B A0                                  BTC     word ptr SS:[BP+DI],0A0h
01D0h:  66 0F BA 3B B0                               BTC     dword ptr SS:[BP+DI],0B0h
01D5h:  0F BA 7E 00 A0                               BTC     word ptr SS:[BP],0A0h
01DAh:  66 0F BA 7E 00 B0                            BTC     dword ptr SS:[BP],0B0h
01E0h:  0F BA 3D A0                                  BTC     word ptr DS:[DI],0A0h
01E4h:  66 0F BA 3D B0                               BTC     dword ptr DS:[DI],0B0h
01E9h:  0F BA 3C A0                                  BTC     word ptr DS:[SI],0A0h
01EDh:  66 0F BA 3C B0                               BTC     dword ptr DS:[SI],0B0h
01F2h:  67 0F BB 84 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],AX
01FBh:  3E 67 0F BB 84 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],AX
0205h:  67 0F BB 44 2D 00                            BTC     SS:[EBP+EBP],AX
020Bh:  67 0F BB 04 2C                               BTC     SS:[ESP+EBP],AX
0210h:  67 0F BB 04 DA                               BTC     DS:[EDX+EBX*8],AX
0215h:  67 0F BB 44 4B 01                            BTC     DS:[EBX+ECX*2+01h],AX
021Bh:  67 0F BB 84 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],AX
0224h:  67 0F BB 84 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],AX
022Dh:  67 0F BB 84 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],AX
0236h:  F0 0F BB 00                                  LOCK BTC     DS:[BX+SI],AX
023Ah:  F0 0F BB 01                                  LOCK BTC     DS:[BX+DI],AX
023Eh:  F0 0F BB 02                                  LOCK BTC     SS:[BP+SI],AX
0242h:  F0 0F BB 03                                  LOCK BTC     SS:[BP+DI],AX
0246h:  F0 0F BB 46 00                               LOCK BTC     SS:[BP],AX
024Bh:  F0 0F BB 04                                  LOCK BTC     DS:[SI],AX
024Fh:  F0 0F BB 05                                  LOCK BTC     DS:[DI],AX
0253h:  F0 0F BB 80 34 12                            LOCK BTC     DS:[BX+SI+1234h],AX
0259h:  F0 0F BB 81 34 12                            LOCK BTC     DS:[BX+DI+1234h],AX
025Fh:  F0 0F BB 82 34 12                            LOCK BTC     SS:[BP+SI+1234h],AX
0265h:  F0 0F BB 83 34 12                            LOCK BTC     SS:[BP+DI+1234h],AX
026Bh:  F0 0F BB 86 34 12                            LOCK BTC     SS:[BP+1234h],AX
0271h:  F0 0F BB 84 34 12                            LOCK BTC     DS:[SI+1234h],AX
0277h:  F0 0F BB 85 34 12                            LOCK BTC     DS:[DI+1234h],AX
027Dh:  67 0F BB 8C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],CX
0286h:  3E 67 0F BB 8C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],CX
0290h:  67 0F BB 4C 2D 00                            BTC     SS:[EBP+EBP],CX
0296h:  67 0F BB 0C 2C                               BTC     SS:[ESP+EBP],CX
029Bh:  67 0F BB 0C DA                               BTC     DS:[EDX+EBX*8],CX
02A0h:  67 0F BB 4C 4B 01                            BTC     DS:[EBX+ECX*2+01h],CX
02A6h:  67 0F BB 8C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],CX
02AFh:  67 0F BB 8C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],CX
02B8h:  67 0F BB 8C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],CX
02C1h:  F0 0F BB 08                                  LOCK BTC     DS:[BX+SI],CX
02C5h:  F0 0F BB 09                                  LOCK BTC     DS:[BX+DI],CX
02C9h:  F0 0F BB 0A                                  LOCK BTC     SS:[BP+SI],CX
02CDh:  F0 0F BB 0B                                  LOCK BTC     SS:[BP+DI],CX
02D1h:  F0 0F BB 4E 00                               LOCK BTC     SS:[BP],CX
02D6h:  F0 0F BB 0C                                  LOCK BTC     DS:[SI],CX
02DAh:  F0 0F BB 0D                                  LOCK BTC     DS:[DI],CX
02DEh:  F0 0F BB 88 34 12                            LOCK BTC     DS:[BX+SI+1234h],CX
02E4h:  F0 0F BB 89 34 12                            LOCK BTC     DS:[BX+DI+1234h],CX
02EAh:  F0 0F BB 8A 34 12                            LOCK BTC     SS:[BP+SI+1234h],CX
02F0h:  F0 0F BB 8B 34 12                            LOCK BTC     SS:[BP+DI+1234h],CX
02F6h:  F0 0F BB 8E 34 12                            LOCK BTC     SS:[BP+1234h],CX
02FCh:  F0 0F BB 8C 34 12                            LOCK BTC     DS:[SI+1234h],CX
0302h:  F0 0F BB 8D 34 12                            LOCK BTC     DS:[DI+1234h],CX
0308h:  67 0F BB 94 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],DX
0311h:  3E 67 0F BB 94 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],DX
031Bh:  67 0F BB 54 2D 00                            BTC     SS:[EBP+EBP],DX
0321h:  67 0F BB 14 2C                               BTC     SS:[ESP+EBP],DX
0326h:  67 0F BB 14 DA                               BTC     DS:[EDX+EBX*8],DX
032Bh:  67 0F BB 54 4B 01                            BTC     DS:[EBX+ECX*2+01h],DX
0331h:  67 0F BB 94 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],DX
033Ah:  67 0F BB 94 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],DX
0343h:  67 0F BB 94 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],DX
034Ch:  F0 0F BB 10                                  LOCK BTC     DS:[BX+SI],DX
0350h:  F0 0F BB 11                                  LOCK BTC     DS:[BX+DI],DX
0354h:  F0 0F BB 12                                  LOCK BTC     SS:[BP+SI],DX
0358h:  F0 0F BB 13                                  LOCK BTC     SS:[BP+DI],DX
035Ch:  F0 0F BB 56 00                               LOCK BTC     SS:[BP],DX
0361h:  F0 0F BB 14                                  LOCK BTC     DS:[SI],DX
0365h:  F0 0F BB 15                                  LOCK BTC     DS:[DI],DX
0369h:  F0 0F BB 90 34 12                            LOCK BTC     DS:[BX+SI+1234h],DX
036Fh:  F0 0F BB 91 34 12                            LOCK BTC     DS:[BX+DI+1234h],DX
0375h:  F0 0F BB 92 34 12                            LOCK BTC     SS:[BP+SI+1234h],DX
037Bh:  F0 0F BB 93 34 12                            LOCK BTC     SS:[BP+DI+1234h],DX
0381h:  F0 0F BB 96 34 12                            LOCK BTC     SS:[BP+1234h],DX
0387h:  F0 0F BB 94 34 12                            LOCK BTC     DS:[SI+1234h],DX
038Dh:  F0 0F BB 95 34 12                            LOCK BTC     DS:[DI+1234h],DX
0393h:  67 0F BB 9C 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],BX
039Ch:  3E 67 0F BB 9C AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],BX
03A6h:  67 0F BB 5C 2D 00                            BTC     SS:[EBP+EBP],BX
03ACh:  67 0F BB 1C 2C                               BTC     SS:[ESP+EBP],BX
03B1h:  67 0F BB 1C DA                               BTC     DS:[EDX+EBX*8],BX
03B6h:  67 0F BB 5C 4B 01                            BTC     DS:[EBX+ECX*2+01h],BX
03BCh:  67 0F BB 9C 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],BX
03C5h:  67 0F BB 9C C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],BX
03CEh:  67 0F BB 9C 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],BX
03D7h:  F0 0F BB 18                                  LOCK BTC     DS:[BX+SI],BX
03DBh:  F0 0F BB 19                                  LOCK BTC     DS:[BX+DI],BX
03DFh:  F0 0F BB 1A                                  LOCK BTC     SS:[BP+SI],BX
03E3h:  F0 0F BB 1B                                  LOCK BTC     SS:[BP+DI],BX
03E7h:  F0 0F BB 5E 00                               LOCK BTC     SS:[BP],BX
03ECh:  F0 0F BB 1C                                  LOCK BTC     DS:[SI],BX
03F0h:  F0 0F BB 1D                                  LOCK BTC     DS:[DI],BX
03F4h:  F0 0F BB 98 34 12                            LOCK BTC     DS:[BX+SI+1234h],BX
03FAh:  F0 0F BB 99 34 12                            LOCK BTC     DS:[BX+DI+1234h],BX
0400h:  F0 0F BB 9A 34 12                            LOCK BTC     SS:[BP+SI+1234h],BX
0406h:  F0 0F BB 9B 34 12                            LOCK BTC     SS:[BP+DI+1234h],BX
040Ch:  F0 0F BB 9E 34 12                            LOCK BTC     SS:[BP+1234h],BX
0412h:  F0 0F BB 9C 34 12                            LOCK BTC     DS:[SI+1234h],BX
0418h:  F0 0F BB 9D 34 12                            LOCK BTC     DS:[DI+1234h],BX
041Eh:  67 0F BB A4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],SP
0427h:  3E 67 0F BB A4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],SP
0431h:  67 0F BB 64 2D 00                            BTC     SS:[EBP+EBP],SP
0437h:  67 0F BB 24 2C                               BTC     SS:[ESP+EBP],SP
043Ch:  67 0F BB 24 DA                               BTC     DS:[EDX+EBX*8],SP
0441h:  67 0F BB 64 4B 01                            BTC     DS:[EBX+ECX*2+01h],SP
0447h:  67 0F BB A4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],SP
0450h:  67 0F BB A4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],SP
0459h:  67 0F BB A4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],SP
0462h:  F0 0F BB 20                                  LOCK BTC     DS:[BX+SI],SP
0466h:  F0 0F BB 21                                  LOCK BTC     DS:[BX+DI],SP
046Ah:  F0 0F BB 22                                  LOCK BTC     SS:[BP+SI],SP
046Eh:  F0 0F BB 23                                  LOCK BTC     SS:[BP+DI],SP
0472h:  F0 0F BB 66 00                               LOCK BTC     SS:[BP],SP
0477h:  F0 0F BB 24                                  LOCK BTC     DS:[SI],SP
047Bh:  F0 0F BB 25                                  LOCK BTC     DS:[DI],SP
047Fh:  F0 0F BB A0 34 12                            LOCK BTC     DS:[BX+SI+1234h],SP
0485h:  F0 0F BB A1 34 12                            LOCK BTC     DS:[BX+DI+1234h],SP
048Bh:  F0 0F BB A2 34 12                            LOCK BTC     SS:[BP+SI+1234h],SP
0491h:  F0 0F BB A3 34 12                            LOCK BTC     SS:[BP+DI+1234h],SP
0497h:  F0 0F BB A6 34 12                            LOCK BTC     SS:[BP+1234h],SP
049Dh:  F0 0F BB A4 34 12                            LOCK BTC     DS:[SI+1234h],SP
04A3h:  F0 0F BB A5 34 12                            LOCK BTC     DS:[DI+1234h],SP
04A9h:  67 0F BB AC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],BP
04B2h:  3E 67 0F BB AC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],BP
04BCh:  67 0F BB 6C 2D 00                            BTC     SS:[EBP+EBP],BP
04C2h:  67 0F BB 2C 2C                               BTC     SS:[ESP+EBP],BP
04C7h:  67 0F BB 2C DA                               BTC     DS:[EDX+EBX*8],BP
04CCh:  67 0F BB 6C 4B 01                            BTC     DS:[EBX+ECX*2+01h],BP
04D2h:  67 0F BB AC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],BP
04DBh:  67 0F BB AC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],BP
04E4h:  67 0F BB AC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],BP
04EDh:  F0 0F BB 28                                  LOCK BTC     DS:[BX+SI],BP
04F1h:  F0 0F BB 29                                  LOCK BTC     DS:[BX+DI],BP
04F5h:  F0 0F BB 2A                                  LOCK BTC     SS:[BP+SI],BP
04F9h:  F0 0F BB 2B                                  LOCK BTC     SS:[BP+DI],BP
04FDh:  F0 0F BB 6E 00                               LOCK BTC     SS:[BP],BP
0502h:  F0 0F BB 2C                                  LOCK BTC     DS:[SI],BP
0506h:  F0 0F BB 2D                                  LOCK BTC     DS:[DI],BP
050Ah:  F0 0F BB A8 34 12                            LOCK BTC     DS:[BX+SI+1234h],BP
0510h:  F0 0F BB A9 34 12                            LOCK BTC     DS:[BX+DI+1234h],BP
0516h:  F0 0F BB AA 34 12                            LOCK BTC     SS:[BP+SI+1234h],BP
051Ch:  F0 0F BB AB 34 12                            LOCK BTC     SS:[BP+DI+1234h],BP
0522h:  F0 0F BB AE 34 12                            LOCK BTC     SS:[BP+1234h],BP
0528h:  F0 0F BB AC 34 12                            LOCK BTC     DS:[SI+1234h],BP
052Eh:  F0 0F BB AD 34 12                            LOCK BTC     DS:[DI+1234h],BP
0534h:  67 0F BB B4 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],SI
053Dh:  3E 67 0F BB B4 AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],SI
0547h:  67 0F BB 74 2D 00                            BTC     SS:[EBP+EBP],SI
054Dh:  67 0F BB 34 2C                               BTC     SS:[ESP+EBP],SI
0552h:  67 0F BB 34 DA                               BTC     DS:[EDX+EBX*8],SI
0557h:  67 0F BB 74 4B 01                            BTC     DS:[EBX+ECX*2+01h],SI
055Dh:  67 0F BB B4 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],SI
0566h:  67 0F BB B4 C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],SI
056Fh:  67 0F BB B4 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],SI
0578h:  F0 0F BB 30                                  LOCK BTC     DS:[BX+SI],SI
057Ch:  F0 0F BB 31                                  LOCK BTC     DS:[BX+DI],SI
0580h:  F0 0F BB 32                                  LOCK BTC     SS:[BP+SI],SI
0584h:  F0 0F BB 33                                  LOCK BTC     SS:[BP+DI],SI
0588h:  F0 0F BB 76 00                               LOCK BTC     SS:[BP],SI
058Dh:  F0 0F BB 34                                  LOCK BTC     DS:[SI],SI
0591h:  F0 0F BB 35                                  LOCK BTC     DS:[DI],SI
0595h:  F0 0F BB B0 34 12                            LOCK BTC     DS:[BX+SI+1234h],SI
059Bh:  F0 0F BB B1 34 12                            LOCK BTC     DS:[BX+DI+1234h],SI
05A1h:  F0 0F BB B2 34 12                            LOCK BTC     SS:[BP+SI+1234h],SI
05A7h:  F0 0F BB B3 34 12                            LOCK BTC     SS:[BP+DI+1234h],SI
05ADh:  F0 0F BB B6 34 12                            LOCK BTC     SS:[BP+1234h],SI
05B3h:  F0 0F BB B4 34 12                            LOCK BTC     DS:[SI+1234h],SI
05B9h:  F0 0F BB B5 34 12                            LOCK BTC     DS:[DI+1234h],SI
05BFh:  67 0F BB BC 40 00 01 00 00                   BTC     DS:[EAX+EAX*2+00000100h],DI
05C8h:  3E 67 0F BB BC AB 78 56 34 12                BTC     DS:[EBX+EBP*4+12345678h],DI
05D2h:  67 0F BB 7C 2D 00                            BTC     SS:[EBP+EBP],DI
05D8h:  67 0F BB 3C 2C                               BTC     SS:[ESP+EBP],DI
05DDh:  67 0F BB 3C DA                               BTC     DS:[EDX+EBX*8],DI
05E2h:  67 0F BB 7C 4B 01                            BTC     DS:[EBX+ECX*2+01h],DI
05E8h:  67 0F BB BC 91 00 01 00 00                   BTC     DS:[ECX+EDX*4+00000100h],DI
05F1h:  67 0F BB BC C0 D0 C0 B0 A0                   BTC     DS:[EAX+EAX*8+0A0B0C0D0h],DI
05FAh:  67 0F BB BC 2D 40 30 20 10                   BTC     SS:[EBP+EBP+10203040h],DI
0603h:  F0 0F BB 38                                  LOCK BTC     DS:[BX+SI],DI
0607h:  F0 0F BB 39                                  LOCK BTC     DS:[BX+DI],DI
060Bh:  F0 0F BB 3A                                  LOCK BTC     SS:[BP+SI],DI
060Fh:  F0 0F BB 3B                                  LOCK BTC     SS:[BP+DI],DI
0613h:  F0 0F BB 7E 00                               LOCK BTC     SS:[BP],DI
0618h:  F0 0F BB 3C                                  LOCK BTC     DS:[SI],DI
061Ch:  F0 0F BB 3D                                  LOCK BTC     DS:[DI],DI
0620h:  F0 0F BB B8 34 12                            LOCK BTC     DS:[BX+SI+1234h],DI
0626h:  F0 0F BB B9 34 12                            LOCK BTC     DS:[BX+DI+1234h],DI
062Ch:  F0 0F BB BA 34 12                            LOCK BTC     SS:[BP+SI+1234h],DI
0632h:  F0 0F BB BB 34 12                            LOCK BTC     SS:[BP+DI+1234h],DI
0638h:  F0 0F BB BE 34 12                            LOCK BTC     SS:[BP+1234h],DI
063Eh:  F0 0F BB BC 34 12                            LOCK BTC     DS:[SI+1234h],DI
0644h:  F0 0F BB BD 34 12                            LOCK BTC     DS:[DI+1234h],DI
064Ah:  66 0F BB C0                                  BTC     EAX,EAX
064Eh:  66 0F BB C1                                  BTC     ECX,EAX
0652h:  66 0F BB C2                                  BTC     EDX,EAX
0656h:  66 0F BB C3                                  BTC     EBX,EAX
065Ah:  66 0F BB C4                                  BTC     ESP,EAX
065Eh:  66 0F BB C5                                  BTC     EBP,EAX
0662h:  66 0F BB C6                                  BTC     ESI,EAX
0666h:  66 0F BB C7                                  BTC     EDI,EAX
066Ah:  66 67 0F BB 00                               BTC     DS:[EAX],EAX
066Fh:  66 67 0F BB 88 34 12 00 00                   BTC     DS:[EAX+00001234h],ECX
0678h:  66 2E 67 0F BB 18                            BTC     CS:[EAX],EBX
067Eh:  66 67 0F BB 10                               BTC     DS:[EAX],EDX
0683h:  66 26 67 0F BB 20                            BTC     ES:[EAX],ESP
0689h:  66 36 67 0F BB 28                            BTC     SS:[EAX],EBP
068Fh:  66 64 67 0F BB 30                            BTC     FS:[EAX],ESI
0695h:  66 65 67 0F BB 38                            BTC     GS:[EAX],EDI
069Bh:  66 67 0F BB 84 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EAX
06A5h:  66 3E 67 0F BB 84 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],EAX
06B0h:  66 67 0F BB 44 2D 00                         BTC     SS:[EBP+EBP],EAX
06B7h:  66 67 0F BB 04 2C                            BTC     SS:[ESP+EBP],EAX
06BDh:  66 67 0F BB 04 DA                            BTC     DS:[EDX+EBX*8],EAX
06C3h:  66 67 0F BB 44 4B 01                         BTC     DS:[EBX+ECX*2+01h],EAX
06CAh:  66 67 0F BB 84 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EAX
06D4h:  66 67 0F BB 84 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EAX
06DEh:  66 67 0F BB 84 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EAX
06E8h:  F0 66 0F BB 00                               LOCK BTC     DS:[BX+SI],EAX
06EDh:  F0 66 0F BB 01                               LOCK BTC     DS:[BX+DI],EAX
06F2h:  F0 66 0F BB 02                               LOCK BTC     SS:[BP+SI],EAX
06F7h:  F0 66 0F BB 03                               LOCK BTC     SS:[BP+DI],EAX
06FCh:  F0 66 0F BB 46 00                            LOCK BTC     SS:[BP],EAX
0702h:  F0 66 0F BB 04                               LOCK BTC     DS:[SI],EAX
0707h:  F0 66 0F BB 05                               LOCK BTC     DS:[DI],EAX
070Ch:  F0 66 0F BB 80 34 12                         LOCK BTC     DS:[BX+SI+1234h],EAX
0713h:  F0 66 0F BB 81 34 12                         LOCK BTC     DS:[BX+DI+1234h],EAX
071Ah:  F0 66 0F BB 82 34 12                         LOCK BTC     SS:[BP+SI+1234h],EAX
0721h:  F0 66 0F BB 83 34 12                         LOCK BTC     SS:[BP+DI+1234h],EAX
0728h:  F0 66 0F BB 86 34 12                         LOCK BTC     SS:[BP+1234h],EAX
072Fh:  F0 66 0F BB 84 34 12                         LOCK BTC     DS:[SI+1234h],EAX
0736h:  F0 66 0F BB 85 34 12                         LOCK BTC     DS:[DI+1234h],EAX
073Dh:  66 0F BA F8 01                               BTC     EAX,01h
0742h:  66 0F BB C8                                  BTC     EAX,ECX
0746h:  66 0F BB C9                                  BTC     ECX,ECX
074Ah:  66 0F BB CA                                  BTC     EDX,ECX
074Eh:  66 0F BB CB                                  BTC     EBX,ECX
0752h:  66 0F BB CC                                  BTC     ESP,ECX
0756h:  66 0F BB CD                                  BTC     EBP,ECX
075Ah:  66 0F BB CE                                  BTC     ESI,ECX
075Eh:  66 0F BB CF                                  BTC     EDI,ECX
0762h:  66 67 0F BB 01                               BTC     DS:[ECX],EAX
0767h:  66 67 0F BB 89 34 12 00 00                   BTC     DS:[ECX+00001234h],ECX
0770h:  66 2E 67 0F BB 19                            BTC     CS:[ECX],EBX
0776h:  66 67 0F BB 11                               BTC     DS:[ECX],EDX
077Bh:  66 26 67 0F BB 21                            BTC     ES:[ECX],ESP
0781h:  66 36 67 0F BB 29                            BTC     SS:[ECX],EBP
0787h:  66 64 67 0F BB 31                            BTC     FS:[ECX],ESI
078Dh:  66 65 67 0F BB 39                            BTC     GS:[ECX],EDI
0793h:  66 67 0F BB 8C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],ECX
079Dh:  66 3E 67 0F BB 8C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],ECX
07A8h:  66 67 0F BB 4C 2D 00                         BTC     SS:[EBP+EBP],ECX
07AFh:  66 67 0F BB 0C 2C                            BTC     SS:[ESP+EBP],ECX
07B5h:  66 67 0F BB 0C DA                            BTC     DS:[EDX+EBX*8],ECX
07BBh:  66 67 0F BB 4C 4B 01                         BTC     DS:[EBX+ECX*2+01h],ECX
07C2h:  66 67 0F BB 8C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],ECX
07CCh:  66 67 0F BB 8C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],ECX
07D6h:  66 67 0F BB 8C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],ECX
07E0h:  F0 66 0F BB 08                               LOCK BTC     DS:[BX+SI],ECX
07E5h:  F0 66 0F BB 09                               LOCK BTC     DS:[BX+DI],ECX
07EAh:  F0 66 0F BB 0A                               LOCK BTC     SS:[BP+SI],ECX
07EFh:  F0 66 0F BB 0B                               LOCK BTC     SS:[BP+DI],ECX
07F4h:  F0 66 0F BB 4E 00                            LOCK BTC     SS:[BP],ECX
07FAh:  F0 66 0F BB 0C                               LOCK BTC     DS:[SI],ECX
07FFh:  F0 66 0F BB 0D                               LOCK BTC     DS:[DI],ECX
0804h:  F0 66 0F BB 88 34 12                         LOCK BTC     DS:[BX+SI+1234h],ECX
080Bh:  F0 66 0F BB 89 34 12                         LOCK BTC     DS:[BX+DI+1234h],ECX
0812h:  F0 66 0F BB 8A 34 12                         LOCK BTC     SS:[BP+SI+1234h],ECX
0819h:  F0 66 0F BB 8B 34 12                         LOCK BTC     SS:[BP+DI+1234h],ECX
0820h:  F0 66 0F BB 8E 34 12                         LOCK BTC     SS:[BP+1234h],ECX
0827h:  F0 66 0F BB 8C 34 12                         LOCK BTC     DS:[SI+1234h],ECX
082Eh:  F0 66 0F BB 8D 34 12                         LOCK BTC     DS:[DI+1234h],ECX
0835h:  66 0F BA F9 01                               BTC     ECX,01h
083Ah:  66 0F BB D0                                  BTC     EAX,EDX
083Eh:  66 0F BB D1                                  BTC     ECX,EDX
0842h:  66 0F BB D2                                  BTC     EDX,EDX
0846h:  66 0F BB D3                                  BTC     EBX,EDX
084Ah:  66 0F BB D4                                  BTC     ESP,EDX
084Eh:  66 0F BB D5                                  BTC     EBP,EDX
0852h:  66 0F BB D6                                  BTC     ESI,EDX
0856h:  66 0F BB D7                                  BTC     EDI,EDX
085Ah:  66 67 0F BB 02                               BTC     DS:[EDX],EAX
085Fh:  66 67 0F BB 8A 34 12 00 00                   BTC     DS:[EDX+00001234h],ECX
0868h:  66 2E 67 0F BB 1A                            BTC     CS:[EDX],EBX
086Eh:  66 67 0F BB 12                               BTC     DS:[EDX],EDX
0873h:  66 26 67 0F BB 22                            BTC     ES:[EDX],ESP
0879h:  66 36 67 0F BB 2A                            BTC     SS:[EDX],EBP
087Fh:  66 64 67 0F BB 32                            BTC     FS:[EDX],ESI
0885h:  66 65 67 0F BB 3A                            BTC     GS:[EDX],EDI
088Bh:  66 67 0F BB 94 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EDX
0895h:  66 3E 67 0F BB 94 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],EDX
08A0h:  66 67 0F BB 54 2D 00                         BTC     SS:[EBP+EBP],EDX
08A7h:  66 67 0F BB 14 2C                            BTC     SS:[ESP+EBP],EDX
08ADh:  66 67 0F BB 14 DA                            BTC     DS:[EDX+EBX*8],EDX
08B3h:  66 67 0F BB 54 4B 01                         BTC     DS:[EBX+ECX*2+01h],EDX
08BAh:  66 67 0F BB 94 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EDX
08C4h:  66 67 0F BB 94 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EDX
08CEh:  66 67 0F BB 94 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EDX
08D8h:  F0 66 0F BB 10                               LOCK BTC     DS:[BX+SI],EDX
08DDh:  F0 66 0F BB 11                               LOCK BTC     DS:[BX+DI],EDX
08E2h:  F0 66 0F BB 12                               LOCK BTC     SS:[BP+SI],EDX
08E7h:  F0 66 0F BB 13                               LOCK BTC     SS:[BP+DI],EDX
08ECh:  F0 66 0F BB 56 00                            LOCK BTC     SS:[BP],EDX
08F2h:  F0 66 0F BB 14                               LOCK BTC     DS:[SI],EDX
08F7h:  F0 66 0F BB 15                               LOCK BTC     DS:[DI],EDX
08FCh:  F0 66 0F BB 90 34 12                         LOCK BTC     DS:[BX+SI+1234h],EDX
0903h:  F0 66 0F BB 91 34 12                         LOCK BTC     DS:[BX+DI+1234h],EDX
090Ah:  F0 66 0F BB 92 34 12                         LOCK BTC     SS:[BP+SI+1234h],EDX
0911h:  F0 66 0F BB 93 34 12                         LOCK BTC     SS:[BP+DI+1234h],EDX
0918h:  F0 66 0F BB 96 34 12                         LOCK BTC     SS:[BP+1234h],EDX
091Fh:  F0 66 0F BB 94 34 12                         LOCK BTC     DS:[SI+1234h],EDX
0926h:  F0 66 0F BB 95 34 12                         LOCK BTC     DS:[DI+1234h],EDX
092Dh:  66 0F BA FA 01                               BTC     EDX,01h
0932h:  66 0F BB D8                                  BTC     EAX,EBX
0936h:  66 0F BB D9                                  BTC     ECX,EBX
093Ah:  66 0F BB DA                                  BTC     EDX,EBX
093Eh:  66 0F BB DB                                  BTC     EBX,EBX
0942h:  66 0F BB DC                                  BTC     ESP,EBX
0946h:  66 0F BB DD                                  BTC     EBP,EBX
094Ah:  66 0F BB DE                                  BTC     ESI,EBX
094Eh:  66 0F BB DF                                  BTC     EDI,EBX
0952h:  66 67 0F BB 03                               BTC     DS:[EBX],EAX
0957h:  66 67 0F BB 8B 34 12 00 00                   BTC     DS:[EBX+00001234h],ECX
0960h:  66 2E 67 0F BB 1B                            BTC     CS:[EBX],EBX
0966h:  66 67 0F BB 13                               BTC     DS:[EBX],EDX
096Bh:  66 26 67 0F BB 23                            BTC     ES:[EBX],ESP
0971h:  66 36 67 0F BB 2B                            BTC     SS:[EBX],EBP
0977h:  66 64 67 0F BB 33                            BTC     FS:[EBX],ESI
097Dh:  66 65 67 0F BB 3B                            BTC     GS:[EBX],EDI
0983h:  66 67 0F BB 9C 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EBX
098Dh:  66 3E 67 0F BB 9C AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],EBX
0998h:  66 67 0F BB 5C 2D 00                         BTC     SS:[EBP+EBP],EBX
099Fh:  66 67 0F BB 1C 2C                            BTC     SS:[ESP+EBP],EBX
09A5h:  66 67 0F BB 1C DA                            BTC     DS:[EDX+EBX*8],EBX
09ABh:  66 67 0F BB 5C 4B 01                         BTC     DS:[EBX+ECX*2+01h],EBX
09B2h:  66 67 0F BB 9C 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EBX
09BCh:  66 67 0F BB 9C C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EBX
09C6h:  66 67 0F BB 9C 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EBX
09D0h:  F0 66 0F BB 18                               LOCK BTC     DS:[BX+SI],EBX
09D5h:  F0 66 0F BB 19                               LOCK BTC     DS:[BX+DI],EBX
09DAh:  F0 66 0F BB 1A                               LOCK BTC     SS:[BP+SI],EBX
09DFh:  F0 66 0F BB 1B                               LOCK BTC     SS:[BP+DI],EBX
09E4h:  F0 66 0F BB 5E 00                            LOCK BTC     SS:[BP],EBX
09EAh:  F0 66 0F BB 1C                               LOCK BTC     DS:[SI],EBX
09EFh:  F0 66 0F BB 1D                               LOCK BTC     DS:[DI],EBX
09F4h:  F0 66 0F BB 98 34 12                         LOCK BTC     DS:[BX+SI+1234h],EBX
09FBh:  F0 66 0F BB 99 34 12                         LOCK BTC     DS:[BX+DI+1234h],EBX
0A02h:  F0 66 0F BB 9A 34 12                         LOCK BTC     SS:[BP+SI+1234h],EBX
0A09h:  F0 66 0F BB 9B 34 12                         LOCK BTC     SS:[BP+DI+1234h],EBX
0A10h:  F0 66 0F BB 9E 34 12                         LOCK BTC     SS:[BP+1234h],EBX
0A17h:  F0 66 0F BB 9C 34 12                         LOCK BTC     DS:[SI+1234h],EBX
0A1Eh:  F0 66 0F BB 9D 34 12                         LOCK BTC     DS:[DI+1234h],EBX
0A25h:  66 0F BA FB 01                               BTC     EBX,01h
0A2Ah:  66 0F BB E0                                  BTC     EAX,ESP
0A2Eh:  66 0F BB E1                                  BTC     ECX,ESP
0A32h:  66 0F BB E2                                  BTC     EDX,ESP
0A36h:  66 0F BB E3                                  BTC     EBX,ESP
0A3Ah:  66 0F BB E4                                  BTC     ESP,ESP
0A3Eh:  66 0F BB E5                                  BTC     EBP,ESP
0A42h:  66 0F BB E6                                  BTC     ESI,ESP
0A46h:  66 0F BB E7                                  BTC     EDI,ESP
0A4Ah:  66 67 0F BB 04 04                            BTC     SS:[ESP+EAX],EAX
0A50h:  66 67 0F BB 8C 2C 34 12 00 00                BTC     SS:[ESP+EBP+00001234h],ECX
0A5Ah:  66 2E 67 0F BB 1C 0C                         BTC     CS:[ESP+ECX],EBX
0A61h:  66 3E 67 0F BB 14 14                         BTC     DS:[ESP+EDX],EDX
0A68h:  66 26 67 0F BB 24 24                         BTC     ES:[ESP+ESP],ESP
0A6Fh:  66 67 0F BB A4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],ESP
0A79h:  66 3E 67 0F BB A4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],ESP
0A84h:  66 67 0F BB 64 2D 00                         BTC     SS:[EBP+EBP],ESP
0A8Bh:  66 67 0F BB 24 2C                            BTC     SS:[ESP+EBP],ESP
0A91h:  66 67 0F BB 24 DA                            BTC     DS:[EDX+EBX*8],ESP
0A97h:  66 67 0F BB 64 4B 01                         BTC     DS:[EBX+ECX*2+01h],ESP
0A9Eh:  66 67 0F BB A4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],ESP
0AA8h:  66 67 0F BB A4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],ESP
0AB2h:  66 67 0F BB A4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],ESP
0ABCh:  F0 66 0F BB 20                               LOCK BTC     DS:[BX+SI],ESP
0AC1h:  F0 66 0F BB 21                               LOCK BTC     DS:[BX+DI],ESP
0AC6h:  F0 66 0F BB 22                               LOCK BTC     SS:[BP+SI],ESP
0ACBh:  F0 66 0F BB 23                               LOCK BTC     SS:[BP+DI],ESP
0AD0h:  F0 66 0F BB 66 00                            LOCK BTC     SS:[BP],ESP
0AD6h:  F0 66 0F BB 24                               LOCK BTC     DS:[SI],ESP
0ADBh:  F0 66 0F BB 25                               LOCK BTC     DS:[DI],ESP
0AE0h:  F0 66 0F BB A0 34 12                         LOCK BTC     DS:[BX+SI+1234h],ESP
0AE7h:  F0 66 0F BB A1 34 12                         LOCK BTC     DS:[BX+DI+1234h],ESP
0AEEh:  F0 66 0F BB A2 34 12                         LOCK BTC     SS:[BP+SI+1234h],ESP
0AF5h:  F0 66 0F BB A3 34 12                         LOCK BTC     SS:[BP+DI+1234h],ESP
0AFCh:  F0 66 0F BB A6 34 12                         LOCK BTC     SS:[BP+1234h],ESP
0B03h:  F0 66 0F BB A4 34 12                         LOCK BTC     DS:[SI+1234h],ESP
0B0Ah:  F0 66 0F BB A5 34 12                         LOCK BTC     DS:[DI+1234h],ESP
0B11h:  66 0F BA FC 01                               BTC     ESP,01h
0B16h:  66 0F BB E8                                  BTC     EAX,EBP
0B1Ah:  66 0F BB E9                                  BTC     ECX,EBP
0B1Eh:  66 0F BB EA                                  BTC     EDX,EBP
0B22h:  66 0F BB EB                                  BTC     EBX,EBP
0B26h:  66 0F BB EC                                  BTC     ESP,EBP
0B2Ah:  66 0F BB ED                                  BTC     EBP,EBP
0B2Eh:  66 0F BB EE                                  BTC     ESI,EBP
0B32h:  66 0F BB EF                                  BTC     EDI,EBP
0B36h:  66 67 0F BB 45 00                            BTC     SS:[EBP],EAX
0B3Ch:  66 67 0F BB 8D 34 12 00 00                   BTC     SS:[EBP+00001234h],ECX
0B45h:  66 2E 67 0F BB 5D 00                         BTC     CS:[EBP],EBX
0B4Ch:  66 3E 67 0F BB 55 00                         BTC     DS:[EBP],EDX
0B53h:  66 26 67 0F BB 65 00                         BTC     ES:[EBP],ESP
0B5Ah:  66 67 0F BB 6D 00                            BTC     SS:[EBP],EBP
0B60h:  66 64 67 0F BB 75 00                         BTC     FS:[EBP],ESI
0B67h:  66 65 67 0F BB 7D 00                         BTC     GS:[EBP],EDI
0B6Eh:  66 67 0F BB AC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EBP
0B78h:  66 3E 67 0F BB AC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],EBP
0B83h:  66 67 0F BB 6C 2D 00                         BTC     SS:[EBP+EBP],EBP
0B8Ah:  66 67 0F BB 2C 2C                            BTC     SS:[ESP+EBP],EBP
0B90h:  66 67 0F BB 2C DA                            BTC     DS:[EDX+EBX*8],EBP
0B96h:  66 67 0F BB 6C 4B 01                         BTC     DS:[EBX+ECX*2+01h],EBP
0B9Dh:  66 67 0F BB AC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EBP
0BA7h:  66 67 0F BB AC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EBP
0BB1h:  66 67 0F BB AC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EBP
0BBBh:  F0 66 0F BB 28                               LOCK BTC     DS:[BX+SI],EBP
0BC0h:  F0 66 0F BB 29                               LOCK BTC     DS:[BX+DI],EBP
0BC5h:  F0 66 0F BB 2A                               LOCK BTC     SS:[BP+SI],EBP
0BCAh:  F0 66 0F BB 2B                               LOCK BTC     SS:[BP+DI],EBP
0BCFh:  F0 66 0F BB 6E 00                            LOCK BTC     SS:[BP],EBP
0BD5h:  F0 66 0F BB 2C                               LOCK BTC     DS:[SI],EBP
0BDAh:  F0 66 0F BB 2D                               LOCK BTC     DS:[DI],EBP
0BDFh:  F0 66 0F BB A8 34 12                         LOCK BTC     DS:[BX+SI+1234h],EBP
0BE6h:  F0 66 0F BB A9 34 12                         LOCK BTC     DS:[BX+DI+1234h],EBP
0BEDh:  F0 66 0F BB AA 34 12                         LOCK BTC     SS:[BP+SI+1234h],EBP
0BF4h:  F0 66 0F BB AB 34 12                         LOCK BTC     SS:[BP+DI+1234h],EBP
0BFBh:  F0 66 0F BB AE 34 12                         LOCK BTC     SS:[BP+1234h],EBP
0C02h:  F0 66 0F BB AC 34 12                         LOCK BTC     DS:[SI+1234h],EBP
0C09h:  F0 66 0F BB AD 34 12                         LOCK BTC     DS:[DI+1234h],EBP
0C10h:  66 0F BA FD 01                               BTC     EBP,01h
0C15h:  66 0F BB F0                                  BTC     EAX,ESI
0C19h:  66 0F BB F1                                  BTC     ECX,ESI
0C1Dh:  66 0F BB F2                                  BTC     EDX,ESI
0C21h:  66 0F BB F3                                  BTC     EBX,ESI
0C25h:  66 0F BB F4                                  BTC     ESP,ESI
0C29h:  66 0F BB F5                                  BTC     EBP,ESI
0C2Dh:  66 0F BB F6                                  BTC     ESI,ESI
0C31h:  66 0F BB F7                                  BTC     EDI,ESI
0C35h:  66 67 0F BB 06                               BTC     DS:[ESI],EAX
0C3Ah:  66 67 0F BB 8E 34 12 00 00                   BTC     DS:[ESI+00001234h],ECX
0C43h:  66 2E 67 0F BB 1E                            BTC     CS:[ESI],EBX
0C49h:  66 67 0F BB 16                               BTC     DS:[ESI],EDX
0C4Eh:  66 26 67 0F BB 26                            BTC     ES:[ESI],ESP
0C54h:  66 36 67 0F BB 2E                            BTC     SS:[ESI],EBP
0C5Ah:  66 64 67 0F BB 36                            BTC     FS:[ESI],ESI
0C60h:  66 65 67 0F BB 3E                            BTC     GS:[ESI],EDI
0C66h:  66 67 0F BB B4 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],ESI
0C70h:  66 3E 67 0F BB B4 AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],ESI
0C7Bh:  66 67 0F BB 74 2D 00                         BTC     SS:[EBP+EBP],ESI
0C82h:  66 67 0F BB 34 2C                            BTC     SS:[ESP+EBP],ESI
0C88h:  66 67 0F BB 34 DA                            BTC     DS:[EDX+EBX*8],ESI
0C8Eh:  66 67 0F BB 74 4B 01                         BTC     DS:[EBX+ECX*2+01h],ESI
0C95h:  66 67 0F BB B4 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],ESI
0C9Fh:  66 67 0F BB B4 C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],ESI
0CA9h:  66 67 0F BB B4 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],ESI
0CB3h:  F0 66 0F BB 30                               LOCK BTC     DS:[BX+SI],ESI
0CB8h:  F0 66 0F BB 31                               LOCK BTC     DS:[BX+DI],ESI
0CBDh:  F0 66 0F BB 32                               LOCK BTC     SS:[BP+SI],ESI
0CC2h:  F0 66 0F BB 33                               LOCK BTC     SS:[BP+DI],ESI
0CC7h:  F0 66 0F BB 76 00                            LOCK BTC     SS:[BP],ESI
0CCDh:  F0 66 0F BB 34                               LOCK BTC     DS:[SI],ESI
0CD2h:  F0 66 0F BB 35                               LOCK BTC     DS:[DI],ESI
0CD7h:  F0 66 0F BB B0 34 12                         LOCK BTC     DS:[BX+SI+1234h],ESI
0CDEh:  F0 66 0F BB B1 34 12                         LOCK BTC     DS:[BX+DI+1234h],ESI
0CE5h:  F0 66 0F BB B2 34 12                         LOCK BTC     SS:[BP+SI+1234h],ESI
0CECh:  F0 66 0F BB B3 34 12                         LOCK BTC     SS:[BP+DI+1234h],ESI
0CF3h:  F0 66 0F BB B6 34 12                         LOCK BTC     SS:[BP+1234h],ESI
0CFAh:  F0 66 0F BB B4 34 12                         LOCK BTC     DS:[SI+1234h],ESI
0D01h:  F0 66 0F BB B5 34 12                         LOCK BTC     DS:[DI+1234h],ESI
0D08h:  66 0F BA FE 01                               BTC     ESI,01h
0D0Dh:  66 0F BB F8                                  BTC     EAX,EDI
0D11h:  66 0F BB F9                                  BTC     ECX,EDI
0D15h:  66 0F BB FA                                  BTC     EDX,EDI
0D19h:  66 0F BB FB                                  BTC     EBX,EDI
0D1Dh:  66 0F BB FC                                  BTC     ESP,EDI
0D21h:  66 0F BB FD                                  BTC     EBP,EDI
0D25h:  66 0F BB FE                                  BTC     ESI,EDI
0D29h:  66 0F BB FF                                  BTC     EDI,EDI
0D2Dh:  66 67 0F BB 07                               BTC     DS:[EDI],EAX
0D32h:  66 67 0F BB 8F 34 12 00 00                   BTC     DS:[EDI+00001234h],ECX
0D3Bh:  66 2E 67 0F BB 1F                            BTC     CS:[EDI],EBX
0D41h:  66 67 0F BB 17                               BTC     DS:[EDI],EDX
0D46h:  66 26 67 0F BB 27                            BTC     ES:[EDI],ESP
0D4Ch:  66 36 67 0F BB 2F                            BTC     SS:[EDI],EBP
0D52h:  66 64 67 0F BB 37                            BTC     FS:[EDI],ESI
0D58h:  66 65 67 0F BB 3F                            BTC     GS:[EDI],EDI
0D5Eh:  66 67 0F BB BC 40 00 01 00 00                BTC     DS:[EAX+EAX*2+00000100h],EDI
0D68h:  66 3E 67 0F BB BC AB 78 56 34 12             BTC     DS:[EBX+EBP*4+12345678h],EDI
0D73h:  66 67 0F BB 7C 2D 00                         BTC     SS:[EBP+EBP],EDI
0D7Ah:  66 67 0F BB 3C 2C                            BTC     SS:[ESP+EBP],EDI
0D80h:  66 67 0F BB 3C DA                            BTC     DS:[EDX+EBX*8],EDI
0D86h:  66 67 0F BB 7C 4B 01                         BTC     DS:[EBX+ECX*2+01h],EDI
0D8Dh:  66 67 0F BB BC 91 00 01 00 00                BTC     DS:[ECX+EDX*4+00000100h],EDI
0D97h:  66 67 0F BB BC C0 D0 C0 B0 A0                BTC     DS:[EAX+EAX*8+0A0B0C0D0h],EDI
0DA1h:  66 67 0F BB BC 2D 40 30 20 10                BTC     SS:[EBP+EBP+10203040h],EDI
0DABh:  F0 64 67 0F BA BC 2B CC DD EE FF A0          LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCh],0A0h
0DB7h:  F0 66 0F BB 38                               LOCK BTC     DS:[BX+SI],EDI
0DBCh:  F0 66 0F BB 39                               LOCK BTC     DS:[BX+DI],EDI
0DC1h:  F0 66 0F BB 3A                               LOCK BTC     SS:[BP+SI],EDI
0DC6h:  F0 66 0F BB 3B                               LOCK BTC     SS:[BP+DI],EDI
0DCBh:  F0 66 0F BB 7E 00                            LOCK BTC     SS:[BP],EDI
0DD1h:  F0 66 0F BB 3C                               LOCK BTC     DS:[SI],EDI
0DD6h:  F0 66 0F BB 3D                               LOCK BTC     DS:[DI],EDI
0DDBh:  F0 66 0F BB B8 34 12                         LOCK BTC     DS:[BX+SI+1234h],EDI
0DE2h:  F0 66 0F BB B9 34 12                         LOCK BTC     DS:[BX+DI+1234h],EDI
0DE9h:  F0 66 0F BB BA 34 12                         LOCK BTC     SS:[BP+SI+1234h],EDI
0DF0h:  F0 66 0F BB BB 34 12                         LOCK BTC     SS:[BP+DI+1234h],EDI
0DF7h:  F0 66 0F BB BE 34 12                         LOCK BTC     SS:[BP+1234h],EDI
0DFEh:  F0 66 0F BB BC 34 12                         LOCK BTC     DS:[SI+1234h],EDI
0E05h:  F0 66 0F BB BD 34 12                         LOCK BTC     DS:[DI+1234h],EDI
0E0Ch:  66 0F BA FF 01                               BTC     EDI,01h
0E11h:  0F BB C0                                     BTC     AX,AX
0E14h:  0F BB C1                                     BTC     CX,AX
0E17h:  0F BB C2                                     BTC     DX,AX
0E1Ah:  0F BB C3                                     BTC     BX,AX
0E1Dh:  0F BB C4                                     BTC     SP,AX
0E20h:  0F BB C5                                     BTC     BP,AX
0E23h:  0F BB C6                                     BTC     SI,AX
0E26h:  0F BB C7                                     BTC     DI,AX
0E29h:  0F BB 80 34 12                               BTC     DS:[BX+SI+1234h],AX
0E2Eh:  0F BB 81 34 12                               BTC     DS:[BX+DI+1234h],AX
0E33h:  0F BB 82 34 12                               BTC     SS:[BP+SI+1234h],AX
0E38h:  0F BB 83 34 12                               BTC     SS:[BP+DI+1234h],AX
0E3Dh:  0F BB 86 34 12                               BTC     SS:[BP+1234h],AX
0E42h:  0F BB 84 34 12                               BTC     DS:[SI+1234h],AX
0E47h:  0F BB 85 34 12                               BTC     DS:[DI+1234h],AX
0E4Ch:  2E 0F BB 00                                  BTC     CS:[BX+SI],AX
0E50h:  2E 0F BB 01                                  BTC     CS:[BX+DI],AX
0E54h:  2E 0F BB 02                                  BTC     CS:[BP+SI],AX
0E58h:  2E 0F BB 03                                  BTC     CS:[BP+DI],AX
0E5Ch:  2E 0F BB 46 00                               BTC     CS:[BP],AX
0E61h:  2E 0F BB 04                                  BTC     CS:[SI],AX
0E65h:  2E 0F BB 05                                  BTC     CS:[DI],AX
0E69h:  0F BB 00                                     BTC     DS:[BX+SI],AX
0E6Ch:  0F BB 01                                     BTC     DS:[BX+DI],AX
0E6Fh:  3E 0F BB 02                                  BTC     DS:[BP+SI],AX
0E73h:  3E 0F BB 03                                  BTC     DS:[BP+DI],AX
0E77h:  3E 0F BB 46 00                               BTC     DS:[BP],AX
0E7Ch:  0F BB 04                                     BTC     DS:[SI],AX
0E7Fh:  0F BB 05                                     BTC     DS:[DI],AX
0E82h:  26 0F BB 00                                  BTC     ES:[BX+SI],AX
0E86h:  26 0F BB 01                                  BTC     ES:[BX+DI],AX
0E8Ah:  26 0F BB 02                                  BTC     ES:[BP+SI],AX
0E8Eh:  26 0F BB 03                                  BTC     ES:[BP+DI],AX
0E92h:  26 0F BB 46 00                               BTC     ES:[BP],AX
0E97h:  26 0F BB 04                                  BTC     ES:[SI],AX
0E9Bh:  26 0F BB 05                                  BTC     ES:[DI],AX
0E9Fh:  36 0F BB 00                                  BTC     SS:[BX+SI],AX
0EA3h:  36 0F BB 01                                  BTC     SS:[BX+DI],AX
0EA7h:  0F BB 02                                     BTC     SS:[BP+SI],AX
0EAAh:  0F BB 03                                     BTC     SS:[BP+DI],AX
0EADh:  0F BB 46 00                                  BTC     SS:[BP],AX
0EB1h:  36 0F BB 04                                  BTC     SS:[SI],AX
0EB5h:  36 0F BB 05                                  BTC     SS:[DI],AX
0EB9h:  64 0F BB 00                                  BTC     FS:[BX+SI],AX
0EBDh:  64 0F BB 01                                  BTC     FS:[BX+DI],AX
0EC1h:  64 0F BB 02                                  BTC     FS:[BP+SI],AX
0EC5h:  64 0F BB 03                                  BTC     FS:[BP+DI],AX
0EC9h:  64 0F BB 46 00                               BTC     FS:[BP],AX
0ECEh:  64 0F BB 04                                  BTC     FS:[SI],AX
0ED2h:  64 0F BB 05                                  BTC     FS:[DI],AX
0ED6h:  65 0F BB 00                                  BTC     GS:[BX+SI],AX
0EDAh:  65 0F BB 01                                  BTC     GS:[BX+DI],AX
0EDEh:  65 0F BB 02                                  BTC     GS:[BP+SI],AX
0EE2h:  65 0F BB 03                                  BTC     GS:[BP+DI],AX
0EE6h:  65 0F BB 46 00                               BTC     GS:[BP],AX
0EEBh:  65 0F BB 04                                  BTC     GS:[SI],AX
0EEFh:  65 0F BB 05                                  BTC     GS:[DI],AX
0EF3h:  0F BA F8 01                                  BTC     AX,01h
0EF7h:  0F BA F8 FF                                  BTC     AX,0FFh
0EFBh:  0F BB C8                                     BTC     AX,CX
0EFEh:  0F BB C9                                     BTC     CX,CX
0F01h:  0F BB CA                                     BTC     DX,CX
0F04h:  0F BB CB                                     BTC     BX,CX
0F07h:  0F BB CC                                     BTC     SP,CX
0F0Ah:  0F BB CD                                     BTC     BP,CX
0F0Dh:  0F BB CE                                     BTC     SI,CX
0F10h:  0F BB CF                                     BTC     DI,CX
0F13h:  0F BB 88 34 12                               BTC     DS:[BX+SI+1234h],CX
0F18h:  0F BB 89 34 12                               BTC     DS:[BX+DI+1234h],CX
0F1Dh:  0F BB 8A 34 12                               BTC     SS:[BP+SI+1234h],CX
0F22h:  0F BB 8B 34 12                               BTC     SS:[BP+DI+1234h],CX
0F27h:  0F BB 8E 34 12                               BTC     SS:[BP+1234h],CX
0F2Ch:  0F BB 8C 34 12                               BTC     DS:[SI+1234h],CX
0F31h:  0F BB 8D 34 12                               BTC     DS:[DI+1234h],CX
0F36h:  2E 0F BB 08                                  BTC     CS:[BX+SI],CX
0F3Ah:  2E 0F BB 09                                  BTC     CS:[BX+DI],CX
0F3Eh:  2E 0F BB 0A                                  BTC     CS:[BP+SI],CX
0F42h:  2E 0F BB 0B                                  BTC     CS:[BP+DI],CX
0F46h:  2E 0F BB 4E 00                               BTC     CS:[BP],CX
0F4Bh:  2E 0F BB 0C                                  BTC     CS:[SI],CX
0F4Fh:  2E 0F BB 0D                                  BTC     CS:[DI],CX
0F53h:  0F BB 08                                     BTC     DS:[BX+SI],CX
0F56h:  0F BB 09                                     BTC     DS:[BX+DI],CX
0F59h:  3E 0F BB 0A                                  BTC     DS:[BP+SI],CX
0F5Dh:  3E 0F BB 0B                                  BTC     DS:[BP+DI],CX
0F61h:  3E 0F BB 4E 00                               BTC     DS:[BP],CX
0F66h:  0F BB 0C                                     BTC     DS:[SI],CX
0F69h:  0F BB 0D                                     BTC     DS:[DI],CX
0F6Ch:  26 0F BB 08                                  BTC     ES:[BX+SI],CX
0F70h:  26 0F BB 09                                  BTC     ES:[BX+DI],CX
0F74h:  26 0F BB 0A                                  BTC     ES:[BP+SI],CX
0F78h:  26 0F BB 0B                                  BTC     ES:[BP+DI],CX
0F7Ch:  26 0F BB 4E 00                               BTC     ES:[BP],CX
0F81h:  26 0F BB 0C                                  BTC     ES:[SI],CX
0F85h:  26 0F BB 0D                                  BTC     ES:[DI],CX
0F89h:  36 0F BB 08                                  BTC     SS:[BX+SI],CX
0F8Dh:  36 0F BB 09                                  BTC     SS:[BX+DI],CX
0F91h:  0F BB 0A                                     BTC     SS:[BP+SI],CX
0F94h:  0F BB 0B                                     BTC     SS:[BP+DI],CX
0F97h:  0F BB 4E 00                                  BTC     SS:[BP],CX
0F9Bh:  36 0F BB 0C                                  BTC     SS:[SI],CX
0F9Fh:  36 0F BB 0D                                  BTC     SS:[DI],CX
0FA3h:  64 0F BB 08                                  BTC     FS:[BX+SI],CX
0FA7h:  64 0F BB 09                                  BTC     FS:[BX+DI],CX
0FABh:  64 0F BB 0A                                  BTC     FS:[BP+SI],CX
0FAFh:  64 0F BB 0B                                  BTC     FS:[BP+DI],CX
0FB3h:  64 0F BB 4E 00                               BTC     FS:[BP],CX
0FB8h:  64 0F BB 0C                                  BTC     FS:[SI],CX
0FBCh:  64 0F BB 0D                                  BTC     FS:[DI],CX
0FC0h:  65 0F BB 08                                  BTC     GS:[BX+SI],CX
0FC4h:  65 0F BB 09                                  BTC     GS:[BX+DI],CX
0FC8h:  65 0F BB 0A                                  BTC     GS:[BP+SI],CX
0FCCh:  65 0F BB 0B                                  BTC     GS:[BP+DI],CX
0FD0h:  65 0F BB 4E 00                               BTC     GS:[BP],CX
0FD5h:  65 0F BB 0C                                  BTC     GS:[SI],CX
0FD9h:  65 0F BB 0D                                  BTC     GS:[DI],CX
0FDDh:  0F BA F9 01                                  BTC     CX,01h
0FE1h:  0F BA F9 FF                                  BTC     CX,0FFh
0FE5h:  0F BB D0                                     BTC     AX,DX
0FE8h:  0F BB D1                                     BTC     CX,DX
0FEBh:  0F BB D2                                     BTC     DX,DX
0FEEh:  0F BB D3                                     BTC     BX,DX
0FF1h:  0F BB D4                                     BTC     SP,DX
0FF4h:  0F BB D5                                     BTC     BP,DX
0FF7h:  0F BB D6                                     BTC     SI,DX
0FFAh:  0F BB D7                                     BTC     DI,DX
0FFDh:  0F BB 90 34 12                               BTC     DS:[BX+SI+1234h],DX
1002h:  0F BB 91 34 12                               BTC     DS:[BX+DI+1234h],DX
1007h:  0F BB 92 34 12                               BTC     SS:[BP+SI+1234h],DX
100Ch:  0F BB 93 34 12                               BTC     SS:[BP+DI+1234h],DX
1011h:  0F BB 96 34 12                               BTC     SS:[BP+1234h],DX
1016h:  0F BB 94 34 12                               BTC     DS:[SI+1234h],DX
101Bh:  0F BB 95 34 12                               BTC     DS:[DI+1234h],DX
1020h:  2E 0F BB 10                                  BTC     CS:[BX+SI],DX
1024h:  2E 0F BB 11                                  BTC     CS:[BX+DI],DX
1028h:  2E 0F BB 12                                  BTC     CS:[BP+SI],DX
102Ch:  2E 0F BB 13                                  BTC     CS:[BP+DI],DX
1030h:  2E 0F BB 56 00                               BTC     CS:[BP],DX
1035h:  2E 0F BB 14                                  BTC     CS:[SI],DX
1039h:  2E 0F BB 15                                  BTC     CS:[DI],DX
103Dh:  0F BB 10                                     BTC     DS:[BX+SI],DX
1040h:  0F BB 11                                     BTC     DS:[BX+DI],DX
1043h:  3E 0F BB 12                                  BTC     DS:[BP+SI],DX
1047h:  3E 0F BB 13                                  BTC     DS:[BP+DI],DX
104Bh:  3E 0F BB 56 00                               BTC     DS:[BP],DX
1050h:  0F BB 14                                     BTC     DS:[SI],DX
1053h:  0F BB 15                                     BTC     DS:[DI],DX
1056h:  26 0F BB 10                                  BTC     ES:[BX+SI],DX
105Ah:  26 0F BB 11                                  BTC     ES:[BX+DI],DX
105Eh:  26 0F BB 12                                  BTC     ES:[BP+SI],DX
1062h:  26 0F BB 13                                  BTC     ES:[BP+DI],DX
1066h:  26 0F BB 56 00                               BTC     ES:[BP],DX
106Bh:  26 0F BB 14                                  BTC     ES:[SI],DX
106Fh:  26 0F BB 15                                  BTC     ES:[DI],DX
1073h:  36 0F BB 10                                  BTC     SS:[BX+SI],DX
1077h:  36 0F BB 11                                  BTC     SS:[BX+DI],DX
107Bh:  0F BB 12                                     BTC     SS:[BP+SI],DX
107Eh:  0F BB 13                                     BTC     SS:[BP+DI],DX
1081h:  0F BB 56 00                                  BTC     SS:[BP],DX
1085h:  36 0F BB 14                                  BTC     SS:[SI],DX
1089h:  36 0F BB 15                                  BTC     SS:[DI],DX
108Dh:  64 0F BB 10                                  BTC     FS:[BX+SI],DX
1091h:  64 0F BB 11                                  BTC     FS:[BX+DI],DX
1095h:  64 0F BB 12                                  BTC     FS:[BP+SI],DX
1099h:  64 0F BB 13                                  BTC     FS:[BP+DI],DX
109Dh:  64 0F BB 56 00                               BTC     FS:[BP],DX
10A2h:  64 0F BB 14                                  BTC     FS:[SI],DX
10A6h:  64 0F BB 15                                  BTC     FS:[DI],DX
10AAh:  65 0F BB 10                                  BTC     GS:[BX+SI],DX
10AEh:  65 0F BB 11                                  BTC     GS:[BX+DI],DX
10B2h:  65 0F BB 12                                  BTC     GS:[BP+SI],DX
10B6h:  65 0F BB 13                                  BTC     GS:[BP+DI],DX
10BAh:  65 0F BB 56 00                               BTC     GS:[BP],DX
10BFh:  65 0F BB 14                                  BTC     GS:[SI],DX
10C3h:  65 0F BB 15                                  BTC     GS:[DI],DX
10C7h:  0F BA FA 01                                  BTC     DX,01h
10CBh:  0F BA FA FF                                  BTC     DX,0FFh
10CFh:  0F BB D8                                     BTC     AX,BX
10D2h:  0F BB D9                                     BTC     CX,BX
10D5h:  0F BB DA                                     BTC     DX,BX
10D8h:  0F BB DB                                     BTC     BX,BX
10DBh:  0F BB DC                                     BTC     SP,BX
10DEh:  0F BB DD                                     BTC     BP,BX
10E1h:  0F BB DE                                     BTC     SI,BX
10E4h:  0F BB DF                                     BTC     DI,BX
10E7h:  0F BB 98 34 12                               BTC     DS:[BX+SI+1234h],BX
10ECh:  0F BB 99 34 12                               BTC     DS:[BX+DI+1234h],BX
10F1h:  0F BB 9A 34 12                               BTC     SS:[BP+SI+1234h],BX
10F6h:  0F BB 9B 34 12                               BTC     SS:[BP+DI+1234h],BX
10FBh:  0F BB 9E 34 12                               BTC     SS:[BP+1234h],BX
1100h:  0F BB 9C 34 12                               BTC     DS:[SI+1234h],BX
1105h:  0F BB 9D 34 12                               BTC     DS:[DI+1234h],BX
110Ah:  2E 0F BB 18                                  BTC     CS:[BX+SI],BX
110Eh:  2E 0F BB 19                                  BTC     CS:[BX+DI],BX
1112h:  2E 0F BB 1A                                  BTC     CS:[BP+SI],BX
1116h:  2E 0F BB 1B                                  BTC     CS:[BP+DI],BX
111Ah:  2E 0F BB 5E 00                               BTC     CS:[BP],BX
111Fh:  2E 0F BB 1C                                  BTC     CS:[SI],BX
1123h:  2E 0F BB 1D                                  BTC     CS:[DI],BX
1127h:  0F BB 18                                     BTC     DS:[BX+SI],BX
112Ah:  0F BB 19                                     BTC     DS:[BX+DI],BX
112Dh:  3E 0F BB 1A                                  BTC     DS:[BP+SI],BX
1131h:  3E 0F BB 1B                                  BTC     DS:[BP+DI],BX
1135h:  3E 0F BB 5E 00                               BTC     DS:[BP],BX
113Ah:  0F BB 1C                                     BTC     DS:[SI],BX
113Dh:  0F BB 1D                                     BTC     DS:[DI],BX
1140h:  26 0F BB 18                                  BTC     ES:[BX+SI],BX
1144h:  26 0F BB 19                                  BTC     ES:[BX+DI],BX
1148h:  26 0F BB 1A                                  BTC     ES:[BP+SI],BX
114Ch:  26 0F BB 1B                                  BTC     ES:[BP+DI],BX
1150h:  26 0F BB 5E 00                               BTC     ES:[BP],BX
1155h:  26 0F BB 1C                                  BTC     ES:[SI],BX
1159h:  26 0F BB 1D                                  BTC     ES:[DI],BX
115Dh:  36 0F BB 18                                  BTC     SS:[BX+SI],BX
1161h:  36 0F BB 19                                  BTC     SS:[BX+DI],BX
1165h:  0F BB 1A                                     BTC     SS:[BP+SI],BX
1168h:  0F BB 1B                                     BTC     SS:[BP+DI],BX
116Bh:  0F BB 5E 00                                  BTC     SS:[BP],BX
116Fh:  36 0F BB 1C                                  BTC     SS:[SI],BX
1173h:  36 0F BB 1D                                  BTC     SS:[DI],BX
1177h:  64 0F BB 18                                  BTC     FS:[BX+SI],BX
117Bh:  64 0F BB 19                                  BTC     FS:[BX+DI],BX
117Fh:  64 0F BB 1A                                  BTC     FS:[BP+SI],BX
1183h:  64 0F BB 1B                                  BTC     FS:[BP+DI],BX
1187h:  64 0F BB 5E 00                               BTC     FS:[BP],BX
118Ch:  64 0F BB 1C                                  BTC     FS:[SI],BX
1190h:  64 0F BB 1D                                  BTC     FS:[DI],BX
1194h:  65 0F BB 18                                  BTC     GS:[BX+SI],BX
1198h:  65 0F BB 19                                  BTC     GS:[BX+DI],BX
119Ch:  65 0F BB 1A                                  BTC     GS:[BP+SI],BX
11A0h:  65 0F BB 1B                                  BTC     GS:[BP+DI],BX
11A4h:  65 0F BB 5E 00                               BTC     GS:[BP],BX
11A9h:  65 0F BB 1C                                  BTC     GS:[SI],BX
11ADh:  65 0F BB 1D                                  BTC     GS:[DI],BX
11B1h:  0F BA FB 01                                  BTC     BX,01h
11B5h:  0F BA FB FF                                  BTC     BX,0FFh
11B9h:  0F BB E0                                     BTC     AX,SP
11BCh:  0F BB E1                                     BTC     CX,SP
11BFh:  0F BB E2                                     BTC     DX,SP
11C2h:  0F BB E3                                     BTC     BX,SP
11C5h:  0F BB E4                                     BTC     SP,SP
11C8h:  0F BB E5                                     BTC     BP,SP
11CBh:  0F BB E6                                     BTC     SI,SP
11CEh:  0F BB E7                                     BTC     DI,SP
11D1h:  0F BB A0 34 12                               BTC     DS:[BX+SI+1234h],SP
11D6h:  0F BB A1 34 12                               BTC     DS:[BX+DI+1234h],SP
11DBh:  0F BB A2 34 12                               BTC     SS:[BP+SI+1234h],SP
11E0h:  0F BB A3 34 12                               BTC     SS:[BP+DI+1234h],SP
11E5h:  0F BB A6 34 12                               BTC     SS:[BP+1234h],SP
11EAh:  0F BB A4 34 12                               BTC     DS:[SI+1234h],SP
11EFh:  0F BB A5 34 12                               BTC     DS:[DI+1234h],SP
11F4h:  2E 0F BB 20                                  BTC     CS:[BX+SI],SP
11F8h:  2E 0F BB 21                                  BTC     CS:[BX+DI],SP
11FCh:  2E 0F BB 22                                  BTC     CS:[BP+SI],SP
1200h:  2E 0F BB 23                                  BTC     CS:[BP+DI],SP
1204h:  2E 0F BB 66 00                               BTC     CS:[BP],SP
1209h:  2E 0F BB 24                                  BTC     CS:[SI],SP
120Dh:  2E 0F BB 25                                  BTC     CS:[DI],SP
1211h:  0F BB 20                                     BTC     DS:[BX+SI],SP
1214h:  0F BB 21                                     BTC     DS:[BX+DI],SP
1217h:  3E 0F BB 22                                  BTC     DS:[BP+SI],SP
121Bh:  3E 0F BB 23                                  BTC     DS:[BP+DI],SP
121Fh:  3E 0F BB 66 00                               BTC     DS:[BP],SP
1224h:  0F BB 24                                     BTC     DS:[SI],SP
1227h:  0F BB 25                                     BTC     DS:[DI],SP
122Ah:  26 0F BB 20                                  BTC     ES:[BX+SI],SP
122Eh:  26 0F BB 21                                  BTC     ES:[BX+DI],SP
1232h:  26 0F BB 22                                  BTC     ES:[BP+SI],SP
1236h:  26 0F BB 23                                  BTC     ES:[BP+DI],SP
123Ah:  26 0F BB 66 00                               BTC     ES:[BP],SP
123Fh:  26 0F BB 24                                  BTC     ES:[SI],SP
1243h:  26 0F BB 25                                  BTC     ES:[DI],SP
1247h:  36 0F BB 20                                  BTC     SS:[BX+SI],SP
124Bh:  36 0F BB 21                                  BTC     SS:[BX+DI],SP
124Fh:  0F BB 22                                     BTC     SS:[BP+SI],SP
1252h:  0F BB 23                                     BTC     SS:[BP+DI],SP
1255h:  0F BB 66 00                                  BTC     SS:[BP],SP
1259h:  36 0F BB 24                                  BTC     SS:[SI],SP
125Dh:  36 0F BB 25                                  BTC     SS:[DI],SP
1261h:  64 0F BB 20                                  BTC     FS:[BX+SI],SP
1265h:  64 0F BB 21                                  BTC     FS:[BX+DI],SP
1269h:  64 0F BB 22                                  BTC     FS:[BP+SI],SP
126Dh:  64 0F BB 23                                  BTC     FS:[BP+DI],SP
1271h:  64 0F BB 66 00                               BTC     FS:[BP],SP
1276h:  64 0F BB 24                                  BTC     FS:[SI],SP
127Ah:  64 0F BB 25                                  BTC     FS:[DI],SP
127Eh:  65 0F BB 20                                  BTC     GS:[BX+SI],SP
1282h:  65 0F BB 21                                  BTC     GS:[BX+DI],SP
1286h:  65 0F BB 22                                  BTC     GS:[BP+SI],SP
128Ah:  65 0F BB 23                                  BTC     GS:[BP+DI],SP
128Eh:  65 0F BB 66 00                               BTC     GS:[BP],SP
1293h:  65 0F BB 24                                  BTC     GS:[SI],SP
1297h:  65 0F BB 25                                  BTC     GS:[DI],SP
129Bh:  0F BA FC 01                                  BTC     SP,01h
129Fh:  0F BA FC FF                                  BTC     SP,0FFh
12A3h:  0F BB E8                                     BTC     AX,BP
12A6h:  0F BB E9                                     BTC     CX,BP
12A9h:  0F BB EA                                     BTC     DX,BP
12ACh:  0F BB EB                                     BTC     BX,BP
12AFh:  0F BB EC                                     BTC     SP,BP
12B2h:  0F BB ED                                     BTC     BP,BP
12B5h:  0F BB EE                                     BTC     SI,BP
12B8h:  0F BB EF                                     BTC     DI,BP
12BBh:  0F BB A8 34 12                               BTC     DS:[BX+SI+1234h],BP
12C0h:  0F BB A9 34 12                               BTC     DS:[BX+DI+1234h],BP
12C5h:  0F BB AA 34 12                               BTC     SS:[BP+SI+1234h],BP
12CAh:  0F BB AB 34 12                               BTC     SS:[BP+DI+1234h],BP
12CFh:  0F BB AE 34 12                               BTC     SS:[BP+1234h],BP
12D4h:  0F BB AC 34 12                               BTC     DS:[SI+1234h],BP
12D9h:  0F BB AD 34 12                               BTC     DS:[DI+1234h],BP
12DEh:  2E 0F BB 28                                  BTC     CS:[BX+SI],BP
12E2h:  2E 0F BB 29                                  BTC     CS:[BX+DI],BP
12E6h:  2E 0F BB 2A                                  BTC     CS:[BP+SI],BP
12EAh:  2E 0F BB 2B                                  BTC     CS:[BP+DI],BP
12EEh:  2E 0F BB 6E 00                               BTC     CS:[BP],BP
12F3h:  2E 0F BB 2C                                  BTC     CS:[SI],BP
12F7h:  2E 0F BB 2D                                  BTC     CS:[DI],BP
12FBh:  0F BB 28                                     BTC     DS:[BX+SI],BP
12FEh:  0F BB 29                                     BTC     DS:[BX+DI],BP
1301h:  3E 0F BB 2A                                  BTC     DS:[BP+SI],BP
1305h:  3E 0F BB 2B                                  BTC     DS:[BP+DI],BP
1309h:  3E 0F BB 6E 00                               BTC     DS:[BP],BP
130Eh:  0F BB 2C                                     BTC     DS:[SI],BP
1311h:  0F BB 2D                                     BTC     DS:[DI],BP
1314h:  26 0F BB 28                                  BTC     ES:[BX+SI],BP
1318h:  26 0F BB 29                                  BTC     ES:[BX+DI],BP
131Ch:  26 0F BB 2A                                  BTC     ES:[BP+SI],BP
1320h:  26 0F BB 2B                                  BTC     ES:[BP+DI],BP
1324h:  26 0F BB 6E 00                               BTC     ES:[BP],BP
1329h:  26 0F BB 2C                                  BTC     ES:[SI],BP
132Dh:  26 0F BB 2D                                  BTC     ES:[DI],BP
1331h:  36 0F BB 28                                  BTC     SS:[BX+SI],BP
1335h:  36 0F BB 29                                  BTC     SS:[BX+DI],BP
1339h:  0F BB 2A                                     BTC     SS:[BP+SI],BP
133Ch:  0F BB 2B                                     BTC     SS:[BP+DI],BP
133Fh:  0F BB 6E 00                                  BTC     SS:[BP],BP
1343h:  36 0F BB 2C                                  BTC     SS:[SI],BP
1347h:  36 0F BB 2D                                  BTC     SS:[DI],BP
134Bh:  64 0F BB 28                                  BTC     FS:[BX+SI],BP
134Fh:  64 0F BB 29                                  BTC     FS:[BX+DI],BP
1353h:  64 0F BB 2A                                  BTC     FS:[BP+SI],BP
1357h:  64 0F BB 2B                                  BTC     FS:[BP+DI],BP
135Bh:  64 0F BB 6E 00                               BTC     FS:[BP],BP
1360h:  64 0F BB 2C                                  BTC     FS:[SI],BP
1364h:  64 0F BB 2D                                  BTC     FS:[DI],BP
1368h:  65 0F BB 28                                  BTC     GS:[BX+SI],BP
136Ch:  65 0F BB 29                                  BTC     GS:[BX+DI],BP
1370h:  65 0F BB 2A                                  BTC     GS:[BP+SI],BP
1374h:  65 0F BB 2B                                  BTC     GS:[BP+DI],BP
1378h:  65 0F BB 6E 00                               BTC     GS:[BP],BP
137Dh:  65 0F BB 2C                                  BTC     GS:[SI],BP
1381h:  65 0F BB 2D                                  BTC     GS:[DI],BP
1385h:  0F BA FD 01                                  BTC     BP,01h
1389h:  0F BA FD FF                                  BTC     BP,0FFh
138Dh:  0F BB F0                                     BTC     AX,SI
1390h:  0F BB F1                                     BTC     CX,SI
1393h:  0F BB F2                                     BTC     DX,SI
1396h:  0F BB F3                                     BTC     BX,SI
1399h:  0F BB F4                                     BTC     SP,SI
139Ch:  0F BB F5                                     BTC     BP,SI
139Fh:  0F BB F6                                     BTC     SI,SI
13A2h:  0F BB F7                                     BTC     DI,SI
13A5h:  0F BB B0 34 12                               BTC     DS:[BX+SI+1234h],SI
13AAh:  0F BB B1 34 12                               BTC     DS:[BX+DI+1234h],SI
13AFh:  0F BB B2 34 12                               BTC     SS:[BP+SI+1234h],SI
13B4h:  0F BB B3 34 12                               BTC     SS:[BP+DI+1234h],SI
13B9h:  0F BB B6 34 12                               BTC     SS:[BP+1234h],SI
13BEh:  0F BB B4 34 12                               BTC     DS:[SI+1234h],SI
13C3h:  0F BB B5 34 12                               BTC     DS:[DI+1234h],SI
13C8h:  2E 0F BB 30                                  BTC     CS:[BX+SI],SI
13CCh:  2E 0F BB 31                                  BTC     CS:[BX+DI],SI
13D0h:  2E 0F BB 32                                  BTC     CS:[BP+SI],SI
13D4h:  2E 0F BB 33                                  BTC     CS:[BP+DI],SI
13D8h:  2E 0F BB 76 00                               BTC     CS:[BP],SI
13DDh:  2E 0F BB 34                                  BTC     CS:[SI],SI
13E1h:  2E 0F BB 35                                  BTC     CS:[DI],SI
13E5h:  0F BB 30                                     BTC     DS:[BX+SI],SI
13E8h:  0F BB 31                                     BTC     DS:[BX+DI],SI
13EBh:  3E 0F BB 32                                  BTC     DS:[BP+SI],SI
13EFh:  3E 0F BB 33                                  BTC     DS:[BP+DI],SI
13F3h:  3E 0F BB 76 00                               BTC     DS:[BP],SI
13F8h:  0F BB 34                                     BTC     DS:[SI],SI
13FBh:  0F BB 35                                     BTC     DS:[DI],SI
13FEh:  26 0F BB 30                                  BTC     ES:[BX+SI],SI
1402h:  26 0F BB 31                                  BTC     ES:[BX+DI],SI
1406h:  26 0F BB 32                                  BTC     ES:[BP+SI],SI
140Ah:  26 0F BB 33                                  BTC     ES:[BP+DI],SI
140Eh:  26 0F BB 76 00                               BTC     ES:[BP],SI
1413h:  26 0F BB 34                                  BTC     ES:[SI],SI
1417h:  26 0F BB 35                                  BTC     ES:[DI],SI
141Bh:  36 0F BB 30                                  BTC     SS:[BX+SI],SI
141Fh:  36 0F BB 31                                  BTC     SS:[BX+DI],SI
1423h:  0F BB 32                                     BTC     SS:[BP+SI],SI
1426h:  0F BB 33                                     BTC     SS:[BP+DI],SI
1429h:  0F BB 76 00                                  BTC     SS:[BP],SI
142Dh:  36 0F BB 34                                  BTC     SS:[SI],SI
1431h:  36 0F BB 35                                  BTC     SS:[DI],SI
1435h:  64 0F BB 30                                  BTC     FS:[BX+SI],SI
1439h:  64 0F BB 31                                  BTC     FS:[BX+DI],SI
143Dh:  64 0F BB 32                                  BTC     FS:[BP+SI],SI
1441h:  64 0F BB 33                                  BTC     FS:[BP+DI],SI
1445h:  64 0F BB 76 00                               BTC     FS:[BP],SI
144Ah:  64 0F BB 34                                  BTC     FS:[SI],SI
144Eh:  64 0F BB 35                                  BTC     FS:[DI],SI
1452h:  65 0F BB 30                                  BTC     GS:[BX+SI],SI
1456h:  65 0F BB 31                                  BTC     GS:[BX+DI],SI
145Ah:  65 0F BB 32                                  BTC     GS:[BP+SI],SI
145Eh:  65 0F BB 33                                  BTC     GS:[BP+DI],SI
1462h:  65 0F BB 76 00                               BTC     GS:[BP],SI
1467h:  65 0F BB 34                                  BTC     GS:[SI],SI
146Bh:  65 0F BB 35                                  BTC     GS:[DI],SI
146Fh:  0F BA FE 01                                  BTC     SI,01h
1473h:  0F BA FE FF                                  BTC     SI,0FFh
1477h:  0F BB F8                                     BTC     AX,DI
147Ah:  0F BB F9                                     BTC     CX,DI
147Dh:  0F BB FA                                     BTC     DX,DI
1480h:  0F BB FB                                     BTC     BX,DI
1483h:  0F BB FC                                     BTC     SP,DI
1486h:  0F BB FD                                     BTC     BP,DI
1489h:  0F BB FE                                     BTC     SI,DI
148Ch:  0F BB FF                                     BTC     DI,DI
148Fh:  0F BB B8 34 12                               BTC     DS:[BX+SI+1234h],DI
1494h:  0F BB B9 34 12                               BTC     DS:[BX+DI+1234h],DI
1499h:  0F BB BA 34 12                               BTC     SS:[BP+SI+1234h],DI
149Eh:  0F BB BB 34 12                               BTC     SS:[BP+DI+1234h],DI
14A3h:  0F BB BE 34 12                               BTC     SS:[BP+1234h],DI
14A8h:  0F BB BC 34 12                               BTC     DS:[SI+1234h],DI
14ADh:  0F BB BD 34 12                               BTC     DS:[DI+1234h],DI
14B2h:  2E 0F BB 38                                  BTC     CS:[BX+SI],DI
14B6h:  2E 0F BB 39                                  BTC     CS:[BX+DI],DI
14BAh:  2E 0F BB 3A                                  BTC     CS:[BP+SI],DI
14BEh:  2E 0F BB 3B                                  BTC     CS:[BP+DI],DI
14C2h:  2E 0F BB 7E 00                               BTC     CS:[BP],DI
14C7h:  2E 0F BB 3C                                  BTC     CS:[SI],DI
14CBh:  2E 0F BB 3D                                  BTC     CS:[DI],DI
14CFh:  0F BB 38                                     BTC     DS:[BX+SI],DI
14D2h:  0F BB 39                                     BTC     DS:[BX+DI],DI
14D5h:  3E 0F BB 3A                                  BTC     DS:[BP+SI],DI
14D9h:  3E 0F BB 3B                                  BTC     DS:[BP+DI],DI
14DDh:  3E 0F BB 7E 00                               BTC     DS:[BP],DI
14E2h:  0F BB 3C                                     BTC     DS:[SI],DI
14E5h:  0F BB 3D                                     BTC     DS:[DI],DI
14E8h:  26 0F BB 38                                  BTC     ES:[BX+SI],DI
14ECh:  26 0F BB 39                                  BTC     ES:[BX+DI],DI
14F0h:  26 0F BB 3A                                  BTC     ES:[BP+SI],DI
14F4h:  26 0F BB 3B                                  BTC     ES:[BP+DI],DI
14F8h:  26 0F BB 7E 00                               BTC     ES:[BP],DI
14FDh:  26 0F BB 3C                                  BTC     ES:[SI],DI
1501h:  26 0F BB 3D                                  BTC     ES:[DI],DI
1505h:  36 0F BB 38                                  BTC     SS:[BX+SI],DI
1509h:  36 0F BB 39                                  BTC     SS:[BX+DI],DI
150Dh:  0F BB 3A                                     BTC     SS:[BP+SI],DI
1510h:  0F BB 3B                                     BTC     SS:[BP+DI],DI
1513h:  0F BB 7E 00                                  BTC     SS:[BP],DI
1517h:  36 0F BB 3C                                  BTC     SS:[SI],DI
151Bh:  36 0F BB 3D                                  BTC     SS:[DI],DI
151Fh:  64 0F BB 38                                  BTC     FS:[BX+SI],DI
1523h:  64 0F BB 39                                  BTC     FS:[BX+DI],DI
1527h:  64 0F BB 3A                                  BTC     FS:[BP+SI],DI
152Bh:  64 0F BB 3B                                  BTC     FS:[BP+DI],DI
152Fh:  64 0F BB 7E 00                               BTC     FS:[BP],DI
1534h:  64 0F BB 3C                                  BTC     FS:[SI],DI
1538h:  64 0F BB 3D                                  BTC     FS:[DI],DI
153Ch:  65 0F BB 38                                  BTC     GS:[BX+SI],DI
1540h:  65 0F BB 39                                  BTC     GS:[BX+DI],DI
1544h:  65 0F BB 3A                                  BTC     GS:[BP+SI],DI
1548h:  65 0F BB 3B                                  BTC     GS:[BP+DI],DI
154Ch:  65 0F BB 7E 00                               BTC     GS:[BP],DI
1551h:  65 0F BB 3C                                  BTC     GS:[SI],DI
1555h:  65 0F BB 3D                                  BTC     GS:[DI],DI
1559h:  0F BA FF 01                                  BTC     DI,01h
155Dh:  0F BA FF FF                                  BTC     DI,0FFh
1561h:  66 0F BA F8 FF                               BTC     EAX,0FFh
1566h:  66 0F BA F9 FF                               BTC     ECX,0FFh
156Bh:  66 0F BA FA FF                               BTC     EDX,0FFh
1570h:  66 0F BA FB FF                               BTC     EBX,0FFh
1575h:  66 0F BA FC FF                               BTC     ESP,0FFh
157Ah:  66 0F BA FD FF                               BTC     EBP,0FFh
157Fh:  66 0F BA FE FF                               BTC     ESI,0FFh
1584h:  66 0F BA FF FF                               BTC     EDI,0FFh
1589h:  0F 80 36 01                                  JO      16C3h
158Dh:  0F 81 6F EB                                  JNO     0100h
1591h:  0F 82 2E 01                                  JB      16C3h
1595h:  0F 83 67 EB                                  JNB     0100h
1599h:  0F 84 26 01                                  JZ      16C3h
159Dh:  0F 85 5F EB                                  JNZ     0100h
15A1h:  0F 86 1E 01                                  JBE     16C3h
15A5h:  0F 87 57 EB                                  JNBE    0100h
15A9h:  0F 88 16 01                                  JS      16C3h
15ADh:  0F 89 4F EB                                  JNS     0100h
15B1h:  0F 8A 0E 01                                  JP      16C3h
15B5h:  0F 8B 47 EB                                  JNP     0100h
15B9h:  0F 8C 06 01                                  JL      16C3h
15BDh:  0F 8D 3F EB                                  JNL     0100h
15C1h:  0F 8E FE 00                                  JLE     16C3h
15C5h:  0F 8F 37 EB                                  JNLE    0100h
15C9h:  70 FE                                        JO      15C9h
15CBh:  71 21                                        JNO     15EEh
15CDh:  72 FA                                        JB      15C9h
15CFh:  73 1D                                        JNB     15EEh
15D1h:  74 F6                                        JZ      15C9h
15D3h:  75 19                                        JNZ     15EEh
15D5h:  76 F2                                        JBE     15C9h
15D7h:  77 15                                        JNBE    15EEh
15D9h:  78 EE                                        JS      15C9h
15DBh:  79 11                                        JNS     15EEh
15DDh:  7A EA                                        JP      15C9h
15DFh:  7B 0D                                        JNP     15EEh
15E1h:  7C E6                                        JL      15C9h
15E3h:  7D 09                                        JNL     15EEh
15E5h:  7E E2                                        JLE     15C9h
15E7h:  7F 05                                        JNLE    15EEh
15E9h:  E3 DE                                        JCXZ    15C9h
15EBh:  67 E3 00                                     JECXZ   15EEh
15EEh:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321h],AX
15F8h:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321h],AX
1602h:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321h],AX
160Ch:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321h],AX
1616h:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321h],AX
161Fh:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321h],AX
1628h:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678h],9Ah
1635h:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321h],AX
163Fh:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321h],AX
1649h:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321h],AX
1653h:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321h],AX
165Dh:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321h],AX
1666h:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321h],AX
166Fh:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678h],9Ah
167Ch:  F0 67 0F BB 84 00 21 43 00 00                LOCK BTC     DS:[EAX+EAX+00004321h],AX
1686h:  F0 67 0F BB 84 40 21 43 00 00                LOCK BTC     DS:[EAX+EAX*2+00004321h],AX
1690h:  F0 67 0F BB 84 80 21 43 00 00                LOCK BTC     DS:[EAX+EAX*4+00004321h],AX
169Ah:  F0 67 0F BB 84 C0 21 43 00 00                LOCK BTC     DS:[EAX+EAX*8+00004321h],AX
16A4h:  F0 67 0F BB 86 21 43 00 00                   LOCK BTC     DS:[ESI+00004321h],AX
16ADh:  F0 67 0F BB 87 21 43 00 00                   LOCK BTC     DS:[EDI+00004321h],AX
16B6h:  F0 66 36 67 0F BA BC C3 78 56 34 12 9A       LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678h],9Ah
16C3h:  D5 0A                                        AAD
