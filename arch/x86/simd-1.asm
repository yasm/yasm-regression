[bits 32]
movntps [0], xmm4		; out: 0f 2b 25 00 00 00 00
movntps dqword [0], xmm5	; out: 0f 2b 2d 00 00 00 00
movntq [8], mm6			; out: 0f e7 35 08 00 00 00
movntq qword [8], mm7		; out: 0f e7 3d 08 00 00 00
movss xmm0, [0]			; out: f3 0f 10 05 00 00 00 00
movss xmm1, dword [8]		; out: f3 0f 10 0d 08 00 00 00
movss [0], xmm2			; out: f3 0f 11 15 00 00 00 00
movss dword [8], xmm3		; out: f3 0f 11 1d 08 00 00 00
pcmpeqb xmm3, xmm4		; out: 66 0f 74 dc
pcmpgtw mm0, mm2		; out: 0f 65 c2
