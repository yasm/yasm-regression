[bits 64]
l1:
inc dword [l2]		; out: ff 04 25 04 00 00 00
l2 equ 4-(l1-$$)
