; [text] [args --dump-preproc-tokens]
%define foo 1
%define Foo 2
%idefine FOO 3
foo
Foo
FoO

%undef foo
%define foo(a) a 1
%define Foo(a) a 2
%idefine FOO(a) a 3
foo(a)
Foo(a)
FoO(a)

%undef foo
%define foo(a) a 1
%define Foo(a) a 2
%idefine FOO(a,b) a b 3
foo(a)
Foo(a)
FoO(a)
FoO(a,b)
