equval equ 6:7

[bits 32]

jmp 5:4			; out: ea 04 00 00 00 05 00

jmp far equval		; out: ea 07 00 00 00 06 00

[bits 16]

jmp 8:9			; out: ea 09 00 08 00
