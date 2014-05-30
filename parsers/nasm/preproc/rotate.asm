; [text] [args --dump-preproc-tokens]
%macro mac1 3
db %1, %2, %3
%rotate 1
db %1, %2, %3
%rotate 1
db %1, %2, %3
%rotate 1
db %1, %2, %3
%endmacro

%macro mac2 3
db %1, %2, %3
%rotate -1
db %1, %2, %3
%rotate -1
db %1, %2, %3
%rotate -1
db %1, %2, %3
%endmacro

mac1 1, 2, 3
mac2 1, 2, 3
