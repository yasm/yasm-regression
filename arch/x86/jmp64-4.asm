[bits 64]
l1:
mov dword [l2], l2		; out: c7 04 25 0e 00 00 00 0e 00 00 00
jc l3				; out: 72 01
db 0x0				; out: 00
l3:
l2 equ $-l1
