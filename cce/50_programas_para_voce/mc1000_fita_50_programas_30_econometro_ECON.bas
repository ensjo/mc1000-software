0  REM ************************
1  REM **     - CCESOFT -    **
2  REM **  FELIPE ABRAMVEZT  **
3  REM ** VERSAO 1.0   04/85 **
4  REM ************************
5  REM **     ECONOMETRO     **
6  REM ************************
10  REM .....CONFECCIONA ENTRADA DE DADOS......
35  HOME 
37  PRINT  TAB( 11);"- CCESOFT -": PRINT 
40  INVERSE : PRINT  TAB( 8)"CALCULO DE CONSUMO      ": NORMAL 
50  INPUT "KILOMETROS RODADOS";A$
60  INPUT "LITROS GASTOS";B$
70  INPUT "PRECO POR LITRO";C$
72 A =  VAL (A$):B =  VAL (B$):C =  VAL (C$)
74  IF A = 0 OR B = 0 OR C = 0 THEN  GOTO 35
75  REM .......CALCULA CONSUMO......
76 Y = A / B
80  PRINT : PRINT "CONSUMO=";Y;"KM/L"
82  REM ........CALCULA CUSTO POR KM RODADO.....
85 P = C * B / A
90  PRINT : PRINT "PRECO POR  KM RODADO= CR$"; INT (P)
92  REM ......PERGUNTA SOBRE CALCULO DE GASTO POR MES.......
100  PRINT : PRINT "DESEJA CALCULAR GASTO P/MES ?"
102  INPUT "(S/N)";A$
110  IF A$ = "S" THEN  GOSUB 500
120  END 
130  RUN 
490  REM ....SUB ROTINA PARA CALCULO DE GASTO POR MES..........
492  REM   SUB CALC P/MES
493  REM ::::::::::::::::::::::::::
500  HOME 
510  INPUT "KILOMETROS RODADOS POR DIA";KD$
520  INPUT "QUANTOS DIAS POR MES";DM$
522 DM =  VAL (DM$):KD =  VAL (KD$)
524  IF DM = 0 OR KD = 0 THEN  GOTO 500
525  REM .......CALCULO DO GASTO POR MES........
530 BS = DM * KD
540 GM = BS * P
550  PRINT : PRINT "SEU GASTO POR MES SERA' DE :"
560  PRINT  SPC( 10);"CR$";GM
565  PRINT : INPUT "PRESSIONE  RETURN PARA CONTINUAR";R$
567  RUN 
570  RETURN 