; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%deftok t1 'TEST'
t1
%deftok t2 'x1'
t2
%assign x1 2
t2
%assign x2 3
%deftok t3 'x2'
%assign x2 4
t3
%undef x2
t3
%deftok t4 'TEST x1 x2 '
t4
; NASM supports this even though "5 isn't a valid token.  We don't.
;%deftok t5 'mov ax, "5'
;t5
;t5"
%deftok t5 'mov ax, "5"'
t5
%deftok t6 'X'
t6
%iassign x 5
t6
%assign x 6
t6
%assign X 7
t6
%deftok t7 ''
t7
%deftok t8
t8
%deftok t9 '$foo'
t9
%deftok t10 'foo:'
t10
%deftok t11 '$$'
t11
%deftok t12 '$0'
t12
