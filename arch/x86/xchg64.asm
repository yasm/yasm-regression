[bits 64]
xchg ax, ax		; out: 66 90
xchg ax, bx		; out: 66 93
xchg bx, ax		; out: 66 93
xchg eax, eax		; out: 87 c0
xchg eax, ebx		; out: 93
xchg ebx, eax		; out: 93
xchg rax, rax		; out: 90
xchg rax, rbx		; out: 48 93
xchg rbx, rax		; out: 48 93

xchg al, al		; out: 86 c0
xchg al, r8b		; out: 44 86 c0
xchg r8b, al		; out: 41 86 c0

xchg ax, ax		; out: 66 90
xchg ax, r8w		; out: 66 41 90
xchg r8w, ax		; out: 66 41 90
xchg ax, r9w		; out: 66 41 91
xchg r9w, ax		; out: 66 41 91

xchg eax, eax		; out: 87 c0
xchg eax, r8d		; out: 41 90
xchg r8d, eax		; out: 41 90
xchg eax, r9d		; out: 41 91
xchg r9d, eax		; out: 41 91

xchg rax, rax		; out: 90
xchg rax, r8		; out: 49 90
xchg r8, rax		; out: 49 90
xchg rax, r9		; out: 49 91
xchg r9, rax		; out: 49 91
