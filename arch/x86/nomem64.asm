[bits 64]
mov ah, 5 	; out: b4 05
mov ax, 5 	; out: 66 b8 05 00
mov eax, 5 	; out: b8 05 00 00 00
mov rax, 5		; out: 48 c7 c0 05 00 00 00 - optimized to signed 32-bit form
mov rax, dword 5	; out: 48 c7 c0 05 00 00 00 - explicitly 32-bit
mov rax, qword 5	; out: 48 b8 05 00 00 00 00 00 00 00 - explicitly 64-bit
; test sign optimization cases
mov rax, 0x7fffffff 		; out: 48 c7 c0 ff ff ff 7f
mov rax, dword 0x7fffffff 	; out: 48 c7 c0 ff ff ff 7f
mov rax, qword 0x7fffffff 	; out: 48 b8 ff ff ff 7f 00 00 00 00
mov rax, 0x80000000 		; out: 48 b8 00 00 00 80 00 00 00 00
mov rax, dword 0x80000000 	; out: 48 c7 c0 00 00 00 80 [warning]
mov rax, qword 0x80000000 	; out: 48 b8 00 00 00 80 00 00 00 00
mov rax, -0x80000000 		; out: 48 c7 c0 00 00 00 80
mov rax, dword -0x80000000 	; out: 48 c7 c0 00 00 00 80
mov rax, qword -0x80000000 	; out: 48 b8 00 00 00 80 ff ff ff ff
mov rax, 0x100000000 		; out: 48 b8 00 00 00 00 01 00 00 00
mov rax, dword 0x100000000 	; out: 48 c7 c0 00 00 00 00 [warning]
mov rax, qword 0x100000000 	; out: 48 b8 00 00 00 00 01 00 00 00
mov ah, bl 	; out: 88 dc
mov bl, r8b 	; out: 44 88 c3
mov sil, r9b 	; out: 44 88 ce
mov r10w, r11w 	; out: 66 45 89 da
mov r15d, r12d 	; out: 45 89 e7
mov r13, r14 	; out: 4d 89 f5
inc ebx 	; out: ff c3
dec ecx		; out: ff c9

