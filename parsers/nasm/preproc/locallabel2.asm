; [text] [args --dump-preproc-tokens]
%define a b

%macro x 0
%%a:
%%1:
%%-:
%%.:
%%$:
%%$$:
%%@:
%endmacro

x
