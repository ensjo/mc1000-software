0  REM ************************
1  REM **      - CCESOFT -   **
2  REM **  FELIPE ABRAMVEZT  **
3  REM ** VERSAO 1.1   05/85 **
4  REM ************************
5  REM **     SOME SOUNDS    **
6  REM ************************
9  REM ..........CONFECCIONA MENU..........
10  HOME 
11  PRINT  TAB( 11);"- CCESOFT -"
12  PRINT : PRINT  TAB( 3);"   DEMONTRACAO DE SONS"
13  PRINT " DIGITE A,D OU T E TECLE RETURN"
20  PRINT : PRINT : PRINT  TAB( 5);"1-AMBULANCIA    ";: INVERSE : PRINT " A ": NORMAL 
22  PRINT : PRINT  TAB( 5);"2-DISCO VOADOR  ";: INVERSE : PRINT " D ": NORMAL 
24  PRINT : PRINT  TAB( 5);"3-TELEFONE      ";: INVERSE : PRINT " T ": NORMAL 
40  INPUT A$
42  IF A$ = "A" THEN  GOSUB 90
44  IF A$ = "D" THEN  GOSUB 890
46  IF A$ = "T" THEN  GOSUB 1004
50  GOTO 10
60  END 
61  REM ++++++FIM DO PROGRAMA PRINCIPAL++++++++++++++
65  REM *****************************************
66  REM    SUB ROTINA AMBULANCIA
67  REM **********************:::::::************
90  TEMPO 240,3,1
98  FOR F = 1 TO 3
100  FOR I = 1 TO 2
300  SOUND 80,30,1
310  SOUND 73,30,1
400  NEXT I
410  NEXT F
500  RESTORE 
520  SOUND 0,0,1
710  RETURN 
720  REM ******************************************
721  REM       SUB ROTINA DISCO VOADOR
722  REM *****************************************
890  TEMPO 10,3,2
895  FOR N = 1 TO 10
900  FOR I = 1 TO 22
910  READ A
920  SOUND A,1,2
930  NEXT I
940  RESTORE 
950  NEXT N
960  DATA 80,81,82,83,84,85,86,87,88,100,101,102,103,104,105,106,107,108,109,111,112,113
961  SOUND 0,0,2
965  RETURN 
970  REM ******************************************
972  REM     SUB ROTINA TELEFONE
974  REM *********************************:::::::*
1004  FOR X = 1 TO 4
1005  TEMPO 100,1,1
1006  FOR J = 1 TO 70: SOUND 0,0,1: NEXT J
1010  FOR I = 1 TO 9
1039  SOUND 86,8,1
1040  SOUND 87,8,1
1045  SOUND 108,8,1
1050  NEXT I
1065  NEXT X
1067  SOUND 0,0,1
1070  RETURN 
