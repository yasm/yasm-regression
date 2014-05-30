; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%define FOO "a b c"
%warning FOO
%warning "what's this about"
%error test message
%fatal blah
