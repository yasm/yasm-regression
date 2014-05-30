; [text] [args --dump-preproc-tokens]
%if 1
ONE
%endif

%if 1
 %if 0
ONE
 %else
TWO
 %endif
%else
 %if 1
THREE
 %elif 2
FOUR
 %else
FIVE
 %endif
%endif

%if 0
ONE
%else
TWO
%endif

%if 0
ONE
%elif 1
TWO
%else
THREE
%endif

%if 0
ONE
%elif 0
TWO
%else
THREE
%endif

%if 0
ONE
%endif
