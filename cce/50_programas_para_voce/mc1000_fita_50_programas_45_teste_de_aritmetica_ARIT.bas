1  REM ************************
2  REM *     - CCESOFT -      *
3  REM * JORGE LUIS S. SANTOS *
4  REM *   VERSAO 1.3  04/85  *
5  REM ************************
6  REM *     ARITMETICA       *
7  REM ************************
9  HOME : INPUT "          (RETURN)";I$
10  HOME 
20 K = 0:P = 0
30  DIM M(4)
40 R =  INT ( RND (8) * 4) + 1
45  IF R > 4 OR R < 1 THEN  PRINT "JORGE"
50 P = P + 1
55  REM #### R LEVA A SUB-ROTINA DA ESCOLHA DA OPERACAO (+,-,*,/)###
60  ON R GOSUB 300,400,500,600
70  PRINT "========== - CCESOFT - ========="
75  PRINT  TAB( 6);"TESTE DE ARITMETICA"
80 S =  INT ( RND (8) * 4 + 1)
90 M(S) = A
100  GOSUB 700 
110  PRINT 
115  PRINT  TAB( 3);"QUESTAO ==> ";X;O$;Y;" = "
125  PRINT 
130  FOR L = 1 TO 4
140  PRINT L;"<=>";M(L)    
150  NEXT L
155  PRINT 
165  PRINT  TAB( 8);"ESCOLHA 1,2,3 OU 4"
170  INPUT N
175  IF N > 4 OR N < 1 GOTO 170
180  IF N = 7 GOTO 900
190  IF M(N) = A GOTO 800
205  PRINT "ERRADO,A ALTERNATIVA CERTA ERA";S
209  REM #### DA LINHA 300 A 640 SAO ESCOLHIDOS OS  NUMEROS DAS OPERACOES##
210  GOTO 825
300 X =  INT ( RND (8) * 90 + 10)
310 Y =  INT ( RND (8) * 90 + 10)
320 A = X + Y
330 O$ = " + " 
340  RETURN 
400 X =  INT ( RND (9) * 80 + 100)
410 Y =  INT ( RND (8) * 95 + 10)
420 A = X - Y
430 O$ = " - "
440  RETURN 
500 X =  INT ( RND (8) * 25 + 4)
510 Y =  INT ( RND (8) * 25 + 4)
520 A = X * Y
530 O$ = " * "
540  RETURN 
600 Y =  INT ( RND (9) * 13 + 2)
610 X =  INT ( RND (8) * 25 + 10) * Y
620 A = X / Y
630 O$ = " / "
640  RETURN 
690  REM ### DA LINHA 700 A 770 ESCOLHA DAS ALTERNATIVAS ##########
700  FOR J = 1 TO 4
710  IF M(J) = A GOTO 730
715 B =  INT ( RND (8) * 10 + 1)
720 M(J) =  INT ( RND (8) * J * B) + A
730  NEXT J
740  FOR U = 1 TO 4
745  FOR W = 1 TO 4
746  IF U = W THEN  GOTO 765
750  IF M(U) = M(W) THEN  LET M(W) = M(W) + 15   
765  NEXT W: NEXT U
770  RETURN 
790  REM #### DA LINHA 800 A 850 TEMOS A DEMONSTRACAO DE ACERTOS #####
800 K = K + 1
815  PRINT  TAB( 8);"*** CORRETO ***" 
825  PRINT  TAB( 08);"CONTAGEM: ";K;"/";P
830  INPUT "        TECLE (RETURN)";I$   
840  HOME 
850  GOTO 40
900 D = K / (P - 1) * 100
910  HOME 
920  FOR O  = 1 TO 10: PRINT : NEXT 
930  PRINT  TAB( 8);"CONTAGEM FINAL: "; INT D 
