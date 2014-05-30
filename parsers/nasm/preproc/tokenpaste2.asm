; [text] [args --dump-preproc-tokens]
%define x(l) l
x(FOO)BAR
x(FOO)x(BAR)
x(FO)x(OB)x(AR)
x(F)x(O)x(O)x(B)x(A)x(R)

%define FOOBAR 5
x(FOO)BAR
x(FOO)x(BAR)
x(FO)x(OB)x(AR)
x(F)x(O)x(O)x(B)x(A)x(R)

%define y(a,b) x(a)x(b)
y(FOO,BAR)
y(FO,OB)AR

%define foobar(x) -x-
y(foo,bar)(7)

%define z(a,b) x(a)x(b)(a b)
z(foo,bar)

%define z(x) ; empty
z(x)FOO

%define z(x) FOO ; simple
z(x)BAR

%define z(x) $ ; tricky
z(x)FOO
