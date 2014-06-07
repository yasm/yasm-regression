[bits 16]
stosb		; out: aa
stosw		; out: ab
stosd		; out: 66 ab
[bits 32]
stosb		; out: aa
stosw		; out: 66 ab
stosd		; out: ab
[bits 64]
stosb		; out: aa
stosw		; out: 66 ab
stosd		; out: ab
stosq		; out: 48 ab
