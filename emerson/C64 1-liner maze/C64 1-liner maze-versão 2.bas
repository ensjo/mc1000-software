10  HGR :X = 0:Y = 0
20  IF  RND (1) < .5 THEN  UNPLOT X,Y TO X + 6,Y + 6: PLOT X,Y + 6 TO X + 6,Y: GOTO 40
30  UNPLOT X,Y + 6 TO X + 6,Y: PLOT X,Y TO X + 6,Y + 6
40 X = X + 8: IF X = 256 THEN X = 0:Y = Y + 8: IF Y = 192 THEN Y = 0
50  GOTO 20
