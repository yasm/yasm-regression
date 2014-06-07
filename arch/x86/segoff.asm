; all of these should be legal and should just result in the offset portion

foo equ 1:2
jmp far[foo]		; out: ff 2e 02 00
mov ax,[foo]		; out: a1 02 00
push dword [foo]	; out: 66 ff 36 02 00
mov ax,foo		; out: b8 02 00
