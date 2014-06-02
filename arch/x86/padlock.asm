[bits 16]
;xstore-rng
xstorerng 	; out: 0f a7 c0
xstore 		; out: 0f a7 c0
;xcrypt-ecb
xcryptecb 	; out: f3 0f a7 c8
;xcrypt-cbc
xcryptcbc 	; out: f3 0f a7 d0
;xcrypt-ctr
xcryptctr 	; out: f3 0f a7 d8
;xcrypt-cfb
xcryptcfb 	; out: f3 0f a7 e0
;xcrypt-ofb
xcryptofb 	; out: f3 0f a7 e8
montmul 	; out: f3 0f a6 c0
xsha1 		; out: f3 0f a6 c8
xsha256 	; out: f3 0f a6 d0

