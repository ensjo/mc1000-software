10  REM ""
20  DATA ""
30  DATA ""
40  DATA "                      XXXX"
50  DATA "                     X    XX"
60  DATA "                    X  XXX  X                XXXXX"
70  DATA "                   X  X---X  X            XXX     XX"
80  DATA "                XXXX X-----X XXX      XXXX          XX"
90  DATA "              XX***X X----X  XXXXXXXXX                XX XXX"
100  DATA "            XX******X XXXX  X                           XXX X"
110  DATA "           X********XX    XX     X                      XXXXX"
120  DATA "          X*********//XXXX       X                      XXXX"
130  DATA "         X*********//***X                             XX"
140  DATA "        X*********//****X          XXXXXXXXXXXXXXXXXX/"
150  DATA "        X*****XXX//****X          X"
160  DATA "        X****X###X*****X         X"
170  DATA "        X****X####X****X        X"
180  DATA "         X***X####X****X        X                    XX"
190  DATA "         X****X###X****X        X                 XXX  XX"
200  DATA "          X****XXX******X        X               X  X X  X"
210  DATA "          X*************X         X              XX X  XXXX"
220  DATA "           X*************X         XXXXXXXX\     XX   XX  X"
230  DATA "            XX************XX              X     X    X  XX"
240  DATA "              XX************XXXX   XXXXXX/     X     XXXX"
250  DATA "                XXX*************XXXXX         X     X"
260  DATA "                   XXXXXXXXXXXXX X***X       X     X"
270  DATA "                                X***X X     X     X"
280  DATA "                               X*X*X   XXX X     X"
290  DATA "                               X**X       XXX   X"
300  DATA "                              X**XX          XXX"
310  DATA "                              X**XX  X          XXX"
320  DATA "                             X**XX    X            XX"
330  DATA "                             X**XXX    X             X"
340  DATA "                            X**XX  X    X             X"
350  DATA "                            X**XX   X    X             X"
360  DATA "                           X**X X    X   XXXX          X"
370  DATA "                           X**X X    XX     X          X"
380  DATA "                          X**XX X   X     XX          X"
390  DATA "                          X**XX  X   XXX   X         X"
400  DATA "                         X**XX    XX   XXXX       XXX"
410  DATA "                        X**X*X      XXXX      X     X"
420  DATA "                       X***X*X          X     X     X"
430  DATA "         =======XXXXXXX***X*X           X     X      XXXXXXXX\"
440  DATA "                X*********X*X      XXXXXX      XXXXXXXX\      )"
450  DATA "           =====XXXXXXXXXX**X     X                     )  \  )"
460  DATA "             ====X*********X     X               \  \   )XXXXX"
470  DATA "        =========XXXXXXXXXX       XXXXXXXXXXXXXXXXXXXXXX"
480  DATA "END"
1000  GR : OUT 128,98: REM SET SEMIGRAPHICS 6 MODE, WHITE PALLETTE, VRAM FILLED WITH ZEROES
1010 V = 32768: REM VRAM ADDRESS FOR POKE-ING
1020 ED = 0: REM END-OF-DATA FLAG
1030  FOR Y = 0 TO 15: REM FOR EVERY LINE ON THE SCREEN...
1040  FOR CY = 0 TO 2: REM FOR EVERY VERTICAL PIXEL OF THE CHARACTER...
1050  IF  NOT ED THEN  READ L$: IF L$ = "END" THEN ED =  - 1:L$ = "": REM READ LINE STRING, IF ANY
1060  FOR X = 0 TO 31: REM FOR EVERY COLUMN ON THE SCREEN...
1070  FOR CX = 0 TO 1: REM FOR EVERY HORIZONTAL PIXEL OF THE CHARACTER...
1080 LX = 1 + X + X + CX:C$ = " ": IF LX <  =  LEN (L$) THEN C$ =  MID$ (L$,LX,1): REM GET ONE CHARACTER FROM THE LINE STRING TO BE MAPPED TO PIXEL
1090 CL =  - 1: REM NO PIXEL (BLACK) FOR UNMAPPED CHARACTERS
1100  IF C$ = " " THEN CL = 0: REM WHITE
1110  IF C$ = "-" THEN CL = 1: REM CYAN
1120  IF C$ = "#" THEN CL = 2: REM MAGENTA
1130  IF C$ = "*" THEN CL = 3: REM ORANGE
1140  IF CL <  >  - 1 THEN  POKE V + 32 * Y + X, PEEK (V + 32 * Y + X) AND  NOT (128 OR 64) OR (CL * 64) OR 2 ^ (4 - (CY + CY) + 1 - CX): REM PLOT PIXEL IF NOT BLACK
1150  NEXT CX,X,CY,Y
1160  GOTO 1160