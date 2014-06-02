; Ticket #58
; Also tests that this isn't seen as a circular reference.
[bits 64]
a:
lea rbp,[rsi+rbp*1+(b-a)]	; out: 48 8d 6c 2e 05
b:
