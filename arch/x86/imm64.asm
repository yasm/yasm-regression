[bits 64]
[default abs]
;[extern label1]
label1:
label2:

mov rax, 0x1000			; out: 48 c7 c0 00 10 00 00
mov rax, 0x1122334455667788	; out: 48 b8 88 77 66 55 44 33 22 11 - larger than imm32s
;mov rax, 0x80000000		; 64-bit imm (larger than signed 32-bit)
mov rax, label1			; out: 48 c7 c0 00 00 00 00 - not 64-bit!
mov rax, label2			; out: 48 c7 c0 00 00 00 00 - not 64-bit!
mov rax, qword 0x1000		; out: 48 b8 00 10 00 00 00 00 00 00
mov rax, qword label1		; out: 48 b8 00 00 00 00 00 00 00 00
mov rax, qword label2		; out: 48 b8 00 00 00 00 00 00 00 00

mov qword [rax], 0x1000		; out: 48 c7 00 00 10 00 00
mov qword [rax], 0x1122334455667788	; out: 48 c7 00 88 77 66 55 [warning]
;mov qword [rax], 0x80000000	; 32-bit imm, overflow warning
mov qword [rax], label1		; out: 48 c7 00 00 00 00 00 - 32-bit, matches default above
mov qword [rax], label2		; out: 48 c7 00 00 00 00 00 - 32-bit, matches default above

add rax, 0x1000			; out: 48 05 00 10 00 00
add rax, 0x1122334455667788	; out: 48 05 88 77 66 55 [overflow]
;add rax, 0x80000000		; 32-bit imm, overflow warning
add rax, label1			; out: 48 05 00 00 00 00 - 32-bit, matches default above
add rax, label2			; out: 48 05 00 00 00 00 - 32-bit, matches default above

mov [0x1000], rax			; out: 48 89 04 25 00 10 00 00
mov [abs 0x1122334455667788], rax	; out: 48 89 04 25 88 77 66 55
mov [label1], rax			; out: 48 89 04 25 00 00 00 00
mov [label2], rax			; out: 48 89 04 25 00 00 00 00
mov [qword 0x1000], rax			; out: 48 a3 00 10 00 00 00 00 00 00
mov [qword label1], rax			; out: 48 a3 00 00 00 00 00 00 00 00
mov [qword label2], rax			; out: 48 a3 00 00 00 00 00 00 00 00
