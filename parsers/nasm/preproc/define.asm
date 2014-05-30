; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%define a b
a
a(1)
a(1 2 3)
a(1,2,3)
a (1)
%define a (b)
a
a(1)
a(1 2 3)
a(1,2,3)
a (1)
%define a(b) b		; warning ignored
a
a(1)
a(1 2 3)
a(1,2,3)
a (1)
%define x(b) b
x			; x
x(1)			; 1
x(1 2 3)		; 1 2 3
x(1,2,3)		; warning (wrong # of params), result: x(1,2,3)
x (1)			; 1
x( 1)			; 1
x(()			; error macro expects terminating ), result: x(()
x({,})			; ,
x(({))			; ({)
x({(})			; (
x({)})			; )
x({)			; error unterminated {, result: x({)
%define y(x) 1+y(x)
y(3)			; warning disabled expansion, result: 1+y(3)
y (3)			; warning disabled expansion, result: 1+y(3)
%define o(b) 0
o			; o
o(1)			; 0
%define z %define c 1
z			; %define c 1
c			; c
;%define e %!PATH
;e
;%define f %%skip
;f
%define g() FOO		; error expected a parameter identifier
g
g(1)
g()
%define h(1) BAR	; error expected a parameter identifier
h
h(2)
; more expected parameter identifier errors
%define l(
%define m(a,,
%define n(a,)
%define p x,
%define q(z,z) z z
q(p q)			; q q
q(p, q)			; error (3 parameters), result: s(x,, q)
q({p}, q)		; q q
%define s(a,b) a b
s(p q)			; x q
s(p, q)			; error (3 parameters), result: s(x,, q)
s({p}, q)		; x, q
%define r(a,b) a b
r(aa,bb)		; aa bb
r(aa, bb)		; aa bb
r( aa,bb)		; aa bb
r(,bb)			; " bb"
r(r(aa,bb),cc)		; aa bb cc
r(r(aa,bb))		; warning on outer r(), result: r(aa bb)
r(r(aa),bb)		; warning on inner r(), result: r(aa) bb
r(r(,bb)		; error macro expects terminating ), result: "r( bb"
r(r(a))			; two warnings, result: r(r(a))
