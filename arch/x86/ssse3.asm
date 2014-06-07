%MACRO TEST_GENERIC 5
;global _test_ %+ %1 %+ _ %+ %4
;global test_ %+ %1 %+ _ %+ %4
_test_ %+ %1 %+ _ %+ %4:
test_ %+ %1 %+ _ %+ %4:
   mov         edx, [ esp + 4 ]
   mov         eax, [ esp + 8 ]
   %2          %3, [ edx ]
   %2          %5, [ eax ]
   %1          %3, %5
   %2          [ edx ], %3
   ret
%ENDMACRO

TEST_GENERIC pabsb, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 1c c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC pabsw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 1d c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC pabsd, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 1e c1
; out: 67 0f 7f 02
; out: c3

TEST_GENERIC pabsb, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 1c c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC pabsw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 1d c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC pabsd, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 1e c1
; out: 67 f3 0f 7f 02
; out: c3

TEST_GENERIC psignb, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 08 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC psignw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 09 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC psignd, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 0a c1
; out: 67 0f 7f 02
; out: c3
          
TEST_GENERIC psignb, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 08 c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC psignw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 09 c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC psignd, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 0a c1
; out: 67 f3 0f 7f 02
; out: c3

TEST_GENERIC phaddw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 01 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC phaddsw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 03 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC phaddd, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 02 c1
; out: 67 0f 7f 02
; out: c3

TEST_GENERIC phaddw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 01 c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC phaddsw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 03 c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC phaddd, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 02 c1
; out: 67 f3 0f 7f 02
; out: c3

TEST_GENERIC phsubw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 05 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC phsubsw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 07 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC phsubd, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 06 c1
; out: 67 0f 7f 02
; out: c3

TEST_GENERIC phsubw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 05 c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC phsubsw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 07 c1
; out: 67 f3 0f 7f 02
; out: c3
TEST_GENERIC phsubd, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 06 c1
; out: 67 f3 0f 7f 02
; out: c3

TEST_GENERIC pmulhrsw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 0b c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC pmulhrsw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 0b c1
; out: 67 f3 0f 7f 02
; out: c3

TEST_GENERIC pmaddubsw, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 04 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC pmaddubsw, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 04 c1
; out: 67 f3 0f 7f 02
; out: c3

TEST_GENERIC pshufb, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 38 00 c1
; out: 67 0f 7f 02
; out: c3
TEST_GENERIC pshufb, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 38 00 c1
; out: 67 f3 0f 7f 02
; out: c3

%MACRO TEST_ALIGNR 5
;global _test_ %+ %1 %+ _ %+ %4
;global test_ %+ %1 %+ _ %+ %4
_test_ %+ %1 %+ _ %+ %4:
test_ %+ %1 %+ _ %+ %4:
   mov         edx, [ esp + 4 ]
   mov         eax, [ esp + 8 ]
   %2          %3, [ edx ]
   %2          %5, [ eax ]
   %1          %3, %5, 3
   %2          [ edx ], %3
   ret
%ENDMACRO

TEST_ALIGNR palignr, movq, mm0, mmx, mm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 0f 6f 02
; out: 67 0f 6f 08
; out: 0f 3a 0f c1 03
; out: 67 0f 7f 02
; out: c3
TEST_ALIGNR palignr, movdqu, xmm0, xmm, xmm1
; out: 67 66 8b 54 24 04
; out: 67 66 8b 44 24 08
; out: 67 f3 0f 6f 02
; out: 67 f3 0f 6f 08
; out: 66 0f 3a 0f c1 03
; out: 67 f3 0f 7f 02
; out: c3
