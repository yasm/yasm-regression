[bits 64]
push dword 50 			; out: 6a 32
push dword -1 			; out: 6a ff
push strict dword 50 		; out: 68 32 00 00 00
push strict dword -1 		; out: 68 ff ff ff ff
push dword 1000000000000 	; out: 68 00 10 a5 d4

