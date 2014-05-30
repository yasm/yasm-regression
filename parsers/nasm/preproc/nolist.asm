; [text] [args --dump-preproc-tokens]
%imacro FOO 1-2+.nolist nop
%1 - %2
%endmacro
FOO 16
FOO 16,db
%imacro FOO2 1-2.nolist nop
%1 - %2
%endmacro
FOO2 16
FOO2 16,db
%imacro FOO3 1-*.nolist nop
%1 - %2
%endmacro
FOO3 16
FOO3 16,db
%imacro FOO4 1.nolist
%1 - %2
%endmacro
FOO4 16
