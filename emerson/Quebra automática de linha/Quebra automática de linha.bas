0 SW = 32: GOTO 10
1  GOSUB 2: GOTO 7
2 A = SW - ( POS (0) - SW *  INT ( POS (0) / SW)): IF  LEN (M$) <  = A THEN  PRINT M$;: RETURN 
3  FOR B = A + 1 TO 1 STEP  - 1: IF  MID$ (M$,B,1) <  > " " THEN  NEXT : PRINT  LEFT$ (M$,A);:M$ =  MID$ (M$,A + 1): GOTO 2
4  IF B < A THEN  GOSUB 7: PRINT  LEFT$ (M$,B):M$ =  MID$ (M$,B + 1): GOTO 2
5  PRINT  LEFT$ (M$,A);: FOR B = B + 1 TO  LEN (M$): IF  MID$ (M$,B,1) = " " THEN  NEXT : RETURN 
6 M$ =  MID$ (M$,B): GOTO 2
7  IF  POS (0) - SW *  INT ( POS (0) / SW) THEN  PRINT 
8  RETURN 
10 M$ = ""
20  FOR X = 1 TO 128:M$ = M$ +  MID$ ("ABCDE ", RND (1) * 6 + 1,1): NEXT 
30  PRINT M$: INVERSE : GOSUB 1: NORMAL 
40  INPUT X$;: GOTO 10
