; [text] [args --dump-preproc-tokens]
%macro mac1 3
%define foo %1
foo
%rotate 1
foo
%rotate 1
foo
%endmacro

mac1 1,2,3
