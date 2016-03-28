0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATINGER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM * SIMULACAO DE GRAFICO *
6  REM ************************
120  DEF ~20 FN A(X) =  EXP ( - X * X * .4)
130 A =  - 3:L = 30:B = 3:Y1 = 0:Y2 = 1:H = .4
500 D = Y2 - Y1
510 K =  INT ((L - 1) / D)
520 Z =  INT (K *  ABS (Y1) + .5)
530  FOR X = A TO B STEP H
540 Z1 =  FN A(X) - Y1
550 Z1 =  INT (K * Z1 + .5)
570  IF Z1 >  = Z THEN 580
575  PRINT  TAB( Z1 + 1);".";
576  PRINT  TAB( Z + 1);"I"
577  GOTO 590
580  PRINT  TAB( Z + 1);"I";
585  PRINT  TAB( Z1 + 1);"."
590  NEXT X
