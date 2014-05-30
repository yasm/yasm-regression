; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%pop
%push foo
%pop
%push foo
%repl bar
%pop bar
%push foo
%pop bar
%push
%pop
%push
%pop bar
