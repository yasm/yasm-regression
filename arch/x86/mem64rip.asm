[bits 64]
mov eax, [rip]			; out: 8b 05 00 00 00 00
mov eax, [rip+2]		; out: 8b 05 02 00 00 00
mov eax, [rip+sym]		; out: 8b 05 18 00 00 00
mov eax, [sym wrt rip]		; out: 8b 05 00 00 00 00
sym:
mov eax, [sym wrt rip]		; out: 8b 05 fa ff ff ff
call sym			; out: e8 f5 ff ff ff
