; [text] [args --dump-preproc-tokens]
%define isgreedy BAD
%macro greedy 1+
isgreedy
%endmacro
%undef isgreedy
greedy		; greedy; warning (macro exists but not taking 0 parameters)
greedy 1	; isgreedy
greedy 1,2	; isgreedy
greedy 1,2,3	; isgreedy

%define zero BAD
%macro greedy 0
zero
%endmacro
%undef zero
greedy		; zero
greedy 1	; isgreedy
greedy 1,2	; isgreedy
greedy 1,2,3	; isgreedy

%macro greedy 1 ; warning (redefining part)
one
%endmacro
greedy		; zero
greedy 1	; one
greedy 1,2	; isgreedy
greedy 1,2,3	; isgreedy

%macro greedy 2 ; warning (redefining part)
two
%endmacro
greedy		; zero
greedy 1	; one
greedy 1,2	; two
greedy 1,2,3	; isgreedy

%macro greedy 1+ ; warning (redefining)
isgreedy3
%endmacro
greedy		; zero
greedy 1	; isgreedy3
greedy 1,2	; isgreedy3
greedy 1,2,3	; isgreedy3

%macro greedy 2 ; warning (redefining part)
two
%endmacro
greedy		; zero
greedy 1	; isgreedy3
greedy 1,2	; two
greedy 1,2,3	; isgreedy3

%macro greedy 2+ ; warning (redefining part)
isgreedy2
%endmacro
greedy		; zero
greedy 1	; isgreedy3
greedy 1,2	; isgreedy2
greedy 1,2,3	; isgreedy2


%macro greedy 1+ ; warning (redefining)
isgreedy1
%endmacro
greedy		; zero
greedy 1	; isgreedy1
greedy 1,2	; isgreedy1
greedy 1,2,3	; isgreedy1

%macro greedy 2+ ; warning (redefining part)
isgreedy2
%endmacro
greedy		; zero
greedy 1	; isgreedy1
greedy 1,2	; isgreedy2
greedy 1,2,3	; isgreedy2

