; [text] [args --dump-preproc-tokens]
%macro cglobal 1-2+
%if %0 == 1
    cglobal_internal %1 %+ SUFFIX
%endif
%endmacro
%macro cglobal_internal 1-2+
    %1:
    RESET_MM_PERMUTATION
%endmacro

%macro INIT_CPUFLAGS 0-2
    cpuflags %0
    %if %0 >= 1
        %xdefine cpuname %1
        %xdefine SUFFIX _ %+ cpuname
    %else
        %xdefine SUFFIX
        %undef cpuname
    %endif
%endmacro

%macro INIT_MMX 0-1+
    mmx %0
    %define RESET_MM_PERMUTATION INIT_MMX %1
    %assign %%i 0
    %rep 2
    rep %%i
    %assign %%i %%i+1
    %endrep
    db %%i
    INIT_CPUFLAGS %1
%endmacro

INIT_MMX
cglobal hadamard_load
