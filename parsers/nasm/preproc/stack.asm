; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%push mycontext
%stacksize large
%arg i:word, j_ptr:word
i
j_ptr
%pop

%push mycontext
%stacksize small
%assign %$localsize 0
%$localsize
%local old_ax:word, old_dx:word 
%$localsize
old_ax
old_dx
%pop

%local foo:word

%push mycontext
%local foo:word
%pop
