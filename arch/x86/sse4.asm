[bits 64]
blendpd xmm1, xmm2, 5		; out: 66 0f 3a 0d ca 05
blendpd xmm1, [0], 5		; out: 66 0f 3a 0d 0c 25 00 00 00 00 05

blendps xmm1, xmm2, 5		; out: 66 0f 3a 0c ca 05
blendps xmm1, [0], 5		; out: 66 0f 3a 0c 0c 25 00 00 00 00 05

blendvpd xmm1, xmm2		; out: 66 0f 38 15 ca
blendvpd xmm1, xmm2, xmm0	; out: 66 0f 38 15 ca
blendvpd xmm1, [0]		; out: 66 0f 38 15 0c 25 00 00 00 00
blendvpd xmm1, [0], xmm0	; out: 66 0f 38 15 0c 25 00 00 00 00

blendvps xmm1, xmm2		; out: 66 0f 38 14 ca
blendvps xmm1, xmm2, xmm0	; out: 66 0f 38 14 ca
blendvps xmm1, [0]		; out: 66 0f 38 14 0c 25 00 00 00 00
blendvps xmm1, [0], xmm0	; out: 66 0f 38 14 0c 25 00 00 00 00

crc32 eax, bl			; out: f2 0f 38 f0 c3
crc32 eax, bh			; out: f2 0f 38 f0 c7
crc32 eax, r9b			; out: f2 41 0f 38 f0 c1
crc32 eax, byte [0]		; out: f2 0f 38 f0 04 25 00 00 00 00
crc32 eax, bx			; out: 66 f2 0f 38 f1 c3
crc32 eax, word [0]		; out: 66 f2 0f 38 f1 04 25 00 00 00 00
crc32 eax, ebx			; out: f2 0f 38 f1 c3
crc32 eax, dword [0]		; out: f2 0f 38 f1 04 25 00 00 00 00

crc32 r8d, bl			; out: f2 44 0f 38 f0 c3
;crc32 r8d, bh			; error
crc32 r8d, r9b			; out: f2 45 0f 38 f0 c1
crc32 r8d, byte [0]		; out: f2 44 0f 38 f0 04 25 00 00 00 00
crc32 r8d, bx			; out: 66 f2 44 0f 38 f1 c3
crc32 r8d, word [0]		; out: 66 f2 44 0f 38 f1 04 25 00 00 00 00
crc32 r8d, ebx			; out: f2 44 0f 38 f1 c3
crc32 r8d, dword [0]		; out: f2 44 0f 38 f1 04 25 00 00 00 00

crc32 rax, bl			; out: f2 48 0f 38 f0 c3
;crc32 rax, bh			; error
crc32 rax, r9b			; out: f2 49 0f 38 f0 c1
crc32 rax, byte [0]		; out: f2 48 0f 38 f0 04 25 00 00 00 00
crc32 rax, rbx			; out: f2 48 0f 38 f1 c3
crc32 rax, qword [0]		; out: f2 48 0f 38 f1 04 25 00 00 00 00

dppd xmm1, xmm2, 5		; out: 66 0f 3a 41 ca 05
dppd xmm1, [0], 5		; out: 66 0f 3a 41 0c 25 00 00 00 00 05

dpps xmm1, xmm2, 5		; out: 66 0f 3a 40 ca 05
dpps xmm1, [0], 5		; out: 66 0f 3a 40 0c 25 00 00 00 00 05

extractps eax, xmm1, 5		; out: 66 0f 3a 17 c8 05
extractps [0], xmm1, 5		; out: 66 0f 3a 17 0c 25 00 00 00 00 05
extractps dword [0], xmm1, 5	; out: 66 0f 3a 17 0c 25 00 00 00 00 05
extractps r8d, xmm1, 5		; out: 66 41 0f 3a 17 c8 05
extractps rax, xmm1, 5		; out: 66 48 0f 3a 17 c8 05

insertps xmm1, xmm2, 5		; out: 66 0f 3a 21 ca 05
insertps xmm1, [0], 5		; out: 66 0f 3a 21 0c 25 00 00 00 00 05
insertps xmm1, dword [0], 5	; out: 66 0f 3a 21 0c 25 00 00 00 00 05

movntdqa xmm1, [0]		; out: 66 0f 38 2a 0c 25 00 00 00 00
movntdqa xmm1, dqword [0]	; out: 66 0f 38 2a 0c 25 00 00 00 00

mpsadbw xmm1, xmm2, 5		; out: 66 0f 3a 42 ca 05
mpsadbw xmm1, [0], 5		; out: 66 0f 3a 42 0c 25 00 00 00 00 05

packusdw xmm1, xmm2		; out: 66 0f 38 2b ca
packusdw xmm1, [0]		; out: 66 0f 38 2b 0c 25 00 00 00 00

pblendvb xmm1, xmm2, xmm0	; out: 66 0f 38 10 ca
pblendvb xmm1, [0], xmm0	; out: 66 0f 38 10 0c 25 00 00 00 00
pblendvb xmm1, xmm2		; out: 66 0f 38 10 ca
pblendvb xmm1, [0]		; out: 66 0f 38 10 0c 25 00 00 00 00

pblendw xmm1, xmm2, 5		; out: 66 0f 3a 0e ca 05
pblendw xmm1, [0], 5		; out: 66 0f 3a 0e 0c 25 00 00 00 00 05

pcmpeqq xmm1, xmm2		; out: 66 0f 38 29 ca
pcmpeqq xmm1, [0]		; out: 66 0f 38 29 0c 25 00 00 00 00

pcmpestri xmm1, xmm2, 5		; out: 66 0f 3a 61 ca 05
pcmpestri xmm1, [0], 5		; out: 66 0f 3a 61 0c 25 00 00 00 00 05

pcmpestrm xmm1, xmm2, 5		; out: 66 0f 3a 60 ca 05
pcmpestrm xmm1, [0], 5		; out: 66 0f 3a 60 0c 25 00 00 00 00 05

pcmpistri xmm1, xmm2, 5		; out: 66 0f 3a 63 ca 05
pcmpistri xmm1, [0], 5		; out: 66 0f 3a 63 0c 25 00 00 00 00 05

pcmpistrm xmm1, xmm2, 5		; out: 66 0f 3a 62 ca 05
pcmpistrm xmm1, [0], 5		; out: 66 0f 3a 62 0c 25 00 00 00 00 05

pcmpgtq xmm1, xmm2		; out: 66 0f 38 37 ca
pcmpgtq xmm1, [0]		; out: 66 0f 38 37 0c 25 00 00 00 00

pextrb eax, xmm1, 5		; out: 66 0f 3a 14 c8 05
pextrb rax, xmm1, 5		; out: 66 48 0f 3a 14 c8 05
pextrb [0], xmm1, 5		; out: 66 0f 3a 14 0c 25 00 00 00 00 05
pextrb byte [0], xmm1, 5	; out: 66 0f 3a 14 0c 25 00 00 00 00 05

pextrd eax, xmm1, 5		; out: 66 0f 3a 16 c8 05
pextrd [0], xmm1, 5		; out: 66 0f 3a 16 0c 25 00 00 00 00 05
pextrd dword [0], xmm1, 5	; out: 66 0f 3a 16 0c 25 00 00 00 00 05
pextrq rax, xmm1, 5		; out: 66 48 0f 3a 16 c8 05
pextrq qword [0], xmm1, 5	; out: 66 48 0f 3a 16 0c 25 00 00 00 00 05

; To get the SSE4 versions we need to disable the SSE2 versions
cpu nosse2
pextrw eax, xmm1, 5		; out: 66 0f 3a 15 c8 05
pextrw [0], xmm1, 5		; out: 66 0f 3a 15 0c 25 00 00 00 00 05
pextrw word [0], xmm1, 5	; out: 66 0f 3a 15 0c 25 00 00 00 00 05
pextrw rax, xmm1, 5		; out: 66 48 0f 3a 15 c8 05

phminposuw xmm1, xmm2		; out: 66 0f 38 41 ca
phminposuw xmm1, [0]		; out: 66 0f 38 41 0c 25 00 00 00 00

pinsrb xmm1, eax, 5		; out: 66 0f 3a 20 c8 05
pinsrb xmm1, [0], 5		; out: 66 0f 3a 20 0c 25 00 00 00 00 05
pinsrb xmm1, byte [0], 5	; out: 66 0f 3a 20 0c 25 00 00 00 00 05

pinsrd xmm1, eax, 5		; out: 66 0f 3a 22 c8 05
pinsrd xmm1, [0], 5		; out: 66 0f 3a 22 0c 25 00 00 00 00 05
pinsrd xmm1, dword [0], 5	; out: 66 0f 3a 22 0c 25 00 00 00 00 05

pinsrq xmm1, rax, 5		; out: 66 48 0f 3a 22 c8 05
pinsrq xmm1, [0], 5		; out: 66 48 0f 3a 22 0c 25 00 00 00 00 05
pinsrq xmm1, qword [0], 5	; out: 66 48 0f 3a 22 0c 25 00 00 00 00 05

pmaxsb xmm1, xmm2		; out: 66 0f 38 3c ca
pmaxsb xmm1, [0]		; out: 66 0f 38 3c 0c 25 00 00 00 00

pmaxsd xmm1, xmm2		; out: 66 0f 38 3d ca
pmaxsd xmm1, [0]		; out: 66 0f 38 3d 0c 25 00 00 00 00

pmaxud xmm1, xmm2		; out: 66 0f 38 3f ca
pmaxud xmm1, [0]		; out: 66 0f 38 3f 0c 25 00 00 00 00

pmaxuw xmm1, xmm2		; out: 66 0f 38 3e ca
pmaxuw xmm1, [0]		; out: 66 0f 38 3e 0c 25 00 00 00 00

pminsb xmm1, xmm2		; out: 66 0f 38 38 ca
pminsb xmm1, [0]		; out: 66 0f 38 38 0c 25 00 00 00 00

pminsd xmm1, xmm2		; out: 66 0f 38 39 ca
pminsd xmm1, [0]		; out: 66 0f 38 39 0c 25 00 00 00 00

pminud xmm1, xmm2		; out: 66 0f 38 3b ca
pminud xmm1, [0]		; out: 66 0f 38 3b 0c 25 00 00 00 00

pminuw xmm1, xmm2		; out: 66 0f 38 3a ca
pminuw xmm1, [0]		; out: 66 0f 38 3a 0c 25 00 00 00 00

pmovsxbw xmm1, xmm2		; out: 66 0f 38 20 ca
pmovsxbw xmm1, [0]		; out: 66 0f 38 20 0c 25 00 00 00 00
pmovsxbw xmm1, qword [0]	; out: 66 0f 38 20 0c 25 00 00 00 00

pmovsxbd xmm1, xmm2		; out: 66 0f 38 21 ca
pmovsxbd xmm1, [0]		; out: 66 0f 38 21 0c 25 00 00 00 00
pmovsxbd xmm1, dword [0]	; out: 66 0f 38 21 0c 25 00 00 00 00

pmovsxbq xmm1, xmm2		; out: 66 0f 38 22 ca
pmovsxbq xmm1, [0]		; out: 66 0f 38 22 0c 25 00 00 00 00
pmovsxbq xmm1, word [0]		; out: 66 0f 38 22 0c 25 00 00 00 00

pmovsxwd xmm1, xmm2		; out: 66 0f 38 23 ca
pmovsxwd xmm1, [0]		; out: 66 0f 38 23 0c 25 00 00 00 00
pmovsxwd xmm1, qword [0]	; out: 66 0f 38 23 0c 25 00 00 00 00

pmovsxwq xmm1, xmm2		; out: 66 0f 38 24 ca
pmovsxwq xmm1, [0]		; out: 66 0f 38 24 0c 25 00 00 00 00
pmovsxwq xmm1, dword [0]	; out: 66 0f 38 24 0c 25 00 00 00 00

pmovsxdq xmm1, xmm2		; out: 66 0f 38 25 ca
pmovsxdq xmm1, [0]		; out: 66 0f 38 25 0c 25 00 00 00 00
pmovsxdq xmm1, qword [0]	; out: 66 0f 38 25 0c 25 00 00 00 00

pmovzxbw xmm1, xmm2		; out: 66 0f 38 30 ca
pmovzxbw xmm1, [0]		; out: 66 0f 38 30 0c 25 00 00 00 00
pmovzxbw xmm1, qword [0]	; out: 66 0f 38 30 0c 25 00 00 00 00

pmovzxbd xmm1, xmm2		; out: 66 0f 38 31 ca
pmovzxbd xmm1, [0]		; out: 66 0f 38 31 0c 25 00 00 00 00
pmovzxbd xmm1, dword [0]	; out: 66 0f 38 31 0c 25 00 00 00 00

pmovzxbq xmm1, xmm2		; out: 66 0f 38 32 ca
pmovzxbq xmm1, [0]		; out: 66 0f 38 32 0c 25 00 00 00 00
pmovzxbq xmm1, word [0]		; out: 66 0f 38 32 0c 25 00 00 00 00

pmovzxwd xmm1, xmm2		; out: 66 0f 38 33 ca
pmovzxwd xmm1, [0]		; out: 66 0f 38 33 0c 25 00 00 00 00
pmovzxwd xmm1, qword [0]	; out: 66 0f 38 33 0c 25 00 00 00 00

pmovzxwq xmm1, xmm2		; out: 66 0f 38 34 ca
pmovzxwq xmm1, [0]		; out: 66 0f 38 34 0c 25 00 00 00 00
pmovzxwq xmm1, dword [0]	; out: 66 0f 38 34 0c 25 00 00 00 00

pmovzxdq xmm1, xmm2		; out: 66 0f 38 35 ca
pmovzxdq xmm1, [0]		; out: 66 0f 38 35 0c 25 00 00 00 00
pmovzxdq xmm1, qword [0]	; out: 66 0f 38 35 0c 25 00 00 00 00

pmuldq xmm1, xmm2		; out: 66 0f 38 28 ca
pmuldq xmm1, [0]		; out: 66 0f 38 28 0c 25 00 00 00 00

pmulld xmm1, xmm2		; out: 66 0f 38 40 ca
pmulld xmm1, [0]		; out: 66 0f 38 40 0c 25 00 00 00 00

popcnt ax, bx			; out: 66 f3 0f b8 c3
popcnt ax, [0]			; out: 66 f3 0f b8 04 25 00 00 00 00
popcnt ebx, ecx			; out: f3 0f b8 d9
popcnt ebx, [0]			; out: f3 0f b8 1c 25 00 00 00 00
popcnt rcx, rdx			; out: f3 48 0f b8 ca
popcnt rcx, [0]			; out: f3 48 0f b8 0c 25 00 00 00 00

ptest xmm1, xmm2		; out: 66 0f 38 17 ca
ptest xmm1, [0]			; out: 66 0f 38 17 0c 25 00 00 00 00

roundpd xmm1, xmm2, 5		; out: 66 0f 3a 09 ca 05
roundpd xmm1, [0], 5		; out: 66 0f 3a 09 0c 25 00 00 00 00 05

roundps xmm1, xmm2, 5		; out: 66 0f 3a 08 ca 05
roundps xmm1, [0], 5		; out: 66 0f 3a 08 0c 25 00 00 00 00 05

roundsd xmm1, xmm2, 5		; out: 66 0f 3a 0b ca 05
roundsd xmm1, [0], 5		; out: 66 0f 3a 0b 0c 25 00 00 00 00 05

roundss xmm1, xmm2, 5		; out: 66 0f 3a 0a ca 05
roundss xmm1, [0], 5		; out: 66 0f 3a 0a 0c 25 00 00 00 00 05
