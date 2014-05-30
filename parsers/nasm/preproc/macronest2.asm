; [text] [args --dump-preproc-tokens]
%macro OUTER 1
%macro %1 1
a:
%1
b:
%endmacro
%endmacro

OUTER FOO
FOO mov

