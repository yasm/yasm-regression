[bits 64]
adcx eax, ebx		; out: 66 0f 38 f6 c3
adcx ebx, [0]		; out: 66 0f 38 f6 1c 25 00 00 00 00
adcx rax, rbx		; out: 66 48 0f 38 f6 c3
adcx rbx, [0]		; out: 66 48 0f 38 f6 1c 25 00 00 00 00

adox eax, ebx		; out: f3 0f 38 f6 c3
adox ebx, [0]		; out: f3 0f 38 f6 1c 25 00 00 00 00
adox rax, rbx		; out: f3 48 0f 38 f6 c3
adox rbx, [0]		; out: f3 48 0f 38 f6 1c 25 00 00 00 00
