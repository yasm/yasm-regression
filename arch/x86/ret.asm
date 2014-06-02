[bits 16]
ret 		; out: c3
ret 4 		; out: c2 04 00
ret word 2 	; out: c2 02 00
retn 6 		; out: c2 06 00
retn word 2 	; out: c2 02 00
retf 		; out: cb
retf 8 		; out: ca 08 00
retf word 2 	; out: ca 02 00

[bits 32]
ret 		; out: c3
ret 4 		; out: c2 04 00
ret word 2 	; out: c2 02 00
retn 6 		; out: c2 06 00
retn word 2 	; out: c2 02 00
retf 		; out: cb
retf 8 		; out: ca 08 00
retf word 2 	; out: ca 02 00

[bits 64]
ret 		; out: c3
ret 4 		; out: c2 04 00
ret word 2 	; out: c2 02 00
retn 6 		; out: c2 06 00
retn word 2 	; out: c2 02 00
retf 		; out: 48 cb
retf 8 		; out: 48 ca 08 00
retf word 2 	; out: 48 ca 02 00

