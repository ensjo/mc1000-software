10 HGR
20 SET 0,0: DRAW + 254,0: DRAW 0, + 190: DRAW - 254,0: DRAW 0, - 190
30 FOR X = 2 TO 252 STEP 2
40 R = 3: FOR Y = 2 TO 188 STEP 2
50 SET X,Y
60 ON RND (1) * R GOTO 80,90
70 DRAW 0, + 1:R = 2: GOTO 100
80 DRAW + 1,0:R = 3: GOTO 100
90 DRAW 0, - 1:R = 3
100 NEXT Y,X
110 GOTO 110