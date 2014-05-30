; [text] [args --dump-preproc-tokens]
%macro INIT_XMM 0-1+
    %assign %%i 0
    %%i
    %assign %%i %%i+1
    %%i
%endmacro

INIT_XMM
