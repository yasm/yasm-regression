; [text] [args --dump-preproc-tokens]
%define a %%foo
a:

%macro b 0
a:
%%foo:
jmp %%foo
%endmacro

b
b
b

