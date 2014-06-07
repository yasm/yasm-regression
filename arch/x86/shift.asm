blah equ 1

shl al, 1		; out: d0 e0
shl al, 2-1		; out: d0 e0
shl al, blah		; out: d0 e0
shl al, 2-blah		; out: d0 e0
