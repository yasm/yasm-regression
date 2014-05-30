; [text] [args --dump-preproc-tokens]

; this testcase checks that pasting and subsequent expansion occurs within
; an xdefine instead of upon its later expansion

%define m0 mm0
%define nmm0 0

%macro FOO 1
    %xdefine %%n1 n %+ %1
    %defstr %%n2 n %+ %1
    %xdefine tmp m %+ %%n1
%%n1 %%n2 tmp
%endmacro

FOO m0 ; expected: 0 '0' mm0

; correct handling:
; %%n1 is defined to n %+ mm0 -> nmm0 -> 0
; tmp is defined to m %+ 0 -> m0 -> mm0
; expansion of %%n1 -> 0, expansion of tmp -> mm0
; so correct result is "0 '0' mm0"

; incorrect expansion timing can result in:
; %%n1 is defined to n %+ mm0 -> nmm0 (or just "n %+ mm0")
; tmp is defined to m %+ 0 -> mnmm0
; but when printing %%n1 it's expanded to nmm0 -> 0
; so an incorrect result would be "0 'n %+ mm0' mnmm0"
