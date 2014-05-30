; [text] [args --dump-preproc-tokens]
%define foo bits
[foo 32]
%macro bar 1
BITS %0
%endmacro
[bar 32]
%define baz(a) bits a
[baz(32)]

