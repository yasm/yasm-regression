[bits 32]
mov ax,[eax+ebx+ecx-eax]		; out: 66 8b 04 0b
mov ax,[eax+ecx+ebx-eax]		; out: 66 8b 04 19
lea edi,[edi*8+eax+label]		; out: 8d bc f8 37 00 00 00
lea edi,[eax+edi*8+label]		; out: 8d bc f8 37 00 00 00
mov eax,[eax*2]				; out: 8b 04 00
mov eax,[nosplit eax*2]			; out: 8b 04 45 00 00 00 00
mov eax,[esi+ebp]			; out: 8b 04 2e
mov eax,[ebp+esi]			; out: 8b 44 35 00
mov eax,[esi*1+ebp]			; out: 8b 44 35 00
mov eax,[ebp*1+esi]			; out: 8b 04 2e
mov eax,[byte eax]			; out: 8b 40 00
mov eax,[dword eax]			; out: 8b 80 00 00 00 00
label:
;dd 5
;label2:
;mov ax,[eax+ebx*(label2-label)]	; not supported
mov ax,[eax*2+ebx*2-ebx]		; out: 66 8b 04 43
