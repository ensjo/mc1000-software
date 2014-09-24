0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *        TEIAS         *
6  REM ************************
9  HOME : PRINT  TAB( 11)"- CCESOFT -": PRINT 
10  PRINT  TAB( 8)"ESCOLHA UM NUMERO
11  PRINT  TAB( 11)"DE 25 A 380
12  PRINT  TAB( 8)"E TECLE  <RETURN>
15  PRINT : INPUT "QUAL NUMERO ";D
16  IF D < 25 OR D > 380 THEN  RUN 
20 D = D / 57.29578
30  HGR 
40  PLOT 127,96
50  FOR R = 0 TO 500 STEP D
60 X = 116 + R *  COS (R):Y = 96 + .7 * (R *  SIN (R))
65  IF X < 0 OR X > 255 OR Y < 0 OR Y > 191 THEN 90
70  PLOT  TO X,Y
80  NEXT 
90  FOR A = 1 TO 1000: NEXT A: RUN 
