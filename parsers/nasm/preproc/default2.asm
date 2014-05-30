; [text] [args --dump-preproc-tokens]
%macro foobar 1-3 eax,[ebx+2]
%1 %2, %3
%endmacro

foobar mov
foobar mov,ebx

