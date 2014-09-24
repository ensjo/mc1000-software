0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *     EXPONENCIAIS     *
6  REM ************************
10  DEF  FN A(X) =  INT (X * 10000 + .5) / 10000
20  HOME 
25  PRINT  TAB( 12)"- CCESOFT -": PRINT 
30  PRINT  TAB( 11)"ESTE PROGRAMA
40  PRINT  TAB( 8)"INTERPOLA UMA CURVA
45  PRINT  TAB( 12)"EXPONENCIAL"
50  PRINT  TAB( 9)"POR PONTOS DADOS
60  PRINT 
100  INPUT "QUANTOS PONTOS ";N
105  IF N < 2 THEN  RUN 
110  HOME 
120  PRINT  TAB( 7)"ENTRE COM OS PONTOS"
130  PRINT  TAB( 11)"NA FORMA X,Y": PRINT 
140  FOR I = 1 TO N
150  PRINT "X";I;", Y";I;
160  INPUT X,Y
170 X1 = X1 + X
180 Y1 = Y1 +  LOG (Y)
190 XX = XX + X ^ 2
200 YY = YY +  LOG (Y) ^ 2
210 XY = XY + X *  LOG (Y)
220  NEXT I
230 B = (XY - 1 / N * X1 * Y1) / (XX - 1 / N * X1 ^ 2)
235 B =  FN A(B)
240 A =  EXP (Y1 / N - B * X1 / N)
245 A =  FN A(A)
250 R2 = (XY - 1 / N * X1 * Y1) ^ 2 / (XX - X1 ^ 2 / N) / (YY - Y1 ^ 2 / N)
255 R2 =  INT (R2 * 100 + .5) / 100
260  HOME 
270  PRINT " FORMULA GERAL -> Y=A*EXP(B*X)
280  PRINT : PRINT "A =";A
290  PRINT "B =";B
300  PRINT "COEFICIENTE R2 =";R2
310  FOR K = 1 TO 32: PRINT "-";: NEXT 
320  INPUT "QUER PROJETAR S/N ";A$
330  IF A$ = "N" THEN  HOME : END 
340  INPUT "X ";X
350 Y = A *  EXP (B * X)
360  PRINT "Y. ="; FN A(Y)
370  PRINT : GOTO 320
