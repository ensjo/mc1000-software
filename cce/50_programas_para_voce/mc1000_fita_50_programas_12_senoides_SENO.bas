0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *       SENOIDES       *
6  REM ************************
10  HGR 
20 H = 79.5:G = 159
30  FOR A = 0 TO 12.6 STEP .2
40 X = 20 * A:Y = G - H * ( SIN (A) + 1)
50  PLOT X,Y
60  NEXT A
70 G = G - 7:H = H - 7
80  IF H >  - 79.7 THEN 30
90  FOR A = 1 TO 1000: NEXT A: RUN 
