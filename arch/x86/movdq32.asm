[bits 32]
movd eax, mm0		; out: 0f 7e c0
movd mm0, eax		; out: 0f 6e c0
movd [0], mm0		; out: 0f 7e 05 00 00 00 00
movd mm0, [0]		; out: 0f 6e 05 00 00 00 00

movd eax, xmm0		; out: 66 0f 7e c0
movd xmm0, eax		; out: 66 0f 6e c0
movd [0], xmm0		; out: 66 0f 7e 05 00 00 00 00
movd xmm0, [0]		; out: 66 0f 6e 05 00 00 00 00

movq [0], xmm0		; out: 66 0f d6 05 00 00 00 00
movq xmm0, [0]		; out: f3 0f 7e 05 00 00 00 00
movq xmm0, xmm1		; out: f3 0f 7e c1
movq xmm1, xmm0		; out: f3 0f 7e c8

movq [0], mm0		; out: 0f 7f 05 00 00 00 00
movq mm0, [0]		; out: 0f 6f 05 00 00 00 00
movq mm0, mm1		; out: 0f 6f c1
movq mm1, mm0		; out: 0f 6f c8
