; [text] [args --dump-preproc-tokens]
%define baz 5
%xdefine foo bar+baz
%define bar 5
foo

%define bar2 5
%xdefine foo2 bar2+baz2
%define baz2 5
foo2
