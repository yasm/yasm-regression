[bits 64]
extrq xmm0, 5, 4		; out: 66 0f 78 c0 05 04
extrq xmm6, 0, 7		; out: 66 0f 78 c6 00 07
extrq xmm2, xmm3		; out: 66 0f 79 d3
insertq xmm0, xmm1, 5, 4	; out: f2 0f 78 c1 05 04
insertq xmm5, xmm6, 0, 7	; out: f2 0f 78 ee 00 07
insertq xmm2, xmm3		; out: f2 0f 79 d3
movntsd [0], xmm1		; out: f2 0f 2b 0c 25 00 00 00 00
movntsd qword [0], xmm5		; out: f2 0f 2b 2c 25 00 00 00 00
movntss [0], xmm3		; out: f3 0f 2b 1c 25 00 00 00 00
movntss dword [0], xmm7		; out: f3 0f 2b 3c 25 00 00 00 00

lzcnt ax, bx			; out: 66 f3 0f bd c3
lzcnt cx, word [0]		; out: 66 f3 0f bd 0c 25 00 00 00 00
lzcnt dx, [0]			; out: 66 f3 0f bd 14 25 00 00 00 00
lzcnt eax, ebx			; out: f3 0f bd c3
lzcnt ecx, dword [0]		; out: f3 0f bd 0c 25 00 00 00 00
lzcnt edx, [0]			; out: f3 0f bd 14 25 00 00 00 00
lzcnt rax, rbx			; out: f3 48 0f bd c3
lzcnt rcx, qword [0]		; out: f3 48 0f bd 0c 25 00 00 00 00
lzcnt rdx, [0]			; out: f3 48 0f bd 14 25 00 00 00 00

popcnt ax, bx			; out: 66 f3 0f b8 c3
popcnt cx, word [0]		; out: 66 f3 0f b8 0c 25 00 00 00 00
popcnt dx, [0]			; out: 66 f3 0f b8 14 25 00 00 00 00
popcnt eax, ebx			; out: f3 0f b8 c3
popcnt ecx, dword [0]		; out: f3 0f b8 0c 25 00 00 00 00
popcnt edx, [0]			; out: f3 0f b8 14 25 00 00 00 00
popcnt rax, rbx			; out: f3 48 0f b8 c3
popcnt rcx, qword [0]		; out: f3 48 0f b8 0c 25 00 00 00 00
popcnt rdx, [0]			; out: f3 48 0f b8 14 25 00 00 00 00
