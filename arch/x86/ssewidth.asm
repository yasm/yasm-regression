[bits 64]
addpd xmm1, xmm2			; out: 66 0f 58 ca
addpd xmm1, dqword [rbx]		; out: 66 0f 58 0b

addps xmm1, xmm2			; out: 0f 58 ca
addps xmm1, dqword [rbx]		; out: 0f 58 0b

addsd xmm1, xmm2			; out: f2 0f 58 ca
addsd xmm1, qword [rbx]			; out: f2 0f 58 0b

addss xmm1, xmm2			; out: f3 0f 58 ca
addss xmm1, dword [rbx]			; out: f3 0f 58 0b

addsubpd xmm1, xmm2			; out: 66 0f d0 ca
addsubpd xmm1, dqword [rbx]		; out: 66 0f d0 0b

addsubps xmm1, xmm2			; out: f2 0f d0 ca
addsubps xmm1, dqword [rbx]		; out: f2 0f d0 0b

andnpd xmm1, xmm2			; out: 66 0f 55 ca
andnpd xmm1, dqword [rbx]		; out: 66 0f 55 0b

andnps xmm1, xmm2			; out: 0f 55 ca
andnps xmm1, dqword [rbx]		; out: 0f 55 0b

andpd xmm1, xmm2			; out: 66 0f 54 ca
andpd xmm1, dqword [rbx]		; out: 66 0f 54 0b

andps xmm1, xmm2			; out: 0f 54 ca
andps xmm1, dqword [rbx]		; out: 0f 54 0b

cmppd xmm1, xmm2, 0			; out: 66 0f c2 ca 00
cmppd xmm1, dqword [rbx], 0		; out: 66 0f c2 0b 00
cmpeqpd xmm1, xmm2			; out: 66 0f c2 ca 00
cmpeqpd xmm1, dqword [rbx]		; out: 66 0f c2 0b 00

cmpps xmm1, xmm2, 0			; out: 0f c2 ca 00
cmpps xmm1, dqword [rbx], 0		; out: 0f c2 0b 00
cmpeqps xmm1, xmm2			; out: 0f c2 ca 00
cmpeqps xmm1, dqword [rbx]		; out: 0f c2 0b 00

cmpsd xmm1, xmm2, 0			; out: f2 0f c2 ca 00
cmpsd xmm1, qword [rbx], 0		; out: f2 0f c2 0b 00
cmpeqsd xmm1, xmm2			; out: f2 0f c2 ca 00
cmpeqsd xmm1, qword [rbx]		; out: f2 0f c2 0b 00

cmpss xmm1, xmm2, 0			; out: f3 0f c2 ca 00
cmpss xmm1, dword [rbx], 0		; out: f3 0f c2 0b 00
cmpeqss xmm1, xmm2			; out: f3 0f c2 ca 00
cmpeqss xmm1, dword [rbx]		; out: f3 0f c2 0b 00

comisd xmm1, xmm2			; out: 66 0f 2f ca
comisd xmm1, qword [rbx]		; out: 66 0f 2f 0b

comiss xmm1, xmm2			; out: 0f 2f ca
comiss xmm1, dword [rbx]		; out: 0f 2f 0b

cvtdq2pd xmm1, xmm2			; out: f3 0f e6 ca
cvtdq2pd xmm1, qword [rbx]		; out: f3 0f e6 0b

cvtdq2ps xmm1, xmm2			; out: 0f 5b ca
cvtdq2ps xmm1, dqword [rbx]		; out: 0f 5b 0b

cvtpd2dq xmm1, xmm2			; out: f2 0f e6 ca
cvtpd2dq xmm1, dqword [rbx]		; out: f2 0f e6 0b

cvtpd2pi mm1, xmm2			; out: 66 0f 2d ca - mmx
cvtpd2pi mm1, dqword [rbx]		; out: 66 0f 2d 0b

cvtpd2ps xmm1, xmm2			; out: 66 0f 5a ca
cvtpd2ps xmm1, dqword [rbx]		; out: 66 0f 5a 0b

cvtpi2pd xmm1, mm2			; out: 66 0f 2a ca - mmx
cvtpi2pd xmm1, qword [rbx]		; out: 66 0f 2a 0b

cvtpi2ps xmm1, mm2			; out: 0f 2a ca - mmx
cvtpi2ps xmm1, qword [rbx]		; out: 0f 2a 0b

cvtps2dq xmm1, xmm2			; out: 66 0f 5b ca
cvtps2dq xmm1, dqword [rbx]		; out: 66 0f 5b 0b

cvtps2pd xmm1, xmm2			; out: 0f 5a ca
cvtps2pd xmm1, qword [rbx]		; out: 0f 5a 0b

cvtps2pi mm1, xmm2			; out: 0f 2d ca
cvtps2pi mm1, qword [rbx]		; out: 0f 2d 0b

cvtsd2si rbx, xmm2			; out: f2 48 0f 2d da
cvtsd2si rbx, qword [rbx]		; out: f2 48 0f 2d 1b

cvtsd2ss xmm1, xmm2			; out: f2 0f 5a ca
cvtsd2ss xmm1, qword [rbx]		; out: f2 0f 5a 0b

cvtsi2sd xmm1, ebx			; out: f2 0f 2a cb
cvtsi2sd xmm1, dword [rbx]		; out: f2 0f 2a 0b
cvtsi2sd xmm1, rbx			; out: f2 48 0f 2a cb
cvtsi2sd xmm1, qword [rbx]		; out: f2 48 0f 2a 0b

cvtsi2ss xmm1, ebx			; out: f3 0f 2a cb
cvtsi2ss xmm1, dword [rbx]		; out: f3 0f 2a 0b
cvtsi2ss xmm1, rbx			; out: f3 48 0f 2a cb
cvtsi2ss xmm1, qword [rbx]		; out: f3 48 0f 2a 0b

cvtss2sd xmm1, xmm2			; out: f3 0f 5a ca
cvtss2sd xmm1, dword [rbx]		; out: f3 0f 5a 0b

cvtss2si ebx, xmm2			; out: f3 0f 2d da
cvtss2si ebx, dword [rbx]		; out: f3 0f 2d 1b
cvtss2si rbx, xmm2			; out: f3 48 0f 2d da
cvtss2si rbx, dword [rbx]		; out: f3 48 0f 2d 1b

cvttpd2dq xmm1, xmm2			; out: 66 0f e6 ca
cvttpd2dq xmm1, dqword [rbx]		; out: 66 0f e6 0b

cvttpd2pi mm1, xmm2			; out: 66 0f 2c ca
cvttpd2pi mm1, dqword [rbx]		; out: 66 0f 2c 0b

cvttps2dq xmm1, xmm2			; out: f3 0f 5b ca
cvttps2dq xmm1, dqword [rbx]		; out: f3 0f 5b 0b

cvttps2pi mm1, xmm2			; out: 0f 2c ca
cvttps2pi mm1, qword [rbx]		; out: 0f 2c 0b

cvttsd2si eax, xmm1			; out: f2 0f 2c c1
cvttsd2si eax, qword [rbx]		; out: f2 0f 2c 03
cvttsd2si rax, xmm1			; out: f2 48 0f 2c c1
cvttsd2si rax, qword [rbx]		; out: f2 48 0f 2c 03

cvttss2si eax, xmm1			; out: f3 0f 2c c1
cvttss2si eax, dword [rbx]		; out: f3 0f 2c 03
cvttss2si rax, xmm1			; out: f3 48 0f 2c c1
cvttss2si rax, dword [rbx]		; out: f3 48 0f 2c 03

divpd xmm1, xmm2			; out: 66 0f 5e ca
divpd xmm1, dqword [rbx]		; out: 66 0f 5e 0b

divps xmm1, xmm2			; out: 0f 5e ca
divps xmm1, dqword [rbx]		; out: 0f 5e 0b

divsd xmm1, xmm2			; out: f2 0f 5e ca
divsd xmm1, qword [rbx]			; out: f2 0f 5e 0b

divss xmm1, xmm2			; out: f3 0f 5e ca
divss xmm1, dword [rbx]			; out: f3 0f 5e 0b

extrq xmm1, 0, 1			; out: 66 0f 78 c1 00 01
extrq xmm1, byte 0, byte 1		; out: 66 0f 78 c1 00 01
extrq xmm1, xmm2			; out: 66 0f 79 ca

haddpd xmm1, xmm2			; out: 66 0f 7c ca
haddpd xmm1, dqword [rbx]		; out: 66 0f 7c 0b

haddps xmm1, xmm2			; out: f2 0f 7c ca
haddps xmm1, dqword [rbx]		; out: f2 0f 7c 0b

hsubpd xmm1, xmm2			; out: 66 0f 7d ca
hsubpd xmm1, dqword [rbx]		; out: 66 0f 7d 0b

hsubps xmm1, xmm2			; out: f2 0f 7d ca
hsubps xmm1, dqword [rbx]		; out: f2 0f 7d 0b

insertq xmm1, xmm2, 0, 1		; out: f2 0f 78 ca 00 01
insertq xmm1, xmm2, byte 0, byte 1	; out: f2 0f 78 ca 00 01
insertq xmm1, xmm2			; out: f2 0f 79 ca

lddqu xmm1, dqword [rbx]		; out: f2 0f f0 0b

ldmxcsr dword [rbx]			; out: 0f ae 13

maskmovdqu xmm1, xmm2			; out: 66 0f f7 ca

maxpd xmm1, xmm2			; out: 66 0f 5f ca
maxpd xmm1, dqword [rbx]		; out: 66 0f 5f 0b

maxps xmm1, xmm2			; out: 0f 5f ca
maxps xmm1, dqword [rbx]		; out: 0f 5f 0b

maxsd xmm1, xmm2			; out: f2 0f 5f ca
maxsd xmm1, qword [rbx]			; out: f2 0f 5f 0b

maxss xmm1, xmm2			; out: f3 0f 5f ca
maxss xmm1, dword [rbx]			; out: f3 0f 5f 0b

minpd xmm1, xmm2			; out: 66 0f 5d ca
minpd xmm1, dqword [rbx]		; out: 66 0f 5d 0b

minps xmm1, xmm2			; out: 0f 5d ca
minps xmm1, dqword [rbx]		; out: 0f 5d 0b

minsd xmm1, xmm2			; out: f2 0f 5d ca
minsd xmm1, qword [rbx]			; out: f2 0f 5d 0b

minss xmm1, xmm2			; out: f3 0f 5d ca
minss xmm1, dword [rbx]			; out: f3 0f 5d 0b

movapd xmm1, xmm2			; out: 66 0f 28 ca
movapd xmm1, dqword [rbx]		; out: 66 0f 28 0b
movapd dqword [rbx], xmm2		; out: 66 0f 29 13

movaps xmm1, xmm2			; out: 0f 28 ca
movaps xmm1, dqword [rbx]		; out: 0f 28 0b
movaps dqword [rbx], xmm2		; out: 0f 29 13

movd xmm1, ebx				; out: 66 0f 6e cb
movd xmm1, dword [rbx]			; out: 66 0f 6e 0b
movd xmm1, rbx				; out: 66 48 0f 6e cb
movd xmm1, qword [rbx]			; out: 66 48 0f 6e 0b
movd dword [rbx], xmm2			; out: 66 0f 7e 13
movd qword [rbx], xmm2			; out: 66 48 0f 7e 13

movddup xmm1, xmm2			; out: f2 0f 12 ca
movddup xmm1, qword [rbx]		; out: f2 0f 12 0b

movdq2q mm1, xmm2			; out: f2 0f d6 ca

movdqa xmm1, xmm2			; out: 66 0f 6f ca
movdqa xmm1, dqword [rbx]		; out: 66 0f 6f 0b
movdqa dqword [rbx], xmm2		; out: 66 0f 7f 13

movdqu xmm1, xmm2			; out: f3 0f 6f ca
movdqu xmm1, dqword [rbx]		; out: f3 0f 6f 0b
movdqu dqword [rbx], xmm2		; out: f3 0f 7f 13

movhlps xmm1, xmm2			; out: 0f 12 ca

movhpd xmm1, qword [rbx]		; out: 66 0f 16 0b
movhpd qword [rbx], xmm2		; out: 66 0f 17 13

movhps xmm1, qword [rbx]		; out: 0f 16 0b
movhps qword [rbx], xmm2		; out: 0f 17 13

movlhps xmm1, xmm2			; out: 0f 16 ca

movlpd xmm1, qword [rbx]		; out: 66 0f 12 0b
movlpd qword [rbx], xmm2		; out: 66 0f 13 13

movlps xmm1, qword [rbx]		; out: 0f 12 0b
movlps qword [rbx], xmm2		; out: 0f 13 13

movmskpd ebx, xmm2			; out: 66 0f 50 da

movmskps ebx, xmm2			; out: 0f 50 da

movntdq dqword [rbx], xmm2		; out: 66 0f e7 13

movntpd dqword [rbx], xmm2		; out: 66 0f 2b 13

movntps dqword [rbx], xmm2		; out: 0f 2b 13

movntsd qword [rbx], xmm2		; out: f2 0f 2b 13

movntss dword [rbx], xmm2		; out: f3 0f 2b 13

movq xmm1, xmm2				; out: f3 0f 7e ca
movq xmm1, qword [rbx]			; out: f3 0f 7e 0b
movq qword [rbx], xmm2			; out: 66 0f d6 13

movq2dq xmm1, mm2			; out: f3 0f d6 ca

movsd xmm1, xmm2			; out: f2 0f 10 ca
movsd xmm1, qword [rbx]			; out: f2 0f 10 0b
movsd qword [rbx], xmm2			; out: f2 0f 11 13

movshdup xmm1, xmm2			; out: f3 0f 16 ca
movshdup xmm1, dqword [rbx]		; out: f3 0f 16 0b

movsldup xmm1, xmm2			; out: f3 0f 12 ca
movsldup xmm1, dqword [rbx]		; out: f3 0f 12 0b

movss xmm1, xmm2			; out: f3 0f 10 ca
movss xmm1, dword [rbx]			; out: f3 0f 10 0b
movss dword [rbx], xmm2			; out: f3 0f 11 13

movupd xmm1, xmm2			; out: 66 0f 10 ca
movupd xmm1, dqword [rbx]		; out: 66 0f 10 0b
movupd dqword [rbx], xmm2		; out: 66 0f 11 13

movups xmm1, xmm2			; out: 0f 10 ca
movups xmm1, dqword [rbx]		; out: 0f 10 0b
movups dqword [rbx], xmm2		; out: 0f 11 13

mulpd xmm1, xmm2			; out: 66 0f 59 ca
mulpd xmm1, dqword [rbx]		; out: 66 0f 59 0b

mulps xmm1, xmm2			; out: 0f 59 ca
mulps xmm1, dqword [rbx]		; out: 0f 59 0b

mulsd xmm1, xmm2			; out: f2 0f 59 ca
mulsd xmm1, qword [rbx]			; out: f2 0f 59 0b

mulss xmm1, xmm2			; out: f3 0f 59 ca
mulss xmm1, dword [rbx]			; out: f3 0f 59 0b

orpd xmm1, xmm2				; out: 66 0f 56 ca
orpd xmm1, dqword [rbx]			; out: 66 0f 56 0b

orps xmm1, xmm2				; out: 0f 56 ca
orps xmm1, dqword [rbx]			; out: 0f 56 0b

packssdw xmm1, xmm2			; out: 66 0f 6b ca
packssdw xmm1, dqword [rbx]		; out: 66 0f 6b 0b

packsswb xmm1, xmm2			; out: 66 0f 63 ca
packsswb xmm1, dqword [rbx]		; out: 66 0f 63 0b

packuswb xmm1, xmm2			; out: 66 0f 67 ca
packuswb xmm1, dqword [rbx]		; out: 66 0f 67 0b

paddb xmm1, xmm2			; out: 66 0f fc ca
paddb xmm1, dqword [rbx]		; out: 66 0f fc 0b

paddd xmm1, xmm2			; out: 66 0f fe ca
paddd xmm1, dqword [rbx]		; out: 66 0f fe 0b

paddq xmm1, xmm2			; out: 66 0f d4 ca
paddq xmm1, dqword [rbx]		; out: 66 0f d4 0b

paddsb xmm1, xmm2			; out: 66 0f ec ca
paddsb xmm1, dqword [rbx]		; out: 66 0f ec 0b

paddsw xmm1, xmm2			; out: 66 0f ed ca
paddsw xmm1, dqword [rbx]		; out: 66 0f ed 0b

paddusb xmm1, xmm2			; out: 66 0f dc ca
paddusb xmm1, dqword [rbx]		; out: 66 0f dc 0b

paddusw xmm1, xmm2			; out: 66 0f dd ca
paddusw xmm1, dqword [rbx]		; out: 66 0f dd 0b

paddw xmm1, xmm2			; out: 66 0f fd ca
paddw xmm1, dqword [rbx]		; out: 66 0f fd 0b

pand xmm1, xmm2				; out: 66 0f db ca
pand xmm1, dqword [rbx]			; out: 66 0f db 0b

pandn xmm1, xmm2			; out: 66 0f df ca
pandn xmm1, dqword [rbx]		; out: 66 0f df 0b

pavgb xmm1, xmm2			; out: 66 0f e0 ca
pavgb xmm1, dqword [rbx]		; out: 66 0f e0 0b

pavgw xmm1, xmm2			; out: 66 0f e3 ca
pavgw xmm1, dqword [rbx]		; out: 66 0f e3 0b

pcmpeqb xmm1, xmm2			; out: 66 0f 74 ca
pcmpeqb xmm1, dqword [rbx]		; out: 66 0f 74 0b

pcmpeqd xmm1, xmm2			; out: 66 0f 76 ca
pcmpeqd xmm1, dqword [rbx]		; out: 66 0f 76 0b

pcmpeqw xmm1, xmm2			; out: 66 0f 75 ca
pcmpeqw xmm1, dqword [rbx]		; out: 66 0f 75 0b

pcmpgtb xmm1, xmm2			; out: 66 0f 64 ca
pcmpgtb xmm1, dqword [rbx]		; out: 66 0f 64 0b

pcmpgtd xmm1, xmm2			; out: 66 0f 66 ca
pcmpgtd xmm1, dqword [rbx]		; out: 66 0f 66 0b

pcmpgtw xmm1, xmm2			; out: 66 0f 65 ca
pcmpgtw xmm1, dqword [rbx]		; out: 66 0f 65 0b

pextrw ebx, xmm2, byte 0		; out: 66 0f c5 da 00

pinsrw xmm1, ebx, byte 0		; out: 66 0f c4 cb 00
pinsrw xmm1, word [rbx], byte 0		; out: 66 0f c4 0b 00

pmaddwd xmm1, xmm2			; out: 66 0f f5 ca
pmaddwd xmm1, dqword [rbx]		; out: 66 0f f5 0b

pmaxsw xmm1, xmm2			; out: 66 0f ee ca
pmaxsw xmm1, dqword [rbx]		; out: 66 0f ee 0b

pmaxub xmm1, xmm2			; out: 66 0f de ca
pmaxub xmm1, dqword [rbx]		; out: 66 0f de 0b

pminsw xmm1, xmm2			; out: 66 0f ea ca
pminsw xmm1, dqword [rbx]		; out: 66 0f ea 0b

pminub xmm1, xmm2			; out: 66 0f da ca
pminub xmm1, dqword [rbx]		; out: 66 0f da 0b

pmovmskb eax, xmm2			; out: 66 0f d7 c2

pmulhuw xmm1, xmm2			; out: 66 0f e4 ca
pmulhuw xmm1, dqword [rbx]		; out: 66 0f e4 0b

pmulhw xmm1, xmm2			; out: 66 0f e5 ca
pmulhw xmm1, dqword [rbx]		; out: 66 0f e5 0b

pmullw xmm1, xmm2			; out: 66 0f d5 ca
pmullw xmm1, dqword [rbx]		; out: 66 0f d5 0b

pmuludq xmm1, xmm2			; out: 66 0f f4 ca
pmuludq xmm1, dqword [rbx]		; out: 66 0f f4 0b

por xmm1, xmm2				; out: 66 0f eb ca
por xmm1, dqword [rbx]			; out: 66 0f eb 0b

psadbw xmm1, xmm2			; out: 66 0f f6 ca
psadbw xmm1, dqword [rbx]		; out: 66 0f f6 0b

pshufd xmm1, xmm2, byte 0		; out: 66 0f 70 ca 00
pshufd xmm1, dqword [rbx], byte 0	; out: 66 0f 70 0b 00

pshufhw xmm1, xmm2, byte 0		; out: f3 0f 70 ca 00
pshufhw xmm1, dqword [rbx], byte 0	; out: f3 0f 70 0b 00

pshuflw xmm1, xmm2, byte 0		; out: f2 0f 70 ca 00
pshuflw xmm1, dqword [rbx], byte 0	; out: f2 0f 70 0b 00

pslld xmm1, xmm2			; out: 66 0f f2 ca
pslld xmm1, dqword [rbx]		; out: 66 0f f2 0b
pslld xmm1, byte 5			; out: 66 0f 72 f1 05

pslldq xmm1, byte 5			; out: 66 0f 73 f9 05

psllq xmm1, xmm2			; out: 66 0f f3 ca
psllq xmm1, dqword [rbx]		; out: 66 0f f3 0b
psllq xmm1, byte 5			; out: 66 0f 73 f1 05

psllw xmm1, xmm2			; out: 66 0f f1 ca
psllw xmm1, dqword [rbx]		; out: 66 0f f1 0b
psllw xmm1, byte 5			; out: 66 0f 71 f1 05

psrad xmm1, xmm2			; out: 66 0f e2 ca
psrad xmm1, dqword [rbx]		; out: 66 0f e2 0b
psrad xmm1, byte 5			; out: 66 0f 72 e1 05

psraw xmm1, xmm2			; out: 66 0f e1 ca
psraw xmm1, dqword [rbx]		; out: 66 0f e1 0b
psraw xmm1, byte 5			; out: 66 0f 71 e1 05

psrld xmm1, xmm2			; out: 66 0f d2 ca
psrld xmm1, dqword [rbx]		; out: 66 0f d2 0b
psrld xmm1, byte 5			; out: 66 0f 72 d1 05

psrldq xmm1, byte 5			; out: 66 0f 73 d9 05

psrlq xmm1, xmm2			; out: 66 0f d3 ca
psrlq xmm1, dqword [rbx]		; out: 66 0f d3 0b
psrlq xmm1, byte 5			; out: 66 0f 73 d1 05

psrlw xmm1, xmm2			; out: 66 0f d1 ca
psrlw xmm1, dqword [rbx]		; out: 66 0f d1 0b
psrlw xmm1, byte 5			; out: 66 0f 71 d1 05

psubb xmm1, xmm2			; out: 66 0f f8 ca
psubb xmm1, dqword [rbx]		; out: 66 0f f8 0b

psubd xmm1, xmm2			; out: 66 0f fa ca
psubd xmm1, dqword [rbx]		; out: 66 0f fa 0b

psubq xmm1, xmm2			; out: 66 0f fb ca
psubq xmm1, dqword [rbx]		; out: 66 0f fb 0b

psubsb xmm1, xmm2			; out: 66 0f e8 ca
psubsb xmm1, dqword [rbx]		; out: 66 0f e8 0b

psubsw xmm1, xmm2			; out: 66 0f e9 ca
psubsw xmm1, dqword [rbx]		; out: 66 0f e9 0b

psubusb xmm1, xmm2			; out: 66 0f d8 ca
psubusb xmm1, dqword [rbx]		; out: 66 0f d8 0b

psubusw xmm1, xmm2			; out: 66 0f d9 ca
psubusw xmm1, dqword [rbx]		; out: 66 0f d9 0b

psubw xmm1, xmm2			; out: 66 0f f9 ca
psubw xmm1, dqword [rbx]		; out: 66 0f f9 0b

punpckhbw xmm1, xmm2			; out: 66 0f 68 ca
punpckhbw xmm1, dqword [rbx]		; out: 66 0f 68 0b

punpckhdq xmm1, xmm2			; out: 66 0f 6a ca
punpckhdq xmm1, dqword [rbx]		; out: 66 0f 6a 0b

punpckhqdq xmm1, xmm2			; out: 66 0f 6d ca
punpckhqdq xmm1, dqword [rbx]		; out: 66 0f 6d 0b

punpckhwd xmm1, xmm2			; out: 66 0f 69 ca
punpckhwd xmm1, dqword [rbx]		; out: 66 0f 69 0b

punpcklbw xmm1, xmm2			; out: 66 0f 60 ca
punpcklbw xmm1, dqword [rbx]		; out: 66 0f 60 0b

punpckldq xmm1, xmm2			; out: 66 0f 62 ca
punpckldq xmm1, dqword [rbx]		; out: 66 0f 62 0b

punpcklqdq xmm1, xmm2			; out: 66 0f 6c ca
punpcklqdq xmm1, dqword [rbx]		; out: 66 0f 6c 0b

punpcklwd xmm1, xmm2			; out: 66 0f 61 ca
punpcklwd xmm1, dqword [rbx]		; out: 66 0f 61 0b

pxor xmm1, xmm2				; out: 66 0f ef ca
pxor xmm1, dqword [rbx]			; out: 66 0f ef 0b

rcpps xmm1, xmm2			; out: 0f 53 ca
rcpps xmm1, dqword [rbx]		; out: 0f 53 0b

rcpss xmm1, xmm2			; out: f3 0f 53 ca
rcpss xmm1, dword [rbx]			; out: f3 0f 53 0b

rsqrtps xmm1, xmm2			; out: 0f 52 ca
rsqrtps xmm1, dqword [rbx]		; out: 0f 52 0b

rsqrtss xmm1, xmm2			; out: f3 0f 52 ca
rsqrtss xmm1, dword [rbx]		; out: f3 0f 52 0b

shufpd xmm1, xmm2, 0			; out: 66 0f c6 ca 00
shufpd xmm1, dqword [rbx], byte 0	; out: 66 0f c6 0b 00

shufps xmm1, xmm2, 0			; out: 0f c6 ca 00
shufps xmm1, dqword [rbx], byte 0	; out: 0f c6 0b 00

sqrtpd xmm1, xmm2			; out: 66 0f 51 ca
sqrtpd xmm1, dqword [rbx]		; out: 66 0f 51 0b

sqrtps xmm1, xmm2			; out: 0f 51 ca
sqrtps xmm1, dqword [rbx]		; out: 0f 51 0b

sqrtsd xmm1, xmm2			; out: f2 0f 51 ca
sqrtsd xmm1, qword [rbx]		; out: f2 0f 51 0b

sqrtss xmm1, xmm2			; out: f3 0f 51 ca
sqrtss xmm1, dword [rbx]		; out: f3 0f 51 0b

stmxcsr dword [rbx]			; out: 0f ae 1b

subpd xmm1, xmm2			; out: 66 0f 5c ca
subpd xmm1, dqword [rbx]		; out: 66 0f 5c 0b

subps xmm1, xmm2			; out: 0f 5c ca
subps xmm1, dqword [rbx]		; out: 0f 5c 0b

subsd xmm1, xmm2			; out: f2 0f 5c ca
subsd xmm1, qword [rbx]			; out: f2 0f 5c 0b

subss xmm1, xmm2			; out: f3 0f 5c ca
subss xmm1, dword [rbx]			; out: f3 0f 5c 0b

ucomisd xmm1, xmm2			; out: 66 0f 2e ca
ucomisd xmm1, qword [rbx]		; out: 66 0f 2e 0b

ucomiss xmm1, xmm2			; out: 0f 2e ca
ucomiss xmm1, dword [rbx]		; out: 0f 2e 0b

unpckhpd xmm1, xmm2			; out: 66 0f 15 ca
unpckhpd xmm1, dqword [rbx]		; out: 66 0f 15 0b

unpckhps xmm1, xmm2			; out: 0f 15 ca
unpckhps xmm1, dqword [rbx]		; out: 0f 15 0b

unpcklpd xmm1, xmm2			; out: 66 0f 14 ca
unpcklpd xmm1, dqword [rbx]		; out: 66 0f 14 0b

unpcklps xmm1, xmm2			; out: 0f 14 ca
unpcklps xmm1, dqword [rbx]		; out: 0f 14 0b

xorpd xmm1, xmm2			; out: 66 0f 57 ca
xorpd xmm1, dqword [rbx]		; out: 66 0f 57 0b

xorps xmm1, xmm2			; out: 0f 57 ca
xorps xmm1, dqword [rbx]		; out: 0f 57 0b
