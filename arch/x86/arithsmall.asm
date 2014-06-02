[bits 32]
and eax, 3584 			; out: 25 00 0e 00 00
and eax, 35 			; out: 83 e0 23
and eax, strict dword 3584 	; out: 25 00 0e 00 00
and eax, strict dword 35 	; out: 25 23 00 00 00
and eax, strict byte 3584 	; out: 83 e0 00
and eax, strict byte 35 	; out: 83 e0 23
and ebx, 3584 			; out: 81 e3 00 0e 00 00
and ebx, 35 			; out: 83 e3 23
and ebx, strict dword 3584 	; out: 81 e3 00 0e 00 00
and ebx, strict dword 35 	; out: 81 e3 23 00 00 00
and ebx, strict byte 3584 	; out: 83 e3 00
and ebx, strict byte 35		; out: 83 e3 23
