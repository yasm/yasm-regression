[BITS 32]
idiv al				; out: f6 f8
idiv ax				; out: 66 f7 f8
idiv eax			; out: f7 f8
idiv byte [word 0]		; out: 67 f6 3e 00 00
idiv byte [dword 0xFFFFFFFF]	; out: f6 3d ff ff ff ff
idiv byte [0]			; out: f6 3d 00 00 00 00
a16 idiv byte [word 0]		; out: 67 f6 3e 00 00
;a16 idiv byte [dword 0]	; error
a16 idiv byte [0]		; out: 67 f6 3e 00 00
a32 idiv byte [0]		; out: f6 3d 00 00 00 00
[BITS 16]
nop				; out: 90
idiv al				; out: f6 f8
idiv ax				; out: f7 f8
idiv eax			; out: 66 f7 f8
nop				; out: 90
idiv byte [word 0]		; out: f6 3e 00 00
idiv byte [dword 0xFFFFFFFF]	; out: 67 f6 3d ff ff ff ff
idiv byte [0]			; out: f6 3e 00 00
idiv dword [es:dword 5]		; out: 26 67 66 f7 3d 05 00 00 00
idiv dword [byte es:5]		; out: 26 66 f7 3e 05 00
idiv word [es:dword edi+5]	; out: 26 67 f7 bf 05 00 00 00
;idiv word [es:edi+dword 5]	; error
nop				; out: 90

