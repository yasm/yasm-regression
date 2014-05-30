; [text] [args --dump-preproc-tokens]
%macro foo 1
%macro inner 2
3,4
%endm
%endmacro

foo 1
inner 1,2
