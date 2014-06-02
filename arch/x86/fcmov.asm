[bits 16]
fcmovb st0, st1 	; out: da c1
fcmovbe st0, st1 	; out: da d1
fcmove st0, st1 	; out: da c9
fcmovnb st0, st1 	; out: db c1
fcmovnbe st0, st1 	; out: db d1
fcmovne st0, st1 	; out: db c9
fcmovnu st0, st1 	; out: db d9
fcmovu st0, st1		; out: da d9

