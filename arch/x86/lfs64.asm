[bits 64]
lfs ax, [rbx]	; out: 66 0f b4 03
lfs eax, [rbx]	; out: 0f b4 03
lfs rax, [rbx]	; out: 48 0f b4 03
lgs ax, [rbx]	; out: 66 0f b5 03
lgs eax, [rbx]	; out: 0f b5 03
lgs rax, [rbx]	; out: 48 0f b5 03
lss ax, [rbx]	; out: 66 0f b2 03
lss eax, [rbx]	; out: 0f b2 03
lss rax, [rbx]	; out: 48 0f b2 03
