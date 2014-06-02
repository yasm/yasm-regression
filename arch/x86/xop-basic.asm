[bits 64]
vfrczpd ymm9, ymm10			; out: 8F 49 7C 81 312
vfrczpd ymm9, [0]			; out: 8F 69 7C 81 0C 25 00 00 00 00
vfrczpd ymm9, yword [0]			; out: 8F 69 7C 81 0C 25 00 00 00 00
vfrczpd ymm9, [r8*4]			; out: 8F 29 7C 81 0C 85 00 00 00 00
vfrczpd ymm9, [r8*4+r9]			; out: 8F 09 7C 81 0C 81

vpcmov ymm10, ymm11, ymm12, ymm13	; out: 8F 48 24 A2 324 D0
