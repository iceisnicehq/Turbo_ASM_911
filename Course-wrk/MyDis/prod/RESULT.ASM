BTC     DS:[EAX*4],EAX                                      ; 66 67 0F BB 04 85 00 00 00 00
BTC     DS:[EBX*4],AX                                       ; 67 0F BB 04 9D 00 00 00 00
BTC     SS:[EBP*4],AX                                       ; 67 0F BB 04 AD 00 00 00 00
BTC     word ptr SS:[EBP],0FFH                              ; 67 0F BA 7D 00 FF
BTC     dword ptr SS:[ESP],0FFH                             ; 66 67 0F BA 3C 24 FF
BTC     SS:[EBP*4+00000001H],EBP                            ; 66 67 0F BB 2C AD 01 00 00 00
BTC     SS:[EBP*4+00000100H],EBP                            ; 66 67 0F BB 2C AD 00 01 00 00
BTC     DS:[BX+0FEDCH],AX                                   ; 0F BB 87 DC FE
BTC     word ptr CS:[EBX+EBP+0FFEEDDCCH],0A0H               ; 2E 67 0F BA BC 2B CC DD EE FF A0
BTC     word ptr SS:[EBP+EAX],0FFH                          ; 67 0F BA 7C 05 00 FF
BTC     dword ptr SS:[EBP+EAX*8],0FFH                       ; 66 67 0F BA 7C C5 00 FF
BTC     word ptr SS:[ESP+EAX],0FFH                          ; 67 0F BA 3C 04 FF
BTC     dword ptr SS:[ESP+EAX*8],0FFH                       ; 66 67 0F BA 3C C4 FF
BTC     word ptr SS:[ESP+EBP],0FFH                          ; 67 0F BA 3C 2C FF
BTC     dword ptr SS:[ESP+EBP*8],0FFH                       ; 66 67 0F BA 3C EC FF
BTC     DS:[BX+SI],AX                                       ; 0F BB 00
BTC     DS:[BX+DI],AX                                       ; 0F BB 01
BTC     SS:[BP+SI],AX                                       ; 0F BB 02
BTC     SS:[BP+DI],AX                                       ; 0F BB 03
BTC     SS:[BP],AX                                          ; 0F BB 46 00
BTC     DS:[SI],AX                                          ; 0F BB 04
BTC     DS:[DI],AX                                          ; 0F BB 05
BTC     ES:[1234H],AX                                       ; 26 0F BB 06 34 12
BTC     SS:[12345678H],AX                                   ; 36 67 0F BB 05 78 56 34 12
BTC     dword ptr FS:[0123H],01H                            ; 66 64 0F BA 3E 23 01 01
BTC     dword ptr GS:[12345678H],10H                        ; 66 65 67 0F BA 3D 78 56 34 12 10
BTC     DS:[1234H],AX                                       ; 0F BB 06 34 12
BTC     DS:[12345678H],AX                                   ; 67 0F BB 05 78 56 34 12
BTC     dword ptr ES:[0123H],01H                            ; 66 26 0F BA 3E 23 01 01
BTC     dword ptr SS:[12345678H],10H                        ; 66 36 67 0F BA 3D 78 56 34 12 10
BTC     ES:[1234H],AX                                       ; 26 0F BB 06 34 12
BTC     CS:[12345678H],AX                                   ; 2E 67 0F BB 05 78 56 34 12
BTC     dword ptr ES:[0123H],01H                            ; 66 26 0F BA 3E 23 01 01
BTC     dword ptr SS:[12345678H],10H                        ; 66 36 67 0F BA 3D 78 56 34 12 10
BTC     word ptr DS:[BX+SI],0A0H                            ; 0F BA 38 A0
BTC     dword ptr DS:[BX+SI],0B0H                           ; 66 0F BA 38 B0
BTC     word ptr DS:[BX+DI],0A0H                            ; 0F BA 39 A0
BTC     dword ptr DS:[BX+DI],0B0H                           ; 66 0F BA 39 B0
BTC     word ptr SS:[BP+SI],0A0H                            ; 0F BA 3A A0
BTC     dword ptr SS:[BP+SI],0B0H                           ; 66 0F BA 3A B0
BTC     word ptr SS:[BP+DI],0A0H                            ; 0F BA 3B A0
BTC     dword ptr SS:[BP+DI],0B0H                           ; 66 0F BA 3B B0
BTC     word ptr SS:[BP],0A0H                               ; 0F BA 7E 00 A0
BTC     dword ptr SS:[BP],0B0H                              ; 66 0F BA 7E 00 B0
BTC     word ptr DS:[DI],0A0H                               ; 0F BA 3D A0
BTC     dword ptr DS:[DI],0B0H                              ; 66 0F BA 3D B0
BTC     word ptr DS:[SI],0A0H                               ; 0F BA 3C A0
BTC     dword ptr DS:[SI],0B0H                              ; 66 0F BA 3C B0
BTC     DS:[EAX+EAX*2+00000100H],AX                         ; 67 0F BB 84 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],AX                         ; 3E 67 0F BB 84 AB 78 56 34 12
BTC     SS:[EBP+EBP],AX                                     ; 67 0F BB 44 2D 00
BTC     SS:[ESP+EBP],AX                                     ; 67 0F BB 04 2C
BTC     DS:[EDX+EBX*8],AX                                   ; 67 0F BB 04 DA
BTC     DS:[EBX+ECX*2+01H],AX                               ; 67 0F BB 44 4B 01
BTC     DS:[ECX+EDX*4+00000100H],AX                         ; 67 0F BB 84 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],AX                        ; 67 0F BB 84 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],AX                           ; 67 0F BB 84 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],CX                         ; 67 0F BB 8C 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],CX                         ; 3E 67 0F BB 8C AB 78 56 34 12
BTC     SS:[EBP+EBP],CX                                     ; 67 0F BB 4C 2D 00
BTC     SS:[ESP+EBP],CX                                     ; 67 0F BB 0C 2C
BTC     DS:[EDX+EBX*8],CX                                   ; 67 0F BB 0C DA
BTC     DS:[EBX+ECX*2+01H],CX                               ; 67 0F BB 4C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],CX                         ; 67 0F BB 8C 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],CX                        ; 67 0F BB 8C C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],CX                           ; 67 0F BB 8C 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],DX                         ; 67 0F BB 94 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],DX                         ; 3E 67 0F BB 94 AB 78 56 34 12
BTC     SS:[EBP+EBP],DX                                     ; 67 0F BB 54 2D 00
BTC     SS:[ESP+EBP],DX                                     ; 67 0F BB 14 2C
BTC     DS:[EDX+EBX*8],DX                                   ; 67 0F BB 14 DA
BTC     DS:[EBX+ECX*2+01H],DX                               ; 67 0F BB 54 4B 01
BTC     DS:[ECX+EDX*4+00000100H],DX                         ; 67 0F BB 94 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DX                        ; 67 0F BB 94 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],DX                           ; 67 0F BB 94 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],BX                         ; 67 0F BB 9C 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],BX                         ; 3E 67 0F BB 9C AB 78 56 34 12
BTC     SS:[EBP+EBP],BX                                     ; 67 0F BB 5C 2D 00
BTC     SS:[ESP+EBP],BX                                     ; 67 0F BB 1C 2C
BTC     DS:[EDX+EBX*8],BX                                   ; 67 0F BB 1C DA
BTC     DS:[EBX+ECX*2+01H],BX                               ; 67 0F BB 5C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],BX                         ; 67 0F BB 9C 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BX                        ; 67 0F BB 9C C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],BX                           ; 67 0F BB 9C 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],SP                         ; 67 0F BB A4 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],SP                         ; 3E 67 0F BB A4 AB 78 56 34 12
BTC     SS:[EBP+EBP],SP                                     ; 67 0F BB 64 2D 00
BTC     SS:[ESP+EBP],SP                                     ; 67 0F BB 24 2C
BTC     DS:[EDX+EBX*8],SP                                   ; 67 0F BB 24 DA
BTC     DS:[EBX+ECX*2+01H],SP                               ; 67 0F BB 64 4B 01
BTC     DS:[ECX+EDX*4+00000100H],SP                         ; 67 0F BB A4 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SP                        ; 67 0F BB A4 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],SP                           ; 67 0F BB A4 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],BP                         ; 67 0F BB AC 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],BP                         ; 3E 67 0F BB AC AB 78 56 34 12
BTC     SS:[EBP+EBP],BP                                     ; 67 0F BB 6C 2D 00
BTC     SS:[ESP+EBP],BP                                     ; 67 0F BB 2C 2C
BTC     DS:[EDX+EBX*8],BP                                   ; 67 0F BB 2C DA
BTC     DS:[EBX+ECX*2+01H],BP                               ; 67 0F BB 6C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],BP                         ; 67 0F BB AC 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],BP                        ; 67 0F BB AC C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],BP                           ; 67 0F BB AC 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],SI                         ; 67 0F BB B4 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],SI                         ; 3E 67 0F BB B4 AB 78 56 34 12
BTC     SS:[EBP+EBP],SI                                     ; 67 0F BB 74 2D 00
BTC     SS:[ESP+EBP],SI                                     ; 67 0F BB 34 2C
BTC     DS:[EDX+EBX*8],SI                                   ; 67 0F BB 34 DA
BTC     DS:[EBX+ECX*2+01H],SI                               ; 67 0F BB 74 4B 01
BTC     DS:[ECX+EDX*4+00000100H],SI                         ; 67 0F BB B4 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],SI                        ; 67 0F BB B4 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],SI                           ; 67 0F BB B4 2D 40 30 20 10
BTC     DS:[EAX+EAX*2+00000100H],DI                         ; 67 0F BB BC 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],DI                         ; 3E 67 0F BB BC AB 78 56 34 12
BTC     SS:[EBP+EBP],DI                                     ; 67 0F BB 7C 2D 00
BTC     SS:[ESP+EBP],DI                                     ; 67 0F BB 3C 2C
BTC     DS:[EDX+EBX*8],DI                                   ; 67 0F BB 3C DA
BTC     DS:[EBX+ECX*2+01H],DI                               ; 67 0F BB 7C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],DI                         ; 67 0F BB BC 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],DI                        ; 67 0F BB BC C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],DI                           ; 67 0F BB BC 2D 40 30 20 10
BTC     EAX,EAX                                             ; 66 0F BB C0
BTC     ECX,EAX                                             ; 66 0F BB C1
BTC     EDX,EAX                                             ; 66 0F BB C2
BTC     EBX,EAX                                             ; 66 0F BB C3
BTC     ESP,EAX                                             ; 66 0F BB C4
BTC     EBP,EAX                                             ; 66 0F BB C5
BTC     ESI,EAX                                             ; 66 0F BB C6
BTC     EDI,EAX                                             ; 66 0F BB C7
BTC     DS:[EAX],EAX                                        ; 66 67 0F BB 00
BTC     DS:[EAX+00001234H],ECX                              ; 66 67 0F BB 88 34 12 00 00
BTC     CS:[EAX],EBX                                        ; 66 2E 67 0F BB 18
BTC     DS:[EAX],EDX                                        ; 66 67 0F BB 10
BTC     ES:[EAX],ESP                                        ; 66 26 67 0F BB 20
BTC     SS:[EAX],EBP                                        ; 66 36 67 0F BB 28
BTC     FS:[EAX],ESI                                        ; 66 64 67 0F BB 30
BTC     GS:[EAX],EDI                                        ; 66 65 67 0F BB 38
BTC     DS:[EAX+EAX*2+00000100H],EAX                        ; 66 67 0F BB 84 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],EAX                        ; 66 3E 67 0F BB 84 AB 78 56 34 12
BTC     SS:[EBP+EBP],EAX                                    ; 66 67 0F BB 44 2D 00
BTC     SS:[ESP+EBP],EAX                                    ; 66 67 0F BB 04 2C
BTC     DS:[EDX+EBX*8],EAX                                  ; 66 67 0F BB 04 DA
BTC     DS:[EBX+ECX*2+01H],EAX                              ; 66 67 0F BB 44 4B 01
BTC     DS:[ECX+EDX*4+00000100H],EAX                        ; 66 67 0F BB 84 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EAX                       ; 66 67 0F BB 84 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],EAX                          ; 66 67 0F BB 84 2D 40 30 20 10
BTC     EAX,01H                                             ; 66 0F BA F8 01
BTC     EAX,ECX                                             ; 66 0F BB C8
BTC     ECX,ECX                                             ; 66 0F BB C9
BTC     EDX,ECX                                             ; 66 0F BB CA
BTC     EBX,ECX                                             ; 66 0F BB CB
BTC     ESP,ECX                                             ; 66 0F BB CC
BTC     EBP,ECX                                             ; 66 0F BB CD
BTC     ESI,ECX                                             ; 66 0F BB CE
BTC     EDI,ECX                                             ; 66 0F BB CF
BTC     DS:[ECX],EAX                                        ; 66 67 0F BB 01
BTC     DS:[ECX+00001234H],ECX                              ; 66 67 0F BB 89 34 12 00 00
BTC     CS:[ECX],EBX                                        ; 66 2E 67 0F BB 19
BTC     DS:[ECX],EDX                                        ; 66 67 0F BB 11
BTC     ES:[ECX],ESP                                        ; 66 26 67 0F BB 21
BTC     SS:[ECX],EBP                                        ; 66 36 67 0F BB 29
BTC     FS:[ECX],ESI                                        ; 66 64 67 0F BB 31
BTC     GS:[ECX],EDI                                        ; 66 65 67 0F BB 39
BTC     DS:[EAX+EAX*2+00000100H],ECX                        ; 66 67 0F BB 8C 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],ECX                        ; 66 3E 67 0F BB 8C AB 78 56 34 12
BTC     SS:[EBP+EBP],ECX                                    ; 66 67 0F BB 4C 2D 00
BTC     SS:[ESP+EBP],ECX                                    ; 66 67 0F BB 0C 2C
BTC     DS:[EDX+EBX*8],ECX                                  ; 66 67 0F BB 0C DA
BTC     DS:[EBX+ECX*2+01H],ECX                              ; 66 67 0F BB 4C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],ECX                        ; 66 67 0F BB 8C 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ECX                       ; 66 67 0F BB 8C C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],ECX                          ; 66 67 0F BB 8C 2D 40 30 20 10
BTC     ECX,01H                                             ; 66 0F BA F9 01
BTC     EAX,EDX                                             ; 66 0F BB D0
BTC     ECX,EDX                                             ; 66 0F BB D1
BTC     EDX,EDX                                             ; 66 0F BB D2
BTC     EBX,EDX                                             ; 66 0F BB D3
BTC     ESP,EDX                                             ; 66 0F BB D4
BTC     EBP,EDX                                             ; 66 0F BB D5
BTC     ESI,EDX                                             ; 66 0F BB D6
BTC     EDI,EDX                                             ; 66 0F BB D7
BTC     DS:[EDX],EAX                                        ; 66 67 0F BB 02
BTC     DS:[EDX+00001234H],ECX                              ; 66 67 0F BB 8A 34 12 00 00
BTC     CS:[EDX],EBX                                        ; 66 2E 67 0F BB 1A
BTC     DS:[EDX],EDX                                        ; 66 67 0F BB 12
BTC     ES:[EDX],ESP                                        ; 66 26 67 0F BB 22
BTC     SS:[EDX],EBP                                        ; 66 36 67 0F BB 2A
BTC     FS:[EDX],ESI                                        ; 66 64 67 0F BB 32
BTC     GS:[EDX],EDI                                        ; 66 65 67 0F BB 3A
BTC     DS:[EAX+EAX*2+00000100H],EDX                        ; 66 67 0F BB 94 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],EDX                        ; 66 3E 67 0F BB 94 AB 78 56 34 12
BTC     SS:[EBP+EBP],EDX                                    ; 66 67 0F BB 54 2D 00
BTC     SS:[ESP+EBP],EDX                                    ; 66 67 0F BB 14 2C
BTC     DS:[EDX+EBX*8],EDX                                  ; 66 67 0F BB 14 DA
BTC     DS:[EBX+ECX*2+01H],EDX                              ; 66 67 0F BB 54 4B 01
BTC     DS:[ECX+EDX*4+00000100H],EDX                        ; 66 67 0F BB 94 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDX                       ; 66 67 0F BB 94 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],EDX                          ; 66 67 0F BB 94 2D 40 30 20 10
BTC     EDX,01H                                             ; 66 0F BA FA 01
BTC     EAX,EBX                                             ; 66 0F BB D8
BTC     ECX,EBX                                             ; 66 0F BB D9
BTC     EDX,EBX                                             ; 66 0F BB DA
BTC     EBX,EBX                                             ; 66 0F BB DB
BTC     ESP,EBX                                             ; 66 0F BB DC
BTC     EBP,EBX                                             ; 66 0F BB DD
BTC     ESI,EBX                                             ; 66 0F BB DE
BTC     EDI,EBX                                             ; 66 0F BB DF
BTC     DS:[EBX],EAX                                        ; 66 67 0F BB 03
BTC     DS:[EBX+00001234H],ECX                              ; 66 67 0F BB 8B 34 12 00 00
BTC     CS:[EBX],EBX                                        ; 66 2E 67 0F BB 1B
BTC     DS:[EBX],EDX                                        ; 66 67 0F BB 13
BTC     ES:[EBX],ESP                                        ; 66 26 67 0F BB 23
BTC     SS:[EBX],EBP                                        ; 66 36 67 0F BB 2B
BTC     FS:[EBX],ESI                                        ; 66 64 67 0F BB 33
BTC     GS:[EBX],EDI                                        ; 66 65 67 0F BB 3B
BTC     DS:[EAX+EAX*2+00000100H],EBX                        ; 66 67 0F BB 9C 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],EBX                        ; 66 3E 67 0F BB 9C AB 78 56 34 12
BTC     SS:[EBP+EBP],EBX                                    ; 66 67 0F BB 5C 2D 00
BTC     SS:[ESP+EBP],EBX                                    ; 66 67 0F BB 1C 2C
BTC     DS:[EDX+EBX*8],EBX                                  ; 66 67 0F BB 1C DA
BTC     DS:[EBX+ECX*2+01H],EBX                              ; 66 67 0F BB 5C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],EBX                        ; 66 67 0F BB 9C 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBX                       ; 66 67 0F BB 9C C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],EBX                          ; 66 67 0F BB 9C 2D 40 30 20 10
BTC     EBX,01H                                             ; 66 0F BA FB 01
BTC     EAX,ESP                                             ; 66 0F BB E0
BTC     ECX,ESP                                             ; 66 0F BB E1
BTC     EDX,ESP                                             ; 66 0F BB E2
BTC     EBX,ESP                                             ; 66 0F BB E3
BTC     ESP,ESP                                             ; 66 0F BB E4
BTC     EBP,ESP                                             ; 66 0F BB E5
BTC     ESI,ESP                                             ; 66 0F BB E6
BTC     EDI,ESP                                             ; 66 0F BB E7
BTC     SS:[ESP+EAX],EAX                                    ; 66 67 0F BB 04 04
BTC     SS:[ESP+EBP+00001234H],ECX                          ; 66 67 0F BB 8C 2C 34 12 00 00
BTC     CS:[ESP+ECX],EBX                                    ; 66 2E 67 0F BB 1C 0C
BTC     DS:[ESP+EDX],EDX                                    ; 66 3E 67 0F BB 14 14
BTC     ES:[ESP],ESP                                        ; 66 26 67 0F BB 24 24
BTC     DS:[EAX+EAX*2+00000100H],ESP                        ; 66 67 0F BB A4 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],ESP                        ; 66 3E 67 0F BB A4 AB 78 56 34 12
BTC     SS:[EBP+EBP],ESP                                    ; 66 67 0F BB 64 2D 00
BTC     SS:[ESP+EBP],ESP                                    ; 66 67 0F BB 24 2C
BTC     DS:[EDX+EBX*8],ESP                                  ; 66 67 0F BB 24 DA
BTC     DS:[EBX+ECX*2+01H],ESP                              ; 66 67 0F BB 64 4B 01
BTC     DS:[ECX+EDX*4+00000100H],ESP                        ; 66 67 0F BB A4 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESP                       ; 66 67 0F BB A4 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],ESP                          ; 66 67 0F BB A4 2D 40 30 20 10
BTC     ESP,01H                                             ; 66 0F BA FC 01
BTC     EAX,EBP                                             ; 66 0F BB E8
BTC     ECX,EBP                                             ; 66 0F BB E9
BTC     EDX,EBP                                             ; 66 0F BB EA
BTC     EBX,EBP                                             ; 66 0F BB EB
BTC     ESP,EBP                                             ; 66 0F BB EC
BTC     EBP,EBP                                             ; 66 0F BB ED
BTC     ESI,EBP                                             ; 66 0F BB EE
BTC     EDI,EBP                                             ; 66 0F BB EF
BTC     SS:[EBP],EAX                                        ; 66 67 0F BB 45 00
BTC     SS:[EBP+00001234H],ECX                              ; 66 67 0F BB 8D 34 12 00 00
BTC     CS:[EBP],EBX                                        ; 66 2E 67 0F BB 5D 00
BTC     DS:[EBP],EDX                                        ; 66 3E 67 0F BB 55 00
BTC     ES:[EBP],ESP                                        ; 66 26 67 0F BB 65 00
BTC     SS:[EBP],EBP                                        ; 66 67 0F BB 6D 00
BTC     FS:[EBP],ESI                                        ; 66 64 67 0F BB 75 00
BTC     GS:[EBP],EDI                                        ; 66 65 67 0F BB 7D 00
BTC     DS:[EAX+EAX*2+00000100H],EBP                        ; 66 67 0F BB AC 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],EBP                        ; 66 3E 67 0F BB AC AB 78 56 34 12
BTC     SS:[EBP+EBP],EBP                                    ; 66 67 0F BB 6C 2D 00
BTC     SS:[ESP+EBP],EBP                                    ; 66 67 0F BB 2C 2C
BTC     DS:[EDX+EBX*8],EBP                                  ; 66 67 0F BB 2C DA
BTC     DS:[EBX+ECX*2+01H],EBP                              ; 66 67 0F BB 6C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],EBP                        ; 66 67 0F BB AC 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EBP                       ; 66 67 0F BB AC C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],EBP                          ; 66 67 0F BB AC 2D 40 30 20 10
BTC     EBP,01H                                             ; 66 0F BA FD 01
BTC     EAX,ESI                                             ; 66 0F BB F0
BTC     ECX,ESI                                             ; 66 0F BB F1
BTC     EDX,ESI                                             ; 66 0F BB F2
BTC     EBX,ESI                                             ; 66 0F BB F3
BTC     ESP,ESI                                             ; 66 0F BB F4
BTC     EBP,ESI                                             ; 66 0F BB F5
BTC     ESI,ESI                                             ; 66 0F BB F6
BTC     EDI,ESI                                             ; 66 0F BB F7
BTC     DS:[ESI],EAX                                        ; 66 67 0F BB 06
BTC     DS:[ESI+00001234H],ECX                              ; 66 67 0F BB 8E 34 12 00 00
BTC     CS:[ESI],EBX                                        ; 66 2E 67 0F BB 1E
BTC     DS:[ESI],EDX                                        ; 66 67 0F BB 16
BTC     ES:[ESI],ESP                                        ; 66 26 67 0F BB 26
BTC     SS:[ESI],EBP                                        ; 66 36 67 0F BB 2E
BTC     FS:[ESI],ESI                                        ; 66 64 67 0F BB 36
BTC     GS:[ESI],EDI                                        ; 66 65 67 0F BB 3E
BTC     DS:[EAX+EAX*2+00000100H],ESI                        ; 66 67 0F BB B4 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],ESI                        ; 66 3E 67 0F BB B4 AB 78 56 34 12
BTC     SS:[EBP+EBP],ESI                                    ; 66 67 0F BB 74 2D 00
BTC     SS:[ESP+EBP],ESI                                    ; 66 67 0F BB 34 2C
BTC     DS:[EDX+EBX*8],ESI                                  ; 66 67 0F BB 34 DA
BTC     DS:[EBX+ECX*2+01H],ESI                              ; 66 67 0F BB 74 4B 01
BTC     DS:[ECX+EDX*4+00000100H],ESI                        ; 66 67 0F BB B4 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],ESI                       ; 66 67 0F BB B4 C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],ESI                          ; 66 67 0F BB B4 2D 40 30 20 10
BTC     ESI,01H                                             ; 66 0F BA FE 01
BTC     EAX,EDI                                             ; 66 0F BB F8
BTC     ECX,EDI                                             ; 66 0F BB F9
BTC     EDX,EDI                                             ; 66 0F BB FA
BTC     EBX,EDI                                             ; 66 0F BB FB
BTC     ESP,EDI                                             ; 66 0F BB FC
BTC     EBP,EDI                                             ; 66 0F BB FD
BTC     ESI,EDI                                             ; 66 0F BB FE
BTC     EDI,EDI                                             ; 66 0F BB FF
BTC     DS:[EDI],EAX                                        ; 66 67 0F BB 07
BTC     DS:[EDI+00001234H],ECX                              ; 66 67 0F BB 8F 34 12 00 00
BTC     CS:[EDI],EBX                                        ; 66 2E 67 0F BB 1F
BTC     DS:[EDI],EDX                                        ; 66 67 0F BB 17
BTC     ES:[EDI],ESP                                        ; 66 26 67 0F BB 27
BTC     SS:[EDI],EBP                                        ; 66 36 67 0F BB 2F
BTC     FS:[EDI],ESI                                        ; 66 64 67 0F BB 37
BTC     GS:[EDI],EDI                                        ; 66 65 67 0F BB 3F
BTC     DS:[EAX+EAX*2+00000100H],EDI                        ; 66 67 0F BB BC 40 00 01 00 00
BTC     DS:[EBX+EBP*4+12345678H],EDI                        ; 66 3E 67 0F BB BC AB 78 56 34 12
BTC     SS:[EBP+EBP],EDI                                    ; 66 67 0F BB 7C 2D 00
BTC     SS:[ESP+EBP],EDI                                    ; 66 67 0F BB 3C 2C
BTC     DS:[EDX+EBX*8],EDI                                  ; 66 67 0F BB 3C DA
BTC     DS:[EBX+ECX*2+01H],EDI                              ; 66 67 0F BB 7C 4B 01
BTC     DS:[ECX+EDX*4+00000100H],EDI                        ; 66 67 0F BB BC 91 00 01 00 00
BTC     DS:[EAX+EAX*8+0A0B0C0D0H],EDI                       ; 66 67 0F BB BC C0 D0 C0 B0 A0
BTC     SS:[EBP+EBP+10203040H],EDI                          ; 66 67 0F BB BC 2D 40 30 20 10
BTC     word ptr SS:[EAX+EBP],0FFH                          ; 67 0F BA 3C 28 FF
BTC     dword ptr SS:[EAX+EBP*8],0FFH                       ; 66 67 0F BA 3C E8 FF
BTC     EDI,01H                                             ; 66 0F BA FF 01
BTC     AX,AX                                               ; 0F BB C0
BTC     CX,AX                                               ; 0F BB C1
BTC     DX,AX                                               ; 0F BB C2
BTC     BX,AX                                               ; 0F BB C3
BTC     SP,AX                                               ; 0F BB C4
BTC     BP,AX                                               ; 0F BB C5
BTC     SI,AX                                               ; 0F BB C6
BTC     DI,AX                                               ; 0F BB C7
BTC     DS:[BX+SI+1234H],AX                                 ; 0F BB 80 34 12
BTC     DS:[BX+DI+1234H],AX                                 ; 0F BB 81 34 12
BTC     SS:[BP+SI+1234H],AX                                 ; 0F BB 82 34 12
BTC     SS:[BP+DI+1234H],AX                                 ; 0F BB 83 34 12
BTC     SS:[BP+1234H],AX                                    ; 0F BB 86 34 12
BTC     DS:[SI+1234H],AX                                    ; 0F BB 84 34 12
BTC     DS:[DI+1234H],AX                                    ; 0F BB 85 34 12
BTC     CS:[BX+SI],AX                                       ; 2E 0F BB 00
BTC     CS:[BX+DI],AX                                       ; 2E 0F BB 01
BTC     CS:[BP+SI],AX                                       ; 2E 0F BB 02
BTC     CS:[BP+DI],AX                                       ; 2E 0F BB 03
BTC     CS:[BP],AX                                          ; 2E 0F BB 46 00
BTC     CS:[SI],AX                                          ; 2E 0F BB 04
BTC     CS:[DI],AX                                          ; 2E 0F BB 05
BTC     DS:[BX+SI],AX                                       ; 0F BB 00
BTC     DS:[BX+DI],AX                                       ; 0F BB 01
BTC     DS:[BP+SI],AX                                       ; 3E 0F BB 02
BTC     DS:[BP+DI],AX                                       ; 3E 0F BB 03
BTC     DS:[BP],AX                                          ; 3E 0F BB 46 00
BTC     DS:[SI],AX                                          ; 0F BB 04
BTC     DS:[DI],AX                                          ; 0F BB 05
BTC     ES:[BX+SI],AX                                       ; 26 0F BB 00
BTC     ES:[BX+DI],AX                                       ; 26 0F BB 01
BTC     ES:[BP+SI],AX                                       ; 26 0F BB 02
BTC     ES:[BP+DI],AX                                       ; 26 0F BB 03
BTC     ES:[BP],AX                                          ; 26 0F BB 46 00
BTC     ES:[SI],AX                                          ; 26 0F BB 04
BTC     ES:[DI],AX                                          ; 26 0F BB 05
BTC     SS:[BX+SI],AX                                       ; 36 0F BB 00
BTC     SS:[BX+DI],AX                                       ; 36 0F BB 01
BTC     SS:[BP+SI],AX                                       ; 0F BB 02
BTC     SS:[BP+DI],AX                                       ; 0F BB 03
BTC     SS:[BP],AX                                          ; 0F BB 46 00
BTC     SS:[SI],AX                                          ; 36 0F BB 04
BTC     SS:[DI],AX                                          ; 36 0F BB 05
BTC     FS:[BX+SI],AX                                       ; 64 0F BB 00
BTC     FS:[BX+DI],AX                                       ; 64 0F BB 01
BTC     FS:[BP+SI],AX                                       ; 64 0F BB 02
BTC     FS:[BP+DI],AX                                       ; 64 0F BB 03
BTC     FS:[BP],AX                                          ; 64 0F BB 46 00
BTC     FS:[SI],AX                                          ; 64 0F BB 04
BTC     FS:[DI],AX                                          ; 64 0F BB 05
BTC     GS:[BX+SI],AX                                       ; 65 0F BB 00
BTC     GS:[BX+DI],AX                                       ; 65 0F BB 01
BTC     GS:[BP+SI],AX                                       ; 65 0F BB 02
BTC     GS:[BP+DI],AX                                       ; 65 0F BB 03
BTC     GS:[BP],AX                                          ; 65 0F BB 46 00
BTC     GS:[SI],AX                                          ; 65 0F BB 04
BTC     GS:[DI],AX                                          ; 65 0F BB 05
BTC     AX,01H                                              ; 0F BA F8 01
BTC     AX,0FFH                                             ; 0F BA F8 FF
BTC     AX,CX                                               ; 0F BB C8
BTC     CX,CX                                               ; 0F BB C9
BTC     DX,CX                                               ; 0F BB CA
BTC     BX,CX                                               ; 0F BB CB
BTC     SP,CX                                               ; 0F BB CC
BTC     BP,CX                                               ; 0F BB CD
BTC     SI,CX                                               ; 0F BB CE
BTC     DI,CX                                               ; 0F BB CF
BTC     DS:[BX+SI+1234H],CX                                 ; 0F BB 88 34 12
BTC     DS:[BX+DI+1234H],CX                                 ; 0F BB 89 34 12
BTC     SS:[BP+SI+1234H],CX                                 ; 0F BB 8A 34 12
BTC     SS:[BP+DI+1234H],CX                                 ; 0F BB 8B 34 12
BTC     SS:[BP+1234H],CX                                    ; 0F BB 8E 34 12
BTC     DS:[SI+1234H],CX                                    ; 0F BB 8C 34 12
BTC     DS:[DI+1234H],CX                                    ; 0F BB 8D 34 12
BTC     CS:[BX+SI],CX                                       ; 2E 0F BB 08
BTC     CS:[BX+DI],CX                                       ; 2E 0F BB 09
BTC     CS:[BP+SI],CX                                       ; 2E 0F BB 0A
BTC     CS:[BP+DI],CX                                       ; 2E 0F BB 0B
BTC     CS:[BP],CX                                          ; 2E 0F BB 4E 00
BTC     CS:[SI],CX                                          ; 2E 0F BB 0C
BTC     CS:[DI],CX                                          ; 2E 0F BB 0D
BTC     DS:[BX+SI],CX                                       ; 0F BB 08
BTC     DS:[BX+DI],CX                                       ; 0F BB 09
BTC     DS:[BP+SI],CX                                       ; 3E 0F BB 0A
BTC     DS:[BP+DI],CX                                       ; 3E 0F BB 0B
BTC     DS:[BP],CX                                          ; 3E 0F BB 4E 00
BTC     DS:[SI],CX                                          ; 0F BB 0C
BTC     DS:[DI],CX                                          ; 0F BB 0D
BTC     ES:[BX+SI],CX                                       ; 26 0F BB 08
BTC     ES:[BX+DI],CX                                       ; 26 0F BB 09
BTC     ES:[BP+SI],CX                                       ; 26 0F BB 0A
BTC     ES:[BP+DI],CX                                       ; 26 0F BB 0B
BTC     ES:[BP],CX                                          ; 26 0F BB 4E 00
BTC     ES:[SI],CX                                          ; 26 0F BB 0C
BTC     ES:[DI],CX                                          ; 26 0F BB 0D
BTC     SS:[BX+SI],CX                                       ; 36 0F BB 08
BTC     SS:[BX+DI],CX                                       ; 36 0F BB 09
BTC     SS:[BP+SI],CX                                       ; 0F BB 0A
BTC     SS:[BP+DI],CX                                       ; 0F BB 0B
BTC     SS:[BP],CX                                          ; 0F BB 4E 00
BTC     SS:[SI],CX                                          ; 36 0F BB 0C
BTC     SS:[DI],CX                                          ; 36 0F BB 0D
BTC     FS:[BX+SI],CX                                       ; 64 0F BB 08
BTC     FS:[BX+DI],CX                                       ; 64 0F BB 09
BTC     FS:[BP+SI],CX                                       ; 64 0F BB 0A
BTC     FS:[BP+DI],CX                                       ; 64 0F BB 0B
BTC     FS:[BP],CX                                          ; 64 0F BB 4E 00
BTC     FS:[SI],CX                                          ; 64 0F BB 0C
BTC     FS:[DI],CX                                          ; 64 0F BB 0D
BTC     GS:[BX+SI],CX                                       ; 65 0F BB 08
BTC     GS:[BX+DI],CX                                       ; 65 0F BB 09
BTC     GS:[BP+SI],CX                                       ; 65 0F BB 0A
BTC     GS:[BP+DI],CX                                       ; 65 0F BB 0B
BTC     GS:[BP],CX                                          ; 65 0F BB 4E 00
BTC     GS:[SI],CX                                          ; 65 0F BB 0C
BTC     GS:[DI],CX                                          ; 65 0F BB 0D
BTC     CX,01H                                              ; 0F BA F9 01
BTC     CX,0FFH                                             ; 0F BA F9 FF
BTC     AX,DX                                               ; 0F BB D0
BTC     CX,DX                                               ; 0F BB D1
BTC     DX,DX                                               ; 0F BB D2
BTC     BX,DX                                               ; 0F BB D3
BTC     SP,DX                                               ; 0F BB D4
BTC     BP,DX                                               ; 0F BB D5
BTC     SI,DX                                               ; 0F BB D6
BTC     DI,DX                                               ; 0F BB D7
BTC     DS:[BX+SI+1234H],DX                                 ; 0F BB 90 34 12
BTC     DS:[BX+DI+1234H],DX                                 ; 0F BB 91 34 12
BTC     SS:[BP+SI+1234H],DX                                 ; 0F BB 92 34 12
BTC     SS:[BP+DI+1234H],DX                                 ; 0F BB 93 34 12
BTC     SS:[BP+1234H],DX                                    ; 0F BB 96 34 12
BTC     DS:[SI+1234H],DX                                    ; 0F BB 94 34 12
BTC     DS:[DI+1234H],DX                                    ; 0F BB 95 34 12
BTC     CS:[BX+SI],DX                                       ; 2E 0F BB 10
BTC     CS:[BX+DI],DX                                       ; 2E 0F BB 11
BTC     CS:[BP+SI],DX                                       ; 2E 0F BB 12
BTC     CS:[BP+DI],DX                                       ; 2E 0F BB 13
BTC     CS:[BP],DX                                          ; 2E 0F BB 56 00
BTC     CS:[SI],DX                                          ; 2E 0F BB 14
BTC     CS:[DI],DX                                          ; 2E 0F BB 15
BTC     DS:[BX+SI],DX                                       ; 0F BB 10
BTC     DS:[BX+DI],DX                                       ; 0F BB 11
BTC     DS:[BP+SI],DX                                       ; 3E 0F BB 12
BTC     DS:[BP+DI],DX                                       ; 3E 0F BB 13
BTC     DS:[BP],DX                                          ; 3E 0F BB 56 00
BTC     DS:[SI],DX                                          ; 0F BB 14
BTC     DS:[DI],DX                                          ; 0F BB 15
BTC     ES:[BX+SI],DX                                       ; 26 0F BB 10
BTC     ES:[BX+DI],DX                                       ; 26 0F BB 11
BTC     ES:[BP+SI],DX                                       ; 26 0F BB 12
BTC     ES:[BP+DI],DX                                       ; 26 0F BB 13
BTC     ES:[BP],DX                                          ; 26 0F BB 56 00
BTC     ES:[SI],DX                                          ; 26 0F BB 14
BTC     ES:[DI],DX                                          ; 26 0F BB 15
BTC     SS:[BX+SI],DX                                       ; 36 0F BB 10
BTC     SS:[BX+DI],DX                                       ; 36 0F BB 11
BTC     SS:[BP+SI],DX                                       ; 0F BB 12
BTC     SS:[BP+DI],DX                                       ; 0F BB 13
BTC     SS:[BP],DX                                          ; 0F BB 56 00
BTC     SS:[SI],DX                                          ; 36 0F BB 14
BTC     SS:[DI],DX                                          ; 36 0F BB 15
BTC     FS:[BX+SI],DX                                       ; 64 0F BB 10
BTC     FS:[BX+DI],DX                                       ; 64 0F BB 11
BTC     FS:[BP+SI],DX                                       ; 64 0F BB 12
BTC     FS:[BP+DI],DX                                       ; 64 0F BB 13
BTC     FS:[BP],DX                                          ; 64 0F BB 56 00
BTC     FS:[SI],DX                                          ; 64 0F BB 14
BTC     FS:[DI],DX                                          ; 64 0F BB 15
BTC     GS:[BX+SI],DX                                       ; 65 0F BB 10
BTC     GS:[BX+DI],DX                                       ; 65 0F BB 11
BTC     GS:[BP+SI],DX                                       ; 65 0F BB 12
BTC     GS:[BP+DI],DX                                       ; 65 0F BB 13
BTC     GS:[BP],DX                                          ; 65 0F BB 56 00
BTC     GS:[SI],DX                                          ; 65 0F BB 14
BTC     GS:[DI],DX                                          ; 65 0F BB 15
BTC     DX,01H                                              ; 0F BA FA 01
BTC     DX,0FFH                                             ; 0F BA FA FF
BTC     AX,BX                                               ; 0F BB D8
BTC     CX,BX                                               ; 0F BB D9
BTC     DX,BX                                               ; 0F BB DA
BTC     BX,BX                                               ; 0F BB DB
BTC     SP,BX                                               ; 0F BB DC
BTC     BP,BX                                               ; 0F BB DD
BTC     SI,BX                                               ; 0F BB DE
BTC     DI,BX                                               ; 0F BB DF
BTC     DS:[BX+SI+1234H],BX                                 ; 0F BB 98 34 12
BTC     DS:[BX+DI+1234H],BX                                 ; 0F BB 99 34 12
BTC     SS:[BP+SI+1234H],BX                                 ; 0F BB 9A 34 12
BTC     SS:[BP+DI+1234H],BX                                 ; 0F BB 9B 34 12
BTC     SS:[BP+1234H],BX                                    ; 0F BB 9E 34 12
BTC     DS:[SI+1234H],BX                                    ; 0F BB 9C 34 12
BTC     DS:[DI+1234H],BX                                    ; 0F BB 9D 34 12
BTC     CS:[BX+SI],BX                                       ; 2E 0F BB 18
BTC     CS:[BX+DI],BX                                       ; 2E 0F BB 19
BTC     CS:[BP+SI],BX                                       ; 2E 0F BB 1A
BTC     CS:[BP+DI],BX                                       ; 2E 0F BB 1B
BTC     CS:[BP],BX                                          ; 2E 0F BB 5E 00
BTC     CS:[SI],BX                                          ; 2E 0F BB 1C
BTC     CS:[DI],BX                                          ; 2E 0F BB 1D
BTC     DS:[BX+SI],BX                                       ; 0F BB 18
BTC     DS:[BX+DI],BX                                       ; 0F BB 19
BTC     DS:[BP+SI],BX                                       ; 3E 0F BB 1A
BTC     DS:[BP+DI],BX                                       ; 3E 0F BB 1B
BTC     DS:[BP],BX                                          ; 3E 0F BB 5E 00
BTC     DS:[SI],BX                                          ; 0F BB 1C
BTC     DS:[DI],BX                                          ; 0F BB 1D
BTC     ES:[BX+SI],BX                                       ; 26 0F BB 18
BTC     ES:[BX+DI],BX                                       ; 26 0F BB 19
BTC     ES:[BP+SI],BX                                       ; 26 0F BB 1A
BTC     ES:[BP+DI],BX                                       ; 26 0F BB 1B
BTC     ES:[BP],BX                                          ; 26 0F BB 5E 00
BTC     ES:[SI],BX                                          ; 26 0F BB 1C
BTC     ES:[DI],BX                                          ; 26 0F BB 1D
BTC     SS:[BX+SI],BX                                       ; 36 0F BB 18
BTC     SS:[BX+DI],BX                                       ; 36 0F BB 19
BTC     SS:[BP+SI],BX                                       ; 0F BB 1A
BTC     SS:[BP+DI],BX                                       ; 0F BB 1B
BTC     SS:[BP],BX                                          ; 0F BB 5E 00
BTC     SS:[SI],BX                                          ; 36 0F BB 1C
BTC     SS:[DI],BX                                          ; 36 0F BB 1D
BTC     FS:[BX+SI],BX                                       ; 64 0F BB 18
BTC     FS:[BX+DI],BX                                       ; 64 0F BB 19
BTC     FS:[BP+SI],BX                                       ; 64 0F BB 1A
BTC     FS:[BP+DI],BX                                       ; 64 0F BB 1B
BTC     FS:[BP],BX                                          ; 64 0F BB 5E 00
BTC     FS:[SI],BX                                          ; 64 0F BB 1C
BTC     FS:[DI],BX                                          ; 64 0F BB 1D
BTC     GS:[BX+SI],BX                                       ; 65 0F BB 18
BTC     GS:[BX+DI],BX                                       ; 65 0F BB 19
BTC     GS:[BP+SI],BX                                       ; 65 0F BB 1A
BTC     GS:[BP+DI],BX                                       ; 65 0F BB 1B
BTC     GS:[BP],BX                                          ; 65 0F BB 5E 00
BTC     GS:[SI],BX                                          ; 65 0F BB 1C
BTC     GS:[DI],BX                                          ; 65 0F BB 1D
BTC     BX,01H                                              ; 0F BA FB 01
BTC     BX,0FFH                                             ; 0F BA FB FF
BTC     AX,SP                                               ; 0F BB E0
BTC     CX,SP                                               ; 0F BB E1
BTC     DX,SP                                               ; 0F BB E2
BTC     BX,SP                                               ; 0F BB E3
BTC     SP,SP                                               ; 0F BB E4
BTC     BP,SP                                               ; 0F BB E5
BTC     SI,SP                                               ; 0F BB E6
BTC     DI,SP                                               ; 0F BB E7
BTC     DS:[BX+SI+1234H],SP                                 ; 0F BB A0 34 12
BTC     DS:[BX+DI+1234H],SP                                 ; 0F BB A1 34 12
BTC     SS:[BP+SI+1234H],SP                                 ; 0F BB A2 34 12
BTC     SS:[BP+DI+1234H],SP                                 ; 0F BB A3 34 12
BTC     SS:[BP+1234H],SP                                    ; 0F BB A6 34 12
BTC     DS:[SI+1234H],SP                                    ; 0F BB A4 34 12
BTC     DS:[DI+1234H],SP                                    ; 0F BB A5 34 12
BTC     CS:[BX+SI],SP                                       ; 2E 0F BB 20
BTC     CS:[BX+DI],SP                                       ; 2E 0F BB 21
BTC     CS:[BP+SI],SP                                       ; 2E 0F BB 22
BTC     CS:[BP+DI],SP                                       ; 2E 0F BB 23
BTC     CS:[BP],SP                                          ; 2E 0F BB 66 00
BTC     CS:[SI],SP                                          ; 2E 0F BB 24
BTC     CS:[DI],SP                                          ; 2E 0F BB 25
BTC     DS:[BX+SI],SP                                       ; 0F BB 20
BTC     DS:[BX+DI],SP                                       ; 0F BB 21
BTC     DS:[BP+SI],SP                                       ; 3E 0F BB 22
BTC     DS:[BP+DI],SP                                       ; 3E 0F BB 23
BTC     DS:[BP],SP                                          ; 3E 0F BB 66 00
BTC     DS:[SI],SP                                          ; 0F BB 24
BTC     DS:[DI],SP                                          ; 0F BB 25
BTC     ES:[BX+SI],SP                                       ; 26 0F BB 20
BTC     ES:[BX+DI],SP                                       ; 26 0F BB 21
BTC     ES:[BP+SI],SP                                       ; 26 0F BB 22
BTC     ES:[BP+DI],SP                                       ; 26 0F BB 23
BTC     ES:[BP],SP                                          ; 26 0F BB 66 00
BTC     ES:[SI],SP                                          ; 26 0F BB 24
BTC     ES:[DI],SP                                          ; 26 0F BB 25
BTC     SS:[BX+SI],SP                                       ; 36 0F BB 20
BTC     SS:[BX+DI],SP                                       ; 36 0F BB 21
BTC     SS:[BP+SI],SP                                       ; 0F BB 22
BTC     SS:[BP+DI],SP                                       ; 0F BB 23
BTC     SS:[BP],SP                                          ; 0F BB 66 00
BTC     SS:[SI],SP                                          ; 36 0F BB 24
BTC     SS:[DI],SP                                          ; 36 0F BB 25
BTC     FS:[BX+SI],SP                                       ; 64 0F BB 20
BTC     FS:[BX+DI],SP                                       ; 64 0F BB 21
BTC     FS:[BP+SI],SP                                       ; 64 0F BB 22
BTC     FS:[BP+DI],SP                                       ; 64 0F BB 23
BTC     FS:[BP],SP                                          ; 64 0F BB 66 00
BTC     FS:[SI],SP                                          ; 64 0F BB 24
BTC     FS:[DI],SP                                          ; 64 0F BB 25
BTC     GS:[BX+SI],SP                                       ; 65 0F BB 20
BTC     GS:[BX+DI],SP                                       ; 65 0F BB 21
BTC     GS:[BP+SI],SP                                       ; 65 0F BB 22
BTC     GS:[BP+DI],SP                                       ; 65 0F BB 23
BTC     GS:[BP],SP                                          ; 65 0F BB 66 00
BTC     GS:[SI],SP                                          ; 65 0F BB 24
BTC     GS:[DI],SP                                          ; 65 0F BB 25
BTC     SP,01H                                              ; 0F BA FC 01
BTC     SP,0FFH                                             ; 0F BA FC FF
BTC     AX,BP                                               ; 0F BB E8
BTC     CX,BP                                               ; 0F BB E9
BTC     DX,BP                                               ; 0F BB EA
BTC     BX,BP                                               ; 0F BB EB
BTC     SP,BP                                               ; 0F BB EC
BTC     BP,BP                                               ; 0F BB ED
BTC     SI,BP                                               ; 0F BB EE
BTC     DI,BP                                               ; 0F BB EF
BTC     DS:[BX+SI+1234H],BP                                 ; 0F BB A8 34 12
BTC     DS:[BX+DI+1234H],BP                                 ; 0F BB A9 34 12
BTC     SS:[BP+SI+1234H],BP                                 ; 0F BB AA 34 12
BTC     SS:[BP+DI+1234H],BP                                 ; 0F BB AB 34 12
BTC     SS:[BP+1234H],BP                                    ; 0F BB AE 34 12
BTC     DS:[SI+1234H],BP                                    ; 0F BB AC 34 12
BTC     DS:[DI+1234H],BP                                    ; 0F BB AD 34 12
BTC     CS:[BX+SI],BP                                       ; 2E 0F BB 28
BTC     CS:[BX+DI],BP                                       ; 2E 0F BB 29
BTC     CS:[BP+SI],BP                                       ; 2E 0F BB 2A
BTC     CS:[BP+DI],BP                                       ; 2E 0F BB 2B
BTC     CS:[BP],BP                                          ; 2E 0F BB 6E 00
BTC     CS:[SI],BP                                          ; 2E 0F BB 2C
BTC     CS:[DI],BP                                          ; 2E 0F BB 2D
BTC     DS:[BX+SI],BP                                       ; 0F BB 28
BTC     DS:[BX+DI],BP                                       ; 0F BB 29
BTC     DS:[BP+SI],BP                                       ; 3E 0F BB 2A
BTC     DS:[BP+DI],BP                                       ; 3E 0F BB 2B
BTC     DS:[BP],BP                                          ; 3E 0F BB 6E 00
BTC     DS:[SI],BP                                          ; 0F BB 2C
BTC     DS:[DI],BP                                          ; 0F BB 2D
BTC     ES:[BX+SI],BP                                       ; 26 0F BB 28
BTC     ES:[BX+DI],BP                                       ; 26 0F BB 29
BTC     ES:[BP+SI],BP                                       ; 26 0F BB 2A
BTC     ES:[BP+DI],BP                                       ; 26 0F BB 2B
BTC     ES:[BP],BP                                          ; 26 0F BB 6E 00
BTC     ES:[SI],BP                                          ; 26 0F BB 2C
BTC     ES:[DI],BP                                          ; 26 0F BB 2D
BTC     SS:[BX+SI],BP                                       ; 36 0F BB 28
BTC     SS:[BX+DI],BP                                       ; 36 0F BB 29
BTC     SS:[BP+SI],BP                                       ; 0F BB 2A
BTC     SS:[BP+DI],BP                                       ; 0F BB 2B
BTC     SS:[BP],BP                                          ; 0F BB 6E 00
BTC     SS:[SI],BP                                          ; 36 0F BB 2C
BTC     SS:[DI],BP                                          ; 36 0F BB 2D
BTC     FS:[BX+SI],BP                                       ; 64 0F BB 28
BTC     FS:[BX+DI],BP                                       ; 64 0F BB 29
BTC     FS:[BP+SI],BP                                       ; 64 0F BB 2A
BTC     FS:[BP+DI],BP                                       ; 64 0F BB 2B
BTC     FS:[BP],BP                                          ; 64 0F BB 6E 00
BTC     FS:[SI],BP                                          ; 64 0F BB 2C
BTC     FS:[DI],BP                                          ; 64 0F BB 2D
BTC     GS:[BX+SI],BP                                       ; 65 0F BB 28
BTC     GS:[BX+DI],BP                                       ; 65 0F BB 29
BTC     GS:[BP+SI],BP                                       ; 65 0F BB 2A
BTC     GS:[BP+DI],BP                                       ; 65 0F BB 2B
BTC     GS:[BP],BP                                          ; 65 0F BB 6E 00
BTC     GS:[SI],BP                                          ; 65 0F BB 2C
BTC     GS:[DI],BP                                          ; 65 0F BB 2D
BTC     BP,01H                                              ; 0F BA FD 01
BTC     BP,0FFH                                             ; 0F BA FD FF
BTC     AX,SI                                               ; 0F BB F0
BTC     CX,SI                                               ; 0F BB F1
BTC     DX,SI                                               ; 0F BB F2
BTC     BX,SI                                               ; 0F BB F3
BTC     SP,SI                                               ; 0F BB F4
BTC     BP,SI                                               ; 0F BB F5
BTC     SI,SI                                               ; 0F BB F6
BTC     DI,SI                                               ; 0F BB F7
BTC     DS:[BX+SI+1234H],SI                                 ; 0F BB B0 34 12
BTC     DS:[BX+DI+1234H],SI                                 ; 0F BB B1 34 12
BTC     SS:[BP+SI+1234H],SI                                 ; 0F BB B2 34 12
BTC     SS:[BP+DI+1234H],SI                                 ; 0F BB B3 34 12
BTC     SS:[BP+1234H],SI                                    ; 0F BB B6 34 12
BTC     DS:[SI+1234H],SI                                    ; 0F BB B4 34 12
BTC     DS:[DI+1234H],SI                                    ; 0F BB B5 34 12
BTC     CS:[BX+SI],SI                                       ; 2E 0F BB 30
BTC     CS:[BX+DI],SI                                       ; 2E 0F BB 31
BTC     CS:[BP+SI],SI                                       ; 2E 0F BB 32
BTC     CS:[BP+DI],SI                                       ; 2E 0F BB 33
BTC     CS:[BP],SI                                          ; 2E 0F BB 76 00
BTC     CS:[SI],SI                                          ; 2E 0F BB 34
BTC     CS:[DI],SI                                          ; 2E 0F BB 35
BTC     DS:[BX+SI],SI                                       ; 0F BB 30
BTC     DS:[BX+DI],SI                                       ; 0F BB 31
BTC     DS:[BP+SI],SI                                       ; 3E 0F BB 32
BTC     DS:[BP+DI],SI                                       ; 3E 0F BB 33
BTC     DS:[BP],SI                                          ; 3E 0F BB 76 00
BTC     DS:[SI],SI                                          ; 0F BB 34
BTC     DS:[DI],SI                                          ; 0F BB 35
BTC     ES:[BX+SI],SI                                       ; 26 0F BB 30
BTC     ES:[BX+DI],SI                                       ; 26 0F BB 31
BTC     ES:[BP+SI],SI                                       ; 26 0F BB 32
BTC     ES:[BP+DI],SI                                       ; 26 0F BB 33
BTC     ES:[BP],SI                                          ; 26 0F BB 76 00
BTC     ES:[SI],SI                                          ; 26 0F BB 34
BTC     ES:[DI],SI                                          ; 26 0F BB 35
BTC     SS:[BX+SI],SI                                       ; 36 0F BB 30
BTC     SS:[BX+DI],SI                                       ; 36 0F BB 31
BTC     SS:[BP+SI],SI                                       ; 0F BB 32
BTC     SS:[BP+DI],SI                                       ; 0F BB 33
BTC     SS:[BP],SI                                          ; 0F BB 76 00
BTC     SS:[SI],SI                                          ; 36 0F BB 34
BTC     SS:[DI],SI                                          ; 36 0F BB 35
BTC     FS:[BX+SI],SI                                       ; 64 0F BB 30
BTC     FS:[BX+DI],SI                                       ; 64 0F BB 31
BTC     FS:[BP+SI],SI                                       ; 64 0F BB 32
BTC     FS:[BP+DI],SI                                       ; 64 0F BB 33
BTC     FS:[BP],SI                                          ; 64 0F BB 76 00
BTC     FS:[SI],SI                                          ; 64 0F BB 34
BTC     FS:[DI],SI                                          ; 64 0F BB 35
BTC     GS:[BX+SI],SI                                       ; 65 0F BB 30
BTC     GS:[BX+DI],SI                                       ; 65 0F BB 31
BTC     GS:[BP+SI],SI                                       ; 65 0F BB 32
BTC     GS:[BP+DI],SI                                       ; 65 0F BB 33
BTC     GS:[BP],SI                                          ; 65 0F BB 76 00
BTC     GS:[SI],SI                                          ; 65 0F BB 34
BTC     GS:[DI],SI                                          ; 65 0F BB 35
BTC     SI,01H                                              ; 0F BA FE 01
BTC     SI,0FFH                                             ; 0F BA FE FF
BTC     AX,DI                                               ; 0F BB F8
BTC     CX,DI                                               ; 0F BB F9
BTC     DX,DI                                               ; 0F BB FA
BTC     BX,DI                                               ; 0F BB FB
BTC     SP,DI                                               ; 0F BB FC
BTC     BP,DI                                               ; 0F BB FD
BTC     SI,DI                                               ; 0F BB FE
BTC     DI,DI                                               ; 0F BB FF
BTC     DS:[BX+SI+1234H],DI                                 ; 0F BB B8 34 12
BTC     DS:[BX+DI+1234H],DI                                 ; 0F BB B9 34 12
BTC     SS:[BP+SI+1234H],DI                                 ; 0F BB BA 34 12
BTC     SS:[BP+DI+1234H],DI                                 ; 0F BB BB 34 12
BTC     SS:[BP+1234H],DI                                    ; 0F BB BE 34 12
BTC     DS:[SI+1234H],DI                                    ; 0F BB BC 34 12
BTC     DS:[DI+1234H],DI                                    ; 0F BB BD 34 12
BTC     CS:[BX+SI],DI                                       ; 2E 0F BB 38
BTC     CS:[BX+DI],DI                                       ; 2E 0F BB 39
BTC     CS:[BP+SI],DI                                       ; 2E 0F BB 3A
BTC     CS:[BP+DI],DI                                       ; 2E 0F BB 3B
BTC     CS:[BP],DI                                          ; 2E 0F BB 7E 00
BTC     CS:[SI],DI                                          ; 2E 0F BB 3C
BTC     CS:[DI],DI                                          ; 2E 0F BB 3D
BTC     DS:[BX+SI],DI                                       ; 0F BB 38
BTC     DS:[BX+DI],DI                                       ; 0F BB 39
BTC     DS:[BP+SI],DI                                       ; 3E 0F BB 3A
BTC     DS:[BP+DI],DI                                       ; 3E 0F BB 3B
BTC     DS:[BP],DI                                          ; 3E 0F BB 7E 00
BTC     DS:[SI],DI                                          ; 0F BB 3C
BTC     DS:[DI],DI                                          ; 0F BB 3D
BTC     ES:[BX+SI],DI                                       ; 26 0F BB 38
BTC     ES:[BX+DI],DI                                       ; 26 0F BB 39
BTC     ES:[BP+SI],DI                                       ; 26 0F BB 3A
BTC     ES:[BP+DI],DI                                       ; 26 0F BB 3B
BTC     ES:[BP],DI                                          ; 26 0F BB 7E 00
BTC     ES:[SI],DI                                          ; 26 0F BB 3C
BTC     ES:[DI],DI                                          ; 26 0F BB 3D
BTC     SS:[BX+SI],DI                                       ; 36 0F BB 38
BTC     SS:[BX+DI],DI                                       ; 36 0F BB 39
BTC     SS:[BP+SI],DI                                       ; 0F BB 3A
BTC     SS:[BP+DI],DI                                       ; 0F BB 3B
BTC     SS:[BP],DI                                          ; 0F BB 7E 00
BTC     SS:[SI],DI                                          ; 36 0F BB 3C
BTC     SS:[DI],DI                                          ; 36 0F BB 3D
BTC     FS:[BX+SI],DI                                       ; 64 0F BB 38
BTC     FS:[BX+DI],DI                                       ; 64 0F BB 39
BTC     FS:[BP+SI],DI                                       ; 64 0F BB 3A
BTC     FS:[BP+DI],DI                                       ; 64 0F BB 3B
BTC     FS:[BP],DI                                          ; 64 0F BB 7E 00
BTC     FS:[SI],DI                                          ; 64 0F BB 3C
BTC     FS:[DI],DI                                          ; 64 0F BB 3D
BTC     GS:[BX+SI],DI                                       ; 65 0F BB 38
BTC     GS:[BX+DI],DI                                       ; 65 0F BB 39
BTC     GS:[BP+SI],DI                                       ; 65 0F BB 3A
BTC     GS:[BP+DI],DI                                       ; 65 0F BB 3B
BTC     GS:[BP],DI                                          ; 65 0F BB 7E 00
BTC     GS:[SI],DI                                          ; 65 0F BB 3C
BTC     GS:[DI],DI                                          ; 65 0F BB 3D
BTC     DI,01H                                              ; 0F BA FF 01
BTC     DI,0FFH                                             ; 0F BA FF FF
BTC     EAX,0FFH                                            ; 66 0F BA F8 FF
BTC     ECX,0FFH                                            ; 66 0F BA F9 FF
BTC     EDX,0FFH                                            ; 66 0F BA FA FF
BTC     EBX,0FFH                                            ; 66 0F BA FB FF
BTC     ESP,0FFH                                            ; 66 0F BA FC FF
BTC     EBP,0FFH                                            ; 66 0F BA FD FF
BTC     ESI,0FFH                                            ; 66 0F BA FE FF
BTC     EDI,0FFH                                            ; 66 0F BA FF FF
LOCK BTC     DS:[BX+SI+1234H],AX                            ; F0 0F BB 80 34 12
LOCK BTC     DS:[BX+DI+1234H],AX                            ; F0 0F BB 81 34 12
LOCK BTC     SS:[BP+SI+1234H],AX                            ; F0 0F BB 82 34 12
LOCK BTC     SS:[BP+DI+1234H],AX                            ; F0 0F BB 83 34 12
LOCK BTC     SS:[BP+1234H],AX                               ; F0 0F BB 86 34 12
LOCK BTC     DS:[SI+1234H],AX                               ; F0 0F BB 84 34 12
LOCK BTC     DS:[DI+1234H],AX                               ; F0 0F BB 85 34 12
LOCK BTC     DS:[BX+SI],CX                                  ; F0 0F BB 08
LOCK BTC     DS:[BX+DI],CX                                  ; F0 0F BB 09
LOCK BTC     SS:[BP+SI],CX                                  ; F0 0F BB 0A
LOCK BTC     SS:[BP+DI],CX                                  ; F0 0F BB 0B
LOCK BTC     SS:[BP],CX                                     ; F0 0F BB 4E 00
LOCK BTC     DS:[SI],CX                                     ; F0 0F BB 0C
LOCK BTC     DS:[DI],CX                                     ; F0 0F BB 0D
LOCK BTC     DS:[BX+SI+1234H],CX                            ; F0 0F BB 88 34 12
LOCK BTC     DS:[BX+DI+1234H],CX                            ; F0 0F BB 89 34 12
LOCK BTC     SS:[BP+SI+1234H],CX                            ; F0 0F BB 8A 34 12
LOCK BTC     SS:[BP+DI+1234H],CX                            ; F0 0F BB 8B 34 12
LOCK BTC     SS:[BP+1234H],CX                               ; F0 0F BB 8E 34 12
LOCK BTC     DS:[SI+1234H],CX                               ; F0 0F BB 8C 34 12
LOCK BTC     DS:[DI+1234H],CX                               ; F0 0F BB 8D 34 12
LOCK BTC     DS:[BX+SI],DX                                  ; F0 0F BB 10
LOCK BTC     DS:[BX+DI],DX                                  ; F0 0F BB 11
LOCK BTC     SS:[BP+SI],DX                                  ; F0 0F BB 12
LOCK BTC     SS:[BP+DI],DX                                  ; F0 0F BB 13
LOCK BTC     SS:[BP],DX                                     ; F0 0F BB 56 00
LOCK BTC     DS:[SI],DX                                     ; F0 0F BB 14
LOCK BTC     DS:[DI],DX                                     ; F0 0F BB 15
LOCK BTC     DS:[BX+SI+1234H],DX                            ; F0 0F BB 90 34 12
LOCK BTC     DS:[BX+DI+1234H],DX                            ; F0 0F BB 91 34 12
LOCK BTC     SS:[BP+SI+1234H],DX                            ; F0 0F BB 92 34 12
LOCK BTC     SS:[BP+DI+1234H],DX                            ; F0 0F BB 93 34 12
LOCK BTC     SS:[BP+1234H],DX                               ; F0 0F BB 96 34 12
LOCK BTC     DS:[SI+1234H],DX                               ; F0 0F BB 94 34 12
LOCK BTC     DS:[DI+1234H],DX                               ; F0 0F BB 95 34 12
LOCK BTC     DS:[BX+SI],BX                                  ; F0 0F BB 18
LOCK BTC     DS:[BX+DI],BX                                  ; F0 0F BB 19
LOCK BTC     SS:[BP+SI],BX                                  ; F0 0F BB 1A
LOCK BTC     SS:[BP+DI],BX                                  ; F0 0F BB 1B
LOCK BTC     SS:[BP],BX                                     ; F0 0F BB 5E 00
LOCK BTC     DS:[SI],BX                                     ; F0 0F BB 1C
LOCK BTC     DS:[DI],BX                                     ; F0 0F BB 1D
LOCK BTC     DS:[BX+SI+1234H],BX                            ; F0 0F BB 98 34 12
LOCK BTC     DS:[BX+DI+1234H],BX                            ; F0 0F BB 99 34 12
LOCK BTC     SS:[BP+SI+1234H],BX                            ; F0 0F BB 9A 34 12
LOCK BTC     SS:[BP+DI+1234H],BX                            ; F0 0F BB 9B 34 12
LOCK BTC     SS:[BP+1234H],BX                               ; F0 0F BB 9E 34 12
LOCK BTC     DS:[SI+1234H],BX                               ; F0 0F BB 9C 34 12
LOCK BTC     DS:[DI+1234H],BX                               ; F0 0F BB 9D 34 12
LOCK BTC     DS:[BX+SI],SP                                  ; F0 0F BB 20
LOCK BTC     DS:[BX+DI],SP                                  ; F0 0F BB 21
LOCK BTC     SS:[BP+SI],SP                                  ; F0 0F BB 22
LOCK BTC     SS:[BP+DI],SP                                  ; F0 0F BB 23
LOCK BTC     SS:[BP],SP                                     ; F0 0F BB 66 00
LOCK BTC     DS:[SI],SP                                     ; F0 0F BB 24
LOCK BTC     DS:[DI],SP                                     ; F0 0F BB 25
LOCK BTC     DS:[BX+SI+1234H],SP                            ; F0 0F BB A0 34 12
LOCK BTC     DS:[BX+DI+1234H],SP                            ; F0 0F BB A1 34 12
LOCK BTC     SS:[BP+SI+1234H],SP                            ; F0 0F BB A2 34 12
LOCK BTC     SS:[BP+DI+1234H],SP                            ; F0 0F BB A3 34 12
LOCK BTC     SS:[BP+1234H],SP                               ; F0 0F BB A6 34 12
LOCK BTC     DS:[SI+1234H],SP                               ; F0 0F BB A4 34 12
LOCK BTC     DS:[DI+1234H],SP                               ; F0 0F BB A5 34 12
LOCK BTC     DS:[BX+SI],BP                                  ; F0 0F BB 28
LOCK BTC     DS:[BX+DI],BP                                  ; F0 0F BB 29
LOCK BTC     SS:[BP+SI],BP                                  ; F0 0F BB 2A
LOCK BTC     SS:[BP+DI],BP                                  ; F0 0F BB 2B
LOCK BTC     SS:[BP],BP                                     ; F0 0F BB 6E 00
LOCK BTC     DS:[SI],BP                                     ; F0 0F BB 2C
LOCK BTC     DS:[DI],BP                                     ; F0 0F BB 2D
LOCK BTC     DS:[BX+SI+1234H],BP                            ; F0 0F BB A8 34 12
LOCK BTC     DS:[BX+DI+1234H],BP                            ; F0 0F BB A9 34 12
LOCK BTC     SS:[BP+SI+1234H],BP                            ; F0 0F BB AA 34 12
LOCK BTC     SS:[BP+DI+1234H],BP                            ; F0 0F BB AB 34 12
LOCK BTC     SS:[BP+1234H],BP                               ; F0 0F BB AE 34 12
LOCK BTC     DS:[SI+1234H],BP                               ; F0 0F BB AC 34 12
LOCK BTC     DS:[DI+1234H],BP                               ; F0 0F BB AD 34 12
LOCK BTC     DS:[BX+SI],SI                                  ; F0 0F BB 30
LOCK BTC     DS:[BX+DI],SI                                  ; F0 0F BB 31
LOCK BTC     SS:[BP+SI],SI                                  ; F0 0F BB 32
LOCK BTC     SS:[BP+DI],SI                                  ; F0 0F BB 33
LOCK BTC     SS:[BP],SI                                     ; F0 0F BB 76 00
LOCK BTC     DS:[SI],SI                                     ; F0 0F BB 34
LOCK BTC     DS:[DI],SI                                     ; F0 0F BB 35
LOCK BTC     DS:[BX+SI+1234H],SI                            ; F0 0F BB B0 34 12
LOCK BTC     DS:[BX+DI+1234H],SI                            ; F0 0F BB B1 34 12
LOCK BTC     SS:[BP+SI+1234H],SI                            ; F0 0F BB B2 34 12
LOCK BTC     SS:[BP+DI+1234H],SI                            ; F0 0F BB B3 34 12
LOCK BTC     SS:[BP+1234H],SI                               ; F0 0F BB B6 34 12
LOCK BTC     DS:[SI+1234H],SI                               ; F0 0F BB B4 34 12
LOCK BTC     DS:[DI+1234H],SI                               ; F0 0F BB B5 34 12
LOCK BTC     DS:[BX+SI],DI                                  ; F0 0F BB 38
LOCK BTC     DS:[BX+DI],DI                                  ; F0 0F BB 39
LOCK BTC     SS:[BP+SI],DI                                  ; F0 0F BB 3A
LOCK BTC     SS:[BP+DI],DI                                  ; F0 0F BB 3B
LOCK BTC     SS:[BP],DI                                     ; F0 0F BB 7E 00
LOCK BTC     DS:[SI],DI                                     ; F0 0F BB 3C
LOCK BTC     DS:[DI],DI                                     ; F0 0F BB 3D
LOCK BTC     DS:[BX+SI+1234H],DI                            ; F0 0F BB B8 34 12
LOCK BTC     DS:[BX+DI+1234H],DI                            ; F0 0F BB B9 34 12
LOCK BTC     SS:[BP+SI+1234H],DI                            ; F0 0F BB BA 34 12
LOCK BTC     SS:[BP+DI+1234H],DI                            ; F0 0F BB BB 34 12
LOCK BTC     SS:[BP+1234H],DI                               ; F0 0F BB BE 34 12
LOCK BTC     DS:[SI+1234H],DI                               ; F0 0F BB BC 34 12
LOCK BTC     DS:[DI+1234H],DI                               ; F0 0F BB BD 34 12
LOCK BTC     DS:[BX+SI],EAX                                 ; F0 66 0F BB 00
LOCK BTC     DS:[BX+DI],EAX                                 ; F0 66 0F BB 01
LOCK BTC     SS:[BP+SI],EAX                                 ; F0 66 0F BB 02
LOCK BTC     SS:[BP+DI],EAX                                 ; F0 66 0F BB 03
LOCK BTC     SS:[BP],EAX                                    ; F0 66 0F BB 46 00
LOCK BTC     DS:[SI],EAX                                    ; F0 66 0F BB 04
LOCK BTC     DS:[DI],EAX                                    ; F0 66 0F BB 05
LOCK BTC     DS:[BX+SI+1234H],EAX                           ; F0 66 0F BB 80 34 12
LOCK BTC     DS:[BX+DI+1234H],EAX                           ; F0 66 0F BB 81 34 12
LOCK BTC     SS:[BP+SI+1234H],EAX                           ; F0 66 0F BB 82 34 12
LOCK BTC     SS:[BP+DI+1234H],EAX                           ; F0 66 0F BB 83 34 12
LOCK BTC     SS:[BP+1234H],EAX                              ; F0 66 0F BB 86 34 12
LOCK BTC     DS:[SI+1234H],EAX                              ; F0 66 0F BB 84 34 12
LOCK BTC     DS:[DI+1234H],EAX                              ; F0 66 0F BB 85 34 12
LOCK BTC     DS:[BX+SI],ECX                                 ; F0 66 0F BB 08
LOCK BTC     DS:[BX+DI],ECX                                 ; F0 66 0F BB 09
LOCK BTC     SS:[BP+SI],ECX                                 ; F0 66 0F BB 0A
LOCK BTC     SS:[BP+DI],ECX                                 ; F0 66 0F BB 0B
LOCK BTC     SS:[BP],ECX                                    ; F0 66 0F BB 4E 00
LOCK BTC     DS:[SI],ECX                                    ; F0 66 0F BB 0C
LOCK BTC     DS:[DI],ECX                                    ; F0 66 0F BB 0D
LOCK BTC     DS:[BX+SI+1234H],ECX                           ; F0 66 0F BB 88 34 12
LOCK BTC     DS:[BX+DI+1234H],ECX                           ; F0 66 0F BB 89 34 12
LOCK BTC     SS:[BP+SI+1234H],ECX                           ; F0 66 0F BB 8A 34 12
LOCK BTC     SS:[BP+DI+1234H],ECX                           ; F0 66 0F BB 8B 34 12
LOCK BTC     SS:[BP+1234H],ECX                              ; F0 66 0F BB 8E 34 12
LOCK BTC     DS:[SI+1234H],ECX                              ; F0 66 0F BB 8C 34 12
LOCK BTC     DS:[DI+1234H],ECX                              ; F0 66 0F BB 8D 34 12
LOCK BTC     DS:[BX+SI],EDX                                 ; F0 66 0F BB 10
LOCK BTC     DS:[BX+DI],EDX                                 ; F0 66 0F BB 11
LOCK BTC     SS:[BP+SI],EDX                                 ; F0 66 0F BB 12
LOCK BTC     SS:[BP+DI],EDX                                 ; F0 66 0F BB 13
LOCK BTC     SS:[BP],EDX                                    ; F0 66 0F BB 56 00
LOCK BTC     DS:[SI],EDX                                    ; F0 66 0F BB 14
LOCK BTC     DS:[DI],EDX                                    ; F0 66 0F BB 15
LOCK BTC     DS:[BX+SI+1234H],EDX                           ; F0 66 0F BB 90 34 12
LOCK BTC     DS:[BX+DI+1234H],EDX                           ; F0 66 0F BB 91 34 12
LOCK BTC     SS:[BP+SI+1234H],EDX                           ; F0 66 0F BB 92 34 12
LOCK BTC     SS:[BP+DI+1234H],EDX                           ; F0 66 0F BB 93 34 12
LOCK BTC     SS:[BP+1234H],EDX                              ; F0 66 0F BB 96 34 12
LOCK BTC     DS:[SI+1234H],EDX                              ; F0 66 0F BB 94 34 12
LOCK BTC     DS:[DI+1234H],EDX                              ; F0 66 0F BB 95 34 12
LOCK BTC     DS:[BX+SI],EBX                                 ; F0 66 0F BB 18
LOCK BTC     DS:[BX+DI],EBX                                 ; F0 66 0F BB 19
LOCK BTC     SS:[BP+SI],EBX                                 ; F0 66 0F BB 1A
LOCK BTC     SS:[BP+DI],EBX                                 ; F0 66 0F BB 1B
LOCK BTC     SS:[BP],EBX                                    ; F0 66 0F BB 5E 00
LOCK BTC     DS:[SI],EBX                                    ; F0 66 0F BB 1C
LOCK BTC     DS:[DI],EBX                                    ; F0 66 0F BB 1D
LOCK BTC     DS:[BX+SI+1234H],EBX                           ; F0 66 0F BB 98 34 12
LOCK BTC     DS:[BX+DI+1234H],EBX                           ; F0 66 0F BB 99 34 12
LOCK BTC     SS:[BP+SI+1234H],EBX                           ; F0 66 0F BB 9A 34 12
LOCK BTC     SS:[BP+DI+1234H],EBX                           ; F0 66 0F BB 9B 34 12
LOCK BTC     SS:[BP+1234H],EBX                              ; F0 66 0F BB 9E 34 12
LOCK BTC     DS:[SI+1234H],EBX                              ; F0 66 0F BB 9C 34 12
LOCK BTC     DS:[DI+1234H],EBX                              ; F0 66 0F BB 9D 34 12
LOCK BTC     DS:[BX+SI],ESP                                 ; F0 66 0F BB 20
LOCK BTC     DS:[BX+DI],ESP                                 ; F0 66 0F BB 21
LOCK BTC     SS:[BP+SI],ESP                                 ; F0 66 0F BB 22
LOCK BTC     SS:[BP+DI],ESP                                 ; F0 66 0F BB 23
LOCK BTC     SS:[BP],ESP                                    ; F0 66 0F BB 66 00
LOCK BTC     DS:[SI],ESP                                    ; F0 66 0F BB 24
LOCK BTC     DS:[DI],ESP                                    ; F0 66 0F BB 25
LOCK BTC     DS:[BX+SI+1234H],ESP                           ; F0 66 0F BB A0 34 12
LOCK BTC     DS:[BX+DI+1234H],ESP                           ; F0 66 0F BB A1 34 12
LOCK BTC     SS:[BP+SI+1234H],ESP                           ; F0 66 0F BB A2 34 12
LOCK BTC     SS:[BP+DI+1234H],ESP                           ; F0 66 0F BB A3 34 12
LOCK BTC     SS:[BP+1234H],ESP                              ; F0 66 0F BB A6 34 12
LOCK BTC     DS:[SI+1234H],ESP                              ; F0 66 0F BB A4 34 12
LOCK BTC     DS:[DI+1234H],ESP                              ; F0 66 0F BB A5 34 12
LOCK BTC     DS:[BX+SI],EBP                                 ; F0 66 0F BB 28
LOCK BTC     DS:[BX+DI],EBP                                 ; F0 66 0F BB 29
LOCK BTC     SS:[BP+SI],EBP                                 ; F0 66 0F BB 2A
LOCK BTC     SS:[BP+DI],EBP                                 ; F0 66 0F BB 2B
LOCK BTC     SS:[BP],EBP                                    ; F0 66 0F BB 6E 00
LOCK BTC     DS:[SI],EBP                                    ; F0 66 0F BB 2C
LOCK BTC     DS:[DI],EBP                                    ; F0 66 0F BB 2D
LOCK BTC     DS:[BX+SI+1234H],EBP                           ; F0 66 0F BB A8 34 12
LOCK BTC     DS:[BX+DI+1234H],EBP                           ; F0 66 0F BB A9 34 12
LOCK BTC     SS:[BP+SI+1234H],EBP                           ; F0 66 0F BB AA 34 12
LOCK BTC     SS:[BP+DI+1234H],EBP                           ; F0 66 0F BB AB 34 12
LOCK BTC     SS:[BP+1234H],EBP                              ; F0 66 0F BB AE 34 12
LOCK BTC     DS:[SI+1234H],EBP                              ; F0 66 0F BB AC 34 12
LOCK BTC     DS:[DI+1234H],EBP                              ; F0 66 0F BB AD 34 12
LOCK BTC     DS:[BX+SI],ESI                                 ; F0 66 0F BB 30
LOCK BTC     DS:[BX+DI],ESI                                 ; F0 66 0F BB 31
LOCK BTC     SS:[BP+SI],ESI                                 ; F0 66 0F BB 32
LOCK BTC     SS:[BP+DI],ESI                                 ; F0 66 0F BB 33
LOCK BTC     SS:[BP],ESI                                    ; F0 66 0F BB 76 00
LOCK BTC     DS:[SI],ESI                                    ; F0 66 0F BB 34
LOCK BTC     DS:[DI],ESI                                    ; F0 66 0F BB 35
LOCK BTC     DS:[BX+SI+1234H],ESI                           ; F0 66 0F BB B0 34 12
LOCK BTC     DS:[BX+DI+1234H],ESI                           ; F0 66 0F BB B1 34 12
LOCK BTC     SS:[BP+SI+1234H],ESI                           ; F0 66 0F BB B2 34 12
LOCK BTC     SS:[BP+DI+1234H],ESI                           ; F0 66 0F BB B3 34 12
LOCK BTC     SS:[BP+1234H],ESI                              ; F0 66 0F BB B6 34 12
LOCK BTC     DS:[SI+1234H],ESI                              ; F0 66 0F BB B4 34 12
LOCK BTC     DS:[DI+1234H],ESI                              ; F0 66 0F BB B5 34 12
LOCK BTC     DS:[BX+SI],EDI                                 ; F0 66 0F BB 38
LOCK BTC     DS:[BX+DI],EDI                                 ; F0 66 0F BB 39
LOCK BTC     SS:[BP+SI],EDI                                 ; F0 66 0F BB 3A
LOCK BTC     SS:[BP+DI],EDI                                 ; F0 66 0F BB 3B
LOCK BTC     SS:[BP],EDI                                    ; F0 66 0F BB 7E 00
LOCK BTC     DS:[SI],EDI                                    ; F0 66 0F BB 3C
LOCK BTC     DS:[DI],EDI                                    ; F0 66 0F BB 3D
LOCK BTC     DS:[BX+SI+1234H],EDI                           ; F0 66 0F BB B8 34 12
LOCK BTC     DS:[BX+DI+1234H],EDI                           ; F0 66 0F BB B9 34 12
LOCK BTC     SS:[BP+SI+1234H],EDI                           ; F0 66 0F BB BA 34 12
LOCK BTC     SS:[BP+DI+1234H],EDI                           ; F0 66 0F BB BB 34 12
LOCK BTC     SS:[BP+1234H],EDI                              ; F0 66 0F BB BE 34 12
LOCK BTC     DS:[SI+1234H],EDI                              ; F0 66 0F BB BC 34 12
LOCK BTC     DS:[DI+1234H],EDI                              ; F0 66 0F BB BD 34 12
LOCK BTC     DS:[EAX+EAX+00004321H],AX                      ; F0 67 0F BB 84 00 21 43 00 00
LOCK BTC     DS:[EAX+EAX*2+00004321H],AX                    ; F0 67 0F BB 84 40 21 43 00 00
LOCK BTC     DS:[EAX+EAX*4+00004321H],AX                    ; F0 67 0F BB 84 80 21 43 00 00
LOCK BTC     DS:[EAX+EAX*8+00004321H],AX                    ; F0 67 0F BB 84 C0 21 43 00 00
LOCK BTC     DS:[ESI+00004321H],AX                          ; F0 67 0F BB 86 21 43 00 00
LOCK BTC     DS:[EDI+00004321H],AX                          ; F0 67 0F BB 87 21 43 00 00
LOCK BTC     DS:[EAX+EAX+00004321H],AX                      ; F0 67 0F BB 84 00 21 43 00 00
LOCK BTC     DS:[EAX+EAX*2+00004321H],AX                    ; F0 67 0F BB 84 40 21 43 00 00
LOCK BTC     DS:[EAX+EAX*4+00004321H],AX                    ; F0 67 0F BB 84 80 21 43 00 00
LOCK BTC     DS:[EAX+EAX*8+00004321H],AX                    ; F0 67 0F BB 84 C0 21 43 00 00
LOCK BTC     DS:[ESI+00004321H],AX                          ; F0 67 0F BB 86 21 43 00 00
LOCK BTC     DS:[EDI+00004321H],AX                          ; F0 67 0F BB 87 21 43 00 00
LOCK BTC     SS:[EBX+EBP*8+00004321H],AX                    ; F0 67 0F BB 84 EB 21 43 00 00
LOCK BTC     SS:[EBP+00004321H],AX                          ; F0 67 0F BB 85 21 43 00 00
LOCK BTC     DS:[ECX*4+00004321H],AX                        ; F0 67 0F BB 04 8D 21 43 00 00
LOCK BTC     SS:[EBP*8+000000B0H],AX                        ; F0 67 0F BB 04 ED B0 00 00 00
LOCK BTC     DS:[ESI*4+00004321H],AX                        ; F0 67 0F BB 04 B5 21 43 00 00
LOCK BTC     DS:[EDI*2+87654321H],AX                        ; F0 67 0F BB 04 7D 21 43 65 87
JO      $+00C5H                                             ; 0F 80 C1 00
JNO     $-155FH                                             ; 0F 81 9D EA
JB      $+00BDH                                             ; 0F 82 B9 00
JNB     $-1567H                                             ; 0F 83 95 EA
JZ      $+00B5H                                             ; 0F 84 B1 00
JNZ     $-156FH                                             ; 0F 85 8D EA
JBE     $+00ADH                                             ; 0F 86 A9 00
JNBE    $-1577H                                             ; 0F 87 85 EA
JS      $+00A5H                                             ; 0F 88 A1 00
JNS     $-157FH                                             ; 0F 89 7D EA
JP      $+009DH                                             ; 0F 8A 99 00
JNP     $-1587H                                             ; 0F 8B 75 EA
JL      $+0095H                                             ; 0F 8C 91 00
JNL     $-158FH                                             ; 0F 8D 6D EA
JLE     $+008DH                                             ; 0F 8E 89 00
JNLE    $-1597H                                             ; 0F 8F 65 EA
JO      $                                                   ; 70 FE
JNO     $-0002H                                             ; 71 FC
JB      $-0004H                                             ; 72 FA
JNB     $-0006H                                             ; 73 F8
JZ      $-0008H                                             ; 74 F6
JNZ     $-000AH                                             ; 75 F4
JBE     $-000CH                                             ; 76 F2
JNBE    $-000EH                                             ; 77 F0
JS      $-0010H                                             ; 78 EE
JNS     $-0012H                                             ; 79 EC
JP      $-0014H                                             ; 7A EA
JNP     $-0016H                                             ; 7B E8
JL      $-0018H                                             ; 7C E6
JNL     $-001AH                                             ; 7D E4
JLE     $-001CH                                             ; 7E E2
JNLE    $-001EH                                             ; 7F E0
JCXZ    $-0020H                                             ; E3 DE
JECXZ   $-0022H                                             ; 67 E3 DB
LOCK BTC     dword ptr DS:[EAX+EBX*8+0A7654321H],0FFH       ; F0 66 67 0F BA BC D8 21 43 65 A7 FF
LOCK BTC     word ptr SS:[EAX+EBP*8+87654321H],0FFH         ; F0 67 0F BA BC E8 21 43 65 87 FF
LOCK BTC     CS:[EAX+EBX*8+0B7654321H],EAX                  ; F0 66 2E 67 0F BB 84 D8 21 43 65 B7
LOCK BTC     DS:[EAX+EBP*8+87654321H],AX                    ; F0 3E 67 0F BB 84 E8 21 43 65 87
LOCK BTC     dword ptr SS:[EBP+EBX*4+12345678H],9AH         ; F0 66 67 0F BA BC 9D 78 56 34 12 9A
LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH         ; F0 66 36 67 0F BA BC C3 78 56 34 12 9A
LOCK BTC     dword ptr SS:[EBX+EAX*8+12345678H],9AH         ; F0 66 36 67 0F BA BC C3 78 56 34 12 9A
LOCK BTC     word ptr FS:[EBX+EBP+0FFEEDDCCH],0A0H          ; F0 64 67 0F BA BC 2B CC DD EE FF A0
AAD                                                         ; D5 0A
