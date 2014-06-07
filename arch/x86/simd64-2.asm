[bits 64]

cvtsi2sd xmm0,eax		; out: f2 0f 2a c0
cvtsi2sd xmm0,rax		; out: f2 48 0f 2a c0
cvtsd2si rax,xmm0		; out: f2 48 0f 2d c0
cvtsi2ss xmm0,rax		; out: f3 48 0f 2a c0
cvtsd2si rax,xmm0		; out: f2 48 0f 2d c0
cvtss2si rax,xmm0		; out: f3 48 0f 2d c0
cvttsd2si rax,xmm0		; out: f2 48 0f 2c c0
cvttss2si rax,xmm0		; out: f3 48 0f 2c c0
