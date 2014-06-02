[bits 16]
lar ax, bx		; out: 0f 02 c3
lar ax, [bx]		; out: 0f 02 07
lar ax, word [bx]	; out: 0f 02 07
lar eax, bx		; out: 66 0f 02 c3
lar eax, ebx		; out: 66 0f 02 c3
lar eax, [bx]		; out: 66 0f 02 07
lar eax, word [bx]	; out: 66 0f 02 07

lsl ax, bx		; out: 0f 03 c3
lsl ax, [bx]		; out: 0f 03 07
lsl ax, word [bx]	; out: 0f 03 07
lsl eax, bx		; out: 66 0f 03 c3
lsl eax, ebx		; out: 66 0f 03 c3
lsl eax, [bx]		; out: 66 0f 03 07
lsl eax, word [bx]	; out: 66 0f 03 07

[bits 32]
lar ax, bx		; out: 66 0f 02 c3
lar ax, [ebx]		; out: 66 0f 02 03
lar ax, word [ebx]	; out: 66 0f 02 03
lar eax, bx		; out: 0f 02 c3
lar eax, ebx		; out: 0f 02 c3
lar eax, [ebx]		; out: 0f 02 03
lar eax, word [ebx]	; out: 0f 02 03

lsl ax, bx		; out: 66 0f 03 c3
lsl ax, [ebx]		; out: 66 0f 03 03
lsl ax, word [ebx]	; out: 66 0f 03 03
lsl eax, bx		; out: 0f 03 c3
lsl eax, ebx		; out: 0f 03 c3
lsl eax, [ebx]		; out: 0f 03 03
lsl eax, word [ebx]	; out: 0f 03 03

[bits 64]
lar ax, bx		; out: 66 0f 02 c3
lar ax, [rbx]		; out: 66 0f 02 03
lar ax, word [rbx]	; out: 66 0f 02 03
lar eax, bx		; out: 0f 02 c3
lar eax, ebx		; out: 0f 02 c3
lar eax, [rbx]		; out: 0f 02 03
lar eax, word [rbx]	; out: 0f 02 03
lar rax, bx		; out: 48 0f 02 c3
lar rax, ebx		; out: 48 0f 02 c3
lar rax, [rbx]		; out: 48 0f 02 03
lar rax, word [rbx]	; out: 48 0f 02 03

lsl ax, bx		; out: 66 0f 03 c3
lsl ax, [rbx]		; out: 66 0f 03 03
lsl ax, word [rbx]	; out: 66 0f 03 03
lsl eax, bx		; out: 0f 03 c3
lsl eax, ebx		; out: 0f 03 c3
lsl eax, [rbx]		; out: 0f 03 03
lsl eax, word [rbx]	; out: 0f 03 03
lsl rax, bx		; out: 48 0f 03 c3
lsl rax, ebx		; out: 48 0f 03 c3
lsl rax, [rbx]		; out: 48 0f 03 03
lsl rax, word [rbx]	; out: 48 0f 03 03

