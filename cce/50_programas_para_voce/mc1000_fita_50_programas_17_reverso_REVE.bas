>>> Arquivo: [125_REVE.bin].
>>> ID do arquivo: [REVE ].
1  REM ************************
2  REM *    - CCESOFT -       *
3  REM * JORGE LUIS S. SANTOS *
4  REM *  VERSAO 1.1  04/85   *
5  REM ************************
6  REM *      REVERSO         *
7  REM ************************
8  HOME : INPUT "          TECLE (RETURN)";I$
10  HOME 
11  REM ################ROTINA DE APRESENTACAO#############################
12  GOSUB 1000
14  HOME 
16 Q = 0
18  REM #######################DIMENSIONAMENTOS#############################
20  DIM B(10)
25  DIM A(10)
28  PRINT 
29  REM ################## ESCOLHA DOS NUMEROS ALEATORIOS################
30  FOR K = 1 TO 9
35 A(K) =  INT ( RND (8) * 9) + 1
40  IF K = 1 GOTO 80
50  FOR J = 1 TO K - 1
60  IF A(K) = A(J) GOTO 35
70  NEXT J
80  NEXT K
90 M = 0
95  PRINT "========= - CCESOFT - =========="
99  REM ########################### MOSTRA O NUMERO A SER ORDENADO##########
100  PRINT "   O NUMERO A SER ORDENADO E'"
102  PRINT : PRINT 
104  PRINT  SPC( 3);
105  FOR J = 1 TO 9
110  PRINT A(J);
115  NEXT J
120  PRINT 
121  PRINT : PRINT  SPC( 7)"APOS ";M;" INVERSOES"
122  PRINT "     QUANTOS ALGARISMOS VOCE"
124  PRINT "         QUER INVERTER ?"
125  PRINT 
126  PRINT "TECLE UM NUMERO INTEIRO DE 2 A 9"
128  REM ######################## VERIFICA SE O NUMERO JA E' 1234...########
130  GOSUB 4000
135  IF Q = 9 GOTO 1 
138  REM ####################### N=NUMERO DE ALGARISMOS QUE SE QUER INVERT.##
140  INPUT N
145  REM ###################ROTINA DE INVERSAO######### DRAW ####################
150  IF N < 2 OR N > 9 GOTO 140
160 T = N:U = 1:B(U) = A(T)
180 B(U) = A(T)
190 U = U + 1
200 T = T - 1
210  IF T > 0 OR T < 0 GOTO 180
220  FOR L = 1 TO N
230 A(L) = B(L)
240  NEXT L
250 M = M + 1
260  PRINT  SPC( 12);"AGUARDE!!!"
280  FOR O = 1 TO 2000: NEXT 
290  HOME 
292  REM ##################### VOLTA A NOVA TENTATIVA#######################
295  GOTO 95
299  REM ############### INFOBMACAO FINAL##################################
310  STOP 
999  REM ############################ROTINA DE APRESENTACAO#################
1000  PRINT "************REVERSO*************"
1100  PRINT 
1200  PRINT "     O COMPUTADOR COLOCARA NA TELA OS NUMEROS DE 1 A 9 EM UMA ORDEM QUALQUER,COMO POR EXEMPLO :"
1250  PRINT 
1300  PRINT "      4 7 2 8 5 1 6 9 3 "
1390  PRINT 
1400  PRINT "    O OBJETIVO DESTE JOGO SERA  ORDENA-LOS"
1500  PRINT "    VEJA A SEGUIR,COMO FAZE-LO"
1550  PRINT : PRINT 
1560  PRINT "        TECLE (RETURN)"
1570  INPUT I$
1600  PRINT "************REVERSO*************"
1800  PRINT "     A UNICA FORMA DE SE ORDENAROS NUMEROS E' INVERTENDO SUAS POSICOES DE ACORDO COM A QUANTIDA-DE ESCOLHIDA"
1900  PRINT "     SE O NUMERO FOR :"
1950  PRINT "      5 2 6 9 1 3 7 4 8"
2000  PRINT "    O COMPUTADOR PERGUNTARA QUANTOS NUMEROS QUER INVERTER  E  SEVOCE ESCOLHER 3,POR EXEMPLO,O NOVO NUMERO SERA' :"
2100  PRINT "      6 2 5 9 1 3 7 4 8"
2200  PRINT "    ISTO E' : COM OS 3 PRIMEIROS NUMEROS INVERTIDOS"
2300  PRINT "        TECLE (RETURN)"
2301  INPUT I$
2350  RETURN 
3900  REM ################### ROTINA DE VERIFICACAO : JA E' 12345...#######
4000  FOR L = 1 TO 9
4100  IF A(L) = L THEN  LET Q = Q + 1
4200  NEXT L
4300  IF Q = 9 GOTO 5000
4350 Q = 0
4400  RETURN 
4500  REM ##################### RETORNA A UMA NOVA TENTATIVA ###############
5000  HOME : PRINT "========== - CCESOFT - ========="
5100  PRINT : PRINT 
5200  PRINT "          MUITO BEM!!!": PRINT : PRINT : PRINT " O NUMERO E' 1 2 3 4 5 6 7 8 9"
5300  PRINT : PRINT 
5350  PRINT "VOCE CONSEGUIU EM ";M;" INVERSOES"
5360  PRINT 
5400  PRINT : PRINT : INPUT "          <RETURN>";I$: CLEAR : GOTO 14
