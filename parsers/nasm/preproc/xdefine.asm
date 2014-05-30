; [text] [args --dump-preproc-tokens]
%xdefine isTrue 1
%xdefine isFalse isTrue
%xdefine isTrue 0
isFalse
%xdefine isTrue 1
isFalse

%xdefine x 1 2
%xdefine y x 3
y
%xdefine a a b
a
%xdefine a 1
a
%xdefine a a b
a
%xdefine a a b
a
%xdefine a
a 1
