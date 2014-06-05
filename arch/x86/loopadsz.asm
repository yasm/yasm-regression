[bits 16]
foo: a32 loop foo	; out: 67 e2 fd
bar: loop bar, ecx	; out: 67 e2 fd

[bits 32]
baz: a16 loop baz	; out: 67 e2 fd
qux: loop qux, cx	; out: 67 e2 fd
