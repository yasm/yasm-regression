[bits 32]
addsubpd xmm5, xmm7		; out: 66 0f d0 ef
addsubpd xmm0, [eax]		; out: 66 0f d0 00
addsubps xmm1, xmm5		; out: f2 0f d0 cd
addsubps xmm3, dqword [edx]	; out: f2 0f d0 1a
fisttp word [0]			; out: df 0d 00 00 00 00
fisttp dword [4]		; out: db 0d 04 00 00 00
fisttp qword [8]		; out: dd 0d 08 00 00 00
haddpd xmm2, xmm4		; out: 66 0f 7c d4
haddpd xmm7, [ecx+4]		; out: 66 0f 7c 79 04
haddps xmm6, xmm1		; out: f2 0f 7c f1
haddps xmm0, dqword [0]		; out: f2 0f 7c 05 00 00 00 00
hsubpd xmm5, xmm3		; out: 66 0f 7d eb
hsubpd xmm1, [ebp]		; out: 66 0f 7d 4d 00
hsubps xmm4, xmm1		; out: f2 0f 7d e1
hsubps xmm2, [esp]		; out: f2 0f 7d 14 24
lddqu xmm3, [ecx+edx*4+8]	; out: f2 0f f0 5c 91 08
monitor				; out: 0f 01 c8
movddup xmm7, xmm6		; out: f2 0f 12 fe
movddup xmm1, qword [4]		; out: f2 0f 12 0d 04 00 00 00
movshdup xmm3, xmm4		; out: f3 0f 16 dc
movshdup xmm2, [0]		; out: f3 0f 16 15 00 00 00 00
movsldup xmm0, xmm7		; out: f3 0f 12 c7
movsldup xmm5, dqword [eax+ebx]	; out: f3 0f 12 2c 18
mwait				; out: 0f 01 c9
