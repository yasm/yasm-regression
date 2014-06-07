[bits 32]
vmcall			; out: 0f 01 c1
vmclear [0]		; out: 66 0f c7 35 00 00 00 00
vmlaunch		; out: 0f 01 c2
vmresume		; out: 0f 01 c3
vmptrld [0]		; out: 0f c7 35 00 00 00 00
vmptrst [eax]		; out: 0f c7 38
vmread [ebx], ecx	; out: 0f 78 0b
vmwrite ebp, [ebp]	; out: 0f 79 6d 00
vmxoff			; out: 0f 01 c4 f3
vmxon [esi]		; out: 0f c7 36

[bits 64]
vmcall			; out: 0f 01 c1
vmclear [0]		; out: 66 0f c7 34 25 00 00 00 00
vmlaunch		; out: 0f 01 c2
vmresume		; out: 0f 01 c3
vmptrld [0]		; out: 0f c7 34 25 00 00 00 00
vmptrst [rdx]		; out: 0f c7 3a
;vmread [rax], eax	; invalid
vmread [rax], rdx	; out: 0f 78 10
vmwrite rax, [rcx]	; out: 0f 79 01
vmxoff			; out: 0f 01 c4 f3
vmxon [rsi]		; out: 0f c7 36
