; [text] [args --dump-preproc-tokens]
%define xy OK
%define foo x
%define bar y
%define foobar FAIL
%define xbar FAIL
%define fooy FAIL
foo %+ bar			; OK

%define xyz OK
%define baz z
%define barbaz FAIL
foo %+ bar %+ baz		; OK

%define xyz(a) a %+ a		; warning
foo %+ bar %+ baz(1)		; OK(1)
foo %+ bar %+ baz (1)		; OK (1)

%define OK(a) a %+ a
foo %+ bar %+ baz(1)		; 11
foo %+ bar %+ baz (1)		; 11

%define bb OK
foo %+ bar %+ baz(b)		; OK
foo %+ bar %+ baz (b)		; OK
