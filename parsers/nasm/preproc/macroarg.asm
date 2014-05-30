; [text] [args --dump-preproc-tokens]
%macro foo 3
%0=%1=%2
%endmacro
%macro bar 3
%1-%0x1-%2.1-1.%2-%3a%1000b
%1\
0
%\
10
%500000
%1%2%3
%endmacro
%1
%1.2
%.2
%0.2
%1\
0
%\
10
%500000

foo ,B,C
foo A, B, C
foo A A, B B, C C
bar A, 0, C
bar A A, B 0, C C
bar A,,C
