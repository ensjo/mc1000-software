0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *       FATORIAL       *
6  REM ************************
30  HOME 
90  PRINT : PRINT  TAB( 11)"- CCESOFT -": PRINT : INVERSE : PRINT  TAB( 9)"F A T O R I A L"; SPC( 8): NORMAL 
100  PRINT : PRINT : PRINT  TAB( 6)"ESTE PROGRAMA CALCULA
110  PRINT  TAB( 10)"O FATORIAL DE
120  PRINT  TAB( 5)"QUALQUER NUMERO INTEIRO
130  PRINT  TAB( 12)"POSITIVO
140  REM 
150  REM   ENTRADA DE DADOS
160  REM 
200  PRINT : PRINT : PRINT  TAB( 9);: INPUT "X ";X
210  REM 
220  REM   CONSISTENCIA
230  REM 
250  IF X < 0 OR  INT (X) <  > X THEN  RUN 
290  HOME 
300  PRINT : PRINT  TAB( 11)"- CCESOFT -": PRINT : PRINT  SPC( 13)"AGUARDE"
340  REM 
350  REM  DESVIO DE AGILIZACAO   
400  IF X > 33 THEN 1000
405  REM 
406  REM   ALGORITMO
407  REM 
410 R = 1
420  FOR A = 1 TO X:R = R * A: NEXT A
424  REM 
425  REM    FORMATACAO E                    DESVIO PARA                     SAIDA DE DADOS       
430 F$ =  STR$ (X) + "! =" +  STR$ (R): GOTO 2500
950  REM 
960  REM       DESVIOS DE                      AGILIZACAO
970  REM 
1000  IF X > 100 THEN 1150
1100 R = .938686:M = 34:N = 36: GOTO 2000
1150  IF X > 200 THEN 1300
1200 R = .970004:M = 101:N = 157: GOTO 2000
1300 R = .896889:M = 201:N = 374
1940  REM 
1950  REM  ALGORITMO EXPANDIDO
1960  REM 
2000  FOR A = M TO X:R = R +  LOG (A) / 2.30259: NEXT A
2040  REM 
2050  REM                                 FORMATACAO DOS                 DADOS PARA SAIDA        
2100 A = N +  INT (R):B$ =  LEFT$ ( STR$ (10 ^ (R -  INT (R))),7)
2120 A$ =  STR$ (A)
2200 F$ =  STR$ (X) + "! =" + B$ + " E+" +  RIGHT$ (A$, LEN (A$) - 1)
2450  REM 
2460  REM  SAIDA DE DADOS
2470  REM 
2500  HOME : PRINT : PRINT : PRINT : PRINT  TAB(  INT (16 -  LEN (F$) / 2))F$
2540  REM 
2550  REM  OPCAO DE VOLTA
2560  REM 
3000  PRINT : PRINT : PRINT : PRINT  SPC( 7);: INVERSE : PRINT "N";: NORMAL : PRINT "OVAMENTE OU ";: INVERSE : PRINT "B";: NORMAL : PRINT "ASIC ";
3100  INPUT A$: IF A$ = "B" THEN  HOME : END 
3200  CLEAR : RUN 