[bits 16]
repne lodsw		; out: f2 ad
repnz lodsd		; out: 66 f2 ad
rep stosb		; out: f3 aa
repe cmpsb		; out: f3 a6
repz movsb		; out: f3 a4
