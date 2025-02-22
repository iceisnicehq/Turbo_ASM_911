MOV, SAR, CWD

88		r						MOV	r/m8	    r8
89		r						MOV	r/m16/32	r16/32
8A		r						MOV	r8	        r/m8
8B		r						MOV	r16/32	    r/m16/32
8C		r						MOV	m16	        Sreg
                                MOV	r16/32	    Sreg
8E		r						MOV	Sreg	    r/m16
99								CWD
A0								MOV	AL	        moffs8
A1								MOV	eAX	        moffs16/32
A2								MOV	moffs8	    AL
A3								MOV	moffs16/32	eAX
B0+r							MOV	r8	        imm8
B8+r							MOV	r16/32	    imm16/32
C0		7	01+					SAR	r/m8	    imm8
C1		7	01+					SAR	r/m16/32	imm8
C6		0						MOV	r/m8	    imm8
C7		0						MOV	r/m16/32	imm16/32
D0		7						SAR	r/m8	    1
D1		7						SAR	r/m16/32	1
D2		7						SAR	r/m8	    CL
D3		7						SAR	r/m16/32	CL


