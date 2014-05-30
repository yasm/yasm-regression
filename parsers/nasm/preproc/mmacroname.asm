; [text] [args --dump-preproc-tokens]
%imacro foo 0
%? %??
%endmacro
Foo

%imacro foo 0
%?bar
%endmacro
Foo

%macro bar 0
BAR
%endmacro
FOO
bar

%define bar BAR
FOO
bar

%imacro foo 0
%?"wow"
%endmacro
Foo

%imacro foo 0
%?5
%endmacro
Foo

%imacro foo 0
$%?
%endmacro
Foo

%imacro foo 0
$%?5
%endmacro
Foo

%imacro foo 0
%?%??
%endmacro
Foo
