[bits 32]
pextrw ebx, mm5, 0		; out: 0f c5 dd 00
pextrw ecx, xmm0, 1		; out: 66 0f c5 c8 01

pinsrw mm3, esi, 5		; out: 0f c4 de 05
pinsrw mm3, [0], 4		; out: 0f c4 1d 00 00 00 00 04

pinsrw xmm1, eax, 3		; out: 66 0f c4 c8 03
pinsrw xmm1, [0], 2		; out: 66 0f c4 0d 00 00 00 00 02

movmskpd edx, xmm7		; out: 66 0f 50 d7
movmskps eax, xmm1		; out: 0f 50 c1

pmovmskb edi, mm0		; out: 0f d7 f8
pmovmskb esi, xmm1		; out: 66 0f d7 f1

cvtdq2pd xmm5, xmm4		; out: f3 0f e6 ec
cvtdq2pd xmm3, [0]		; out: f3 0f e6 1d 00 00 00 00
cvtdq2pd xmm2, qword [0]	; out: f3 0f e6 15 00 00 00 00

cvtdq2ps xmm1, xmm2		; out: 0f 5b ca
cvtdq2ps xmm4, [0]		; out: 0f 5b 25 00 00 00 00
cvtdq2ps xmm5, dqword [0]	; out: 0f 5b 2d 00 00 00 00

cvtpd2dq xmm0, xmm1		; out: f2 0f e6 c1
cvtpd2dq xmm2, [0]		; out: f2 0f e6 15 00 00 00 00
cvtpd2dq xmm3, dqword [0]	; out: f2 0f e6 1d 00 00 00 00

cvtpd2pi mm4, xmm5		; out: 66 0f 2d e5
cvtpd2pi mm6, [0]		; out: 66 0f 2d 35 00 00 00 00
cvtpd2pi mm7, dqword [0]	; out: 66 0f 2d 3d 00 00 00 00

cvtpd2ps xmm1, xmm2		; out: 66 0f 5a ca
cvtpd2ps xmm3, [0]		; out: 66 0f 5a 1d 00 00 00 00
cvtpd2ps xmm4, dqword [0]	; out: 66 0f 5a 25 00 00 00 00

cvtpi2pd xmm5, mm6		; out: 66 0f 2a ee
cvtpi2pd xmm7, [0]		; out: 66 0f 2a 3d 00 00 00 00
cvtpi2pd xmm0, qword [0]	; out: 66 0f 2a 05 00 00 00 00

cvtpi2ps xmm2, mm3		; out: 0f 2a d3
cvtpi2ps xmm4, [0]		; out: 0f 2a 25 00 00 00 00
cvtpi2ps xmm5, qword [0]	; out: 0f 2a 2d 00 00 00 00

cvtps2dq xmm6, xmm7		; out: 66 0f 5b f7
cvtps2dq xmm0, [0]		; out: 66 0f 5b 05 00 00 00 00
cvtps2dq xmm1, dqword [0]	; out: 66 0f 5b 0d 00 00 00 00

cvtps2pd xmm2, xmm3		; out: 0f 5a d3
cvtps2pd xmm4, [0]		; out: 0f 5a 25 00 00 00 00
cvtps2pd xmm5, qword [0]	; out: 0f 5a 2d 00 00 00 00

cvtps2pi mm6, xmm7		; out: 0f 2d f7
cvtps2pi mm0, [0]		; out: 0f 2d 05 00 00 00 00
cvtps2pi mm1, qword [0]		; out: 0f 2d 0d 00 00 00 00

cvtsd2si edx, xmm0		; out: f2 0f 2d d0
cvtsd2si eax, [0]		; out: f2 0f 2d 05 00 00 00 00
cvtsd2si ebx, qword [0]		; out: f2 0f 2d 1d 00 00 00 00

cvtsd2ss xmm1, xmm2		; out: f2 0f 5a ca
cvtsd2ss xmm3, [0]		; out: f2 0f 5a 1d 00 00 00 00
cvtsd2ss xmm4, qword [0]	; out: f2 0f 5a 25 00 00 00 00

cvtsi2sd xmm5, eax		; out: f2 0f 2a e8
cvtsi2sd xmm6, [0]		; out: f2 0f 2a 35 00 00 00 00
cvtsi2sd xmm7, dword [0]	; out: f2 0f 2a 3d 00 00 00 00

cvtsi2ss xmm0, edx		; out: f3 0f 2a c2
cvtsi2ss xmm1, [0]		; out: f3 0f 2a 0d 00 00 00 00
cvtsi2ss xmm2, dword [0]	; out: f3 0f 2a 15 00 00 00 00

cvtss2sd xmm3, xmm4		; out: f3 0f 5a dc
cvtss2sd xmm5, [0]		; out: f3 0f 5a 2d 00 00 00 00
cvtss2sd xmm6, dword [0]	; out: f3 0f 5a 35 00 00 00 00

cvtss2si ebx, xmm7		; out: f3 0f 2d df
cvtss2si ecx, [0]		; out: f3 0f 2d 0d 00 00 00 00
cvtss2si eax, dword [0]		; out: f3 0f 2d 05 00 00 00 00

cvttpd2pi mm0, xmm1		; out: 66 0f 2c c1
cvttpd2pi mm2, [0]		; out: 66 0f 2c 15 00 00 00 00
cvttpd2pi mm3, dqword [0]	; out: 66 0f 2c 1d 00 00 00 00

cvttpd2dq xmm4, xmm5		; out: 66 0f e6 e5
cvttpd2dq xmm6, [0]		; out: 66 0f e6 35 00 00 00 00
cvttpd2dq xmm7, dqword [0]	; out: 66 0f e6 3d 00 00 00 00

cvttps2dq xmm0, xmm1		; out: f3 0f 5b c1
cvttps2dq xmm2, [0]		; out: f3 0f 5b 15 00 00 00 00
cvttps2dq xmm3, dqword [0]	; out: f3 0f 5b 1d 00 00 00 00

cvttps2pi mm4, xmm5		; out: 0f 2c e5
cvttps2pi mm6, [0]		; out: 0f 2c 35 00 00 00 00
cvttps2pi mm7, qword [0]	; out: 0f 2c 3d 00 00 00 00

cvttsd2si ecx, xmm0		; out: f2 0f 2c c8
cvttsd2si ebx, [0]		; out: f2 0f 2c 1d 00 00 00 00
cvttsd2si edi, qword [0]	; out: f2 0f 2c 3d 00 00 00 00

cvttss2si esi, xmm3		; out: f3 0f 2c f3
cvttss2si ebp, [0]		; out: f3 0f 2c 2d 00 00 00 00
cvttss2si eax, dword [0]	; out: f3 0f 2c 05 00 00 00 00

