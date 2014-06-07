[bits 64]
foo:

[default abs]
mov rbx, [foo]			; out: 48 8b 1c 25 00 00 00 00
mov rbx, [es:foo]		; out: 26 48 8b 1c 25 00 00 00 00
mov rbx, [fs:foo]		; out: 64 48 8b 1c 25 00 00 00 00
mov rbx, [gs:foo]		; out: 65 48 8b 1c 25 00 00 00 00
mov rbx, [rel es:foo]		; out: 26 48 8b 1d d5 ff ff ff
mov rbx, [rel fs:foo]		; out: 64 48 8b 1d cd ff ff ff
mov rbx, [rel gs:foo]		; out: 65 48 8b 1d c5 ff ff ff
mov rbx, [abs es:foo]		; out: 26 48 8b 1c 25 00 00 00 00
mov rbx, [abs fs:foo]		; out: 64 48 8b 1c 25 00 00 00 00
mov rbx, [abs gs:foo]		; out: 65 48 8b 1c 25 00 00 00 00
;mov rbx, [es:rel foo]
;mov rbx, [fs:rel foo]
;mov rbx, [es:abs foo]
;mov rbx, [fs:abs foo]

[default rel]
mov rbx, [foo]			; out: 48 8b 1d a3 ff ff ff
mov rbx, [es:foo]		; out: 26 48 8b 1d 9b ff ff ff
mov rbx, [fs:foo]		; out: 64 48 8b 1c 25 00 00 00 00
mov rbx, [gs:foo]		; out: 65 48 8b 1c 25 00 00 00 00
mov rbx, [rel es:foo]		; out: 26 48 8b 1d 81 ff ff ff
mov rbx, [rel fs:foo]		; out: 64 48 8b 1d 79 ff ff ff
mov rbx, [rel gs:foo]		; out: 65 48 8b 1d 71 ff ff ff
mov rbx, [abs es:foo]		; out: 26 48 8b 1c 25 00 00 00 00
mov rbx, [abs fs:foo]		; out: 64 48 8b 1c 25 00 00 00 00
mov rbx, [abs gs:foo]		; out: 65 48 8b 1c 25 00 00 00 00
;mov rbx, [es:rel foo]
;mov rbx, [fs:rel foo]
;mov rbx, [es:abs foo]
;mov rbx, [fs:abs foo]

