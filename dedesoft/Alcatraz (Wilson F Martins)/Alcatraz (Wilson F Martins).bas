1  CLEAR 512,48075: GOSUB 65000: CLEAR 
10 A =  USR (A) INPUT  RUN 
20  DEF  FN HX(X) = X - 48 - (7 AND X > 57): REM VALOR HEXADECIMAL
30 Z$ = "                                ": REM 32 ESPACOS
31 Y$ = "                      ": REM 22 ESPACOS
70 A$ =  CHR$ (96): REM BALA
71 B$ =  CHR$ (97): REM VAZIO - 0
72 C$ =  CHR$ (98): REM BLOCO DE TIJOLO - 1
73 D$ =  CHR$ (99): REM GRADE - 2
74 E$ =  CHR$ (100): REM POLICIAL - 3
75 F$ =  CHR$ (101): REM CADEIRA ELETRICA - 4
76 G$ =  CHR$ (102): REM PORTA - 5
77 H$ =  CHR$ (103): REM ESCURO - 6
78 O$ =  CHR$ (104): REM FOGO - 7
79 J$ =  CHR$ (105): REM ALARME - 08
80 K$ =  CHR$ (106): REM FEIXE DE LUZ - 09
81 L$ =  CHR$ (107): REM CACHORROS - 10
82 M$ =  CHR$ (108): REM TERRA - 11
83 N$ =  CHR$ (109): REM CARCEREIRO - 12
84 R$ =  CHR$ (110): REM VAZIO - 13
85 Q$ =  CHR$ (111): REM PRESIDIARIO / VOCE - 14
86 S$ =  CHR$ (112): REM CURSOR - 15
100  REM INICIO
110  HGR : INVERSE : SET 0,0: FOR Q = 0 TO 23:A =  USR (Z$) PRINT : NEXT Q
170  GOSUB 3030: REM TELA DE ABERTURA
190  DIM PO$(13,11): FOR M = 2 TO 11: FOR N = 0 TO 13: READ PO$(N,M): NEXT N: NEXT M: REM RECEBE DADOS DO LABIRINTO
200 NS = 34: DIM SU$(NS): FOR N = 0 TO NS: READ SU$(N): NEXT : REM RECEBE SUBSTANTIVOS
210 NV = 23: DIM VE$(NV): FOR N = 0 TO NV: READ VE$(N): NEXT : REM RECEBE VERBOS
220 NA = 54:AS = 44: DIM AC$(NA): FOR N = 0 TO NA: READ AC$(N): NEXT : REM RECEBE ACOES
230 PC = 8:PL = 7: REM LINHA E COLUNA DA POSICAO ATUAL DO PERSONAGEM
290  GOSUB 1390: REM ROTINA APAGA 3 LINHAS SUPERIORES
310  GOTO 690: REM IMPRIME LABIRINTO
330  REM AGUARDA MOVIMENTO
340 I$ =  USR (A) INPUT : IF I$ = "" THEN 340
341 Q =  ASC (I$)
350  GOSUB 1390
360  IF Q > 64 AND Q < 91 THEN FR$ = "":I = 0: SET 2,1: GOTO 940
370 MO = 0
380  IF Q = 49 THEN 820: REM "1" - MOSTRA OBJETOS NO LOCAL
390  IF Q = 50 THEN 890: REM "2" - MOSTRA OBJETOS CO JOGADOR
400  IF Q = 48 THEN  STOP : REM "0" - SAI DO JOGO
420  IF Q = 51 THEN MO = 1: GOTO 470: REM "3" - CIMA
430  IF Q = 52 THEN MO = 2: GOTO 470: REM "4" - BAIXO
440  IF Q = 46 THEN MO = 3: GOTO 470: REM "." (">") - DIREITA
450  IF Q = 44 THEN MO = 4: GOTO 470: REM "," ("<") - ESQUERDA
460  GOTO 340
470 I$ =  MID$ (PO$(PC,PL),MO,1)
490  REM MENSAGENS DOS LOCAIS
500  ON  FN HX( ASC (I$)) + 1 GOTO 690,340,520,530,540,550,560,580,590,600,610,630,640,650
520 A =  USR ("AS GRADES DA CELA IMPEDEM SUA   PASSAGEM.") PRINT : GOTO 340
530 A =  USR ("O GUARDA ESTA' AQUI E NAO DEIXA VOCE PASSAR.") PRINT : GOTO 340
540 A =  USR ("AQUI HA' UMA CADEIRA ELETRICA.  VOCE FOI ELETROCUTADO.") PRINT : GOTO 1430
550 A =  USR ("HA' UMA PORTA FECHADA AQUI.") PRINT : GOTO 340
560  IF X(7) AND  LEFT$ (SU$(6),1) = "*" THEN 690
570 A =  USR ("ESTA' MUITO ESCURO AQUI.        VOCE TROPECOU E QUEBROU A PERNA.") PRINT : GOTO 1430
580 A =  USR ("VOCE CAIU NO FOGO QUE RESTOU.   QUE MODO HORRIVEL DE MORRER!") PRINT : GOTO 1430
590 A =  USR ("VOCE DISPAROU UM ALARME!OS GUAR-DAS O PEGARAM! VOCE FOI FUZILADO") PRINT : GOTO 1430
600 A =  USR ("VOCE PASSOU POR UM FEIXE DE LUZ QUE DISPAROU OUTRO ALARME!") PRINT : GOTO 1430
610  IF X(9) AND  LEFT$ (SU$(15),1) = "*" THEN A =  USR ("OS CAES DORMEM...") PRINT : GOTO 690
620 A =  USR ("HA' CINCO CAES AQUI. VOCE FOI   HORRIVELMENTE DEVORADO!") PRINT : GOTO 1430
630 A =  USR ("A PASSAGEM AQUI ESTA BLOQUEADA  POR TERRA") PRINT : GOTO 340
640 A =  USR ("VOCE DEU DE CARA COM O CARCEREI-RO E ELE O DENUNCIOU.") PRINT : GOTO 1430
650 A =  USR ("CONSEGUIMOS SAIR DO PREDIO, MAS AINDA FALTA TRANSPOR O PATIO...") PRINT : GOTO 690
680  REM IMPRIME LABIRINTO
690  INVERSE : SET PC * 2 + 3,PL * 2: IF PC = 9 THEN  IF PL >  = 7 THEN  IF PL <  = 9 THEN A =  USR (H$) PRINT : GOTO 700
691 A =  USR (B$) PRINT 
700  IF MO = 1 THEN PL = PL - 1
710  IF MO = 2 THEN PL = PL + 1
720  IF MO = 3 THEN PC = PC + 1
730  IF MO = 4 THEN PC = PC - 1
740 I$ = PO$(PC,PL):X = PC * 2 + 3:Y = PL * 2
741  SET X - 1,Y - 1:A =  USR (C$) PRINT 
742  SET X + 1,Y + 1:A =  USR (C$) PRINT 
743  SET X + 1,Y - 1:A =  USR (C$) PRINT 
744  SET X - 1,Y + 1:A =  USR (C$) PRINT 
745  SET X,Y:A =  USR (Q$) PRINT 
750  SET X,Y - 1:A =  USR ( CHR$ (97 +  FN HX( ASC ( MID$ (I$,1,1))))) PRINT 
760  SET X,Y + 1:A =  USR ( CHR$ (97 +  FN HX( ASC ( MID$ (I$,2,1))))) PRINT 
770  SET X + 1,Y:A =  USR ( CHR$ (97 +  FN HX( ASC ( MID$ (I$,3,1))))) PRINT 
780  SET X - 1,Y:A =  USR ( CHR$ (97 +  FN HX( ASC ( MID$ (I$,4,1))))) PRINT 
790 X(6) = 0:X(8) = 0:A =  USR (A) SOUND  RUN  =  USR (8) SOUND (0): GOTO 340
810  REM MOSTRA OBJETOS NO LOCAL
820 A =  USR ("AQUI TEM: ") PRINT :I$ =  CHR$ (PC + 60) +  CHR$ (PL + 60)
830 M = 0: FOR N = 0 TO NS
840  IF I$ =  LEFT$ (SU$(N),2) THEN A =  USR ( MID$ (SU$(N),3) + " ") PRINT :M =  NOT 0
850  NEXT : IF  NOT M THEN A =  USR ("NADA IMPORTANTE") PRINT 
860  GOTO 340
880  REM MOSTRA OBJETOS COM JOGADOR
890 A =  USR ("VOCE TEM: ") PRINT :I$ = "**": GOTO 830
910  REM ENTRA COMANDO ESCRITO
920 I$ =  USR (A) INPUT  WAIT :Q =  ASC (I$)
930  IF (Q < 65 OR Q > 90) AND Q <  > 32 THEN 960
940  SET I + 2,1:A =  USR (I$) PRINT  =  USR (S$) PRINT :FR$ = FR$ + I$:I = I + 1: IF I <  > 30 THEN 920
950  GOTO 1010
960  IF Q = 127 THEN  IF I THEN I = I - 1:FR$ =  LEFT$ (FR$,I): SET I + 2,1:A =  USR (S$ + "  ") PRINT : GOTO 920
970  IF Q = 44 OR Q = 46 OR Q = 51 OR Q = 52 THEN  GOSUB 1390: GOTO 420
980  IF Q <  > 13 THEN 920
1010  GOSUB 1390: IF FR$ = "" THEN 340
1020  FOR N =  LEN (FR$) TO 1 STEP  - 1: IF  MID$ (FR$,N,1) = " " THEN  NEXT 
1030 FR$ =  LEFT$ (FR$,N)
1040  FOR N = 1 TO  LEN (FR$)
1050  IF  MID$ (FR$,N,1) <  > " " THEN  NEXT 
1060  FOR M = 0 TO NV
1070  IF VE$(M) =  LEFT$ (FR$,N - 1) THEN I$ =  CHR$ (M + 50): GOTO 1100
1080  NEXT M
1090 A =  USR ("O QUE E' " +  LEFT$ (FR$,N) + " ?") PRINT : GOTO 340
1100  IF  LEN (FR$) = N - 1 THEN 1230
1101 FR$ =  MID$ (FR$,N + 1): FOR N = 1 TO  LEN (FR$)
1110  IF  MID$ (FR$,N,1) <  > " " THEN  NEXT 
1120  FOR M = 0 TO NS
1130  IF  MID$ (SU$(M),3) =  LEFT$ (FR$,N - 1) THEN I$ = I$ +  CHR$ (M + 50): GOTO 1150
1140  NEXT M: GOTO 1090
1150  IF  LEN (FR$) = N - 1 THEN 1230
1151 FR$ =  MID$ (FR$,N + 1)
1160  FOR N =  LEN (FR$) TO 1 STEP  - 1
1170  IF  MID$ (FR$,N,1) <  > " " THEN  NEXT 
1180  FOR M = 0 TO NS
1190  IF  MID$ (SU$(M),3) =  MID$ (FR$,N + 1) THEN I$ = I$ +  CHR$ (M + 50): GOTO 1230
1200  NEXT M:A =  USR ("O QUE E' " +  MID$ (FR$,N + 1) + " ?") PRINT : GOTO 340
1220  REM CODIFICA ACAO EM I$
1230 P$ =  CHR$ (PC + 60) +  CHR$ (PL + 60)
1240  IF  LEN (I$) <  > 1 THEN  GOSUB 1520
1250  FOR N = 0 TO AS
1260  IF I$ = AC$(N) THEN 1330
1270  NEXT 
1280  IF  LEN (I$) = 1 THEN 1320
1290  FOR N = AS + 1 TO NA
1300  IF  LEFT$ (I$,1) = AC$(N) THEN 1330
1310  NEXT 
1320 A =  USR ("ISSO NAO E' POSSIVEL.") PRINT : GOTO 340
1330  ON (N + 1) GOSUB 1620,1630,1630,1650,1660,1660,1660,1670,1680,1700,1720,1730,1740,1770,1790,1700,1800,1820,1840,1860,1890,1910,1930,1940,1970,1990,2010,2030,2060,1630
1340  IF N < 30 THEN 340
1350  ON (N - 29) GOSUB 1630,1620,2100,2160,2170,2180,2190,2200,2960,2230,2240,2260,2270,2280,2310,2330,2370,2450,2520,2610,2650,2740,2760,2920,2940
1360  GOTO 340
1380  REM APAGA 3 LINHAS SUPERIORES
1390  NORMAL : SET 0,1:A =  USR (Z$ + Z$) PRINT 
1400  SET 0,1: RETURN 
1420  REM FINAL DE JOGO
1430 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 62) =  USR (A) SOUND  STOP : TEMPO 16,1,1:A = 200: SOUND 37,A / 2,1: SOUND 37,A / 4 + A / 8,1: SOUND 37,A / 8,1: SOUND 37,A / 2,1: SOUND 40,A / 4 + A / 8,1: SOUND 39,A / 8,1: SOUND 39,A / 4 + A / 8,1: SOUND 37,A / 8,1: SOUND 37,A / 4 + A / 8,1: SOUND 36,A / 8,1: SOUND 37,A / 2,1: SOUND 0,0,1: GOSUB 2990
1440  FOR N = 1 TO 3000: NEXT : GOSUB 1390:A =  USR ("QUER JOGAR NOVAMENTE (S/N) ?") PRINT 
1450 I$ =  USR (A) INPUT 
1460  IF I$ = "S" THEN  RUN 10
1470  IF I$ = "N" THEN  NORMAL : TEXT : HOME : END 
1480  IF I$ = "W" THEN 340
1490  GOTO 1450
1510  REM VERIFICA OBJETOS CITADOS
1520 J =  ASC ( MID$ (I$,2,1)) - 50: IF  LEFT$ (SU$(J),2) = P$ OR  LEFT$ (SU$(J),2) = "**" OR  LEFT$ (SU$(J),2) = ".." OR  LEFT$ (I$,1) = ">" OR  LEFT$ (I$,1) = "9" THEN 1540
1530 I = J: GOTO 1560
1540  IF  LEN (I$) < 3 THEN  RETURN 
1550 I =  ASC ( MID$ (I$,3,3)) - 50: IF  LEFT$ (SU$(I),2) = P$ OR  LEFT$ (SU$(I),2) = "**" OR  LEFT$ (SU$(I),2) = ".." THEN  RETURN 
1560 A =  USR ("NAO ESTOU VENDO " +  MID$ (SU$(I),3)) PRINT : GOTO 340
1580  REM DESAPARECE OBJETO CITADO
1590 SU$(J) = "  " +  MID$ (SU$(J),3): RETURN 
1620  REM SUBROTINAS DAS ACOES
1620 A =  USR ("MAIS DO QUE JA' ESTAO?") PRINT : RETURN 
1630 A =  USR ("ESTA' BEM. FICOU EM TIRAS.") PRINT 
1640 X(1) = 0:X(0) = 0:SU$(1) = "**" +  MID$ (SU$(1),3): GOTO 1590
1650 A =  USR ("OK, MAS E' UM DESPERDICIO.") PRINT : GOTO 1590
1660 A =  USR ("OK, NAO PARECIA SER MUITO UTIL  MESMO...") PRINT : GOTO 1590
1670 A =  USR ("OK, MAS NAO SEI PORQUE FEZ ISSO.") PRINT : GOTO 1590
1680 A =  USR ("AS " +  MID$ (SU$(J),3) + " VIRARAM UMA " +  MID$ (SU$(2),3) + "!") PRINT 
1690 SU$(2) = "**" +  MID$ (SU$(2),3): GOTO 1590
1700 A =  USR ("OK, E ELA VAI ATE' O FUNDO.") PRINT 
1710 X(0) =  NOT 0:SU$(J) = P$ +  MID$ (SU$(J),3): RETURN 
1720 A =  USR ("NAO DA', A " +  MID$ (SU$(I),3) + " E' DE ALVENARIA.") PRINT : RETURN 
1730 A =  USR ("OK...") PRINT : RETURN 
1740  IF  NOT X(1) OR P$ <  > "CC" THEN A =  USR ("NADA OCORREU.") PRINT : RETURN 
1750 A =  USR ("A CHAVE VEIO JUNTO COM ELA!") PRINT 
1760 SU$(3) = "**" +  MID$ (SU$(3),3): RETURN 
1770 A =  USR ("NAO ESTAVA BOA... TALVEZ SEM    TEMPERO.") PRINT 
1780  GOTO 1590
1790 A =  USR ("VOCE E' DOENTE? NECESSITA DE UM PSIQUIATRA? NAO VOU FAZE-LO.") PRINT : RETURN 
1800 A =  USR ("FICOU MUITO ARRUMADA...") PRINT 
1810 SU$(J) = P$ +  MID$ (SU$(J),3): RETURN 
1820 A =  USR ("OK. ACHO QUE AGORA VAI FUNCIONAR") PRINT 
1830 X(2) =  NOT 0: GOTO 1590
1840 A =  USR ("ENCAIXOU PERFEITAMENTE.") PRINT 
1850 X(3) =  NOT 0: GOTO 1590
1860  IF P$ <  > "?F" AND P$ <  > "B@" THEN A =  USR ("NAO VEJO NENHUMA PORTA.") PRINT : RETURN 
1870  IF P$ = "B@" THEN A =  USR ("NAO HA' ESPACO PARA COLOCA-LO.") PRINT : RETURN 
1880 X(4) =  NOT 0:A =  USR ("COUBE SOB ELA.") PRINT :SU$(J) = P$ +  MID$ (SU$(J),3): RETURN 
1890 A =  USR ("ELE O ABAFOU!") PRINT :SU$(J) = P$ +  MID$ (SU$(J),3):SU$(I) = "JJ" +  MID$ (SU$(I),3)
1900 PO$(PC,PL) = "0000": INVERSE : SET PC * 2 + 3,PL * 2 - 1:A =  USR (B$) PRINT : NORMAL : GOTO 3240
1910 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 7) =  USR (8) SOUND (16) =  USR (6) SOUND (0) =  USR (13) SOUND (0) =  USR (12) SOUND (50): FOR Q = 0 TO 1400: NEXT 
1920 A =  USR ("O LOCAL FICOU CHEIO DE FUMACA E VOCE MORREU ASFIXIADO!") PRINT : GOTO 1430
1930 A =  USR ("OK...") PRINT :X(5) =  NOT 0: GOTO 1590
1940 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 62) =  USR (8) SOUND (14) =  USR (1) SOUND (5): FOR Q = 0 TO 255:A =  USR (0) SOUND (Q): NEXT :A =  USR (8) SOUND (0)
1950 A =  USR ("VOCE CONSEGUIU! DESATIVOU O     ALARME!") PRINT 
1960 PO$(PC,PL) = "1000":SU$(I) = "JJ" +  MID$ (SU$(I),3): INVERSE : SET PC * 2 + 3 - 1,PL * 2:A =  USR (B$) PRINT : NORMAL : GOTO 1590
1970 A =  USR ("AGORA ELA ESTA' PRONTA PARA     FUNCIONAR.") PRINT 
1980 X(6) =  NOT 0: RETURN 
1990 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 62) =  USR (A) SOUND  STOP : TEMPO 255,1,1:A = 20: SOUND 89,A,1: SOUND 123,A,1: SOUND 32,A,1: SOUND 82,A,1: SOUND 20,A,1: SOUND 133,A,1: SOUND 71,A,1: SOUND 0,0,1: GOSUB 2990
2000 A =  USR ("ENTROU EM CURTO!") PRINT :PO$(PC,PL) = "0011": INVERSE : SET PC * 2 + 3,PL * 2 - 1:A =  USR (B$) PRINT :SU$(I) = "JJ" +  MID$ (SU$(I),3): GOSUB 1590: GOTO 2970
2010  IF  NOT X(2) THEN A =  USR ("NAO FUNCIONA...") PRINT : RETURN 
2020 A =  USR ("ESTA' ACESA.") PRINT :X(7) =  NOT 0: RETURN 
2030  IF  NOT X(6) THEN A =  USR ("NAO QUER LIGAR...") PRINT : RETURN 
2040 A =  USR ("ESTA' LIGADA.") PRINT :X(8) =  NOT 0
2050 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 62) =  USR (1) SOUND (15) =  USR (8) SOUND (16) =  USR (13) SOUND (14) =  USR (12) SOUND (10): RETURN 
2060  IF  NOT X(3) THEN A =  USR ("ACHO QUE ESTA' QUEBRADO... NAO  FUNCIONA DE MODO ALGUM.") PRINT : RETURN 
2070  IF  NOT X(5) THEN A =  USR ("FALTA ALGUMA COISA PARA SE OUVIRALGO NO GRAVADOR...") PRINT : RETURN 
2080 A =  USR ("TOCA UMA MUSICA SUAVE...DA'     VONTADE DE DORMIR...") PRINT :X(9) =  NOT 0
2090  GOSUB 2990:A =  USR (A) SOUND  STOP : TEMPO 32,1,1:A = 78: SOUND 48,A * 2,1: SOUND 48,A,1: SOUND 50,A,1: SOUND 52,A * 3,1: SOUND 52,A,1: SOUND 53,A,1: SOUND 52,A,1: SOUND 50,A,1: SOUND 48,A,1: SOUND 50,A * 3,1
2091  SOUND 53,A,1: SOUND 53,A * 2,1: SOUND 55,A,1: SOUND 53,A,1: SOUND 52,A * 2,1: SOUND 48,A,1: SOUND 52,A,1: SOUND 50,A,1: SOUND 48,A,1: SOUND 48,A,1: SOUND 43,A,1: SOUND 48,A,1: SOUND 0,0,1: GOSUB 2990
2092  RETURN 
2100  IF P$ <  > "B@" AND P$ <  > "?F" THEN A =  USR ("ONDE ESTA' A PORTA?") PRINT : RETURN 
2110  IF P$ = "?F" OR  NOT X(8) OR  NOT X(6) THEN A =  USR ("ELA ESTA' DESLIGADA.") PRINT : RETURN 
2120 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 60) =  USR (8) SOUND (15) =  USR (9) SOUND (15) =  USR (1) SOUND (2) =  USR (3) SOUND (7) =  USR (0) SOUND (255) =  USR (2) SOUND (255): FOR Q = 1 TO 500: NEXT :A =  USR (1) SOUND (0) =  USR (3) SOUND (5)
2130  FOR Q = 1 TO 1000: NEXT : GOSUB 2990
2140 A =  USR ("A " +  MID$ (SU$(J),3) + " CAIU EM PEDACOS.") PRINT 
2150 PO$(PC,PL) = "0011": INVERSE : SET PC * 2 + 3,PL * 2 - 1:A =  USR (B$) PRINT : RETURN 
2160 A =  USR ("OK...") PRINT :X(6) = 0:A =  USR (A) SOUND  RUN  =  USR (8) SOUND (0): RETURN 
2170 A =  USR ("ESTA' FORA.") PRINT :X(2) = 0:X(7) = 0:SU$(J) = "**" +  MID$ (SU$(J),3): RETURN 
2180 A =  USR ("OK...") PRINT :X(5) = 0:X(9) = 0:SU$(J) = "**" +  MID$ (SU$(J),3): RETURN 
2190 A =  USR ("OK... MAS O QUE VOCE VAI FAZER  COM ELA?") PRINT :X(3) = 0:X(9) = 0:SU$(J) = "**" +  MID$ (SU$(J),3): RETURN 
2200 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 7) =  USR (6) SOUND (10) =  USR (8) SOUND (16) =  USR (13) SOUND (12) =  USR (12) SOUND (10): FOR Q = 0 TO 2500: NEXT :A =  USR (8) SOUND (0): INVERSE : SET PC * 2 + 3,PL * 2 + 1:A =  USR (B$) PRINT 
2210  NORMAL : SET 0,1:A =  USR ("UM BURACO FOI ABERTO.") PRINT 
2220 PO$(PC,PL) = "0010": GOTO 1590
2230 A =  USR ("ESTA' NO CORPO. TEM UM CAIMENTO PERFEITO!") PRINT : RETURN 
2240  IF  NOT X(0) THEN A =  USR ("VOCE FOI DIRETO PARA O FUNDO.   MORTE INSTANTANEA...") PRINT : GOTO 1430
2250  GOTO 3010
2260 A =  USR ("NAO ERA PURA! VOCE MORREU CONTA-MINADO.") PRINT : GOTO 1430
2270 A =  USR ("VOCE FICOU BEBADO E ENTREGOU-SE.VOCE NAO TEM INTELIGENCIA ALGUMA") PRINT : GOTO 1430
2280  IF P$ = "CC" THEN A =  USR ("ABRIU!") PRINT :PO$(PC,PL) = "1100": INVERSE : SET PC * 2 + 3 - 1,PL * 2:A =  USR (B$) PRINT : GOTO 3240
2290  IF P$ = "EB" THEN A =  USR ("ABRIU DE NOVO!") PRINT :PO$(PC,PL) = "0610": INVERSE : SET PC * 2 + 3 - 1,PL * 2:A =  USR (B$) PRINT : GOTO 3240
2300 A =  USR ("NAO ESTOU VENDO GRADES.") PRINT : RETURN 
2310  IF P$ = "B@" OR P$ = "?F" THEN A =  USR ("ESTA TRANCADA.") PRINT : RETURN 
2320 A =  USR ("NAO HA' NENHUMA PORTA POR PERTO.") PRINT : RETURN 
2330  IF  LEN (I$) = 2 THEN A =  USR ("A QUEM?") PRINT : RETURN 
2332  IF  LEN (I$) <  > 2 THEN  IF I <  > 22 AND I <  > 25 AND I <  > 30 THEN A =  USR ("VOCE ESTA' LOUCO? POR QUE NAO   FALA COM PESSOAS?") PRINT : RETURN 
2340  IF I$ <  > ">2H" OR P$ <  > "CC" THEN A =  USR ("OUVIU O QUE DISSE MAS NADA FEZ.") PRINT : RETURN 
2350 A =  USR ("ELE SATISFEZ SEU PEDIDO E SAIU, DEIXANDO A CHAVE LA' FORA...") PRINT 
2360 SU$(I) = "CD" +  MID$ (SU$(I),3):SU$(J) = P$ +  MID$ (SU$(J),3): RETURN 
2370  IF I$ = "?>S" THEN 1990
2380  IF I$ = "?>N" THEN 1910
2390  IF I$ = "?=N" THEN 1890
2400  IF I$ = "?4O" THEN 1700
2410  IF J < 22 AND J <  > 2 THEN A =  USR ("VOCE PERDEU O OBJETO.") PRINT : GOTO 1590
2420  IF J > 21 THEN A =  USR ("VOCE NAO E' TAO FORTE ASSIM...") PRINT : RETURN 
2430  IF P$ <  > "CC" THEN A =  USR ("NADA ACONTECEU...") PRINT : RETURN 
2440  IF  LEFT$ (SU$(22),2) = "CD" THEN A =  USR ("ENCOSTOU NUM OBJETO LA' FORA.   NAO DA' PARA VER O QUE E'.") PRINT :X(1) =  NOT 0: RETURN 
2442 A =  USR ("NADA ACONTECEU, AINDA...") PRINT : RETURN 
2450  IF I <  > 9 THEN A =  USR ("COM O QUE?!") PRINT : RETURN 
2460  IF J > 21 THEN A =  USR ("NAO DA' PARA FAZE-LO.") PRINT : RETURN 
2470  IF J = 10 AND X(4) THEN 2490
2480 A =  USR ("SE DESFEZ EM CINZAS...") PRINT : GOTO 1590
2490 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 7) =  USR (6) SOUND (30) =  USR (8) SOUND (16) =  USR (13) SOUND (5) =  USR (12) SOUND (30): INVERSE : SET PC * 2 + 3,PL * 2 - 1:A =  USR (B$) PRINT 
2500  FOR Q = 0 TO 2000: NEXT 
2510  NORMAL : SET 0,1:A =  USR ("O " +  MID$ (SU$(28),3) + " ABRIU UMA PASSAGEM!") PRINT :PO$(PC,PL) = "0011": RETURN 
2520  IF J > 21 THEN A =  USR ("NAO DA'.") PRINT : RETURN 
2530 Q = 0: FOR N = 0 TO NS: IF  LEFT$ (SU$(N),1) = "*" THEN Q = Q + 1
2540  NEXT 
2550  IF Q > 5 THEN A =  USR ("NAO DA' PARA PEGAR MAIS NADA.") PRINT : RETURN 
2560  IF  LEFT$ (SU$(J),1) = "*" THEN A =  USR ("VOCE JA' ESTA' CARREGANDO ESSE  OBJETO.") PRINT : RETURN 
2570 SU$(J) = "**" +  MID$ (SU$(J),3):A =  USR ("OK.") PRINT 
2580  IF J = 2 THEN X(0) = 0
2590  IF J + 10 THEN X(4) = 0
2600  RETURN 
2610  IF  LEFT$ (SU$(J),1) <  > "*" THEN A =  USR ("VOCE NAO CARREGA " +  MID$ (SU$(J),3)) PRINT : RETURN 
2620 A =  USR ("ESTA NO CHAO.") PRINT 
2630 SU$(J) = P$ +  MID$ (SU$(J),3)
2640  RETURN 
2650  IF I <  > 22 AND I <  > 25 AND I <  > 30 AND I <  > 32 THEN A =  USR ("ACHO QUE A PRISAO AFETOU SEU QI.") PRINT : RETURN 
2660  IF I$ = "CCR" THEN A =  USR ("OS CAES DEVORARAM SEU BRACO.    ASSIM FICA IMPOSSIVEL A FUGA.") PRINT : GOTO 1430
2670  IF I$ = "C2K" THEN A =  USR ("ELE ACEITOU E DEU DINHEIRO EM   TROCA A VOCE!") PRINT :SU$(5) = "**" +  MID$ (SU$(5),3): GOTO 1590
2680  IF I$ = "C7H" THEN A =  USR ("ELE ACEITOU E DEIXOU VOCE PASSAR") PRINT :SU$(5) = "IG" +  MID$ (SU$(5),3):SU$(22) = "JJ" +  MID$ (SU$(22),3): INVERSE : SET PC * 2 + 3,PL * 2 + 1:A =  USR (B$) PRINT :PO$(PC,PL) = "1040": GOTO 3240
2690  IF I$ = "C7P" THEN A =  USR ("ELE NAO ERA SUBORNAVEL. VOCE FOIMORTO.") PRINT : GOTO 1430
2700  IF I$ = "CDP" THEN A =  USR ("ELE ACEITOU E FOI EMBORA!") PRINT :PO$(PC,PL) = "1001": INVERSE : SET PC * 2 + 3 + 1,PL * 2:A =  USR (B$) PRINT : GOSUB 3240: GOTO 1590
2710  IF  LEFT$ (SU$(J),1) <  > "*" THEN A =  USR ("MAS VOCE NAO CARREGA ESSE OBJETO") PRINT : RETURN 
2720 A =  USR ("ELE ACEITOU, MAS NADA ACONTECEU.") PRINT 
2730  GOTO 1590
2740  IF J <  > 22 AND J <  > 25 AND J <  > 30 AND J <  > 32 THEN A =  USR ("SEU LUGAR NAO E AQUI, E NO      MANICOMIO.") PRINT : RETURN 
2750 A =  USR ("VOCE FOI MORTO ANTES QUE PUDESSEFAZER ALGO.") PRINT : GOTO 1430
2760  IF J = 7 THEN A =  USR ("E' ELETRICA E MUITO POTENTE.") PRINT : RETURN 
2770  IF J = 8 THEN A =  USR ("E' DE 1,5V.") PRINT : RETURN 
2780  IF J = 9 THEN A =  USR ("A CAIXA ESTA' CHEIA.") PRINT : RETURN 
2790  IF J = 11 THEN A =  USR ("E' BEM GROSSO.") PRINT : RETURN 
2800  IF J = 14 THEN A =  USR ("E' UMA FITA DE MUSICA.") PRINT : RETURN 
2810  IF J = 15 THEN A =  USR ("E' DE FITAS CASSETE.") PRINT : RETURN 
2820  IF J = 19 THEN A =  USR ("E' DE BORRACHA.") PRINT : RETURN 
2830  IF J = 20 THEN A =  USR ("E' PINGA, E DAS BOAS!") PRINT : RETURN 
2840  IF J = 23 THEN A =  USR ("E' FEITA DE TIJOLOS.") PRINT : RETURN 
2850  IF J = 24 THEN A =  USR ("SAO DE ACO MUITO RESISTENTE.") PRINT : RETURN 
2860  IF J = 26 THEN A =  USR ("E' DE 127V.") PRINT : RETURN 
2870  IF J = 28 THEN A =  USR ("VOCE SE QUEIMOU! NAO DEVIA      EXAMINA-LO!") PRINT : GOTO 1430
2880  IF J = 29 THEN A =  USR ("E' MUITO FUNDO. NAO DA' PARA VERSEU FINAL.") PRINT : RETURN 
2890  IF J = 32 THEN A =  USR ("SAO CAES POLICIAIS.") PRINT : RETURN 
2900  IF J = 22 OR J = 25 OR J = 30 THEN A =  USR ("VOCE FOI MORTO... ELE NAO GOSTA DE SER EXAMINADO.") PRINT : GOTO 1430
2910 A =  USR ("E' COMUM.") PRINT : RETURN 
2920  IF J <  > 22 AND J <  > 25 AND J <  > 30 AND J <  > 32 THEN A =  USR ("SO UMA PESSOA COM SUA MENTALI-  DADE DIRIA TAL COISA.") PRINT : RETURN 
2930 A =  USR ("VOCE ESTA' MORTO. ELE NAO GOSTA DE AMEACAS.") PRINT : GOTO 1430
2940  IF J < 22 THEN A =  USR ("OK... ESTA' FEITO...") PRINT : GOTO 1590
2950 A =  USR ("NAO DA'.") PRINT : RETURN 
2960 A =  USR ("OK...") PRINT 
2970 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 7) =  USR (8) SOUND (16) =  USR (13) SOUND (0) =  USR (6) SOUND (28) =  USR (12) SOUND (20): RETURN 
2990 A =  USR (A) SOUND  RUN : FOR B = 0 TO 13:A =  USR (B) SOUND ((B = 7 AND 127) OR (B = 12 AND 255)): NEXT : RETURN 
3010  GOSUB 1390:A =  USR ("VOCE SAIU POR UMA PASSAGEM SE-  CRETA! VOCE ESCAPOU DE ALCATRAZ!") PRINT :A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 62)
3020 A =  USR (A) SOUND  STOP : TEMPO 32,1,1:A = 76: SOUND 84,A,1: SOUND 84,A,1: SOUND 85,A,1: SOUND 87,A,1: SOUND 87,A,1: SOUND 85,A,1: SOUND 84,A,1: SOUND 82,A,1: SOUND 80,A,1: SOUND 80,A,1: SOUND 82,A,1: SOUND 84,A,1: SOUND 84,A + A / 2,1: SOUND 82,A / 2,1: SOUND 82,A * 2,1
3021  SOUND 84,A,1: SOUND 84,A,1: SOUND 85,A,1: SOUND 87,A,1: SOUND 87,A,1: SOUND 85,A,1: SOUND 84,A,1: SOUND 82,A,1: SOUND 80,A,1: SOUND 80,A,1: SOUND 82,A,1: SOUND 84,A,1: SOUND 82,A + A / 2,1: SOUND 80,A / 2,1: SOUND 80,A * 2,1: GOTO 3020
3029  REM TELA DE ABERTURA
3030  RESTORE 3150: READ X,Y
3040  FOR N = 0 TO 65: READ A,B: UNPLOT X,Y TO A,B:X = A:Y = B: NEXT 
3050  UNPLOT 20,114 TO 208,114
3070  SET 13,15:A =  USR ("A FUGA IMPOSSIVEL") PRINT 
3072  SET 1,1:A =  USR ("PROGRAMA DE WILSON F. MARTINS") PRINT 
3075  SET 1,2:A =  USR ("ADAPTACAO MC-1000 BY DEDESOFT") PRINT 
3080  SET 3,22:A =  USR ("TECLE <RETURN> PARA COMECAR") PRINT 
3090  IF  USR (A) INPUT  <  >  CHR$ (13) THEN 3090
3100 A =  USR (A) SOUND  RUN :X = 2:Y = 7: FOR N = 0 TO 9: SET X,Y:A =  USR (A$) PRINT :X = X + 3:Y = Y + 1
3110 A =  USR (7) SOUND (64 OR 7) =  USR (8) SOUND (16) =  USR (6) SOUND (25) =  USR (13) SOUND (0) =  USR (12) SOUND (20)
3120  FOR M = 0 TO 25: NEXT M,N
3121  SET 0,0: FOR Q = 0 TO 23:A =  USR (Z$) PRINT : NEXT Q
3122  RETURN 
3149  REM TELA DE ABERTURA
3150  DATA 44,78,44,78,16,114,28,114,36,103,36,114,44,114,44,78
3160  DATA 48,78,48,114,72,114,64,106,64,106,56,106,56,78,48,78
3170  DATA 72,78,72,114,96,114,88,106,80,106,80,86,88,86,96,78,72,78
3180  DATA 124,78,96,114,108,114,116,103,116,114,124,114,124,78
3190  DATA 124,78,132,86,136,86,136,114,144,114,144,86,148,86,156,78,124,78
3210  DATA 156,78,156,114,164,114,164,98,172,114,180,114,172,98,180,98,172,78,156,78
3220  DATA 208,78,180,114,192,114,200,103,200,114,208,114,208,78
3230  DATA 208,78,240,78,224,106,232,106,240,114,208,114,224,86,216,86,208,78
3240 A =  USR (A) SOUND  RUN  =  USR (7) SOUND (64 OR 62) =  USR (A) SOUND  STOP : TEMPO 255,1,1:A = 16: SOUND 64,A,1: SOUND 69,A,1: SOUND 75,A,1: SOUND 0,0,1: GOSUB 2990: RETURN 
3260  REM DADOS DO LABIRINTO
3270  DATA 1001,1010,1001,1100,1100,1009,1100,1100,1100,1100,1010,10C1,1100,1010
3280  DATA 0011,0011,0101,1100,1010,0011,1001,1010,1011,1011,0011,0101,1010,0011
3290  DATA 0011,0011,1101,1100,0110,0011,5011,0101,0110,0011,0011,1011,0011,0011
3300  DATA 0011,0011,1001,1000,1010,8011,0001,1100,1100,0010,0011,0011,0011,0011
3310  DATA 0111,0101,0010,0011,0011,0011,0011,1101,1100,0612,0011,0101,0010,0011
3320  DATA 1001,1010,0011,0011,0011,0011,0001,1102,1110,6611,0011,1011,0011,0111
3330  DATA 0011,0011,0111,0011,0101,0110,0101,1340,1111,6611,0011,0101,0100,1010
3340  DATA 0011,0011,1001,7000,1010,1101,1100,0100,1010,6111,0011,1001,1100,0B10
3350  DATA 0011,0011,0011,5011,0101,1100,1100,1110,0011,1001,0110,0011,1001,0110
3360  DATA 0111,0101,0110,0101,1100,1100,1100,1100,0110,01A1,11DA,0110,0101,1110
3380  REM SUBSTANTIVOS
3390  DATA JJCOMIDA,JJTIRAS,JJCORDA,JJCHAVE,DCLENCOL,IGDINHEIRO,AELANTERNA,E?SERRA,D?PILHA,EEFOSFOROS,AGJORNAL,CBCOBERTOR,<GAGUA,AEREVOLVER,<BFITA,>@GRAVADOR,G@PA,>DOSSO,D?BARALHO,FAROUPA,GCBEBIDA,CFESPELHO
3400  DATA CCGUARDA,DCCAMA,..GRADES,CBPRESIDIARIO,B@TOMADA,..PORTA,?EFOGO,ICPOCO,G>CARCEREIRO,IETERRA,EGCAES,AAALARME,A>LUZ
3420  REM VERBOS
3430  DATA RASGUE,AMARRE,PUXE,COMA,COLOQUE,LIGUE,CORTE,TIRE,CAVE,DISPARE,VISTA,ENTRE,PECA,JOGUE,QUEIME,PEGUE,SOLTE,DE,MATE,EXAMINE,AMEACE,QUEBRE,BEBA,ABRA
3450  REM ACOES
3460  DATA 23,24,26,27,2<,2=,2D,2E,33,34O,34I,34J,44,52,5C,64O,66I,"6:8","6:A",6<M,6=N,6>N,6@A,6GT,69L,6>S,78,79,7A,86,84,83,8M9,99L,"9:8",9@A,"9:A",":QB",;?,<E,=O,H>,HF,IJ5,IM
3470  DATA >,?,@,A,B,C,D,E,F,G
65000  REM INSTALADOR
65010  POKE 836,0: TEXT : HOME : PRINT "INSTALANDO ROTINAS USR. AGUARDE.";
65020  RESTORE 65100
65030  READ E: IF E =  - 1 THEN  PRINT "OK.": RETURN 
65040  READ B: IF B =  - 1 THEN 65030
65050  POKE E,B:E = E + 1: GOTO 65040
65100  REM CONFIGURA USR()
65110  DATA 771
65120  DATA 195,204,187,-1
65130  REM PACOTE DE ROTINAS USR
65140  DATA 48076
65150  DATA 225,227,126,254,133,194,96,188,205,160,221,254,138,40,65,254,144,55,40,60,254,148,32,23,205,160,221,229,58,46,1,183,32,5,205,71,195,24,245,205,57,195,225,62,255,24,3,205,39,192,227,50,31,1,183,32,8,33,144,3,54,1,195,29,229,62,1,205,230,230,58,27
65160  DATA 1,42,164,3,119,195,20,231,229,33,32,1,17,47,188,1,50,188,205,92,189,225,205,160,221,227,233,,,,195,53,188,33,14,,57,126,254,93,192,35,126,254,221,192,33,8,,57,54,76,35,54,188,201,193,209,51,51,50,31,1,183,58,27,1,50,28,1,196,223,221,195,97,221
65170  DATA 254,153,32,65,205,160,221,254,138,40,32,254,144,55,40,27,205,156,233,213,205,17,220,40,205,153,233,209,87,205,17,220,41,243,123,211,32,122,211,96,251,227,233,229,33,56,,17,160,188,1,163,188,243,205,92,189,251,225,205,160,221,227,233,,,,237,77,254
65180  DATA 151,194,89,189,205,160,221,254,220,202,78,189,227,229,205,161,232,200,71,35,35,78,35,102,105,237,91,89,3,122,83,95,205,134,200,126,35,254,10,32,6,30,32,205,18,189,175,214,32,56,47,79,205,18,189,121,229,213,197,33,,128,25,235,38,,111,41,41,41,1
65190  DATA 119,189,9,58,82,3,214,1,159,47,79,6,8,126,169,18,35,123,198,32,95,16,246,193,209,225,19,16,191,99,106,34,89,3,195,121,200,123,230,224,40,9,7,7,7,130,87,123,230,31,95,122,214,24,216,22,23,229,213,197,60,254,24,56,2,62,24,71,14,,17,,128,98,107,9,62
65200  DATA 24,144,40,5,197,71,237,176,193,98,107,113,19,11,237,176,193,209,225,201,205,160,221,227,229,17,119,189,195,38,230,195,72,216,26,48,7,235,1,118,189,254,1,159,183,192,197,229,1,3,,197,237,176,193,209,225,237,176,201,,,,,,,,,,8,8,8,8,8,,8,,20,20,20,
65210  DATA ,,,,20,20,54,,54,20,20,,8,30,32,28,2,60,8,,50,50,4,8,16,38,38,,16,40,40,16,42,36,26,,24,24,24,,,,,,8,16,32,32,32,16,8,,8,4,2,2,2,4,8,,,8,28,62,28,8,,,,8,8,62,8,8,,,,,,48,48,16,32,,,,,62,,,,,,,,,,48,48,,2,2,4,8,16,32,32,,24,36,36,36,36,36,24,,8,24
65220  DATA 8,8,8,8,28,,28,34,2,28,32,32,62,,28,34,2,12,2,34,28,,4,12,20,62,4,4,4,,62,32,60,2,2,34,28,,28,32,32,60,34,34,28,,62,2,4,8,16,32,32,,28,34,34,28,34,34,28,,28,34,34,30,2,2,28,,,24,24,,24,24,,,24,24,,24,24,8,16,,4,8,16,32,16,8,4,,,,62,,62,,,,16,8,4
65230  DATA 2,4,8,16,,24,36,4,8,8,,8,,28,34,2,26,42,42,28,,8,20,34,34,62,34,34,,60,18,18,28,18,18,60,,28,34,32,32,32,34,28,,60,18,18,18,18,18,60,,62,32,32,60,32,32,62,,62,32,32,60,32,32,32,,30,32,32,38,34,34,30,,34,34,34,62,34,34,34,,28,8,8,8,8,8,28,,2,2,2,2
65240  DATA 34,34,28,,34,36,40,48,40,36,34,,32,32,32,32,32,32,62,,34,54,42,42,34,34,34,,34,50,42,38,34,34,34,,62,34,34,34,34,34,62,,60,34,34,60,32,32,32,,28,34,34,34,42,36,26,,60,34,34,60,40,36,34,,28,34,16,8,4,34,28,,62,8,8,8,8,8,8,,34,34,34,34,34,34,28,,34
65250  DATA 34,34,20,20,8,8,,34,34,34,42,42,54,34,,34,34,20,8,20,34,34,,34,34,20,8,8,8,8,,62,2,4,8,16,32,62,,56,32,32,32,32,32,56,,32,32,16,8,4,2,2,,14,2,2,2,2,2,14,,8,20,34,,,,,,,,,,,,,255
65260  REM SPRITES
65270  DATA 16,65,24,60,60,25,64,1,,,,,,,,,254,254,254,,239,239,239,,24,24,24,24,24,24,24,24
65280  DATA 24,24,60,90,153,24,36,36,2,2,2,2,62,62,34,34,,129,255,255,2,6,,,255,255,255,255,255,255,255,255
65290  DATA 8,40,58,122,126,126,62,28,7,15,5,7,7,,,,24,24,24,24,24,24,24,24,24,60,126,255,231,195,195,195
65300  DATA 6,14,31,125,223,246,187,239,24,24,60,90,153,24,36,36,,,,,,,,,24,24,60,90,153,24,36,36
65310  DATA 84,40,84,40,84,,,
65320  DATA -1,-1
