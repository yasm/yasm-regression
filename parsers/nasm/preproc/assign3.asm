; [text] [args --dump-preproc-tokens]
%assign foo 1
%assign $foo 2
foo
$foo

bar
$bar
%assign bar 1
%assign $bar 2
bar
$bar

