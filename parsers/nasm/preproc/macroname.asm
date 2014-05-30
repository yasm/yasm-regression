; [text] [args --dump-preproc-tokens]
%idefine foo %? %??
Foo
%?
%??
%idefine foo %?bar
Foo
%define bar BAR
FOO
bar
%idefine foo %?"wow"
Foo
%idefine foo %?5
Foo
%idefine foo $%?
Foo
%idefine foo $%?5
Foo
%idefine foo %?%??
Foo
