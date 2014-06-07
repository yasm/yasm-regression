[bits 32]

;jmp strict near foo
;jmp near foo
;jmp strict short foo
;jmp short foo
;jmp foo
;
;jz strict near foo
;jz near foo
;jz strict short foo
;jz short foo
;jz foo
;
;foo:

add eax, 4			; out: 83 c0 04
add eax, strict 4		; out: 83 c0 04 - NASM generates dword, yasm generates byte
add eax, byte 4			; out: 83 c0 04
add eax, strict byte 4		; out: 83 c0 04
add eax, dword 4		; out: 83 c0 04 - optimized to byte
add eax, strict dword 4		; out: 05 04 00 00 00
add eax, 400			; out: 05 90 01 00 00
add eax, strict 400		; out: 05 90 01 00 00
add eax, byte 400		; out: 83 c0 90 - generates warning
add eax, strict byte 400	; out: 83 c0 90 - generates warning
add eax, dword 400		; out: 05 90 01 00 00 - optimized to byte
add eax, strict dword 400	; out: 05 90 01 00 00

add ebx, 4			; out: 83 c3 04
add ebx, strict 4		; out: 83 c3 04 - NASM generates dword, yasm generates byte
add ebx, byte 4			; out: 83 c3 04
add ebx, strict byte 4		; out: 83 c3 04
add ebx, dword 4		; out: 83 c3 04 -  optimized to byte
add ebx, strict dword 4		; out: 81 c3 04 00 00 00
add ebx, 400			; out: 81 c3 90 01 00 00
add ebx, strict 400		; out: 81 c3 90 01 00 00
add ebx, byte 400		; out: 83 c3 90 - generates warning
add ebx, strict byte 400	; out: 83 c3 90 - generates warning
add ebx, dword 400		; out: 81 c3 90 01 00 00 - optimized to byte
add ebx, strict dword 400	; out: 81 c3 90 01 00 00

add [eax], byte 4		; out: 80 00 04 - same as byte [eax], 4
add [eax], strict byte 4	; out: 80 00 04 - same as byte [eax], 4
add [eax], dword 4		; out: 83 00 04 - generates dword [eax], byte 4
add [eax], strict dword 4	; out: 81 00 04 00 00 00 - generates dword [eax], dword 4

add dword [eax], 4		; out: 83 00 04
add dword [eax], strict 4	; out: 83 00 04 - NASM generates dword, yasm generates byte
add dword [eax], byte 4		; out: 83 00 04
add dword [eax], strict byte 4	; out: 83 00 04
add dword [eax], dword 4	; out: 83 00 04 - optimized to byte
add dword [eax], strict dword 4	; out: 81 00 04 00 00 00
add dword [eax], 400		; out: 81 00 90 01 00 00
add dword [eax], strict 400	; out: 81 00 90 01 00 00
add dword [eax], byte 400	; out: 83 00 90 - generates warning
add dword [eax], strict byte 400; out: 83 00 90 - generates warning
add dword [eax], dword 400	; out: 81 00 90 01 00 00 - optimized to byte
add dword [eax], strict dword 400	; out: 81 00 90 01 00 00

push 4				; out: 6a 04
push strict 4			; out: 6a 04 - NASM generates dword, yasm generates byte
push byte 4			; out: 6a 04
push strict byte 4		; out: 6a 04
push dword 4			; out: 6a 04 - optimized to byte
push strict dword 4		; out: 68 04 00 00 00
push 400			; out: 68 90 01 00 00
push strict 400			; out: 68 90 01 00 00
push byte 400			; out: 6a 90 - generates warning
push strict byte 400		; out: 6a 90 - generates warning
push dword 400			; out: 68 90 01 00 00
push strict dword 400		; out: 68 90 01 00 00

imul eax, 4			; out: 6b c0 04
imul eax, strict 4		; out: 6b c0 04 - NASM generates dword, yasm generates byte
imul eax, byte 4		; out: 6b c0 04
imul eax, strict byte 4		; out: 6b c0 04
imul eax, dword 4		; out: 6b c0 04 - optimized to byte
imul eax, strict dword 4	; out: 69 c0 04 00 00 00
imul eax, 400			; out: 69 c0 90 01 00 00
imul eax, strict 400		; out: 69 c0 90 01 00 00
imul eax, byte 400		; out: 6b c0 90 - generates warning
imul eax, strict byte 400	; out: 6b c0 90 - generates warning
imul eax, dword 400		; out: 69 c0 90 01 00 00
imul eax, strict dword 400	; out: 69 c0 90 01 00 00

;%ifndef __NASM_VERSION_ID__
[bits 64]
add rax, 4			; out: 48 83 c0 04
add rax, strict 4		; out: 48 83 c0 04 - NASM generates dword, yasm generates byte
add rax, byte 4			; out: 48 83 c0 04
add rax, strict byte 4		; out: 48 83 c0 04
add rax, dword 4		; out: 48 83 c0 04
add rax, strict dword 4		; out: 48 05 04 00 00 00
add rax, 400			; out: 48 05 90 01 00 00
add rax, strict 400		; out: 48 05 90 01 00 00
add rax, byte 400		; out: 48 83 c0 90 - generates warning
add rax, strict byte 400	; out: 48 83 c0 90 - generates warning
add rax, dword 400		; out: 48 05 90 01 00 00
add rax, strict dword 400	; out: 48 05 90 01 00 00

add rbx, 4			; out: 48 83 c3 04
add rbx, strict 4		; out: 48 83 c3 04 - NASM generates dword, yasm generates byte
add rbx, byte 4			; out: 48 83 c3 04
add rbx, strict byte 4		; out: 48 83 c3 04
add rbx, dword 4		; out: 48 83 c3 04
add rbx, strict dword 4		; out: 48 81 c3 04 00 00 00
add rbx, 400			; out: 48 81 c3 90 01 00 00
add rbx, strict 400		; out: 48 81 c3 90 01 00 00
add rbx, byte 400		; out: 48 83 c3 90 - generates warning
add rbx, strict byte 400	; out: 48 83 c3 90 - generates warning
add rbx, dword 400		; out: 48 81 c3 90 01 00 00
add rbx, strict dword 400	; out: 48 81 c3 90 01 00 00

add [rax], byte 4		; out: 80 00 04 - same as byte [rax], 4
add [rax], strict byte 4	; out: 80 00 04 - same as byte [rax], 4
add [rax], word 4		; out: 66 83 00 04 - same as word [rax], 4
add [rax], strict word 4	; out: 66 81 00 04 00 - same as word [rax], strict word 4

add dword [rax], 4		; out: 83 00 04
add dword [rax], strict 4	; out: 83 00 04
add dword [rax], byte 4		; out: 83 00 04
add dword [rax], strict byte 4	; out: 83 00 04
add dword [rax], dword 4	; out: 83 00 04
add dword [rax], strict dword 4	; out: 81 00 04 00 00 00
add dword [rax], 400		; out: 81 00 90 01 00 00
add dword [rax], strict 400	; out: 81 00 90 01 00 00
add dword [rax], byte 400	; out: 83 00 90 - generates warning
add dword [rax], strict byte 400; out: 83 00 90 - generates warning
add dword [rax], dword 400	; out: 81 00 90 01 00 00
add dword [rax], strict dword 400	; out: 81 00 90 01 00 00

add qword [rax], 4		; out: 48 83 00 04
add qword [rax], strict 4	; out: 48 83 00 04
add qword [rax], byte 4		; out: 48 83 00 04
add qword [rax], strict byte 4	; out: 48 83 00 04
add qword [rax], dword 4	; out: 48 83 00 04
add qword [rax], strict dword 4	; out: 48 81 00 04 00 00 00
add qword [rax], 400		; out: 48 81 00 90 01 00 00
add qword [rax], strict 400	; out: 48 81 00 90 01 00 00
add qword [rax], byte 400	; out: 48 83 00 90 - generates warning
add qword [rax], strict byte 400; out: 48 83 00 90 - generates warning
add qword [rax], dword 400	; out: 48 81 00 90 01 00 00
add qword [rax], strict dword 400	; out: 48 81 00 90 01 00 00

push 4				; out: 6a 04
push strict 4			; out: 6a 04 - NASM generates dword, yasm generates byte
push byte 4			; out: 6a 04
push strict byte 4		; out: 6a 04
push dword 4			; out: 6a 04 - optimized to byte
push strict dword 4		; out: 68 04 00 00 00
;push qword 4			; illegal
;push strict qword 4		; illegal
push 400			; out: 68 90 01 00 00
push strict 400			; out: 68 90 01 00 00
push byte 400			; out: 6a 90 - generates warning
push strict byte 400		; out: 6a 90 - generates warning
push dword 400			; out: 68 90 01 00 00
push strict dword 400		; out: 68 90 01 00 00
;push qword 400			; illegal
;push strict qword 400		; illegal

;%endif
