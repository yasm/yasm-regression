; [text] [args --dump-preproc-tokens]
%macro DECLARE_REG_TMP_SIZE 0-*
    %rep %0
        a
        %rotate 1
    %endrep
%endmacro

DECLARE_REG_TMP_SIZE 0,1
