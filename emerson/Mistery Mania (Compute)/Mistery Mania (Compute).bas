10  REM COPYRIGHT 1987 COMPUTE! PUBLICATIONS, INC. - TODOS OS DIREITOS RESERVADOS
20  CLEAR 2500: DIM P$(9,10),M$(5,6),CL$(13),CG$(13),F$(4),MP$(2),MW$(2)
30  TEXT : HOME :AT$ =  CHR$ (27) + "="
40 SW = 32:S$ = "(C) 1987 COMPUTE! PUBL., INC.": GOSUB 1460:S$ = "TODOS OS DIREITOS RESERVADOS": GOSUB 1460
50  PRINT :S$ = "APRESENTANDO": GOSUB 1460:S$ = "+---------------+": GOSUB 1460:S$ = "! MYSTERY MANIA !": GOSUB 1460:S$ = "+---------------+": GOSUB 1460
60  PRINT :S$ = "O JOGO QUE GERA PROBLEMAS DE": GOSUB 1460:S$ = "LOGICA EM QUE TENTAS SOLUCIONAR": GOSUB 1460:S$ = "ASSASSINATOS MISTERIOSOS.": GOSUB 1460:S$ = "<SPACE> PARA CONTINUAR.": GOSUB 1470
70 S$ = "ESTE JOGO PODE GERAR 32001 MISTERIOS DIFERENTES, NUMERADOS DE 0 A 32000. PODES JOGAR O MESMO JOGO REPETIDAMENTE ESCOLHENDO O MESMO NUMERO A CADA VEZ QUE JOGARES, OU ESCOLHER UM MISTERIO DIFERENTE A CADA VEZ.": GOSUB 1360
80  PRINT : INPUT "QUAL HISTORIA (0-32000)";M: IF M < 0 OR M > 32000 THEN  PRINT "RESPOSTA INVALIDA!": GOTO 80
90 T =  RND ( - M - 1)
100  FOR X = 0 TO M -  INT (M / 100) * 100:Y =  RND (1): NEXT X
110  HOME :S$ = "HA CINCO NIVEIS DE DIFICULDADE, DE 1 A 5. O NIVEL 1 E FACIL, O NIVEL 5 MANTERA SHERLOCK HOLMES OCUPADO POR ALGUM TEMPO. OS DIFERENTES NIVEIS NA VERDADE GERAM JOGOS DIFERENTES PARA O MESMO NUMERO ACIMA.": GOSUB 1360
120  PRINT : PRINT "NIVEL DE DIFICULDADE (1-5)?";
130  CALL 49158:S$ =  CHR$ ( PEEK (283)): IF S$ < "1" OR S$ > "5" THEN 130
140  PRINT S$:L =  VAL (S$)
160  HOME 
170  REM LE DADOS
180  FOR X = 0 TO 9: FOR Y = 0 TO 10: READ P$(X,Y): NEXT Y,X
190  FOR X = 0 TO 2: READ MP$(X): NEXT X: FOR X = 0 TO 2: READ MW$(X): NEXT X
200  REM GERA NOMES DOS SUSPEITOS
210 A =  INT ( RND (1) * 11):B =  INT ( RND (1) * 11):V$ = P$(0,A) + " " + P$(1,B):P$(0,A) = "":P$(1,B) = ""
220  FOR X = 1 TO 5
230 A =  INT ( RND (1) * 11):A$ = P$(0,A):P$(0,A) = "": IF A$ = "" THEN 230
240 B =  INT ( RND (1) * 11):B$ = P$(1,B):P$(1,B) = "": IF B$ = "" THEN 240
250 M$(0,X) = A$ + " " + B$
260  NEXT X
270  FOR X = 0 TO 4:F$(X) = M$(0,X + 1): NEXT X
280  FOR X = 0 TO 9:A =  INT ( RND (1) * 5):B =  INT ( RND (1) * 5):S$ = F$(A):F$(A) = F$(B):F$(B) = S$: NEXT X
290 S$ = "SEIS HOMENS, " + V$ + ", " + F$(0) + ", " + F$(1) + ", " + F$(2) + ", " + F$(3) + " E " + F$(4) + " ESTAVAM JUNTOS EM " + MP$( INT ( RND (1) * 3)) + ". DE REPENTE AS LUZES SE APAGARAM.": GOSUB 1360
300  PRINT :S$ = "QUANDO AS LUZES VOLTARAM A SE ACENDER, " + V$ + " FOI ENCONTRADO " + MW$( INT ( RND (1) * 3)) + ".": GOSUB 1360
305 S$ = "<SPACE> PARA CONTINUAR.": GOSUB 1490
310 S$ = "OS OUTROS DETETIVES INVESTIGARAM. INTERROGARAM OS SUSPEITOS, AS TESTEMUNHAS E PESSOAS QUE CONHECEM OS SUSPEITOS. COLETARAM EVIDENCIAS FISICAS (AMOSTRAS DE CABELO, AMOSTRAS DE FIBRAS ETC.) DA CENA DO CRIME.": GOSUB 1360
315 S$ = "<SPACE> PARA CONTINUAR.": GOSUB 1490
320  REM GERA DADOS DO SUSPEITO
330  FOR P = 1 TO 5
340 A =  INT ( RND (1) * 8 + 2): IF P$(A,0) = "" THEN 340
350 M$(P,0) = P$(A,0):P$(A,0) = ""
360  FOR Y = 1 TO 5
370 B =  INT ( RND (1) * 9 + 1): IF P$(A,B) = "" THEN 370
380 M$(P,Y) = P$(A,B):P$(A,B) = ""
390  NEXT Y
400 M$(P,6) = P$(A,10)
410  NEXT P
420 S$ = "ELES COLETARAM 14 PISTAS, MAS NAO CONSEGUIRAM SOLUCIONAR O CRIME. POR ISSO CHAMARAM O MAIOR DETETIVE DE HOMICIDIOS DA CIDADE: TU! TU RECEBERAS AS PISTAS AGORA E DEVES SOLUCIONAR O ASSASSINATO.": GOSUB 1360
430  REM GERA PISTAS
440 K$ = M$(0,6 - L + (L = 3) - (L = 4)):C$ = M$(4,0) + " " + M$(4,6 - L + (L = 3) - (L = 4))
450 CL$(0) = M$(0,1) + " " + M$(2,0) + " " + M$(2,1)
460 CL$(1) = M$(0,2) + " " + M$(5,0) + " " + M$(5,1)
470 CL$(2) = M$(0,3) + " " + M$(1,0) + " " + M$(1,1)
480 CL$(3) = M$(0,4) + " " + M$(3,0) + " " + M$(3,1)
490 C1 = ( RND (1) < .5): IF C1 OR L = 1 THEN CL$(4) = M$(0,5) + " " + M$(1,0) + " " + M$(1,5): GOTO 500
495 CL$(4) = M$(0,5) + " " + M$(4,0) + " " + M$(4,5)
500 T$ = "O SUSPEITO QUE ":N$ = " NAO E QUEM "
510 A1$ = M$(2,0):A2$ = M$(2,4):B1$ = M$(4,0):B2$ = M$(4,4): GOSUB 1500
520 CL$(5) = T$ + A1$ + " " + A2$ + " " + B1$ + " " + B2$
530 A1$ = M$(1,0):A2$ = M$(1,4): IF  RND (1) < .5 THEN C1$ = N$ + M$(5,0) + " " + M$(5,2): GOTO 560
540 B1$ = M$(5,0):B2$ = M$(5,4)
550 C1$ = " " + B1$ + " " + B2$
560 CL$(6) = T$ + A1$ + " " + A2$ + C1$
570 A1$ = M$(1,0):A2$ = M$(1,4):B1$ = M$(2,0):B2$ = M$(2,4): GOSUB 1500
580 NF = 0: GOSUB 1510:CL$(7) = Q$
590 A1$ = M$(1,0):A2$ = M$(1,2):B1$ = M$(2,0):B2$ = M$(2,2): GOSUB 1500
600  GOSUB 1510:CL$(8) = Q$
610 A1$ = M$(2,0):A2$ = M$(2,2):B1$ = M$(4,0):B2$ = M$(4,2): GOSUB 1500
620  GOSUB 1510:CL$(9) = Q$
630 A1$ = M$(1,0):A2$ = M$(1,5):B1$ = M$(4,0):B2$ = M$(4,5): GOSUB 1500
640  GOSUB 1510:CL$(10) = Q$
650 A1$ = M$(1,0):A2$ = M$(1,1):B1$ = M$(4,0):B2$ = M$(4,3): GOSUB 1500
660 NF =  - 1: GOSUB 1510:CL$(11) = Q$
670 A1$ = M$(2,0):A2$ = M$(2,5):B1$ = M$(3,0):B2$ = M$(3,2): GOSUB 1500
680  GOSUB 1510:CL$(12) = Q$
690 CL$(13) = "O ASSASSINO " + C$:S$ = "<SPACE> PARA VER PISTAS.": GOSUB 1490
700  REM MOSTRA PISTAS
710  FOR X = 0 TO 13:CG$(X) = CL$(X): NEXT X
720  FOR X = 0 TO 25:A =  INT ( RND (1) * 14):B =  INT ( RND (1) * 14):S$ = CG$(A):CG$(A) = CG$(B):CG$(B) = S$: NEXT X
730 S$ = "NAO HA DOIS SUSPEITOS COM " + M$(1,6) + ", " + M$(2,6) + ", " + M$(3,6) + ", " + M$(4,6) + " OU " + M$(5,6) + " IGUAIS.": GOSUB 1360: PRINT 
740  FOR X = 0 TO 13:S$ = CG$(X) + ".": GOSUB 1360: PRINT 
750  IF X = 2 OR X = 6 OR X = 10 THEN S$ = "<SPACE> PARA CONTINUAR.": GOSUB 1490
760  NEXT X
770 S$ = "<SPACE> PARA PRENDER ALGUEM.": GOSUB 1490
780  REM OBTEM A SOLUCAO DO JOGADOR
790 H = 0: HOME : PRINT : PRINT "    AGORA PODES": PRINT 
800  FOR X = 0 TO 4: PRINT  MID$ ( STR$ (X + 1),2,1) + ") PRENDER " + F$(X): NEXT X
810  PRINT "6) DESISTIR SEM VER A SOLUCAO": PRINT "7) VER A SOLUCAO DO MISTERIO"
820  IF L > 1 THEN  PRINT "8) OBTER UMA DICA"
830  PRINT : PRINT "O QUE ESCOLHES?";
840  CALL 49158:Y$ =  CHR$ ( PEEK (283)): IF Y$ < "1" OR Y$ > "8" THEN 840
850  IF L = 1 AND Y$ = "8" THEN 840
860  PRINT Y$:V =  VAL (Y$): PRINT 
870  IF V = 6 THEN S$ = "FIM DE JOGO. ESTE FOI O MISTERIO NUMERO" +  STR$ (M) + ". ANOTA ESTE NUMERO PARA VOLTARES A ESTE JOGO MAIS TARDE SE QUISERES.": GOSUB 1360: GOTO 1230
880  IF V = 7 THEN 940
890  IF V = 8 THEN H =  - 1: GOTO 940
900  IF F$(V - 1) = K$ THEN S$ = "CORRETO! PARABENS. TU FOSTE PROMOVIDO A CHEFE DE POLICIA.": GOSUB 1360: GOTO 1230
910 S$ = "QUE PENA, PRENDESTE O SUSPEITO ERRADO. QUERES VER A SOLUCAO CORRETA (S/N)?": GOSUB 1360
920  GOSUB 1430: IF  NOT YN THEN 1230
930  REM EXPLICA A SOLUCAO E DA DICAS
940  PRINT 
950  HOME 
960 S$ = CL$(4) + ".": IF C1 OR L = 1 THEN S$ = S$ + " " + CL$(10) + ". PORTANTO, " + M$(0,5) + " " + M$(4,0) + " " + M$(4,5) + "."
970  GOSUB 1360
980  IF L = 1 THEN S$ = CL$(13) + ", ENTAO " + K$ + " E O ASSASSINO.": GOSUB 1360: GOTO 1230
990 S$ = CL$(13) + ", ENTAO " + M$(0,5) + " NAO E O ASSASSINO.": GOSUB 1360
1000  IF H THEN  PRINT : PRINT "QUERES OUTRA DICA (S/N)?";: GOSUB 1430: PRINT Y$: IF YN = 0 THEN 790
1010 S$ = CL$(5) + ".": GOSUB 1360:S$ = CL$(7) + ".": GOSUB 1360:S$ = CL$(6): GOSUB 1360:S$ = "PORTANTO, UM SUSPEITO " + M$(2,0) + " " + M$(2,4) + ", " + M$(4,0) + " " + M$(4,4) + ", " + M$(1,0) + " " + M$(1,4) + " E " + C1$ + ".": GOSUB 1360
1020 S$ = "MAS " + CL$(0) + ", " + CL$(1) + ", " + CL$(2) + " E " + M$(0,5) + " " + M$(4,0) + " " + M$(4,5) + ".": GOSUB 1360
1030 S$ = "<SPACE> PARA CONTINUAR.": GOSUB 1490
1040 S$ = "PORTANTO, ESSE SUSPEITO E " + M$(0,4) + ".": GOSUB 1360
1050  IF L = 2 THEN S$ = "COMO " + M$(0,4) + " " + M$(4,0) + " " + M$(4,4) + ", ELE E O ASSASSINO.": GOSUB 1360: GOTO 1230
1060 S$ = "COMO " + M$(0,4) + " " + M$(4,0) + " " + M$(4,4) + ", ELE NAO E O ASSASSINO.": GOSUB 1360
1070  IF H THEN  PRINT "QUERES OUTRA DICA (S/N)?";: GOSUB 1430: PRINT Y$: IF  NOT YN THEN 790
1080 S$ = CL$(8) + ". " + CL$(9) + ".": GOSUB 1360:S$ = "PORTANTO, UM SUSPEITO " + M$(1,0) + " " + M$(1,2) + ", " + M$(2,0) + " " + M$(2,2) + " E " + M$(4,0) + " " + M$(4,2) + ".": GOSUB 1360
1090 S$ = CL$(0) + ", " + CL$(2) + ", " + M$(0,5) + " " + M$(4,0) + " " + M$(4,5) + " E " + M$(0,4) + " " + M$(4,0) + " " + M$(4,4) + ".": GOSUB 1360:S$ = "PORTANTO, ESSE SUSPEITO E " + M$(0,2) + ".": GOSUB 1360
1100  IF L = 3 THEN S$ = "COMO " + M$(0,2) + " " + M$(0,4) + " " + M$(4,2) + ", ELE E O ASSASSINO.": GOSUB 1360: GOTO 1230
1110 S$ = "COMO " + M$(0,2) + " " + M$(4,0) + " " + M$(4,2) + ", ELE NAO E O ASSASSINO.": GOSUB 1360
1120 S$ = "<SPACE> PARA CONTINUAR.": GOSUB 1490
1130  IF H THEN  PRINT "QUERES OUTRA DICA (S/N)?";: GOSUB 1430: PRINT Y$: IF  NOT YN THEN 790
1140  IF C1 THEN S$ = CL$(4) + ".": GOTO 1150
1145 S$ = CL$(10) + ". " + CL$(4) + ". PORTANTO, " + M$(0,5) + " " + M$(1,0) + " " + M$(1,5) + "."
1150  GOSUB 1360
1160 S$ = CL$(2) + ", " + M$(0,4) + " " + M$(1,0) + " " + M$(1,4) + ", " + M$(0,2) + " " + M$(1,0) + " " + M$(1,2) + ".": GOSUB 1360:S$ = "PORTANTO, " + M$(0,1) + " E QUEM " + M$(1,0) + " " + M$(1,1) + ".": GOSUB 1360
1170 S$ = "ISTO SIGNIFICA QUE " + M$(0,1) + " NAO E O SUSPEITO QUE " + M$(4,0) + " " + M$(4,3) + ".": GOSUB 1360
1180 S$ = "COMO " + M$(0,5) + " " + M$(4,0) + " " + M$(4,5) + ", " + M$(0,4) + " " + M$(4,0) + " " + M$(4,4) + " E " + M$(0,2) + " " + M$(4,0) + " " + M$(4,2) + ", " + M$(0,3) + " DEVE SER QUEM " + M$(4,0) + " " + M$(4,3) + ".": GOSUB 1360
1190  IF L = 4 THEN S$ = "COMO O ASSASSINO " + C$ + ", " + K$ + " E O ASSASSINO.": GOSUB 1360: GOTO 1230
1200 S$ = "COMO O ASSASSINO " + C$ + ", " + M$(0,3) + " NAO E O ASSASSINO.": GOSUB 1360
1210  IF H THEN  PRINT "QUERES OUTRA DICA (S/N)?";: GOSUB 1430: PRINT Y$: IF  NOT YN THEN 790
1220 S$ = "POR ELIMINACAO, " + K$ + " E O ASSASSINO.": GOSUB 1360
1230  PRINT : PRINT "QUERES JOGAR OUTRO JOGO (S/N)?";: GOSUB 1430: PRINT Y$: IF YN THEN  RUN 
1235  PRINT : END 
1240  DATA BILL,DAVID,JOHN,TOM,FRED,LARRY,BRIAN,JIM,ROBERT,JACK,MARTY
1250  DATA FOX,MARTIN,SMITH,JONES,HARRISON,CRAIG,DAVIS,EDISON,BROWN,STEVENSON,ALBERTS
1260  DATA TEM,CABELOS NEGROS,UMA CARECA,CABELOS RUIVOS,CABELOS LOIROS,CABELOS CASTANHOS,CABELOS BRANCOS,CABELOS PRATEADOS,"","",COR DO CABELO
1270  DATA VESTIA,UMA CAMISA VERMELHA,UMA CAMISA LARANJA,UMA CAMISA AMARELA,UMA CAMISA VERDE,UMA CAMISA AZUL,UMA CAMISA ROXA,UMA CAMISA BRANCA,UMA CAMISA PRETA,"",COR DA CAMISA
1280  DATA POSSUI,UM CARRO VERMELHO,UM CARRO LARANJA,UM CARRO AMARELO,UM CARRO VERDE,UM CARRO AZUL,UM CARRO ROXO,UM CARRO BRANCO,UM CARRO PRETO,UM CARRO PRATEADO,COR DO CARRO
1290  DATA TEM,"1,52 METRO","1,60 METRO","1,67 METRO","1,75 METRO","1,82 METRO","1,91 METRO","","","",ALTURA
1300  DATA PESA,65 QUILOS,68 QUILOS,73 QUILOS,77 QUILOS,82 QUILOS,86 QUILOS,91 QUILOS,95 QUILOS,100 QUILOS,PESO
1310  DATA CALCAVA,SAPATOS VERMELHOS,SAPATOS BRANCOS,SAPATOS MARRONS,SAPATOS PRETOS,SAPATOS AMENDOA,SAPATOS AZUIS,SAPATOS LARANJAS,"","",COR DOS SAPATOS
1320  DATA TEM UMA ESPOSA CHAMADA,SUE,JOYCE,MARY,BETTY,PAM,CATHY,JILL,JUDY,SALLY,PRIMEIRO NOME DA ESPOSA
1330  DATA PORTAVA,UM GUARDA-CHUVA VERMELHO,UM GUARDA-CHUVA LARANJA,UM GUARDA-CHUVA AMARELO,UM GUARDA-CHUVA VERDE,UM GUARDA-CHUVA ROXO,UM GUARDA-CHUVA BRANCO,UM GUARDA-CHUVA PRETO,"","",COR DO GUARDA-CHUVA
1340  DATA UM RESTAURANTE,UM ELEVADOR,UMA BIBLIOTECA,ESFAQUEADO,ESTRANGULADO,ALVEJADO
1350  REM IMPRIME S$ NA TELA
1360  GOSUB 1370: GOTO 1400
1370 A = SW - ( POS (0) - SW *  INT ( POS (0) / SW)): IF  LEN (S$) <  = A THEN  PRINT S$;: RETURN 
1375  FOR B = A + 1 TO 1 STEP  - 1: IF  MID$ (S$,B,1) <  > " " THEN  NEXT : PRINT  LEFT$ (S$,A);:S$ =  MID$ (S$,A + 1): GOTO 1370
1380  IF B < A THEN  GOSUB 1400: PRINT  LEFT$ (S$,B):S$ =  MID$ (S$,B + 1): GOTO 1370
1390  PRINT  LEFT$ (S$,A);: FOR B = B + 1 TO  LEN (S$): IF  MID$ (S$,B,1) = " " THEN  NEXT : RETURN 
1395 S$ =  MID$ (S$,B): GOTO 1370
1400  IF  POS (0) - SW *  INT ( POS (0) / SW) THEN  PRINT 
1410  RETURN 
1420  REM OBTEM RESPOSTA SIM/NAO
1430  CALL 49158:Y$ =  CHR$ ( PEEK (283)):YN = (Y$ = "S"): IF YN OR Y$ = "N" THEN  RETURN 
1440  GOTO 1430
1460 T = (SW -  LEN (S$)) / 2: IF T >  = 1 THEN  PRINT  TAB( T);
1464  PRINT  LEFT$ (S$,SW);: IF  LEN (S$) < SW THEN  PRINT 
1468  RETURN 
1470  PRINT AT$; CHR$ (14); CHR$ (SW + 0);: POKE 910,0: GOSUB 1460
1480  CALL 49158: IF  CHR$ ( PEEK (283)) <  > " " THEN 1480
1485  PRINT : HOME : RETURN 
1490  PRINT AT$; CHR$ (15); CHR$ (SW + 0);: POKE 910,0:T = (SW -  LEN (S$)) / 2: IF T >  = 1 THEN  PRINT  TAB( T);
1495  PRINT S$;: GOTO 1480
1500  IF  RND (1) < .5 THEN S$ = A1$:A1$ = B1$:B1$ = S$:S$ = A2$:A2$ = B2$:B2$ = S$
1505  RETURN 
1510 N$ = " ": IF NF THEN N$ = " NAO E QUEM "
1520 Q$ = T$ + A1$ + " " + A2$ + N$ + B1$ + " " + B2$: RETURN 
