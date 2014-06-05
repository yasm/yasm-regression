[bits 64]
mov dword [l4-l1], 0x0		; out: c7 04 25 00 00 00 00 00 00 00 00
l4:
l1:
jc short l3			; out: 72 01
db 0x0				; out: 00
l3:
