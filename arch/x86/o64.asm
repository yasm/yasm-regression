[bits 64]
fxsave [0]		; out: 0f ae 04 25 00 00 00 00
o64 fxsave [0]		; out: 48 0f ae 04 25 00 00 00 00
sysret			; out: 0f 07
o64 sysret		; out: 48 0f 07
