0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM * VERSAO 1.1   05/85   *
4  REM ************************
5  REM *        LINHAS        *
6  REM ************************
9  HOME 
10  PRINT  TAB( 11)"- CCESOFT -": PRINT : INPUT "QUANTAS LINHAS ";D: HGR 
15  FOR Z = 1 TO D
20 X1 =  INT (100 *  RND (1) + 60)
30 Y1 =  INT (80 *  RND (1) + 20)
40 X2 = 130 *  SIN (A) + 127
50 Y2 = 90 *  COS (A) + 95
55  IF X1 > 255 THEN X1 = 255
56  IF X2 > 255 THEN X2 = 255
57  IF X1 < 0 THEN X1 = 0
58  IF X2 < 0 THEN X2 = 0
60  PLOT X1,Y1 TO X2,Y2
70 A = A + .1
90  NEXT Z
100  FOR A = 1 TO 2500: NEXT A: RUN 
