; [text] [args --dump-preproc-tokens]
%define x foo
%{%x}
%{%{x}}
%macro FOO 1
%{1}1
%{%x}
%{%{x}}
%endmacro
FOO z
