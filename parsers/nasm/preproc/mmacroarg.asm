; [text] [args --dump-preproc-tokens]
%macro foo 2
a
%1
%2
b
%endmacro

%macro bar 2
c
%1
%2
d
%endmacro

%define baz 3

foo bar, baz
bar baz, foo

%macro mac 2
c
%1 e, f
%2 g, h
d
%endmacro

mac foo, bar
