5  HGR 
10 SP = 2:O = 0:P = 0.5: DIM C(SP,3),R(SP),Q(SP)
20  FOR K = 1 TO SP: READ C(K,1),C(K,2),C(K,3),T:R(K) = T:Q(K) = T * T: NEXT K
30  DATA -0.3,-0.8,3,0.6
40  DATA 0.9,-1.1,2,0.2
50  FOR I = 0 TO 191: FOR J = 0 TO 255
70 X = 0.3:Y =  - 0.5:Z = 0:DX = J - 128:DY = I - 96
72 DZ = 300:DD = DX * DX + DY * DY + DZ * DZ
100 N =  - 1: IF Y <  = O AND DY > O THEN N = 0:S =  - Y / DY
110  FOR K = 1 TO SP:PX = C(K,1) - X:PY = C(K,2) - Y:PZ = C(K,3) - Z
140 SC = PX * DX + PY * DY + PZ * DZ
150  IF SC <  = O GOTO 200
155 PP = PX * PX + PY * PY + PZ * PZ
160 BB = SC * SC / DD:AA = Q(K) - PP + BB
180  IF AA <  = O GOTO 200
190 SC = ( SQR (BB) -  SQR (AA)) /  SQR (DD): IF SC < S OR N < O THEN N = K:S = SC
200  NEXT K: IF N < 0 GOTO 350
220 DX = DX * S:DY = DY * S:DZ = DZ * S:DD = DD * S * S:X = X + DX:Y = Y + DY:Z = Z + DZ
240  IF N = O GOTO 300
250 NX = X - C(N,1):NY = Y - C(N,2):NZ = Z - C(N,3)
270 L = 2 * (DX * NX + DY * NY + DZ * NZ) / Q(N)
280 DX = DX - NX * L:DY = DY - NY * L:DZ = DZ - NZ * L: GOTO 100
300  FOR K = 1 TO SP:U = C(K,1) - X:V = C(K,3) - Z: IF U * U + V * V <  = Q(K) GOTO 350
320  NEXT K
330  IF ((X -  INT (X)) > P) <  > ((Z -  INT (Z)) > P) THEN  PLOT J,I
350  NEXT J,I
360  GOTO 360
