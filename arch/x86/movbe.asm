[bits 64]
movbe cx, [5] 		; out: 66 0f 38 f0 0c 25 05 00 00 00
movbe cx, word [5] 	; out: 66 0f 38 f0 0c 25 05 00 00 00
movbe ecx, [5] 		; out: 0f 38 f0 0c 25 05 00 00 00
movbe ecx, dword [5] 	; out: 0f 38 f0 0c 25 05 00 00 00
movbe rcx, [5] 		; out: 48 0f 38 f0 0c 25 05 00 00 00
movbe rcx, qword [5] 	; out: 48 0f 38 f0 0c 25 05 00 00 00
movbe r9, [5] 		; out: 4c 0f 38 f0 0c 25 05 00 00 00
movbe r9, qword [5] 	; out: 4c 0f 38 f0 0c 25 05 00 00 00
movbe [5], bx 		; out: 66 0f 38 f1 1c 25 05 00 00 00
movbe word [5], bx 	; out: 66 0f 38 f1 1c 25 05 00 00 00
movbe [5], ebx 		; out: 0f 38 f1 1c 25 05 00 00 00
movbe dword [5], ebx 	; out: 0f 38 f1 1c 25 05 00 00 00
movbe [5], r10d 	; out: 44 0f 38 f1 14 25 05 00 00 00
movbe dword [5], r10d 	; out: 44 0f 38 f1 14 25 05 00 00 00
movbe [5], rbx 		; out: 48 0f 38 f1 1c 25 05 00 00 00
movbe qword [5], rbx 	; out: 48 0f 38 f1 1c 25 05 00 00 00
movbe [5], r10 		; out: 4c 0f 38 f1 14 25 05 00 00 00
movbe qword [5], r10 	; out: 4c 0f 38 f1 14 25 05 00 00 00

