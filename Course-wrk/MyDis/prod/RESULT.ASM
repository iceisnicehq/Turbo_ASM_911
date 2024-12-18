_0100H:  BTC     DS:[EAX*4],EAX                                      ; 66 67 0F BB 04 85 00 00 00 00
_010AH:  BTC     DS:[EBX*4],AX                                       ; 67 0F BB 04 9D 00 00 00 00
_0113H:  BTC     SS:[EBP*4],AX                                       ; 67 0F BB 04 AD 00 00 00 00
_011CH:  BTC     SS:[EBP*4+00000001H],EBP                            ; 66 67 0F BB 2C AD 01 00 00 00
_0126H:  BTC     SS:[EBP*4+00000100H],EBP                            ; 66 67 0F BB 2C AD 00 01 00 00
_0130H:  BTC     word ptr DS:[EAX+EBP],0FFH                          ; 3E 67 0F BA 3C 28 FF
_0137H:  BTC     dword ptr DS:[EAX+EBP*8],0FFH                       ; 66 3E 67 0F BA 3C E8 FF
_013FH:  BTC     word ptr SS:[EBP+EAX],0FFH                          ; 67 0F BA 7C 05 00 FF
_0146H:  BTC     dword ptr SS:[EBP+EAX*8],0FFH                       ; 66 67 0F BA 7C C5 00 FF
_014EH:  BTC     word ptr SS:[ESP+EAX],0FFH                          ; 67 0F BA 3C 04 FF
_0154H:  BTC     dword ptr SS:[ESP+EAX*8],0FFH                       ; 66 67 0F BA 3C C4 FF
_015BH:  BTC     word ptr SS:[ESP+EBP],0FFH                          ; 67 0F BA 3C 2C FF
_0161H:  BTC     dword ptr SS:[ESP+EBP*8],0FFH                       ; 66 67 0F BA 3C EC FF
_0168H:  BTC     word ptr SS:[EBP],0FFH                              ; 67 0F BA 7D 00 FF
_016EH:  BTC     dword ptr SS:[ESP],0FFH                             ; 66 67 0F BA 3C 24 FF
_0175H:  BTC     DS:[BX+SI],AX                                       ; 0F BB 00
_0178H:  BTC     DS:[BX+DI],AX                                       ; 0F BB 01
_017BH:  BTC     SS:[BP+SI],AX                                       ; 0F BB 02
_017EH:  BTC     SS:[BP+DI],AX                                       ; 0F BB 03
_0181H:  BTC     SS:[BP],AX                                          ; 0F BB 46 00
_0185H:  BTC     DS:[SI],AX                                          ; 0F BB 04
_0188H:  BTC     DS:[DI],AX                                          ; 0F BB 05
_018BH:  BTC     DS:[BX+0FEDCH],AX                                   ; 0F BB 87 DC FE
_0190H:  LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH       ; F0 66 67 0F BA BC D8 21 43 65 A7 FF
_019CH:  LOCK BTC     word ptr DS:[EAX+EBP*8+87654321H],0FFH         ; F0 3E 67 0F BA BC E8 21 43 65 87 FF
_01A8H:  LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX                  ; F0 66 2E 67 0F BB 84 D8 21 43 65 B7
_01B4H:  LOCK BTC     DS:[EAX+EBP*8+87654321H],AX                    ; F0 3E 67 0F BB 84 E8 21 43 65 87
_01BFH:  BTC     ES:[1234H],AX                                       ; 26 0F BB 06 34 12
_01C5H:  BTC     SS:[12345678H],AX                                   ; 36 67 0F BB 05 78 56 34 12
_01CEH:  BTC     dword ptr FS:[0123H],01H                            ; 66 64 0F BA 3E 23 01 01
_01D6H:  BTC     dword ptr GS:[12345678H],10H                        ; 66 65 67 0F BA 3D 78 56 34 12 10
_01E1H:  BTC     DS:[1234H],AX                                       ; 0F BB 06 34 12
_01E6H:  BTC     DS:[12345678H],AX                                   ; 67 0F BB 05 78 56 34 12
_01EEH:  BTC     dword ptr ES:[0123H],01H                            ; 66 26 0F BA 3E 23 01 01
_01F6H:  BTC     dword ptr SS:[12345678H],10H                        ; 66 36 67 0F BA 3D 78 56 34 12 10
_0201H:  BTC     ES:[1234H],AX                                       ; 26 0F BB 06 34 12
_0207H:  BTC     CS:[12345678H],AX                                   ; 2E 67 0F BB 05 78 56 34 12
_0210H:  BTC     dword ptr ES:[0123H],01H                            ; 66 26 0F BA 3E 23 01 01
_0218H:  BTC     dword ptr SS:[12345678H],10H                        ; 66 36 67 0F BA 3D 78 56 34 12 10
_0223H:  BTC     word ptr DS:[BX+SI],0A0H                            ; 0F BA 38 A0
_0227H:  BTC     dword ptr DS:[BX+SI],0B0H                           ; 66 0F BA 38 B0
_022CH:  BTC     word ptr DS:[BX+DI],0A0H                            ; 0F BA 39 A0
_0230H:  BTC     dword ptr DS:[BX+DI],0B0H                           ; 66 0F BA 39 B0
_0235H:  BTC     word ptr SS:[BP+SI],0A0H                            ; 0F BA 3A A0
_0239H:  BTC     dword ptr SS:[BP+SI],0B0H                           ; 66 0F BA 3A B0
_023EH:  BTC     word ptr SS:[BP+DI],0A0H                            ; 0F BA 3B A0
_0242H:  BTC     dword ptr SS:[BP+DI],0B0H                           ; 66 0F BA 3B B0
_0247H:  BTC     word ptr SS:[BP],0A0H                               ; 0F BA 7E 00 A0
_024CH:  BTC     dword ptr SS:[BP],0B0H                              ; 66 0F BA 7E 00 B0
_0252H:  BTC     word ptr DS:[DI],0A0H                               ; 0F BA 3D A0
_0256H:  BTC     dword ptr DS:[DI],0B0H                              ; 66 0F BA 3D B0
_025BH:  BTC     word ptr DS:[SI],0A0H                               ; 0F BA 3C A0
_025FH:  BTC     dword ptr DS:[SI],0B0H                              ; 66 0F BA 3C B0
_0264H:  BTC     DS:[EAX+EAX*2+00000100H],AX                         ; 67 0F BB 84 40 00 01 00 00
_026DH:  BTC     DS:[EBX+EBP*4+12345678H],AX                         ; 3E 67 0F BB 84 AB 78 56 34 12
_0277H:  BTC     SS:[EBP+EBP],AX                                     ; 67 0F BB 44 2D 00
_027DH:  BTC     SS:[ESP+EBP],AX                                     ; 67 0F BB 04 2C
_0282H:  BTC     DS:[EDX+EBX*8],AX                                   ; 67 0F BB 04 DA
_0287H:  BTC     DS:[EBX+ECX*2+01H],AX                               ; 67 0F BB 44 4B 01
_028DH:  BTC     DS:[ECX+EDX*4+00000100H],AX                         ; 67 0F BB 84 91 00 01 00 00
_0296H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX                        ; 67 0F BB 84 C0 D0 C0 B0 A0
_029FH:  BTC     SS:[EBP+EBP+10203040H],AX                           ; 67 0F BB 84 2D 40 30 20 10
_02A8H:  LOCK BTC     DS:[BX+SI+1234H],AX                            ; F0 0F BB 80 34 12
_02AEH:  LOCK BTC     DS:[BX+DI+1234H],AX                            ; F0 0F BB 81 34 12
_02B4H:  LOCK BTC     SS:[BP+SI+1234H],AX                            ; F0 0F BB 82 34 12
_02BAH:  LOCK BTC     SS:[BP+DI+1234H],AX                            ; F0 0F BB 83 34 12
_02C0H:  LOCK BTC     SS:[BP+1234H],AX                               ; F0 0F BB 86 34 12
_02C6H:  LOCK BTC     DS:[SI+1234H],AX                               ; F0 0F BB 84 34 12
_02CCH:  LOCK BTC     DS:[DI+1234H],AX                               ; F0 0F BB 85 34 12
_02D2H:  BTC     DS:[EAX+EAX*2+00000100H],CX                         ; 67 0F BB 8C 40 00 01 00 00
_02DBH:  BTC     DS:[EBX+EBP*4+12345678H],CX                         ; 3E 67 0F BB 8C AB 78 56 34 12
_02E5H:  BTC     SS:[EBP+EBP],CX                                     ; 67 0F BB 4C 2D 00
_02EBH:  BTC     SS:[ESP+EBP],CX                                     ; 67 0F BB 0C 2C
_02F0H:  BTC     DS:[EDX+EBX*8],CX                                   ; 67 0F BB 0C DA
_02F5H:  BTC     DS:[EBX+ECX*2+01H],CX                               ; 67 0F BB 4C 4B 01
_02FBH:  BTC     DS:[ECX+EDX*4+00000100H],CX                         ; 67 0F BB 8C 91 00 01 00 00
_0304H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX                        ; 67 0F BB 8C C0 D0 C0 B0 A0
_030DH:  BTC     SS:[EBP+EBP+10203040H],CX                           ; 67 0F BB 8C 2D 40 30 20 10
_0316H:  LOCK BTC     DS:[BX+SI],CX                                  ; F0 0F BB 08
_031AH:  LOCK BTC     DS:[BX+DI],CX                                  ; F0 0F BB 09
_031EH:  LOCK BTC     SS:[BP+SI],CX                                  ; F0 0F BB 0A
_0322H:  LOCK BTC     SS:[BP+DI],CX                                  ; F0 0F BB 0B
_0326H:  LOCK BTC     SS:[BP],CX                                     ; F0 0F BB 4E 00
_032BH:  LOCK BTC     DS:[SI],CX                                     ; F0 0F BB 0C
_032FH:  LOCK BTC     DS:[DI],CX                                     ; F0 0F BB 0D
_0333H:  LOCK BTC     DS:[BX+SI+1234H],CX                            ; F0 0F BB 88 34 12
_0339H:  LOCK BTC     DS:[BX+DI+1234H],CX                            ; F0 0F BB 89 34 12
_033FH:  LOCK BTC     SS:[BP+SI+1234H],CX                            ; F0 0F BB 8A 34 12
_0345H:  LOCK BTC     SS:[BP+DI+1234H],CX                            ; F0 0F BB 8B 34 12
_034BH:  LOCK BTC     SS:[BP+1234H],CX                               ; F0 0F BB 8E 34 12
_0351H:  LOCK BTC     DS:[SI+1234H],CX                               ; F0 0F BB 8C 34 12
_0357H:  LOCK BTC     DS:[DI+1234H],CX                               ; F0 0F BB 8D 34 12
_035DH:  BTC     DS:[EAX+EAX*2+00000100H],DX                         ; 67 0F BB 94 40 00 01 00 00
_0366H:  BTC     DS:[EBX+EBP*4+12345678H],DX                         ; 3E 67 0F BB 94 AB 78 56 34 12
_0370H:  BTC     SS:[EBP+EBP],DX                                     ; 67 0F BB 54 2D 00
_0376H:  BTC     SS:[ESP+EBP],DX                                     ; 67 0F BB 14 2C
_037BH:  BTC     DS:[EDX+EBX*8],DX                                   ; 67 0F BB 14 DA
_0380H:  BTC     DS:[EBX+ECX*2+01H],DX                               ; 67 0F BB 54 4B 01
_0386H:  BTC     DS:[ECX+EDX*4+00000100H],DX                         ; 67 0F BB 94 91 00 01 00 00
_038FH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX                        ; 67 0F BB 94 C0 D0 C0 B0 A0
_0398H:  BTC     SS:[EBP+EBP+10203040H],DX                           ; 67 0F BB 94 2D 40 30 20 10
_03A1H:  LOCK BTC     DS:[BX+SI],DX                                  ; F0 0F BB 10
_03A5H:  LOCK BTC     DS:[BX+DI],DX                                  ; F0 0F BB 11
_03A9H:  LOCK BTC     SS:[BP+SI],DX                                  ; F0 0F BB 12
_03ADH:  LOCK BTC     SS:[BP+DI],DX                                  ; F0 0F BB 13
_03B1H:  LOCK BTC     SS:[BP],DX                                     ; F0 0F BB 56 00
_03B6H:  LOCK BTC     DS:[SI],DX                                     ; F0 0F BB 14
_03BAH:  LOCK BTC     DS:[DI],DX                                     ; F0 0F BB 15
_03BEH:  LOCK BTC     DS:[BX+SI+1234H],DX                            ; F0 0F BB 90 34 12
_03C4H:  LOCK BTC     DS:[BX+DI+1234H],DX                            ; F0 0F BB 91 34 12
_03CAH:  LOCK BTC     SS:[BP+SI+1234H],DX                            ; F0 0F BB 92 34 12
_03D0H:  LOCK BTC     SS:[BP+DI+1234H],DX                            ; F0 0F BB 93 34 12
_03D6H:  LOCK BTC     SS:[BP+1234H],DX                               ; F0 0F BB 96 34 12
_03DCH:  LOCK BTC     DS:[SI+1234H],DX                               ; F0 0F BB 94 34 12
_03E2H:  LOCK BTC     DS:[DI+1234H],DX                               ; F0 0F BB 95 34 12
_03E8H:  BTC     DS:[EAX+EAX*2+00000100H],BX                         ; 67 0F BB 9C 40 00 01 00 00
_03F1H:  BTC     DS:[EBX+EBP*4+12345678H],BX                         ; 3E 67 0F BB 9C AB 78 56 34 12
_03FBH:  BTC     SS:[EBP+EBP],BX                                     ; 67 0F BB 5C 2D 00
_0401H:  BTC     SS:[ESP+EBP],BX                                     ; 67 0F BB 1C 2C
_0406H:  BTC     DS:[EDX+EBX*8],BX                                   ; 67 0F BB 1C DA
_040BH:  BTC     DS:[EBX+ECX*2+01H],BX                               ; 67 0F BB 5C 4B 01
_0411H:  BTC     DS:[ECX+EDX*4+00000100H],BX                         ; 67 0F BB 9C 91 00 01 00 00
_041AH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX                        ; 67 0F BB 9C C0 D0 C0 B0 A0
_0423H:  BTC     SS:[EBP+EBP+10203040H],BX                           ; 67 0F BB 9C 2D 40 30 20 10
_042CH:  LOCK BTC     DS:[BX+SI],BX                                  ; F0 0F BB 18
_0430H:  LOCK BTC     DS:[BX+DI],BX                                  ; F0 0F BB 19
_0434H:  LOCK BTC     SS:[BP+SI],BX                                  ; F0 0F BB 1A
_0438H:  LOCK BTC     SS:[BP+DI],BX                                  ; F0 0F BB 1B
_043CH:  LOCK BTC     SS:[BP],BX                                     ; F0 0F BB 5E 00
_0441H:  LOCK BTC     DS:[SI],BX                                     ; F0 0F BB 1C
_0445H:  LOCK BTC     DS:[DI],BX                                     ; F0 0F BB 1D
_0449H:  LOCK BTC     DS:[BX+SI+1234H],BX                            ; F0 0F BB 98 34 12
_044FH:  LOCK BTC     DS:[BX+DI+1234H],BX                            ; F0 0F BB 99 34 12
_0455H:  LOCK BTC     SS:[BP+SI+1234H],BX                            ; F0 0F BB 9A 34 12
_045BH:  LOCK BTC     SS:[BP+DI+1234H],BX                            ; F0 0F BB 9B 34 12
_0461H:  LOCK BTC     SS:[BP+1234H],BX                               ; F0 0F BB 9E 34 12
_0467H:  LOCK BTC     DS:[SI+1234H],BX                               ; F0 0F BB 9C 34 12
_046DH:  LOCK BTC     DS:[DI+1234H],BX                               ; F0 0F BB 9D 34 12
_0473H:  BTC     DS:[EAX+EAX*2+00000100H],SP                         ; 67 0F BB A4 40 00 01 00 00
_047CH:  BTC     DS:[EBX+EBP*4+12345678H],SP                         ; 3E 67 0F BB A4 AB 78 56 34 12
_0486H:  BTC     SS:[EBP+EBP],SP                                     ; 67 0F BB 64 2D 00
_048CH:  BTC     SS:[ESP+EBP],SP                                     ; 67 0F BB 24 2C
_0491H:  BTC     DS:[EDX+EBX*8],SP                                   ; 67 0F BB 24 DA
_0496H:  BTC     DS:[EBX+ECX*2+01H],SP                               ; 67 0F BB 64 4B 01
_049CH:  BTC     DS:[ECX+EDX*4+00000100H],SP                         ; 67 0F BB A4 91 00 01 00 00
_04A5H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP                        ; 67 0F BB A4 C0 D0 C0 B0 A0
_04AEH:  BTC     SS:[EBP+EBP+10203040H],SP                           ; 67 0F BB A4 2D 40 30 20 10
_04B7H:  LOCK BTC     DS:[BX+SI],SP                                  ; F0 0F BB 20
_04BBH:  LOCK BTC     DS:[BX+DI],SP                                  ; F0 0F BB 21
_04BFH:  LOCK BTC     SS:[BP+SI],SP                                  ; F0 0F BB 22
_04C3H:  LOCK BTC     SS:[BP+DI],SP                                  ; F0 0F BB 23
_04C7H:  LOCK BTC     SS:[BP],SP                                     ; F0 0F BB 66 00
_04CCH:  LOCK BTC     DS:[SI],SP                                     ; F0 0F BB 24
_04D0H:  LOCK BTC     DS:[DI],SP                                     ; F0 0F BB 25
_04D4H:  LOCK BTC     DS:[BX+SI+1234H],SP                            ; F0 0F BB A0 34 12
_04DAH:  LOCK BTC     DS:[BX+DI+1234H],SP                            ; F0 0F BB A1 34 12
_04E0H:  LOCK BTC     SS:[BP+SI+1234H],SP                            ; F0 0F BB A2 34 12
_04E6H:  LOCK BTC     SS:[BP+DI+1234H],SP                            ; F0 0F BB A3 34 12
_04ECH:  LOCK BTC     SS:[BP+1234H],SP                               ; F0 0F BB A6 34 12
_04F2H:  LOCK BTC     DS:[SI+1234H],SP                               ; F0 0F BB A4 34 12
_04F8H:  LOCK BTC     DS:[DI+1234H],SP                               ; F0 0F BB A5 34 12
_04FEH:  BTC     DS:[EAX+EAX*2+00000100H],BP                         ; 67 0F BB AC 40 00 01 00 00
_0507H:  BTC     DS:[EBX+EBP*4+12345678H],BP                         ; 3E 67 0F BB AC AB 78 56 34 12
_0511H:  BTC     SS:[EBP+EBP],BP                                     ; 67 0F BB 6C 2D 00
_0517H:  BTC     SS:[ESP+EBP],BP                                     ; 67 0F BB 2C 2C
_051CH:  BTC     DS:[EDX+EBX*8],BP                                   ; 67 0F BB 2C DA
_0521H:  BTC     DS:[EBX+ECX*2+01H],BP                               ; 67 0F BB 6C 4B 01
_0527H:  BTC     DS:[ECX+EDX*4+00000100H],BP                         ; 67 0F BB AC 91 00 01 00 00
_0530H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP                        ; 67 0F BB AC C0 D0 C0 B0 A0
_0539H:  BTC     SS:[EBP+EBP+10203040H],BP                           ; 67 0F BB AC 2D 40 30 20 10
_0542H:  LOCK BTC     DS:[BX+SI],BP                                  ; F0 0F BB 28
_0546H:  LOCK BTC     DS:[BX+DI],BP                                  ; F0 0F BB 29
_054AH:  LOCK BTC     SS:[BP+SI],BP                                  ; F0 0F BB 2A
_054EH:  LOCK BTC     SS:[BP+DI],BP                                  ; F0 0F BB 2B
_0552H:  LOCK BTC     SS:[BP],BP                                     ; F0 0F BB 6E 00
_0557H:  LOCK BTC     DS:[SI],BP                                     ; F0 0F BB 2C
_055BH:  LOCK BTC     DS:[DI],BP                                     ; F0 0F BB 2D
_055FH:  LOCK BTC     DS:[BX+SI+1234H],BP                            ; F0 0F BB A8 34 12
_0565H:  LOCK BTC     DS:[BX+DI+1234H],BP                            ; F0 0F BB A9 34 12
_056BH:  LOCK BTC     SS:[BP+SI+1234H],BP                            ; F0 0F BB AA 34 12
_0571H:  LOCK BTC     SS:[BP+DI+1234H],BP                            ; F0 0F BB AB 34 12
_0577H:  LOCK BTC     SS:[BP+1234H],BP                               ; F0 0F BB AE 34 12
_057DH:  LOCK BTC     DS:[SI+1234H],BP                               ; F0 0F BB AC 34 12
_0583H:  LOCK BTC     DS:[DI+1234H],BP                               ; F0 0F BB AD 34 12
_0589H:  BTC     DS:[EAX+EAX*2+00000100H],SI                         ; 67 0F BB B4 40 00 01 00 00
_0592H:  BTC     DS:[EBX+EBP*4+12345678H],SI                         ; 3E 67 0F BB B4 AB 78 56 34 12
_059CH:  BTC     SS:[EBP+EBP],SI                                     ; 67 0F BB 74 2D 00
_05A2H:  BTC     SS:[ESP+EBP],SI                                     ; 67 0F BB 34 2C
_05A7H:  BTC     DS:[EDX+EBX*8],SI                                   ; 67 0F BB 34 DA
_05ACH:  BTC     DS:[EBX+ECX*2+01H],SI                               ; 67 0F BB 74 4B 01
_05B2H:  BTC     DS:[ECX+EDX*4+00000100H],SI                         ; 67 0F BB B4 91 00 01 00 00
_05BBH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI                        ; 67 0F BB B4 C0 D0 C0 B0 A0
_05C4H:  BTC     SS:[EBP+EBP+10203040H],SI                           ; 67 0F BB B4 2D 40 30 20 10
_05CDH:  LOCK BTC     DS:[BX+SI],SI                                  ; F0 0F BB 30
_05D1H:  LOCK BTC     DS:[BX+DI],SI                                  ; F0 0F BB 31
_05D5H:  LOCK BTC     SS:[BP+SI],SI                                  ; F0 0F BB 32
_05D9H:  LOCK BTC     SS:[BP+DI],SI                                  ; F0 0F BB 33
_05DDH:  LOCK BTC     SS:[BP],SI                                     ; F0 0F BB 76 00
_05E2H:  LOCK BTC     DS:[SI],SI                                     ; F0 0F BB 34
_05E6H:  LOCK BTC     DS:[DI],SI                                     ; F0 0F BB 35
_05EAH:  LOCK BTC     DS:[BX+SI+1234H],SI                            ; F0 0F BB B0 34 12
_05F0H:  LOCK BTC     DS:[BX+DI+1234H],SI                            ; F0 0F BB B1 34 12
_05F6H:  LOCK BTC     SS:[BP+SI+1234H],SI                            ; F0 0F BB B2 34 12
_05FCH:  LOCK BTC     SS:[BP+DI+1234H],SI                            ; F0 0F BB B3 34 12
_0602H:  LOCK BTC     SS:[BP+1234H],SI                               ; F0 0F BB B6 34 12
_0608H:  LOCK BTC     DS:[SI+1234H],SI                               ; F0 0F BB B4 34 12
_060EH:  LOCK BTC     DS:[DI+1234H],SI                               ; F0 0F BB B5 34 12
_0614H:  BTC     DS:[EAX+EAX*2+00000100H],DI                         ; 67 0F BB BC 40 00 01 00 00
_061DH:  BTC     DS:[EBX+EBP*4+12345678H],DI                         ; 3E 67 0F BB BC AB 78 56 34 12
_0627H:  BTC     SS:[EBP+EBP],DI                                     ; 67 0F BB 7C 2D 00
_062DH:  BTC     SS:[ESP+EBP],DI                                     ; 67 0F BB 3C 2C
_0632H:  BTC     DS:[EDX+EBX*8],DI                                   ; 67 0F BB 3C DA
_0637H:  BTC     DS:[EBX+ECX*2+01H],DI                               ; 67 0F BB 7C 4B 01
_063DH:  BTC     DS:[ECX+EDX*4+00000100H],DI                         ; 67 0F BB BC 91 00 01 00 00
_0646H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI                        ; 67 0F BB BC C0 D0 C0 B0 A0
_064FH:  BTC     SS:[EBP+EBP+10203040H],DI                           ; 67 0F BB BC 2D 40 30 20 10
_0658H:  LOCK BTC     DS:[BX+SI],DI                                  ; F0 0F BB 38
_065CH:  LOCK BTC     DS:[BX+DI],DI                                  ; F0 0F BB 39
_0660H:  LOCK BTC     SS:[BP+SI],DI                                  ; F0 0F BB 3A
_0664H:  LOCK BTC     SS:[BP+DI],DI                                  ; F0 0F BB 3B
_0668H:  LOCK BTC     SS:[BP],DI                                     ; F0 0F BB 7E 00
_066DH:  LOCK BTC     DS:[SI],DI                                     ; F0 0F BB 3C
_0671H:  LOCK BTC     DS:[DI],DI                                     ; F0 0F BB 3D
_0675H:  LOCK BTC     DS:[BX+SI+1234H],DI                            ; F0 0F BB B8 34 12
_067BH:  LOCK BTC     DS:[BX+DI+1234H],DI                            ; F0 0F BB B9 34 12
_0681H:  LOCK BTC     SS:[BP+SI+1234H],DI                            ; F0 0F BB BA 34 12
_0687H:  LOCK BTC     SS:[BP+DI+1234H],DI                            ; F0 0F BB BB 34 12
_068DH:  LOCK BTC     SS:[BP+1234H],DI                               ; F0 0F BB BE 34 12
_0693H:  LOCK BTC     DS:[SI+1234H],DI                               ; F0 0F BB BC 34 12
_0699H:  LOCK BTC     DS:[DI+1234H],DI                               ; F0 0F BB BD 34 12
_069FH:  BTC     EAX,EAX                                             ; 66 0F BB C0
_06A3H:  BTC     ECX,EAX                                             ; 66 0F BB C1
_06A7H:  BTC     EDX,EAX                                             ; 66 0F BB C2
_06ABH:  BTC     EBX,EAX                                             ; 66 0F BB C3
_06AFH:  BTC     ESP,EAX                                             ; 66 0F BB C4
_06B3H:  BTC     EBP,EAX                                             ; 66 0F BB C5
_06B7H:  BTC     ESI,EAX                                             ; 66 0F BB C6
_06BBH:  BTC     EDI,EAX                                             ; 66 0F BB C7
_06BFH:  BTC     DS:[EAX],EAX                                        ; 66 67 0F BB 00
_06C4H:  BTC     DS:[EAX+00001234H],ECX                              ; 66 67 0F BB 88 34 12 00 00
_06CDH:  BTC     CS:[EAX],EBX                                        ; 66 2E 67 0F BB 18
_06D3H:  BTC     DS:[EAX],EDX                                        ; 66 67 0F BB 10
_06D8H:  BTC     ES:[EAX],ESP                                        ; 66 26 67 0F BB 20
_06DEH:  BTC     SS:[EAX],EBP                                        ; 66 36 67 0F BB 28
_06E4H:  BTC     FS:[EAX],ESI                                        ; 66 64 67 0F BB 30
_06EAH:  BTC     GS:[EAX],EDI                                        ; 66 65 67 0F BB 38
_06F0H:  BTC     DS:[EAX+EAX*2+00000100H],EAX                        ; 66 67 0F BB 84 40 00 01 00 00
_06FAH:  BTC     DS:[EBX+EBP*4+12345678H],EAX                        ; 66 3E 67 0F BB 84 AB 78 56 34 12
_0705H:  BTC     SS:[EBP+EBP],EAX                                    ; 66 67 0F BB 44 2D 00
_070CH:  BTC     SS:[ESP+EBP],EAX                                    ; 66 67 0F BB 04 2C
_0712H:  BTC     DS:[EDX+EBX*8],EAX                                  ; 66 67 0F BB 04 DA
_0718H:  BTC     DS:[EBX+ECX*2+01H],EAX                              ; 66 67 0F BB 44 4B 01
_071FH:  BTC     DS:[ECX+EDX*4+00000100H],EAX                        ; 66 67 0F BB 84 91 00 01 00 00
_0729H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX                       ; 66 67 0F BB 84 C0 D0 C0 B0 A0
_0733H:  BTC     SS:[EBP+EBP+10203040H],EAX                          ; 66 67 0F BB 84 2D 40 30 20 10
_073DH:  LOCK BTC     DS:[BX+SI],EAX                                 ; F0 66 0F BB 00
_0742H:  LOCK BTC     DS:[BX+DI],EAX                                 ; F0 66 0F BB 01
_0747H:  LOCK BTC     SS:[BP+SI],EAX                                 ; F0 66 0F BB 02
_074CH:  LOCK BTC     SS:[BP+DI],EAX                                 ; F0 66 0F BB 03
_0751H:  LOCK BTC     SS:[BP],EAX                                    ; F0 66 0F BB 46 00
_0757H:  LOCK BTC     DS:[SI],EAX                                    ; F0 66 0F BB 04
_075CH:  LOCK BTC     DS:[DI],EAX                                    ; F0 66 0F BB 05
_0761H:  LOCK BTC     DS:[BX+SI+1234H],EAX                           ; F0 66 0F BB 80 34 12
_0768H:  LOCK BTC     DS:[BX+DI+1234H],EAX                           ; F0 66 0F BB 81 34 12
_076FH:  LOCK BTC     SS:[BP+SI+1234H],EAX                           ; F0 66 0F BB 82 34 12
_0776H:  LOCK BTC     SS:[BP+DI+1234H],EAX                           ; F0 66 0F BB 83 34 12
_077DH:  LOCK BTC     SS:[BP+1234H],EAX                              ; F0 66 0F BB 86 34 12
_0784H:  LOCK BTC     DS:[SI+1234H],EAX                              ; F0 66 0F BB 84 34 12
_078BH:  LOCK BTC     DS:[DI+1234H],EAX                              ; F0 66 0F BB 85 34 12
_0792H:  BTC     EAX,01H                                             ; 66 0F BA F8 01
_0797H:  BTC     EAX,ECX                                             ; 66 0F BB C8
_079BH:  BTC     ECX,ECX                                             ; 66 0F BB C9
_079FH:  BTC     EDX,ECX                                             ; 66 0F BB CA
_07A3H:  BTC     EBX,ECX                                             ; 66 0F BB CB
_07A7H:  BTC     ESP,ECX                                             ; 66 0F BB CC
_07ABH:  BTC     EBP,ECX                                             ; 66 0F BB CD
_07AFH:  BTC     ESI,ECX                                             ; 66 0F BB CE
_07B3H:  BTC     EDI,ECX                                             ; 66 0F BB CF
_07B7H:  BTC     DS:[ECX],EAX                                        ; 66 67 0F BB 01
_07BCH:  BTC     DS:[ECX+00001234H],ECX                              ; 66 67 0F BB 89 34 12 00 00
_07C5H:  BTC     CS:[ECX],EBX                                        ; 66 2E 67 0F BB 19
_07CBH:  BTC     DS:[ECX],EDX                                        ; 66 67 0F BB 11
_07D0H:  BTC     ES:[ECX],ESP                                        ; 66 26 67 0F BB 21
_07D6H:  BTC     SS:[ECX],EBP                                        ; 66 36 67 0F BB 29
_07DCH:  BTC     FS:[ECX],ESI                                        ; 66 64 67 0F BB 31
_07E2H:  BTC     GS:[ECX],EDI                                        ; 66 65 67 0F BB 39
_07E8H:  BTC     DS:[EAX+EAX*2+00000100H],ECX                        ; 66 67 0F BB 8C 40 00 01 00 00
_07F2H:  BTC     DS:[EBX+EBP*4+12345678H],ECX                        ; 66 3E 67 0F BB 8C AB 78 56 34 12
_07FDH:  BTC     SS:[EBP+EBP],ECX                                    ; 66 67 0F BB 4C 2D 00
_0804H:  BTC     SS:[ESP+EBP],ECX                                    ; 66 67 0F BB 0C 2C
_080AH:  BTC     DS:[EDX+EBX*8],ECX                                  ; 66 67 0F BB 0C DA
_0810H:  BTC     DS:[EBX+ECX*2+01H],ECX                              ; 66 67 0F BB 4C 4B 01
_0817H:  BTC     DS:[ECX+EDX*4+00000100H],ECX                        ; 66 67 0F BB 8C 91 00 01 00 00
_0821H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX                       ; 66 67 0F BB 8C C0 D0 C0 B0 A0
_082BH:  BTC     SS:[EBP+EBP+10203040H],ECX                          ; 66 67 0F BB 8C 2D 40 30 20 10
_0835H:  LOCK BTC     DS:[BX+SI],ECX                                 ; F0 66 0F BB 08
_083AH:  LOCK BTC     DS:[BX+DI],ECX                                 ; F0 66 0F BB 09
_083FH:  LOCK BTC     SS:[BP+SI],ECX                                 ; F0 66 0F BB 0A
_0844H:  LOCK BTC     SS:[BP+DI],ECX                                 ; F0 66 0F BB 0B
_0849H:  LOCK BTC     SS:[BP],ECX                                    ; F0 66 0F BB 4E 00
_084FH:  LOCK BTC     DS:[SI],ECX                                    ; F0 66 0F BB 0C
_0854H:  LOCK BTC     DS:[DI],ECX                                    ; F0 66 0F BB 0D
_0859H:  LOCK BTC     DS:[BX+SI+1234H],ECX                           ; F0 66 0F BB 88 34 12
_0860H:  LOCK BTC     DS:[BX+DI+1234H],ECX                           ; F0 66 0F BB 89 34 12
_0867H:  LOCK BTC     SS:[BP+SI+1234H],ECX                           ; F0 66 0F BB 8A 34 12
_086EH:  LOCK BTC     SS:[BP+DI+1234H],ECX                           ; F0 66 0F BB 8B 34 12
_0875H:  LOCK BTC     SS:[BP+1234H],ECX                              ; F0 66 0F BB 8E 34 12
_087CH:  LOCK BTC     DS:[SI+1234H],ECX                              ; F0 66 0F BB 8C 34 12
_0883H:  LOCK BTC     DS:[DI+1234H],ECX                              ; F0 66 0F BB 8D 34 12
_088AH:  BTC     ECX,01H                                             ; 66 0F BA F9 01
_088FH:  BTC     EAX,EDX                                             ; 66 0F BB D0
_0893H:  BTC     ECX,EDX                                             ; 66 0F BB D1
_0897H:  BTC     EDX,EDX                                             ; 66 0F BB D2
_089BH:  BTC     EBX,EDX                                             ; 66 0F BB D3
_089FH:  BTC     ESP,EDX                                             ; 66 0F BB D4
_08A3H:  BTC     EBP,EDX                                             ; 66 0F BB D5
_08A7H:  BTC     ESI,EDX                                             ; 66 0F BB D6
_08ABH:  BTC     EDI,EDX                                             ; 66 0F BB D7
_08AFH:  BTC     DS:[EDX],EAX                                        ; 66 67 0F BB 02
_08B4H:  BTC     DS:[EDX+00001234H],ECX                              ; 66 67 0F BB 8A 34 12 00 00
_08BDH:  BTC     CS:[EDX],EBX                                        ; 66 2E 67 0F BB 1A
_08C3H:  BTC     DS:[EDX],EDX                                        ; 66 67 0F BB 12
_08C8H:  BTC     ES:[EDX],ESP                                        ; 66 26 67 0F BB 22
_08CEH:  BTC     SS:[EDX],EBP                                        ; 66 36 67 0F BB 2A
_08D4H:  BTC     FS:[EDX],ESI                                        ; 66 64 67 0F BB 32
_08DAH:  BTC     GS:[EDX],EDI                                        ; 66 65 67 0F BB 3A
_08E0H:  BTC     DS:[EAX+EAX*2+00000100H],EDX                        ; 66 67 0F BB 94 40 00 01 00 00
_08EAH:  BTC     DS:[EBX+EBP*4+12345678H],EDX                        ; 66 3E 67 0F BB 94 AB 78 56 34 12
_08F5H:  BTC     SS:[EBP+EBP],EDX                                    ; 66 67 0F BB 54 2D 00
_08FCH:  BTC     SS:[ESP+EBP],EDX                                    ; 66 67 0F BB 14 2C
_0902H:  BTC     DS:[EDX+EBX*8],EDX                                  ; 66 67 0F BB 14 DA
_0908H:  BTC     DS:[EBX+ECX*2+01H],EDX                              ; 66 67 0F BB 54 4B 01
_090FH:  BTC     DS:[ECX+EDX*4+00000100H],EDX                        ; 66 67 0F BB 94 91 00 01 00 00
_0919H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX                       ; 66 67 0F BB 94 C0 D0 C0 B0 A0
_0923H:  BTC     SS:[EBP+EBP+10203040H],EDX                          ; 66 67 0F BB 94 2D 40 30 20 10
_092DH:  LOCK BTC     DS:[BX+SI],EDX                                 ; F0 66 0F BB 10
_0932H:  LOCK BTC     DS:[BX+DI],EDX                                 ; F0 66 0F BB 11
_0937H:  LOCK BTC     SS:[BP+SI],EDX                                 ; F0 66 0F BB 12
_093CH:  LOCK BTC     SS:[BP+DI],EDX                                 ; F0 66 0F BB 13
_0941H:  LOCK BTC     SS:[BP],EDX                                    ; F0 66 0F BB 56 00
_0947H:  LOCK BTC     DS:[SI],EDX                                    ; F0 66 0F BB 14
_094CH:  LOCK BTC     DS:[DI],EDX                                    ; F0 66 0F BB 15
_0951H:  LOCK BTC     DS:[BX+SI+1234H],EDX                           ; F0 66 0F BB 90 34 12
_0958H:  LOCK BTC     DS:[BX+DI+1234H],EDX                           ; F0 66 0F BB 91 34 12
_095FH:  LOCK BTC     SS:[BP+SI+1234H],EDX                           ; F0 66 0F BB 92 34 12
_0966H:  LOCK BTC     SS:[BP+DI+1234H],EDX                           ; F0 66 0F BB 93 34 12
_096DH:  LOCK BTC     SS:[BP+1234H],EDX                              ; F0 66 0F BB 96 34 12
_0974H:  LOCK BTC     DS:[SI+1234H],EDX                              ; F0 66 0F BB 94 34 12
_097BH:  LOCK BTC     DS:[DI+1234H],EDX                              ; F0 66 0F BB 95 34 12
_0982H:  BTC     EDX,01H                                             ; 66 0F BA FA 01
_0987H:  BTC     EAX,EBX                                             ; 66 0F BB D8
_098BH:  BTC     ECX,EBX                                             ; 66 0F BB D9
_098FH:  BTC     EDX,EBX                                             ; 66 0F BB DA
_0993H:  BTC     EBX,EBX                                             ; 66 0F BB DB
_0997H:  BTC     ESP,EBX                                             ; 66 0F BB DC
_099BH:  BTC     EBP,EBX                                             ; 66 0F BB DD
_099FH:  BTC     ESI,EBX                                             ; 66 0F BB DE
_09A3H:  BTC     EDI,EBX                                             ; 66 0F BB DF
_09A7H:  BTC     DS:[EBX],EAX                                        ; 66 67 0F BB 03
_09ACH:  BTC     DS:[EBX+00001234H],ECX                              ; 66 67 0F BB 8B 34 12 00 00
_09B5H:  BTC     CS:[EBX],EBX                                        ; 66 2E 67 0F BB 1B
_09BBH:  BTC     DS:[EBX],EDX                                        ; 66 67 0F BB 13
_09C0H:  BTC     ES:[EBX],ESP                                        ; 66 26 67 0F BB 23
_09C6H:  BTC     SS:[EBX],EBP                                        ; 66 36 67 0F BB 2B
_09CCH:  BTC     FS:[EBX],ESI                                        ; 66 64 67 0F BB 33
_09D2H:  BTC     GS:[EBX],EDI                                        ; 66 65 67 0F BB 3B
_09D8H:  BTC     DS:[EAX+EAX*2+00000100H],EBX                        ; 66 67 0F BB 9C 40 00 01 00 00
_09E2H:  BTC     DS:[EBX+EBP*4+12345678H],EBX                        ; 66 3E 67 0F BB 9C AB 78 56 34 12
_09EDH:  BTC     SS:[EBP+EBP],EBX                                    ; 66 67 0F BB 5C 2D 00
_09F4H:  BTC     SS:[ESP+EBP],EBX                                    ; 66 67 0F BB 1C 2C
_09FAH:  BTC     DS:[EDX+EBX*8],EBX                                  ; 66 67 0F BB 1C DA
_0A00H:  BTC     DS:[EBX+ECX*2+01H],EBX                              ; 66 67 0F BB 5C 4B 01
_0A07H:  BTC     DS:[ECX+EDX*4+00000100H],EBX                        ; 66 67 0F BB 9C 91 00 01 00 00
_0A11H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX                       ; 66 67 0F BB 9C C0 D0 C0 B0 A0
_0A1BH:  BTC     SS:[EBP+EBP+10203040H],EBX                          ; 66 67 0F BB 9C 2D 40 30 20 10
_0A25H:  LOCK BTC     DS:[BX+SI],EBX                                 ; F0 66 0F BB 18
_0A2AH:  LOCK BTC     DS:[BX+DI],EBX                                 ; F0 66 0F BB 19
_0A2FH:  LOCK BTC     SS:[BP+SI],EBX                                 ; F0 66 0F BB 1A
_0A34H:  LOCK BTC     SS:[BP+DI],EBX                                 ; F0 66 0F BB 1B
_0A39H:  LOCK BTC     SS:[BP],EBX                                    ; F0 66 0F BB 5E 00
_0A3FH:  LOCK BTC     DS:[SI],EBX                                    ; F0 66 0F BB 1C
_0A44H:  LOCK BTC     DS:[DI],EBX                                    ; F0 66 0F BB 1D
_0A49H:  LOCK BTC     DS:[BX+SI+1234H],EBX                           ; F0 66 0F BB 98 34 12
_0A50H:  LOCK BTC     DS:[BX+DI+1234H],EBX                           ; F0 66 0F BB 99 34 12
_0A57H:  LOCK BTC     SS:[BP+SI+1234H],EBX                           ; F0 66 0F BB 9A 34 12
_0A5EH:  LOCK BTC     SS:[BP+DI+1234H],EBX                           ; F0 66 0F BB 9B 34 12
_0A65H:  LOCK BTC     SS:[BP+1234H],EBX                              ; F0 66 0F BB 9E 34 12
_0A6CH:  LOCK BTC     DS:[SI+1234H],EBX                              ; F0 66 0F BB 9C 34 12
_0A73H:  LOCK BTC     DS:[DI+1234H],EBX                              ; F0 66 0F BB 9D 34 12
_0A7AH:  BTC     EBX,01H                                             ; 66 0F BA FB 01
_0A7FH:  BTC     EAX,ESP                                             ; 66 0F BB E0
_0A83H:  BTC     ECX,ESP                                             ; 66 0F BB E1
_0A87H:  BTC     EDX,ESP                                             ; 66 0F BB E2
_0A8BH:  BTC     EBX,ESP                                             ; 66 0F BB E3
_0A8FH:  BTC     ESP,ESP                                             ; 66 0F BB E4
_0A93H:  BTC     EBP,ESP                                             ; 66 0F BB E5
_0A97H:  BTC     ESI,ESP                                             ; 66 0F BB E6
_0A9BH:  BTC     EDI,ESP                                             ; 66 0F BB E7
_0A9FH:  BTC     SS:[ESP+EAX],EAX                                    ; 66 67 0F BB 04 04
_0AA5H:  BTC     SS:[ESP+EBP+00001234H],ECX                          ; 66 67 0F BB 8C 2C 34 12 00 00
_0AAFH:  BTC     CS:[ESP+ECX],EBX                                    ; 66 2E 67 0F BB 1C 0C
_0AB6H:  BTC     DS:[ESP+EDX],EDX                                    ; 66 3E 67 0F BB 14 14
_0ABDH:  BTC     ES:[ESP],ESP                                        ; 66 26 67 0F BB 24 24
_0AC4H:  BTC     DS:[EAX+EAX*2+00000100H],ESP                        ; 66 67 0F BB A4 40 00 01 00 00
_0ACEH:  BTC     DS:[EBX+EBP*4+12345678H],ESP                        ; 66 3E 67 0F BB A4 AB 78 56 34 12
_0AD9H:  BTC     SS:[EBP+EBP],ESP                                    ; 66 67 0F BB 64 2D 00
_0AE0H:  BTC     SS:[ESP+EBP],ESP                                    ; 66 67 0F BB 24 2C
_0AE6H:  BTC     DS:[EDX+EBX*8],ESP                                  ; 66 67 0F BB 24 DA
_0AECH:  BTC     DS:[EBX+ECX*2+01H],ESP                              ; 66 67 0F BB 64 4B 01
_0AF3H:  BTC     DS:[ECX+EDX*4+00000100H],ESP                        ; 66 67 0F BB A4 91 00 01 00 00
_0AFDH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP                       ; 66 67 0F BB A4 C0 D0 C0 B0 A0
_0B07H:  BTC     SS:[EBP+EBP+10203040H],ESP                          ; 66 67 0F BB A4 2D 40 30 20 10
_0B11H:  LOCK BTC     DS:[BX+SI],ESP                                 ; F0 66 0F BB 20
_0B16H:  LOCK BTC     DS:[BX+DI],ESP                                 ; F0 66 0F BB 21
_0B1BH:  LOCK BTC     SS:[BP+SI],ESP                                 ; F0 66 0F BB 22
_0B20H:  LOCK BTC     SS:[BP+DI],ESP                                 ; F0 66 0F BB 23
_0B25H:  LOCK BTC     SS:[BP],ESP                                    ; F0 66 0F BB 66 00
_0B2BH:  LOCK BTC     DS:[SI],ESP                                    ; F0 66 0F BB 24
_0B30H:  LOCK BTC     DS:[DI],ESP                                    ; F0 66 0F BB 25
_0B35H:  LOCK BTC     DS:[BX+SI+1234H],ESP                           ; F0 66 0F BB A0 34 12
_0B3CH:  LOCK BTC     DS:[BX+DI+1234H],ESP                           ; F0 66 0F BB A1 34 12
_0B43H:  LOCK BTC     SS:[BP+SI+1234H],ESP                           ; F0 66 0F BB A2 34 12
_0B4AH:  LOCK BTC     SS:[BP+DI+1234H],ESP                           ; F0 66 0F BB A3 34 12
_0B51H:  LOCK BTC     SS:[BP+1234H],ESP                              ; F0 66 0F BB A6 34 12
_0B58H:  LOCK BTC     DS:[SI+1234H],ESP                              ; F0 66 0F BB A4 34 12
_0B5FH:  LOCK BTC     DS:[DI+1234H],ESP                              ; F0 66 0F BB A5 34 12
_0B66H:  BTC     ESP,01H                                             ; 66 0F BA FC 01
_0B6BH:  BTC     EAX,EBP                                             ; 66 0F BB E8
_0B6FH:  BTC     ECX,EBP                                             ; 66 0F BB E9
_0B73H:  BTC     EDX,EBP                                             ; 66 0F BB EA
_0B77H:  BTC     EBX,EBP                                             ; 66 0F BB EB
_0B7BH:  BTC     ESP,EBP                                             ; 66 0F BB EC
_0B7FH:  BTC     EBP,EBP                                             ; 66 0F BB ED
_0B83H:  BTC     ESI,EBP                                             ; 66 0F BB EE
_0B87H:  BTC     EDI,EBP                                             ; 66 0F BB EF
_0B8BH:  BTC     SS:[EBP],EAX                                        ; 66 67 0F BB 45 00
_0B91H:  BTC     SS:[EBP+00001234H],ECX                              ; 66 67 0F BB 8D 34 12 00 00
_0B9AH:  BTC     CS:[EBP],EBX                                        ; 66 2E 67 0F BB 5D 00
_0BA1H:  BTC     DS:[EBP],EDX                                        ; 66 3E 67 0F BB 55 00
_0BA8H:  BTC     ES:[EBP],ESP                                        ; 66 26 67 0F BB 65 00
_0BAFH:  BTC     SS:[EBP],EBP                                        ; 66 67 0F BB 6D 00
_0BB5H:  BTC     FS:[EBP],ESI                                        ; 66 64 67 0F BB 75 00
_0BBCH:  BTC     GS:[EBP],EDI                                        ; 66 65 67 0F BB 7D 00
_0BC3H:  BTC     DS:[EAX+EAX*2+00000100H],EBP                        ; 66 67 0F BB AC 40 00 01 00 00
_0BCDH:  BTC     DS:[EBX+EBP*4+12345678H],EBP                        ; 66 3E 67 0F BB AC AB 78 56 34 12
_0BD8H:  BTC     SS:[EBP+EBP],EBP                                    ; 66 67 0F BB 6C 2D 00
_0BDFH:  BTC     SS:[ESP+EBP],EBP                                    ; 66 67 0F BB 2C 2C
_0BE5H:  BTC     DS:[EDX+EBX*8],EBP                                  ; 66 67 0F BB 2C DA
_0BEBH:  BTC     DS:[EBX+ECX*2+01H],EBP                              ; 66 67 0F BB 6C 4B 01
_0BF2H:  BTC     DS:[ECX+EDX*4+00000100H],EBP                        ; 66 67 0F BB AC 91 00 01 00 00
_0BFCH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP                       ; 66 67 0F BB AC C0 D0 C0 B0 A0
_0C06H:  BTC     SS:[EBP+EBP+10203040H],EBP                          ; 66 67 0F BB AC 2D 40 30 20 10
_0C10H:  LOCK BTC     DS:[BX+SI],EBP                                 ; F0 66 0F BB 28
_0C15H:  LOCK BTC     DS:[BX+DI],EBP                                 ; F0 66 0F BB 29
_0C1AH:  LOCK BTC     SS:[BP+SI],EBP                                 ; F0 66 0F BB 2A
_0C1FH:  LOCK BTC     SS:[BP+DI],EBP                                 ; F0 66 0F BB 2B
_0C24H:  LOCK BTC     SS:[BP],EBP                                    ; F0 66 0F BB 6E 00
_0C2AH:  LOCK BTC     DS:[SI],EBP                                    ; F0 66 0F BB 2C
_0C2FH:  LOCK BTC     DS:[DI],EBP                                    ; F0 66 0F BB 2D
_0C34H:  LOCK BTC     DS:[BX+SI+1234H],EBP                           ; F0 66 0F BB A8 34 12
_0C3BH:  LOCK BTC     DS:[BX+DI+1234H],EBP                           ; F0 66 0F BB A9 34 12
_0C42H:  LOCK BTC     SS:[BP+SI+1234H],EBP                           ; F0 66 0F BB AA 34 12
_0C49H:  LOCK BTC     SS:[BP+DI+1234H],EBP                           ; F0 66 0F BB AB 34 12
_0C50H:  LOCK BTC     SS:[BP+1234H],EBP                              ; F0 66 0F BB AE 34 12
_0C57H:  LOCK BTC     DS:[SI+1234H],EBP                              ; F0 66 0F BB AC 34 12
_0C5EH:  LOCK BTC     DS:[DI+1234H],EBP                              ; F0 66 0F BB AD 34 12
_0C65H:  BTC     EBP,01H                                             ; 66 0F BA FD 01
_0C6AH:  BTC     EAX,ESI                                             ; 66 0F BB F0
_0C6EH:  BTC     ECX,ESI                                             ; 66 0F BB F1
_0C72H:  BTC     EDX,ESI                                             ; 66 0F BB F2
_0C76H:  BTC     EBX,ESI                                             ; 66 0F BB F3
_0C7AH:  BTC     ESP,ESI                                             ; 66 0F BB F4
_0C7EH:  BTC     EBP,ESI                                             ; 66 0F BB F5
_0C82H:  BTC     ESI,ESI                                             ; 66 0F BB F6
_0C86H:  BTC     EDI,ESI                                             ; 66 0F BB F7
_0C8AH:  BTC     DS:[ESI],EAX                                        ; 66 67 0F BB 06
_0C8FH:  BTC     DS:[ESI+00001234H],ECX                              ; 66 67 0F BB 8E 34 12 00 00
_0C98H:  BTC     CS:[ESI],EBX                                        ; 66 2E 67 0F BB 1E
_0C9EH:  BTC     DS:[ESI],EDX                                        ; 66 67 0F BB 16
_0CA3H:  BTC     ES:[ESI],ESP                                        ; 66 26 67 0F BB 26
_0CA9H:  BTC     SS:[ESI],EBP                                        ; 66 36 67 0F BB 2E
_0CAFH:  BTC     FS:[ESI],ESI                                        ; 66 64 67 0F BB 36
_0CB5H:  BTC     GS:[ESI],EDI                                        ; 66 65 67 0F BB 3E
_0CBBH:  BTC     DS:[EAX+EAX*2+00000100H],ESI                        ; 66 67 0F BB B4 40 00 01 00 00
_0CC5H:  BTC     DS:[EBX+EBP*4+12345678H],ESI                        ; 66 3E 67 0F BB B4 AB 78 56 34 12
_0CD0H:  BTC     SS:[EBP+EBP],ESI                                    ; 66 67 0F BB 74 2D 00
_0CD7H:  BTC     SS:[ESP+EBP],ESI                                    ; 66 67 0F BB 34 2C
_0CDDH:  BTC     DS:[EDX+EBX*8],ESI                                  ; 66 67 0F BB 34 DA
_0CE3H:  BTC     DS:[EBX+ECX*2+01H],ESI                              ; 66 67 0F BB 74 4B 01
_0CEAH:  BTC     DS:[ECX+EDX*4+00000100H],ESI                        ; 66 67 0F BB B4 91 00 01 00 00
_0CF4H:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESI                       ; 66 67 0F BB B4 C0 D0 C0 B0 A0
_0CFEH:  BTC     SS:[EBP+EBP+10203040H],ESI                          ; 66 67 0F BB B4 2D 40 30 20 10
_0D08H:  LOCK BTC     DS:[BX+SI],ESI                                 ; F0 66 0F BB 30
_0D0DH:  LOCK BTC     DS:[BX+DI],ESI                                 ; F0 66 0F BB 31
_0D12H:  LOCK BTC     SS:[BP+SI],ESI                                 ; F0 66 0F BB 32
_0D17H:  LOCK BTC     SS:[BP+DI],ESI                                 ; F0 66 0F BB 33
_0D1CH:  LOCK BTC     SS:[BP],ESI                                    ; F0 66 0F BB 76 00
_0D22H:  LOCK BTC     DS:[SI],ESI                                    ; F0 66 0F BB 34
_0D27H:  LOCK BTC     DS:[DI],ESI                                    ; F0 66 0F BB 35
_0D2CH:  LOCK BTC     DS:[BX+SI+1234H],ESI                           ; F0 66 0F BB B0 34 12
_0D33H:  LOCK BTC     DS:[BX+DI+1234H],ESI                           ; F0 66 0F BB B1 34 12
_0D3AH:  LOCK BTC     SS:[BP+SI+1234H],ESI                           ; F0 66 0F BB B2 34 12
_0D41H:  LOCK BTC     SS:[BP+DI+1234H],ESI                           ; F0 66 0F BB B3 34 12
_0D48H:  LOCK BTC     SS:[BP+1234H],ESI                              ; F0 66 0F BB B6 34 12
_0D4FH:  LOCK BTC     DS:[SI+1234H],ESI                              ; F0 66 0F BB B4 34 12
_0D56H:  LOCK BTC     DS:[DI+1234H],ESI                              ; F0 66 0F BB B5 34 12
_0D5DH:  BTC     ESI,01H                                             ; 66 0F BA FE 01
_0D62H:  BTC     EAX,EDI                                             ; 66 0F BB F8
_0D66H:  BTC     ECX,EDI                                             ; 66 0F BB F9
_0D6AH:  BTC     EDX,EDI                                             ; 66 0F BB FA
_0D6EH:  BTC     EBX,EDI                                             ; 66 0F BB FB
_0D72H:  BTC     ESP,EDI                                             ; 66 0F BB FC
_0D76H:  BTC     EBP,EDI                                             ; 66 0F BB FD
_0D7AH:  BTC     ESI,EDI                                             ; 66 0F BB FE
_0D7EH:  BTC     EDI,EDI                                             ; 66 0F BB FF
_0D82H:  BTC     DS:[EDI],EAX                                        ; 66 67 0F BB 07
_0D87H:  BTC     DS:[EDI+00001234H],ECX                              ; 66 67 0F BB 8F 34 12 00 00
_0D90H:  BTC     CS:[EDI],EBX                                        ; 66 2E 67 0F BB 1F
_0D96H:  BTC     DS:[EDI],EDX                                        ; 66 67 0F BB 17
_0D9BH:  BTC     ES:[EDI],ESP                                        ; 66 26 67 0F BB 27
_0DA1H:  BTC     SS:[EDI],EBP                                        ; 66 36 67 0F BB 2F
_0DA7H:  BTC     FS:[EDI],ESI                                        ; 66 64 67 0F BB 37
_0DADH:  BTC     GS:[EDI],EDI                                        ; 66 65 67 0F BB 3F
_0DB3H:  BTC     DS:[EAX+EAX*2+00000100H],EDI                        ; 66 67 0F BB BC 40 00 01 00 00
_0DBDH:  BTC     DS:[EBX+EBP*4+12345678H],EDI                        ; 66 3E 67 0F BB BC AB 78 56 34 12
_0DC8H:  BTC     SS:[EBP+EBP],EDI                                    ; 66 67 0F BB 7C 2D 00
_0DCFH:  BTC     SS:[ESP+EBP],EDI                                    ; 66 67 0F BB 3C 2C
_0DD5H:  BTC     DS:[EDX+EBX*8],EDI                                  ; 66 67 0F BB 3C DA
_0DDBH:  BTC     DS:[EBX+ECX*2+01H],EDI                              ; 66 67 0F BB 7C 4B 01
_0DE2H:  BTC     DS:[ECX+EDX*4+00000100H],EDI                        ; 66 67 0F BB BC 91 00 01 00 00
_0DECH:  BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI                       ; 66 67 0F BB BC C0 D0 C0 B0 A0
_0DF6H:  BTC     SS:[EBP+EBP+10203040H],EDI                          ; 66 67 0F BB BC 2D 40 30 20 10
_0E00H:  LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H          ; F0 64 67 0F BA BC 2B CC DD EE FF A0
_0E0CH:  LOCK BTC     DS:[BX+SI],EDI                                 ; F0 66 0F BB 38
_0E11H:  LOCK BTC     DS:[BX+DI],EDI                                 ; F0 66 0F BB 39
_0E16H:  LOCK BTC     SS:[BP+SI],EDI                                 ; F0 66 0F BB 3A
_0E1BH:  LOCK BTC     SS:[BP+DI],EDI                                 ; F0 66 0F BB 3B
_0E20H:  LOCK BTC     SS:[BP],EDI                                    ; F0 66 0F BB 7E 00
_0E26H:  LOCK BTC     DS:[SI],EDI                                    ; F0 66 0F BB 3C
_0E2BH:  LOCK BTC     DS:[DI],EDI                                    ; F0 66 0F BB 3D
_0E30H:  LOCK BTC     DS:[BX+SI+1234H],EDI                           ; F0 66 0F BB B8 34 12
_0E37H:  LOCK BTC     DS:[BX+DI+1234H],EDI                           ; F0 66 0F BB B9 34 12
_0E3EH:  LOCK BTC     SS:[BP+SI+1234H],EDI                           ; F0 66 0F BB BA 34 12
_0E45H:  LOCK BTC     SS:[BP+DI+1234H],EDI                           ; F0 66 0F BB BB 34 12
_0E4CH:  LOCK BTC     SS:[BP+1234H],EDI                              ; F0 66 0F BB BE 34 12
_0E53H:  LOCK BTC     DS:[SI+1234H],EDI                              ; F0 66 0F BB BC 34 12
_0E5AH:  LOCK BTC     DS:[DI+1234H],EDI                              ; F0 66 0F BB BD 34 12
_0E61H:  BTC     EDI,01H                                             ; 66 0F BA FF 01
_0E66H:  BTC     AX,AX                                               ; 0F BB C0
_0E69H:  BTC     CX,AX                                               ; 0F BB C1
_0E6CH:  BTC     DX,AX                                               ; 0F BB C2
_0E6FH:  BTC     BX,AX                                               ; 0F BB C3
_0E72H:  BTC     SP,AX                                               ; 0F BB C4
_0E75H:  BTC     BP,AX                                               ; 0F BB C5
_0E78H:  BTC     SI,AX                                               ; 0F BB C6
_0E7BH:  BTC     DI,AX                                               ; 0F BB C7
_0E7EH:  BTC     DS:[BX+SI+1234H],AX                                 ; 0F BB 80 34 12
_0E83H:  BTC     DS:[BX+DI+1234H],AX                                 ; 0F BB 81 34 12
_0E88H:  BTC     SS:[BP+SI+1234H],AX                                 ; 0F BB 82 34 12
_0E8DH:  BTC     SS:[BP+DI+1234H],AX                                 ; 0F BB 83 34 12
_0E92H:  BTC     SS:[BP+1234H],AX                                    ; 0F BB 86 34 12
_0E97H:  BTC     DS:[SI+1234H],AX                                    ; 0F BB 84 34 12
_0E9CH:  BTC     DS:[DI+1234H],AX                                    ; 0F BB 85 34 12
_0EA1H:  BTC     CS:[BX+SI],AX                                       ; 2E 0F BB 00
_0EA5H:  BTC     CS:[BX+DI],AX                                       ; 2E 0F BB 01
_0EA9H:  BTC     CS:[BP+SI],AX                                       ; 2E 0F BB 02
_0EADH:  BTC     CS:[BP+DI],AX                                       ; 2E 0F BB 03
_0EB1H:  BTC     CS:[BP],AX                                          ; 2E 0F BB 46 00
_0EB6H:  BTC     CS:[SI],AX                                          ; 2E 0F BB 04
_0EBAH:  BTC     CS:[DI],AX                                          ; 2E 0F BB 05
_0EBEH:  BTC     DS:[BX+SI],AX                                       ; 0F BB 00
_0EC1H:  BTC     DS:[BX+DI],AX                                       ; 0F BB 01
_0EC4H:  BTC     DS:[BP+SI],AX                                       ; 3E 0F BB 02
_0EC8H:  BTC     DS:[BP+DI],AX                                       ; 3E 0F BB 03
_0ECCH:  BTC     DS:[BP],AX                                          ; 3E 0F BB 46 00
_0ED1H:  BTC     DS:[SI],AX                                          ; 0F BB 04
_0ED4H:  BTC     DS:[DI],AX                                          ; 0F BB 05
_0ED7H:  BTC     ES:[BX+SI],AX                                       ; 26 0F BB 00
_0EDBH:  BTC     ES:[BX+DI],AX                                       ; 26 0F BB 01
_0EDFH:  BTC     ES:[BP+SI],AX                                       ; 26 0F BB 02
_0EE3H:  BTC     ES:[BP+DI],AX                                       ; 26 0F BB 03
_0EE7H:  BTC     ES:[BP],AX                                          ; 26 0F BB 46 00
_0EECH:  BTC     ES:[SI],AX                                          ; 26 0F BB 04
_0EF0H:  BTC     ES:[DI],AX                                          ; 26 0F BB 05
_0EF4H:  BTC     SS:[BX+SI],AX                                       ; 36 0F BB 00
_0EF8H:  BTC     SS:[BX+DI],AX                                       ; 36 0F BB 01
_0EFCH:  BTC     SS:[BP+SI],AX                                       ; 0F BB 02
_0EFFH:  BTC     SS:[BP+DI],AX                                       ; 0F BB 03
_0F02H:  BTC     SS:[BP],AX                                          ; 0F BB 46 00
_0F06H:  BTC     SS:[SI],AX                                          ; 36 0F BB 04
_0F0AH:  BTC     SS:[DI],AX                                          ; 36 0F BB 05
_0F0EH:  BTC     FS:[BX+SI],AX                                       ; 64 0F BB 00
_0F12H:  BTC     FS:[BX+DI],AX                                       ; 64 0F BB 01
_0F16H:  BTC     FS:[BP+SI],AX                                       ; 64 0F BB 02
_0F1AH:  BTC     FS:[BP+DI],AX                                       ; 64 0F BB 03
_0F1EH:  BTC     FS:[BP],AX                                          ; 64 0F BB 46 00
_0F23H:  BTC     FS:[SI],AX                                          ; 64 0F BB 04
_0F27H:  BTC     FS:[DI],AX                                          ; 64 0F BB 05
_0F2BH:  BTC     GS:[BX+SI],AX                                       ; 65 0F BB 00
_0F2FH:  BTC     GS:[BX+DI],AX                                       ; 65 0F BB 01
_0F33H:  BTC     GS:[BP+SI],AX                                       ; 65 0F BB 02
_0F37H:  BTC     GS:[BP+DI],AX                                       ; 65 0F BB 03
_0F3BH:  BTC     GS:[BP],AX                                          ; 65 0F BB 46 00
_0F40H:  BTC     GS:[SI],AX                                          ; 65 0F BB 04
_0F44H:  BTC     GS:[DI],AX                                          ; 65 0F BB 05
_0F48H:  BTC     AX,01H                                              ; 0F BA F8 01
_0F4CH:  BTC     AX,0FFH                                             ; 0F BA F8 FF
_0F50H:  BTC     AX,CX                                               ; 0F BB C8
_0F53H:  BTC     CX,CX                                               ; 0F BB C9
_0F56H:  BTC     DX,CX                                               ; 0F BB CA
_0F59H:  BTC     BX,CX                                               ; 0F BB CB
_0F5CH:  BTC     SP,CX                                               ; 0F BB CC
_0F5FH:  BTC     BP,CX                                               ; 0F BB CD
_0F62H:  BTC     SI,CX                                               ; 0F BB CE
_0F65H:  BTC     DI,CX                                               ; 0F BB CF
_0F68H:  BTC     DS:[BX+SI+1234H],CX                                 ; 0F BB 88 34 12
_0F6DH:  BTC     DS:[BX+DI+1234H],CX                                 ; 0F BB 89 34 12
_0F72H:  BTC     SS:[BP+SI+1234H],CX                                 ; 0F BB 8A 34 12
_0F77H:  BTC     SS:[BP+DI+1234H],CX                                 ; 0F BB 8B 34 12
_0F7CH:  BTC     SS:[BP+1234H],CX                                    ; 0F BB 8E 34 12
_0F81H:  BTC     DS:[SI+1234H],CX                                    ; 0F BB 8C 34 12
_0F86H:  BTC     DS:[DI+1234H],CX                                    ; 0F BB 8D 34 12
_0F8BH:  BTC     CS:[BX+SI],CX                                       ; 2E 0F BB 08
_0F8FH:  BTC     CS:[BX+DI],CX                                       ; 2E 0F BB 09
_0F93H:  BTC     CS:[BP+SI],CX                                       ; 2E 0F BB 0A
_0F97H:  BTC     CS:[BP+DI],CX                                       ; 2E 0F BB 0B
_0F9BH:  BTC     CS:[BP],CX                                          ; 2E 0F BB 4E 00
_0FA0H:  BTC     CS:[SI],CX                                          ; 2E 0F BB 0C
_0FA4H:  BTC     CS:[DI],CX                                          ; 2E 0F BB 0D
_0FA8H:  BTC     DS:[BX+SI],CX                                       ; 0F BB 08
_0FABH:  BTC     DS:[BX+DI],CX                                       ; 0F BB 09
_0FAEH:  BTC     DS:[BP+SI],CX                                       ; 3E 0F BB 0A
_0FB2H:  BTC     DS:[BP+DI],CX                                       ; 3E 0F BB 0B
_0FB6H:  BTC     DS:[BP],CX                                          ; 3E 0F BB 4E 00
_0FBBH:  BTC     DS:[SI],CX                                          ; 0F BB 0C
_0FBEH:  BTC     DS:[DI],CX                                          ; 0F BB 0D
_0FC1H:  BTC     ES:[BX+SI],CX                                       ; 26 0F BB 08
_0FC5H:  BTC     ES:[BX+DI],CX                                       ; 26 0F BB 09
_0FC9H:  BTC     ES:[BP+SI],CX                                       ; 26 0F BB 0A
_0FCDH:  BTC     ES:[BP+DI],CX                                       ; 26 0F BB 0B
_0FD1H:  BTC     ES:[BP],CX                                          ; 26 0F BB 4E 00
_0FD6H:  BTC     ES:[SI],CX                                          ; 26 0F BB 0C
_0FDAH:  BTC     ES:[DI],CX                                          ; 26 0F BB 0D
_0FDEH:  BTC     SS:[BX+SI],CX                                       ; 36 0F BB 08
_0FE2H:  BTC     SS:[BX+DI],CX                                       ; 36 0F BB 09
_0FE6H:  BTC     SS:[BP+SI],CX                                       ; 0F BB 0A
_0FE9H:  BTC     SS:[BP+DI],CX                                       ; 0F BB 0B
_0FECH:  BTC     SS:[BP],CX                                          ; 0F BB 4E 00
_0FF0H:  BTC     SS:[SI],CX                                          ; 36 0F BB 0C
_0FF4H:  BTC     SS:[DI],CX                                          ; 36 0F BB 0D
_0FF8H:  BTC     FS:[BX+SI],CX                                       ; 64 0F BB 08
_0FFCH:  BTC     FS:[BX+DI],CX                                       ; 64 0F BB 09
_1000H:  BTC     FS:[BP+SI],CX                                       ; 64 0F BB 0A
_1004H:  BTC     FS:[BP+DI],CX                                       ; 64 0F BB 0B
_1008H:  BTC     FS:[BP],CX                                          ; 64 0F BB 4E 00
_100DH:  BTC     FS:[SI],CX                                          ; 64 0F BB 0C
_1011H:  BTC     FS:[DI],CX                                          ; 64 0F BB 0D
_1015H:  BTC     GS:[BX+SI],CX                                       ; 65 0F BB 08
_1019H:  BTC     GS:[BX+DI],CX                                       ; 65 0F BB 09
_101DH:  BTC     GS:[BP+SI],CX                                       ; 65 0F BB 0A
_1021H:  BTC     GS:[BP+DI],CX                                       ; 65 0F BB 0B
_1025H:  BTC     GS:[BP],CX                                          ; 65 0F BB 4E 00
_102AH:  BTC     GS:[SI],CX                                          ; 65 0F BB 0C
_102EH:  BTC     GS:[DI],CX                                          ; 65 0F BB 0D
_1032H:  BTC     CX,01H                                              ; 0F BA F9 01
_1036H:  BTC     CX,0FFH                                             ; 0F BA F9 FF
_103AH:  BTC     AX,DX                                               ; 0F BB D0
_103DH:  BTC     CX,DX                                               ; 0F BB D1
_1040H:  BTC     DX,DX                                               ; 0F BB D2
_1043H:  BTC     BX,DX                                               ; 0F BB D3
_1046H:  BTC     SP,DX                                               ; 0F BB D4
_1049H:  BTC     BP,DX                                               ; 0F BB D5
_104CH:  BTC     SI,DX                                               ; 0F BB D6
_104FH:  BTC     DI,DX                                               ; 0F BB D7
_1052H:  BTC     DS:[BX+SI+1234H],DX                                 ; 0F BB 90 34 12
_1057H:  BTC     DS:[BX+DI+1234H],DX                                 ; 0F BB 91 34 12
_105CH:  BTC     SS:[BP+SI+1234H],DX                                 ; 0F BB 92 34 12
_1061H:  BTC     SS:[BP+DI+1234H],DX                                 ; 0F BB 93 34 12
_1066H:  BTC     SS:[BP+1234H],DX                                    ; 0F BB 96 34 12
_106BH:  BTC     DS:[SI+1234H],DX                                    ; 0F BB 94 34 12
_1070H:  BTC     DS:[DI+1234H],DX                                    ; 0F BB 95 34 12
_1075H:  BTC     CS:[BX+SI],DX                                       ; 2E 0F BB 10
_1079H:  BTC     CS:[BX+DI],DX                                       ; 2E 0F BB 11
_107DH:  BTC     CS:[BP+SI],DX                                       ; 2E 0F BB 12
_1081H:  BTC     CS:[BP+DI],DX                                       ; 2E 0F BB 13
_1085H:  BTC     CS:[BP],DX                                          ; 2E 0F BB 56 00
_108AH:  BTC     CS:[SI],DX                                          ; 2E 0F BB 14
_108EH:  BTC     CS:[DI],DX                                          ; 2E 0F BB 15
_1092H:  BTC     DS:[BX+SI],DX                                       ; 0F BB 10
_1095H:  BTC     DS:[BX+DI],DX                                       ; 0F BB 11
_1098H:  BTC     DS:[BP+SI],DX                                       ; 3E 0F BB 12
_109CH:  BTC     DS:[BP+DI],DX                                       ; 3E 0F BB 13
_10A0H:  BTC     DS:[BP],DX                                          ; 3E 0F BB 56 00
_10A5H:  BTC     DS:[SI],DX                                          ; 0F BB 14
_10A8H:  BTC     DS:[DI],DX                                          ; 0F BB 15
_10ABH:  BTC     ES:[BX+SI],DX                                       ; 26 0F BB 10
_10AFH:  BTC     ES:[BX+DI],DX                                       ; 26 0F BB 11
_10B3H:  BTC     ES:[BP+SI],DX                                       ; 26 0F BB 12
_10B7H:  BTC     ES:[BP+DI],DX                                       ; 26 0F BB 13
_10BBH:  BTC     ES:[BP],DX                                          ; 26 0F BB 56 00
_10C0H:  BTC     ES:[SI],DX                                          ; 26 0F BB 14
_10C4H:  BTC     ES:[DI],DX                                          ; 26 0F BB 15
_10C8H:  BTC     SS:[BX+SI],DX                                       ; 36 0F BB 10
_10CCH:  BTC     SS:[BX+DI],DX                                       ; 36 0F BB 11
_10D0H:  BTC     SS:[BP+SI],DX                                       ; 0F BB 12
_10D3H:  BTC     SS:[BP+DI],DX                                       ; 0F BB 13
_10D6H:  BTC     SS:[BP],DX                                          ; 0F BB 56 00
_10DAH:  BTC     SS:[SI],DX                                          ; 36 0F BB 14
_10DEH:  BTC     SS:[DI],DX                                          ; 36 0F BB 15
_10E2H:  BTC     FS:[BX+SI],DX                                       ; 64 0F BB 10
_10E6H:  BTC     FS:[BX+DI],DX                                       ; 64 0F BB 11
_10EAH:  BTC     FS:[BP+SI],DX                                       ; 64 0F BB 12
_10EEH:  BTC     FS:[BP+DI],DX                                       ; 64 0F BB 13
_10F2H:  BTC     FS:[BP],DX                                          ; 64 0F BB 56 00
_10F7H:  BTC     FS:[SI],DX                                          ; 64 0F BB 14
_10FBH:  BTC     FS:[DI],DX                                          ; 64 0F BB 15
_10FFH:  BTC     GS:[BX+SI],DX                                       ; 65 0F BB 10
_1103H:  BTC     GS:[BX+DI],DX                                       ; 65 0F BB 11
_1107H:  BTC     GS:[BP+SI],DX                                       ; 65 0F BB 12
_110BH:  BTC     GS:[BP+DI],DX                                       ; 65 0F BB 13
_110FH:  BTC     GS:[BP],DX                                          ; 65 0F BB 56 00
_1114H:  BTC     GS:[SI],DX                                          ; 65 0F BB 14
_1118H:  BTC     GS:[DI],DX                                          ; 65 0F BB 15
_111CH:  BTC     DX,01H                                              ; 0F BA FA 01
_1120H:  BTC     DX,0FFH                                             ; 0F BA FA FF
_1124H:  BTC     AX,BX                                               ; 0F BB D8
_1127H:  BTC     CX,BX                                               ; 0F BB D9
_112AH:  BTC     DX,BX                                               ; 0F BB DA
_112DH:  BTC     BX,BX                                               ; 0F BB DB
_1130H:  BTC     SP,BX                                               ; 0F BB DC
_1133H:  BTC     BP,BX                                               ; 0F BB DD
_1136H:  BTC     SI,BX                                               ; 0F BB DE
_1139H:  BTC     DI,BX                                               ; 0F BB DF
_113CH:  BTC     DS:[BX+SI+1234H],BX                                 ; 0F BB 98 34 12
_1141H:  BTC     DS:[BX+DI+1234H],BX                                 ; 0F BB 99 34 12
_1146H:  BTC     SS:[BP+SI+1234H],BX                                 ; 0F BB 9A 34 12
_114BH:  BTC     SS:[BP+DI+1234H],BX                                 ; 0F BB 9B 34 12
_1150H:  BTC     SS:[BP+1234H],BX                                    ; 0F BB 9E 34 12
_1155H:  BTC     DS:[SI+1234H],BX                                    ; 0F BB 9C 34 12
_115AH:  BTC     DS:[DI+1234H],BX                                    ; 0F BB 9D 34 12
_115FH:  BTC     CS:[BX+SI],BX                                       ; 2E 0F BB 18
_1163H:  BTC     CS:[BX+DI],BX                                       ; 2E 0F BB 19
_1167H:  BTC     CS:[BP+SI],BX                                       ; 2E 0F BB 1A
_116BH:  BTC     CS:[BP+DI],BX                                       ; 2E 0F BB 1B
_116FH:  BTC     CS:[BP],BX                                          ; 2E 0F BB 5E 00
_1174H:  BTC     CS:[SI],BX                                          ; 2E 0F BB 1C
_1178H:  BTC     CS:[DI],BX                                          ; 2E 0F BB 1D
_117CH:  BTC     DS:[BX+SI],BX                                       ; 0F BB 18
_117FH:  BTC     DS:[BX+DI],BX                                       ; 0F BB 19
_1182H:  BTC     DS:[BP+SI],BX                                       ; 3E 0F BB 1A
_1186H:  BTC     DS:[BP+DI],BX                                       ; 3E 0F BB 1B
_118AH:  BTC     DS:[BP],BX                                          ; 3E 0F BB 5E 00
_118FH:  BTC     DS:[SI],BX                                          ; 0F BB 1C
_1192H:  BTC     DS:[DI],BX                                          ; 0F BB 1D
_1195H:  BTC     ES:[BX+SI],BX                                       ; 26 0F BB 18
_1199H:  BTC     ES:[BX+DI],BX                                       ; 26 0F BB 19
_119DH:  BTC     ES:[BP+SI],BX                                       ; 26 0F BB 1A
_11A1H:  BTC     ES:[BP+DI],BX                                       ; 26 0F BB 1B
_11A5H:  BTC     ES:[BP],BX                                          ; 26 0F BB 5E 00
_11AAH:  BTC     ES:[SI],BX                                          ; 26 0F BB 1C
_11AEH:  BTC     ES:[DI],BX                                          ; 26 0F BB 1D
_11B2H:  BTC     SS:[BX+SI],BX                                       ; 36 0F BB 18
_11B6H:  BTC     SS:[BX+DI],BX                                       ; 36 0F BB 19
_11BAH:  BTC     SS:[BP+SI],BX                                       ; 0F BB 1A
_11BDH:  BTC     SS:[BP+DI],BX                                       ; 0F BB 1B
_11C0H:  BTC     SS:[BP],BX                                          ; 0F BB 5E 00
_11C4H:  BTC     SS:[SI],BX                                          ; 36 0F BB 1C
_11C8H:  BTC     SS:[DI],BX                                          ; 36 0F BB 1D
_11CCH:  BTC     FS:[BX+SI],BX                                       ; 64 0F BB 18
_11D0H:  BTC     FS:[BX+DI],BX                                       ; 64 0F BB 19
_11D4H:  BTC     FS:[BP+SI],BX                                       ; 64 0F BB 1A
_11D8H:  BTC     FS:[BP+DI],BX                                       ; 64 0F BB 1B
_11DCH:  BTC     FS:[BP],BX                                          ; 64 0F BB 5E 00
_11E1H:  BTC     FS:[SI],BX                                          ; 64 0F BB 1C
_11E5H:  BTC     FS:[DI],BX                                          ; 64 0F BB 1D
_11E9H:  BTC     GS:[BX+SI],BX                                       ; 65 0F BB 18
_11EDH:  BTC     GS:[BX+DI],BX                                       ; 65 0F BB 19
_11F1H:  BTC     GS:[BP+SI],BX                                       ; 65 0F BB 1A
_11F5H:  BTC     GS:[BP+DI],BX                                       ; 65 0F BB 1B
_11F9H:  BTC     GS:[BP],BX                                          ; 65 0F BB 5E 00
_11FEH:  BTC     GS:[SI],BX                                          ; 65 0F BB 1C
_1202H:  BTC     GS:[DI],BX                                          ; 65 0F BB 1D
_1206H:  BTC     BX,01H                                              ; 0F BA FB 01
_120AH:  BTC     BX,0FFH                                             ; 0F BA FB FF
_120EH:  BTC     AX,SP                                               ; 0F BB E0
_1211H:  BTC     CX,SP                                               ; 0F BB E1
_1214H:  BTC     DX,SP                                               ; 0F BB E2
_1217H:  BTC     BX,SP                                               ; 0F BB E3
_121AH:  BTC     SP,SP                                               ; 0F BB E4
_121DH:  BTC     BP,SP                                               ; 0F BB E5
_1220H:  BTC     SI,SP                                               ; 0F BB E6
_1223H:  BTC     DI,SP                                               ; 0F BB E7
_1226H:  BTC     DS:[BX+SI+1234H],SP                                 ; 0F BB A0 34 12
_122BH:  BTC     DS:[BX+DI+1234H],SP                                 ; 0F BB A1 34 12
_1230H:  BTC     SS:[BP+SI+1234H],SP                                 ; 0F BB A2 34 12
_1235H:  BTC     SS:[BP+DI+1234H],SP                                 ; 0F BB A3 34 12
_123AH:  BTC     SS:[BP+1234H],SP                                    ; 0F BB A6 34 12
_123FH:  BTC     DS:[SI+1234H],SP                                    ; 0F BB A4 34 12
_1244H:  BTC     DS:[DI+1234H],SP                                    ; 0F BB A5 34 12
_1249H:  BTC     CS:[BX+SI],SP                                       ; 2E 0F BB 20
_124DH:  BTC     CS:[BX+DI],SP                                       ; 2E 0F BB 21
_1251H:  BTC     CS:[BP+SI],SP                                       ; 2E 0F BB 22
_1255H:  BTC     CS:[BP+DI],SP                                       ; 2E 0F BB 23
_1259H:  BTC     CS:[BP],SP                                          ; 2E 0F BB 66 00
_125EH:  BTC     CS:[SI],SP                                          ; 2E 0F BB 24
_1262H:  BTC     CS:[DI],SP                                          ; 2E 0F BB 25
_1266H:  BTC     DS:[BX+SI],SP                                       ; 0F BB 20
_1269H:  BTC     DS:[BX+DI],SP                                       ; 0F BB 21
_126CH:  BTC     DS:[BP+SI],SP                                       ; 3E 0F BB 22
_1270H:  BTC     DS:[BP+DI],SP                                       ; 3E 0F BB 23
_1274H:  BTC     DS:[BP],SP                                          ; 3E 0F BB 66 00
_1279H:  BTC     DS:[SI],SP                                          ; 0F BB 24
_127CH:  BTC     DS:[DI],SP                                          ; 0F BB 25
_127FH:  BTC     ES:[BX+SI],SP                                       ; 26 0F BB 20
_1283H:  BTC     ES:[BX+DI],SP                                       ; 26 0F BB 21
_1287H:  BTC     ES:[BP+SI],SP                                       ; 26 0F BB 22
_128BH:  BTC     ES:[BP+DI],SP                                       ; 26 0F BB 23
_128FH:  BTC     ES:[BP],SP                                          ; 26 0F BB 66 00
_1294H:  BTC     ES:[SI],SP                                          ; 26 0F BB 24
_1298H:  BTC     ES:[DI],SP                                          ; 26 0F BB 25
_129CH:  BTC     SS:[BX+SI],SP                                       ; 36 0F BB 20
_12A0H:  BTC     SS:[BX+DI],SP                                       ; 36 0F BB 21
_12A4H:  BTC     SS:[BP+SI],SP                                       ; 0F BB 22
_12A7H:  BTC     SS:[BP+DI],SP                                       ; 0F BB 23
_12AAH:  BTC     SS:[BP],SP                                          ; 0F BB 66 00
_12AEH:  BTC     SS:[SI],SP                                          ; 36 0F BB 24
_12B2H:  BTC     SS:[DI],SP                                          ; 36 0F BB 25
_12B6H:  BTC     FS:[BX+SI],SP                                       ; 64 0F BB 20
_12BAH:  BTC     FS:[BX+DI],SP                                       ; 64 0F BB 21
_12BEH:  BTC     FS:[BP+SI],SP                                       ; 64 0F BB 22
_12C2H:  BTC     FS:[BP+DI],SP                                       ; 64 0F BB 23
_12C6H:  BTC     FS:[BP],SP                                          ; 64 0F BB 66 00
_12CBH:  BTC     FS:[SI],SP                                          ; 64 0F BB 24
_12CFH:  BTC     FS:[DI],SP                                          ; 64 0F BB 25
_12D3H:  BTC     GS:[BX+SI],SP                                       ; 65 0F BB 20
_12D7H:  BTC     GS:[BX+DI],SP                                       ; 65 0F BB 21
_12DBH:  BTC     GS:[BP+SI],SP                                       ; 65 0F BB 22
_12DFH:  BTC     GS:[BP+DI],SP                                       ; 65 0F BB 23
_12E3H:  BTC     GS:[BP],SP                                          ; 65 0F BB 66 00
_12E8H:  BTC     GS:[SI],SP                                          ; 65 0F BB 24
_12ECH:  BTC     GS:[DI],SP                                          ; 65 0F BB 25
_12F0H:  BTC     SP,01H                                              ; 0F BA FC 01
_12F4H:  BTC     SP,0FFH                                             ; 0F BA FC FF
_12F8H:  BTC     AX,BP                                               ; 0F BB E8
_12FBH:  BTC     CX,BP                                               ; 0F BB E9
_12FEH:  BTC     DX,BP                                               ; 0F BB EA
_1301H:  BTC     BX,BP                                               ; 0F BB EB
_1304H:  BTC     SP,BP                                               ; 0F BB EC
_1307H:  BTC     BP,BP                                               ; 0F BB ED
_130AH:  BTC     SI,BP                                               ; 0F BB EE
_130DH:  BTC     DI,BP                                               ; 0F BB EF
_1310H:  BTC     DS:[BX+SI+1234H],BP                                 ; 0F BB A8 34 12
_1315H:  BTC     DS:[BX+DI+1234H],BP                                 ; 0F BB A9 34 12
_131AH:  BTC     SS:[BP+SI+1234H],BP                                 ; 0F BB AA 34 12
_131FH:  BTC     SS:[BP+DI+1234H],BP                                 ; 0F BB AB 34 12
_1324H:  BTC     SS:[BP+1234H],BP                                    ; 0F BB AE 34 12
_1329H:  BTC     DS:[SI+1234H],BP                                    ; 0F BB AC 34 12
_132EH:  BTC     DS:[DI+1234H],BP                                    ; 0F BB AD 34 12
_1333H:  BTC     CS:[BX+SI],BP                                       ; 2E 0F BB 28
_1337H:  BTC     CS:[BX+DI],BP                                       ; 2E 0F BB 29
_133BH:  BTC     CS:[BP+SI],BP                                       ; 2E 0F BB 2A
_133FH:  BTC     CS:[BP+DI],BP                                       ; 2E 0F BB 2B
_1343H:  BTC     CS:[BP],BP                                          ; 2E 0F BB 6E 00
_1348H:  BTC     CS:[SI],BP                                          ; 2E 0F BB 2C
_134CH:  BTC     CS:[DI],BP                                          ; 2E 0F BB 2D
_1350H:  BTC     DS:[BX+SI],BP                                       ; 0F BB 28
_1353H:  BTC     DS:[BX+DI],BP                                       ; 0F BB 29
_1356H:  BTC     DS:[BP+SI],BP                                       ; 3E 0F BB 2A
_135AH:  BTC     DS:[BP+DI],BP                                       ; 3E 0F BB 2B
_135EH:  BTC     DS:[BP],BP                                          ; 3E 0F BB 6E 00
_1363H:  BTC     DS:[SI],BP                                          ; 0F BB 2C
_1366H:  BTC     DS:[DI],BP                                          ; 0F BB 2D
_1369H:  BTC     ES:[BX+SI],BP                                       ; 26 0F BB 28
_136DH:  BTC     ES:[BX+DI],BP                                       ; 26 0F BB 29
_1371H:  BTC     ES:[BP+SI],BP                                       ; 26 0F BB 2A
_1375H:  BTC     ES:[BP+DI],BP                                       ; 26 0F BB 2B
_1379H:  BTC     ES:[BP],BP                                          ; 26 0F BB 6E 00
_137EH:  BTC     ES:[SI],BP                                          ; 26 0F BB 2C
_1382H:  BTC     ES:[DI],BP                                          ; 26 0F BB 2D
_1386H:  BTC     SS:[BX+SI],BP                                       ; 36 0F BB 28
_138AH:  BTC     SS:[BX+DI],BP                                       ; 36 0F BB 29
_138EH:  BTC     SS:[BP+SI],BP                                       ; 0F BB 2A
_1391H:  BTC     SS:[BP+DI],BP                                       ; 0F BB 2B
_1394H:  BTC     SS:[BP],BP                                          ; 0F BB 6E 00
_1398H:  BTC     SS:[SI],BP                                          ; 36 0F BB 2C
_139CH:  BTC     SS:[DI],BP                                          ; 36 0F BB 2D
_13A0H:  BTC     FS:[BX+SI],BP                                       ; 64 0F BB 28
_13A4H:  BTC     FS:[BX+DI],BP                                       ; 64 0F BB 29
_13A8H:  BTC     FS:[BP+SI],BP                                       ; 64 0F BB 2A
_13ACH:  BTC     FS:[BP+DI],BP                                       ; 64 0F BB 2B
_13B0H:  BTC     FS:[BP],BP                                          ; 64 0F BB 6E 00
_13B5H:  BTC     FS:[SI],BP                                          ; 64 0F BB 2C
_13B9H:  BTC     FS:[DI],BP                                          ; 64 0F BB 2D
_13BDH:  BTC     GS:[BX+SI],BP                                       ; 65 0F BB 28
_13C1H:  BTC     GS:[BX+DI],BP                                       ; 65 0F BB 29
_13C5H:  BTC     GS:[BP+SI],BP                                       ; 65 0F BB 2A
_13C9H:  BTC     GS:[BP+DI],BP                                       ; 65 0F BB 2B
_13CDH:  BTC     GS:[BP],BP                                          ; 65 0F BB 6E 00
_13D2H:  BTC     GS:[SI],BP                                          ; 65 0F BB 2C
_13D6H:  BTC     GS:[DI],BP                                          ; 65 0F BB 2D
_13DAH:  BTC     BP,01H                                              ; 0F BA FD 01
_13DEH:  BTC     BP,0FFH                                             ; 0F BA FD FF
_13E2H:  BTC     AX,SI                                               ; 0F BB F0
_13E5H:  BTC     CX,SI                                               ; 0F BB F1
_13E8H:  BTC     DX,SI                                               ; 0F BB F2
_13EBH:  BTC     BX,SI                                               ; 0F BB F3
_13EEH:  BTC     SP,SI                                               ; 0F BB F4
_13F1H:  BTC     BP,SI                                               ; 0F BB F5
_13F4H:  BTC     SI,SI                                               ; 0F BB F6
_13F7H:  BTC     DI,SI                                               ; 0F BB F7
_13FAH:  BTC     DS:[BX+SI+1234H],SI                                 ; 0F BB B0 34 12
_13FFH:  BTC     DS:[BX+DI+1234H],SI                                 ; 0F BB B1 34 12
_1404H:  BTC     SS:[BP+SI+1234H],SI                                 ; 0F BB B2 34 12
_1409H:  BTC     SS:[BP+DI+1234H],SI                                 ; 0F BB B3 34 12
_140EH:  BTC     SS:[BP+1234H],SI                                    ; 0F BB B6 34 12
_1413H:  BTC     DS:[SI+1234H],SI                                    ; 0F BB B4 34 12
_1418H:  BTC     DS:[DI+1234H],SI                                    ; 0F BB B5 34 12
_141DH:  BTC     CS:[BX+SI],SI                                       ; 2E 0F BB 30
_1421H:  BTC     CS:[BX+DI],SI                                       ; 2E 0F BB 31
_1425H:  BTC     CS:[BP+SI],SI                                       ; 2E 0F BB 32
_1429H:  BTC     CS:[BP+DI],SI                                       ; 2E 0F BB 33
_142DH:  BTC     CS:[BP],SI                                          ; 2E 0F BB 76 00
_1432H:  BTC     CS:[SI],SI                                          ; 2E 0F BB 34
_1436H:  BTC     CS:[DI],SI                                          ; 2E 0F BB 35
_143AH:  BTC     DS:[BX+SI],SI                                       ; 0F BB 30
_143DH:  BTC     DS:[BX+DI],SI                                       ; 0F BB 31
_1440H:  BTC     DS:[BP+SI],SI                                       ; 3E 0F BB 32
_1444H:  BTC     DS:[BP+DI],SI                                       ; 3E 0F BB 33
_1448H:  BTC     DS:[BP],SI                                          ; 3E 0F BB 76 00
_144DH:  BTC     DS:[SI],SI                                          ; 0F BB 34
_1450H:  BTC     DS:[DI],SI                                          ; 0F BB 35
_1453H:  BTC     ES:[BX+SI],SI                                       ; 26 0F BB 30
_1457H:  BTC     ES:[BX+DI],SI                                       ; 26 0F BB 31
_145BH:  BTC     ES:[BP+SI],SI                                       ; 26 0F BB 32
_145FH:  BTC     ES:[BP+DI],SI                                       ; 26 0F BB 33
_1463H:  BTC     ES:[BP],SI                                          ; 26 0F BB 76 00
_1468H:  BTC     ES:[SI],SI                                          ; 26 0F BB 34
_146CH:  BTC     ES:[DI],SI                                          ; 26 0F BB 35
_1470H:  BTC     SS:[BX+SI],SI                                       ; 36 0F BB 30
_1474H:  BTC     SS:[BX+DI],SI                                       ; 36 0F BB 31
_1478H:  BTC     SS:[BP+SI],SI                                       ; 0F BB 32
_147BH:  BTC     SS:[BP+DI],SI                                       ; 0F BB 33
_147EH:  BTC     SS:[BP],SI                                          ; 0F BB 76 00
_1482H:  BTC     SS:[SI],SI                                          ; 36 0F BB 34
_1486H:  BTC     SS:[DI],SI                                          ; 36 0F BB 35
_148AH:  BTC     FS:[BX+SI],SI                                       ; 64 0F BB 30
_148EH:  BTC     FS:[BX+DI],SI                                       ; 64 0F BB 31
_1492H:  BTC     FS:[BP+SI],SI                                       ; 64 0F BB 32
_1496H:  BTC     FS:[BP+DI],SI                                       ; 64 0F BB 33
_149AH:  BTC     FS:[BP],SI                                          ; 64 0F BB 76 00
_149FH:  BTC     FS:[SI],SI                                          ; 64 0F BB 34
_14A3H:  BTC     FS:[DI],SI                                          ; 64 0F BB 35
_14A7H:  BTC     GS:[BX+SI],SI                                       ; 65 0F BB 30
_14ABH:  BTC     GS:[BX+DI],SI                                       ; 65 0F BB 31
_14AFH:  BTC     GS:[BP+SI],SI                                       ; 65 0F BB 32
_14B3H:  BTC     GS:[BP+DI],SI                                       ; 65 0F BB 33
_14B7H:  BTC     GS:[BP],SI                                          ; 65 0F BB 76 00
_14BCH:  BTC     GS:[SI],SI                                          ; 65 0F BB 34
_14C0H:  BTC     GS:[DI],SI                                          ; 65 0F BB 35
_14C4H:  BTC     SI,01H                                              ; 0F BA FE 01
_14C8H:  BTC     SI,0FFH                                             ; 0F BA FE FF
_14CCH:  BTC     AX,DI                                               ; 0F BB F8
_14CFH:  BTC     CX,DI                                               ; 0F BB F9
_14D2H:  BTC     DX,DI                                               ; 0F BB FA
_14D5H:  BTC     BX,DI                                               ; 0F BB FB
_14D8H:  BTC     SP,DI                                               ; 0F BB FC
_14DBH:  BTC     BP,DI                                               ; 0F BB FD
_14DEH:  BTC     SI,DI                                               ; 0F BB FE
_14E1H:  BTC     DI,DI                                               ; 0F BB FF
_14E4H:  BTC     DS:[BX+SI+1234H],DI                                 ; 0F BB B8 34 12
_14E9H:  BTC     DS:[BX+DI+1234H],DI                                 ; 0F BB B9 34 12
_14EEH:  BTC     SS:[BP+SI+1234H],DI                                 ; 0F BB BA 34 12
_14F3H:  BTC     SS:[BP+DI+1234H],DI                                 ; 0F BB BB 34 12
_14F8H:  BTC     SS:[BP+1234H],DI                                    ; 0F BB BE 34 12
_14FDH:  BTC     DS:[SI+1234H],DI                                    ; 0F BB BC 34 12
_1502H:  BTC     DS:[DI+1234H],DI                                    ; 0F BB BD 34 12
_1507H:  BTC     CS:[BX+SI],DI                                       ; 2E 0F BB 38
_150BH:  BTC     CS:[BX+DI],DI                                       ; 2E 0F BB 39
_150FH:  BTC     CS:[BP+SI],DI                                       ; 2E 0F BB 3A
_1513H:  BTC     CS:[BP+DI],DI                                       ; 2E 0F BB 3B
_1517H:  BTC     CS:[BP],DI                                          ; 2E 0F BB 7E 00
_151CH:  BTC     CS:[SI],DI                                          ; 2E 0F BB 3C
_1520H:  BTC     CS:[DI],DI                                          ; 2E 0F BB 3D
_1524H:  BTC     DS:[BX+SI],DI                                       ; 0F BB 38
_1527H:  BTC     DS:[BX+DI],DI                                       ; 0F BB 39
_152AH:  BTC     DS:[BP+SI],DI                                       ; 3E 0F BB 3A
_152EH:  BTC     DS:[BP+DI],DI                                       ; 3E 0F BB 3B
_1532H:  BTC     DS:[BP],DI                                          ; 3E 0F BB 7E 00
_1537H:  BTC     DS:[SI],DI                                          ; 0F BB 3C
_153AH:  BTC     DS:[DI],DI                                          ; 0F BB 3D
_153DH:  BTC     ES:[BX+SI],DI                                       ; 26 0F BB 38
_1541H:  BTC     ES:[BX+DI],DI                                       ; 26 0F BB 39
_1545H:  BTC     ES:[BP+SI],DI                                       ; 26 0F BB 3A
_1549H:  BTC     ES:[BP+DI],DI                                       ; 26 0F BB 3B
_154DH:  BTC     ES:[BP],DI                                          ; 26 0F BB 7E 00
_1552H:  BTC     ES:[SI],DI                                          ; 26 0F BB 3C
_1556H:  BTC     ES:[DI],DI                                          ; 26 0F BB 3D
_155AH:  BTC     SS:[BX+SI],DI                                       ; 36 0F BB 38
_155EH:  BTC     SS:[BX+DI],DI                                       ; 36 0F BB 39
_1562H:  BTC     SS:[BP+SI],DI                                       ; 0F BB 3A
_1565H:  BTC     SS:[BP+DI],DI                                       ; 0F BB 3B
_1568H:  BTC     SS:[BP],DI                                          ; 0F BB 7E 00
_156CH:  BTC     SS:[SI],DI                                          ; 36 0F BB 3C
_1570H:  BTC     SS:[DI],DI                                          ; 36 0F BB 3D
_1574H:  BTC     FS:[BX+SI],DI                                       ; 64 0F BB 38
_1578H:  BTC     FS:[BX+DI],DI                                       ; 64 0F BB 39
_157CH:  BTC     FS:[BP+SI],DI                                       ; 64 0F BB 3A
_1580H:  BTC     FS:[BP+DI],DI                                       ; 64 0F BB 3B
_1584H:  BTC     FS:[BP],DI                                          ; 64 0F BB 7E 00
_1589H:  BTC     FS:[SI],DI                                          ; 64 0F BB 3C
_158DH:  BTC     FS:[DI],DI                                          ; 64 0F BB 3D
_1591H:  BTC     GS:[BX+SI],DI                                       ; 65 0F BB 38
_1595H:  BTC     GS:[BX+DI],DI                                       ; 65 0F BB 39
_1599H:  BTC     GS:[BP+SI],DI                                       ; 65 0F BB 3A
_159DH:  BTC     GS:[BP+DI],DI                                       ; 65 0F BB 3B
_15A1H:  BTC     GS:[BP],DI                                          ; 65 0F BB 7E 00
_15A6H:  BTC     GS:[SI],DI                                          ; 65 0F BB 3C
_15AAH:  BTC     GS:[DI],DI                                          ; 65 0F BB 3D
_15AEH:  BTC     DI,01H                                              ; 0F BA FF 01
_15B2H:  BTC     DI,0FFH                                             ; 0F BA FF FF
_15B6H:  BTC     EAX,0FFH                                            ; 66 0F BA F8 FF
_15BBH:  BTC     ECX,0FFH                                            ; 66 0F BA F9 FF
_15C0H:  BTC     EDX,0FFH                                            ; 66 0F BA FA FF
_15C5H:  BTC     EBX,0FFH                                            ; 66 0F BA FB FF
_15CAH:  BTC     ESP,0FFH                                            ; 66 0F BA FC FF
_15CFH:  BTC     EBP,0FFH                                            ; 66 0F BA FD FF
_15D4H:  BTC     ESI,0FFH                                            ; 66 0F BA FE FF
_15D9H:  BTC     EDI,0FFH                                            ; 66 0F BA FF FF
_15DEH:  JO      _1729H                                              ; 0F 80 47 01
_15E2H:  JNO     _0100H                                              ; 0F 81 1A EB
_15E6H:  JB      _1729H                                              ; 0F 82 3F 01
_15EAH:  JNB     _0100H                                              ; 0F 83 12 EB
_15EEH:  JZ      _1729H                                              ; 0F 84 37 01
_15F2H:  JNZ     _0100H                                              ; 0F 85 0A EB
_15F6H:  JBE     _1729H                                              ; 0F 86 2F 01
_15FAH:  JNBE    _0100H                                              ; 0F 87 02 EB
_15FEH:  JS      _1729H                                              ; 0F 88 27 01
_1602H:  JNS     _0100H                                              ; 0F 89 FA EA
_1606H:  JP      _1729H                                              ; 0F 8A 1F 01
_160AH:  JNP     _0100H                                              ; 0F 8B F2 EA
_160EH:  JL      _1729H                                              ; 0F 8C 17 01
_1612H:  JNL     _0100H                                              ; 0F 8D EA EA
_1616H:  JLE     _1729H                                              ; 0F 8E 0F 01
_161AH:  JNLE    _0100H                                              ; 0F 8F E2 EA
_161EH:  JO      _161EH                                              ; 70 FE
_1620H:  JNO     _1653H                                              ; 71 31
_1624H:  ??????JB      _161EH                                        ; 90 90 72 F8
_1626H:  JNB     _1653H                                              ; 73 2B
_162AH:  ??????JZ      _161EH                                        ; 90 90 74 F2
_162CH:  JNZ     _1653H                                              ; 75 25
_1630H:  ??????JBE     _161EH                                        ; 90 90 76 EC
_1632H:  JNBE    _1653H                                              ; 77 1F
_1636H:  ??????JS      _161EH                                        ; 90 90 78 E6
_1638H:  JNS     _1653H                                              ; 79 19
_163CH:  ??????JP      _161EH                                        ; 90 90 7A E0
_163EH:  JNP     _1653H                                              ; 7B 13
_1642H:  ??????JL      _161EH                                        ; 90 90 7C DA
_1644H:  JNL     _1653H                                              ; 7D 0D
_1648H:  ??????JLE     _161EH                                        ; 90 90 7E D4
_164AH:  JNLE    _1653H                                              ; 7F 07
_164EH:  ??????JCXZ    _161EH                                        ; 90 90 E3 CE
_1650H:  JECXZ   _1653H                                              ; 67 E3 00
_1653H:  LOCK BTC     DS:[EAX+EAX+00004321H],AX                      ; F0 67 0F BB 84 00 21 43 00 00
_165DH:  LOCK BTC     DS:[EAX+EAX*2+00004321H],AX                    ; F0 67 0F BB 84 40 21 43 00 00
_1667H:  LOCK BTC     DS:[EAX+EAX*4+00004321H],AX                    ; F0 67 0F BB 84 80 21 43 00 00
_1671H:  LOCK BTC     DS:[EAX+EAX*8+00004321H],AX                    ; F0 67 0F BB 84 C0 21 43 00 00
_167BH:  LOCK BTC     DS:[ESI+00004321H],AX                          ; F0 67 0F BB 86 21 43 00 00
_1684H:  LOCK BTC     DS:[EDI+00004321H],AX                          ; F0 67 0F BB 87 21 43 00 00
_168DH:  LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH         ; F0 66 36 67 0F BA BC C3 78 56 34 12 9A
_169AH:  LOCK BTC     DS:[EAX+EAX+00004321H],AX                      ; F0 67 0F BB 84 00 21 43 00 00
_16A4H:  LOCK BTC     DS:[EAX+EAX*2+00004321H],AX                    ; F0 67 0F BB 84 40 21 43 00 00
_16AEH:  LOCK BTC     DS:[EAX+EAX*4+00004321H],AX                    ; F0 67 0F BB 84 80 21 43 00 00
_16B8H:  LOCK BTC     DS:[EAX+EAX*8+00004321H],AX                    ; F0 67 0F BB 84 C0 21 43 00 00
_16C2H:  LOCK BTC     DS:[ESI+00004321H],AX                          ; F0 67 0F BB 86 21 43 00 00
_16CBH:  LOCK BTC     DS:[EDI+00004321H],AX                          ; F0 67 0F BB 87 21 43 00 00
_16D4H:  LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH         ; F0 66 36 67 0F BA BC C3 78 56 34 12 9A
_16E1H:  LOCK BTC     DS:[EBX+EBP*8+00004321H],AX                    ; F0 3E 67 0F BB 84 EB 21 43 00 00
_16ECH:  LOCK BTC     SS:[EBP+00004321H],AX                          ; F0 67 0F BB 85 21 43 00 00
_16F5H:  LOCK BTC     DS:[ECX*4+00004321H],AX                        ; F0 67 0F BB 04 8D 21 43 00 00
_16FFH:  LOCK BTC     SS:[EBP*8+000000B0H],AX                        ; F0 67 0F BB 04 ED B0 00 00 00
_1709H:  LOCK BTC     DS:[ESI*4+00004321H],AX                        ; F0 67 0F BB 04 B5 21 43 00 00
_1713H:  LOCK BTC     DS:[EDI*2+87654321H],AX                        ; F0 67 0F BB 04 7D 21 43 65 87
_171DH:  LOCK BTC     dword ptr SS:[EBP+EBX*4+12345678H],9AH         ; F0 66 67 0F BA BC 9D 78 56 34 12 9A
_1729H:  AAD                                                         ; D5 0A
