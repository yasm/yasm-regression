; [text] [args --dump-preproc-tokens]
%push foo
%ifctx foo
GOOD
%else
BAD
%endif
%ifnctx bar
GOOD
%else
BAD
%endif
%pop
%ifnctx foo
GOOD
%else
BAD
%endif
%define SMACRO
%ifdef SMACRO
GOOD
%else
BAD
%endif
%undef SMACRO
%ifndef SMACRO
GOOD
%else
BAD
%endif
%ifempty
GOOD
%else
BAD
%endif
%ifnempty 0
GOOD
%else
BAD
%endif
%ifenv PATH
GOOD
%else
BAD
%endif
%ifnenv "YASM_CONDITION_TEST_UNLIKELY"
GOOD
%else
BAD
%endif
%ifid aa
GOOD
%else
BAD
%endif
%ifnid 5
GOOD
%else
BAD
%endif
;%ifmacro
;%ifnmacro
%ifnum 5
GOOD
%else
BAD
%endif
%ifnnum aa
GOOD
%else
BAD
%endif
%ifstr "foo"
GOOD
%else
BAD
%endif
%ifnstr aa
GOOD
%else
BAD
%endif
%iftoken 0
GOOD
%else
BAD
%endif
%ifntoken (0
GOOD
%else
BAD
%endif
