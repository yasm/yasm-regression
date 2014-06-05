[bits 64]
l1:
mov dword [l2], l2		; out: c7 04 25 12 00 01 00 12 00 01 00
jc l3				; out: 0f 82 01 00 01 00
times 0x10001 db 0x0		; rep-out: 0x10001 00
l3:
l2 equ $-l1
