; [text] [args --dump-preproc-tokens]
%macro B_STRUC 1
%push foo
%$strucname
%define %$strucname %1
%%top_%$strucname
%rep 1
%%top_%$strucname
%endrep
%%top_%$strucname
%pop
%endmacro

B_STRUC timeval
..@1.strucname
