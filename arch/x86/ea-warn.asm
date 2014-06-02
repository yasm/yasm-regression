[bits 32]
add [byte  ebp*8+06h],ecx	; out: 01 0c ed 06 00 00 00 [warning]
add [dword ebp*8+06h],ecx	; out: 01 0c ed 06 00 00 00
add ecx,[byte  ebp*8+06h]	; out: 03 0c ed 06 00 00 00 [warning]
add ecx,[dword ebp*8+06h]	; out: 03 0c ed 06 00 00 00
add ecx,[ebp*8+06h]		; out: 03 0c ed 06 00 00 00
add ecx,[byte ebx*8+06h]	; out: 03 0c dd 06 00 00 00 [warning]
add ecx,[dword ebx*8+06h]	; out: 03 0c dd 06 00 00 00
add ecx,[ebx*8+06h]		; out: 03 0c dd 06 00 00 00
