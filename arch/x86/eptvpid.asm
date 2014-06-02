[bits 32]
invept eax, [eax]	; out: 66 0f 38 80 00
invvpid eax, [eax]	; out: 66 0f 38 81 00

[bits 64]
invept rax, [rax]	; out: 66 48 0f 38 80 00
invvpid rax, [rax]	; out: 66 48 0f 38 81 00
