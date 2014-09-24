0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *      ALFABETO II     *
6  REM ************************
10  HOME 
15  PRINT  TAB( 11)"- CCESOFT -": PRINT 
20  PRINT  TAB( 8)"ESCOLHA O NUMERO"
30  PRINT  TAB( 4)"DE UMA LETRA DO ALFABETO
40  PRINT : INPUT "QUAL NUMERO ";L
45  IF L < 1 OR L > 26 THEN  RUN 
55 A$ =  CHR$ (L + 64)
75  HOME 
80  PRINT "VOCE ESCOLHEU A LETRA"
90  PRINT "DE NUMERO";L;"QUE E' ";A$
95  PRINT : PRINT  TAB( 7);: INPUT "NOVAMENTE S/N ";A$
100  IF A$ = "S" THEN  RUN 
110  HOME 
