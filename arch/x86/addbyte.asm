; AX forms
add ax,5			; out: 83 c0 05
add ax,strict byte 5		; out: 83 c0 05
add ax,strict word 5		; out: 05 05 00
add ax,-128			; out: 83 c0 80
add ax,strict byte -128		; out: 83 c0 80
add ax,strict word -128		; out: 05 80 ff
add ax,0x7f			; out: 83 c0 7f
add ax,strict byte 0x7f		; out: 83 c0 7f
add ax,strict word 0x7f		; out: 05 7f 00
add ax,0x80			; out: 05 80 00
add ax,strict byte 0x80		; out: 83 c0 80
add ax,strict word 0x80		; out: 05 80 00
add ax,0x100			; out: 05 00 01
add ax,strict byte 0x100	; out: 83 c0 00
add ax,strict word 0x100	; out: 05 00 01

; non-AX forms
add bx,5			; out: 83 c3 05
add bx,strict byte 5		; out: 83 c3 05
add bx,strict word 5		; out: 81 c3 05 00
add bx,-128			; out: 83 c3 80
add bx,strict byte -128		; out: 83 c3 80
add bx,strict word -128		; out: 81 c3 80 ff
add bx,0x7f			; out: 83 c3 7f
add bx,strict byte 0x7f		; out: 83 c3 7f
add bx,strict word 0x7f		; out: 81 c3 7f 00
add bx,0x80			; out: 81 c3 80 00
add bx,strict byte 0x80		; out: 83 c3 80
add bx,strict word 0x80		; out: 81 c3 80 00
add bx,0x100			; out: 81 c3 00 01
add bx,strict byte 0x100	; out: 83 c3 00
add bx,strict word 0x100	; out: 81 c3 00 01

