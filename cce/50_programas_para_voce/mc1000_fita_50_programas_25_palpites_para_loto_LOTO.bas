0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *         LOTO         *
6  REM ************************
10  HOME 
11  PRINT  TAB( 11)"- CCESOFT -": PRINT 
20  PRINT  TAB( 10)"ESTE PROGRAMA"
30  PRINT  TAB( 5)"ESCOLHE ALEATORIAMENTE"
40  PRINT  TAB( 8)"DE 5 A 10 DEZENAS"
50  PRINT  TAB( 9)"PARA O SEU JOGO"
60  PRINT  TAB( 13)"DA LOTO": PRINT 
89  REM 
90  REM  ENTRADA DE DADOS
91  REM 
100  INPUT "QUANTAS DEZENAS ";D
104  REM 
105  REM  CONSISTENCIA
106  REM 
110  IF D < 5 OR D > 10 THEN  RUN 
115  HOME : PRINT  TAB( 14)"AGUARDE"
116  REM 
117  REM  ESCOLHA DOS PALPITES
118  REM 
120  FOR I = 1 TO D
130 A(I) =  INT ( RND (2) * 100)
140  NEXT I
145  REM     VERIFICA SE HA                PALPITES REPETIDOS   
150  FOR I = 1 TO D - 1
160  FOR J = I + 1 TO D
180  IF A(I) = A(J) THEN A(I) =  INT ( RND (8) * 100): GOTO 150
190  NEXT J: NEXT I
204  REM 
205  REM  SAIDA DE DADOS
206  REM 
210  HOME 
220  PRINT "VOCE PEDIU";D;"PALPITES": PRINT 
230  PRINT "EI-LOS ->   ";A(1)
240  FOR I = 2 TO D
250  PRINT  TAB( 12)A(I)
260  NEXT I
270  PRINT  TAB( 18)"BOA SORTE!"
274  REM 
275  REM  OPCAO DE VOLTA
276  REM 
280  PRINT : INPUT "NOVAMENTE S/N ";A$
281  IF A$ = "N" THEN  HOME : END 
282  HOME : GOTO 100
