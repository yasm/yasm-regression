[bits 64]
rdtscp			; out: 0f 01 f9
clgi			; out: 0f 01 dd
invlpga			; out: 0f 01 df
invlpga [rax], ecx	; out: 0f 01 df
invlpga [eax], ecx	; out: 67 0f 01 df
;invlpga [ax], ecx	; invalid
skinit			; out: 0f 01 de
;skinit [rax]		; invalid
skinit [eax]		; out: 0f 01 de
stgi			; out: 0f 01 dc
vmload			; out: 0f 01 da
vmload [rax]		; out: 0f 01 da
vmload [eax]		; out: 67 0f 01 da
vmmcall			; out: 0f 01 d9
vmrun			; out: 0f 01 d8
vmrun [rax]		; out: 0f 01 d8
vmrun [eax]		; out: 67 0f 01 d8
vmsave			; out: 0f 01 db
vmsave [rax]		; out: 0f 01 db
vmsave [eax]		; out: 67 0f 01 db

[bits 32]
invlpga			; out: 0f 01 df
invlpga [eax], ecx	; out: 0f 01 df
invlpga [ax], ecx	; out: 67 0f 01 df
skinit			; out: 0f 01 de
skinit [eax]		; out: 0f 01 de
;skinit [ax]		; invalid
vmload			; out: 0f 01 da
vmload [eax]		; out: 0f 01 da
vmload [ax]		; out: 67 0f 01 da
vmrun			; out: 0f 01 d8
vmrun [eax]		; out: 0f 01 d8
vmrun [ax]		; out: 67 0f 01 d8
vmsave			; out: 0f 01 db
vmsave [eax]		; out: 0f 01 db
vmsave [ax]		; out: 67 0f 01 db
