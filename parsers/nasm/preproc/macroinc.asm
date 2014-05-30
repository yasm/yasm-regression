; [text] [args --dump-preproc-tokens -I../../regression/parsers/nasm/preproc]
%macro foo 1
%include 'incinner.inc'
%endmacro

foo 5
foo 6
