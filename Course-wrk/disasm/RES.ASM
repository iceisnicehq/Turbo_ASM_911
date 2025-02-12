0100h:  69                  Unknown instruction
0101h:  26 A1 02 00         MOV     AX, ES:[0002h]
0105h:  2E 02 16 4F E5      ADD     DL, BYTE PTR CS:[0E54Fh]
010Ah:  36 2A B9 FE 45      SUB     BH, BYTE PTR SS:[BX + DI + 45FEh]
010Fh:  3E 87 4E AC         XCHG    CX, WORD PTR DS:[BP + 0ACh]
0113h:  26 8B 16 5E 64      MOV     DX, WORD PTR ES:[645Eh]
0118h:  8B DA               MOV     BX, DX
011Ah:  2E 8E 06 FF 00      MOV     ES, WORD PTR CS:[00FFh]
011Fh:  8E D1               MOV     SS, CX
0121h:  A1 03 00            MOV     AX, [0003h]
0124h:  A2 12 00            MOV     [0012h], AL
0127h:  A4                  MOVSB   
0128h:  F2 A5               REPNE   MOVSW 
012Ah:  BA 34 12            MOV     DX, 1234h
012Dh:  C6 41 21 78         MOV     BYTE PTR [BX + DI + 21h], 78h
0131h:  1E                  PUSH    DS
0132h:  50                  PUSH    AX
0133h:  9C                  PUSHF   
0134h:  26 FF 36 5E 46      PUSH    WORD PTR ES:[465Eh]
0139h:  07                  POP     ES
013Ah:  59                  POP     CX
013Bh:  8F 81 AA AA         POP     WORD PTR [BX + DI + 0AAAAh]
013Fh:  9D                  POPF    
0140h:  03 C3               ADD     AX, BX
0142h:  03 0E 54 06         ADD     CX, WORD PTR [0654h]
0146h:  83 C2 06            ADD     DX, 0006h
0149h:  81 07 52 13         ADD     WORD PTR [BX], 1352h
014Dh:  2B 0E 12 00         SUB     CX, WORD PTR [0012h]
0151h:  2D 45 00            SUB     AX, 0045h
0154h:  83 AF 54 06 64      SUB     WORD PTR [BX + 0654h], 0064h
0159h:  40                  INC     AX
015Ah:  FE 47 45            INC     BYTE PTR [BX + 45h]
015Dh:  49                  DEC     CX
015Eh:  26 FF 0E 45 06      DEC     WORD PTR ES:[0645h]
0163h:  3B 16 65 04         CMP     DX, WORD PTR [0465h]
0167h:  3D 00 00            CMP     AX, 0000h
016Ah:  83 38 FF            CMP     WORD PTR [BX + SI], 0FFFFh
016Dh:  A6                  CMPSB   
016Eh:  A7                  CMPSW   
016Fh:  F6 E0               MUL     AL
0171h:  F7 E3               MUL     BX
0173h:  F6 A1 65 04         MUL     BYTE PTR [BX + DI + 0465h]
0177h:  F6 EB               IMUL    BL
0179h:  F7 EA               IMUL    DX
017Bh:  F7 6E 01            IMUL    WORD PTR [BP + 01h]
017Eh:  F6 F1               DIV     CL
0180h:  F7 F2               DIV     DX
0182h:  F6 B3 65 04         DIV     BYTE PTR [BP + DI + 0465h]
0186h:  F6 FB               IDIV    BL
0188h:  F7 F8               IDIV    AX
018Ah:  26 F7 3E 00 00      IDIV    WORD PTR ES:[0000h]
018Fh:  E8 FD FF            CALL    018Fh
0192h:  9A 12 34 56 78      CALL    7856h:3412h
0197h:  2E FF 16 CD AB      CALL    WORD PTR CS:[0ABCDh]
019Ch:  2E FF 1E 64 45      CALL    DWORD PTR CS:[4564h]
01A1h:  C2 12 00            RET     0012h
01A4h:  C3                  RET     
01A5h:  CA CD AB            RETF    0ABCDh
01A8h:  CF                  IRET    
01A9h:  70 1E               JO      01C9h
01ABh:  71 1C               JNO     01C9h
01ADh:  72 1A               JB      01C9h
01AFh:  73 18               JAE     01C9h
01B1h:  74 16               JE      01C9h
01B3h:  75 14               JNE     01C9h
01B5h:  76 12               JBE     01C9h
01B7h:  77 10               JA      01C9h
01B9h:  78 0E               JS      01C9h
01BBh:  79 0C               JNS     01C9h
01BDh:  7A 0A               JP      01C9h
01BFh:  7B 08               JNP     01C9h
01C1h:  7C 06               JL      01C9h
01C3h:  7D 04               JGE     01C9h
01C5h:  7E 02               JLE     01C9h
01C7h:  7F 00               JG      01C9h
01C9h:  EB FE               JMP     01C9h
01CBh:  E9 32 FF            JMP     0100h
01CEh:  EA 78 56 34 12      JMP     1234h:5678h
01D3h:  2E FF 26 FF DD      JMP     WORD PTR CS:[0DDFFh]
01D8h:  2E FF 2E FF 00      JMP     DWORD PTR CS:[00FFh]
01DDh:  E2 FE               LOOP    01DDh
01DFh:  E1 FC               LOOPE   01DDh
01E1h:  E0 FA               LOOPNE  01DDh
01E3h:  E3 F8               JCXZ    01DDh
01E5h:  CC                  INT     3
01E6h:  CD 21               INT     21h
01E8h:  CD FF               INT     0FFh
01EAh:  D5 0A               AAD     
01ECh:  D4 0A               AAM     
01EEh:  F0 8B D8            LOCK    MOV BX, AX
01F1h:  E4 F5               IN      AL, 0F5h
01F3h:  E7 12               OUT     12h, AX
01F5h:  A9 65 04            TEST    AX, 0465h
01F8h:  F8                  CLC     
01F9h:  F9                  STC     
01FAh:  FA                  CLI     
01FBh:  FB                  STI     
01FCh:  FC                  CLD     
01FDh:  FD                  STD     
01FEh:  D7                  XLAT    
01FFh:  9F                  LAHF    
0200h:  90                  XCHG    AX, AX
0201h:  3F                  AAS     
0202h:  37                  AAA     
0203h:  2F                  DAS     
0204h:  27                  DAA     
0205h:  AA                  STOSB   
0206h:  AB                  STOSW   
0207h:  AC                  LODSB   
0208h:  AD                  LODSW   
0209h:  AE                  SCASB   
020Ah:  AF                  SCASW   
020Bh:  9F                  LAHF    
020Ch:  9E                  SAHF    
020Dh:  98                  CBW     
020Eh:  99                  CWD     
020Fh:  D3 C0               ROL     AX, CL
0211h:  D1 CB               ROR     BX, 1
0213h:  26 D2 16 24 01      RCL     BYTE PTR ES:[0124h], CL
0218h:  D2 DA               RCR     DL, CL
021Ah:  D0 E6               SHL     DH, 1
021Ch:  D1 2E 54 64         SHR     WORD PTR [6454h], 1
0220h:  D1 F8               SAR     AX, 1
