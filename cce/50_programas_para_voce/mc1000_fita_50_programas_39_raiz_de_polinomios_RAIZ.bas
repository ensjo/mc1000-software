0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM * RAIZES DE POLINOMIOS *
6  REM ************************
90  HOME : PRINT  TAB( 11)"- CCESOFT -": PRINT 
100  PRINT  TAB( 10)"ESTE PROGRAMA"
110  PRINT  TAB( 8)"CALCULA AS RAIZES"
115  PRINT  TAB( 7)"REAIS OU IMAGINARIAS"
120  PRINT  TAB( 8)"DE POLINOMIOS DO"
130  PRINT  TAB( 10)"SEGUNDO GRAU"
135  PRINT  TAB( 6)"DA FORMA AX^2+BX+C=0"
140  PRINT : INPUT "A , B , C ";A,B,C
150 D = B ^ 2 - 4 * A * C
170 X =  - B / (2 * A):Y =  - D / (4 * A)
180  IF D < 0 THEN 250
190 X1 = ( - B +  SQR (D)) / (2 * A)
200 X2 = ( - B -  SQR (D)) / (2 * A)
210  HOME 
213  PRINT  TAB( 11)"- CCESOFT -": PRINT 
215  PRINT  TAB( 10)"RAIZES REAIS": PRINT : PRINT 
220  PRINT "X =";X1
230  PRINT "X' =";X2
235  PRINT 
240  GOTO 300
250 U =  - B / (2 * A)
260 V =  SQR ( ABS (D)) / (2 * A)
270  HOME 
275  PRINT  TAB( 11)"- CCESOFT -": PRINT 
280  PRINT  TAB( 9)"SEM RAIZES REAIS"
285  PRINT : PRINT 
290  PRINT "RAIZES COMPLEXAS:": PRINT U;"+-";V;"I"
295  PRINT 
300  PRINT "VERTICE:"
310  PRINT "(";X;",";Y;")"
320  PRINT : PRINT : GOTO 140
