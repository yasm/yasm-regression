; [fail] [text] [args --dump-preproc-tokens --keep-output-file]
; not in macro call warnings
a %+1
b %-1

; first is a token paste
a %+ 1
b %- 1

; fully functional
%macro retc 1
j%-1 %%skip %-
j%+1 %%skip %+
j%+1a
  %-1
  %+1
ret
%%skip:
%endmacro
retc NE

; error on %+0 and %-0
%macro zero 1
j%+0
j%-0
%endmacro
zero ne

%macro basic 1
j%-1
j%+1
%endmacro

; error on %-1 as it can't be inverted
basic cxz

; both are errors
basic 1
basic {cxz ne}

; blank parameter testing
%macro blank 1-2
 %-1
 %+1
 %-2
 %+2
%endmacro

blank ,
