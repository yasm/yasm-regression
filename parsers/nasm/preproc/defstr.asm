; [text] [args --dump-preproc-tokens]
%defstr foo1 simple
foo1
%defstr foo2 multiple words
foo2
%defstr foo3 foo3
foo3
%defstr foo4 foo2   
foo4
%defstr foo5 "string"
foo5
%defstr foo6 "string" 'quoted'
foo6
%defstr foo7 "string" 'quoted'    `crazy`
foo7
%defstr foo8
foo8
%defstr foo9 foo\
bar
foo9
%defstr foo10 foo \
bar
foo10
%defstr foo11 ( foo
foo11
%defstr foo12 (	foo
foo12
%defstr foo13 	
foo13
%defstr foo14 	
foo14
%defstr foo15 	
foo15
%defstr foo16 	
foo16
%idefstr ABC case-   insensitive
abc
