; [text] [args --dump-preproc-tokens]
%macro foo 1-3 
abc %1
%endmacro
foo 123
%unmacro foo 1-3
foo 123
%unmacro foo 1-3

%macro bar 1-3 
abc %1
%endmacro 
bar 123
%unmacro bar 1
bar 123
%unimacro bar 1-3
bar 123

%imacro baz 1-3
abc %1
%endmacro
baz 123
%unmacro baz 1-3
baz 123
%unimacro baz 1-3
baz 123
