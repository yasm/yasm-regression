; [text] [args --dump-preproc-tokens --keep-output-file] [fail]

%define foo xyzzy
%define bar 1e+10
%define xyzzy1e 15
%macro dx 2
%assign	xx %1%2
dd xx
%endmacro
dx foo, bar	; 'dd' '25'

%macro df 2
dd %1e+%2
dd %{1}e+%{2}	; safer way of doing this!
%endmacro
df ,0		; 'dd' 'e' '+' '0'
df 1,36		; 'dd' '1e+36'
%define one 1
%define thirtysix 36
df one, thirtysix	; 'dd' '1e+36'

%macro dg 2
dd %+1e%-2
%endmacro
dg 1,36		; 2 errors, result is simply 'dd' 'e'
dg g,e		; 'dd' 'gene'

%1.0		; warning, but results in '%' '1.0' (two tokens)
%+1.0		; warning, but results in '%' '+' '1.0' (three tokens)

%define N 1e%++%+ 5
N		; '1e+5'
