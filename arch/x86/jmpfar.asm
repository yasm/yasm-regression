[bits 16]
jmp 1234:5678		; out: ea 2e 16 d2 04 - YASM: far jump
jmp near 1234:5678	; out: e9 26 16 - YASM: near jump; NASM: mismatch in operand sizes
jmp far 1234:5678	; out: ea 2e 16 d2 04 - YASM: far jump; NASM: mismatch in operand sizes
;dw seg (1234:5678)
far1 equ 1234:5678
jmp far1		; out: e9 1e 16 - both: near jump
jmp near far1		; out: e9 1b 16 - both: near jump
jmp far far1		; out: ea 2e 16 d2 04 - YASM: far jump; NASM: value referenced by FAR is not relocatable
dw seg far1		; out: d2 04
jmp far2		; out: e9 11 16 - both: near jump
jmp near far2		; out: e9 0e 16 - both: near jump
jmp far far2		; out: ea 2e 16 d2 04 - YASM: far jump; NASM: value referenced by FAR is not relocatable
dw seg far2		; out: d2 04
far2 equ 1234:5678
;mov ax, [1234:5678]	; YASM: invalid segment in effective address; NASM: invalid segment override
;mov ax, 1234:5678	; YASM: immediate does not support segment; NASM: invalid combination of opcode and operands
