[bits 16]
pushf 	; out: 9c
pushfw 	; out: 9c
pushfd 	; out: 66 9c
;pushfq	; [warning: `pushfq' is an instruction in 64-bit mode]
popf 	; out: 9d
popfw 	; out: 9d
popfd 	; out: 66 9d
;popfq	; [warning: `popfq' is an instruction in 64-bit mode]

[bits 32]
pushf 	; out: 9c
pushfw 	; out: 66 9c
pushfd 	; out: 9c
;pushfq	; [warning: `pushfq' is an instruction in 64-bit mode]
popf 	; out: 9d
popfw 	; out: 66 9d
popfd 	; out: 9d
;popfq	; [warning: `popfq' is an instruction in 64-bit mode]

[bits 64]
pushf 	; out: 9c
pushfw 	; out: 66 9c
;pushfd	; [error: `pushfd' invalid in 64-bit mode]
pushfq 	; out: 9c
popf 	; out: 9d
popfw 	; out: 66 9d
;popfd	; [error: `popfd' invalid in 64-bit mode]
popfq 	; out: 9d

