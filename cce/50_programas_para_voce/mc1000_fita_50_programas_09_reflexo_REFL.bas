0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *       REFLEXO        *
6  REM ************************
10  HGR 
20 A =  INT ( RND (E) * F)
30 B =  INT ( RND (E) * G)
40 C =  INT ( RND (E) * F)
50 D =  INT ( RND (E) * G)
60  IF E = 0 THEN  HGR :E = 1:F = 255:G = 191
70 A = A +  SGN (C - A)
80 B = B +  SGN (D - B)
90  PLOT C,D TO A,B
100  PLOT F - C,D TO F - A,B
110  PLOT C,G - D TO A,G - B
120  PLOT F - C,G - D TO F - A,G - B
130  ON  ABS ((C - A) / 2 + E) GOTO 20: ON  ABS (D - B + E) GOTO 20: GOTO 70
