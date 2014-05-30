; [text] [args --dump-preproc-tokens]
; 6 X's
%rep 2
%rep 3
X
%endrep
%endrep

; 2 Y's
%rep 2
%rep 3
Y
%exitrep
%endrep
%endrep

%rep 0
Z
%endrep

; 1x 1s, 2x 2s, 3x 3s
%assign i 0
%rep 4
%rep i
i
%endrep
%assign i i+1
%endrep

; 1 XX
%rep 2
XX
%exitrep
%endrep
