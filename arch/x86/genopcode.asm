[bits 16]
mov al, 0 		; out: b0 00
mov byte al, 0 		; out: b0 00
mov al, byte 0 		; out: b0 00
mov byte al, byte 0 	; out: b0 00
;mov al, word 0
mov byte [0], 0 	; out: c6 06 00 00 00
mov [0], word 0 	; out: c7 06 00 00 00 00
mov dword [0], dword 0 	; out: 66 c7 06 00 00 00 00 00 00
;mov [0], 0
mov eax, 0 		; out: 66 b8 00 00 00 00
mov dword eax, 0 	; out: 66 b8 00 00 00 00
mov eax, dword 0 	; out: 66 b8 00 00 00 00
;mov eax, word 0
mov dword eax, dword 0 	; out: 66 b8 00 00 00 00
mov bx, 1h 		; out: bb 01 00
mov cr0, eax 		; out: 0f 22 c0
mov cr2, ebx 		; out: 0f 22 d3
mov cr4, edx 		; out: 0f 22 e2
mov ecx, cr4 		; out: 0f 20 e1
mov dr3, edx 		; out: 0f 23 da
mov eax, dr7 		; out: 0f 21 f8

mov [0], al 		; out: a2 00 00
mov [0], bl 		; out: 88 1e 00 00
mov [1], al 		; out: a2 01 00
mov [1], bl 		; out: 88 1e 01 00
mov ecx, edx 		; out: 66 89 d1
movsx ax, [ecx] 	; out: 67 0f be 01
;movzx eax, [edx]
movzx ebx, word [eax] 	; out: 67 66 0f b7 18
movzx ecx, byte [ebx] 	; out: 67 66 0f b6 0b
fnstenv [ecx+5] 	; out: 67 d9 71 05
nop 			; out: 90

push cs 		; out: 0e
push word cs 		; out: 0e
push dword cs		; out: 66 0e - NASM unsupported
push ds 		; out: 1e
push es 		; out: 06
push fs 		; out: 0f a0
push gs 		; out: 0f a8
pop ds 			; out: 1f
pop es 			; out: 07
pop fs 			; out: 0f a1
pop gs 			; out: 0f a9
xchg al, bl 		; out: 86 d8
xchg al, [0] 		; out: 86 06 00 00
xchg [0], al 		; out: 86 06 00 00
xchg ax, bx 		; out: 93
xchg cx, ax 		; out: 91
xchg [0], ax 		; out: 87 06 00 00
xchg [0], cx 		; out: 87 0e 00 00
xchg cx, [0] 		; out: 87 0e 00 00
xchg eax, edx 		; out: 66 92
xchg ebx, eax 		; out: 66 93
xchg ecx, ebx 		; out: 66 87 d9
xchg [0], ecx 		; out: 66 87 0e 00 00
xchg eax, [0] 		; out: 66 87 06 00 00
in al, 55 		; out: e4 37
in ax, 99 		; out: e5 63
in eax, 100 		; out: 66 e5 64
in al, dx 		; out: ec
in ax, dx 		; out: ed
in eax, dx 		; out: 66 ed
out 55, al 		; out: e6 37
out 66, ax 		; out: e7 42
out 77, eax 		; out: 66 e7 4d
out dx, al 		; out: ee
out dx, ax 		; out: ef
out dx, eax 		; out: 66 ef
lea bx, [5] 		; out: 8d 1e 05 00
lea ebx, [32] 		; out: 66 8d 1e 20 00
lds si, [0] 		; out: c5 36 00 00
lds ax, [1] 		; out: c5 06 01 00
;lds ax, dword [1]
les di, [5] 		; out: c4 3e 05 00
lds eax, [7] 		; out: 66 c5 06 07 00
les ebx, [9] 		; out: 66 c4 1e 09 00
lss esp, [11] 		; out: 66 0f b2 26 0b 00
lfs ecx, [13] 		; out: 66 0f b4 0e 0d 00
lgs edx, [15] 		; out: 66 0f b5 16 0f 00
;; TODO: add arith stuff
imul eax, 4 		; out: 66 6b c0 04
aad 			; out: d5 0a
aam 			; out: d4 0a
aad 5 			; out: d5 05
aam 10 			; out: d4 0a
shl al, 5 		; out: c0 e0 05
shl bl, 1 		; out: d0 e3
shl cl, cl 		; out: d2 e1
shr ax, 5 		; out: c1 e8 05
shr bx, 1 		; out: d1 eb
shr cx, cl 		; out: d3 e9
shld ax, bx, 5 		; out: 0f a4 d8 05
shrd cx, dx, cl 	; out: 0f ad d1
shld ecx, edx, 10 	; out: 66 0f a4 d1 0a
shld eax, ebx, cl 	; out: 66 0f a5 d8
retn 			; out: c3
retf 			; out: cb
retn 8 			; out: c2 08 00
retf 16 		; out: ca 10 00
enter 10, 12 		; out: c8 0a 00 0c
setc al 		; out: 0f 92 d0
setc [0] 		; out: 0f 92 16 00 00
;; TODO: add bit manip
int 10 			; out: cd 0a
;; TODO: add bound
;; TODO: add protection control
fld dword [0] 		; out: d9 06 00 00
fld qword [4] 		; out: dd 06 04 00
fld tword [16] 		; out: db 2e 10 00
fld st2 		; out: d9 c2
fstp dword [0] 		; out: d9 1e 00 00
fstp st4 		; out: dd dc
fild word [0] 		; out: df 06 00 00
fild dword [4] 		; out: db 06 04 00
fild qword [8] 		; out: df 2e 08 00
fbld [100] 		; out: df 26 64 00
fbld tword [10] 	; out: df 26 0a 00
fst dword [1] 		; out: d9 16 01 00
fst qword [8] 		; out: dd 16 08 00
fst st1 		; out: dd d1
fxch 			; out: d9 c9
fxch st1 		; out: d9 c9
fxch st0, st2 		; out: d9 ca
fxch st2, st0 		; out: d9 ca
fcom dword [0] 		; out: d8 16 00 00
fcom qword [8] 		; out: dc 16 08 00
fcom st1 		; out: d8 d1
fcom st0, st0 		; out: d8 d0
fucom st7 		; out: dd e7
fucomp st0, st5 	; out: dd ed
fadd dword [10] 	; out: d8 06 0a 00
fadd qword [5] 		; out: dc 06 05 00
fadd st0 		; out: d8 c0
fadd st0, st5 		; out: d8 c5
;fadd to st7 		; dc c7
fadd st6, st0 		; out: dc c6
faddp			; out: de c1 - NASM unsupported
faddp st2 		; out: de c2
faddp st5, st0 		; out: de c5
fiadd word [10] 	; out: de 06 0a 00
fisub dword [4] 	; out: da 26 04 00
fldcw [0] 		; out: d9 2e 00 00
fnstcw [4] 		; out: d9 3e 04 00
fstcw word [4] 		; out: 9b d9 3e 04 00
fnstsw [8] 		; out: dd 3e 08 00
fnstsw ax 		; out: df e0
fstsw word [0] 		; out: 9b dd 3e 00 00
fstsw ax 		; out: 9b df e0
ffree st1 		; out: dd c1
ffreep st0		; out: df c0 - NASM unsupported
[bits 16]
push si			; out: 56
push esi		; out: 66 56
[bits 32]
push esi		; out: 56
