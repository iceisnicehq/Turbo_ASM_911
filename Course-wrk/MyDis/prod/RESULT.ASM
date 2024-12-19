_0100H:  BTC     DS:[EAX*4],EAX                                      ; 66 67 0F BB 04 85 00 00 00 00
_010AH:  BTC     DS:[EBX*4],AX                                       ; 67 0F BB 04 9D 00 00 00 00
_0113H:  BTC     SS:[EBP*4],AX                                       ; 67 0F BB 04 AD 00 00 00 00
_011CH:  BTC     SS:[EBP*4+00000001H],EBP                            ; 66 67 0F BB 2C AD 01 00 00 00
_0126H:  BTC     SS:[EBP*4+00000100H],EBP                            ; 66 67 0F BB 2C AD 00 01 00 00
_0130H:  BTC     word ptr DS:[EAX+EBP],0FFH                          ; 67 0F BA 3C 28 FF
_0136H:  BTC     dword ptr DS:[EAX+EBP*8],0FFH                       ; 66 67 0F BA 3C E8 FF
_013DH:  BTC     word ptr SS:[EBP+EAX],0FFH                          ; 67 0F BA 7C 05 00 FF
_0144H:  BTC     dword ptr SS:[EBP+EAX*8],0FFH                       ; 66 67 0F BA 7C C5 00 FF
_014CH:  BTC     word ptr SS:[ESP+EAX],0FFH                          ; 67 0F BA 3C 04 FF
_0152H:  BTC     dword ptr SS:[ESP+EAX*8],0FFH                       ; 66 67 0F BA 3C C4 FF
_0159H:  BTC     word ptr SS:[ESP+EBP],0FFH                          ; 67 0F BA 3C 2C FF
_015FH:  BTC     dword ptr SS:[ESP+EBP*8],0FFH                       ; 66 67 0F BA 3C EC FF
_0166H:  BTC     word ptr SS:[EBP],0FFH                              ; 67 0F BA 7D 00 FF
_016CH:  BTC     dword ptr SS:[ESP],0FFH                             ; 66 67 0F BA 3C 24 FF
_0173H:  BTC     DS:[BX+SI],AX                                       ; 0F BB 00
_0176H:  BTC     DS:[BX+DI],AX                                       ; 0F BB 01
_0179H:  BTC     SS:[BP+SI],AX                                       ; 0F BB 02
_017CH:  BTC     SS:[BP+DI],AX                                       ; 0F BB 03
_017FH:  BTC     SS:[BP],AX                                          ; 0F BB 46 00
_0183H:  BTC     DS:[SI],AX                                          ; 0F BB 04
_0186H:  BTC     DS:[DI],AX                                          ; 0F BB 05
_0189H:  BTC     DS:[BX+0FEDCH],AX                                   ; 0F BB 87 DC FE
_018EH:  LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH       ; F0 66 67 0F BA BC D8 21 43 65 A7 FF
_019AH:  LOCK BTC     word ptr DS:[EAX+EBP*8+87654321H],0FFH         ; F0 67 0F BA BC E8 21 43 65 87 FF
_01A5H:  LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX                  ; F0 66 2E 67 0F BB 84 D8 21 43 65 B7
_01B1H:  LOCK BTC     DS:[EAX+EBP*8+87654321H],AX                    ; F0 3E 67 0F BB 84 E8 21 43 65 87
_01BCH:  BTC     ES:[1234H],AX                                       ; 26 0F BB 06 34 12
_01C2H:  BTC     SS:[12345678H],AX                                   ; 36 67 0F BB 05 78 56 34 12
_01CBH:  BTC     dword ptr FS:[0123H],01H                            ; 66 64 0F BA 3E 23 01 01
_01D3H:  BTC     dword ptr GS:[12345678H],10H                        ; 66 65 67 0F BA 3D 78 56 34 12 10
_01DEH:  BTC     DS:[1234H],AX                                       ; 0F BB 06 34 12
_01E3H:  BTC     DS:[12345678H],AX                                   ; 67 0F BB 05 78 56 34 12
_01EBH:  BTC     dword ptr ES:[0123H],01H                            ; 66 26 0F BA 3E 23 01 01
_01F3H:  BTC     dword ptr SS:[12345678H],10H                        ; 66 36 67 0F BA 3D 78 56 34 12 10
_01FEH:  BTC     ES:[1234H],AX                                       ; 26 0F BB 06 34 12
_0204H:  BTC     CS:[12345678H],AX                                   ; 2E 67 0F BB 05 78 56 34 12
_020DH:  BTC     dword ptr ES:[0123H],01H                            ; 66 26 0F BA 3E 23 01 01
_0215H:  BTC     dword ptr SS:[12345678H],10H                        ; 66 36 67 0F BA 3D 78 56 34 12 10
_0220H:  BTC     word ptr DS:[BX+SI],0A0H                            ; 0F BA 38 A0
_0224H:  BTC     dword ptr DS:[BX+SI],0B0H                           ; 66 0F BA 38 B0
_0229H:  BTC     word ptr DS:[BX+DI],0A0H                            ; 0F BA 39 A0
_022DH:  BTC     dword ptr DS:[BX+DI],0B0H                           ; 66 0F BA 39 B0
_0232H:  BTC     word ptr SS:[BP+SI],0A0H                            ; 0F BA 3A A0
_0236H:  BTC     dword ptr SS:[BP+SI],0B0H                           ; 66 0F BA 3A B0
_023BH:  BTC     word ptr SS:[BP+DI],0A0H                            ; 0F BA 3B A0
_023FH:  BTC     dword ptr SS:[BP+DI],0B0H                           ; 66 0F BA 3B B0
_0244H:  BTC     word ptr SS:[BP],0A0H                               ; 0F BA 7E 00 A0
_0249H:  BTC     dword ptr SS:[BP],0B0H                              ; 66 0F BA 7E 00 B0
_024FH:  BTC     word ptr DS:[DI],0A0H                               ; 0F BA 3D A0
_0253H:  BTC     dword ptr DS:[DI],0B0H                              ; 66 0F BA 3D B0
_0258H:  BTC     word ptr DS:[SI],0A0H                               ; 0F BA 3C A0
_025CH:  BTC     dword ptr DS:[SI],0B0H                              ; 66 0F BA 3C B0
_0261H:  BTC     DS:[EAX+EAX*2+00000100H],AX                         ; 67 0F BB 84 40 00 01 00 00
_026AH:  BTC     DS:[EBX+EBP*4+12345678H],AX                         ; 3E 67 0F BB 84 AB 78 56 34 12
_0274H:  BTC     SS:[EBP+EBP],AX                                     ; 67 0F BB 44 2D 00
_027AH:  BTC     SS:[ESP+EBP],AX                                     ; 67 0F BB 04 2C
_027FH:  BTC     DS:[EDX+EBX*8],AX                                   ; 67 0F BB 04 DA
_0284H:  BTC     DS:[EBX+ECX*2+01H],AX                               ; 67 0F BB 44 4B 01
_028AH:  BTC     DS:[ECX+EDX*4+00000100H],AX                         ; 67 0F BB 84 91 00 01 00 00
_0293H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX                        ; 67 0F BB 84 C0 D0 C0 B0 A0
_029CH:  BTC     SS:[EBP+EBP+10203040H],AX                           ; 67 0F BB 84 2D 40 30 20 10
_02A5H:  LOCK BTC     DS:[BX+SI+1234H],AX                            ; F0 0F BB 80 34 12
_02ABH:  LOCK BTC     DS:[BX+DI+1234H],AX                            ; F0 0F BB 81 34 12
_02B1H:  LOCK BTC     SS:[BP+SI+1234H],AX                            ; F0 0F BB 82 34 12
_02B7H:  LOCK BTC     SS:[BP+DI+1234H],AX                            ; F0 0F BB 83 34 12
_02BDH:  LOCK BTC     SS:[BP+1234H],AX                               ; F0 0F BB 86 34 12
_02C3H:  LOCK BTC     DS:[SI+1234H],AX                               ; F0 0F BB 84 34 12
_02C9H:  LOCK BTC     DS:[DI+1234H],AX                               ; F0 0F BB 85 34 12
_02CFH:  BTC     DS:[EAX+EAX*2+00000100H],CX                         ; 67 0F BB 8C 40 00 01 00 00
_02D8H:  BTC     DS:[EBX+EBP*4+12345678H],CX                         ; 3E 67 0F BB 8C AB 78 56 34 12
_02E2H:  BTC     SS:[EBP+EBP],CX                                     ; 67 0F BB 4C 2D 00
_02E8H:  BTC     SS:[ESP+EBP],CX                                     ; 67 0F BB 0C 2C
_02EDH:  BTC     DS:[EDX+EBX*8],CX                                   ; 67 0F BB 0C DA
_02F2H:  BTC     DS:[EBX+ECX*2+01H],CX                               ; 67 0F BB 4C 4B 01
_02F8H:  BTC     DS:[ECX+EDX*4+00000100H],CX                         ; 67 0F BB 8C 91 00 01 00 00
_0301H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX                        ; 67 0F BB 8C C0 D0 C0 B0 A0
_030AH:  BTC     SS:[EBP+EBP+10203040H],CX                           ; 67 0F BB 8C 2D 40 30 20 10
_0313H:  LOCK BTC     DS:[BX+SI],CX                                  ; F0 0F BB 08
_0317H:  LOCK BTC     DS:[BX+DI],CX                                  ; F0 0F BB 09
_031BH:  LOCK BTC     SS:[BP+SI],CX                                  ; F0 0F BB 0A
_031FH:  LOCK BTC     SS:[BP+DI],CX                                  ; F0 0F BB 0B
_0323H:  LOCK BTC     SS:[BP],CX                                     ; F0 0F BB 4E 00
_0328H:  LOCK BTC     DS:[SI],CX                                     ; F0 0F BB 0C
_032CH:  LOCK BTC     DS:[DI],CX                                     ; F0 0F BB 0D
_0330H:  LOCK BTC     DS:[BX+SI+1234H],CX                            ; F0 0F BB 88 34 12
_0336H:  LOCK BTC     DS:[BX+DI+1234H],CX                            ; F0 0F BB 89 34 12
_033CH:  LOCK BTC     SS:[BP+SI+1234H],CX                            ; F0 0F BB 8A 34 12
_0342H:  LOCK BTC     SS:[BP+DI+1234H],CX                            ; F0 0F BB 8B 34 12
_0348H:  LOCK BTC     SS:[BP+1234H],CX                               ; F0 0F BB 8E 34 12
_034EH:  LOCK BTC     DS:[SI+1234H],CX                               ; F0 0F BB 8C 34 12
_0354H:  LOCK BTC     DS:[DI+1234H],CX                               ; F0 0F BB 8D 34 12
_035AH:  BTC     DS:[EAX+EAX*2+00000100H],DX                         ; 67 0F BB 94 40 00 01 00 00
_0363H:  BTC     DS:[EBX+EBP*4+12345678H],DX                         ; 3E 67 0F BB 94 AB 78 56 34 12
_036DH:  BTC     SS:[EBP+EBP],DX                                     ; 67 0F BB 54 2D 00
_0373H:  BTC     SS:[ESP+EBP],DX                                     ; 67 0F BB 14 2C
_0378H:  BTC     DS:[EDX+EBX*8],DX                                   ; 67 0F BB 14 DA
_037DH:  BTC     DS:[EBX+ECX*2+01H],DX                               ; 67 0F BB 54 4B 01
_0383H:  BTC     DS:[ECX+EDX*4+00000100H],DX                         ; 67 0F BB 94 91 00 01 00 00
_038CH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX                        ; 67 0F BB 94 C0 D0 C0 B0 A0
_0395H:  BTC     SS:[EBP+EBP+10203040H],DX                           ; 67 0F BB 94 2D 40 30 20 10
_039EH:  LOCK BTC     DS:[BX+SI],DX                                  ; F0 0F BB 10
_03A2H:  LOCK BTC     DS:[BX+DI],DX                                  ; F0 0F BB 11
_03A6H:  LOCK BTC     SS:[BP+SI],DX                                  ; F0 0F BB 12
_03AAH:  LOCK BTC     SS:[BP+DI],DX                                  ; F0 0F BB 13
_03AEH:  LOCK BTC     SS:[BP],DX                                     ; F0 0F BB 56 00
_03B3H:  LOCK BTC     DS:[SI],DX                                     ; F0 0F BB 14
_03B7H:  LOCK BTC     DS:[DI],DX                                     ; F0 0F BB 15
_03BBH:  LOCK BTC     DS:[BX+SI+1234H],DX                            ; F0 0F BB 90 34 12
_03C1H:  LOCK BTC     DS:[BX+DI+1234H],DX                            ; F0 0F BB 91 34 12
_03C7H:  LOCK BTC     SS:[BP+SI+1234H],DX                            ; F0 0F BB 92 34 12
_03CDH:  LOCK BTC     SS:[BP+DI+1234H],DX                            ; F0 0F BB 93 34 12
_03D3H:  LOCK BTC     SS:[BP+1234H],DX                               ; F0 0F BB 96 34 12
_03D9H:  LOCK BTC     DS:[SI+1234H],DX                               ; F0 0F BB 94 34 12
_03DFH:  LOCK BTC     DS:[DI+1234H],DX                               ; F0 0F BB 95 34 12
_03E5H:  BTC     DS:[EAX+EAX*2+00000100H],BX                         ; 67 0F BB 9C 40 00 01 00 00
_03EEH:  BTC     DS:[EBX+EBP*4+12345678H],BX                         ; 3E 67 0F BB 9C AB 78 56 34 12
_03F8H:  BTC     SS:[EBP+EBP],BX                                     ; 67 0F BB 5C 2D 00
_03FEH:  BTC     SS:[ESP+EBP],BX                                     ; 67 0F BB 1C 2C
_0403H:  BTC     DS:[EDX+EBX*8],BX                                   ; 67 0F BB 1C DA
_0408H:  BTC     DS:[EBX+ECX*2+01H],BX                               ; 67 0F BB 5C 4B 01
_040EH:  BTC     DS:[ECX+EDX*4+00000100H],BX                         ; 67 0F BB 9C 91 00 01 00 00
_0417H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX                        ; 67 0F BB 9C C0 D0 C0 B0 A0
_0420H:  BTC     SS:[EBP+EBP+10203040H],BX                           ; 67 0F BB 9C 2D 40 30 20 10
_0429H:  LOCK BTC     DS:[BX+SI],BX                                  ; F0 0F BB 18
_042DH:  LOCK BTC     DS:[BX+DI],BX                                  ; F0 0F BB 19
_0431H:  LOCK BTC     SS:[BP+SI],BX                                  ; F0 0F BB 1A
_0435H:  LOCK BTC     SS:[BP+DI],BX                                  ; F0 0F BB 1B
_0439H:  LOCK BTC     SS:[BP],BX                                     ; F0 0F BB 5E 00
_043EH:  LOCK BTC     DS:[SI],BX                                     ; F0 0F BB 1C
_0442H:  LOCK BTC     DS:[DI],BX                                     ; F0 0F BB 1D
_0446H:  LOCK BTC     DS:[BX+SI+1234H],BX                            ; F0 0F BB 98 34 12
_044CH:  LOCK BTC     DS:[BX+DI+1234H],BX                            ; F0 0F BB 99 34 12
_0452H:  LOCK BTC     SS:[BP+SI+1234H],BX                            ; F0 0F BB 9A 34 12
_0458H:  LOCK BTC     SS:[BP+DI+1234H],BX                            ; F0 0F BB 9B 34 12
_045EH:  LOCK BTC     SS:[BP+1234H],BX                               ; F0 0F BB 9E 34 12
_0464H:  LOCK BTC     DS:[SI+1234H],BX                               ; F0 0F BB 9C 34 12
_046AH:  LOCK BTC     DS:[DI+1234H],BX                               ; F0 0F BB 9D 34 12
_0470H:  BTC     DS:[EAX+EAX*2+00000100H],SP                         ; 67 0F BB A4 40 00 01 00 00
_0479H:  BTC     DS:[EBX+EBP*4+12345678H],SP                         ; 3E 67 0F BB A4 AB 78 56 34 12
_0483H:  BTC     SS:[EBP+EBP],SP                                     ; 67 0F BB 64 2D 00
_0489H:  BTC     SS:[ESP+EBP],SP                                     ; 67 0F BB 24 2C
_048EH:  BTC     DS:[EDX+EBX*8],SP                                   ; 67 0F BB 24 DA
_0493H:  BTC     DS:[EBX+ECX*2+01H],SP                               ; 67 0F BB 64 4B 01
_0499H:  BTC     DS:[ECX+EDX*4+00000100H],SP                         ; 67 0F BB A4 91 00 01 00 00
_04A2H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP                        ; 67 0F BB A4 C0 D0 C0 B0 A0
_04ABH:  BTC     SS:[EBP+EBP+10203040H],SP                           ; 67 0F BB A4 2D 40 30 20 10
_04B4H:  LOCK BTC     DS:[BX+SI],SP                                  ; F0 0F BB 20
_04B8H:  LOCK BTC     DS:[BX+DI],SP                                  ; F0 0F BB 21
_04BCH:  LOCK BTC     SS:[BP+SI],SP                                  ; F0 0F BB 22
_04C0H:  LOCK BTC     SS:[BP+DI],SP                                  ; F0 0F BB 23
_04C4H:  LOCK BTC     SS:[BP],SP                                     ; F0 0F BB 66 00
_04C9H:  LOCK BTC     DS:[SI],SP                                     ; F0 0F BB 24
_04CDH:  LOCK BTC     DS:[DI],SP                                     ; F0 0F BB 25
_04D1H:  LOCK BTC     DS:[BX+SI+1234H],SP                            ; F0 0F BB A0 34 12
_04D7H:  LOCK BTC     DS:[BX+DI+1234H],SP                            ; F0 0F BB A1 34 12
_04DDH:  LOCK BTC     SS:[BP+SI+1234H],SP                            ; F0 0F BB A2 34 12
_04E3H:  LOCK BTC     SS:[BP+DI+1234H],SP                            ; F0 0F BB A3 34 12
_04E9H:  LOCK BTC     SS:[BP+1234H],SP                               ; F0 0F BB A6 34 12
_04EFH:  LOCK BTC     DS:[SI+1234H],SP                               ; F0 0F BB A4 34 12
_04F5H:  LOCK BTC     DS:[DI+1234H],SP                               ; F0 0F BB A5 34 12
_04FBH:  BTC     DS:[EAX+EAX*2+00000100H],BP                         ; 67 0F BB AC 40 00 01 00 00
_0504H:  BTC     DS:[EBX+EBP*4+12345678H],BP                         ; 3E 67 0F BB AC AB 78 56 34 12
_050EH:  BTC     SS:[EBP+EBP],BP                                     ; 67 0F BB 6C 2D 00
_0514H:  BTC     SS:[ESP+EBP],BP                                     ; 67 0F BB 2C 2C
_0519H:  BTC     DS:[EDX+EBX*8],BP                                   ; 67 0F BB 2C DA
_051EH:  BTC     DS:[EBX+ECX*2+01H],BP                               ; 67 0F BB 6C 4B 01
_0524H:  BTC     DS:[ECX+EDX*4+00000100H],BP                         ; 67 0F BB AC 91 00 01 00 00
_052DH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP                        ; 67 0F BB AC C0 D0 C0 B0 A0
_0536H:  BTC     SS:[EBP+EBP+10203040H],BP                           ; 67 0F BB AC 2D 40 30 20 10
_053FH:  LOCK BTC     DS:[BX+SI],BP                                  ; F0 0F BB 28
_0543H:  LOCK BTC     DS:[BX+DI],BP                                  ; F0 0F BB 29
_0547H:  LOCK BTC     SS:[BP+SI],BP                                  ; F0 0F BB 2A
_054BH:  LOCK BTC     SS:[BP+DI],BP                                  ; F0 0F BB 2B
_054FH:  LOCK BTC     SS:[BP],BP                                     ; F0 0F BB 6E 00
_0554H:  LOCK BTC     DS:[SI],BP                                     ; F0 0F BB 2C
_0558H:  LOCK BTC     DS:[DI],BP                                     ; F0 0F BB 2D
_055CH:  LOCK BTC     DS:[BX+SI+1234H],BP                            ; F0 0F BB A8 34 12
_0562H:  LOCK BTC     DS:[BX+DI+1234H],BP                            ; F0 0F BB A9 34 12
_0568H:  LOCK BTC     SS:[BP+SI+1234H],BP                            ; F0 0F BB AA 34 12
_056EH:  LOCK BTC     SS:[BP+DI+1234H],BP                            ; F0 0F BB AB 34 12
_0574H:  LOCK BTC     SS:[BP+1234H],BP                               ; F0 0F BB AE 34 12
_057AH:  LOCK BTC     DS:[SI+1234H],BP                               ; F0 0F BB AC 34 12
_0580H:  LOCK BTC     DS:[DI+1234H],BP                               ; F0 0F BB AD 34 12
_0586H:  BTC     DS:[EAX+EAX*2+00000100H],SI                         ; 67 0F BB B4 40 00 01 00 00
_058FH:  BTC     DS:[EBX+EBP*4+12345678H],SI                         ; 3E 67 0F BB B4 AB 78 56 34 12
_0599H:  BTC     SS:[EBP+EBP],SI                                     ; 67 0F BB 74 2D 00
_059FH:  BTC     SS:[ESP+EBP],SI                                     ; 67 0F BB 34 2C
_05A4H:  BTC     DS:[EDX+EBX*8],SI                                   ; 67 0F BB 34 DA
_05A9H:  BTC     DS:[EBX+ECX*2+01H],SI                               ; 67 0F BB 74 4B 01
_05AFH:  BTC     DS:[ECX+EDX*4+00000100H],SI                         ; 67 0F BB B4 91 00 01 00 00
_05B8H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI                        ; 67 0F BB B4 C0 D0 C0 B0 A0
_05C1H:  BTC     SS:[EBP+EBP+10203040H],SI                           ; 67 0F BB B4 2D 40 30 20 10
_05CAH:  LOCK BTC     DS:[BX+SI],SI                                  ; F0 0F BB 30
_05CEH:  LOCK BTC     DS:[BX+DI],SI                                  ; F0 0F BB 31
_05D2H:  LOCK BTC     SS:[BP+SI],SI                                  ; F0 0F BB 32
_05D6H:  LOCK BTC     SS:[BP+DI],SI                                  ; F0 0F BB 33
_05DAH:  LOCK BTC     SS:[BP],SI                                     ; F0 0F BB 76 00
_05DFH:  LOCK BTC     DS:[SI],SI                                     ; F0 0F BB 34
_05E3H:  LOCK BTC     DS:[DI],SI                                     ; F0 0F BB 35
_05E7H:  LOCK BTC     DS:[BX+SI+1234H],SI                            ; F0 0F BB B0 34 12
_05EDH:  LOCK BTC     DS:[BX+DI+1234H],SI                            ; F0 0F BB B1 34 12
_05F3H:  LOCK BTC     SS:[BP+SI+1234H],SI                            ; F0 0F BB B2 34 12
_05F9H:  LOCK BTC     SS:[BP+DI+1234H],SI                            ; F0 0F BB B3 34 12
_05FFH:  LOCK BTC     SS:[BP+1234H],SI                               ; F0 0F BB B6 34 12
_0605H:  LOCK BTC     DS:[SI+1234H],SI                               ; F0 0F BB B4 34 12
_060BH:  LOCK BTC     DS:[DI+1234H],SI                               ; F0 0F BB B5 34 12
_0611H:  BTC     DS:[EAX+EAX*2+00000100H],DI                         ; 67 0F BB BC 40 00 01 00 00
_061AH:  BTC     DS:[EBX+EBP*4+12345678H],DI                         ; 3E 67 0F BB BC AB 78 56 34 12
_0624H:  BTC     SS:[EBP+EBP],DI                                     ; 67 0F BB 7C 2D 00
_062AH:  BTC     SS:[ESP+EBP],DI                                     ; 67 0F BB 3C 2C
_062FH:  BTC     DS:[EDX+EBX*8],DI                                   ; 67 0F BB 3C DA
_0634H:  BTC     DS:[EBX+ECX*2+01H],DI                               ; 67 0F BB 7C 4B 01
_063AH:  BTC     DS:[ECX+EDX*4+00000100H],DI                         ; 67 0F BB BC 91 00 01 00 00
_0643H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI                        ; 67 0F BB BC C0 D0 C0 B0 A0
_064CH:  BTC     SS:[EBP+EBP+10203040H],DI                           ; 67 0F BB BC 2D 40 30 20 10
_0655H:  LOCK BTC     DS:[BX+SI],DI                                  ; F0 0F BB 38
_0659H:  LOCK BTC     DS:[BX+DI],DI                                  ; F0 0F BB 39
_065DH:  LOCK BTC     SS:[BP+SI],DI                                  ; F0 0F BB 3A
_0661H:  LOCK BTC     SS:[BP+DI],DI                                  ; F0 0F BB 3B
_0665H:  LOCK BTC     SS:[BP],DI                                     ; F0 0F BB 7E 00
_066AH:  LOCK BTC     DS:[SI],DI                                     ; F0 0F BB 3C
_066EH:  LOCK BTC     DS:[DI],DI                                     ; F0 0F BB 3D
_0672H:  LOCK BTC     DS:[BX+SI+1234H],DI                            ; F0 0F BB B8 34 12
_0678H:  LOCK BTC     DS:[BX+DI+1234H],DI                            ; F0 0F BB B9 34 12
_067EH:  LOCK BTC     SS:[BP+SI+1234H],DI                            ; F0 0F BB BA 34 12
_0684H:  LOCK BTC     SS:[BP+DI+1234H],DI                            ; F0 0F BB BB 34 12
_068AH:  LOCK BTC     SS:[BP+1234H],DI                               ; F0 0F BB BE 34 12
_0690H:  LOCK BTC     DS:[SI+1234H],DI                               ; F0 0F BB BC 34 12
_0696H:  LOCK BTC     DS:[DI+1234H],DI                               ; F0 0F BB BD 34 12
_069CH:  BTC     EAX,EAX                                             ; 66 0F BB C0
_06A0H:  BTC     ECX,EAX                                             ; 66 0F BB C1
_06A4H:  BTC     EDX,EAX                                             ; 66 0F BB C2
_06A8H:  BTC     EBX,EAX                                             ; 66 0F BB C3
_06ACH:  BTC     ESP,EAX                                             ; 66 0F BB C4
_06B0H:  BTC     EBP,EAX                                             ; 66 0F BB C5
_06B4H:  BTC     ESI,EAX                                             ; 66 0F BB C6
_06B8H:  BTC     EDI,EAX                                             ; 66 0F BB C7
_06BCH:  BTC     DS:[EAX],EAX                                        ; 66 67 0F BB 00
_06C1H:  BTC     DS:[EAX+00001234H],ECX                              ; 66 67 0F BB 88 34 12 00 00
_06CAH:  BTC     CS:[EAX],EBX                                        ; 66 2E 67 0F BB 18
_06D0H:  BTC     DS:[EAX],EDX                                        ; 66 67 0F BB 10
_06D5H:  BTC     ES:[EAX],ESP                                        ; 66 26 67 0F BB 20
_06DBH:  BTC     SS:[EAX],EBP                                        ; 66 36 67 0F BB 28
_06E1H:  BTC     FS:[EAX],ESI                                        ; 66 64 67 0F BB 30
_06E7H:  BTC     GS:[EAX],EDI                                        ; 66 65 67 0F BB 38
_06EDH:  BTC     DS:[EAX+EAX*2+00000100H],EAX                        ; 66 67 0F BB 84 40 00 01 00 00
_06F7H:  BTC     DS:[EBX+EBP*4+12345678H],EAX                        ; 66 3E 67 0F BB 84 AB 78 56 34 12
_0702H:  BTC     SS:[EBP+EBP],EAX                                    ; 66 67 0F BB 44 2D 00
_0709H:  BTC     SS:[ESP+EBP],EAX                                    ; 66 67 0F BB 04 2C
_070FH:  BTC     DS:[EDX+EBX*8],EAX                                  ; 66 67 0F BB 04 DA
_0715H:  BTC     DS:[EBX+ECX*2+01H],EAX                              ; 66 67 0F BB 44 4B 01
_071CH:  BTC     DS:[ECX+EDX*4+00000100H],EAX                        ; 66 67 0F BB 84 91 00 01 00 00
_0726H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX                       ; 66 67 0F BB 84 C0 D0 C0 B0 A0
_0730H:  BTC     SS:[EBP+EBP+10203040H],EAX                          ; 66 67 0F BB 84 2D 40 30 20 10
_073AH:  LOCK BTC     DS:[BX+SI],EAX                                 ; F0 66 0F BB 00
_073FH:  LOCK BTC     DS:[BX+DI],EAX                                 ; F0 66 0F BB 01
_0744H:  LOCK BTC     SS:[BP+SI],EAX                                 ; F0 66 0F BB 02
_0749H:  LOCK BTC     SS:[BP+DI],EAX                                 ; F0 66 0F BB 03
_074EH:  LOCK BTC     SS:[BP],EAX                                    ; F0 66 0F BB 46 00
_0754H:  LOCK BTC     DS:[SI],EAX                                    ; F0 66 0F BB 04
_0759H:  LOCK BTC     DS:[DI],EAX                                    ; F0 66 0F BB 05
_075EH:  LOCK BTC     DS:[BX+SI+1234H],EAX                           ; F0 66 0F BB 80 34 12
_0765H:  LOCK BTC     DS:[BX+DI+1234H],EAX                           ; F0 66 0F BB 81 34 12
_076CH:  LOCK BTC     SS:[BP+SI+1234H],EAX                           ; F0 66 0F BB 82 34 12
_0773H:  LOCK BTC     SS:[BP+DI+1234H],EAX                           ; F0 66 0F BB 83 34 12
_077AH:  LOCK BTC     SS:[BP+1234H],EAX                              ; F0 66 0F BB 86 34 12
_0781H:  LOCK BTC     DS:[SI+1234H],EAX                              ; F0 66 0F BB 84 34 12
_0788H:  LOCK BTC     DS:[DI+1234H],EAX                              ; F0 66 0F BB 85 34 12
_078FH:  BTC     EAX,01H                                             ; 66 0F BA F8 01
_0794H:  BTC     EAX,ECX                                             ; 66 0F BB C8
_0798H:  BTC     ECX,ECX                                             ; 66 0F BB C9
_079CH:  BTC     EDX,ECX                                             ; 66 0F BB CA
_07A0H:  BTC     EBX,ECX                                             ; 66 0F BB CB
_07A4H:  BTC     ESP,ECX                                             ; 66 0F BB CC
_07A8H:  BTC     EBP,ECX                                             ; 66 0F BB CD
_07ACH:  BTC     ESI,ECX                                             ; 66 0F BB CE
_07B0H:  BTC     EDI,ECX                                             ; 66 0F BB CF
_07B4H:  BTC     DS:[ECX],EAX                                        ; 66 67 0F BB 01
_07B9H:  BTC     DS:[ECX+00001234H],ECX                              ; 66 67 0F BB 89 34 12 00 00
_07C2H:  BTC     CS:[ECX],EBX                                        ; 66 2E 67 0F BB 19
_07C8H:  BTC     DS:[ECX],EDX                                        ; 66 67 0F BB 11
_07CDH:  BTC     ES:[ECX],ESP                                        ; 66 26 67 0F BB 21
_07D3H:  BTC     SS:[ECX],EBP                                        ; 66 36 67 0F BB 29
_07D9H:  BTC     FS:[ECX],ESI                                        ; 66 64 67 0F BB 31
_07DFH:  BTC     GS:[ECX],EDI                                        ; 66 65 67 0F BB 39
_07E5H:  BTC     DS:[EAX+EAX*2+00000100H],ECX                        ; 66 67 0F BB 8C 40 00 01 00 00
_07EFH:  BTC     DS:[EBX+EBP*4+12345678H],ECX                        ; 66 3E 67 0F BB 8C AB 78 56 34 12
_07FAH:  BTC     SS:[EBP+EBP],ECX                                    ; 66 67 0F BB 4C 2D 00
_0801H:  BTC     SS:[ESP+EBP],ECX                                    ; 66 67 0F BB 0C 2C
_0807H:  BTC     DS:[EDX+EBX*8],ECX                                  ; 66 67 0F BB 0C DA
_080DH:  BTC     DS:[EBX+ECX*2+01H],ECX                              ; 66 67 0F BB 4C 4B 01
_0814H:  BTC     DS:[ECX+EDX*4+00000100H],ECX                        ; 66 67 0F BB 8C 91 00 01 00 00
_081EH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX                       ; 66 67 0F BB 8C C0 D0 C0 B0 A0
_0828H:  BTC     SS:[EBP+EBP+10203040H],ECX                          ; 66 67 0F BB 8C 2D 40 30 20 10
_0832H:  LOCK BTC     DS:[BX+SI],ECX                                 ; F0 66 0F BB 08
_0837H:  LOCK BTC     DS:[BX+DI],ECX                                 ; F0 66 0F BB 09
_083CH:  LOCK BTC     SS:[BP+SI],ECX                                 ; F0 66 0F BB 0A
_0841H:  LOCK BTC     SS:[BP+DI],ECX                                 ; F0 66 0F BB 0B
_0846H:  LOCK BTC     SS:[BP],ECX                                    ; F0 66 0F BB 4E 00
_084CH:  LOCK BTC     DS:[SI],ECX                                    ; F0 66 0F BB 0C
_0851H:  LOCK BTC     DS:[DI],ECX                                    ; F0 66 0F BB 0D
_0856H:  LOCK BTC     DS:[BX+SI+1234H],ECX                           ; F0 66 0F BB 88 34 12
_085DH:  LOCK BTC     DS:[BX+DI+1234H],ECX                           ; F0 66 0F BB 89 34 12
_0864H:  LOCK BTC     SS:[BP+SI+1234H],ECX                           ; F0 66 0F BB 8A 34 12
_086BH:  LOCK BTC     SS:[BP+DI+1234H],ECX                           ; F0 66 0F BB 8B 34 12
_0872H:  LOCK BTC     SS:[BP+1234H],ECX                              ; F0 66 0F BB 8E 34 12
_0879H:  LOCK BTC     DS:[SI+1234H],ECX                              ; F0 66 0F BB 8C 34 12
_0880H:  LOCK BTC     DS:[DI+1234H],ECX                              ; F0 66 0F BB 8D 34 12
_0887H:  BTC     ECX,01H                                             ; 66 0F BA F9 01
_088CH:  BTC     EAX,EDX                                             ; 66 0F BB D0
_0890H:  BTC     ECX,EDX                                             ; 66 0F BB D1
_0894H:  BTC     EDX,EDX                                             ; 66 0F BB D2
_0898H:  BTC     EBX,EDX                                             ; 66 0F BB D3
_089CH:  BTC     ESP,EDX                                             ; 66 0F BB D4
_08A0H:  BTC     EBP,EDX                                             ; 66 0F BB D5
_08A4H:  BTC     ESI,EDX                                             ; 66 0F BB D6
_08A8H:  BTC     EDI,EDX                                             ; 66 0F BB D7
_08ACH:  BTC     DS:[EDX],EAX                                        ; 66 67 0F BB 02
_08B1H:  BTC     DS:[EDX+00001234H],ECX                              ; 66 67 0F BB 8A 34 12 00 00
_08BAH:  BTC     CS:[EDX],EBX                                        ; 66 2E 67 0F BB 1A
_08C0H:  BTC     DS:[EDX],EDX                                        ; 66 67 0F BB 12
_08C5H:  BTC     ES:[EDX],ESP                                        ; 66 26 67 0F BB 22
_08CBH:  BTC     SS:[EDX],EBP                                        ; 66 36 67 0F BB 2A
_08D1H:  BTC     FS:[EDX],ESI                                        ; 66 64 67 0F BB 32
_08D7H:  BTC     GS:[EDX],EDI                                        ; 66 65 67 0F BB 3A
_08DDH:  BTC     DS:[EAX+EAX*2+00000100H],EDX                        ; 66 67 0F BB 94 40 00 01 00 00
_08E7H:  BTC     DS:[EBX+EBP*4+12345678H],EDX                        ; 66 3E 67 0F BB 94 AB 78 56 34 12
_08F2H:  BTC     SS:[EBP+EBP],EDX                                    ; 66 67 0F BB 54 2D 00
_08F9H:  BTC     SS:[ESP+EBP],EDX                                    ; 66 67 0F BB 14 2C
_08FFH:  BTC     DS:[EDX+EBX*8],EDX                                  ; 66 67 0F BB 14 DA
_0905H:  BTC     DS:[EBX+ECX*2+01H],EDX                              ; 66 67 0F BB 54 4B 01
_090CH:  BTC     DS:[ECX+EDX*4+00000100H],EDX                        ; 66 67 0F BB 94 91 00 01 00 00
_0916H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX                       ; 66 67 0F BB 94 C0 D0 C0 B0 A0
_0920H:  BTC     SS:[EBP+EBP+10203040H],EDX                          ; 66 67 0F BB 94 2D 40 30 20 10
_092AH:  LOCK BTC     DS:[BX+SI],EDX                                 ; F0 66 0F BB 10
_092FH:  LOCK BTC     DS:[BX+DI],EDX                                 ; F0 66 0F BB 11
_0934H:  LOCK BTC     SS:[BP+SI],EDX                                 ; F0 66 0F BB 12
_0939H:  LOCK BTC     SS:[BP+DI],EDX                                 ; F0 66 0F BB 13
_093EH:  LOCK BTC     SS:[BP],EDX                                    ; F0 66 0F BB 56 00
_0944H:  LOCK BTC     DS:[SI],EDX                                    ; F0 66 0F BB 14
_0949H:  LOCK BTC     DS:[DI],EDX                                    ; F0 66 0F BB 15
_094EH:  LOCK BTC     DS:[BX+SI+1234H],EDX                           ; F0 66 0F BB 90 34 12
_0955H:  LOCK BTC     DS:[BX+DI+1234H],EDX                           ; F0 66 0F BB 91 34 12
_095CH:  LOCK BTC     SS:[BP+SI+1234H],EDX                           ; F0 66 0F BB 92 34 12
_0963H:  LOCK BTC     SS:[BP+DI+1234H],EDX                           ; F0 66 0F BB 93 34 12
_096AH:  LOCK BTC     SS:[BP+1234H],EDX                              ; F0 66 0F BB 96 34 12
_0971H:  LOCK BTC     DS:[SI+1234H],EDX                              ; F0 66 0F BB 94 34 12
_0978H:  LOCK BTC     DS:[DI+1234H],EDX                              ; F0 66 0F BB 95 34 12
_097FH:  BTC     EDX,01H                                             ; 66 0F BA FA 01
_0984H:  BTC     EAX,EBX                                             ; 66 0F BB D8
_0988H:  BTC     ECX,EBX                                             ; 66 0F BB D9
_098CH:  BTC     EDX,EBX                                             ; 66 0F BB DA
_0990H:  BTC     EBX,EBX                                             ; 66 0F BB DB
_0994H:  BTC     ESP,EBX                                             ; 66 0F BB DC
_0998H:  BTC     EBP,EBX                                             ; 66 0F BB DD
_099CH:  BTC     ESI,EBX                                             ; 66 0F BB DE
_09A0H:  BTC     EDI,EBX                                             ; 66 0F BB DF
_09A4H:  BTC     DS:[EBX],EAX                                        ; 66 67 0F BB 03
_09A9H:  BTC     DS:[EBX+00001234H],ECX                              ; 66 67 0F BB 8B 34 12 00 00
_09B2H:  BTC     CS:[EBX],EBX                                        ; 66 2E 67 0F BB 1B
_09B8H:  BTC     DS:[EBX],EDX                                        ; 66 67 0F BB 13
_09BDH:  BTC     ES:[EBX],ESP                                        ; 66 26 67 0F BB 23
_09C3H:  BTC     SS:[EBX],EBP                                        ; 66 36 67 0F BB 2B
_09C9H:  BTC     FS:[EBX],ESI                                        ; 66 64 67 0F BB 33
_09CFH:  BTC     GS:[EBX],EDI                                        ; 66 65 67 0F BB 3B
_09D5H:  BTC     DS:[EAX+EAX*2+00000100H],EBX                        ; 66 67 0F BB 9C 40 00 01 00 00
_09DFH:  BTC     DS:[EBX+EBP*4+12345678H],EBX                        ; 66 3E 67 0F BB 9C AB 78 56 34 12
_09EAH:  BTC     SS:[EBP+EBP],EBX                                    ; 66 67 0F BB 5C 2D 00
_09F1H:  BTC     SS:[ESP+EBP],EBX                                    ; 66 67 0F BB 1C 2C
_09F7H:  BTC     DS:[EDX+EBX*8],EBX                                  ; 66 67 0F BB 1C DA
_09FDH:  BTC     DS:[EBX+ECX*2+01H],EBX                              ; 66 67 0F BB 5C 4B 01
_0A04H:  BTC     DS:[ECX+EDX*4+00000100H],EBX                        ; 66 67 0F BB 9C 91 00 01 00 00
_0A0EH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX                       ; 66 67 0F BB 9C C0 D0 C0 B0 A0
_0A18H:  BTC     SS:[EBP+EBP+10203040H],EBX                          ; 66 67 0F BB 9C 2D 40 30 20 10
_0A22H:  LOCK BTC     DS:[BX+SI],EBX                                 ; F0 66 0F BB 18
_0A27H:  LOCK BTC     DS:[BX+DI],EBX                                 ; F0 66 0F BB 19
_0A2CH:  LOCK BTC     SS:[BP+SI],EBX                                 ; F0 66 0F BB 1A
_0A31H:  LOCK BTC     SS:[BP+DI],EBX                                 ; F0 66 0F BB 1B
_0A36H:  LOCK BTC     SS:[BP],EBX                                    ; F0 66 0F BB 5E 00
_0A3CH:  LOCK BTC     DS:[SI],EBX                                    ; F0 66 0F BB 1C
_0A41H:  LOCK BTC     DS:[DI],EBX                                    ; F0 66 0F BB 1D
_0A46H:  LOCK BTC     DS:[BX+SI+1234H],EBX                           ; F0 66 0F BB 98 34 12
_0A4DH:  LOCK BTC     DS:[BX+DI+1234H],EBX                           ; F0 66 0F BB 99 34 12
_0A54H:  LOCK BTC     SS:[BP+SI+1234H],EBX                           ; F0 66 0F BB 9A 34 12
_0A5BH:  LOCK BTC     SS:[BP+DI+1234H],EBX                           ; F0 66 0F BB 9B 34 12
_0A62H:  LOCK BTC     SS:[BP+1234H],EBX                              ; F0 66 0F BB 9E 34 12
_0A69H:  LOCK BTC     DS:[SI+1234H],EBX                              ; F0 66 0F BB 9C 34 12
_0A70H:  LOCK BTC     DS:[DI+1234H],EBX                              ; F0 66 0F BB 9D 34 12
_0A77H:  BTC     EBX,01H                                             ; 66 0F BA FB 01
_0A7CH:  BTC     EAX,ESP                                             ; 66 0F BB E0
_0A80H:  BTC     ECX,ESP                                             ; 66 0F BB E1
_0A84H:  BTC     EDX,ESP                                             ; 66 0F BB E2
_0A88H:  BTC     EBX,ESP                                             ; 66 0F BB E3
_0A8CH:  BTC     ESP,ESP                                             ; 66 0F BB E4
_0A90H:  BTC     EBP,ESP                                             ; 66 0F BB E5
_0A94H:  BTC     ESI,ESP                                             ; 66 0F BB E6
_0A98H:  BTC     EDI,ESP                                             ; 66 0F BB E7
_0A9CH:  BTC     SS:[ESP+EAX],EAX                                    ; 66 67 0F BB 04 04
_0AA2H:  BTC     SS:[ESP+EBP+00001234H],ECX                          ; 66 67 0F BB 8C 2C 34 12 00 00
_0AACH:  BTC     CS:[ESP+ECX],EBX                                    ; 66 2E 67 0F BB 1C 0C
_0AB3H:  BTC     DS:[ESP+EDX],EDX                                    ; 66 3E 67 0F BB 14 14
_0ABAH:  BTC     ES:[ESP],ESP                                        ; 66 26 67 0F BB 24 24
_0AC1H:  BTC     DS:[EAX+EAX*2+00000100H],ESP                        ; 66 67 0F BB A4 40 00 01 00 00
_0ACBH:  BTC     DS:[EBX+EBP*4+12345678H],ESP                        ; 66 3E 67 0F BB A4 AB 78 56 34 12
_0AD6H:  BTC     SS:[EBP+EBP],ESP                                    ; 66 67 0F BB 64 2D 00
_0ADDH:  BTC     SS:[ESP+EBP],ESP                                    ; 66 67 0F BB 24 2C
_0AE3H:  BTC     DS:[EDX+EBX*8],ESP                                  ; 66 67 0F BB 24 DA
_0AE9H:  BTC     DS:[EBX+ECX*2+01H],ESP                              ; 66 67 0F BB 64 4B 01
_0AF0H:  BTC     DS:[ECX+EDX*4+00000100H],ESP                        ; 66 67 0F BB A4 91 00 01 00 00
_0AFAH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP                       ; 66 67 0F BB A4 C0 D0 C0 B0 A0
_0B04H:  BTC     SS:[EBP+EBP+10203040H],ESP                          ; 66 67 0F BB A4 2D 40 30 20 10
_0B0EH:  LOCK BTC     DS:[BX+SI],ESP                                 ; F0 66 0F BB 20
_0B13H:  LOCK BTC     DS:[BX+DI],ESP                                 ; F0 66 0F BB 21
_0B18H:  LOCK BTC     SS:[BP+SI],ESP                                 ; F0 66 0F BB 22
_0B1DH:  LOCK BTC     SS:[BP+DI],ESP                                 ; F0 66 0F BB 23
_0B22H:  LOCK BTC     SS:[BP],ESP                                    ; F0 66 0F BB 66 00
_0B28H:  LOCK BTC     DS:[SI],ESP                                    ; F0 66 0F BB 24
_0B2DH:  LOCK BTC     DS:[DI],ESP                                    ; F0 66 0F BB 25
_0B32H:  LOCK BTC     DS:[BX+SI+1234H],ESP                           ; F0 66 0F BB A0 34 12
_0B39H:  LOCK BTC     DS:[BX+DI+1234H],ESP                           ; F0 66 0F BB A1 34 12
_0B40H:  LOCK BTC     SS:[BP+SI+1234H],ESP                           ; F0 66 0F BB A2 34 12
_0B47H:  LOCK BTC     SS:[BP+DI+1234H],ESP                           ; F0 66 0F BB A3 34 12
_0B4EH:  LOCK BTC     SS:[BP+1234H],ESP                              ; F0 66 0F BB A6 34 12
_0B55H:  LOCK BTC     DS:[SI+1234H],ESP                              ; F0 66 0F BB A4 34 12
_0B5CH:  LOCK BTC     DS:[DI+1234H],ESP                              ; F0 66 0F BB A5 34 12
_0B63H:  BTC     ESP,01H                                             ; 66 0F BA FC 01
_0B68H:  BTC     EAX,EBP                                             ; 66 0F BB E8
_0B6CH:  BTC     ECX,EBP                                             ; 66 0F BB E9
_0B70H:  BTC     EDX,EBP                                             ; 66 0F BB EA
_0B74H:  BTC     EBX,EBP                                             ; 66 0F BB EB
_0B78H:  BTC     ESP,EBP                                             ; 66 0F BB EC
_0B7CH:  BTC     EBP,EBP                                             ; 66 0F BB ED
_0B80H:  BTC     ESI,EBP                                             ; 66 0F BB EE
_0B84H:  BTC     EDI,EBP                                             ; 66 0F BB EF
_0B88H:  BTC     SS:[EBP],EAX                                        ; 66 67 0F BB 45 00
_0B8EH:  BTC     SS:[EBP+00001234H],ECX                              ; 66 67 0F BB 8D 34 12 00 00
_0B97H:  BTC     CS:[EBP],EBX                                        ; 66 2E 67 0F BB 5D 00
_0B9EH:  BTC     DS:[EBP],EDX                                        ; 66 3E 67 0F BB 55 00
_0BA5H:  BTC     ES:[EBP],ESP                                        ; 66 26 67 0F BB 65 00
_0BACH:  BTC     SS:[EBP],EBP                                        ; 66 67 0F BB 6D 00
_0BB2H:  BTC     FS:[EBP],ESI                                        ; 66 64 67 0F BB 75 00
_0BB9H:  BTC     GS:[EBP],EDI                                        ; 66 65 67 0F BB 7D 00
_0BC0H:  BTC     DS:[EAX+EAX*2+00000100H],EBP                        ; 66 67 0F BB AC 40 00 01 00 00
_0BCAH:  BTC     DS:[EBX+EBP*4+12345678H],EBP                        ; 66 3E 67 0F BB AC AB 78 56 34 12
_0BD5H:  BTC     SS:[EBP+EBP],EBP                                    ; 66 67 0F BB 6C 2D 00
_0BDCH:  BTC     SS:[ESP+EBP],EBP                                    ; 66 67 0F BB 2C 2C
_0BE2H:  BTC     DS:[EDX+EBX*8],EBP                                  ; 66 67 0F BB 2C DA
_0BE8H:  BTC     DS:[EBX+ECX*2+01H],EBP                              ; 66 67 0F BB 6C 4B 01
_0BEFH:  BTC     DS:[ECX+EDX*4+00000100H],EBP                        ; 66 67 0F BB AC 91 00 01 00 00
_0BF9H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP                       ; 66 67 0F BB AC C0 D0 C0 B0 A0
_0C03H:  BTC     SS:[EBP+EBP+10203040H],EBP                          ; 66 67 0F BB AC 2D 40 30 20 10
_0C0DH:  LOCK BTC     DS:[BX+SI],EBP                                 ; F0 66 0F BB 28
_0C12H:  LOCK BTC     DS:[BX+DI],EBP                                 ; F0 66 0F BB 29
_0C17H:  LOCK BTC     SS:[BP+SI],EBP                                 ; F0 66 0F BB 2A
_0C1CH:  LOCK BTC     SS:[BP+DI],EBP                                 ; F0 66 0F BB 2B
_0C21H:  LOCK BTC     SS:[BP],EBP                                    ; F0 66 0F BB 6E 00
_0C27H:  LOCK BTC     DS:[SI],EBP                                    ; F0 66 0F BB 2C
_0C2CH:  LOCK BTC     DS:[DI],EBP                                    ; F0 66 0F BB 2D
_0C31H:  LOCK BTC     DS:[BX+SI+1234H],EBP                           ; F0 66 0F BB A8 34 12
_0C38H:  LOCK BTC     DS:[BX+DI+1234H],EBP                           ; F0 66 0F BB A9 34 12
_0C3FH:  LOCK BTC     SS:[BP+SI+1234H],EBP                           ; F0 66 0F BB AA 34 12
_0C46H:  LOCK BTC     SS:[BP+DI+1234H],EBP                           ; F0 66 0F BB AB 34 12
_0C4DH:  LOCK BTC     SS:[BP+1234H],EBP                              ; F0 66 0F BB AE 34 12
_0C54H:  LOCK BTC     DS:[SI+1234H],EBP                              ; F0 66 0F BB AC 34 12
_0C5BH:  LOCK BTC     DS:[DI+1234H],EBP                              ; F0 66 0F BB AD 34 12
_0C62H:  BTC     EBP,01H                                             ; 66 0F BA FD 01
_0C67H:  BTC     EAX,ESI                                             ; 66 0F BB F0
_0C6BH:  BTC     ECX,ESI                                             ; 66 0F BB F1
_0C6FH:  BTC     EDX,ESI                                             ; 66 0F BB F2
_0C73H:  BTC     EBX,ESI                                             ; 66 0F BB F3
_0C77H:  BTC     ESP,ESI                                             ; 66 0F BB F4
_0C7BH:  BTC     EBP,ESI                                             ; 66 0F BB F5
_0C7FH:  BTC     ESI,ESI                                             ; 66 0F BB F6
_0C83H:  BTC     EDI,ESI                                             ; 66 0F BB F7
_0C87H:  BTC     DS:[ESI],EAX                                        ; 66 67 0F BB 06
_0C8CH:  BTC     DS:[ESI+00001234H],ECX                              ; 66 67 0F BB 8E 34 12 00 00
_0C95H:  BTC     CS:[ESI],EBX                                        ; 66 2E 67 0F BB 1E
_0C9BH:  BTC     DS:[ESI],EDX                                        ; 66 67 0F BB 16
_0CA0H:  BTC     ES:[ESI],ESP                                        ; 66 26 67 0F BB 26
_0CA6H:  BTC     SS:[ESI],EBP                                        ; 66 36 67 0F BB 2E
_0CACH:  BTC     FS:[ESI],ESI                                        ; 66 64 67 0F BB 36
_0CB2H:  BTC     GS:[ESI],EDI                                        ; 66 65 67 0F BB 3E
_0CB8H:  BTC     DS:[EAX+EAX*2+00000100H],ESI                        ; 66 67 0F BB B4 40 00 01 00 00
_0CC2H:  BTC     DS:[EBX+EBP*4+12345678H],ESI                        ; 66 3E 67 0F BB B4 AB 78 56 34 12
_0CCDH:  BTC     SS:[EBP+EBP],ESI                                    ; 66 67 0F BB 74 2D 00
_0CD4H:  BTC     SS:[ESP+EBP],ESI                                    ; 66 67 0F BB 34 2C
_0CDAH:  BTC     DS:[EDX+EBX*8],ESI                                  ; 66 67 0F BB 34 DA
_0CE0H:  BTC     DS:[EBX+ECX*2+01H],ESI                              ; 66 67 0F BB 74 4B 01
_0CE7H:  BTC     DS:[ECX+EDX*4+00000100H],ESI                        ; 66 67 0F BB B4 91 00 01 00 00
_0CF1H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESI                       ; 66 67 0F BB B4 C0 D0 C0 B0 A0
_0CFBH:  BTC     SS:[EBP+EBP+10203040H],ESI                          ; 66 67 0F BB B4 2D 40 30 20 10
_0D05H:  LOCK BTC     DS:[BX+SI],ESI                                 ; F0 66 0F BB 30
_0D0AH:  LOCK BTC     DS:[BX+DI],ESI                                 ; F0 66 0F BB 31
_0D0FH:  LOCK BTC     SS:[BP+SI],ESI                                 ; F0 66 0F BB 32
_0D14H:  LOCK BTC     SS:[BP+DI],ESI                                 ; F0 66 0F BB 33
_0D19H:  LOCK BTC     SS:[BP],ESI                                    ; F0 66 0F BB 76 00
_0D1FH:  LOCK BTC     DS:[SI],ESI                                    ; F0 66 0F BB 34
_0D24H:  LOCK BTC     DS:[DI],ESI                                    ; F0 66 0F BB 35
_0D29H:  LOCK BTC     DS:[BX+SI+1234H],ESI                           ; F0 66 0F BB B0 34 12
_0D30H:  LOCK BTC     DS:[BX+DI+1234H],ESI                           ; F0 66 0F BB B1 34 12
_0D37H:  LOCK BTC     SS:[BP+SI+1234H],ESI                           ; F0 66 0F BB B2 34 12
_0D3EH:  LOCK BTC     SS:[BP+DI+1234H],ESI                           ; F0 66 0F BB B3 34 12
_0D45H:  LOCK BTC     SS:[BP+1234H],ESI                              ; F0 66 0F BB B6 34 12
_0D4CH:  LOCK BTC     DS:[SI+1234H],ESI                              ; F0 66 0F BB B4 34 12
_0D53H:  LOCK BTC     DS:[DI+1234H],ESI                              ; F0 66 0F BB B5 34 12
_0D5AH:  BTC     ESI,01H                                             ; 66 0F BA FE 01
_0D5FH:  BTC     EAX,EDI                                             ; 66 0F BB F8
_0D63H:  BTC     ECX,EDI                                             ; 66 0F BB F9
_0D67H:  BTC     EDX,EDI                                             ; 66 0F BB FA
_0D6BH:  BTC     EBX,EDI                                             ; 66 0F BB FB
_0D6FH:  BTC     ESP,EDI                                             ; 66 0F BB FC
_0D73H:  BTC     EBP,EDI                                             ; 66 0F BB FD
_0D77H:  BTC     ESI,EDI                                             ; 66 0F BB FE
_0D7BH:  BTC     EDI,EDI                                             ; 66 0F BB FF
_0D7FH:  BTC     DS:[EDI],EAX                                        ; 66 67 0F BB 07
_0D84H:  BTC     DS:[EDI+00001234H],ECX                              ; 66 67 0F BB 8F 34 12 00 00
_0D8DH:  BTC     CS:[EDI],EBX                                        ; 66 2E 67 0F BB 1F
_0D93H:  BTC     DS:[EDI],EDX                                        ; 66 67 0F BB 17
_0D98H:  BTC     ES:[EDI],ESP                                        ; 66 26 67 0F BB 27
_0D9EH:  BTC     SS:[EDI],EBP                                        ; 66 36 67 0F BB 2F
_0DA4H:  BTC     FS:[EDI],ESI                                        ; 66 64 67 0F BB 37
_0DAAH:  BTC     GS:[EDI],EDI                                        ; 66 65 67 0F BB 3F
_0DB0H:  BTC     DS:[EAX+EAX*2+00000100H],EDI                        ; 66 67 0F BB BC 40 00 01 00 00
_0DBAH:  BTC     DS:[EBX+EBP*4+12345678H],EDI                        ; 66 3E 67 0F BB BC AB 78 56 34 12
_0DC5H:  BTC     SS:[EBP+EBP],EDI                                    ; 66 67 0F BB 7C 2D 00
_0DCCH:  BTC     SS:[ESP+EBP],EDI                                    ; 66 67 0F BB 3C 2C
_0DD2H:  BTC     DS:[EDX+EBX*8],EDI                                  ; 66 67 0F BB 3C DA
_0DD8H:  BTC     DS:[EBX+ECX*2+01H],EDI                              ; 66 67 0F BB 7C 4B 01
_0DDFH:  BTC     DS:[ECX+EDX*4+00000100H],EDI                        ; 66 67 0F BB BC 91 00 01 00 00
_0DE9H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI                       ; 66 67 0F BB BC C0 D0 C0 B0 A0
_0DF3H:  BTC     SS:[EBP+EBP+10203040H],EDI                          ; 66 67 0F BB BC 2D 40 30 20 10
_0DFDH:  LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H          ; F0 64 67 0F BA BC 2B CC DD EE FF A0
_0E09H:  LOCK BTC     DS:[BX+SI],EDI                                 ; F0 66 0F BB 38
_0E0EH:  LOCK BTC     DS:[BX+DI],EDI                                 ; F0 66 0F BB 39
_0E13H:  LOCK BTC     SS:[BP+SI],EDI                                 ; F0 66 0F BB 3A
_0E18H:  LOCK BTC     SS:[BP+DI],EDI                                 ; F0 66 0F BB 3B
_0E1DH:  LOCK BTC     SS:[BP],EDI                                    ; F0 66 0F BB 7E 00
_0E23H:  LOCK BTC     DS:[SI],EDI                                    ; F0 66 0F BB 3C
_0E28H:  LOCK BTC     DS:[DI],EDI                                    ; F0 66 0F BB 3D
_0E2DH:  LOCK BTC     DS:[BX+SI+1234H],EDI                           ; F0 66 0F BB B8 34 12
_0E34H:  LOCK BTC     DS:[BX+DI+1234H],EDI                           ; F0 66 0F BB B9 34 12
_0E3BH:  LOCK BTC     SS:[BP+SI+1234H],EDI                           ; F0 66 0F BB BA 34 12
_0E42H:  LOCK BTC     SS:[BP+DI+1234H],EDI                           ; F0 66 0F BB BB 34 12
_0E49H:  LOCK BTC     SS:[BP+1234H],EDI                              ; F0 66 0F BB BE 34 12
_0E50H:  LOCK BTC     DS:[SI+1234H],EDI                              ; F0 66 0F BB BC 34 12
_0E57H:  LOCK BTC     DS:[DI+1234H],EDI                              ; F0 66 0F BB BD 34 12
_0E5EH:  BTC     EDI,01H                                             ; 66 0F BA FF 01
_0E63H:  BTC     AX,AX                                               ; 0F BB C0
_0E66H:  BTC     CX,AX                                               ; 0F BB C1
_0E69H:  BTC     DX,AX                                               ; 0F BB C2
_0E6CH:  BTC     BX,AX                                               ; 0F BB C3
_0E6FH:  BTC     SP,AX                                               ; 0F BB C4
_0E72H:  BTC     BP,AX                                               ; 0F BB C5
_0E75H:  BTC     SI,AX                                               ; 0F BB C6
_0E78H:  BTC     DI,AX                                               ; 0F BB C7
_0E7BH:  BTC     DS:[BX+SI+1234H],AX                                 ; 0F BB 80 34 12
_0E80H:  BTC     DS:[BX+DI+1234H],AX                                 ; 0F BB 81 34 12
_0E85H:  BTC     SS:[BP+SI+1234H],AX                                 ; 0F BB 82 34 12
_0E8AH:  BTC     SS:[BP+DI+1234H],AX                                 ; 0F BB 83 34 12
_0E8FH:  BTC     SS:[BP+1234H],AX                                    ; 0F BB 86 34 12
_0E94H:  BTC     DS:[SI+1234H],AX                                    ; 0F BB 84 34 12
_0E99H:  BTC     DS:[DI+1234H],AX                                    ; 0F BB 85 34 12
_0E9EH:  BTC     CS:[BX+SI],AX                                       ; 2E 0F BB 00
_0EA2H:  BTC     CS:[BX+DI],AX                                       ; 2E 0F BB 01
_0EA6H:  BTC     CS:[BP+SI],AX                                       ; 2E 0F BB 02
_0EAAH:  BTC     CS:[BP+DI],AX                                       ; 2E 0F BB 03
_0EAEH:  BTC     CS:[BP],AX                                          ; 2E 0F BB 46 00
_0EB3H:  BTC     CS:[SI],AX                                          ; 2E 0F BB 04
_0EB7H:  BTC     CS:[DI],AX                                          ; 2E 0F BB 05
_0EBBH:  BTC     DS:[BX+SI],AX                                       ; 0F BB 00
_0EBEH:  BTC     DS:[BX+DI],AX                                       ; 0F BB 01
_0EC1H:  BTC     DS:[BP+SI],AX                                       ; 3E 0F BB 02
_0EC5H:  BTC     DS:[BP+DI],AX                                       ; 3E 0F BB 03
_0EC9H:  BTC     DS:[BP],AX                                          ; 3E 0F BB 46 00
_0ECEH:  BTC     DS:[SI],AX                                          ; 0F BB 04
_0ED1H:  BTC     DS:[DI],AX                                          ; 0F BB 05
_0ED4H:  BTC     ES:[BX+SI],AX                                       ; 26 0F BB 00
_0ED8H:  BTC     ES:[BX+DI],AX                                       ; 26 0F BB 01
_0EDCH:  BTC     ES:[BP+SI],AX                                       ; 26 0F BB 02
_0EE0H:  BTC     ES:[BP+DI],AX                                       ; 26 0F BB 03
_0EE4H:  BTC     ES:[BP],AX                                          ; 26 0F BB 46 00
_0EE9H:  BTC     ES:[SI],AX                                          ; 26 0F BB 04
_0EEDH:  BTC     ES:[DI],AX                                          ; 26 0F BB 05
_0EF1H:  BTC     SS:[BX+SI],AX                                       ; 36 0F BB 00
_0EF5H:  BTC     SS:[BX+DI],AX                                       ; 36 0F BB 01
_0EF9H:  BTC     SS:[BP+SI],AX                                       ; 0F BB 02
_0EFCH:  BTC     SS:[BP+DI],AX                                       ; 0F BB 03
_0EFFH:  BTC     SS:[BP],AX                                          ; 0F BB 46 00
_0F03H:  BTC     SS:[SI],AX                                          ; 36 0F BB 04
_0F07H:  BTC     SS:[DI],AX                                          ; 36 0F BB 05
_0F0BH:  BTC     FS:[BX+SI],AX                                       ; 64 0F BB 00
_0F0FH:  BTC     FS:[BX+DI],AX                                       ; 64 0F BB 01
_0F13H:  BTC     FS:[BP+SI],AX                                       ; 64 0F BB 02
_0F17H:  BTC     FS:[BP+DI],AX                                       ; 64 0F BB 03
_0F1BH:  BTC     FS:[BP],AX                                          ; 64 0F BB 46 00
_0F20H:  BTC     FS:[SI],AX                                          ; 64 0F BB 04
_0F24H:  BTC     FS:[DI],AX                                          ; 64 0F BB 05
_0F28H:  BTC     GS:[BX+SI],AX                                       ; 65 0F BB 00
_0F2CH:  BTC     GS:[BX+DI],AX                                       ; 65 0F BB 01
_0F30H:  BTC     GS:[BP+SI],AX                                       ; 65 0F BB 02
_0F34H:  BTC     GS:[BP+DI],AX                                       ; 65 0F BB 03
_0F38H:  BTC     GS:[BP],AX                                          ; 65 0F BB 46 00
_0F3DH:  BTC     GS:[SI],AX                                          ; 65 0F BB 04
_0F41H:  BTC     GS:[DI],AX                                          ; 65 0F BB 05
_0F45H:  BTC     AX,01H                                              ; 0F BA F8 01
_0F49H:  BTC     AX,0FFH                                             ; 0F BA F8 FF
_0F4DH:  BTC     AX,CX                                               ; 0F BB C8
_0F50H:  BTC     CX,CX                                               ; 0F BB C9
_0F53H:  BTC     DX,CX                                               ; 0F BB CA
_0F56H:  BTC     BX,CX                                               ; 0F BB CB
_0F59H:  BTC     SP,CX                                               ; 0F BB CC
_0F5CH:  BTC     BP,CX                                               ; 0F BB CD
_0F5FH:  BTC     SI,CX                                               ; 0F BB CE
_0F62H:  BTC     DI,CX                                               ; 0F BB CF
_0F65H:  BTC     DS:[BX+SI+1234H],CX                                 ; 0F BB 88 34 12
_0F6AH:  BTC     DS:[BX+DI+1234H],CX                                 ; 0F BB 89 34 12
_0F6FH:  BTC     SS:[BP+SI+1234H],CX                                 ; 0F BB 8A 34 12
_0F74H:  BTC     SS:[BP+DI+1234H],CX                                 ; 0F BB 8B 34 12
_0F79H:  BTC     SS:[BP+1234H],CX                                    ; 0F BB 8E 34 12
_0F7EH:  BTC     DS:[SI+1234H],CX                                    ; 0F BB 8C 34 12
_0F83H:  BTC     DS:[DI+1234H],CX                                    ; 0F BB 8D 34 12
_0F88H:  BTC     CS:[BX+SI],CX                                       ; 2E 0F BB 08
_0F8CH:  BTC     CS:[BX+DI],CX                                       ; 2E 0F BB 09
_0F90H:  BTC     CS:[BP+SI],CX                                       ; 2E 0F BB 0A
_0F94H:  BTC     CS:[BP+DI],CX                                       ; 2E 0F BB 0B
_0F98H:  BTC     CS:[BP],CX                                          ; 2E 0F BB 4E 00
_0F9DH:  BTC     CS:[SI],CX                                          ; 2E 0F BB 0C
_0FA1H:  BTC     CS:[DI],CX                                          ; 2E 0F BB 0D
_0FA5H:  BTC     DS:[BX+SI],CX                                       ; 0F BB 08
_0FA8H:  BTC     DS:[BX+DI],CX                                       ; 0F BB 09
_0FABH:  BTC     DS:[BP+SI],CX                                       ; 3E 0F BB 0A
_0FAFH:  BTC     DS:[BP+DI],CX                                       ; 3E 0F BB 0B
_0FB3H:  BTC     DS:[BP],CX                                          ; 3E 0F BB 4E 00
_0FB8H:  BTC     DS:[SI],CX                                          ; 0F BB 0C
_0FBBH:  BTC     DS:[DI],CX                                          ; 0F BB 0D
_0FBEH:  BTC     ES:[BX+SI],CX                                       ; 26 0F BB 08
_0FC2H:  BTC     ES:[BX+DI],CX                                       ; 26 0F BB 09
_0FC6H:  BTC     ES:[BP+SI],CX                                       ; 26 0F BB 0A
_0FCAH:  BTC     ES:[BP+DI],CX                                       ; 26 0F BB 0B
_0FCEH:  BTC     ES:[BP],CX                                          ; 26 0F BB 4E 00
_0FD3H:  BTC     ES:[SI],CX                                          ; 26 0F BB 0C
_0FD7H:  BTC     ES:[DI],CX                                          ; 26 0F BB 0D
_0FDBH:  BTC     SS:[BX+SI],CX                                       ; 36 0F BB 08
_0FDFH:  BTC     SS:[BX+DI],CX                                       ; 36 0F BB 09
_0FE3H:  BTC     SS:[BP+SI],CX                                       ; 0F BB 0A
_0FE6H:  BTC     SS:[BP+DI],CX                                       ; 0F BB 0B
_0FE9H:  BTC     SS:[BP],CX                                          ; 0F BB 4E 00
_0FEDH:  BTC     SS:[SI],CX                                          ; 36 0F BB 0C
_0FF1H:  BTC     SS:[DI],CX                                          ; 36 0F BB 0D
_0FF5H:  BTC     FS:[BX+SI],CX                                       ; 64 0F BB 08
_0FF9H:  BTC     FS:[BX+DI],CX                                       ; 64 0F BB 09
_0FFDH:  BTC     FS:[BP+SI],CX                                       ; 64 0F BB 0A
_1001H:  BTC     FS:[BP+DI],CX                                       ; 64 0F BB 0B
_1005H:  BTC     FS:[BP],CX                                          ; 64 0F BB 4E 00
_100AH:  BTC     FS:[SI],CX                                          ; 64 0F BB 0C
_100EH:  BTC     FS:[DI],CX                                          ; 64 0F BB 0D
_1012H:  BTC     GS:[BX+SI],CX                                       ; 65 0F BB 08
_1016H:  BTC     GS:[BX+DI],CX                                       ; 65 0F BB 09
_101AH:  BTC     GS:[BP+SI],CX                                       ; 65 0F BB 0A
_101EH:  BTC     GS:[BP+DI],CX                                       ; 65 0F BB 0B
_1022H:  BTC     GS:[BP],CX                                          ; 65 0F BB 4E 00
_1027H:  BTC     GS:[SI],CX                                          ; 65 0F BB 0C
_102BH:  BTC     GS:[DI],CX                                          ; 65 0F BB 0D
_102FH:  BTC     CX,01H                                              ; 0F BA F9 01
_1033H:  BTC     CX,0FFH                                             ; 0F BA F9 FF
_1037H:  BTC     AX,DX                                               ; 0F BB D0
_103AH:  BTC     CX,DX                                               ; 0F BB D1
_103DH:  BTC     DX,DX                                               ; 0F BB D2
_1040H:  BTC     BX,DX                                               ; 0F BB D3
_1043H:  BTC     SP,DX                                               ; 0F BB D4
_1046H:  BTC     BP,DX                                               ; 0F BB D5
_1049H:  BTC     SI,DX                                               ; 0F BB D6
_104CH:  BTC     DI,DX                                               ; 0F BB D7
_104FH:  BTC     DS:[BX+SI+1234H],DX                                 ; 0F BB 90 34 12
_1054H:  BTC     DS:[BX+DI+1234H],DX                                 ; 0F BB 91 34 12
_1059H:  BTC     SS:[BP+SI+1234H],DX                                 ; 0F BB 92 34 12
_105EH:  BTC     SS:[BP+DI+1234H],DX                                 ; 0F BB 93 34 12
_1063H:  BTC     SS:[BP+1234H],DX                                    ; 0F BB 96 34 12
_1068H:  BTC     DS:[SI+1234H],DX                                    ; 0F BB 94 34 12
_106DH:  BTC     DS:[DI+1234H],DX                                    ; 0F BB 95 34 12
_1072H:  BTC     CS:[BX+SI],DX                                       ; 2E 0F BB 10
_1076H:  BTC     CS:[BX+DI],DX                                       ; 2E 0F BB 11
_107AH:  BTC     CS:[BP+SI],DX                                       ; 2E 0F BB 12
_107EH:  BTC     CS:[BP+DI],DX                                       ; 2E 0F BB 13
_1082H:  BTC     CS:[BP],DX                                          ; 2E 0F BB 56 00
_1087H:  BTC     CS:[SI],DX                                          ; 2E 0F BB 14
_108BH:  BTC     CS:[DI],DX                                          ; 2E 0F BB 15
_108FH:  BTC     DS:[BX+SI],DX                                       ; 0F BB 10
_1092H:  BTC     DS:[BX+DI],DX                                       ; 0F BB 11
_1095H:  BTC     DS:[BP+SI],DX                                       ; 3E 0F BB 12
_1099H:  BTC     DS:[BP+DI],DX                                       ; 3E 0F BB 13
_109DH:  BTC     DS:[BP],DX                                          ; 3E 0F BB 56 00
_10A2H:  BTC     DS:[SI],DX                                          ; 0F BB 14
_10A5H:  BTC     DS:[DI],DX                                          ; 0F BB 15
_10A8H:  BTC     ES:[BX+SI],DX                                       ; 26 0F BB 10
_10ACH:  BTC     ES:[BX+DI],DX                                       ; 26 0F BB 11
_10B0H:  BTC     ES:[BP+SI],DX                                       ; 26 0F BB 12
_10B4H:  BTC     ES:[BP+DI],DX                                       ; 26 0F BB 13
_10B8H:  BTC     ES:[BP],DX                                          ; 26 0F BB 56 00
_10BDH:  BTC     ES:[SI],DX                                          ; 26 0F BB 14
_10C1H:  BTC     ES:[DI],DX                                          ; 26 0F BB 15
_10C5H:  BTC     SS:[BX+SI],DX                                       ; 36 0F BB 10
_10C9H:  BTC     SS:[BX+DI],DX                                       ; 36 0F BB 11
_10CDH:  BTC     SS:[BP+SI],DX                                       ; 0F BB 12
_10D0H:  BTC     SS:[BP+DI],DX                                       ; 0F BB 13
_10D3H:  BTC     SS:[BP],DX                                          ; 0F BB 56 00
_10D7H:  BTC     SS:[SI],DX                                          ; 36 0F BB 14
_10DBH:  BTC     SS:[DI],DX                                          ; 36 0F BB 15
_10DFH:  BTC     FS:[BX+SI],DX                                       ; 64 0F BB 10
_10E3H:  BTC     FS:[BX+DI],DX                                       ; 64 0F BB 11
_10E7H:  BTC     FS:[BP+SI],DX                                       ; 64 0F BB 12
_10EBH:  BTC     FS:[BP+DI],DX                                       ; 64 0F BB 13
_10EFH:  BTC     FS:[BP],DX                                          ; 64 0F BB 56 00
_10F4H:  BTC     FS:[SI],DX                                          ; 64 0F BB 14
_10F8H:  BTC     FS:[DI],DX                                          ; 64 0F BB 15
_10FCH:  BTC     GS:[BX+SI],DX                                       ; 65 0F BB 10
_1100H:  BTC     GS:[BX+DI],DX                                       ; 65 0F BB 11
_1104H:  BTC     GS:[BP+SI],DX                                       ; 65 0F BB 12
_1108H:  BTC     GS:[BP+DI],DX                                       ; 65 0F BB 13
_110CH:  BTC     GS:[BP],DX                                          ; 65 0F BB 56 00
_1111H:  BTC     GS:[SI],DX                                          ; 65 0F BB 14
_1115H:  BTC     GS:[DI],DX                                          ; 65 0F BB 15
_1119H:  BTC     DX,01H                                              ; 0F BA FA 01
_111DH:  BTC     DX,0FFH                                             ; 0F BA FA FF
_1121H:  BTC     AX,BX                                               ; 0F BB D8
_1124H:  BTC     CX,BX                                               ; 0F BB D9
_1127H:  BTC     DX,BX                                               ; 0F BB DA
_112AH:  BTC     BX,BX                                               ; 0F BB DB
_112DH:  BTC     SP,BX                                               ; 0F BB DC
_1130H:  BTC     BP,BX                                               ; 0F BB DD
_1133H:  BTC     SI,BX                                               ; 0F BB DE
_1136H:  BTC     DI,BX                                               ; 0F BB DF
_1139H:  BTC     DS:[BX+SI+1234H],BX                                 ; 0F BB 98 34 12
_113EH:  BTC     DS:[BX+DI+1234H],BX                                 ; 0F BB 99 34 12
_1143H:  BTC     SS:[BP+SI+1234H],BX                                 ; 0F BB 9A 34 12
_1148H:  BTC     SS:[BP+DI+1234H],BX                                 ; 0F BB 9B 34 12
_114DH:  BTC     SS:[BP+1234H],BX                                    ; 0F BB 9E 34 12
_1152H:  BTC     DS:[SI+1234H],BX                                    ; 0F BB 9C 34 12
_1157H:  BTC     DS:[DI+1234H],BX                                    ; 0F BB 9D 34 12
_115CH:  BTC     CS:[BX+SI],BX                                       ; 2E 0F BB 18
_1160H:  BTC     CS:[BX+DI],BX                                       ; 2E 0F BB 19
_1164H:  BTC     CS:[BP+SI],BX                                       ; 2E 0F BB 1A
_1168H:  BTC     CS:[BP+DI],BX                                       ; 2E 0F BB 1B
_116CH:  BTC     CS:[BP],BX                                          ; 2E 0F BB 5E 00
_1171H:  BTC     CS:[SI],BX                                          ; 2E 0F BB 1C
_1175H:  BTC     CS:[DI],BX                                          ; 2E 0F BB 1D
_1179H:  BTC     DS:[BX+SI],BX                                       ; 0F BB 18
_117CH:  BTC     DS:[BX+DI],BX                                       ; 0F BB 19
_117FH:  BTC     DS:[BP+SI],BX                                       ; 3E 0F BB 1A
_1183H:  BTC     DS:[BP+DI],BX                                       ; 3E 0F BB 1B
_1187H:  BTC     DS:[BP],BX                                          ; 3E 0F BB 5E 00
_118CH:  BTC     DS:[SI],BX                                          ; 0F BB 1C
_118FH:  BTC     DS:[DI],BX                                          ; 0F BB 1D
_1192H:  BTC     ES:[BX+SI],BX                                       ; 26 0F BB 18
_1196H:  BTC     ES:[BX+DI],BX                                       ; 26 0F BB 19
_119AH:  BTC     ES:[BP+SI],BX                                       ; 26 0F BB 1A
_119EH:  BTC     ES:[BP+DI],BX                                       ; 26 0F BB 1B
_11A2H:  BTC     ES:[BP],BX                                          ; 26 0F BB 5E 00
_11A7H:  BTC     ES:[SI],BX                                          ; 26 0F BB 1C
_11ABH:  BTC     ES:[DI],BX                                          ; 26 0F BB 1D
_11AFH:  BTC     SS:[BX+SI],BX                                       ; 36 0F BB 18
_11B3H:  BTC     SS:[BX+DI],BX                                       ; 36 0F BB 19
_11B7H:  BTC     SS:[BP+SI],BX                                       ; 0F BB 1A
_11BAH:  BTC     SS:[BP+DI],BX                                       ; 0F BB 1B
_11BDH:  BTC     SS:[BP],BX                                          ; 0F BB 5E 00
_11C1H:  BTC     SS:[SI],BX                                          ; 36 0F BB 1C
_11C5H:  BTC     SS:[DI],BX                                          ; 36 0F BB 1D
_11C9H:  BTC     FS:[BX+SI],BX                                       ; 64 0F BB 18
_11CDH:  BTC     FS:[BX+DI],BX                                       ; 64 0F BB 19
_11D1H:  BTC     FS:[BP+SI],BX                                       ; 64 0F BB 1A
_11D5H:  BTC     FS:[BP+DI],BX                                       ; 64 0F BB 1B
_11D9H:  BTC     FS:[BP],BX                                          ; 64 0F BB 5E 00
_11DEH:  BTC     FS:[SI],BX                                          ; 64 0F BB 1C
_11E2H:  BTC     FS:[DI],BX                                          ; 64 0F BB 1D
_11E6H:  BTC     GS:[BX+SI],BX                                       ; 65 0F BB 18
_11EAH:  BTC     GS:[BX+DI],BX                                       ; 65 0F BB 19
_11EEH:  BTC     GS:[BP+SI],BX                                       ; 65 0F BB 1A
_11F2H:  BTC     GS:[BP+DI],BX                                       ; 65 0F BB 1B
_11F6H:  BTC     GS:[BP],BX                                          ; 65 0F BB 5E 00
_11FBH:  BTC     GS:[SI],BX                                          ; 65 0F BB 1C
_11FFH:  BTC     GS:[DI],BX                                          ; 65 0F BB 1D
_1203H:  BTC     BX,01H                                              ; 0F BA FB 01
_1207H:  BTC     BX,0FFH                                             ; 0F BA FB FF
_120BH:  BTC     AX,SP                                               ; 0F BB E0
_120EH:  BTC     CX,SP                                               ; 0F BB E1
_1211H:  BTC     DX,SP                                               ; 0F BB E2
_1214H:  BTC     BX,SP                                               ; 0F BB E3
_1217H:  BTC     SP,SP                                               ; 0F BB E4
_121AH:  BTC     BP,SP                                               ; 0F BB E5
_121DH:  BTC     SI,SP                                               ; 0F BB E6
_1220H:  BTC     DI,SP                                               ; 0F BB E7
_1223H:  BTC     DS:[BX+SI+1234H],SP                                 ; 0F BB A0 34 12
_1228H:  BTC     DS:[BX+DI+1234H],SP                                 ; 0F BB A1 34 12
_122DH:  BTC     SS:[BP+SI+1234H],SP                                 ; 0F BB A2 34 12
_1232H:  BTC     SS:[BP+DI+1234H],SP                                 ; 0F BB A3 34 12
_1237H:  BTC     SS:[BP+1234H],SP                                    ; 0F BB A6 34 12
_123CH:  BTC     DS:[SI+1234H],SP                                    ; 0F BB A4 34 12
_1241H:  BTC     DS:[DI+1234H],SP                                    ; 0F BB A5 34 12
_1246H:  BTC     CS:[BX+SI],SP                                       ; 2E 0F BB 20
_124AH:  BTC     CS:[BX+DI],SP                                       ; 2E 0F BB 21
_124EH:  BTC     CS:[BP+SI],SP                                       ; 2E 0F BB 22
_1252H:  BTC     CS:[BP+DI],SP                                       ; 2E 0F BB 23
_1256H:  BTC     CS:[BP],SP                                          ; 2E 0F BB 66 00
_125BH:  BTC     CS:[SI],SP                                          ; 2E 0F BB 24
_125FH:  BTC     CS:[DI],SP                                          ; 2E 0F BB 25
_1263H:  BTC     DS:[BX+SI],SP                                       ; 0F BB 20
_1266H:  BTC     DS:[BX+DI],SP                                       ; 0F BB 21
_1269H:  BTC     DS:[BP+SI],SP                                       ; 3E 0F BB 22
_126DH:  BTC     DS:[BP+DI],SP                                       ; 3E 0F BB 23
_1271H:  BTC     DS:[BP],SP                                          ; 3E 0F BB 66 00
_1276H:  BTC     DS:[SI],SP                                          ; 0F BB 24
_1279H:  BTC     DS:[DI],SP                                          ; 0F BB 25
_127CH:  BTC     ES:[BX+SI],SP                                       ; 26 0F BB 20
_1280H:  BTC     ES:[BX+DI],SP                                       ; 26 0F BB 21
_1284H:  BTC     ES:[BP+SI],SP                                       ; 26 0F BB 22
_1288H:  BTC     ES:[BP+DI],SP                                       ; 26 0F BB 23
_128CH:  BTC     ES:[BP],SP                                          ; 26 0F BB 66 00
_1291H:  BTC     ES:[SI],SP                                          ; 26 0F BB 24
_1295H:  BTC     ES:[DI],SP                                          ; 26 0F BB 25
_1299H:  BTC     SS:[BX+SI],SP                                       ; 36 0F BB 20
_129DH:  BTC     SS:[BX+DI],SP                                       ; 36 0F BB 21
_12A1H:  BTC     SS:[BP+SI],SP                                       ; 0F BB 22
_12A4H:  BTC     SS:[BP+DI],SP                                       ; 0F BB 23
_12A7H:  BTC     SS:[BP],SP                                          ; 0F BB 66 00
_12ABH:  BTC     SS:[SI],SP                                          ; 36 0F BB 24
_12AFH:  BTC     SS:[DI],SP                                          ; 36 0F BB 25
_12B3H:  BTC     FS:[BX+SI],SP                                       ; 64 0F BB 20
_12B7H:  BTC     FS:[BX+DI],SP                                       ; 64 0F BB 21
_12BBH:  BTC     FS:[BP+SI],SP                                       ; 64 0F BB 22
_12BFH:  BTC     FS:[BP+DI],SP                                       ; 64 0F BB 23
_12C3H:  BTC     FS:[BP],SP                                          ; 64 0F BB 66 00
_12C8H:  BTC     FS:[SI],SP                                          ; 64 0F BB 24
_12CCH:  BTC     FS:[DI],SP                                          ; 64 0F BB 25
_12D0H:  BTC     GS:[BX+SI],SP                                       ; 65 0F BB 20
_12D4H:  BTC     GS:[BX+DI],SP                                       ; 65 0F BB 21
_12D8H:  BTC     GS:[BP+SI],SP                                       ; 65 0F BB 22
_12DCH:  BTC     GS:[BP+DI],SP                                       ; 65 0F BB 23
_12E0H:  BTC     GS:[BP],SP                                          ; 65 0F BB 66 00
_12E5H:  BTC     GS:[SI],SP                                          ; 65 0F BB 24
_12E9H:  BTC     GS:[DI],SP                                          ; 65 0F BB 25
_12EDH:  BTC     SP,01H                                              ; 0F BA FC 01
_12F1H:  BTC     SP,0FFH                                             ; 0F BA FC FF
_12F5H:  BTC     AX,BP                                               ; 0F BB E8
_12F8H:  BTC     CX,BP                                               ; 0F BB E9
_12FBH:  BTC     DX,BP                                               ; 0F BB EA
_12FEH:  BTC     BX,BP                                               ; 0F BB EB
_1301H:  BTC     SP,BP                                               ; 0F BB EC
_1304H:  BTC     BP,BP                                               ; 0F BB ED
_1307H:  BTC     SI,BP                                               ; 0F BB EE
_130AH:  BTC     DI,BP                                               ; 0F BB EF
_130DH:  BTC     DS:[BX+SI+1234H],BP                                 ; 0F BB A8 34 12
_1312H:  BTC     DS:[BX+DI+1234H],BP                                 ; 0F BB A9 34 12
_1317H:  BTC     SS:[BP+SI+1234H],BP                                 ; 0F BB AA 34 12
_131CH:  BTC     SS:[BP+DI+1234H],BP                                 ; 0F BB AB 34 12
_1321H:  BTC     SS:[BP+1234H],BP                                    ; 0F BB AE 34 12
_1326H:  BTC     DS:[SI+1234H],BP                                    ; 0F BB AC 34 12
_132BH:  BTC     DS:[DI+1234H],BP                                    ; 0F BB AD 34 12
_1330H:  BTC     CS:[BX+SI],BP                                       ; 2E 0F BB 28
_1334H:  BTC     CS:[BX+DI],BP                                       ; 2E 0F BB 29
_1338H:  BTC     CS:[BP+SI],BP                                       ; 2E 0F BB 2A
_133CH:  BTC     CS:[BP+DI],BP                                       ; 2E 0F BB 2B
_1340H:  BTC     CS:[BP],BP                                          ; 2E 0F BB 6E 00
_1345H:  BTC     CS:[SI],BP                                          ; 2E 0F BB 2C
_1349H:  BTC     CS:[DI],BP                                          ; 2E 0F BB 2D
_134DH:  BTC     DS:[BX+SI],BP                                       ; 0F BB 28
_1350H:  BTC     DS:[BX+DI],BP                                       ; 0F BB 29
_1353H:  BTC     DS:[BP+SI],BP                                       ; 3E 0F BB 2A
_1357H:  BTC     DS:[BP+DI],BP                                       ; 3E 0F BB 2B
_135BH:  BTC     DS:[BP],BP                                          ; 3E 0F BB 6E 00
_1360H:  BTC     DS:[SI],BP                                          ; 0F BB 2C
_1363H:  BTC     DS:[DI],BP                                          ; 0F BB 2D
_1366H:  BTC     ES:[BX+SI],BP                                       ; 26 0F BB 28
_136AH:  BTC     ES:[BX+DI],BP                                       ; 26 0F BB 29
_136EH:  BTC     ES:[BP+SI],BP                                       ; 26 0F BB 2A
_1372H:  BTC     ES:[BP+DI],BP                                       ; 26 0F BB 2B
_1376H:  BTC     ES:[BP],BP                                          ; 26 0F BB 6E 00
_137BH:  BTC     ES:[SI],BP                                          ; 26 0F BB 2C
_137FH:  BTC     ES:[DI],BP                                          ; 26 0F BB 2D
_1383H:  BTC     SS:[BX+SI],BP                                       ; 36 0F BB 28
_1387H:  BTC     SS:[BX+DI],BP                                       ; 36 0F BB 29
_138BH:  BTC     SS:[BP+SI],BP                                       ; 0F BB 2A
_138EH:  BTC     SS:[BP+DI],BP                                       ; 0F BB 2B
_1391H:  BTC     SS:[BP],BP                                          ; 0F BB 6E 00
_1395H:  BTC     SS:[SI],BP                                          ; 36 0F BB 2C
_1399H:  BTC     SS:[DI],BP                                          ; 36 0F BB 2D
_139DH:  BTC     FS:[BX+SI],BP                                       ; 64 0F BB 28
_13A1H:  BTC     FS:[BX+DI],BP                                       ; 64 0F BB 29
_13A5H:  BTC     FS:[BP+SI],BP                                       ; 64 0F BB 2A
_13A9H:  BTC     FS:[BP+DI],BP                                       ; 64 0F BB 2B
_13ADH:  BTC     FS:[BP],BP                                          ; 64 0F BB 6E 00
_13B2H:  BTC     FS:[SI],BP                                          ; 64 0F BB 2C
_13B6H:  BTC     FS:[DI],BP                                          ; 64 0F BB 2D
_13BAH:  BTC     GS:[BX+SI],BP                                       ; 65 0F BB 28
_13BEH:  BTC     GS:[BX+DI],BP                                       ; 65 0F BB 29
_13C2H:  BTC     GS:[BP+SI],BP                                       ; 65 0F BB 2A
_13C6H:  BTC     GS:[BP+DI],BP                                       ; 65 0F BB 2B
_13CAH:  BTC     GS:[BP],BP                                          ; 65 0F BB 6E 00
_13CFH:  BTC     GS:[SI],BP                                          ; 65 0F BB 2C
_13D3H:  BTC     GS:[DI],BP                                          ; 65 0F BB 2D
_13D7H:  BTC     BP,01H                                              ; 0F BA FD 01
_13DBH:  BTC     BP,0FFH                                             ; 0F BA FD FF
_13DFH:  BTC     AX,SI                                               ; 0F BB F0
_13E2H:  BTC     CX,SI                                               ; 0F BB F1
_13E5H:  BTC     DX,SI                                               ; 0F BB F2
_13E8H:  BTC     BX,SI                                               ; 0F BB F3
_13EBH:  BTC     SP,SI                                               ; 0F BB F4
_13EEH:  BTC     BP,SI                                               ; 0F BB F5
_13F1H:  BTC     SI,SI                                               ; 0F BB F6
_13F4H:  BTC     DI,SI                                               ; 0F BB F7
_13F7H:  BTC     DS:[BX+SI+1234H],SI                                 ; 0F BB B0 34 12
_13FCH:  BTC     DS:[BX+DI+1234H],SI                                 ; 0F BB B1 34 12
_1401H:  BTC     SS:[BP+SI+1234H],SI                                 ; 0F BB B2 34 12
_1406H:  BTC     SS:[BP+DI+1234H],SI                                 ; 0F BB B3 34 12
_140BH:  BTC     SS:[BP+1234H],SI                                    ; 0F BB B6 34 12
_1410H:  BTC     DS:[SI+1234H],SI                                    ; 0F BB B4 34 12
_1415H:  BTC     DS:[DI+1234H],SI                                    ; 0F BB B5 34 12
_141AH:  BTC     CS:[BX+SI],SI                                       ; 2E 0F BB 30
_141EH:  BTC     CS:[BX+DI],SI                                       ; 2E 0F BB 31
_1422H:  BTC     CS:[BP+SI],SI                                       ; 2E 0F BB 32
_1426H:  BTC     CS:[BP+DI],SI                                       ; 2E 0F BB 33
_142AH:  BTC     CS:[BP],SI                                          ; 2E 0F BB 76 00
_142FH:  BTC     CS:[SI],SI                                          ; 2E 0F BB 34
_1433H:  BTC     CS:[DI],SI                                          ; 2E 0F BB 35
_1437H:  BTC     DS:[BX+SI],SI                                       ; 0F BB 30
_143AH:  BTC     DS:[BX+DI],SI                                       ; 0F BB 31
_143DH:  BTC     DS:[BP+SI],SI                                       ; 3E 0F BB 32
_1441H:  BTC     DS:[BP+DI],SI                                       ; 3E 0F BB 33
_1445H:  BTC     DS:[BP],SI                                          ; 3E 0F BB 76 00
_144AH:  BTC     DS:[SI],SI                                          ; 0F BB 34
_144DH:  BTC     DS:[DI],SI                                          ; 0F BB 35
_1450H:  BTC     ES:[BX+SI],SI                                       ; 26 0F BB 30
_1454H:  BTC     ES:[BX+DI],SI                                       ; 26 0F BB 31
_1458H:  BTC     ES:[BP+SI],SI                                       ; 26 0F BB 32
_145CH:  BTC     ES:[BP+DI],SI                                       ; 26 0F BB 33
_1460H:  BTC     ES:[BP],SI                                          ; 26 0F BB 76 00
_1465H:  BTC     ES:[SI],SI                                          ; 26 0F BB 34
_1469H:  BTC     ES:[DI],SI                                          ; 26 0F BB 35
_146DH:  BTC     SS:[BX+SI],SI                                       ; 36 0F BB 30
_1471H:  BTC     SS:[BX+DI],SI                                       ; 36 0F BB 31
_1475H:  BTC     SS:[BP+SI],SI                                       ; 0F BB 32
_1478H:  BTC     SS:[BP+DI],SI                                       ; 0F BB 33
_147BH:  BTC     SS:[BP],SI                                          ; 0F BB 76 00
_147FH:  BTC     SS:[SI],SI                                          ; 36 0F BB 34
_1483H:  BTC     SS:[DI],SI                                          ; 36 0F BB 35
_1487H:  BTC     FS:[BX+SI],SI                                       ; 64 0F BB 30
_148BH:  BTC     FS:[BX+DI],SI                                       ; 64 0F BB 31
_148FH:  BTC     FS:[BP+SI],SI                                       ; 64 0F BB 32
_1493H:  BTC     FS:[BP+DI],SI                                       ; 64 0F BB 33
_1497H:  BTC     FS:[BP],SI                                          ; 64 0F BB 76 00
_149CH:  BTC     FS:[SI],SI                                          ; 64 0F BB 34
_14A0H:  BTC     FS:[DI],SI                                          ; 64 0F BB 35
_14A4H:  BTC     GS:[BX+SI],SI                                       ; 65 0F BB 30
_14A8H:  BTC     GS:[BX+DI],SI                                       ; 65 0F BB 31
_14ACH:  BTC     GS:[BP+SI],SI                                       ; 65 0F BB 32
_14B0H:  BTC     GS:[BP+DI],SI                                       ; 65 0F BB 33
_14B4H:  BTC     GS:[BP],SI                                          ; 65 0F BB 76 00
_14B9H:  BTC     GS:[SI],SI                                          ; 65 0F BB 34
_14BDH:  BTC     GS:[DI],SI                                          ; 65 0F BB 35
_14C1H:  BTC     SI,01H                                              ; 0F BA FE 01
_14C5H:  BTC     SI,0FFH                                             ; 0F BA FE FF
_14C9H:  BTC     AX,DI                                               ; 0F BB F8
_14CCH:  BTC     CX,DI                                               ; 0F BB F9
_14CFH:  BTC     DX,DI                                               ; 0F BB FA
_14D2H:  BTC     BX,DI                                               ; 0F BB FB
_14D5H:  BTC     SP,DI                                               ; 0F BB FC
_14D8H:  BTC     BP,DI                                               ; 0F BB FD
_14DBH:  BTC     SI,DI                                               ; 0F BB FE
_14DEH:  BTC     DI,DI                                               ; 0F BB FF
_14E1H:  BTC     DS:[BX+SI+1234H],DI                                 ; 0F BB B8 34 12
_14E6H:  BTC     DS:[BX+DI+1234H],DI                                 ; 0F BB B9 34 12
_14EBH:  BTC     SS:[BP+SI+1234H],DI                                 ; 0F BB BA 34 12
_14F0H:  BTC     SS:[BP+DI+1234H],DI                                 ; 0F BB BB 34 12
_14F5H:  BTC     SS:[BP+1234H],DI                                    ; 0F BB BE 34 12
_14FAH:  BTC     DS:[SI+1234H],DI                                    ; 0F BB BC 34 12
_14FFH:  BTC     DS:[DI+1234H],DI                                    ; 0F BB BD 34 12
_1504H:  BTC     CS:[BX+SI],DI                                       ; 2E 0F BB 38
_1508H:  BTC     CS:[BX+DI],DI                                       ; 2E 0F BB 39
_150CH:  BTC     CS:[BP+SI],DI                                       ; 2E 0F BB 3A
_1510H:  BTC     CS:[BP+DI],DI                                       ; 2E 0F BB 3B
_1514H:  BTC     CS:[BP],DI                                          ; 2E 0F BB 7E 00
_1519H:  BTC     CS:[SI],DI                                          ; 2E 0F BB 3C
_151DH:  BTC     CS:[DI],DI                                          ; 2E 0F BB 3D
_1521H:  BTC     DS:[BX+SI],DI                                       ; 0F BB 38
_1524H:  BTC     DS:[BX+DI],DI                                       ; 0F BB 39
_1527H:  BTC     DS:[BP+SI],DI                                       ; 3E 0F BB 3A
_152BH:  BTC     DS:[BP+DI],DI                                       ; 3E 0F BB 3B
_152FH:  BTC     DS:[BP],DI                                          ; 3E 0F BB 7E 00
_1534H:  BTC     DS:[SI],DI                                          ; 0F BB 3C
_1537H:  BTC     DS:[DI],DI                                          ; 0F BB 3D
_153AH:  BTC     ES:[BX+SI],DI                                       ; 26 0F BB 38
_153EH:  BTC     ES:[BX+DI],DI                                       ; 26 0F BB 39
_1542H:  BTC     ES:[BP+SI],DI                                       ; 26 0F BB 3A
_1546H:  BTC     ES:[BP+DI],DI                                       ; 26 0F BB 3B
_154AH:  BTC     ES:[BP],DI                                          ; 26 0F BB 7E 00
_154FH:  BTC     ES:[SI],DI                                          ; 26 0F BB 3C
_1553H:  BTC     ES:[DI],DI                                          ; 26 0F BB 3D
_1557H:  BTC     SS:[BX+SI],DI                                       ; 36 0F BB 38
_155BH:  BTC     SS:[BX+DI],DI                                       ; 36 0F BB 39
_155FH:  BTC     SS:[BP+SI],DI                                       ; 0F BB 3A
_1562H:  BTC     SS:[BP+DI],DI                                       ; 0F BB 3B
_1565H:  BTC     SS:[BP],DI                                          ; 0F BB 7E 00
_1569H:  BTC     SS:[SI],DI                                          ; 36 0F BB 3C
_156DH:  BTC     SS:[DI],DI                                          ; 36 0F BB 3D
_1571H:  BTC     FS:[BX+SI],DI                                       ; 64 0F BB 38
_1575H:  BTC     FS:[BX+DI],DI                                       ; 64 0F BB 39
_1579H:  BTC     FS:[BP+SI],DI                                       ; 64 0F BB 3A
_157DH:  BTC     FS:[BP+DI],DI                                       ; 64 0F BB 3B
_1581H:  BTC     FS:[BP],DI                                          ; 64 0F BB 7E 00
_1586H:  BTC     FS:[SI],DI                                          ; 64 0F BB 3C
_158AH:  BTC     FS:[DI],DI                                          ; 64 0F BB 3D
_158EH:  BTC     GS:[BX+SI],DI                                       ; 65 0F BB 38
_1592H:  BTC     GS:[BX+DI],DI                                       ; 65 0F BB 39
_1596H:  BTC     GS:[BP+SI],DI                                       ; 65 0F BB 3A
_159AH:  BTC     GS:[BP+DI],DI                                       ; 65 0F BB 3B
_159EH:  BTC     GS:[BP],DI                                          ; 65 0F BB 7E 00
_15A3H:  BTC     GS:[SI],DI                                          ; 65 0F BB 3C
_15A7H:  BTC     GS:[DI],DI                                          ; 65 0F BB 3D
_15ABH:  BTC     DI,01H                                              ; 0F BA FF 01
_15AFH:  BTC     DI,0FFH                                             ; 0F BA FF FF
_15B3H:  BTC     EAX,0FFH                                            ; 66 0F BA F8 FF
_15B8H:  BTC     ECX,0FFH                                            ; 66 0F BA F9 FF
_15BDH:  BTC     EDX,0FFH                                            ; 66 0F BA FA FF
_15C2H:  BTC     EBX,0FFH                                            ; 66 0F BA FB FF
_15C7H:  BTC     ESP,0FFH                                            ; 66 0F BA FC FF
_15CCH:  BTC     EBP,0FFH                                            ; 66 0F BA FD FF
_15D1H:  BTC     ESI,0FFH                                            ; 66 0F BA FE FF
_15D6H:  BTC     EDI,0FFH                                            ; 66 0F BA FF FF
_15DBH:  JO      _1715H                                              ; 0F 80 36 01
_15DFH:  JNO     _0100H                                              ; 0F 81 1D EB
_15E3H:  JB      _1715H                                              ; 0F 82 2E 01
_15E7H:  JNB     _0100H                                              ; 0F 83 15 EB
_15EBH:  JZ      _1715H                                              ; 0F 84 26 01
_15EFH:  JNZ     _0100H                                              ; 0F 85 0D EB
_15F3H:  JBE     _1715H                                              ; 0F 86 1E 01
_15F7H:  JNBE    _0100H                                              ; 0F 87 05 EB
_15FBH:  JS      _1715H                                              ; 0F 88 16 01
_15FFH:  JNS     _0100H                                              ; 0F 89 FD EA
_1603H:  JP      _1715H                                              ; 0F 8A 0E 01
_1607H:  JNP     _0100H                                              ; 0F 8B F5 EA
_160BH:  JL      _1715H                                              ; 0F 8C 06 01
_160FH:  JNL     _0100H                                              ; 0F 8D ED EA
_1613H:  JLE     _1715H                                              ; 0F 8E FE 00
_1617H:  JNLE    _0100H                                              ; 0F 8F E5 EA
_161BH:  JO      _161BH                                              ; 70 FE
_161DH:  JNO     _1640H                                              ; 71 21
_161FH:  JB      _161BH                                              ; 72 FA
_1621H:  JNB     _1640H                                              ; 73 1D
_1623H:  JZ      _161BH                                              ; 74 F6
_1625H:  JNZ     _1640H                                              ; 75 19
_1627H:  JBE     _161BH                                              ; 76 F2
_1629H:  JNBE    _1640H                                              ; 77 15
_162BH:  JS      _161BH                                              ; 78 EE
_162DH:  JNS     _1640H                                              ; 79 11
_162FH:  JP      _161BH                                              ; 7A EA
_1631H:  JNP     _1640H                                              ; 7B 0D
_1633H:  JL      _161BH                                              ; 7C E6
_1635H:  JNL     _1640H                                              ; 7D 09
_1637H:  JLE     _161BH                                              ; 7E E2
_1639H:  JNLE    _1640H                                              ; 7F 05
_163BH:  JCXZ    _161BH                                              ; E3 DE
_163DH:  JECXZ   _1640H                                              ; 67 E3 00
_1640H:  LOCK BTC     DS:[EAX+EAX+00004321H],AX                      ; F0 67 0F BB 84 00 21 43 00 00
_164AH:  LOCK BTC     DS:[EAX+EAX*2+00004321H],AX                    ; F0 67 0F BB 84 40 21 43 00 00
_1654H:  LOCK BTC     DS:[EAX+EAX*4+00004321H],AX                    ; F0 67 0F BB 84 80 21 43 00 00
_165EH:  LOCK BTC     DS:[EAX+EAX*8+00004321H],AX                    ; F0 67 0F BB 84 C0 21 43 00 00
_1668H:  LOCK BTC     DS:[ESI+00004321H],AX                          ; F0 67 0F BB 86 21 43 00 00
_1671H:  LOCK BTC     DS:[EDI+00004321H],AX                          ; F0 67 0F BB 87 21 43 00 00
_167AH:  LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH         ; F0 66 36 67 0F BA BC C3 78 56 34 12 9A
_1687H:  LOCK BTC     DS:[EAX+EAX+00004321H],AX                      ; F0 67 0F BB 84 00 21 43 00 00
_1691H:  LOCK BTC     DS:[EAX+EAX*2+00004321H],AX                    ; F0 67 0F BB 84 40 21 43 00 00
_169BH:  LOCK BTC     DS:[EAX+EAX*4+00004321H],AX                    ; F0 67 0F BB 84 80 21 43 00 00
_16A5H:  LOCK BTC     DS:[EAX+EAX*8+00004321H],AX                    ; F0 67 0F BB 84 C0 21 43 00 00
_16AFH:  LOCK BTC     DS:[ESI+00004321H],AX                          ; F0 67 0F BB 86 21 43 00 00
_16B8H:  LOCK BTC     DS:[EDI+00004321H],AX                          ; F0 67 0F BB 87 21 43 00 00
_16C1H:  LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH         ; F0 66 36 67 0F BA BC C3 78 56 34 12 9A
_16CEH:  LOCK BTC     DS:[EBX+EBP*8+00004321H],AX                    ; F0 67 0F BB 84 EB 21 43 00 00
_16D8H:  LOCK BTC     SS:[EBP+00004321H],AX                          ; F0 67 0F BB 85 21 43 00 00
_16E1H:  LOCK BTC     DS:[ECX*4+00004321H],AX                        ; F0 67 0F BB 04 8D 21 43 00 00
_16EBH:  LOCK BTC     SS:[EBP*8+000000B0H],AX                        ; F0 67 0F BB 04 ED B0 00 00 00
_16F5H:  LOCK BTC     DS:[ESI*4+00004321H],AX                        ; F0 67 0F BB 04 B5 21 43 00 00
_16FFH:  LOCK BTC     DS:[EDI*2+87654321H],AX                        ; F0 67 0F BB 04 7D 21 43 65 87
_1709H:  LOCK BTC     dword ptr SS:[EBP+EBX*4+12345678H],9AH         ; F0 66 67 0F BA BC 9D 78 56 34 12 9A
_1715H:  AAD                                                         ; D5 0A
