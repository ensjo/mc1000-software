0  REM 119 CARACTERES (+5=124 BYTES) (INKEY=44 BYTES + HGRPRINT=79 BYTES + BYTE 00 NO FIM=1 BYTE)..................................
1  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 32-63)...........................................................................................................................................................................................................
2  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 63-95)...........................................................................................................................................................................................................
3  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 96-127)..........................................................................................................................................................................................................
4  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 128-159).........................................................................................................................................................................................................
5  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 160-191).........................................................................................................................................................................................................
6  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 192-223).........................................................................................................................................................................................................
7  REM 251 CARACTERES (+5=256 BYTES) (CARACTERES 224-255).........................................................................................................................................................................................................
10  GOTO 1000
20  REM *** ROTINAS RAPIDAS ***
30  REM -- IMPRIME SPRITE TIME T, UNIDADE U --
40 C = 96 + ((T - 1) * 7 + (U - 1)) * 4
50  REM -- IMPRIME SPRITE INICIANDO COM CARACTER C --
60 A =  USR ( CHR$ (C)): POKE CX, PEEK (CX) + 1:A =  USR ( CHR$ (C + 1)): POKE CY, PEEK (CY) + 1:A =  USR ( CHR$ (C + 3)): POKE CX, PEEK (CX) - 1:A =  USR ( CHR$ (C + 2)): POKE CY, PEEK (CY) - 1: RETURN 
70  REM -- IMPRIME SPRITE CASA VAZIA --
80 C = 152: GOTO 50
90  REM -- INKEY$ --
100  IF  PEEK (287) THEN IK$ =  CHR$ ( PEEK (283)): RETURN 
110 IK$ = "": RETURN 
1000  REM *** PRINCIPAL ***
1010  GOSUB 60000: REM PREPARA MC1000
1020  GOSUB 40000: REM PREPARA JOGO
1030  REM -- PARTIDAS --
1040  GOSUB 20010: REM TITULO / 1 OU 2 JOGADORES
1050  GOSUB 21000: REM INICIA PARTIDA
1060  GOSUB 22000: REM DESENHA TABULEIRO
1070  REM -- RODADAS --
1080  GOSUB 10010: REM INICIA RODADA
1090  GOSUB 11000: REM SELECIONA UNIDADE
1100  GOSUB 12000: REM LANCA DADOS
1110  GOSUB 13000: REM SELECIONA DIRECAO
1120  GOSUB 14000: REM EXECUTA MOVIMENTO
1130  GOSUB 16000: REM TERMINA RODADA
1140  IF  NOT GO THEN 1080
1150  GOSUB 23000: REM TERMINA PARTIDA
1160  GOTO 1040
10000  REM *** RODADA ***
10010  REM -- INICIA RODADA --
10020 CT = PL = 2 AND PY = 1: REM VEZ DO COMPUTADOR?
10030  RETURN 
11000  REM -- SELECIONA UNIDADE --
11010  POKE CX,0: POKE CY,22:A =  USR (N$(PL)): POKE CX,8: POKE CY,22:A =  USR (":")
11020 CH = 1: IF CT THEN  GOSUB 11500
11030  IF  NOT CT THEN  POKE CX,0: POKE CY,23:A =  USR ("1=ESQ.  2=DIR.  RETURN=SELECIONA"): INVERSE : POKE CX,0: POKE CY,23:A =  USR ("1"): POKE CX,8: POKE CY,23:A =  USR ("2"): POKE CX,16: POKE CY,23:A =  USR ("RETURN"): NORMAL 
11040  POKE CX,10: POKE CY,22:A =  USR ("          "): POKE CX,10: POKE CY,22:A =  USR (NM$(PL,CH))
11050  IF CT THEN 11100
11060  GOSUB 90: IF IK$ =  CHR$ (13) THEN 11100
11070 A = ( - 1 AND IK$ = "1") OR ( + 1 AND IK$ = "2"): IF A = 0 THEN 11060
11080 CH = CH + A:CH = CH + ( + 7 AND CH = 0) + ( - 7 AND CH = 8): IF F(PL,CH) THEN 11080
11090  FOR I = 1 TO 200: NEXT : GOTO 11040
11100  GOSUB 31000: POKE CX,0: POKE CY,23:A =  USR ("                                "): RETURN 
11500  REM - COMPUTADOR SELECIONA UNIDADE -
11510 CH =  INT ( RND (1) * 7) + 1: IF  NOT F(2,CH) THEN CH(CH) = 1
11520  FOR I = 1 TO 7: IF F(2,I) THEN 11560
11530  IF LC(2,I) < 65 THEN CH(I) = CH(I) + 1
11540  FOR J = 1 TO 7: IF  NOT F(1,J) THEN  IF  ABS (LC(2,I) - LC(1,J)) < 7 THEN CH(I) = CH(I) + 9 - J + (20 AND J = 1)
11550  NEXT J
11560  NEXT I
11570 C = 0: FOR I = 1 TO 7: IF CH(I) > C THEN CH = I:C = CH(CH)
11580 CH(I) = 0: NEXT I: RETURN 
12000  REM -- LANCA DADOS --
12010 B = 0: IF  NOT CT THEN  POKE CX,0: POKE CY,23:A =  USR ("RETURN=PARAR DADO"): POKE CX,0: POKE CY,23: INVERSE :A =  USR ("RETURN"): NORMAL 
12020 CU =  INT ( RND (1) * 6) + 1: POKE CX,12: POKE CY,1:A =  USR ( CHR$ (163 + CU)): IF  NOT CT THEN  FOR I = 1 TO 100: NEXT 
12030  IF CT THEN B = B + 1: IF B <  > 30 THEN 12020
12040  IF  NOT CT THEN  GOSUB 90: IF IK$ <  >  CHR$ (13) THEN 12020
12050  GOSUB 31000: POKE CX,0: POKE CY,23:A =  USR ("                                "): RETURN 
13000  REM -- SELECIONA DIRECAO --
13010  IF CT THEN  GOSUB 13500: GOTO 13050
13020  POKE CX,0: POKE CY,23:A =  USR ("1=AVANCAR"): INVERSE : POKE CX,0: POKE CY,23:A =  USR ("1"): NORMAL 
13030 L = LC(PL,CH): IF L <  > 0 THEN  IF L <  > 65 THEN  POKE CX,11: POKE CY,23:A =  USR ("2=RECUAR"): INVERSE : POKE CX,11: POKE CY,23:A =  USR ("2"): NORMAL 
13040  GOSUB 90:DV = ( + 1 AND IK$ = "1") OR ( - 1 AND IK$ = "2" AND L <  > 0 AND L <  > 65): IF DV = 0 THEN 13040
13050  GOSUB 31000: IF PL = 2 THEN DV =  - DV
13060  FOR I = 22 TO 23: POKE CX,0: POKE CY,I:A =  USR ("                                "): NEXT : RETURN 
13500  REM - COMPUTADOR SELECIONA DIRECAO -
13510 L = LC(2,CH):D = 0:E = 0: FOR I = 1 TO CU: FOR J = 1 TO 7: IF CU > I AND CH >  = J OR F(1,J) THEN 13540
13520  IF LC(2,CH) + I = LC(1,J) THEN D = D + 8 - J + (20 AND J = 1)
13530  IF LC(2,CH) - I = LC(1,J) THEN  IF LC(2,CH) - I > 0 THEN E = E + 8 - J + (20 AND J = 1)
13540  NEXT J,I: IF D < E THEN DV =  + 1: RETURN 
13550 DV =  - 1: IF D = E THEN  IF LC(2,CH) > 32 THEN DV =  + 1
13560  RETURN 
14000  REM -- EXECUTA MOVIMENTO --
14010 W = 0: FOR I = 1 TO CU:P = 1:L1 = L: IF CH = 3 THEN  IF  NOT W THEN  IF PL = 1 AND (L = 10 OR L = 44) OR PL = 2 AND (L = 21 OR L = 55) THEN  GOSUB 15000: IF W THEN 14030
14020 L1 = L: IF L + DV > 0 AND L + DV < 65 OR L + DV = 0 AND PL = 1 OR L + DV = 65 AND PL = 2 THEN L = L + DV
14030  IF L1 > 0 THEN  IF L1 < 65 THEN  POKE CX,SX(L1): POKE CY,SY(L1): GOSUB 70
14040  IF L > 0 THEN  IF L < 65 THEN  POKE CX,SX(L): POKE CY,SY(L):T = PL:U = CH: GOSUB 30
14050  FOR J = 1 TO 7: IF J > CH THEN  IF LC(3 - PL,J) = L THEN  IF  NOT F(3 - PL,J) THEN F(3 - PL,J) =  - 1:P = 2
14060  NEXT J: IF CU > I THEN  ON P GOSUB 32000,33000
14070  NEXT I:LC(PL,CH) = L
14080  FOR I = 7 TO 1 STEP  - 1: IF LC(3 - PL,I) = L THEN  IF  NOT F(3 - PL,I) THEN F(3 - PL,I) =  - 1:P = 2
14090  FOR J = 1 TO 2: IF  NOT F(J,I) THEN  IF LC(J,I) > 0 THEN  IF LC(J,I) < 65 THEN M = LC(J,I): POKE CX,SX(M): POKE CY,SY(M):T = J:U = I: GOSUB 30
14100  NEXT J,I: ON P GOSUB 32000,33000
14110  RETURN 
15000  REM -- PEGA ATALHO? --
15010  IF CT THEN 15500
15020  POKE CX,0: POKE CY,23:A =  USR ("PEGAR ATALHO?  1=SIM  2=NAO"): INVERSE : POKE CX,15: POKE CY,23:A =  USR ("1"): POKE CX,22: POKE CY,23:A =  USR ("2"): NORMAL 
15030  GOSUB 90: IF IK$ <  > "1" AND IK$ <  > "2" THEN 15030
15040  POKE CX,0: POKE CY,23:A =  USR ("                           ")
15050 W = IK$ = "1": IF W THEN L = (54 AND PL = 1 OR 76 AND PL = 2) - L
15060  RETURN 
15500  REM -- COMPUTADOR PEGA ATALHO? --
15510 D = 0:E = 0: FOR J = 1 TO CU - I + 1: FOR K = 1 TO 7
15520  IF CU - I + 1 > J AND CH >  = K OR F(1,K) THEN 15550
15530  IF 76 - LC(2,CH) + DV * J = LC(1,K) THEN D = D + 8 - K + (20 AND K = 1)
15540  IF LC(2,CH) + DV * J = LC(1,K) THEN E = E + 8 - K + (20 AND K = 1)
15550  NEXT K,J:W = E <  = D: IF W THEN L = 76 - L
15560  RETURN 
16000  REM -- TERMINA JOGADA --
16010  FOR I = 1 TO 500: NEXT :PL = 3 - PL:GO = F(PL,1): RETURN 
20000  REM *** PARTIDA ***
20010  REM -- TITULO / 1 OU 2 JOGADORES --
20020  HGR : POKE CX,6: POKE CY,3: INVERSE :A =  USR ("SAMURAIS VS. YOUKAIS"): NORMAL 
20030  POKE CX,9: POKE CY,6: INVERSE :A =  USR ("1"): NORMAL : POKE CX,10: POKE CY,6:A =  USR ("=1 JOGADOR")
20040  POKE CX,9: POKE CY,8: INVERSE :A =  USR ("2"): NORMAL : POKE CX,10: POKE CY,8:A =  USR ("=2 JOGADORES")
20050  GOSUB 90:PY =  VAL (IK$): IF PY <  > 1 AND PY <  > 2 THEN 20050
20060 PL =  INT ( RND (1) * 2) + 1: GOSUB 30010: RETURN 
21000  REM -- INICIALIZA PARTIDA --
21010 GO = 0: REM FIM DE JOGO?
21020 PL =  INT ( RND (1) * 2) + 1: REM JOGADOR DA VEZ
21020  REM TODAS AS UNIDADES EM SUAS BASES E VIVAS
21030  FOR I = 1 TO 7:LC(1,I) = 0:LC(2,I) = 65:F(1,I) = 0:F(2,I) = 0: NEXT I: RETURN 
22000  REM -- DESENHA TABULEIRO --
22010  HGR : FOR I = 1 TO 64: POKE CX,SX(I): POKE CY,SY(I): GOSUB 70: NEXT 
22020  POKE CX,10: POKE CY,0:A =  USR ("DADO"): POKE CX,9: POKE CY,2: INVERSE :A =  USR (" P/ NINJA "): NORMAL : POKE CX,13: POKE CY,21: INVERSE :A =  USR (" P/ BRUXA "): NORMAL 
22030  FOR I = 0 TO 3: POKE CX,1: POKE CY,18 + I: INVERSE :A =  USR ("    "): NORMAL : POKE CX,27: POKE CY,2 + I: INVERSE :A =  USR ("    "): NORMAL : NEXT 
22040  POKE CX,2: POKE CY,19:C = 156: GOSUB 50: POKE CX,28: POKE CY,3:C = 160: GOSUB 50: RETURN 
23000  REM -- TERMINA PARTIDA --
23010  POKE CX,0: POKE CY,22:A =  USR ("FIM DE JOGO.")
23020  POKE CX,0: POKE CY,23:A =  USR ("VITORIA DOS " + N$(3 - PL) + "!")
23030  GOSUB 34000: FOR I = 1 TO 5000: NEXT : RETURN 
30000  REM *** SONS ***
30010  REM -- INICIO DE PARTIDA -- (S8M2000L8O5CCCDEEDEEGAGRAAAAGGABBABO6CCR)
30020  TEMPO 16,2,1
30030  SOUND 96,32,1: SOUND 96,32,1: SOUND 96,32,1: SOUND 98,32,1: SOUND 100,32,1: SOUND 100,32,1: SOUND 98,32,1: SOUND 100,32,1
30040  SOUND 100,32,1: SOUND 103,32,1: SOUND 105,32,1: SOUND 103,32,1: SOUND 0,32,1: SOUND 105,32,1: SOUND 105,32,1: SOUND 105,32,1
30050  SOUND 105,32,1: SOUND 103,32,1: SOUND 103,32,1: SOUND 105,32,1: SOUND 107,32,1: SOUND 107,32,1: SOUND 105,32,1: SOUND 107,32,1
30060  SOUND 112,32,1: SOUND 112,32,1: SOUND 0,32,1: RETURN 
31000  REM -- SELECAO -- (L16O5CE)
31010  SOUND 96,16,1: SOUND 100,16,1: SOUND 0,0,1: RETURN 
32000  REM -- MOVIMENTO DE UNIDADE -- (L16O4GE)
32010  SOUND 87,16,1: SOUND 84,16,1: SOUND 0,0,1: RETURN 
33000  REM -- MORTE DE UNIDADE -- (L16O6EG)
33010  SOUND 116,16,1: SOUND 119,16,1: SOUND 0,0,1: RETURN 
34000  REM -- FIM DE PARTIDA -- (L16O4FEDEFGAAGAAFDEDCGGAGFGDDCC)
34010  SOUND 85,16,1: SOUND 84,16,1: SOUND 82,16,1: SOUND 84,16,1: SOUND 85,16,1: SOUND 87,16,1: SOUND 89,16,1: SOUND 89,16,1
34020  SOUND 87,16,1: SOUND 89,16,1: SOUND 89,16,1: SOUND 85,16,1: SOUND 82,16,1: SOUND 84,16,1: SOUND 82,16,1: SOUND 80,16,1
34030  SOUND 87,16,1: SOUND 87,16,1: SOUND 89,16,1: SOUND 87,16,1: SOUND 85,16,1: SOUND 87,16,1: SOUND 82,16,1: SOUND 82,16,1
34040  SOUND 80,16,1: SOUND 80,16,1: SOUND 0,0,1: RETURN 
40000  REM *** PREPARA JOGO ***
40010  REM -- COORDENADAS DAS CASAS --
40020  DIM SX(65),SY(65):X = 3:Y = 16: RESTORE 40060: READ A
40030  FOR I = 1 TO 32:SX(I) = X:SY(I) = Y:SX(65 - I) = 30 - X:SY(65 - I) = 22 - Y
40040  IF I = A THEN  READ B,A:C =  + 2 AND B = 0
40050 X = X + C:Y = Y + B: NEXT I
40060  DATA 1,-2,8,,10,+2,19,,21,-2,28,,30,+2,
40100  REM -- NOMES DOS TIMES E DAS UNIDADES --
40110  DIM N$(2): DIM NM$(2,7): RESTORE 40120: FOR I = 1 TO 2: READ N$(I): FOR J = 1 TO 7: READ NM$(I,J): NEXT J,I
40120  DATA "SAMURAIS"
40130  DATA "XOGUM","GENJI","NINJA","CAVALEIRO","MONGE","SAMURAI","PEAO"
40140  DATA "YOUKAIS"
40150  DATA "SHINIGAMI","GORGONA","BRUXA","FRANKEN","VAMPIRO","FANTASMA","FOGO-FATUO"
40200  REM -- ETC. --
40210  DIM LC(2,7): REM POSICOES DAS UNIDADES
40220  DIM F(2,7): REM UNIDADE MORTA?
40230  DIM CH(7): REM PLACAR P/ UNIDADE SER ESCOLHIDA PELO COMPUTADOR
40300  REM -- SPRITES: CARACTERES 96+ --
40310  RESTORE 40320: GOSUB 50010: RETURN 
40320  DATA 1616: REM ENDERECO
40330  REM SAMURAIS
40340  DATA 6,84,44,126,32,106,72,88,96,52,42,124,6,86,18,26,88,120,56,80,48,93,45,9,26,94,90,140,138,188,186,144
40350  DATA 6,84,44,94,48,104,40,104,96,52,42,124,14,20,22,20,40,120,40,93,45,93,57,21,22,28,26,180,170,180,154,168
40360  DATA 4,84,44,94,48,108,90,89,45,59,54,108,14,22,26,154,88,92,125,89,41,89,51,18,90,58,190,148,154,156,202,72
40370  DATA 3,86,44,88,41,217,124,254,144,20,58,180,186,207,13,127,188,185,72,79,202,205,74,72,,28,156,148,159,148,154,144
40380  DATA 31,80,48,80,121,192,128,32,138,218,170,218,234,58,26,74,96,96,192,192,128,159,154,16,98,122,42,58,26,158,154,136
40390  DATA 19,81,49,123,64,96,32,96,20,84,182,212,182,226,118,132,32,96,64,64,64,95,91,73,254,212,106,84,106,84,106,32
40400  DATA 15,88,40,125,96,192,144,176,138,218,170,250,58,26,90,66,176,240,48,96,32,118,54,18,122,94,106,52,42,244,234,64
40410  REM YOUKAIS
40420  DATA 7,149,135,66,32,15,33,79,192,82,194,132,8,224,10,228,33,79,44,65,36,81,4,28,10,228,106,4,74,20,66,112
40430  DATA 6,2,98,63,3,83,33,71,192,76,68,228,252,224,194,248,15,123,3,67,39,81,35,7,252,230,226,226,240,68,98,112
40440  DATA ,81,43,19,75,65,127,63,64,212,202,208,194,134,252,252,31,95,7,71,47,79,12,24,252,248,226,228,242,244,50,112
40450  DATA 3,83,41,3,225,191,7,87,192,212,74,208,135,253,224,228,39,87,39,78,12,93,24,56,234,228,226,116,50,56,152,28
40460  DATA 2,83,43,65,15,31,55,39,64,212,202,132,242,248,236,228,71,87,7,78,44,77,12,28,226,226,224,116,50,52,178,56
40470  DATA 1,85,41,80,35,79,43,75,192,212,202,132,226,248,234,232,43,67,43,83,43,83,43,3,234,224,234,228,234,228,234,224
40480  DATA 7,79,31,89,31,63,63,47,224,240,250,152,248,252,252,244,15,79,39,83,41,84,42,,240,240,248,252,255,60,128,
40490  REM CASA VAZIA
40500  DATA ,85,42,85,42,85,42,85,,84,170,84,170,84,170,84,42,85,42,85,42,85,42,,170,84,170,84,170,84,170,
40510  REM ROTULOS DAS BASES
40520  DATA 68,170,138,78,42,170,74,,170,234,234,234,170,170,164,,196,170,170,206,202,170,170,,228,74,72,68,66,74,228,
40530  DATA 41,42,42,18,18,18,17,,40,168,168,168,168,168,16,,164,170,202,142,202,170,170,,228,74,72,68,66,74,228,
40540  REM DADO
40550  DATA 127,99,65,65,65,99,127,,127,79,79,127,121,121,127,,127,95,127,119,127,125,127,
40560  DATA 127,93,127,127,127,93,127,,127,93,127,119,127,93,127,,127,93,127,93,127,93,127,
40570  DATA -1,-1
50000  REM *** UTILITARIOS ***
50010  REM -- MULTIPOKE --
50020  READ A: IF A =  - 1 THEN  RETURN 
50030  READ B: IF B <  >  - 1 THEN  POKE A,B:A = A + 1: GOTO 50030
50040  GOTO 50020
60000  REM *** PREPARA MC1000 ***
60010  POKE 836,0: REM REABILITA PRINT APOS LOAD
60020  PRINT "AGUARDE...": GOSUB 64000: REM INSTALA ROTINAS
60030 CY = 277:CX = 278: REM COORDENADAS PARA HGRPRINT
60040 I =  RND ( - 65536 -  PEEK (263) -  PEEK (264) * 256): REM RANDOMIZE
60050  RETURN 
64000  REM -- INSTALA INKEY & HGRPRINT & CARACTERES 32-95 --
64010  IF  PEEK (841) + 256 *  PEEK (842) <  > 981 THEN  RETURN : REM JA INSTALADO
64020  REM MOVE O PONTEIRO DE INICIO DO PROGRAMA BASIC PARA A LINHA 10, TRANSFORMANDO AS LINHAS REM ACIMA EM ESPACO LIVRE PARA POKES
64030  RESTORE 10:A =  PEEK (957) + 256 *  PEEK (958) + 1: POKE 841,A AND 255: POKE 842,A / 256
64040  RESTORE 64100: GOSUB 50010: RETURN 
64100  REM ROTINA INKEY
64110  DATA 981: REM ENDERECO
64120  DATA 33,14,,57,126,254,93,192,35,126,254,221,192,33,8,,57,17,237,3,115,35,114,201,193,209,51,51,50,31,1,183
64130  DATA 58,27,1,50,28,1,196,223,221,195,97,221
64200  REM ROTINA HGRPRINT
64210  DATA 205,161,232,200,71,35,35,78,35,102,105,229,33,21,1,86,35,94,33,,128,25,235,225,205,134,200,126,214,32,56,41
64220  DATA 229,213,197,38,,111,41,41,41,1,80,4,9,58,82,3,214,1,159,47,79,6,8,126,169,18,35,123,198,32,95,122
64230  DATA 206,,87,16,242,193,209,225,19,35,16,207,195,121,200
64300  REM CARACTERES 32-63
64310  DATA ,,,,,,,,24,24,24,24,24,,24,,108,108,36,72,,,,,108,254,108,108,254,108,,
64320  DATA 24,62,96,60,6,124,24,,98,102,12,24,48,102,70,,56,108,56,112,222,204,118,,24,24,8,16,,,,
64330  DATA 6,12,24,24,24,12,6,,96,48,24,24,24,48,96,,,102,60,126,60,102,,,,24,24,126,24,24,,
64340  DATA ,,,,24,24,8,16,,,,126,,,,,,,,,,24,24,,2,6,12,24,48,96,64,
64350  DATA 56,76,198,198,198,100,56,,24,56,24,24,24,24,126,,124,198,14,60,120,224,254,,126,12,24,60,6,198,124,
64360  DATA 28,60,108,204,254,12,12,,252,192,252,6,6,198,124,,60,96,192,252,198,198,124,,254,198,12,24,48,48,48,
64370  DATA 120,196,228,120,134,134,124,,124,198,198,126,6,12,120,,,24,24,,24,24,,,,24,24,,24,24,8,16
64380  DATA 6,12,24,48,24,12,6,,,,126,,126,,,,96,48,24,12,24,48,96,,124,198,6,28,48,,48,
64400  REM CARACTERES 64-95
64410  DATA 60,102,206,214,206,96,60,,56,108,198,198,254,198,198,,252,198,198,252,198,198,252,,60,102,192,192,192,102,60,
64420  DATA 248,204,198,198,198,204,248,,254,192,192,252,192,192,254,,254,192,192,252,192,192,192,,62,96,192,206,198,102,62,
64430  DATA 198,198,198,254,198,198,198,,60,24,24,24,24,24,60,,30,6,6,6,6,198,124,,198,204,216,240,216,204,198,
64440  DATA 96,96,96,96,96,96,126,,198,238,254,254,214,198,198,,198,230,246,254,222,206,198,,124,198,198,198,198,198,124,
64450  DATA 252,198,198,252,192,192,192,,124,198,198,198,222,204,122,,252,198,198,252,216,204,198,,120,204,192,124,6,198,124,
64460  DATA 126,24,24,24,24,24,24,,198,198,198,198,198,198,124,,198,198,198,238,124,56,16,,198,198,214,254,254,238,198,
64470  DATA 198,238,124,56,124,238,198,,102,102,102,60,24,24,24,,254,14,28,56,112,224,254,,30,24,24,24,24,24,30,
64480  DATA 64,96,48,24,12,6,2,,120,24,24,24,24,24,120,,16,56,108,198,,,,,,,,,,,,255
64600  REM BYTE 0 FINAL
64610  DATA ,-1
64700  REM CONFIGURA FUNCAO USR() PARA HGRPRINT
64710  DATA 771: REM ENDERECO
64720  DATA 195,1,4,-1
64800  REM CONFIGURA HOOK JOB PARA INKEY
64810  DATA 288: REM ENDERECO
64820  DATA 201,213,3,-1
64830  DATA 288: REM ENDERECO
64840  DATA 195,-1
64999  DATA -1
65000  REM *** SAMURAIS VS. YOUKAIS ***
65001  REM JOGO ORIGINAL PARA MSX POR
65002  REM HIROSHI SHIBATA
65003  REM PUBLICADO NA REVISTA MICOM BASIC MAGAZINE, 1988-04, PP. 135-137
65004  REM HTTPS://ARCHIVE.ORG/DETAILS/MICOMBASIC19841994
65005  REM VERSAO PARA MC1000 POR
65006  REM EMERSON JOSE SILVEIRA DA COSTA (ENSJO)
65007  REM 2020-10-20
