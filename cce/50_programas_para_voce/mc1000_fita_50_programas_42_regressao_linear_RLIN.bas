0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *   REGRESSAO LINEAR   *
6  REM ************************
10  DEF  FN A(X) =  INT (X * 10000 + .5) / 10000
20  HOME 
25  PRINT  TAB( 11)"- CCESOFT -": PRINT 
30  PRINT  TAB( 11)"ESTE PROGRAMA
40  PRINT  TAB( 8)"INTERPOLA UMA RETA
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
180 Y1 = Y1 + Y
190 XX = XX + X ^ 2
200 YY = YY + Y ^ 2
210 XY = XY + X * Y
220  NEXT I
230 A = (XY - X1 * Y1 / N) / (XX - X1 ^ 2 / N)
235 A =  FN A(A)
240 B = Y1 / N - A * X1 / N
245 B =  FN A(B)
250 R2 = (XY - X1 * Y1 / N) ^ 2 / (XX - X1 ^ 2 / N) / (YY - Y1 ^ 2 / N)
255 R2 =  INT (R2 * 100 + .5) / 100
260  HOME 
265  PRINT  TAB( 11)"- CCESOFT -": PRINT 
270  PRINT  TAB( 5)"FORMULA GERAL -> Y=A*X+B
280  PRINT : PRINT "A =";A
290  PRINT "B =";B
300  PRINT "COEFICIENTE R2 =";R2
310  FOR K = 1 TO 32: PRINT "-";: NEXT 
320  INPUT "QUER PROJETAR S/N ";A$
330  IF A$ = "N" THEN  HOME : END 
340  INPUT "X ";X
350 Y = X * A + B
360  PRINT "Y. =";Y
370  PRINT : GOTO 320