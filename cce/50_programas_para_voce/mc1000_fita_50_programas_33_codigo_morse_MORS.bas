0  REM ************************
1  REM *     - CCESOFT -      *
2  REM *OTTO LONGO SERNATI^GER*
3  REM *  VERSAO 1.1   05/85  *
4  REM ************************
5  REM *     CODIGO MORSE     *
6  REM ************************
26  HOME 
100  DATA ,.-,-...,-.-.,-..,.,..-.,--.,....,..,.---,-.-,.-..,--,-.,---,.--.,--.-,.-.,...,-,..-,...-,.--,-..-,-.--,--..
110  PRINT  TAB( 12)"- CCESOFT -": PRINT 
120  PRINT  TAB( 11)"ESTE PROGRAMA"
130  PRINT  TAB( 10)"CONVERTE LETRAS"
140  PRINT  TAB( 8)"EM SINAIS DO CODIGO"
150  PRINT  TAB( 15)"MORSE"
160  PRINT : PRINT  TAB( 9)"(ATE' 14 LETRAS)"
165  PRINT 
170  INPUT "PALAVRA ";P$
180  IF  LEN (P$) > 14 THEN  RUN 
185  HOME 
190  FOR A = 1 TO  LEN (P$)
200 A$ =  MID$ (P$,A,1)
205  IF  ASC (A$) > 90 THEN  RUN 
210  FOR I = 1 TO  ASC (A$) - 63
220  READ M$
230  NEXT I
240  RESTORE 
250  PRINT  TAB( 12)A$;"   ";M$
260  NEXT A
270  GOTO 165
