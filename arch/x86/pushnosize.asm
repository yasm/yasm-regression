[bits 16]
push 0			; out: 6a 00 - equivalent to push byte 0
push byte 0		; out: 6a 00
push word 0		; out: 6a 00 - optimized
push dword 0		; out: 66 6a 00 - optimized
push strict byte 0	; out: 6a 00
push strict word 0	; out: 68 00 00
push strict dword 0	; out: 66 68 00 00 00 00
push 128		; out: 68 80 00 - doesn't fit in byte, equivalent to push word 128
push byte 128		; out: 6a 80 [warning]
push word 128		; out: 68 80 00
push dword 128		; out: 66 68 80 00 00 00
push strict byte 128	; out: 6a 80 [warning]
push strict word 128	; out: 68 80 00
push strict dword 128	; out: 66 68 80 00 00 00

[bits 32]
push 0			; out: 6a 00 - equivalent to push byte 0
push byte 0		; out: 6a 00
push word 0		; out: 66 6a 00 - optimized
push dword 0		; out: 6a 00 - optimized
push strict byte 0	; out: 6a 00
push strict word 0	; out: 66 68 00 00
push strict dword 0	; out: 68 00 00 00 00
push 128		; out: 68 80 00 00 00 - doesn't fit in byte -> push dword 128
push byte 128		; out: 6a 80 [warning]
push word 128		; out: 66 68 80 00
push dword 128		; out: 68 80 00 00 00
push strict byte 128	; out: 6a 80 [warning]
push strict word 128	; out: 66 68 80 00
push strict dword 128	; out: 68 80 00 00 00

[bits 64]
push 0			; out: 6a 00 - same as bits 32 output
push byte 0		; out: 6a 00 - 64 bits pushed onto stack
push word 0		; out: 66 6a 00 - 66h prefix, optimized to byte
push dword 0		; out: 6a 00 - optimized to byte; out: note 64 bits pushed onto stack
push strict byte 0	; out: 6a 00 - 64 bits pushed onto stack
push strict word 0	; out: 66 68 00 00
push strict dword 0	; out: 68 00 00 00 00 - note 64 bits pushed onto stack
push 128		; out: 68 80 00 00 00
push byte 128		; out: 6a 80 [warning]
push word 128		; out: 66 68 80 00
push dword 128		; out: 68 80 00 00 00
push strict byte 128	; out: 6a 80 [warning]
push strict word 128	; out: 66 68 80 00
push strict dword 128	; out: 68 80 00 00 00
