; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%macro repeat 0
%push repeat
%$begin:
%endmacro

%macro until 1
j%-1 %$begin
%pop
%endmacro

repeat
add cx, 3
until e

%define X %$bar

X

%push nest
%$foo:
%define %$bar 1
repeat
jmp %$$foo
%$bar
%$$bar
until e

X

%$
%$0
%$$

%pop
%$
