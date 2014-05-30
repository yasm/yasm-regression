; [text] [fail] [args --dump-preproc-tokens --keep-output-file]
%{  1
%{  xx }		; warning: no directive 'xx'
%{  xx zz}		; warning: no directive 'xx'
%{%{
%{%}xx			; warning: no directive '%'
%{}xx			; warning: no directive ''
%{{}xx			; warning: no directive '{'
%{%xx}			; warning: not in macro call, unrecognized 'xx'
%{%{x}}			; warning: not in macro call, unrecognized 'x'
%macro FOO 1
%{1}1			; z1
%{1 }1			; z1
%{ 1 }1			; z1
%{%xx}			; ..@0.xx
a%{1}1			; az1
%endmacro
FOO z
%[  xx zz ]		; xx zz
%define xx yy
%[  xx zz ]		; yy zz
%[  zz xx ]bb		; zz yybb
%{%[xx]}		; error: no directive 'yy'
%{[xx]}			; yy
%[
a%[]b			; ab (single token)
%define ayy one
%define zz xx
%[a%[zz]]		; one

%define zz ine
%def%[zz] foo bar	; warning: no directive 'def'
foo			; foo
%{def%[zz]} foo bar	; works
foo			; bar

%define aa1 5
%define aa2 6
%define aa3 7
%define val 1
aa%[val]		; 5
%undef val
%define val 2
aa%[val]		; 6

%define Quux yyy
%xdefine Bar Quux
%undef Quux
Bar			; yyy
%undef Bar

%define Quux yyy
%xdefine Bar %[Quux]
%undef Quux
Bar			; yyy
%undef Bar

%define Quux yyy
%define Bar %[Quux]
%undef Quux
Bar			; yyy

