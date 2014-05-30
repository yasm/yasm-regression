; [text] [args --dump-preproc-tokens]
%xdefine A id %+ id
A
%xdefine A id %+ id %+ id
A
%xdefine A id %+ 5
A
%xdefine A 5 %+ 5
A
%xdefine A 5 %+ id
A
%xdefine A 5 %+ e3
A
%xdefine A 5 %+ .0e3
A
%define A id1 %+ id2
A
%define id1 foo
%define id2 bar
A
%define A id1 %+ id2 %+ id3
A
%undef id1
%define id2 5
A
%define id1 "foo"
A
id1 %+ id2
1 %+ 5
