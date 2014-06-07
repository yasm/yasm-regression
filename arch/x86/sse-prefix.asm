[bits 32]
movsw				; out: 66 a5
es movsw			; out: 66 26 a5
rep movsw			; out: 66 f3 a5
rep fs movsw			; out: 66 f3 64 a5
fs rep movsw			; out: 66 f3 64 a5

movsd				; out: a5
es movsd			; out: 26 a5
rep movsd			; out: f3 a5
rep fs movsd			; out: f3 64 a5
fs rep movsd			; out: f3 64 a5

cmpss xmm0, [eax], 0		; out: f3 0f c2 00 00
cmpss xmm0, [es:eax], 0		; out: 26 f3 0f c2 00 00

cmpsd				; out: a7
fs cmpsd			; out: 64 a7
rep fs cmpsd			; out: f3 64 a7
fs rep cmpsd			; out: f3 64 a7

cmpsd xmm0, [eax], 0		; out: f2 0f c2 00 00
cmpsd xmm0, [es:eax], 0		; out: 26 f2 0f c2 00 00

[bits 64]
movsw				; out: 66 a5
rep movsw			; out: 66 f3 a5

movsd				; out: a5
rep movsd			; out: f3 a5

cmpss xmm0, [r8], 0		; out: f3 41 0f c2 00 00

cmpsd				; out: a7
rep cmpsd			; out: f3 a7

cmpsd xmm0, [r8], 0		; out: f2 41 0f c2 00 00
