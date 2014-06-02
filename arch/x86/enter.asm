[bits 32]
enter 4,0			; out: c8 04 00 00
o32 enter 4,0			; out: c8 04 00 00
o16 enter 4,0			; out: 66 c8 04 00 00

[bits 16]
enter 4,0			; out: c8 04 00 00
a32 o32 enter 4,0		; out: 66 c8 04 00 00 [warning]
a32 o16 enter 4,0		; out: c8 04 00 00 [warning]
