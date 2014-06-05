[bits 32]
o32 mov ax, bx			; out: 89 d8
o16 mov ax, bx			; out: 66 89 d8
mov ax, bx			; out: 66 89 d8

o32 mov eax, ebx		; out: 89 d8
o16 mov eax, ebx		; out: 66 89 d8
mov eax, ebx			; out: 89 d8

[bits 16]
o32 mov ax, bx			; out: 66 89 d8
o16 mov ax, bx			; out: 89 d8
mov ax, bx			; out: 89 d8

o32 mov eax, ebx		; out: 66 89 d8
o16 mov eax, ebx		; out: 89 d8
mov eax, ebx			; out: 66 89 d8
