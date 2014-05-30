; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%rep 2
Y
%exitrep
Z
%endrep

%assign i 0
%rep 5
A
%if i == 2
%exitrep
%endif
B
%assign i i+1
%endrep

%exitrep
