; [text] [args --dump-preproc-tokens]
%macro if 1 

    %push if 
    j%-1  %$ifnot 

%endmacro 

%macro else 0 

  %ifctx if 
        %repl   else 
        jmp     %$ifend 
        %$ifnot: 
  %else 
        %error  "expected `if' before `else'" 
  %endif 

%endmacro 

%macro endif 0 

  %ifctx if 
        %$ifnot: 
        %pop 
  %elifctx      else 
        %$ifend: 
        %pop 
  %else 
        %error  "expected `if' or `else' before `endif'" 
  %endif 

%endmacro

        cmp     ax,bx 

        if ae 
               cmp     bx,cx 

               if ae 
                       mov     ax,cx 
               else 
                       mov     ax,bx 
               endif 

        else 
               cmp     ax,cx 

               if ae 
                       mov     ax,cx 
               endif 

        endif

