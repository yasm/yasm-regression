[bits 32]
xor eax, [ebp+4*ecx   ]		; out: 33 44 8d 00
xor ebx, [ebp+4*ecx+ 4]		; out: 33 5c 8d 04
xor esi, [ebp+4*ecx+ 8]		; out: 33 74 8d 08
xor edi, [ebp+4*ecx+12]		; out: 33 7c 8d 0c
