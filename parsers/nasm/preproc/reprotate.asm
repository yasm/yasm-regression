; [text] [args --dump-preproc-tokens]
%macro FOO 2
    %rep 2
	%1x%1
        %rotate 1
    %endrep
%endmacro

FOO 1,2

