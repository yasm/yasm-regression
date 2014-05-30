; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%strcat alpha "Alpha: ", '12" screen'
alpha
%strcat beta '"foo"\' "'bar'"
beta
%strcat gamma a	; error, non-string
gamma
%strcat delta
delta
%strcat delta2 ,
delta2
%strlen charcnt 'my string'
charcnt
%define sometext 'my string'
%strlen charcnt2 sometext sometext
charcnt2
%substr mychar 'xyzw' 1
mychar       ; 'x'
%substr mychar 'xyzw' 2
mychar       ; 'y' 
%substr mychar 'xyzw' 3
mychar       ; 'z' 
%substr mychar 'xyzw' 2,2
mychar       ; 'yz' 
%substr mychar 'xyzw' 2,-1
mychar       ; 'yzw' 
%substr mychar 'xyzw' 2,-2
mychar       ; 'yz'
; out of range handling
%substr mychar 'xyzw' 0,2
mychar       ; 'xy' 
%substr mychar 'xyzw' -1,2
mychar       ; 'xy' 
%substr mychar 'xyzw' 2,-4
mychar       ; '' 
%substr mychar 'xyzw' 2,-5
mychar       ; '' 
%substr mychar 'xyzw' 5
mychar       ; '' 
%substr mychar 'xyzw' 2,0
mychar       ; '' 

