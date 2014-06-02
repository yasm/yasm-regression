[bits 64]
call far dword [0]		; out: ff 1c 25 00 00 00 00
call far qword [0]		; out: 48 ff 1c 25 00 00 00 00
call far [0]			; out: ff 1c 25 00 00 00 00
jmp far dword [0]		; out: ff 2c 25 00 00 00 00
jmp far qword [0]		; out: 48 ff 2c 25 00 00 00 00
jmp far [0]			; out: ff 2c 25 00 00 00 00
