0  REM ************************
1  REM **     �- CCESOFT -   **
2  REM **  FELIPE ABRAMVEZT  **
3  REM ** VERSAO 1.1 MAIO/85 **
4  REM ************************
5  REM **  AGENDA TELEFONICA **
6  REM ************************
7  REM .......DIMENSIONA MATRIZ DE DADOS...........
10  DIM A$(500)
12  REM 
13  REM ........CONFECCIONA MENU...............
20  HOME 
30  PRINT  TAB( 11);"- CCESOFT -"
50  INVERSE : PRINT  SPC( 9);"AGENDA TELEFONICA      "
60  NORMAL : PRINT : PRINT : PRINT  SPC( 10);"INSTRUCOES:"
70  INVERSE : PRINT "1";: NORMAL : PRINT "-PARA CONSULTAR (C)
80  INVERSE : PRINT "2";: NORMAL : PRINT "-PARA REGISTRAR (R)"
82  REM ........ENTRADA DA OPCAO.............
90  INPUT A$: IF A$ = "" THEN  GOTO 50
100  IF A$ = "C" GOTO 1000
110  IF A$ = "R" THEN  GOTO 2000
120  IF A$ <  > "C" AND A$ <  > "R" THEN  GOTO 20
150  REM 
160  REM ..........ENTRADA DO OU DOS NOMES A SEREM PROCURADOS...........
1000  HOME 
1005 IM = 0
1010  PRINT "PARA PROCURAR:": PRINT "DIGITE A LETRA OU O CONJUNTO DE LETRAS": PRINT "OU DIGITE O NOME COMPLETO": PRINT "E PRESSIONE RETURN"
1020  INPUT B$: HOME 
1021  IF B$ = "" THEN  GOTO 1010
1022  PRINT "          ";: INVERSE : PRINT "PROCURANDO"
1028  REM ........CARREGA VARIAVEIS DE DADOS..........
1029  GOSUB 3000
1030  FOR I = 1 TO 501
1032  REM .......FAZ A PROCURA DOS DADOS........
1033  IF I = 501 GOTO 6000
1035 C$ =  LEFT$ (A$(I), LEN (B$))
1045 D$ =  LEFT$ (B$,9)
1050  IF D$ <  > C$ THEN  NEXT I
1052  REM .......MOSTRA O DADO QUANDO EXISTENTE.........
1055  INVERSE : PRINT A$(I):IM = IM + 1: NORMAL 
1056  NORMAL 
1057  GOSUB 7000
1058  NEXT I
1059  REM .........VERIFICA SOBRE MAIS CONSULTAS.........
1060  PRINT : PRINT : PRINT "DESEJA MAIS CONSULTAS(S/N)."
1070  INPUT H$: IF H$ = "N" GOTO 20
1075  IF H$ = "S" GOTO 1000
1080  GOTO 12
1090  REM 
1091  REM .........FORNECE INSTRUCOES PARA REGISTRAR DADOS.........
2000  HOME 
2010  PRINT "LEMBRE-SE DE REGRAVAR O PROGRAMA TODA VEZ QUE REGISTRAR UM NOVO  NOME."
2011  PRINT : PRINT "OBSERVE ATENTAMENTE O NUMERO DA LINHA E DA VARIAVEL   CORRESPON--DENTE"
2012  PRINT : PRINT "ENTRE COM O NUMERO DA LINHA E DA VARIAVEL "
2013  PRINT : PRINT "DEPOIS ENTRE ASPAS DIGITE OS DA--DOS COMECANDO COM O NOME"
2014  PRINT "PRESSIONE RETURN PARA CONTINUAR": INPUT O$: HOME 
2015  PRINT "LOGO APOS VOCE DEVE ENTRAR COM": PRINT "A LINHA DIGITADA PARA ISSO PRES--SIONE RETURN"
2017  PRINT "PARA VERIFICAR O ULTIMO DADO": PRINT "PRESSIONE RETURN": INPUT O$
2025  LIST 3000 - 3500
2090  REM .......LINHAS RESERVADAS PARA DADOS...........
3000 A$(1) = "HORA CERTA  TEL: 130"
3001 A$(2) = "DEFEITOS  TEL:103"
3002 A$(3) = "PREVISAO DO TEMPO TEL:132"
3003 A$(4) = "POLICIA TEL:190"
3004 A$(5) = "BOMBEIROS TEL:193"
3005 A$(6) = "PRONTO SOCORRO TEL:192"
3006 A$(7) = "FARMACIA DE PLANTAO TEL:136"
3600  RETURN 
5000  REM 
5010  REM ........EXECUTA SIRENE.........
6000  HOME 
6001  TEMPO 150,2,1
6002  FOR M = 1 TO 5
6003  SOUND 87,15,1
6004  SOUND 96,15,1
6005  SOUND 1,1,1
6006  NEXT M
6007  IF IM <  > 0 THEN  GOTO 1060
6009  REM .........AVISA CASO NAO HAJA O NOME PROCURADO.........
6010  INVERSE : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT "   ESSE NOME NAO CONSTA NA LISTA": NORMAL 
6015  FOR F = 1 TO 1000: NEXT F
6020  GOTO 1060
6030  END 
7000  REM ......SUB ROTINA PARA INTERRONPER CASO HAJA DADOS.....
7010  PRINT "PRESSIONE RETURN PARA CONTINUAR"
7012  INPUT O$
7015  PRINT "          ";: INVERSE : PRINT "PROCURANDO"
7016  NORMAL 
7020  RETURN 
