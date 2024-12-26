0 SW = 32: GOTO 10
1  GOSUB 2: GOTO 7
2 L =  LEN (T$):A = 1
3 B = A + SW -  PEEK (349): IF B > L THEN  PRINT  MID$ (T$,A);: RETURN 
4  IF  MID$ (T$,B,1) = " " THEN  PRINT  MID$ (T$,A,SW);: FOR A = B + 1 TO L: ON  MID$ (T$,A,1) <  > " " AND 1 GOTO 3: NEXT A: RETURN 
5  FOR B = B - 1 TO A STEP  - 1:C$ =  MID$ (T$,B,1): IF C$ <  > " " THEN  IF C$ <  > "," THEN  IF C$ <  > "." THEN  IF C$ <  > ";" THEN  NEXT B:B = A + SW -  PEEK (349): PRINT  MID$ (T$,A,B - A);:A = B: GOTO 3
6 B = B + 1: PRINT  MID$ (T$,A,B - A); SPC(  PEEK (349) <  > 0 AND SW -  PEEK (349));:A = B: GOTO 3
7  IF  PEEK (349) THEN  PRINT 
8  RETURN 
10 T$ = ""
20  FOR X = 1 TO 200:T$ = T$ +  MID$ ("ABCDE ,.;", RND (1) * 9 + 1,1): NEXT 
30  PRINT T$: PRINT  TAB( 5);: INVERSE : GOSUB 1: NORMAL 
40 T$ = "": INPUT T$: IF T$ <  > "" THEN 30
50  GOTO 10
