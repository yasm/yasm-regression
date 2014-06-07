bits 64
val:
default abs

mov rax, val			; out: 48 c7 c0 00 00 00 00 - 32-bit imm
mov rax, dword val		; out: 48 c7 c0 00 00 00 00 - 32-bit imm
mov rax, qword val		; out: 48 b8 00 00 00 00 00 00 00 00 - 64-bit imm

mov rbx, val			; out: 48 c7 c3 00 00 00 00 - 32-bit imm
mov rbx, dword val		; out: 48 c7 c3 00 00 00 00 - 32-bit imm
mov rbx, qword val		; out: 48 bb 00 00 00 00 00 00 00 00 - 64-bit imm

mov rax, [val]			; out: 48 8b 04 25 00 00 00 00 - 32-bit disp
mov rax, [dword val]		; out: 48 8b 04 25 00 00 00 00 - 32-bit disp
mov rax, [qword val]		; out: 48 a1 00 00 00 00 00 00 00 00 - 64-bit disp
a32 mov rax, [val]		; out: 67 48 a1 00 00 00 00 - 32-bit disp
a32 mov rax, [dword val]	; out: 67 48 a1 00 00 00 00 - 32-bit disp
a32 mov rax, [qword val]	; out: 67 48 a1 00 00 00 00 - 32-bit disp
				; [this one is debatable on correctness,
				; I chose in yasm to make a32 override]
a64 mov rax, [val]		; out: 48 8b 04 25 00 00 00 00 - 32-bit disp
a64 mov rax, [dword val]	; out: 48 8b 04 25 00 00 00 00 - 32-bit disp
a64 mov rax, [qword val]	; out: 48 a1 00 00 00 00 00 00 00 00 - 64-bit disp

mov rbx, [val]			; out: 48 8b 1c 25 00 00 00 00 - 32-bit disp
mov rbx, [dword val]		; out: 48 8b 1c 25 00 00 00 00 - 32-bit disp
;mov rbx, [qword val]		; illegal (can't have 64-bit disp)
a32 mov rbx, [val]		; out: 67 48 8b 1c 25 00 00 00 00 - 32-bit disp
a32 mov rbx, [dword val]	; out: 67 48 8b 1c 25 00 00 00 00 - 32-bit disp
;a32 mov rbx, [qword val]	; illegal (can't have 64-bit disp)
a64 mov rbx, [val]		; out: 48 8b 1c 25 00 00 00 00 - 32-bit disp
a64 mov rbx, [dword val]	; out: 48 8b 1c 25 00 00 00 00 - 32-bit disp
;a64 mov rbx, [qword val]	; illegal (can't have 64-bit disp)

default rel

mov rax, val			; out: 48 c7 c0 00 00 00 00 - 32-bit imm
mov rax, dword val		; out: 48 c7 c0 00 00 00 00 - 32-bit imm
mov rax, qword val		; out: 48 b8 00 00 00 00 00 00 00 00 - 64-bit imm

mov rbx, val			; out: 48 c7 c3 00 00 00 00 - 32-bit imm
mov rbx, dword val		; out: 48 c7 c3 00 00 00 00 - 32-bit imm
mov rbx, qword val		; out: 48 bb 00 00 00 00 00 00 00 00 - 64-bit imm

mov rax, [val]			; out: 48 8b 05 1e ff ff ff - 32-bit disp, RIP-rel
mov rax, [dword val]		; out: 48 8b 05 17 ff ff ff - 32-bit disp, RIP-rel
mov rax, [qword val]		; out: 48 a1 00 00 00 00 00 00 00 00 - 64-bit disp, ABS
a32 mov rax, [val]		; out: 67 48 8b 05 05 ff ff ff - 32-bit disp, RIP-rel
a32 mov rax, [dword val]	; out: 67 48 8b 05 fd fe ff ff - 32-bit disp, RIP-rel
a32 mov rax, [qword val]	; out: 67 48 a1 00 00 00 00 - 32-bit disp, ABS
				; [this one is debatable on correctness,
				; I chose in yasm to make a32 override]
a64 mov rax, [val]		; out: 48 8b 05 ef fe ff ff - 32-bit disp, RIP-rel
a64 mov rax, [dword val]	; out: 48 8b 05 e8 fe ff ff - 32-bit disp, RIP-rel
a64 mov rax, [qword val]	; out: 48 a1 00 00 00 00 00 00 00 00 - 64-bit disp, ABS

mov rbx, [val]			; out: 48 8b 1d d7 fe ff ff - 32-bit disp, RIP-rel
mov rbx, [dword val]		; out: 48 8b 1d d0 fe ff ff - 32-bit disp, RIP-rel
;mov rbx, [qword val]		; illegal (can't have 64-bit disp)
a32 mov rbx, [val]		; out: 67 48 8b 1d c8 fe ff ff - 32-bit disp, RIP-rel
a32 mov rbx, [dword val]	; out: 67 48 8b 1d c0 fe ff ff - 32-bit disp, RIP-rel
;a32 mov rbx, [qword val]	; illegal (can't have 64-bit disp)
a64 mov rbx, [val]		; out: 48 8b 1d b9 fe ff ff - 32-bit disp, RIP-rel
a64 mov rbx, [dword val]	; out: 48 8b 1d b2 fe ff ff - 32-bit disp, RIP-rel
;a64 mov rbx, [qword val]	; illegal (can't have 64-bit disp)

