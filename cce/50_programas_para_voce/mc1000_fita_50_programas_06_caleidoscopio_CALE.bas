0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *    CALEIDOSCOPIO     *
6  REM ************************
7  HGR 
20 T = 0:B = 191:L = 0:R = 255: FOR X = 1 TO 63: PLOT R,B TO L,B TO L,T TO R,T TO R,B:T = T + 3:B = B - 3:L = L + 3:R = R - 3: NEXT X: FOR Q = 0 TO 999: NEXT Q
30 T = 0:B = 191:L = 0:R = 255: FOR X = 1 TO 63: UNPLOT R,B TO L,B TO L,T TO R,T TO R,B:T = T + 3:B = B - 3:L = L + 3:R = R - 3: NEXT X: RUN 
