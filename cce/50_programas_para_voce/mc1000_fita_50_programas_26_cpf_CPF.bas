0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *         C.P.F.       *
6  REM ************************
90  HOME 
95  PRINT  TAB( 11)"- CCESOFT -": PRINT 
100  PRINT  TAB( 6)"ESTE PROGRAMA CALCULA"
110  PRINT  TAB( 10)"OS DIGITOS DE"
120  PRINT  TAB( 9)"CONTROLE DO CPF"
125  PRINT : PRINT  TAB( 8)"VOCE DEVE ENTRAR
126  PRINT  TAB( 9)"COM 9 DIGITOS
130  PRINT : INPUT "QUAL NUMERO ";N$
140  IF  LEN (N$) <  > 9 THEN  RUN 
150 F = 0
155  HOME : PRINT  TAB( 13)"AGUARDE"
160  GOSUB 500
170  IF D = 1 THEN D = 0: GOTO 190
180 D = 11 - D
190 N$ = N$ +  RIGHT$ ( STR$ (D), LEN ( STR$ (D)) - 1):F = F + 1
200  IF F > 1 THEN 220
210  GOTO 160
220  HOME : PRINT  TAB( 11)"- CCESOFT -": PRINT : PRINT : PRINT  TAB( 8)"CPF: "; LEFT$ (N$,9);"-"; RIGHT$ (N$,2)
230  GOTO 130
500 A$ = "":D = 0
510  FOR I =  LEN (N$) TO 1 STEP  - 1
520 A$ = A$ +  MID$ (N$,I,1)
530  NEXT I
540  FOR I = 1 TO  LEN (A$)
550 D = D +  VAL ( MID$ (A$,I,1)) * (I + 1)
560  NEXT I
565  IF D < 12 GOTO 580
570 D = D - 11
575  GOTO 565
580  RETURN 
