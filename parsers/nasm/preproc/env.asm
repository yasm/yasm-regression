; [text] [args --dump-preproc-tokens --keep-output-file] [fail]
%defstr FOO %!YASM_FOO
%defstr C_colon %!'YASM_C:'
FOO
C_colon
%!YASM_TEST_SUITE %!YASM_TEST_SUITE
%!
%!1
%!<
