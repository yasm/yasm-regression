; [text] [args --dump-preproc-tokens]
%define foo bar
%macro foo 0
baz
%endmacro

a %+ foo	; abar
a %+ foo 1	; abar 1
a %+ foo(1)	; abar(1)
a %+ bar	; abar
a %+ bar 1	; abar 1
a %+ bar(1)	; abar(1)
a %+ foo %+ foo ; abarbar
foo %+ foo      ; barbar

%undef foo

a %+ foo        ; afoo !!! no mmacro expansion
a %+ foo 1      ; afoo 1
a %+ foo(1)     ; afoo(1)
a %+ bar        ; abar
a %+ bar 1      ; abar 1
a %+ bar(1)     ; abar(1)
a %+ foo %+ foo ; afoofoo !!! no mmacro expansion
foo %+ foo      ; foofoo !!! no mmacro expansion

