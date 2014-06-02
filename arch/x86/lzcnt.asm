[bits 64]

lzcnt ax, bx	; out: 66 f3 0f bd c3
lzcnt ax, [0]	; out: 66 f3 0f bd 04 25 00 00 00 00
lzcnt eax, ebx	; out: f3 0f bd c3
lzcnt eax, [0]	; out: f3 0f bd 04 25 00 00 00 00
lzcnt rax, rbx	; out: f3 48 0f bd c3
lzcnt rax, [0]	; out: f3 48 0f bd 04 25 00 00 00 00
