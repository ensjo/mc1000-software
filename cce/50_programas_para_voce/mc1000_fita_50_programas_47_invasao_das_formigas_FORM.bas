0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSA0 1.1   05/85  *
4  REM ************************
5  REM * INVASAO DAS FORMIGAS *
6  REM ************************
100  GR : TEMPO 10,1,1
104  REM 
105  REM  INICIO DO "LOOP"
106  REM 
110  FOR I = 0 TO 700
120  COLOR  =  RND (5) * 3 + 1
130  PLOT  RND (3) * 128, RND (4) * 64
140  SOUND  RND (5) * 255,5,1
150  NEXT I: RUN 
