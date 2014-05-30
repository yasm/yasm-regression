; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%define a 1
%assign a 2
a		; 2

%assign d 4
%define d 4
d		; 4

%define b(x) x
%assign b 3	; warning ignored
b		; b

%undef b
b		; b

%assign c 3
%define c(x) x	; warning ignored
c		; 3
c(5)		; 3(5)

%define e
%assign e e+1
e		; 1

%define f
%assign f f
f
