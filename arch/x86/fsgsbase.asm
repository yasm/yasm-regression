[bits 64]
rdfsbase ebx	; out: f3 0f ae c3
rdfsbase rbx	; out: f3 48 0f ae c3
rdgsbase ecx	; out: f3 0f ae c9
rdgsbase rcx	; out: f3 48 0f ae c9

wrfsbase ebx	; out: f3 0f ae d3
wrfsbase rbx	; out: f3 48 0f ae d3
wrgsbase ecx	; out: f3 0f ae d9
wrgsbase rcx	; out: f3 48 0f ae d9
