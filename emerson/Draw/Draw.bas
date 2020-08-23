0  GOSUB 43: GOTO 1000
1 C$ =  LEFT$ (D$,1): IF C$ = " " THEN D$ =  MID$ (D$,2): GOTO 1
2  RETURN
3  GOSUB 1: IF C$ < "0" OR C$ > "9" THEN V =  - 1: RETURN
4 V =  VAL (C$):D$ =  MID$ (D$,2)
5  GOSUB 1: IF C$ < "0" OR C$ > "9" THEN  RETURN
6 V = V * 10 +  VAL (C$):D$ =  MID$ (D$,2): GOTO 5
7 D(0) = N:D(1) = B:D(2) = V:D(3) = D:D(4) = X:D(5) = Y:D(6) = XX:D(7) = YY:D$(0) = D$:D$(1) = C$: GOSUB 8:N = D(0):B = D(1):V = D(2):D = D(3):X = D(4):Y = D(5):XX = D(6):YY = D(7):D$ = D$(0):C$ = D$(1): RETURN
8 N = 0:B = 0
9  GOSUB 1: IF C$ = "" THEN  RETURN
10 D$ =  MID$ (D$,2)
11  IF C$ = "U" THEN D = 0: GOTO 26
12  IF C$ = "D" THEN D = 4: GOTO 26
13  IF C$ = "L" THEN D = 2: GOTO 26
14  IF C$ = "R" THEN D = 6: GOTO 26
15  IF C$ = "E" THEN D = 7: GOTO 26
16  IF C$ = "F" THEN D = 5: GOTO 26
17  IF C$ = "G" THEN D = 3: GOTO 26
18  IF C$ = "H" THEN D = 1: GOTO 26
19  IF C$ = "M" THEN  GOTO 28
20  IF C$ = "N" THEN N = 1: GOTO 9
21  IF C$ = "B" THEN B = 1: GOTO 9
22  IF C$ = "S" THEN  GOSUB 3:DS = V / 4: GOTO 9
23  IF C$ = "C" THEN  GOSUB 3: COLOR  = V AND 3: GOTO 9
24  IF C$ = "A" THEN  GOSUB 3:DA = V + V AND 6: GOTO 9
25  GOTO 9
26  GOSUB 3: IF V =  - 1 THEN V = 1
27 D = D + DA AND 7:XX =  SGN (D - 4) AND D <  > 0:D = D + 2 AND 7:YY =  SGN (D - 4) AND D <  > 0:X =  PEEK (EX) + XX * V * DS:Y =  PEEK (EY) + YY * V * DS: GOTO 38
28  GOSUB 1: IF C$ = "" THEN  RETURN
29  IF C$ = "+" THEN D$ =  MID$ (D$,2): GOSUB 3:X =  PEEK (EX) + V: GOTO 32
30  IF C$ = "-" THEN D$ =  MID$ (D$,2): GOSUB 3:X =  PEEK (EX) - V: GOTO 32
31  GOSUB 3:X = V
32  GOSUB 1: IF C$ <  > "," THEN  RETURN
33 D$ =  MID$ (D$,2)
34  GOSUB 1: IF C$ = "" THEN  RETURN
35  IF C$ = "+" THEN D$ =  MID$ (D$,2): GOSUB 3:Y =  PEEK (EY) + V: GOTO 38
36  IF C$ = "-" THEN D$ =  MID$ (D$,2): GOSUB 3:Y =  PEEK (EY) - V: GOTO 38
37  GOSUB 3:Y = V
38  IF N THEN XX =  PEEK (EX):YY =  PEEK (EY)
39  IF B THEN  SET X + .5,Y + .5:B = 0: GOTO 41
40  PLOT  TO X + .5,Y + .5
41  IF N THEN  SET XX,YY:N = 0
42  GOTO 9
43  DIM D(7),D$(1):EX = 858:EY = 857:DA = 0:DS = 1: RETURN
1000  GR
1010  FOR K = 1 TO 15
1020 D$ = "BM64,32S" +  STR$ (K) + "A" +  STR$ (K AND 3) + "C" +  STR$ (K AND 3) + "BU7NU1F4NE1D6NF1G4ND1H4NG1U6NH1E4": GOSUB 7
1030  NEXT K
