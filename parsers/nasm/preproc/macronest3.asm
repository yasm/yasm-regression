; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%macro RUN_AVX_INSTR 6-7+
RUN_AVX_INSTR_begin:
    %if sizeof%5==32
        v%1 %5, %6, %7
    %else
        %if sizeof%5==8
            %define %%regmov movq
        %elif %2
            %define %%regmov movaps
        %else
            %define %%regmov movdqa
        %endif

        %if %4>=3+%3
            %ifnidn %5, %6
                %if avx_enabled && sizeof%5==16
                    v%1 %5, %6, %7
                %else
                    %%regmov %5, %6
                    %1 %5, %7
                %endif
            %else
                %1 %5, %7
            %endif
        %elif %3
            %1 %5, %6, %7
        %else
            %1 %5, %6
        %endif
    %endif
RUN_AVX_INSTR_end:
%endmacro

%macro AVX_INSTR 3
    %macro %1 2-8 fnord, fnord, fnord, %1, %2, %3
AVX_INSTR_begin:
            RUN_AVX_INSTR %6, %7, %8, 5, %1, %2, %3, %4, %5
AVX_INSTR_end:
    %endmacro
%endmacro

AVX_INSTR pxor, 0, 0

%macro SSD 2
SSDbegin:
    pxor    m7, m7
SSDend:
%endmacro

SSD 4, 4
