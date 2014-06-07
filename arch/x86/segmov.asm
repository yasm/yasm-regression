mov [0], ds		; out: 8c 1e 00 00
mov word [0], ds	; out: 8c 1e 00 00
mov ax, ds		; out: 8c d8
mov eax, ds		; out: 66 8c d8
mov ds, ax		; out: 8e d8
mov ds, eax		; out: 8e d8
mov ds, [0]		; out: 8e 1e 00 00
mov ds, word [0]	; out: 8e 1e 00 00
mov word ds, [0]	; out: 8e 1e 00 00
