; [nextgen]
equ: db 5	; out: 05
dw equ		; out: 00 00
dw: db 5	; out: 05
dw dw		; out: 03 00
mov: db 5	; out: 05
dw mov		; out: 06 00
DW: db 5	; out: 05
DW DW		; out: 09 00
dw $DW		; out: 09 00
