; [text] [args --dump-preproc-tokens]
%ifidn 1,1
GOOD
%else
BAD
%endif
%ifnidn ,bar
GOOD
%else
BAD
%endif
%ifnidn 1,bar
GOOD
%else
BAD
%endif
%ifnidn "str",str
GOOD
%else
BAD
%endif
%ifidn (),()
GOOD
%else
BAD
%endif
%ifnidn %,+
GOOD
%else
BAD
%endif
%ifidni "str1" "str2" id3, "STR1" "STR2" ID3
GOOD
%else
BAD
%endif
%ifnidni "foo","bar"
GOOD
%else
BAD
%endif
