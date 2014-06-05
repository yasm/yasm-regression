[bits 64]
mov ax, [0]			; out: 66 8B 04 25 00 00 00 00
mov rax, [qword 0]		; out: 48 A1 00 00 00 00 00 00 00 00
mov rax, [0]			; out: 48 8B 04 25 00 00 00 00
mov rax, [dword 0]		; out: 48 8B 04 25 00 00 00 00
mov al, [qword 0xfedcba9876543210]	; out: A0 10 32 54 76 98 BA DC FE
mov al, [0xfedcba9876543210]	; out: 8A 04 25 10 32 54 76 [warning]
a32 mov rax, [0]		; out: 67 48 A1 00 00 00 00
a32 mov eax, [0]		; out: 67 A1 00 00 00 00
mov ecx, [0]			; out: 8B 0C 25 00 00 00 00
mov edx, [dword 0]		; out: 8B 14 25 00 00 00 00
mov rbx, [0]			; out: 48 8B 1C 25 00 00 00 00
a32 mov rbx, [0]		; out: 67 48 8B 1C 25 00 00 00 00
mov ebx, [rcx]			; out: 8B 19
mov r8, [r9]			; out: 4D 8B 01
mov ecx, [ebx]			; out: 67 8B 0B
mov edx, [rip]			; out: 8B 15 00 00 00 00
a32 mov rcx, [rip+5]		; out: 67 48 8B 0D 05 00 00 00
mov rbx, [rax+rbx*4]		; out: 48 8B 1C 98
mov rdx, [rsp]			; out: 48 8B 14 24
mov rax, [r12]			; out: 49 8B 04 24
mov rcx, [rbp]			; out: 48 8B 4D 00
mov rbx, [r13]			; out: 49 8B 5D 00
mov ah, [rip]			; out: 8A 25 00 00 00 00
mov bh, [rcx]			; out: 8A 39
