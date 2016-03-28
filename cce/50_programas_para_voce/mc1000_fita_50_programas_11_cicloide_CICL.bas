0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *       CICLOIDE       *
6  REM ************************
10  HGR 
30 A = 0:C = 0
35  FOR K = 1 TO 400
40 X1 = 110:Y1 = 92:X2 = 106 *  SIN (A * 2) + 138:Y2 = 90 *  COS (3 * A) + 95
50  PLOT X1,Y1 TO X2,Y2
60 A = A + .1
70  NEXT K
80  RUN 
