0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *       3 TELAS        *
6  REM ************************
10  HGR 
20 LI = 63:RI = 0
30  FOR V = 1 TO 3
40 RT = RI:LF = LI:TP = 0:BT = 255:YT = RI:YB = LI
50  FOR LP = 1 TO 15
60  PLOT TP,YT TO 255,RT TO BT,YB TO 0,LF TO TP,YT
70 TP = TP + 17.4
80 BT = BT - 17.4
90 RT = RT + 4
100 LF = LF - 4
110  NEXT LP
120 LI = LI + 64
130 RI = RI + 64
140  NEXT V
150  FOR A = 1 TO 2000: NEXT A: RUN 
