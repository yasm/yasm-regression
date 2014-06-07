	[bits 64]

	[default abs]	; default abs, except for explicit rel

	mov rax,[foo]			; out: 48 8b 04 25 c0 02 00 00
	mov rax,[qword 123456789abcdef0h]	; out: 48 a1 f0 de bc 9a 78 56 34 12
	mov rbx,[foo]			; out: 48 8b 1c 25 c0 02 00 00
	mov rax,[dword foo]		; out: 48 8b 04 25 c0 02 00 00
	mov rbx,[dword foo]		; out: 48 8b 1c 25 c0 02 00 00
	mov rax,[qword foo]		; out: 48 a1 c0 02 00 00 00 00 00 00
	mov rax,[rel foo]		; out: 48 8b 05 85 02 00 00 - rel
	mov rbx,[rel foo]		; out: 48 8b 1d 7e 02 00 00 - rel
	mov rax,[rel dword foo]		; out: 48 8b 05 77 02 00 00 - rel
	;mov rax,[rel qword foo]	; illegal
	mov rax,[abs foo]		; out: 48 8b 04 25 c0 02 00 00
	mov rbx,[abs foo]		; out: 48 8b 1c 25 c0 02 00 00
	mov rax,[abs dword foo]		; out: 48 8b 04 25 c0 02 00 00
	mov rax,[abs qword foo]		; out: 48 a1 c0 02 00 00 00 00 00 00

	mov rax,[es:foo]		; out: 26 48 8b 04 25 c0 02 00 00
	mov rax,[qword es:123456789abcdef0h]	; out: 26 48 a1 f0 de bc 9a 78 56 34 12
	mov rbx,[es:foo]		; out: 26 48 8b 1c 25 c0 02 00 00
	mov rax,[dword es:foo]		; out: 26 48 8b 04 25 c0 02 00 00
	mov rbx,[dword es:foo]		; out: 26 48 8b 1c 25 c0 02 00 00
	mov rax,[qword es:foo]		; out: 26 48 a1 c0 02 00 00 00 00 00 00
	mov rax,[rel es:foo]		; out: 26 48 8b 05 13 02 00 00 - rel
	mov rbx,[rel es:foo]		; out: 26 48 8b 1d 0b 02 00 00 - rel
	mov rax,[rel dword es:foo]	; out: 26 48 8b 05 03 02 00 00 - rel
	;mov rax,[rel qword es:foo]	; illegal
	mov rax,[abs es:foo]		; out: 26 48 8b 04 25 c0 02 00 00
	mov rbx,[abs es:foo]		; out: 26 48 8b 1c 25 c0 02 00 00
	mov rax,[abs dword es:foo]	; out: 26 48 8b 04 25 c0 02 00 00
	mov rax,[abs qword es:foo]	; out: 26 48 a1 c0 02 00 00 00 00 00 00

	mov rax,[fs:foo]		; out: 64 48 8b 04 25 c0 02 00 00
	mov rax,[qword fs:123456789abcdef0h]	; out: 64 48 a1 f0 de bc 9a 78 56 34 12
	mov rbx,[fs:foo]		; out: 64 48 8b 1c 25 c0 02 00 00
	mov rax,[dword fs:foo]		; out: 64 48 8b 04 25 c0 02 00 00
	mov rbx,[dword fs:foo]		; out: 64 48 8b 1c 25 c0 02 00 00
	mov rax,[qword fs:foo]		; out: 64 48 a1 c0 02 00 00 00 00 00 00
	mov rax,[rel fs:foo]		; out: 64 48 8b 05 9b 01 00 00 - rel
	mov rbx,[rel fs:foo]		; out: 64 48 8b 1d 93 01 00 00 - rel
	mov rax,[rel dword fs:foo]	; out: 64 48 8b 05 8b 01 00 00 - rel
	;mov rax,[rel qword fs:foo]	; illegal
	mov rax,[abs fs:foo]		; out: 64 48 8b 04 25 c0 02 00 00
	mov rbx,[abs fs:foo]		; out: 64 48 8b 1c 25 c0 02 00 00
	mov rax,[abs dword fs:foo]	; out: 64 48 8b 04 25 c0 02 00 00
	mov rax,[abs qword fs:foo]	; out: 64 48 a1 c0 02 00 00 00 00 00 00

	mov rax,[rbx]			; out: 48 8b 03
	mov rax,[rel rbx]		; out: 48 8b 03
	mov rax,[abs rbx]		; out: 48 8b 03

	[default rel]

	; all of these are default rel, except for 64-bit displacements
	mov rax,[foo]			; out: 48 8b 05 55 01 00 00
	mov rax,[qword 123456789abcdef0h]	; out: 48 a1 f0 de bc 9a 78 56 34 12 - abs
	mov rbx,[foo]			; out: 48 8b 1d 44 01 00 00
	mov rax,[dword foo]		; out: 48 8b 05 3d 01 00 00
	mov rbx,[dword foo]		; out: 48 8b 1d 36 01 00 00
	mov rax,[qword foo]		; out: 48 a1 c0 02 00 00 00 00 00 00 - abs
	mov rax,[rel foo]		; out: 48 8b 05 25 01 00 00
	mov rbx,[rel foo]		; out: 48 8b 1d 1e 01 00 00
	mov rax,[rel dword foo]		; out: 48 8b 05 17 01 00 00
	;mov rax,[rel qword foo]	; illegal
	mov rax,[abs foo]		; out: 48 8b 04 25 c0 02 00 00
	mov rbx,[abs foo]		; out: 48 8b 1c 25 c0 02 00 00
	mov rax,[abs dword foo]		; out: 48 8b 04 25 c0 02 00 00
	mov rax,[abs qword foo]		; out: 48 a1 c0 02 00 00 00 00 00 00

	; all of these are default rel, except for 64-bit displacements
	mov rax,[es:foo]		; out: 26 48 8b 05 ed 00 00 00
	mov rax,[qword es:123456789abcdef0h]	; out: 26 48 a1 f0 de bc 9a 78 56 34 12
	mov rbx,[es:foo]		; out: 26 48 8b 1d da 00 00 00
	mov rax,[dword es:foo]		; out: 26 48 8b 05 d2 00 00 00
	mov rbx,[dword es:foo]		; out: 26 48 8b 1d ca 00 00 00
	mov rax,[qword es:foo]		; out: 26 48 a1 c0 02 00 00 00 00 00 00
	mov rax,[rel es:foo]		; out: 26 48 8b 05 b7 00 00 00 - rel
	mov rbx,[rel es:foo]		; out: 26 48 8b 1d af 00 00 00 - rel
	mov rax,[rel dword es:foo]	; out: 26 48 8b 05 a7 00 00 00 - rel
	;mov rax,[rel qword es:foo]	; illegal
	mov rax,[abs es:foo]		; out: 26 48 8b 04 25 c0 02 00 00
	mov rbx,[abs es:foo]		; out: 26 48 8b 1c 25 c0 02 00 00
	mov rax,[abs dword es:foo]	; out: 26 48 8b 04 25 c0 02 00 00
	mov rax,[abs qword es:foo]	; out: 26 48 a1 c0 02 00 00 00 00 00 00

	; all of these are abs due to fs:, except for explicit rel
	mov rax,[fs:foo]		; out: 64 48 8b 04 25 c0 02 00 00
	mov rax,[qword fs:123456789abcdef0h]	; out: 64 48 a1 f0 de bc 9a 78 56 34 12
	mov rbx,[fs:foo]		; out: 64 48 8b 1c 25 c0 02 00 00
	mov rax,[dword fs:foo]		; out: 64 48 8b 04 25 c0 02 00 00
	mov rbx,[dword fs:foo]		; out: 64 48 8b 1c 25 c0 02 00 00
	mov rax,[qword fs:foo]		; out: 64 48 a1 c0 02 00 00 00 00 00 00
	mov rax,[rel fs:foo]		; out: 64 48 8b 05 3f 00 00 00 - rel
	mov rbx,[rel fs:foo]		; out: 64 48 8b 1d 37 00 00 00 - rel
	mov rax,[rel dword fs:foo]	; out: 64 48 8b 05 2f 00 00 00 - rel
	;mov rax,[rel qword fs:foo]	; illegal
	mov rax,[abs fs:foo]		; out: 64 48 8b 04 25 c0 02 00 00
	mov rbx,[abs fs:foo]		; out: 64 48 8b 1c 25 c0 02 00 00
	mov rax,[abs dword fs:foo]	; out: 64 48 8b 04 25 c0 02 00 00
	mov rax,[abs qword fs:foo]	; out: 64 48 a1 c0 02 00 00 00 00 00 00

	mov rax,[rbx]			; out: 48 8b 03
	mov rax,[rel rbx]		; out: 48 8b 03
	mov rax,[abs rbx]		; out: 48 8b 03

	[section .data]
foo	equ $
	
