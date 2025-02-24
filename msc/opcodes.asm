NEG, CALL, CWDE

98			03+					CWDE	(66 prefix)
9A								CALLF	ptr16:16/32         ; CALL    1234:5678 (66 pref)
E8								CALL	rel16/32            ; CALL    PROCEDURE
F6		3					L	NEG	    r/m8
F7		3					L	NEG	    r/m16/32
FF		2						CALL	r/m16/32
FF		3						CALLF	m16:16/32           ; CALL    DWORD PTR DS:[1234] (67 pref)