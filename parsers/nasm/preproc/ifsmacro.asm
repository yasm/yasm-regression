; [text] [args --dump-preproc-tokens]
%define x 1
%if x
OK
%endif
%define x 0
%if x
FAIL
%else
OK
%endif
