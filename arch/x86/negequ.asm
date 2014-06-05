[bits 32]
off	equ	-4
pos	equ	4

mov	[ebp+off], eax		; out: 89 45 fc
mov	[ebp+pos], eax		; out: 89 45 04
mov	[ebp-off], eax		; out: 89 45 04
mov	[ebp-pos], eax		; out: 89 45 fc
