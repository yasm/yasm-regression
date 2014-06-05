[bits 16]
mov ax, 'abcd'			; out: b8 61 62
mov ax, 0x1ffff			; out: b8 ff ff
mov eax, 0x111111111		; out: 66 b8 11 11 11 11

dd 0x123456789			; out: 89 67 45 23
dd -1				; out: ff ff ff ff
dw 0x12345			; out: 45 23
dw -1				; out: ff ff

jmp 0x1234:0x56789ABC		; out: ea bc 9a 34 12
jmp dword 0x1234:0x56789ABC	; out: 66 ea bc 9a 78 56 34 12
