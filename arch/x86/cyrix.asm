[bits 32]
        svdc    tword [2*eax+esi+12345678h],cs 	; out: 0f 78 8c 46 78 56 34 12
        svdc    tword [2*eax+esi+12345678h],ds 	; out: 0f 78 9c 46 78 56 34 12
        svdc    [2*eax+esi+12345678h],es 	; out: 0f 78 84 46 78 56 34 12

        rsdc    cs,tword [2*eax+esi+12345678h] 	; out: 0f 79 8c 46 78 56 34 12
        rsdc    ds,tword [2*eax+esi+12345678h] 	; out: 0f 79 9c 46 78 56 34 12
        rsdc    es,[2*eax+esi+12345678h] 	; out: 0f 79 84 46 78 56 34 12

        wrshr   eax 				; out: 0f 37 c0
        wrshr   dword [4*edx+esi+12345678h] 	; out: 0f 37 84 96 78 56 34 12
        wrshr   [4*edx+esi+12345678h] 		; out: 0f 37 84 96 78 56 34 12

        rdshr   eax 				; out: 0f 36 c0
        rdshr   dword [4*edx+esi+12345678h] 	; out: 0f 36 84 96 78 56 34 12
        rdshr   [4*edx+esi+12345678h] 		; out: 0f 36 84 96 78 56 34 12

