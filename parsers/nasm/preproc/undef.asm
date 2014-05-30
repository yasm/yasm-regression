; [text] [args --dump-preproc-tokens]
%assign a 1
%assign A 2
a
A
%undef a
a
A
%undef a
a
A
%undef A
a
A
%iassign a 2
a
A
%undef A
a
A
%assign a 1
%iassign A 2
a
A
%undef a
a
A
%undef A
a
A
%undef foo
