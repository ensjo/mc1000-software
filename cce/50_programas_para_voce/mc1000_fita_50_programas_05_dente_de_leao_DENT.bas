0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *     DENTE-DE-LEAO    *
6  REM ************************
10  HGR 
20  FOR I = 0 TO 251 STEP 3
30  PLOT I,191 TO I + 1,191 - ( RND (8) * 15)
40  PLOT I + 1,191 - ( RND (8) * 15) TO I + 2,191
50  NEXT I
60 P = 3.14
70  FOR L = 1 TO 15
80 A =  RND (8) * 195 + 30
90 B =  RND (8) * 131 + 30
100  FOR Y = 191 TO B STEP  - 1
110  PLOT A,Y
120  NEXT 
130 S =  RND (8) * 20 + 10
140  FOR T = .5 * P TO 2.5 * P STEP 2 * P / S
150 X = A +  SIN (T) * S:Y = B -  COS (T) * S
160  PLOT A,B TO X,Y
170  NEXT T: NEXT L
180  FOR A = 1 TO 1500: NEXT A: RUN 
