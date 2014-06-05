[bits 64]
l1:
mov dword [l2], l2		; out: c7 04 25 0d 00 00 00 0d 00 00 00
jc short l3			; out: 72 00
l3:
l2 equ $-l1
