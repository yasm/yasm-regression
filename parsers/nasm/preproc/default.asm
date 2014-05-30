; [text] [args --dump-preproc-tokens]
%macro  writefile 2+ 

        jmp     %%endstr 
  %%str:        db      %2 
  %%endstr: 
        mov     dx,%%str 
        mov     cx,%%endstr-%%str 
        mov     bx,%1 
        mov     ah,0x40 
        int     0x21 

%endmacro

writefile [filehandle],"hello, world",13,10

%macro die 0-1+ "Painful program death has occurred.",13,10

        writefile 2,%1 
        mov     ax,0x4c01 
        int     0x21 

%endmacro

die
die "foo"

