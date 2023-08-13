; Disassembly of the file "D:\Emerson\mc-1000\aplicativos cassete\BATATANQ.BIN"
;
; Created with dZ80 v1.31
;
; on Wednesday, 18 of April 2007 at 04:52 PM
;
0100  ffffff    db      #ff, #ff, #ff
0103  ff        db      #ff ; PGM/PGN/MUSIC.
0104  01        db      #01 ; PLAY: Tópico (modo) de jogo atual.
0105  11        db      #11 ; PLAYMX: Quantidade de tópicos.
0106  00        db      #00 ; HEAD: MC-1000 em modo de jogo (não BASIC).
0107  ba36      db      #ba, #36 ; RANDOM.
0109  45        db      #45 ; RCRDPT: Byte menos significativo do endereço do último slot de placar preenchido.
010a  50        db      #50
010b  4d36340d  db      #4d, #36, #34, #0d ; RECORD: 16 bytes, 8 pares de placares (jogadores 1 e 2).
010f  0a0dffff  db      #0a, #0d, #ff, #ff
0113  ffffffff  db      #ff, #ff, #ff, #ff
0117  ffffffff  db      #ff, #ff, #ff, #ff
011b  ffffffff  db      #ff, #ff, #ff, #ff ; KEY0: Até quatro teclas pressionadas.
011f  ff        db      #ff
0120  c9        ret     ; JOB: 1º hook de leitura do teclado.
0121  430b      db      #43, #0b
0123  00        db      #00 ; SCOREA.
0124  00        db      #00 ; SCOREB.
0125  ff        db      #ff ; SHAPE0: Indica se SHAPOF detectou colisão.
0126  ffffffff  db      #ff, #ff, #ff, #ff
012a  ffffffff  db      #ff, #ff, #ff, #ff
012e  ffff      db      #ff, #ff
0130  c9        ret     ; JOBM: 2º hook de leitura do teclado.
0131  ffffffff  db      #ff, #ff, #ff, #ff
0135  ffff      db      #ff, #ff ; TABLE/NSA.
0137  ffff      db      #ff, #ff ; NAA.
0139  00        db      #00 ; AVALUE.
013a  ff        db      #ff ; VOICEA.
013b  ff        db      #ff ; INTRPA.
013c  ff        db      #ff ; TEMPA.
013d  ff        db      #ff ; INTA.
013e  ffff      db      #ff, #ff ; NSB.
0140  ffff      db      #ff, #ff ; NBB.
0142  00        db      #00 ; BVALUE.
0143  ff        db      #ff ; VOICEB.
0144  ff        db      #ff ; INTRPB.
0145  ff        db      #ff ; TEMPB.
0146  ff        db      #ff ; INTB.
0147  ffff      db      #ff, #ff ; NSC.
0149  ffff      db      #ff, #ff ; NCC.
014b  00        db      #00 ; CVALUE.
014c  ff        db      #ff ; VOICEC.
014d  ff        db      #ff ; INTRPC.
014e  ff        db      #ff ; TEMPC.
014f  ff        db      #ff ; INTC.
0150  ff        db      #ff ; ENABLE.
0151  ff        db      #ff ; AMPLIT.
0152  ffff      db      #ff, #ff ; REGIST.
0154  ff        db      #ff ; DEFIN.
0155  ffff      db      #ff, #ff ; ONAMP.
0157  ff        db      #ff ; LPLAY.
0158  ffffffff  db      #ff, #ff, #ff, #ff
015c  ffff      db      #ff, #ff
015e  00        db      #00 ; CHECK.
015f  ff        db      #ff
0160  ffffffff  db      #ff, #ff, #ff, #ff
0164  ffffffff  db      #ff, #ff, #ff, #ff
0168  ffffffff  db      #ff, #ff, #ff, #ff
016c  ffffffff  db      #ff, #ff, #ff, #ff
0170  ffffffff  db      #ff, #ff, #ff, #ff
0174  ffffffff  db      #ff, #ff, #ff, #ff
0178  ffffffff  db      #ff, #ff, #ff, #ff
017c  ffffffff  db      #ff, #ff, #ff, #ff
0180  ffffffff  db      #ff, #ff, #ff, #ff
0184  ffffffff  db      #ff, #ff, #ff, #ff
0188  ff000e40  db      #ff, #00, #0e, #40
018c  09400500  db      #09, #40, #05, #00
0190  0000ffff  db      #00, #00, #ff, #ff
0194  01000940  db      #01, #00, #09, #40
0198  0e400000  db      #0e, #40, #00, #00
019c  a936ffff  db      #a9, #36, #ff, #ff
01a0  ff0e40ff  db      #ff, #0e, #40, #ff
01a4  ffaf3609  db      #ff, #af, #36, #09
01a8  400400ff  db      #40, #04, #00, #ff
01ac  ffffffff  db      #ff, #ff, #ff, #ff
01b0  ffffffff  db      #ff, #ff, #ff, #ff
01b4  34ffffff  db      #ff, #ff, #ff, #ff
01b8  ffffffff  db      #ff, #ff, #ff, #ff
01bc  ff094000  db      #ff, #09, #40, #00
01c0  00010092  db      #00, #01, #00, #92
01c4  40904001  db      #40, #90, #40, #01
01c8  00094005  db      #00, #09, #40, #05
01cc  008e4090  db      #00, #8e, #40, #90
01d0  40010090  db      #40, #01, #00, #90
01d4  400000ae  db      #40, #00, #00, #ae
01d8  36010090  db      #36, #01, #00, #90
01dc  40ffffff  db      #40, #ff, #ff, #ff
01e0  ffffffff  db      #ff, #ff, #ff, #ff
01e4  ffffffff  db      #ff, #ff, #ff, #ff
01e8  ffffffff  db      #ff, #ff, #ff, #ff
01ec  ffffffff  db      #ff, #ff, #ff, #ff
01f0  ffffffff  db      #ff, #ff, #ff, #ff
01f4  ffffffff  db      #ff, #ff, #ff, #ff
01f8  ffffffff  db      #ff, #ff, #ff, #ff
01fc  ffffffff  db      #ff, #ff, #ff, #ff
 
; Tabela de saltos para os "tópicos" de jogo
; (selecionáveis com CTRL+H).
; Tópicos 1 a 8 são para 2 jogadores.
; Tópicos 9 a 16 são jogados contra o computador.
; Tópicos 5 a 8 e 13 a 16 são quatro vezes mais rápidos.
0200  c37904    jp      #0479
0203  c37904    jp      #0479
0206  c37904    jp      #0479
0209  c37904    jp      #0479
020c  c37904    jp      #0479
020f  c37904    jp      #0479
0212  c37904    jp      #0479
0215  c37904    jp      #0479
0218  c37904    jp      #0479
021b  c37904    jp      #0479
021e  c37904    jp      #0479
0221  c37904    jp      #0479
0224  c37904    jp      #0479
0227  c37904    jp      #0479
022a  c37904    jp      #0479
022d  c37904    jp      #0479
0230  c34bc0    jp      #c04b ; SCORE

; Partes do labirinto:
;                                  <-- y=6,7
;
;
;    MMEEEMM   KKKKKK   NNFFFNN    <-- y=12,13
;    a                        b
;    a                        b
;    a                        b
;    i   U   jOOGGGGOOk   V   l    <-- y=20,21
;    i   U   j        k   V   l
;    i   c   j        k   d   l    <-- y=24,25
;        c                d
;        c       PP       d        <-- y=28,29
;        q       PP       r        <-- y=30,31
;    m   q   n        o   r   p    <-- y=32,33
;  = mAAAqBBBn        oCCCrDDDp =  <-- y=34,35
;    m   W   n        o   X   p    <-- y=36,37
;        W       QQ       X        <-- y=38,39
;        e       QQ       f        <-- y=40,41
;        e                f
;    s   e   t        u   f   v    <-- y=44,45
;    s   Y   t        u   Z   v
;    s   Y   tRRHHHHRRu   Z   v    <-- y=48,49
;    g                        h
;    g                        h
;    g                        h
;    SSIIISS   LLLLLL   TTJJJTT    <-- y=56,57
;
;
;                                  <-- y=62,63

; Posições para desenhar uma parede
; de 2 bytes x 2 linhas.
0233  8381      dw      #8183 ; M
0235  8881      dw      #8188 ; M
0237  9681      dw      #8196 ; N
0239  9b81      dw      #819b ; N
023b  8c82      dw      #828c ; O
023d  9282      dw      #8292 ; O
023f  8f83      dw      #838f ; P
0241  cf83      dw      #83cf ; P
0243  cf84      dw      #84cf ; Q
0245  0f85      dw      #850f ; Q
0247  0c86      dw      #860c ; R
0249  1286      dw      #8612 ; R
024b  0387      dw      #8703 ; S
024d  0887      dw      #8708 ; S
024f  1687      dw      #8716 ; T
0251  1b87      dw      #871b ; T
0253  ffff      dw      #ffff
 
; Posições para desenhar uma parede
; de 1 byte x 4 linhas.
0255  8782      dw      #8287 ; U
0257  9882      dw      #8298 ; V
0259  8784      dw      #8487 ; W
025b  9884      dw      #8498 ; X
025d  c785      dw      #85c7 ; Y
025f  d885      dw      #85d8 ; Z
0261  ffff      dw      #ffff
 
; Posições para desenhar uma parede
; de 3 bytes x 2 linhas.
0263  4484      dw      #8444 ; A
0265  4884      dw      #8448 ; B
0267  5584      dw      #8455 ; C
0269  5984      dw      #8459 ; D
;
026b  8581      dw      #8185 ; E
026d  9881      dw      #8198 ; F
026f  8e82      dw      #828e ; G
0271  8f82      dw      #828f ; G
0273  0e86      dw      #860e ; H
0275  0f86      dw      #860f ; H
0277  0587      dw      #8705 ; I
0279  1887      dw      #8718 ; J
;
027b  8d81      dw      #818d ; K
027d  9081      dw      #8190 ; K
027f  0d87      dw      #870d ; L
0281  1087      dw      #8710 ; L
0283  ffff      dw      #ffff
 
; Posições para desenhar uma parede
; de 1 byte x 6 linhas.
0285  c381      dw      #81c3 ; a
0287  dc81      dw      #81dc ; b
0289  0783      dw      #8307 ; c
028b  1883      dw      #8318 ; d
028d  0785      dw      #8507 ; e
028f  1885      dw      #8518 ; f
0291  4386      dw      #8643 ; g
0293  5c86      dw      #865c ; h
;
0295  8382      dw      #8283 ; i
0297  8b82      dw      #828b ; j
0299  9482      dw      #8294 ; k
029b  9c82      dw      #829c ; l
029d  0384      dw      #8403 ; m
029f  0b84      dw      #840b ; n
02a1  1484      dw      #8414 ; o
02a3  1c84      dw      #841c ; p
02a5  c783      dw      #83c7 ; q
02a7  d883      dw      #83d8 ; r
02a9  8385      dw      #8583 ; s
02ab  8b85      dw      #858b ; t
02ad  9485      dw      #8594 ; u
02af  9c85      dw      #859c ; v
02b1  ffff      dw      #ffff
 
; Animação: Tanque azul para a direita.
02b3  d903      dw      #03d9 ; Sprite: Tanque azul para a direita (2/2).
02b5  f502      dw      #02f5 ; Sprite: Tanque azul para a direita (1/2).
02b7  0000      dw      #0000

; Animação: Tanque amarelo para a direita.
02b9  f403      dw      #03f4 ; Sprite: Tanque amarelo para a direita (2/2).
02bb  0e03      dw      #030e ; Sprite: Tanque amarelo para a direita (1/2).
02bd  0000      dw      #0000
 
; Animação: Tanque azul para cima.
02bf  5d03      dw      #035d ; Sprite: Tanque azul para cima.
02c1  0000      dw      #0000

; Animação: Tanque amarelo para cima.
02c3  7c03      dw      #037c ; Sprite: Tanque amarelo para cima.
02c5  0000      dw      #0000

; Animação: Tanque azul para a esquerda.
02c7  2703      dw      #0327 ; Sprite: Tanque azul para a esquerda (1/2).
02c9  0f04      dw      #040f ; Sprite: Tanque azul para a esquerda (2/2).
02cb  0000      dw      #0000

; Animação: Explosão.
02cd  a60e      dw      #0ea6 ; Sprite: Explosão (1/4).
02cf  b50e      dw      #0eb5 ; Sprite: Explosão (2/4).
02d1  c60e      dw      #0ec6 ; Sprite: Explosão (3/4).
02d3  d50e      dw      #0ed5 ; Sprite: Explosão (4/4).
03d5  a60e      dw      #0ea6 ; Sprite: Explosão (1/4).
02d7  b50e      dw      #0eb5 ; Sprite: Explosão (2/4).
02d9  c60e      dw      #0ec6 ; Sprite: Explosão (3/4).
02db  d50e      dw      #0ed5 ; Sprite: Explosão (4/4).
02dd  a60e      dw      #0ea6 ; Sprite: Explosão (1/4).
02df  b50e      dw      #0eb5 ; Sprite: Explosão (2/4).
02e1  c60e      dw      #0ec6 ; Sprite: Explosão (3/4).
02e3  d50e      dw      #0ed5 ; Sprite: Explosão (4/4).
02e4  0000      dw      #0000

; Animação: Tanque amarelo para a esquerda.
02e7  4203      dw      #0342 ; Sprite: Tanque amarelo para a esquerda (1/2).
02e9  2804      dw      #0428 ; Sprite: Tanque amarelo para a esquerda (2/2).
02eb  0000      dw      #0000

; Animação: Tanque azul para baixo.
02ed  9b03      dw      #039b ; Sprite: Tanque azul para baixo.
02ef  0000      dw      #0000

; Animação: Tanque amarelo para baixo.
02f1  ba03      dw      #03ba ; Sprite: Tanque amarelo para baixo.
02f3  0000      dw      #0000
 
; Sprite: Tanque azul para a direita (1/2).
; |--BB|BB--|BBB-|
; |    |BBBB|B---|
; |    >BBBB|BBBB|
; |    |BBBB|B---|
; |--BB|BB--|BBB-|
02f5  3f        db      #3f ; +2 linhas, -1 coluna.
02f6  0a        db      #0a ; 00.00.10.10
02f7  01        db      #01 ; +1 coluna.
0278  a0        db      #a0 ; 10.10.00.00
0279  01        db      #01 ; +1 coluna.
02fa  a8        db      #a8 ; 10.10.10.00
02fb  df        db      #df ; -1 linha, -1 coluna.
02fc  aa        db      #aa ; 10.10.10.10
02fd  01        db      #01 ; +1 coluna.
02fe  80        db      #80 ; 10.00.00.00
02ff  df        db      #df ; -1 linha, -1 coluna.
0300  aa        db      #aa ; 10.10.10.10
0301  01        db      #01 ; +1 coluna.
0302  aa        db      #aa ; 10.10.10.10
0303  df        db      #df ; -1 linha, -1 coluna.
0304  aa        db      #aa ; 10.10.10.10
0305  01        db      #01 ; +1 coluna.
0306  80        db      #80 ; 10.00.00.00
0307  de        db      #de ; -1 linha, -2 colunas.
0308  0a        db      #0a ; 00.00.10.10
0309  01        db      #01 ; +1 coluna.
030a  a0        db      #a0 ; 10.10.00.00
030b  01        db      #01 ; +1 coluna.
030c  a8        db      #a8 ; 10.10.10.00
030d  ff        db      #ff
 
; Sprite: Tanque amarelo para a direita (1/2).
; |--YY|YY--|YYY-|
; |    |YYYY|Y---|
; |    >YYYY|YYYY|
; |    |YYYY|Y---|
; |--YY|YY--|YYY-|
030e  3f        db      #3f ; +2 linhas, -1 coluna.
030f  05        db      #05 ; 00.00.01.01
0310  01        db      #01 ; +1 coluna.
0311  50        db      #50 ; 01.01.00.00
0312  01        db      #01 ; +1 coluna.
0313  54        db      #54 ; 01.01.01.00
0314  df        db      #df ; -1 linha, -1 coluna.
0315  55        db      #55 ; 01.01.01.01
0316  01        db      #01 ; +1 coluna.
0317  40        db      #40 ; 01.00.00.00
0318  df        db      #df ; -1 linha, -1 coluna.
0319  55        db      #55 ; 01.01.01.01
031a  01        db      #01 ; +1 coluna.
031b  55        db      #55 ; 01.01.01.01
031c  df        db      #df ; -1 linha, -1 coluna.
031d  55        db      #55 ; 01.01.01.01
031e  01        db      #01 ; +1 coluna.
031f  40        db      #40 ; 01.00.00.00
0320  de        db      #de ; -1 linha, -2 colunas.
0321  05        db      #05 ; 00.00.01.01
0322  01        db      #01 ; +1 coluna.
0323  50        db      #50 ; 01.01.00.00
0324  01        db      #01 ; +1 coluna.
0325  54        db      #54 ; 01.01.01.00
0326  ff        db      #ff
 
; Sprite: Tanque azul para a esquerda (1/2).
; |---B|BB--|BBBB|
; |    |-BBB|BB--|
; |--BB>BBBB|BB--|
; |    |-BBB|BB--|
; |---B|BB--|BBBB|
0327  3f        db      #3f ; +2 linhas, -1 coluna.
0328  02        db      #02 ; 00.00.00.10
0329  01        db      #01 ; +1 coluna.
032a  a0        db      #a0 ; 10.10.00.00
032b  01        db      #01 ; +1 coluna.
032c  aa        db      #aa ; 10.10.10.10
032d  df        db      #df ; -1 linha, -1 coluna.
032e  2a        db      #2a ; 00.10.10.10
032f  01        db      #01 ; +1 coluna.
0330  a0        db      #a0 ; 10.10.00.00
0331  de        db      #df ; -1 linha, -2 colunas.
0332  0a        db      #0a ; 00.00.10.10
0333  01        db      #01 ; +1 coluna.
0334  aa        db      #aa ; 10.10.10.10
0445  01        db      #01 ; +1 coluna.
0336  a0        db      #a0 ; 10.10.00.00
0337  df        db      #df ; -1 linha, -1 coluna.
0338  2a        db      #2a ; 00.10.10.10
0339  01        db      #01 ; +1 coluna.
033a  a0        db      #a0 ; 10.10.00.00
033b  de        db      #df ; -1 linha, -2 colunas.
033c  02        db      #02 ; 00.00.00.10
033d  01        db      #01 ; +1 coluna.
033e  a0        db      #a0 ; 10.10.00.00
033f  01        db      #01 ; +1 coluna.
0340  aa        db      #aa ; 10.10.10.10
0341  ff        db      #ff

; Sprite: Tanque amarelo para a esquerda (1/2).
; |---Y|YY--|YYYY|
; |    |-YYY|YY--|
; |--YY>YYYY|YY--|
; |    |-YYY|YY--|
; |---Y|YY--|YYYY|
0342  3f        db      #3f ; +2 linhas, -1 coluna.
0343  01        db      #01 ; 00.00.00.01
0344  01        db      #01 ; +1 coluna.
0345  50        db      #50 ; 01.01.00.00
0346  01        db      #01 ; +1 coluna.
0347  55        db      #55 ; 01.01.01.01
0348  df        db      #df ; -1 linha, -1 colunas.
0349  15        db      #15 ; 00.01.01.01
034a  01        db      #01 ; +1 coluna.
034b  50        db      #50 ; 01.01.00.00
034c  de        db      #de ; -1 linha, -2 colunas.
034d  05        db      #05 ; 00.00.01.01
034e  01        db      #01 ; +1 coluna.
034f  55        db      #55 ; 01.01.01.01
0450  01        db      #01 ; +1 coluna.
0351  50        db      #50 ; 01.01.00.00
0352  df        db      #df ; -1 linha, -1 coluna.
0353  15        db      #15 ; 00.01.01.01
0354  01        db      #01 ; +1 coluna.
0355  50        db      #50 ; 01.01.00.00
0356  de        db      #de ; -1 linha, -2 colunas.
0357  01        db      #01 ; 00.00.00.01
0358  01        db      #01 ; +1 coluna.
0359  50        db      #50 ; 01.01.00.00
035a  01        db      #01 ; +1 coluna.
035b  55        db      #55 ; 01.01.01.01
035c  ff        db      #ff
 
; Sprite: Tanque azul para cima.
; |    |-BB-|
; |-BB-|-BB-|-BB-|
; |-BBB|BBBB|BBB-|
; |--BB>BBBB|BB--|
; |-BBB|BBBB|BBB-|
; |-BB-|    |-BB-|
035d  3f        db      #3f ; +2 linhas, -1 coluna.
035e  28        db      #28 ; 00.10.10.00
035f  02        db      #02 ; +2 colunas.
0360  28        db      #28 ; 00.10.10.00
0361  de        db      #de ; -1 linha, -2 colunas.
0362  2a        db      #2a ; 00.10.10.10
0363  01        db      #01 ; +1 coluna.
0364  aa        db      #aa ; 10.10.10.10
0365  01        db      #01 ; +1 coluna.
0366  a8        db      #a8 ; 10.10.10.00
0367  de        db      #de ; -1 linha, -2 colunas.
0368  02        db      #02 ; 00.00.00.10
0369  01        db      #01 ; +1 coluna.
036a  aa        db      #aa ; 10.10.10.10
036b  01        db      #01 ; +1 coluna.
036c  80        db      #80 ; 10.00.00.00
036d  de        db      #de ; -1 linha, -2 colunas.
036e  2a        db      #2a ; 00.10.10.10
036f  01        db      #01 ; +1 coluna.
0370  aa        db      #aa ; 10.10.10.10
0372  01        db      #01 ; +1 coluna.
0372  a8        db      #a8 ; 10.10.10.00
0373  de        db      #de ; -1 linha, -2 colunas.
0374  28        db      #28 ; 00.10.10.00
0375  01        db      #01 ; +1 coluna.
0376  28        db      #28 ; 00.10.10.00
0377  01        db      #01 ; +1 coluna.
0378  28        db      #28 ; 00.10.10.00
0379  df        db      #df ; -1 linha, -1 coluna.
037a  28        db      #28 ; 00.10.10.00
037b  ff        db      #ff
 
; Sprite: Tanque amarelo para cima.
; |    |-YY-|
; |-YY-|-YY-|-YY-|
; |-YYY>YYYY|YYY-|
; |--YY|YYYY|YY--|
; |-YYY|YYYY|YYY-|
; |-YY-|    |-YY-|
037c  3f        db      #3f ; +2 linhas, -1 coluna.
037d  14        db      #14 ; 00.01.01.00
037e  02        db      #02 ; +2 colunas.
037f  14        db      #14 ; 00.01.01.00
0380  de        db      #de ; -1 linha, -2 colunas.
0381  15        db      #15 ; 00.01.01.01
0382  01        db      #01 ; +1 coluna.
0383  55        db      #55 ; 01.01.01.01
0384  01        db      #01 ; +1 coluna.
0385  54        db      #54 ; 01.01.01.00
0386  de        db      #de ; -1 linha, -2 colunas.
0387  01        db      #01 ; 00.00.00.01
0388  01        db      #01 ; +1 coluna.
0389  55        db      #55 ; 01.01.01.01
038a  01        db      #01 ; +1 coluna.
038b  40        db      #40 ; 01.00.00.00
038c  de        db      #de ; -1 linha, -2 colunas.
038d  15        db      #15 ; 00.01.01.01
038e  01        db      #01 ; +1 coluna.
038f  55        db      #55 ; 01.01.01.01
03ff  01        db      #01 ; +1 coluna.
0391  54        db      #54 ; 01.01.01.00
0392  de        db      #de ; -1 linha, -2 colunas.
0393  14        db      #14 ; 00.01.01.00
0394  01        db      #01 ; +1 coluna.
0395  14        db      #14 ; 00.01.01.00
0396  01        db      #01 ; +1 coluna.
0397  14        db      #14 ; 00.01.01.00
0398  df        db      #df ; -1 linha, -1 coluna.
0399  14        db      #14 ; 00.01.01.00
039a  ff        db      #ff
 
; Sprite: Tanque azul para baixo.
; |-BB-|    |-BB-|
; |-BBB|BBBB|BBB-|
; |---B|BBBB|B---|
; |-BBB>BBBB|BBB-|
; |-BB-|-BB-|-BB-|
; |    |-BB-|
039b  40        db      #40 ; +2 linhas.
039c  28        db      #28 ; 00.10.10.00
039d  df        db      #df ; -1 linha, -1 coluna.
039e  28        db      #28 ; 00.10.10.00
039f  01        db      #01 ; +1 coluna.
03a0  28        db      #28 ; 00.10.10.00
03a1  01        db      #01 ; +1 coluna
03a2  28        db      #28 ; 00.10.10.00
03a3  de        db      #de ; -1 linha, -2 colunas.
03a4  2a        db      #2a ; 00.10.10.10
03a5  01        db      #01 ; +1 coluna.
03a6  aa        db      #aa ; 10.10.10.10
03a7  01        db      #01 ; +1 coluna.
03a8  a8        db      #a8 ; 10.10.10.00
03a9  de        db      #de ; -1 linha, -2 colunas.
03aa  02        db      #02 ; 00.00.00.10
03ab  01        db      #01 ; +1 coluna.
03ac  aa        db      #aa ; 10.10.10.10
03ad  01        db      #01 ; +1 coluna.
03ae  80        db      #80 ; 10.00.00.00
03af  de        db      #de ; -1 linha, -2 colunas.
03b0  2a        db      #2a ; 00.10.10.10
03b1  01        db      #01 ; +1 coluna.
03b2  aa        db      #aa ; 10.10.10.10
03b3  01        db      #01 ; +1 coluna.
03b4  a8        db      #a8 ; 10.10.10.00
03b5  de        db      #de ; -1 linha, -2 colunas.
03b6  28        db      #28 ; 00.10.10.00
03b7  02        db      #02 ; +2 colunas.
03b8  28        db      #28 ; 00.10.10.00
03b9  ff        db      #ff
 
; Sprite: Tanque amarelo para baixo.
; |-YY-|    |-YY-|
; |-YYY|YYYY|YYY-|
; |---Y|YYYY|Y---|
; |-YYY>YYYY|YYY-|
; |-YY-|-YY-|-YY-|
; |    |-YY-|
03ba  40        db      #40 ; +2 linhas.
03bb  14        db      #14 ; 00.01.01.00
03bc  df        db      #df ; -1 linha, -1 coluna.
03bd  14        db      #14 ; 00.01.01.00
03be  01        db      #01 ; +1 coluna.
03bf  14        db      #14 ; 00.01.01.00
04c0  01        db      #01 ; +1 coluna.
03c1  14        db      #14 ; 00.01.01.00
03c2  de        db      #de ; -1 linha, -2 colunas.
03c3  15        db      #15 ; 00.01.01.01
03c4  01        db      #01 ; +1 coluna.
03c5  55        db      #55 ; 01.01.01.01
03c6  01        db      #01 ; +1 coluna.
03c7  54        db      #54 ; 01.01.01.00
03c8  de        db      #de ; -1 linha, -2 colunas.
03c9  01        db      #01 ; 00.00.00.01
03ca  01        db      #01 ; +1 coluna.
03cb  55        db      #55 ; 01.01.01.01
03cc  01        db      #01 ; +1 coluna.
03cd  40        db      #40 ; 01.00.00.00
03ce  de        db      #de ; -1 linha, -2 colunas.
03cf  15        db      #15 ; 00.01.01.01
03d0  01        db      #01 ; +1 coluna.
03d1  55        db      #55 ; 01.01.01.01
03d2  01        db      #01 ; +1 coluna.
03d3  54        db      #55 ; 01.01.01.00
03d4  de        db      #de ; -1 linha, -2 colunas.
03d5  14        db      #14 ; 00.01.01.00
03d6  02        db      #02 ; +2 colunas.
03d7  14        db      #14 ; 00.01.01.00
03d8  ff        db      #ff
 
; Sprite: Tanque azul para a direita (2/2).
; |BBBB|--BB|B---|
; |--BB|BBB-|
; |--BB>BBBB|BB--|
; |--BB|BBB-|
; |BBBB|--BB|B---|
03d9  3f        db      #3f ; +2 linhas, -1 coluna.
03da  aa        db      #aa ; 10.10.10.10
03db  01        db      #01 ; +1 coluna.
03dc  0a        db      #0a ; 00.00.10.10
04dd  01        db      #01 ; +1 coluna.
03de  80        db      #80 ; 10.00.00.00
03df  de        db      #de ; -1 linha, -2 colunas.
03e0  0a        db      #0a ; 00.00.10.10
03e1  01        db      #01 ; +1 coluna.
03e2  a8        db      #a8 ; 10.10.10.00
03e3  df        db      #df ; -1 linha, -1 coluna.
03e4  0a        db      #0a ; 00.00.10.10
03e5  01        db      #01 ; +1 coluna.
03e6  aa        db      #aa ; 10.10.10.10
03e7  01        db      #01 ; +1 coluna.
03e8  a0        db      #a0 ; 10.10.00.00
03e9  de        db      #de ; -1 linha, -2 colunas.
03ea  0a        db      #0a ; 00.00.10.10
03eb  01        db      #01 ; +1 coluna.
03ec  a8        db      #a8 ; 10.10.10.00
03ed  df        db      #df ; -1 linha, -1 coluna.
03ee  aa        db      #aa ; 10.10.10.10
03ef  01        db      #01 ; +1 coluna.
03f0  0a        db      #0a ; 00.00.10.10
03f1  01        db      #01 ; +1 coluna.
03f2  80        db      #80 ; 10.00.00.00
03f3  ff        db      #ff
 
; Sprite: Tanque amarelo para a direita (2/2).
; |YYYY|--YY|Y---|
; |--YY|YYYY|
; |--YY>YYY-|YY--|
; |--YY|YYYY|
; |YYYY|--YY|Y---|
03f4  3f        db      #3f ; +2 linhas, -1 coluna.
03f5  55        db      #55 ; 01.01.01.01
03f6  01        db      #01 ; +1 coluna.
03f7  05        db      #05 ; 00.00.01.01
03f8  01        db      #01 ; +1 coluna.
03f9  40        db      #40 ; 01.00.00.00
03fa  de        db      #de ; -1 linha, -2 colunas.
03fb  05        db      #05 ; 00.00.01.01
03fc  01        db      #01 ; +1 coluna.
03fd  54        db      #54 ; 01.01.01.00
03fe  df        db      #df ; -1 linha, -1 coluna.
03ff  05        db      #05 ; 00.00.01.01
0400  01        db      #01 ; +1 coluna.
0401  54        db      #54 ; 01.01.01.00
0402  01        db      #01 ; +1 coluna.
0403  50        db      #50 ; 01.01.00.00
0404  de        db      #de ; -1 linha, -2 colunas.
0405  05        db      #05 ; 00.00.01.01
0406  01        db      #01 ; +1 coluna.
0407  54        db      #54 ; 01.01.01.00
0408  df        db      #df ; -1 linha, -1 coluna.
0409  55        db      #55 ; 01.01.01.01
040a  01        db      #01 ; +1 coluna.
040b  05        db      #05 ; 00.00.01.01
040c  01        db      #01 ; +1 coluna.
040d  40        db      #40 ; 01.00.00.00
040e  ff        db      #ff
 
; Sprite: Tanque azul para a esquerda (2/2).
; |-BBB|--BB|BB--|
; |---B|BBBB|
; |BBBB>BBBB|
; |---B|BBBB|
; |-BBB|--BB|BB--|
040f  3f        db      #3f ; +2 linhas, -1 coluna.
0410  2a        db      #2a ; 00.10.10.10
0411  01        db      #01 ; +1 coluna.
0412  0a        db      #0a ; 00.00.10.10
0413  01        db      #01 ; +1 coluna.
0414  a0        db      #a0 ; 10.10.00.00
0415  de        db      #de ; -1 linha, -2 colunas.
0416  02        db      #02 ; 00.00.00.10
0417  01        db      #01 ; +1 coluna.
0418  aa        db      #aa ; 10.10.10.10
0419  df        db      #df ; -1 linha, -1 coluna.
041a  aa        db      #aa ; 10.10.10.10
041b  01        db      #01 ; +1 coluna.
041c  aa        db      #aa ; 10.10.10.10
041d  df        db      #df ; -1 linha, -1 coluna.
041e  02        db      #02 ; 00.00.00.10
041f  01        db      #01 ; +1 coluna.
0420  aa        db      #aa ; 10.10.10.10
0421  df        db      #df ; -1 linha, -1 coluna.
0422  2a        db      #2a ; 00.10.10.10
0423  01        db      #01 ; +1 coluna.
0424  0a        db      #0a ; 00.00.10.10
0425  01        db      #01 ; +1 coluna.
0426  a0        db      #a0 ; 10.10.00.00
0427  ff        db      #ff
 
; Sprite: Tanque amarelo para a esquerda (2/2).
; |-YYY|--YY|YY--|
; |---Y|YYYY|
; |YYYY>YYYY|
; |---Y|YYYY|
; |-YYY|--YY|YY--|
0428  3f        db      #3f ; +2 linhas, -1 coluna.
0429  15        db      #15 ; 00.01.01.01
042a  01        db      #01 ; +1 coluna.
042b  05        db      #05 ; 00.00.01.01
042c  01        db      #01 ; +1 coluna.
042d  50        db      #50 ; 01.01.00.00
042e  de        db      #de ; -1 linha, -2 colunas.
042f  01        db      #01 ; 00.00.00.01
0430  01        db      #01 ; +1 coluna.
0431  55        db      #55 ; 01.01.01.01
0432  df        db      #df ; -1 linha, -1 coluna.
0433  55        db      #55 ; 01.01.01.01
0434  01        db      #01 ; +1 coluna.
0435  55        db      #55 ; 01.01.01.01
0436  df        db      #df ; -1 linha, -1 coluna.
0437  01        db      #01 ; 00.00.00.01
0438  01        db      #01 ; +1 coluna.
0439  55        db      #55 ; 01.01.01.01
043a  df        db      #df ; -1 linha, -1 coluna.
043b  15        db      #15 ; 00.01.01.01
043c  01        db      #01 ; +1 coluna.
043d  05        db      #05 ; 00.00.01.01
043e  01        db      #01 ; +1 coluna.
043f  50        db      #50 ; 01.01.00.00
0440  ff        db      #ff

;
0441  ff        rst     #38
0442  ff        rst     #38
0443  ff        rst     #38
0444  ff        rst     #38
0445  ff        rst     #38
0446  ff        rst     #38
0447  ff        rst     #38
0448  ff        rst     #38
 
;
0449  dd        db      #dd ; %11.01.11.01 (padrão da parede: vermelho-amarelo-vermelho-amarelo).
044a  03        db      #03 ; 3 bytes.

; Padrão para os caracteres dois-pontos no alto da tela.
044b  3c        db      #3c ; %00.11.11.00 (ponto vermelho sobre fundo verde).

044c  14        db      #14 ; 20.
044d  1a        db      #1a ; 26 (qtd de bytes a zerar desde $0e8a).
044e  58        db      #58 ; 'X' (para a esquerda).
044f  40        db      #40 ; +64: +2 linhas.
0450  ff        db      #ff
 
; Inicializa música.
0451  212b0f    ld      hl,#0f2b ; Notas para o canal A.
0454  223701    ld      (#0137),hl ; NAA.
0457  216010    ld      hl,#1060 ; Notas para o canal B.
045a  224001    ld      (#0140),hl ; NBB.
045d  3e7d      ld      a,#7d ; %01.11.11.0.1: Produzir tom; INTRPA=4; VOICEA=3 (envoltória); inicializar; tocar.
045f  323901    ld      (#0139),a ; AVALUE.
0462  3e79      ld      a,#79 ; %01.11.10.0.1: Produzir tom; INTRPB=4; VOICEB=2 (decrescente); inicializar; tocar.
0464  324201    ld      (#0142),a ; BVALUE.
0467  af        xor     a ; %00.00.00.0.0: ...; não tocar.
0468  324b01    ld      (#014b),a ; CVALUE.
046b  c9        ret
 
; Faz uma linha de pontos vermelhos e amarelos atravessando
; a tela em y=5 para separar o placar da área de jogo.
046c  21a080    ld      hl,#80a0
046f  36dd      ld      (hl),#dd
0471  23        inc     hl
0472  7d        ld      a,l
0473  fec0      cp      #c0
0475  c26f04    jp      nz,#046f
0478  c9        ret
 
; PONTO INICIAL DE TODOS OS TÓPICOS DO JOGO.
0479  310002    ld      sp,#0200
; Redireciona interrupções do Z80 para INTRUP
; (para a música funcionar).
047c  3a890e    ld      a,(#0e89) ; Já redirecionou?
047f  a7        and     a
0480  c29404    jp      nz,#0494 ; Sim: Início propriamente dito.
0483  3ec3      ld      a,#c3 ; Não: Redireciona.
0485  323800    ld      (#0038),a
0488  2124c0    ld      hl,#c024 ; INTRUP.
048b  223900    ld      (#0039),hl
048e  fb        ei
048f  3e02      ld      a,#02 ; Anota que já redirecionou.
0491  32890e    ld      (#0e89),a
; Início propriamente dito.
0494  cd5104    call    #0451 ; Inicializa música.
0497  210000    ld      hl,#0000
049a  225f0e    ld      (#0e5f),hl
049d  227e0e    ld      (#0e7e),hl
04a0  222301    ld      (#0123),hl ; SCOREA & SCOREB
04a3  3e88      ld      a,#88 ; Tela em modo GR (128x64, verde/amarelo/azul/vermelho).
04a5  d380      out     (#80),a ; COL32.
04a7  0600      ld      b,#00 ; Limpa tela com fundo verde.
04a9  cd30c0    call    #c030 ; XCLEAR.
04ac  cd6c04    call    #046c ; Faz linha em y=5.
; Desenha o labirinto segundo o valor de PLAY.
04af  3a0401    ld      a,(#0104) ; PLAY.
04b2  fe01      cp      #01
04b4  cae104    jp      z,#04e1
04b7  fe03      cp      #03
04b9  2a4904    ld      hl,(#0449)
04bc  4d        ld      c,l ; Padrão vermelho e amarelo alternados.
04bd  44        ld      b,h ; 3 bytes.
04be  dacc04    jp      c,#04cc
04c1  caf304    jp      z,#04f3
04c4  d604      sub     #04
04c6  ca0805    jp      z,#0508
04c9  c2b204    jp      nz,#04b2

; PLAY=2,6,10,14.
;
;
;
;    #######   ######   #######
;
;
;
;    #   #   ##########   #   #
;    #   #   #        #   #   #
;    #       #        #       #
;
;                ##
;        #       ##       #
;    #   #   #        #   #   #
;  = #########        ######### =
;    #   #   #        #   #   #
;        #       ##       #
;                ##
;
;    #       #        #       #
;    #   #   #        #   #   #
;    #   #   ##########   #   #
;
;
;
;    #######   ######   #######
;
;
;

04cc  3e02      ld      a,#02 ; 2 linhas de altura.
04ce  116402    ld      de,#0264
04d1  cd110f    call    #0f11
04d4  0601      ld      b,#01 ; 1 byte de largura.
04d6  3e06      ld      a,#06 ; 6 bytes de altura.
04d8  119602    ld      de,#0296
04db  cd110f    call    #0f11
04de  c31a05    jp      #051a

; PLAY=1,5,9,13.
;
;
;
;    #######   ######   #######
;    #                        #
;    #                        #
;    #                        #
;    #   #   ##########   #   #
;    #   #   #        #   #   #
;    #   #   #        #   #   #
;        #                #
;        #       ##       #
;        #       ##       #
;    #   #   #        #   #   #
;  = #########        ######### =
;    #   #   #        #   #   #
;        #       ##       #
;        #       ##       #
;        #                #
;    #   #   #        #   #   #
;    #   #   #        #   #   #
;    #   #   ##########   #   #
;    #                        #
;    #                        #
;    #                        #
;    #######   ######   #######
;
;
;
04e1  118602    ld      de,#0286
04e4  01dd01    ld      bc,#01dd ; 1 byte de largura, padrão 11.01.11.01.
04e7  3e06      ld      a,#06 ; 6 linhas de altura.
04e9  cd110f    call    #0f11
04ec  0603      ld      b,#03 ; 3 bytes de largura.
04ee  3e02      ld      a,#02 ; 2 linhas de altura.
04f0  c3cc04    jp      #04cc

; PLAY=3,7,11,15.
;
;
;
;    #######   ######   #######
;    #                        #
;    #                        #
;    #                        #
;    #   #   ##########   #   #
;    #   #   #        #   #   #
;    #   #   #        #   #   #
;        #                #
;        #       ##       #
;        #       ##       #
;    #   #   #        #   #   #
;  = #   #   #        #   #   # =
;    #   #   #        #   #   #
;        #       ##       #
;        #       ##       #
;        #                #
;    #   #   #        #   #   #
;    #   #   #        #   #   #
;    #   #   ##########   #   #
;    #                        #
;    #                        #
;    #                        #
;    #######   ######   #######
;
;
;
04f3  3e02      ld      a,#02 ; 2 linhas de altura.
04f5  116c02    ld      de,#026c
04f8  cd110f    call    #0f11
04fb  0601      ld      b,#01 ; 1 byte de largura.
04fd  3e06      ld      a,#06 ; 6 linhas de altura.
04ff  118602    ld      de,#0286
0502  cd110f    call    #0f11
0505  c31a05    jp      #051a

; PLAY=4,8,12,16.
;
;
;
;    ##   ##   ######   ##   ##
;
;
;
;    #   #   ###    ###   #   #
;    #   #   #        #   #   #
;    #       #        #       #
;
;                ##
;        #       ##       #
;    #   #   #        #   #   #
;  = #   #   #        #   #   # =
;    #   #   #        #   #   #
;        #       ##       #
;                ##
;
;    #       #        #       #
;    #   #   #        #   #   #
;    #   #   ###    ###   #   #
;
;
;
;    ##   ##   ######   ##   ##
;
;
;
0508  3e02      ld      a,#02 ; 2 linhas de altura.
050a  117c02    ld      de,#027c
050d  cd110f    call    #0f11
0510  0601      ld      b,#01 ; 1 byte de largura.
0512  3e06      ld      a,#06 ; 6 linhas de altura.
0514  119602    ld      de,#0296
0517  cd110f    call    #0f11
; Partes comuns do labirinto.
051a  3e02      ld      a,#02 ; 2 linhas de altura.
051c  47        ld      b,a ; 2 bytes de largura.
051d  113402    ld      de,#0234
0520  cd110f    call    #0f11
0523  3e04      ld      a,#04 ; 4 linhas de altura.
0525  05        dec     b ; 1 byte de largura.
0526  115602    ld      de,#0256
0529  cd110f    call    #0f11

; Desenha painel do placar acima da área de jogo.
; Desenha o valor de PLAY (tópico de jogo atual).
052c  110180    ld      de,#8001
052f  3a0401    ld      a,(#0104) ; PLAY.
0532  0e00      ld      c,#00
0534  cd3fc0    call    #c03f ; DISPY2.
; Desenha tanques na área do placar.
0537  214880    ld      hl,#8048 ; Posição na VRAM.
053a  110f04    ld      de,#040f ; Sprite: tanque azul para a esquerda.
053d  cdf30d    call    #0df3 ; SHAPON'.
0540  215580    ld      hl,#8055 ; Posição na VRAM.
0543  11f403    ld      de,#03f4 ; Sprite: tanque amarelo para a direita.
0546  cdf30d    call    #0df3 ; SHAPON'.
; Desenha dois-pontos após cada tanque.
0549  3a4b04    ld      a,(#044b) ; Padrão: ponto vermelho.
054c  322a80    ld      (#802a),a
054f  326a80    ld      (#806a),a
0552  323780    ld      (#8037),a
0555  327780    ld      (#8077),a
0558  c39a05    jp      #059a

; Inicializa posição do tanque azul e o desenha.
055b  214184    ld      hl,#8441 ; Posição inicial do tanque azul à esquerda da tela.
055e  115d03    ld      de,#035d ; Sprite: tanque azul para cima.
0561  cdf30d    call    #0df3 ; SHAPON'.
0564  22540e    ld      (#0e54),hl ; Guarda posição do tanque atual.
0567  21bf02    ld      hl,#02bf ; Animação: Tanque azul para cima.
056a  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
056d  225a0e    ld      (#0e5a),hl ; Ponteiro p/ sprite do tanque atual a apagar.
0570  3e02      ld      a,#02 ; Para cima.
0572  32560e    ld      (#0e56),a ; Direção do tanque atual.
0575  c9        ret

; Inicializa posição do tanque amarelo e o desenha.
0576  215e84    ld      hl,#845e ; Posição inicial do tanque amarelo à direita da tela.
0579  117c03    ld      de,#037c ; Sprite: tanque amarelo para cima.
057c  cdf30d    call    #0df3 ; SHAPON'.
057f  22730e    ld      (#0e73),hl ; Guarda posição do outro tanque.
0582  21c302    ld      hl,#02c3 ; Animação: Tanque amarelo para cima.
0585  22760e    ld      (#0e76),hl ; Ponteiro p/ sprite do outro tanque a desenhar.
0588  22790e    ld      (#0e79),hl ; Ponteiro p/ sprite do outro tanque a apagar.
058b  3a0701    ld      a,(#0107) ; RANDOM. Decide a direção aleatoriamente.
058e  0f        rrca
058f  3e02      ld      a,#02 ; Para cima.
0591  da9605    jp      c,#0596
0594  3e03      ld      a,#03 ; Para baixo.
0596  32750e    ld      (#0e75),a ; Direção do outro tanque.
0599  c9        ret

;
059a  cd5b05    call    #055b ; Inicializa posição do tanque azul e o desenha.
059d  cd7605    call    #0576 ; Inicializa posição do tanque amarelo e o desenha.
05a0  3a4c04    ld      a,(#044c) ; 20
05a3  32590e    ld      (#0e59),a ; Vidas restantes do jogador atual.
05a6  32780e    ld      (#0e78),a ; Vidas restantes do outro jogador.
05a9  af        xor     a
05aa  32850e    ld      (#0e85),a
05ad  325c0e    ld      (#0e5c),a ; Placar atual do jogador atual.
05b0  327b0e    ld      (#0e7b),a ; Placar atual do outro jogador.
; Zera 26 bytes a partir de $0e8a.
; (Contadores de ciclos de espera para cada jogador e 8 slots de tiro.)
05b3  3a4d04    ld      a,(#044d) ; 26.
05b6  47        ld      b,a
05b7  218a0e    ld      hl,#0e8a ; Contador de ciclos de espera para jogador 1.
05ba  3600      ld      (hl),#00
05bc  23        inc     hl
05bd  05        dec     b
05be  c2ba05    jp      nz,#05ba
; Depois 2 bytes com $ff indicando o fim dos slots de tiro.
05c1  36ff      ld      (hl),#ff
05c3  23        inc     hl
05c4  36ff      ld      (hl),#ff
;
05c6  cd5104    call    #0451 ; Inicializa música.
05c9  3e04      ld      a,#04
05cb  322b0f    ld      (#0f2b),a ; Envoltória do canal A. (Com VOICEA=3 se usa o nibble mais significativo, #0.)
05ce  326010    ld      (#1060),a ; Envoltória do canal B. (Com VOICEB=2 se usa o nibble menos significativo, #4, e decresce.)
;
05d1  af        xor     a
05d2  32870e    ld      (#0e87),a
05d5  32610e    ld      (#0e61),a
05d8  3a5c0e    ld      a,(#0e5c) ; Placar atual do jogador atual.
05db  110d80    ld      de,#800d ; Posição na VRAM do placar do jogador 1.
05de  cd900d    call    #0d90 ; Exibe valor de A alinhado à esquerda.
05e1  3a7b0e    ld      a,(#0e7b) ; Placar atual do outro jogador.
05e4  111a80    ld      de,#801a ; Posição na VRAM do placar do jogador 2.
05e7  cd900d    call    #0d90 ; Exibe valor de A alinhado à esquerda.
;
05ea  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
05ed  fe05      cp      #05 ; Tanque destruído?
05ef  cafa05    jp      z,#05fa ; Sim: desvia.
05f2  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
05f5  fe05      cp      #05 ; Tanque destruído?
05f7  ca2e06    jp      z,#062e ; Sim: desvia.
; if (m[0x0e5f] >= m[0x0e61]) {
;   // ...
; }
05fa  3a5f0e    ld      a,(#0e5f)
05fd  21610e    ld      hl,#0e61
0600  be        cp      (hl)
0601  da2e06    jp      c,#062e
0604  21b302    ld      hl,#02b3 ; Animação: Tanque azul para a direita.
0607  22640e    ld      (#0e64),hl ; Animação: Tanque para a direita.
060a  21c702    ld      hl,#02c7 ; Animação: Tanque azul para a esquerda.
060d  22620e    ld      (#0e62),hl ; Animação: Tanque para a esquerda.
0610  21bf02    ld      hl,#02bf ; Animação: Tanque azul para cima.
0613  22660e    ld      (#0e66),hl ; Animação: Tanque para cima.
0616  21ed02    ld      hl,#02ed ; Animação: Tanque azul para baixo.
0619  22680e    ld      (#0e68),hl ; Animação: Tanque para baixo.
061c  2a6a0e    ld      hl,(#0e6a) ; Teclas do jogador 1 (esquerda, direita).
061f  226e0e    ld      (#0e6e),hl ; Teclas atuais (esquerda,direita).
0622  2a6c0e    ld      hl,(#0e6c) ; Teclas do jogador 1 (cima, baixo).
0625  22700e    ld      (#0e70),hl ; Teclas atuais (cima, baixo).
0628  cdbc0d    call    #0dbc ; Limpa KEY0~KEY0+3 e chama SKEY?.
062b  cda40a    call    #0aa4
; if (m[0x0e7e] >= m[0x0e61]) {
;   // ...
; }
062e  3a7e0e    ld      a,(#0e7e)
0631  21610e    ld      hl,#0e61
0634  be        cp      (hl)
0635  da8508    jp      c,#0885
0638  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
063b  fe05      cp      #05 ; Tanque destruído?
063d  ca5808    jp      z,#0858 ; Sim: desvia.
0640  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
0643  fe05      cp      #05 ; Tanque destruído?
0645  cad105    jp      z,#05d1 ; Sim: desvia.
0648  3a0401    ld      a,(#0104) ; PLAY.
064b  fe09      cp      #09 ;  Tópico de jogo de 1 a 8 (para 2 jogadores)?
064d  da5808    jp      c,#0858 ; Sim: desvia.
; Tópico de jogo 9 a 16 (contra o computador).
0650  0e39      ld      c,#39 ; '9' (tiro).
0652  cdce0d    call    #0dce ; Tecla foi pressionada?
0655  cab706    jp      z,#06b7 ; Sim: desvia. Apaga KEY0~KEY0+3 e coloca C em KEY0.
0658  cdc106    call    #06c1 ; Apaga KEY0~KEY0+3.
;
065b  2a730e    ld      hl,(#0e73) ; Posição do outro tanque.
065e  7c        ld      a,h
065f  fe83      cp      #83 ; Acima da linha 24?
0661  da7106    jp      c,#0671 ; Sim: desvia.
0664  fe86      cp      #86 ; Acima da linha 48?
0666  d27106    jp      nc,#0671 ; Não: desvia.
0669  7d        ld      a,l
066a  e61f      and     #1f
066c  fe01      cp      #01 ; Está na primeira coluna possível?
066e  ca5707    jp      z,#0757 ; Sim: desvia. (Dirige-se à direita, evitando bater na base inimiga.)
;
0671  3a850e    ld      a,(#0e85)
0674  a7        and     a
0675  cace06    jp      z,#06ce
0678  3a860e    ld      a,(#0e86)
067b  3c        inc     a
067c  32860e    ld      (#0e86),a
067f  f5        push    af
0680  3a0401    ld      a,(#0104) ; PLAY.
0683  fe0d      cp      #0d ; Tópico >= 13?
0685  d2a006    jp      nc,#06a0 ; Sim: desvia.
0688  f1        pop     af
0689  fe03      cp      #03
068b  ca9a06    jp      z,#069a
;
068e  fe0a      cp      #0a
0690  da5808    jp      c,#0858
0693  af        xor     a
0694  32850e    ld      (#0e85),a
0697  32860e    ld      (#0e86),a
;
069a  cda406    call    #06a4 ; Posiciona novo tiro do outro tanque.
069d  c35808    jp      #0858
;
06a0  f1        pop     af
06a1  c38e06    jp      #068e

; Posiciona novo tiro do outro tanque.
06a4  2a730e    ld      hl,(#0e73) ; Posição do outro tanque.
06a7  eb        ex      de,hl
06a8  cd3f0e    call    #0e3f ; Procura slot de tiro disponível.
06ab  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
06ae  c0        ret     nz ; Retorna se não há slot disponível.
06af  cd630a    call    #0a63 ; Registra novo tiro no slot.
06b2  af        xor     a
06b3  328b0e    ld      (#0e8b),a ; Contador de ciclos de espera para jogador 2.
06b6  c9        ret

; Apaga KEY0~KEY0+3 e coloca C em KEY0.
06b7  cdc106    call    #06c1 ; Apaga KEY0~KEY0+3.
06ba  79        ld      a,c
06bb  321b01    ld      (#011b),a ; KEY0.
06be  c35b06    jp      #065b
 
; Apaga KEY0~KEY0+3.
06c1  211b01    ld      hl,#011b ; KEY0.
06c4  3e00      ld      a,#00
06c6  77        ld      (hl),a
06c7  23        inc     hl
06c8  77        ld      (hl),a
06c9  23        inc     hl
06ca  77        ld      (hl),a
06cb  23        inc     hl
06cc  77        ld      (hl),a
06cd  c9        ret
 
;
06ce  2a540e    ld      hl,(#0e54) ; DE=Posição do tanque atual na VRAM.
06d1  eb        ex      de,hl
06d2  2a730e    ld      hl,(#0e73) ; HL=Posição do outro tanque na VRAM.
06d5  7a        ld      a,d
06d6  bc        cp      h ; Os tanques estão na mesma linha (ou quase)?
06d7  cafd06    jp      z,#06fd ; Sim: desvia.
; Tanques em linhas diferentes.
06da  7b        ld      a,e
06db  e61f      and     #1f
06dd  4f        ld      c,a
06de  7d        ld      a,l
06df  e61f      and     #1f
06e1  b9        cp      c ; Os tanques estão na mesma coluna?
06e2  c21a07    jp      nz,#071a ; Não: desvia.
06e5  7a        ld      a,d
06e6  bc        cp      h ; O outro tanque está acima ou abaixo do atual?
06e7  3e48      ld      a,#48 ; 'H' (cima).
06e9  daee06    jp      c,#06ee ; Abaixo: desvia.
06ec  3e50      ld      a,#50 ; 'P' (baixo).
; Registra movimento escolhido e desvia.
06ee  321c01    ld      (#011c),a ; KEY0+1.
06f1  3e01      ld      a,#01
06f3  32850e    ld      (#0e85),a
06f6  3d        dec     a
06f7  32860e    ld      (#0e86),a
06fa  c35808    jp      #0858
; Tanques na mesma linha (ou quase).
06fd  7b        ld      a,e
06fe  e6e0      and     #e0
0700  4f        ld      c,a
0701  7d        ld      a,l
0702  e6e0      and     #e0
0704  b9        cp      c ; Os tanques estão exatamente na mesma linha?
0705  c2da06    jp      nz,#06da ; Não: desvia.
; Tanques exatamente na mesma linha.
0708  7b        ld      a,e
0709  e61f      and     #1f
070b  4f        ld      c,a
070c  7d        ld      a,l
070d  e61f      and     #1f
070f  b9        cp      c ; O outro tanque está à direita do atual?
0710  3e30      ld      a,#30 ; '0' (direita).
0712  daee06    jp      c,#06ee ; À direita: desvia.
0715  3e58      ld      a,#58 ; 'X' (esquerda).
0717  c3ee06    jp      #06ee ; Registra movimento escolhido e desvia.

;
071a  eb        ex      de,hl
071b  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
071e  a7        and     a ; A=0 (à direita)?
071f  ca5c07    jp      z,#075c ; Sim: desvia.
0722  fe02      cp      #02
0724  da8507    jp      c,#0785 ; A=1 (à esquerda)? Desvia.
0727  caa407    jp      z,#07a4 ; A=2 (para cima)? Desvia.
; Outro tanque movendo-se para baixo.
072a  cd4b0d    call    #0d4b ; Há parede abaixo do tanque?
072d  c2c907    jp      nz,#07c9 ; Não: desvia.
0730  7b        ld      a,e ; LSB da posição do outro tanque na VRAM.
0731  e61f      and     #1f ; Coluna atual do outro tanque.
0733  4f        ld      c,a
0734  3a540e    ld      a,(#0e54) ; LSB da posição do tanque atual na VRAM.
0737  e61f      and     #1f ; Coluna atual do tanque atual.
0739  b9        cp      c ; Tanque atual à esquerda do outro tanque?
073a  da4b07    jp      c,#074b ; Sim: Desvia.
073d  cd100d    call    #0d10 ; Há parede à direita do tanque?
0740  c25707    jp      nz,#0757 ; Não: Define movimento do outro tanque para a direita.
0743  3e48      ld      a,#48 ; 'H' (para cima).

; Registra tecla de movimento e continua.
0745  321c01    ld      (#011c),a ; KEY0+1
0748  c34708    jp      #0847

074b  cd290d    call    #0d29 ; Há parede à esquerda do tanque?
074e  ca3d07    jp      z,#073d ; Sim: desvia.
; Define movimento do outro tanque para a esquerda.
0751  3a4e04    ld      a,(#044e) ; 'X' (para a esquerda).
0754  c34507    jp      #0745
; Define movimento do outro tanque para a direita.
0757  3e30      ld      a,#30 ; '0' (para a direita).
0759  c34507    jp      #0745

; Outro tanque movendo-se para a direita.
075c  cd100d    call    #0d10 ; Há parede à direita do tanque?
075f  c2c907    jp      nz,#07c9 ; Não: desvia.
0762  3a550e    ld      a,(#0e55) ; MSB da posição do tanque atual na VRAM.
0765  ba        cp      d
0766  da7507    jp      c,#0775
0769  cd4b0d    call    #0d4b ; Há parede abaixo do tanque?
076c  c28007    jp      nz,#0780 ; Não: Define movimento do outro tanque para baixo.
076f  3a4e04    ld      a,(#044e) ; 'X' (para a esquerda).
0772  c34507    jp      #0745

;
0775  cd2f0d    call    #0d2f ; Há parede acima do tanque?
0778  ca6907    jp      z,#0769 ; Sim: desvia.
; Define movimento do outro tanque para cima.
077b  3e48      ld      a,#48 ; 'H' (para cima).
077d  c34507    jp      #0745
; Define movimento do outro tanque para baixo.
0780  3e50      ld      a,#50 ; 'P' (para baixo).
0782  c34507    jp      #0745

; Outro tanque movendo-se à esquerda.
0785  cd290d    call    #0d29 ; Há parede à esquerda do tanque?
0788  c2c907    jp      nz,#07c9 ; Não: desvia.
078b  3a550e    ld      a,(#0e55)
078e  ba        cp      d
078f  da9b07    jp      c,#079b
0792  cd4b0d    call    #0d4b ; Há parede abaixo do tanque?
0795  c28007    jp      nz,#0780 ; Não: Define movimento do outro tanque para baixo.
0798  c35707    jp      #0757 ; Define movimento do outro tanque para a direita.
079b  cd2f0d    call    #0d2f ; Há parede acima do tanque?
079e  ca9207    jp      z,#0792 ; Sim: desvia.
07a1  c37b07    jp      #077b ; Define movimento do outro tanque para cima.

; Outro tanque movendo-se para cima.
07a4  cd2f0d    call    #0d2f ; Há parede acima do tanque?
07a7  c2c907    jp      nz,#07c9 ; Não: desvia.
07aa  7b        ld      a,e
07ab  e61f      and     #1f
07ad  4f        ld      c,a
07ae  3a540e    ld      a,(#0e54) ; Posição do tanque atual.
07b1  e61f      and     #1f
07b3  b9        cp      c
07b4  dac007    jp      c,#07c0
07b7  cd100d    call    #0d10 ; Há parede à direita do tanque?
07ba  c25707    jp      nz,#0757 ; Não: Define movimento do outro tanque para a direita.
07bd  c38007    jp      #0780 ; Define movimento do outro tanque para baixo.
07c0  cd290d    call    #0d29 ; Há parede à esquerda do tanque?
07c3  cab707    jp      z,#07b7 ; Sim: desvia.
07c6  c35107    jp      #0751 ; Define movimento do outro tanque para a esquerda.

;
07c9  2a0701    ld      hl,(#0107) ; RANDOM.
07cc  7c        ld      a,h
07cd  85        add     a,l
07ce  47        ld      b,a
07cf  e603      and     #03
07d1  a7        and     a
07d2  ca3008    jp      z,#0830
07d5  78        ld      a,b
07d6  e630      and     #30
07d8  a7        and     a
07d9  c24708    jp      nz,#0847
07dc  78        ld      a,b
07dd  e6cc      and     #cc
07df  fe84      cp      #84
07e1  ca1a08    jp      z,#081a
07e4  fe80      cp      #80
07e6  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
07e9  da0508    jp      c,#0805
07ec  a7        and     a ; Para a direita?
07ed  0650      ld      b,#50 ; 'P' (para baixo).
07ef  cafe07    jp      z,#07fe ; Sim: desvia.
07f2  fe02      cp      #02
07f4  0648      ld      b,#48 ; 'H' (para cima).
07f6  dafe07    jp      c,#07fe ; Para a esquerda? Sim: desvia.
07f9  ca1508    jp      z,#0815 ; Para cima? Sim: desvia.
07fc  0658      ld      b,#58 ; 'X' (para a esquerda).
;
07fe  78        ld      a,b
07ff  321c01    ld      (#011c),a ; KEY0+1.
0802  c34708    jp      #0847
0805  a7        and     a
0806  0648      ld      b,#48 ; 'H' (para cima).
0808  cafe07    jp      z,#07fe
080b  fe02      cp      #02
080d  0650      ld      b,#50 ; 'P' (para baixo).
080f  dafe07    jp      c,#07fe
0812  cafc07    jp      z,#07fc
;
0815  0630      ld      b,#30 ; '0' (para a direita).
0817  c3fe07    jp      #07fe
081a  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
081d  a7        and     a
081e  cafc07    jp      z,#07fc
0821  fe02      cp      #02
0823  da1508    jp      c,#0815
0826  0650      ld      b,#50 ; 'P' (para baixo).
0828  cafe07    jp      z,#07fe
082b  0648      ld      b,#48 ; 'H' (para cima).
082d  c3fe07    jp      #07fe

; Define ação do outro tanque aleatoriamente.
0830  3a0701    ld      a,(#0107) ; RANDOM.
0833  0f        rrca
0834  da4708    jp      c,#0847
0837  0f        rrca
0838  da7b07    jp      c,#077b ; Define movimento do outro tanque para cima.
083b  0f        rrca
083c  da5707    jp      c,#0757 ; Define movimento do outro tanque para a direita.
083f  0f        rrca
0840  da5107    jp      c,#0751 ; Define movimento do outro tanque para a esquerda.
0843  0f        rrca
0844  da8007    jp      c,#0780 ; Define movimento do outro tanque para baixo.
0847  2a0701    ld      hl,(#0107) ; RANDOM.
084a  7c        ld      a,h
084b  85        add     a,l
084c  e60f      and     #0f
084e  fe07      cp      #07
0850  c25808    jp      nz,#0858
0853  3e40      ld      a,#40 ; '@' (tiro).
0855  321d01    ld      (#011d),a ; KEY0+2.

;
0858  21b902    ld      hl,#02b9 ; Animação: Tanque amarelo para a direita.
085b  22640e    ld      (#0e64),hl ; Animação: Tanque para a direita.
085e  21e702    ld      hl,#02e7 ; Animação: Tanque amarelo para a esquerda.
0861  22620e    ld      (#0e62),hl ; Animação: Tanque para a esquerda.
0864  21c302    ld      hl,#02c3 ; Animação: Tanque amarelo para cima.
0867  22660e    ld      (#0e66),hl ; Animação: Tanque para cima.
086a  21f102    ld      hl,#02f1 ; Animação: Tanque amarelo para baixo.
086d  22680e    ld      (#0e68),hl ; Animação: Tanque para baixo.
0870  2a800e    ld      hl,(#0e80) ; Teclas do jogador 2 (esquerda, direita).
0873  226e0e    ld      (#0e6e),hl ; Teclas atuais (esquerda, direita).
0876  2a820e    ld      hl,(#0e82) ; Teclas do jogador 2 (cima, baixo).
0879  22700e    ld      (#0e70),hl ; Teclas atuais (cima, baixo).
087c  cdfb0c    call    #0cfb ; Alterna tanques.
087f  cda40a    call    #0aa4
0882  cdfb0c    call    #0cfb ; Alterna tanques.
0885  21610e    ld      hl,#0e61
0888  34        inc     (hl)
0889  3a750e    ld      a,(#0e75) ; Direção do outro tanque.
088c  fe05      cp      #05 ; Tanque destruído?
088e  cad105    jp      z,#05d1 ; Sim: desvia.
0891  3a870e    ld      a,(#0e87)
0894  a7        and     a
0895  c2ed09    jp      nz,#09ed
0898  3a8a0e    ld      a,(#0e8a) ; Contador de ciclos de espera para jogador 1.
089b  3c        inc     a ; Incrementa.
089c  328a0e    ld      (#0e8a),a ; Contador de ciclos de espera para jogador 1.
089f  fe0a      cp      #0a ; Aceita comando quando conta até 10.
08a1  dac008    jp      c,#08c0
08a4  0e39      ld      c,#39 ; '9' (tiro).
08a6  cdce0d    call    #0dce ; Tecla foi pressionada?
08a9  c2c008    jp      nz,#08c0 ; Não: desvia.
08ac  2a540e    ld      hl,(#0e54) ; Posição do tanque atual.
08af  eb        ex      de,hl
08b0  cd3f0e    call    #0e3f ; Procura slot de tiro disponível.
08b3  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
08b6  c2d708    jp      nz,#08d7 ; Retorna se não há slot disponível.
08b9  cd630a    call    #0a63 ; Registra novo tiro no slot.
08bc  af        xor     a
08bd  328a0e    ld      (#0e8a),a ; Contador de ciclos de espera para jogador 1.
08c0  3a8b0e    ld      a,(#0e8b) ; Contador de ciclos de espera para jogador 2.
08c3  3c        inc     a ; Incrementa.
08c4  328b0e    ld      (#0e8b),a ; Contador de ciclos de espera para jogador 2.
08c7  fe0a      cp      #0a ; Aceita comando quando conta até 10.
08c9  dad708    jp      c,#08d7
08cc  0e40      ld      c,#40 ; '@' (tiro).
08ce  cdce0d    call    #0dce ; Tecla foi pressionada?
08d1  c2d708    jp      nz,#08d7 ; Não: desvia.
08d4  cda406    call    #06a4 ; Posiciona novo tiro do outro tanque.
08d7  218d0e    ld      hl,#0e8d
08da  7e        ld      a,(hl)
08db  feff      cp      #ff
08dd  cae909    jp      z,#09e9
08e0  a7        and     a
08e1  c2ea08    jp      nz,#08ea
08e4  23        inc     hl
08e5  23        inc     hl
08e6  23        inc     hl
08e7  c3da08    jp      #08da
08ea  2b        dec     hl
08eb  5e        ld      e,(hl)
08ec  23        inc     hl
08ed  56        ld      d,(hl)
08ee  23        inc     hl
08ef  1a        ld      a,(de)
08f0  fedd      cp      #dd
08f2  ca8f09    jp      z,#098f
08f5  a7        and     a
08f6  ca0809    jp      z,#0908
08f9  feff      cp      #ff
08fb  c20309    jp      nz,#0903
08fe  af        xor     a
08ff  12        ld      (de),a
0900  c38f09    jp      #098f
0903  fe3c      cp      #3c
0905  c28f09    jp      nz,#098f
0908  af        xor     a
0909  12        ld      (de),a
090a  7e        ld      a,(hl)
090b  e5        push    hl
090c  a7        and     a
090d  ca5c09    jp      z,#095c
0910  fe02      cp      #02
0912  da9509    jp      c,#0995
0915  caae09    jp      z,#09ae
0918  212000    ld      hl,#0020
091b  19        add     hl,de
091c  7e        ld      a,(hl)
091d  fe3c      cp      #3c
091f  ca8c09    jp      z,#098c
0922  214000    ld      hl,#0040
0925  19        add     hl,de
0926  7e        ld      a,(hl)
0927  fedd      cp      #dd
0929  ca8e09    jp      z,#098e
092c  fe3c      cp      #3c
092e  ca8c09    jp      z,#098c
0931  216000    ld      hl,#0060
0934  19        add     hl,de
0935  7e        ld      a,(hl)
0936  fe3c      cp      #3c
0938  ca8c09    jp      z,#098c
093b  218000    ld      hl,#0080
093e  19        add     hl,de
093f  7e        ld      a,(hl)
0940  fedd      cp      #dd
0942  ca8e09    jp      z,#098e
0945  fe3c      cp      #3c
0947  ca8c09    jp      z,#098c
094a  7c        ld      a,h
094b  fe88      cp      #88
094d  ca8e09    jp      z,#098e
0950  363c      ld      (hl),#3c
0952  eb        ex      de,hl
0953  e1        pop     hl
0954  2b        dec     hl
0955  72        ld      (hl),d
0956  2b        dec     hl
0957  73        ld      (hl),e
0958  23        inc     hl
0959  c3e408    jp      #08e4
095c  eb        ex      de,hl
095d  7d        ld      a,l
095e  e61f      and     #1f
0960  fe03      cp      #03
0962  da8e09    jp      c,#098e
0965  23        inc     hl
0966  7e        ld      a,(hl)
0967  fedd      cp      #dd
0969  ca8e09    jp      z,#098e
096c  fe3c      cp      #3c
096e  ca8c09    jp      z,#098c
0971  23        inc     hl
0972  7e        ld      a,(hl)
0973  fedd      cp      #dd
0975  ca8e09    jp      z,#098e
0978  fe3c      cp      #3c
097a  ca8c09    jp      z,#098c
097d  7d        ld      a,l
097e  e61f      and     #1f
0980  a7        and     a
0981  ca8e09    jp      z,#098e
0984  fe1f      cp      #1f
0986  ca8e09    jp      z,#098e
0989  c35009    jp      #0950
098c  36ff      ld      (hl),#ff
098e  e1        pop     hl
098f  2b        dec     hl
0990  3600      ld      (hl),#00
0992  c3e408    jp      #08e4
0995  eb        ex      de,hl
0996  7d        ld      a,l
0997  e61f      and     #1f
0999  fe1c      cp      #1c
099b  d28e09    jp      nc,#098e
099e  2b        dec     hl
099f  7e        ld      a,(hl)
09a0  fedd      cp      #dd
09a2  ca8e09    jp      z,#098e
09a5  fe3c      cp      #3c
09a7  ca8c09    jp      z,#098c
09aa  2b        dec     hl
09ab  c37209    jp      #0972
09ae  21e0ff    ld      hl,#ffe0
09b1  19        add     hl,de
09b2  7e        ld      a,(hl)
09b3  fe3c      cp      #3c
09b5  ca8c09    jp      z,#098c
09b8  21c0ff    ld      hl,#ffc0
09bb  19        add     hl,de
09bc  7e        ld      a,(hl)
09bd  fedd      cp      #dd
09bf  ca8e09    jp      z,#098e
09c2  fe3c      cp      #3c
09c4  ca8c09    jp      z,#098c
09c7  21a0ff    ld      hl,#ffa0
09ca  19        add     hl,de
09cb  7e        ld      a,(hl)
09cc  fe3c      cp      #3c
09ce  ca8c09    jp      z,#098c
09d1  2180ff    ld      hl,#ff80
09d4  19        add     hl,de
09d5  7e        ld      a,(hl)
09d6  fedd      cp      #dd
09d8  ca8e09    jp      z,#098e
09db  fe3c      cp      #3c
09dd  ca8c09    jp      z,#098c
09e0  7c        ld      a,h
09e1  fe81      cp      #81
09e3  da8e09    jp      c,#098e
09e6  c35009    jp      #0950
09e9  21870e    ld      hl,#0e87
09ec  34        inc     (hl)
09ed  214184    ld      hl,#8441
09f0  7e        ld      a,(hl)
09f1  a7        and     a
09f2  cafa09    jp      z,#09fa
09f5  e6aa      and     #aa
09f7  c2fc09    jp      nz,#09fc
09fa  36aa      ld      (hl),#aa
09fc  215e84    ld      hl,#845e
09ff  7e        ld      a,(hl)
0a00  a7        and     a
0a01  ca090a    jp      z,#0a09
0a04  e655      and     #55
0a06  c20b0a    jp      nz,#0a0b
0a09  3655      ld      (hl),#55
; Produz breve pausa conforme o nível de jogo.
0a0b  3a0401    ld      a,(#0104) ; PLAY.
0a0e  fe05      cp      #05
0a10  da1d0a    jp      c,#0a1d
0a13  fe09      cp      #09
0a15  da3c0a    jp      c,#0a3c
0a18  d608      sub     #08
0a1a  c30e0a    jp      #0a0e
0a1d  fe02      cp      #02
0a1f  011100    ld      bc,#0011 ; PLAY=1,9: 17ms.
0a22  da360a    jp      c,#0a36
0a25  010e00    ld      bc,#000e ; PLAY=2,10: 14ms.
0a28  ca360a    jp      z,#0a36
0a2b  fe04      cp      #04
0a2d  010b00    ld      bc,#000b ; PLAY=4,12: 11ms.
0a30  ca360a    jp      z,#0a36
0a33  010800    ld      bc,#0008 ; PLAY=3,11: 8ms.
0a36  cd48c0    call    #c048 ; DELAYB.
0a39  c3d105    jp      #05d1

0a3c  fe06      cp      #06
0a3e  010b00    ld      bc,#000b ; PLAY=5,13: 11ms.
0a41  da550a    jp      c,#0a55
0a44  010900    ld      bc,#0009 ; PLAY=6,14: 9ms.
0a47  ca550a    jp      z,#0a55
0a4a  fe03      cp      #03 ; (Bug? Deveria ser 8?)
0a4c  010800    ld      bc,#0008 ; (PLAY=8,16:) 8ms.
0a4f  ca550a    jp      z,#0a55
0a52  010600    ld      bc,#0006 ; PLAY=8,9,15,16: 6ms.
0a55  cd48c0    call    #c048 ; DELAYB.

0a58  3a610e    ld      a,(#0e61)
0a5b  fe03      cp      #03
0a5d  cad105    jp      z,#05d1
0a60  c3ea05    jp      #05ea

; Registra novo tiro no slot.
; HL = endereço do slot de tiro.
; DE = endereço do tanque.
; A = direção do tanque.
0a63  e5        push    hl
0a64  a7        and     a ; Qual a direção do tanque?
0a65  ca920a    jp      z,#0a92 ; A=0: HL=+3. (+3 colunas).
0a68  fe02      cp      #02
0a6a  da980a    jp      c,#0a98 ; A=1: HL=-3. (-3 colunas).
0a6d  ca9e0a    jp      z,#0a9e ; A=2: HL=+64 (+2 linhas).
0a70  21a000    ld      hl,#00a0 ; A=3: HL=+160 (+5 linhas).
;
0a73  19        add     hl,de ; Posição inicial do tiro.
0a74  47        ld      b,a
0a75  7d        ld      a,l
0a76  eb        ex      de,hl
0a77  e1        pop     hl
0a78  e61f      and     #1f ; Está na última coluna da tela?
0a7a  fe1f      cp      #1f
0a7c  c8        ret     z ; Sim: retorna sem registrar o tiro.
0a7d  a7        and     a ; Está na primeira coluna da tela?
0a7e  c8        ret     z ; Sim: Retorna sem registrar o tiro.
0a7f  73        ld      (hl),e ; Registra posição do tiro nos dois primeiros bytes do slot.
0a80  23        inc     hl
0a81  72        ld      (hl),d
0a82  23        inc     hl
0a83  70        ld      (hl),b ; Registra direção do tiro no terceiro byte do slot.
0a84  e5        push    hl
0a85  214911    ld      hl,#1149 ; Som do tiro.
0a88  224901    ld      (#0149),hl ; NCC.
0a8b  3e79      ld      a,#79 ; VOICEC=2, INTRPC=4, produção de tom.
0a8d  324b01    ld      (#014b),a ; CVALUE.
0a90  e1        pop     hl
0a91  c9        ret

; Posição inicial do tiro à direita do tanque.
0a92  210300    ld      hl,#0003 ; +3 colunas.
0a95  c3730a    jp      #0a73

; Posição inicial do tiro à esquerda do tanque.
0a98  21fdff    ld      hl,#fffd ; -3 colunas.
0a9b  c3730a    jp      #0a73

; Posição inicial do tiro abaixo do tanque.
0a9e  2a4f04    ld      hl,(#044f) ; +64: +2 linhas.
0aa1  c3730a    jp      #0a73

;
0aa4  215e0e    ld      hl,#0e5e ; Contador de invulnerabilidade do jogador atual.
0aa7  3e0b      ld      a,#0b
0aa9  be        cp      (hl) ; É diferente de 11?
0aaa  caae0a    jp      z,#0aae ; Não: desvia.
0aad  34        inc     (hl) ; Incrementa em 1.
0aae  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
0ab1  fe05      cp      #05 ; Tanque destruído?
0ab3  cac20b    jp      z,#0bc2 ; Sim: desvia.
0ab6  47        ld      b,a ; Direção anterior.

0ab7  3a6e0e    ld      a,(#0e6e) ; Tecla para esquerda.
0aba  4f        ld      c,a
0abb  cdce0d    call    #0dce ; Tecla foi pressionada?
0abe  2a540e    ld      hl,(#0e54) ; Posição do tanque atual.
0ac1  eb        ex      de,hl
0ac2  c2e70a    jp      nz,#0ae7 ; Tecla não pressionada: desvia.
0ac5  7b        ld      a,e
0ac6  e61f      and     #1f
0ac8  fe01      cp      #01 ; Tanque está na coluna mais à esquerda possível?
0aca  cae70a    jp      z,#0ae7 ; Sim: desvia.
0acd  cd290d    call    #0d29 ; Há parede à esquerda do tanque?
0ad0  cae70a    jp      z,#0ae7 ; Sim: desvia.
0ad3  78        ld      a,b
0ad4  fe01      cp      #01 ; Direção anterior era à esquerda?
0ad6  cac80b    jp      z,#0bc8 ; Sim: desvia.
0ad9  3e01      ld      a,#01 ; Nova direção: à esquerda.
0adb  2a620e    ld      hl,(#0e62) ; Animação: Tanque para a esquerda.
; Define direção.
0ade  32560e    ld      (#0e56),a ; Direção do tanque atual.
0ae1  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0ae4  c3c80b    jp      #0bc8

0ae7  3a6f0e    ld      a,(#0e6f) ; Tecla para direita.
0aea  4f        ld      c,a
0aeb  cdce0d    call    #0dce ; Tecla foi pressionada?
0aee  c20b0b    jp      nz,#0b0b ; Não: desvia.
0af1  7b        ld      a,e ; Tanque está na coluna mais à direita possível?
0af2  e61f      and     #1f
0af4  fe1e      cp      #1e
0af6  ca0b0b    jp      z,#0b0b ; Sim: desvia.
0af9  cd100d    call    #0d10 ; Há parede à direita do tanque?
0afc  ca0b0b    jp      z,#0b0b ; Sim: desvia.
0aff  78        ld      a,b
0b00  a7        and     a ; Direção anterior era à direita?
0b01  cac80b    jp      z,#0bc8 ; Sim: desvia.
0b04  af        xor     a ; Nova direção: à direita.
0b05  2a640e    ld      hl,(#0e64) ; Animação: Tanque para a direita.
0b08  c3de0a    jp      #0ade ; Define direção.

0b0b  3a700e    ld      a,(#0e70) ; Tecla para cima.
0b0e  4f        ld      c,a
0b0f  cdce0d    call    #0dce ; Tecla foi pressionada?
0b12  c2350b    jp      nz,#0b35 ; Não: desvia.
0b15  7a        ld      a,d ; Tanque está na linha mais superior possível?
0b16  fe81      cp      #81
0b18  c2210b    jp      nz,#0b21
0b1b  7b        ld      a,e
0b1c  fe40      cp      #40
0b1e  da350b    jp      c,#0b35 ; Sim: desvia.
0b21  cd2f0d    call    #0d2f ; Há parede acima do tanque?
0b24  ca350b    jp      z,#0b35 ; Sim: desvia.
0b27  78        ld      a,b
0b28  fe02      cp      #02 ; Direção anterior era para cima?
0b2a  cac80b    jp      z,#0bc8 ; Sim: desvia.
0b2d  3e02      ld      a,#02 ; Nova direção: para cima.
0b2f  2a660e    ld      hl,(#0e66) ; Animação: Tanque para cima.
0b32  c3de0a    jp      #0ade ; Define direção.

0b35  3a710e    ld      a,(#0e71) ; Tecla para baixo.
0b38  4f        ld      c,a
0b39  cdce0d    call    #0dce ; Tecla foi pressionada?
0b3c  c25f0b    jp      nz,#0b5f ; Não: desvia.
0b3f  7a        ld      a,d ; Tanque está na linha mais inferior possível?
0b40  fe87      cp      #87
0b42  c24b0b    jp      nz,#0b4b
0b45  7b        ld      a,e
0b46  fea0      cp      #a0
0b48  d25f0b    jp      nc,#0b5f ; Sim: desvia.
0b4b  cd4b0d    call    #0d4b ; Há parede abaixo do tanque?
0b4e  ca5f0b    jp      z,#0b5f ; Sim: desvia.
0b51  78        ld      a,b
0b52  fe03      cp      #03 ; Direção anterior era para baixo?
0b54  cac80b    jp      z,#0bc8 ; Sim: desvia.
0b57  3e03      ld      a,#03 ; Nova direção: para baixo.
0b59  2a680e    ld      hl,(#0e68) ; Animação: Tanque para baixo.
0b5c  c3de0a    jp      #0ade ; Define direção.

; Não houve mudança de direção.
0b5f  78        ld      a,b
0b60  fe01      cp      #01
0b62  caae0b    jp      z,#0bae ; Direção anterior era à esquerda? Sim: desvia.
0b65  daa00b    jp      c,#0ba0 ; Direção anterior era à direita? Sim: desvia.
0b68  fe02      cp      #02
0b6a  cabc0b    jp      z,#0bbc ; Direção anterior era para cima? Sim: desvia.
; Direção anterior era para baixo.
0b6d  7a        ld      a,d ; Tanque está acima da linha mais inferior possível?
0b6e  fe87      cp      #87
0b70  da790b    jp      c,#0b79
0b73  7b        ld      a,e
0b74  fea0      cp      #a0
0b76  d27f0b    jp      nc,#0b7f ; Não: desvia.
0b79  cd4b0d    call    #0d4b ; Há parede abaixo do tanque?
;
0b7c  c2c80b    jp      nz,#0bc8 ; Não: desvia.
; Tanque impedido de se mover por parede ou fim de tela.
0b7f  cde20d    call    #0de2 ; Apaga tanque atual.
0b82  ca930b    jp      z,#0b93 ; Desvia se não houve colisão.
; Houve colisão.
0b85  3a5e0e    ld      a,(#0e5e) ; Contador de invulnerabilidade do jogador atual.
0b88  fe0a      cp      #0a ; Já cumpriu 10 ciclos de invulnerabilidade?
0b8a  da930b    jp      c,#0b93 ; Não: desvia.
0b8d  cd510d    call    #0d51 ; Registra explosão e prepara animação se ainda não estava registrada.
0b90  c3c80b    jp      #0bc8
;
0b93  cdf30d    call    #0df3 ; SHAPON'.
; Desacelera tanque impedido de se mover.
; if (m[0x0e5f] != 0) {
;   --m[0x0e5f];
; }
0b96  3a5f0e    ld      a,(#0e5f)
0b99  a7        and     a
0b9a  c8        ret     z
0b9b  3d        dec     a
0b9c  325f0e    ld      (#0e5f),a
0b9f  c9        ret

; Direção anterior era à direita.
0ba0  7b        ld      a,e
0ba1  e61f      and     #1f
0ba3  fe1e      cp      #1e ; Tanque está na última coluna possível?
0ba5  ca7f0b    jp      z,#0b7f ; Sim: desvia.
0ba8  cd100d    call    #0d10 ; Há parede à direita do tanque?
0bab  c37c0b    jp      #0b7c

; Direção anterior era à esquerda.
0bae  7b        ld      a,e
0baf  e61f      and     #1f
0bb1  fe01      cp      #01 ; Tanque está na primeira coluna possível?
0bb3  ca7f0b    jp      z,#0b7f ; Sim: desvia.
0bb6  cd290d    call    #0d29 ; Há parede à esquerda do tanque?
0bb9  c37c0b    jp      #0b7c

; Direção anterior era para cima?
0bbc  cd2f0d    call    #0d2f ; Há parede acima do tanque?
0bbf  c37c0b    jp      #0b7c

;
0bc2  013200    ld      bc,#0032 ; 50ms
0bc5  cd48c0    call    #c048 ; DELAYB

; Direção já definida.

; Acelera tanque(?)
; if (++mem[0x0e60] > 16) {
;   if (mem[0x0e5f] != 3) {
;     ++mem[0x0e5f];
;     mem[0x0e60] = 0;
;   }
; }

0bc8  21600e    ld      hl,#0e60
0bcb  34        inc     (hl)
0bcc  3e10      ld      a,#10
0bce  be        cp      (hl)
0bcf  d2e00b    jp      nc,#0be0
0bd2  3a5f0e    ld      a,(#0e5f)
0bd5  fe03      cp      #03
0bd7  cae00b    jp      z,#0be0
0bda  3c        inc     a
0bdb  325f0e    ld      (#0e5f),a
0bde  3600      ld      (hl),#00
;
0be0  cde20d    call    #0de2 ; Apaga tanque atual.
0be3  caf40b    jp      z,#0bf4 ; Desvia se não houve colisão.
0be6  3a5e0e    ld      a,(#0e5e) ; Contador de invulnerabilidade do jogador atual.
0be9  fe0a      cp      #0a ; Já cumpriu 10 ciclos de invulnerabilidade?
0beb  daf40b    jp      c,#0bf4 ; Não: desvia.
0bee  cd510d    call    #0d51 ; Registra explosão e prepara animação se ainda não estava registrada.
0bf1  c3db0c    jp      #0cdb
0bf4  2a570e    ld      hl,(#0e57) ; Ponteiro p/ sprite do tanque atual a desenhar.
0bf7  23        inc     hl
0bf8  7e        ld      a,(hl)
0bf9  a7        and     a
0bfa  c2db0c    jp      nz,#0cdb
0bfd  2a540e    ld      hl,(#0e54) ; Posição do tanque atual.
0c00  eb        ex      de,hl
0c01  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
0c04  fe01      cp      #01
0c06  cab70c    jp      z,#0cb7 ; =1
0c09  daa70c    jp      c,#0ca7 ; =0
0c0c  fe03      cp      #03
0c0e  cacf0c    jp      z,#0ccf ; =3
0c11  dac30c    jp      c,#0cc3 ; =2
0c14  cd5104    call    #0451 ; Inicializa música.
0c17  3e88      ld      a,#88
0c19  d380      out     (#80),a
0c1b  3a590e    ld      a,(#0e59) ; Vidas restantes do jogador atual.
0c1e  3d        dec     a ; Menos uma.
0c1f  ca520c    jp      z,#0c52 ; Zerou: Desvia.
0c22  32590e    ld      (#0e59),a ; Vidas restantes do jogador atual.
0c25  3a7b0e    ld      a,(#0e7b) ; Placar atual do outro jogador.
0c28  c605      add     a,#05 ; +5 pontos.
0c2a  327b0e    ld      (#0e7b),a ; Placar atual do outro jogador.
0c2d  01e803    ld      bc,#03e8 ; 1000ms.
0c30  cd48c0    call    #c048 ; DELAYB.
0c33  c1        pop     bc
0c34  3a5d0e    ld      a,(#0e5d) ; Identificador do jogador atual.
0c37  a7        and     a ; É o jogador 1?
0c38  c2450c    jp      nz,#0c45 ; Não: desvia.
; Jogador 1.
0c3b  cd5b05    call    #055b ; Inicializa posição do tanque azul e o desenha.
0c3e  af        xor     a
0c3f  325e0e    ld      (#0e5e),a ; Zera contador de invulnerabilidade do jogador atual.
0c42  c3d105    jp      #05d1

; Jogador 2.
0c45  cdfb0c    call    #0cfb ; Alterna tanques.
0c48  cd7605    call    #0576 ; Inicializa posição do tanque amarelo e o desenha.
0c4b  af        xor     a
0c4c  327d0e    ld      (#0e7d),a ; Zera contador de invulnerabilidade do outro jogador.
0c4f  c3d105    jp      #05d1

0c52  cd5104    call    #0451 ; Inicializa música.
0c55  3a5d0e    ld      a,(#0e5d) ; Identificador do jogador atual.
0c58  a7        and     a ; É o jogador 1?
0c59  ca850c    jp      z,#0c85 ; Sim: desvia.
; Jogador 2.
0c5c  cdfb0c    call    #0cfb ; Alterna tanques.
0c5f  3a0401    ld      a,(#0104) ; PLAY.
0c62  fe09      cp      #09
0c64  da700c    jp      c,#0c70
0c67  fe10      cp      #10
0c69  ca700c    jp      z,#0c70
0c6c  3c        inc     a
0c6d  320401    ld      (#0104),a ; PLAY.
; +5 pontos por cada vida restante do jogador 1.
0c70  af        xor     a ; Zera carry flag.
0c71  3a590e    ld      a,(#0e59) ; Vidas restantes do jogador atual.
0c74  47        ld      b,a ; Multiplica por 5.
0c75  17        rla
0c76  17        rla
0c77  80        add     a,b
0c78  215c0e    ld      hl,#0e5c ; Placar atual do jogador atual.
0c7b  86        add     a,(hl)
0c7c  322301    ld      (#0123),a ; SCOREA.
0c7f  110d80    ld      de,#800d ; Posição na VRAM do placar do jogador 1.
0c82  c3970c    jp      #0c97
; +5 pontos para cada vida restante do jogador 2.
0c85  af        xor     a ; Zera carry flag.
0c86  3a780e    ld      a,(#0e78) ; Vidas restantes do outro jogador.
0c89  47        ld      b,a ; Multiplica por 5.
0c8a  17        rla
0c8b  17        rla
0c8c  80        add     a,b
0c8d  217b0e    ld      hl,#0e7b ; Placar atual do outro jogador.
0c90  86        add     a,(hl)
0c91  322401    ld      (#0124),a ; SCOREB.
0c94  111a80    ld      de,#801a ; Posição na VRAM do placar do jogador 2.

0c97  cd900d    call    #0d90 ; Exibe valor de A alinhado à esquerda.
0c9a  cd4ec0    call    #c04e ; LSCORE. (Transfere placares atuais para tabela.)
0c9d  c1        pop     bc
0c9e  018813    ld      bc,#1388 ; 5000ms.
0ca1  cd48c0    call    #c048 ; DELAYB.
0ca4  c37904    jp      #0479
;
0ca7  2a640e    ld      hl,(#0e64) ; Animação: Tanque para a direita.
0caa  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0cad  210100    ld      hl,#0001
0cb0  19        add     hl,de
0cb1  22540e    ld      (#0e54),hl ; Guarda posição do tanque atual.
0cb4  c3db0c    jp      #0cdb
;
0cb7  2a620e    ld      hl,(#0e62) ; Animação: Tanque para a esquerda.
0cba  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0cbd  21ffff    ld      hl,#ffff
0cc0  c3b00c    jp      #0cb0
0cc3  2a660e    ld      hl,(#0e66) ; Animação: Tanque para cima.
0cc6  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0cc9  21e0ff    ld      hl,#ffe0
0ccc  c3b00c    jp      #0cb0
0ccf  2a680e    ld      hl,(#0e68) ; Animação: Tanque para baixo.
0cd2  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0cd5  212000    ld      hl,#0020
0cd8  c3b00c    jp      #0cb0
0cdb  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
0cde  fe05      cp      #05 ; Tanque destruído?
0ce0  c2e70c    jp      nz,#0ce7 ; Não: desvia.
0ce3  3e8a      ld      a,#8a
0ce5  d380      out     (#80),a
0ce7  2a570e    ld      hl,(#0e57) ; Ponteiro p/ sprite do tanque atual a desenhar.
0cea  225a0e    ld      (#0e5a),hl ; Ponteiro p/ sprite do tanque atual a apagar.
0ced  5e        ld      e,(hl)
0cee  23        inc     hl
0cef  56        ld      d,(hl)
0cf0  23        inc     hl
0cf1  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0cf4  2a540e    ld      hl,(#0e54) ; Posição do tanque atual.
0cf7  cdf30d    call    #0df3 ; SHAPON'.
0cfa  c9        ret

; Alterna tanques.
; Intercambia os 13 bytes a partir de $0e54 (dados do tanque atual)
; com os 13 bytes a partir de $0e73 (dados do outro tanque).
0cfb  21540e    ld      hl,#0e54 ; Endereço da posição do tanque atual.
0cfe  11730e    ld      de,#0e73 ; Endereço da posição do outro tanque.
0d01  060d      ld      b,#0d
0d03  4e        ld      c,(hl)
0d04  eb        ex      de,hl
0d05  7e        ld      a,(hl)
0d06  71        ld      (hl),c
0d07  eb        ex      de,hl
0d08  77        ld      (hl),a
0d09  05        dec     b
0d0a  c8        ret     z
 
0d0b  23        inc     hl
0d0c  13        inc     de
0d0d  c3030d    jp      #0d03

; Verifica se há (parte de) parede à direita do tanque.
; Retorna flag Z ativo se houver.
0d10  214200    ld      hl,#0042 ; +2 linhas, +2 colunas.
0d13  d5        push    de
0d14  c5        push    bc
0d15  0606      ld      b,#06 ; Examinar 6 bytes de altura.
0d17  19        add     hl,de
0d18  7e        ld      a,(hl)
0d19  fedd      cp      #dd ; Há padrão de parede (%11.01.11.01)?
0d1b  ca480d    jp      z,#0d48 ; Sim: Termina.
0d1e  05        dec     b
0d1f  ca450d    jp      z,#0d45 ; Examinou os 6 bytes de altura e não achou parede: Termina.
0d22  eb        ex      de,hl
0d23  21e0ff    ld      hl,#ffe0 ; -32: -1 linha.
0d26  c3170d    jp      #0d17

; Verifica se há (parte de) parede à esquerda do tanque.
; Retorna flag Z ativo se houver.
0d29  213e00    ld      hl,#003e ; +2 linhas, -2 colunas.
0d2c  c3130d    jp      #0d13

; Verifica se há (parte de) parede acima do tanque.
; Retorna flag Z ativo se houver.
0d2f  217fff    ld      hl,#ff7f ; -4 linhas, -1 coluna.
0d32  d5        push    de
0d33  c5        push    bc
0d34  0603      ld      b,#03 ; Examinar 3 bytes de largura.
0d36  19        add     hl,de
0d37  7e        ld      a,(hl)
0d38  fedd      cp      #dd ; Há padrão de parede (%11.01.11.01)?
0d3a  ca480d    jp      z,#0d48 ; Sim: Termina.
0d3d  05        dec     b
0d3e  ca450d    jp      z,#0d45 ; Examinou os 3 bytes de largura e não achou parede: Termina.
0d41  23        inc     hl ; +1 coluna.
0d42  c3370d    jp      #0d37
;
0d45  af        xor     a
0d46  3c        inc     a
0d47  a7        and     a ; Desativa flag Z.
0d48  c1        pop     bc
0d49  d1        pop     de
0d4a  c9        ret
 
; Verifica se há (parte de) parede abaixo do tanque.
; Retorna flag Z ativo se houver.
0d4b  215f00    ld      hl,#005f ; +3 linhas, -1 coluna.
0d4e  c3320d    jp      #0d32

; Registra explosão e prepara animação se ainda não estava registrada.
0d51  3a560e    ld      a,(#0e56) ; Direção do tanque atual.
0d54  fe05      cp      #05 ; Tanque destruído?
0d56  c8        ret     z ; Sim: retorna.
 
0d57  217a11    ld      hl,#117a ; Som da explosão.
0d5a  224901    ld      (#0149),hl ; NCC.
0d5d  3eb5      ld      a,#b5 ; VOICEC=1, INTRPC=4, geração de ruído.
0d5f  324b01    ld      (#014b),a ; CVALUE.
0d62  cdb50d    call    #0db5 ; Pausa de 30ms.
0d65  3e05      ld      a,#05 ; Tanque destruído.
0d67  32560e    ld      (#0e56),a ; Direção do tanque atual.
0d6a  21cd02    ld      hl,#02cd ; Animação: Explosão.
0d6d  22570e    ld      (#0e57),hl ; Ponteiro p/ sprite do tanque atual a desenhar.
0d70  cd740d    call    #0d74 ; Apaga todos os tiros e libera os slots.
0d73  c9        ret

; Apaga todos os tiros e libera os slots.
0d74  218d0e    ld      hl,#0e8d ; Primeiro slot de tiro.
;
0d77  7e        ld      a,(hl)
0d78  feff      cp      #ff ; Chegou ao fim dos slots de tiro?
0d7a  c8        ret     z ; Sim: retorna.
 
0d7b  a7        and     a ; Slot de tiro está livre?
0d7c  c2850d    jp      nz,#0d85 ; Não: desvia.
0d7f  23        inc     hl ; Passa ao próximo slot de tiro.
0d80  23        inc     hl
0d81  23        inc     hl
0d82  c3770d    jp      #0d77
;
0d85  2b        dec     hl
0d86  5e        ld      e,(hl) ; E = lsb do endereço do tiro na VRAM.
0d87  af        xor     a
0d88  77        ld      (hl),a ; Zera lsb do endereço do tiro na VRAM.
0d89  23        inc     hl
0d8a  56        ld      d,(hl) ; DE = endereço do tiro na VRAM.
0d8b  77        ld      (hl),a ; Zera msb do endereço do tiro na VRAM. (libera slot)
0d8c  12        ld      (de),a ; Apaga tiro na VRAM.
0d8d  c3770d    jp      #0d77 ; Passa ao próximo slot de tiro.

; Exibe valor de A alinhado à esquerda.
; A = valor a exibir. DE = posição na VRAM do 2º dígito.
0d90  210000    ld      hl,#0000
0d93  0e00      ld      c,#00
0d95  fe0a      cp      #0a ; Valor a exibir < 10?
0d97  daad0d    jp      c,#0dad ; Sim: desvia e só exibe um dígito.
0d9a  0e0a      ld      c,#0a ; Divisor = 10.
0d9c  6f        ld      l,a ; Quociente = valor a exibir.
0d9d  d5        push    de
0d9e  cd2dc0    call    #c02d ; DIV ; Quociente em L, resto em H.
0da1  d1        pop     de
0da2  0e00      ld      c,#00
0da4  7c        ld      a,h ; Resto da divisão por 10.
0da5  e5        push    hl
0da6  d5        push    de
0da7  cd3fc0    call    #c03f ; DISPY2
0daa  d1        pop     de
0dab  e1        pop     hl
0dac  7d        ld      a,l ; Quociente da divisão por 10.
;
0dad  1b        dec     de ; Recua para posição do 1º dígito.
0dae  1b        dec     de
0daf  d5        push    de
0db0  cd3fc0    call    #c03f ; DISPY2
0db3  d1        pop     de
0db4  c9        ret

; Pausa de 30ms.
0db5  011e00    ld      bc,#001e ; 30ms
0db8  cd48c0    call    #c048 ; DELAYB
0dbb  c9        ret

; Limpa KEY0~KEY0+3 e chama SKEY?.
0dbc  af        xor     a
0dbd  211b01    ld      hl,#011b ; KEY0.
0dc0  77        ld      (hl),a
0dc1  23        inc     hl
0dc2  77        ld      (hl),a
0dc3  23        inc     hl
0dc4  77        ld      (hl),a
0dc5  23        inc     hl
0dc6  77        ld      (hl),a
0dc7  c5        push    bc
0dc8  cd27c0    call    #c027 ; SKEY?.
0dcb  b7        or      a
0dcc  c1        pop     bc
0dcd  c9        ret
 
; Verifica se a tecla em C foi pressionada
; (i.e., se está em KEY0~KEY0+3).
; Flag Z ativado se foi.
0dce  3a1b01    ld      a,(#011b) ; KEY0.
0dd1  b9        cp      c
0dd2  c8        ret     z
0dd3  3a1c01    ld      a,(#011c) ; KEY0+1.
0dd6  b9        cp      c
0dd7  c8        ret     z
0dd8  3a1d01    ld      a,(#011d) ; KEY0+2.
0ddb  b9        cp      c
0ddc  c8        ret     z
0ddd  3a1e01    ld      a,(#011e) ; KEY0+3.
0de0  b9        cp      c
0de1  c9        ret

; Apaga tanque atual.
0de2  2a5a0e    ld      hl,(#0e5a) ; Ponteiro p/ sprite do tanque atual a apagar.
0de5  5e        ld      e,(hl)
0de6  23        inc     hl
0de7  56        ld      d,(hl)
0de8  2a540e    ld      hl,(#0e54) ; Posição do tanque atual.
0deb  cd110e    call    #0e11 ; SHAPOF'.
0dee  3a880e    ld      a,(#0e88) ; SHAPE0'.
0df1  a7        and     a ; Flag Z se não houve colisão.
0df2  c9        ret

; "SHAPON'", réplica da rotina SHAPON  da ROM (!!!!).
0df3  e5        push    hl
0df4  d5        push    de
0df5  c5        push    bc
0df6  1a        ld      a,(de)
0df7  feff      cp      #ff
0df9  ca0d0e    jp      z,#0e0d
0dfc  4f        ld      c,a
0dfd  07        rlca
0dfe  06ff      ld      b,#ff
0e00  da050e    jp      c,#0e05
0e03  0600      ld      b,#00
0e05  09        add     hl,bc
0e06  13        inc     de
0e07  1a        ld      a,(de)
0e08  77        ld      (hl),a
0e09  13        inc     de
0e0a  c3f60d    jp      #0df6
0e0d  c1        pop     bc
0e0e  d1        pop     de
0e0f  e1        pop     hl
0e10  c9        ret
 
; "SHAPOF'", réplica da rotina SHAPOF da ROM (!!!!).
; Diferenças:
; 1. O byte usado no apagamento é sempre #00,
;    e não o registrador C.
; 2. O endereço indicador de colisão (SHAPE0')
;    é #0e88.
;    O valor é a quantidade de bytes na VRAM que estavam
;    diferentes do padrão da figura.
0e11  e5        push    hl
0e12  d5        push    de
0e13  c5        push    bc
0e14  af        xor     a
0e15  32880e    ld      (#0e88),a ; SHAPE0'.
0e18  1a        ld      a,(de)
0e19  feff      cp      #ff
0e1b  ca3b0e    jp      z,#0e3b
0e1e  4f        ld      c,a
0e1f  07        rlca
0e20  06ff      ld      b,#ff
0e22  da270e    jp      c,#0e27
0e25  0600      ld      b,#00
0e27  09        add     hl,bc
0e28  13        inc     de
0e29  1a        ld      a,(de)
0e2a  be        cp      (hl)
0e2b  ca350e    jp      z,#0e35
0e2e  3a880e    ld      a,(#0e88) ; SHAPE0'.
0e31  3c        inc     a
0e32  32880e    ld      (#0e88),a ; SHAPE0'.
0e35  3600      ld      (hl),#00
0e37  13        inc     de
0e38  c3180e    jp      #0e18
0e3b  c1        pop     bc
0e3c  d1        pop     de
0e3d  e1        pop     hl
0e3e  c9        ret

; Procura slot de tiro disponível.
; A partir de $0e8c, a cada grupo de 3 bytes, procura um grupo cujo 2º byte seja $00 ou $ff.
; Retorna HL apontando para o 1º byte do grupo.
; Retorna flag Z conforme o valor encontrado.
0e3f  218c0e    ld      hl,#0e8c
0e42  23        inc     hl
0e43  7e        ld      a,(hl)
0e44  2b        dec     hl
0e45  a7        and     a
0e46  c8        ret     z
0e47  feff      cp      #ff
0e49  ca520e    jp      z,#0e52
0e4c  23        inc     hl
0e4d  23        inc     hl
0e4e  23        inc     hl
0e4f  c3420e    jp      #0e42
0e52  a7        and     a
0e53  c9        ret

; Tanque atual.
0e54  ffff      dw      #ffff ; Posição do tanque atual na VRAM.
0e56  ff        db      #ff ; Direção do tanque atual.
0e57  ffff      dw      #ffff ; Ponteiro p/ sprite do tanque atual a desenhar.
0e59  ff        db      #ff ; Vidas restantes do jogador atual.
0e5a  ffff      dw      #ffff ; Ponteiro p/ sprite do tanque atual a apagar.
0e5c  ff        db      #ff ; Placar atual do jogador atual.
0e5d  00        db      #00 ; Identificador do jogador atual (0 = jogador 1, 1 = jogador 2).
0e5e  00        db      #00 ; Contador de invulnerabilidade do jogador atual.
0e5f  ff        db      #ff
0e60  ff        db      #ff
;
0e61  ff        db      #ff
0e62  c702      dw      #02c7 ; Animação: Tanque para a esquerda.
0e64  b302      dw      #02b3 ; Animação: Tanque para a direita.
0e66  bf02      dw      #02bf ; Animação: Tanque para cima.
0e68  ed02      dw      #02ed ; Animação: Tanque para baixo.
; Teclas do jogador 1.
0e6a  59        db      #59 ; 'Y' (esquerda).
0e6b  31        db      #31 ; '1' (direita).
0e6c  49        db      #49 ; 'I' (cima).
0e6d  51        db      #51 ; 'Q' (baixo).
; Teclas atuais.
0e6e  59        db      #59 ; 'Y' (esquerda).
0e6f  31        db      #31 ; '1' (direita).
0e70  49        db      #49 ; 'I' (cima).
0e71  51        db      #51 ; 'Q' (baixo).
0e72  39        db      #39 ; '9' (tiro).

; Outro tanque.
0e73  ffff      dw      #ffff ; Posição do outro tanque na VRAM.
0e75  ff        db      #ff ; Direção do outro tanque.
0e76  ffff      dw      #ffff ; Ponteiro p/ sprite do outro tanque a desenhar.
0e78  ff        db      #ff ; Vidas restantes do outro jogador.
0e79  ffff      dw      #ffff ; Ponteiro p/ sprite do outro tanque a apagar.
0e7b  ff        db      #ff ; Placar atual do outro jogador.
0e7c  01        db      #01 ; Identificador do jogador atual (0 = jogador 1, 1 = jogador 2).
0e7d  00        db      #00 ; Contador de invulnerabilidade do outro jogador.
0e7e  ff        db      #ff
0e7f  ff        db      #ff

; Teclas do jogador 2.
0e80  58        db      #58 ; 'X' (esquerda).
0e81  30        db      #30 ; '0' (direita).
0e82  48        db      #48 ; 'H' (cima).
0e83  50        db      #50 ; 'P' (baixo).
0e84  40        db      #40 ; '@' (tiro).

;
0e85  ff        db      #ff
0e86  ff        db      #ff
0e87  ff        db      #ff
 
0e88  00        db      #00 ; SHAPE0', indicador de colisão
                            ; para a rotina SHAPOF'.
0e89  00        db      #00

0e8a  ff        db      #ff ; Contador de ciclos de espera para jogador 1.
0e8b  ff        db      #ff ; Contador de ciclos de espera para jogador 2.

; Slots de tiro.
; Estes bytes são zerados na inicialização.
; Slots com o 2º byte zerado estão livres para uso.
0e8c  ffffff    db      #ff,#ff,#ff
0e8f  ffffff    db      #ff,#ff,#ff
0e92  ffffff    db      #ff,#ff,#ff
0e95  ffffff    db      #ff,#ff,#ff
0e98  ffffff    db      #ff,#ff,#ff
0e9b  ffffff    db      #ff,#ff,#ff
0e9e  ffffff    db      #ff,#ff,#ff
0ea1  ffffff    db      #ff,#ff,#ff
; Estes bytes não são zerados.
; O 2º byte com $ff indica o fim dos slots.
0ea4  ffff      db      #ff,#ff

; Sprite: Explosão (1/4).
; |    |    |BR--|
; |    |-BRB|R---|
; |    >BRBR|
; |---B|YBY-|
; |--BY|
0ea6  3f        db      #3f ; +2 linhas, -1 coluna.
0ea7  09        db      #09 ; 00.00.10.01
0ea8  e0        db      #e0 ; -1 linha.
0ea9  02        db      #02 ; 00.00.00.10
0eaa  01        db      #01 ; +1 coluna.
0eab  64        db      #64 ; 01.10.01.00
0eac  e0        db      #e0 ; -1 linha.
0ead  bb        db      #bb ; 10.11.10.11
0eae  e0        db      #e0 ; -1 linha.
0eaf  2e        db      #2e ; 00.10.11.10
0eb0  01        db      #01 ; +1 coluna.
0eb1  c0        db      #c0 ; 11.00.00.00
0eb2  e0        db      #e0 ; -1 linha.
0eb3  b0        db      #b0 ; 10.11.00.00
0eb4  ff        db      #ff

; Sprite: Explosão (2/4).
; |--YB|
; |---Y|BYB-|
; |    >RBRB|
; |    |-RBR|B---|
; |    |---B|R---|
0eb5  40        db      #40 ; +2 linhas.
0eb6  02        db      #02 ; 00.00.00.10
0eb7  01        db      #01 ; +1 coluna.
0eb8  c0        db      #c0 ; 11.00.00.00
0eb9  df        db      #df ; -1 linha, -1 coluna.
0eba  3b        db      #3b ; 00.11.10.11
0ebb  01        db      #01 ; +1 coluna.
0ebc  80        db      #80 ; 10.00.00.00
0ebd  df        db      #df ; -1 linha, -1 coluna.
0ebe  ee        db      #ee ; 11.10.11.10
0ebf  df        db      #df ; -1 linha, -1 coluna.
0ec0  01        db      #01 ; 00.00.00.01
0ec1  01        db      #01 ; +1 coluna.
0ec2  98        db      #98 ; 10.01.10.00
0ec3  df        db      #df ; -1 linha, -1 coluna.
0ec4  06        db      #06 ; 00.00.01.10
0ec5  ff        db      #ff

; Sprite: Explosão (3/4).
; |    |    |BY--|
; |    |-BYB|--Y-|
; |    >BRBR|
; |---B|RBR-|
; |--RB|
0ec6  3f        db      #3f ; +2 linhas, -1 coluna.
0ec7  0e        db      #0e ; 00.00.11.10
0ec8  e0        db      #e0 ; -1 linha.
0ec9  02        db      #02 ; 00.00.00.10
0eca  01        db      #01 ; +1 coluna.
0ecb  ec        db      #ec ; 11.10.11.00
0ecc  e0        db      #e0 ; -1 linha.
0ecd  bb        db      #bb ; 10.11.10.11
0ece  e0        db      #e0 ; -1 linha.
0ecf  26        db      #26 ; 00.10.01.10
0ed0  01        db      #01 ; +1 coluna.
0ed1  04        db      #04 ; 00.00.01.00
0ed2  e0        db      #e0 ; -1 linha.
0ed3  90        db      #90 ; 10.01.00.00
0ed4  ff        db      #ff

; Sprite: Explosão (4/4).
; |--RB|
; |---R|BRBY|
; |    >RBRB|
; |    |Y-BY|Y---|
; |    |    |--YB|
0ed5  41        db      #41 ; +2 linhas, +1 coluna.
0ed6  06        db      #06 ; 00.00.01.10
0ed7  df        db      #df ; -1 linha, -1 coluna.
0ed8  49        db      #49 ; 01.00.10.01
0ed9  01        db      #01 ; +1 coluna.
0eda  80        db      #80 ; 10.00.00.00
0edb  df        db      #df ; -1 linha, -1 coluna.
0edc  ee        db      #ee ; 11.10.11.10
0edd  df        db      #df ; -1 linha, -1 coluna.
0ede  03        db      #03 ; 00.00.00.11
0edf  01        db      #01 ; +1 coluna.
0ee0  b9        db      #b9 ; 10.11.10.01
0ee1  df        db      #df ; -1 linha, -1 coluna.
0ee2  0e        db      #0e ; 00.00.11.10
0ee3  ff        db      #ff

; BGM/SFX? (Nunca usado?)
0ee4  07        db      #07 ; Forma da envoltória = 0 (\___).
0ee5  8020      dw      #2080 ; Período da envoltória = 8320.
0ee7  00        db      #00 ; Valor para registrador de controle do gerador de ruído = 0.
;
0ee8  600c      db      #60,#0c ; 6ª oitava, nota C, duração 12.
0eea  600c      db      #60,#0c ; 6ª oitava, nota C, duração 12.
0eec  570c      db      #57,#0c ; 5ª oitava, nota G, duração 12.
;
0eee  ee        db      #ee ; Repetir.

; BGM/SFX? (Nunca usado?)
0eef  07        db      #07 ; Forma da envoltória = 0 (\___).
0ef0  8020      dw      #2080 ; Período da envoltória = 8320.
0ef2  00        db      #00  ; Valor para registrador de controle do gerador de ruído = 0.
;
0ef3  570c      db      #57,#0c ; 5ª oitava, nota G, duração 12.
0ef5  600c      db      #60,#0c ; 6ª oitava, nota C, duração 12.
0ef7  640c      db      #64,#0c ; 6ª oitava, nota E, duração 12.
0ef9  670c      db      #67,#0c ; 6ª oitava, nota G, duração 12.
;
0efb  ee        db      #ee ; Repetir
 
; Preenche uma área retangular de B bytes x A linhas
; com o valor de C a partir de HL.
0efc  f5        push    af
;
0efd  e5        push    hl
0efe  c5        push    bc
;
0eff  71        ld      (hl),c
0f00  23        inc     hl
0f01  05        dec     b
0f02  c2ff0e    jp      nz,#0eff
 
0f05  c1        pop     bc
0f06  e1        pop     hl
0f07  112000    ld      de,#0020
0f0a  19        add     hl,de
0f0b  3d        dec     a
0f0c  c2fd0e    jp      nz,#0efd
0f0f  f1        pop     af
0f10  c9        ret
 
; Preenche n áreas retangulares de B bytes x A linhas
; com o valor em C; DE aponta para (o 2º byte de)
; uma lista dos endereços iniciais das áreas.
; Um byte #FF indica o fim da lista.
0f11  f5        push    af
0f12  eb        ex      de,hl
0f13  7e        ld      a,(hl)
0f14  feff      cp      #ff
0f16  ca290f    jp      z,#0f29
0f19  56        ld      d,(hl)
0f1a  2b        dec     hl
0f1b  5e        ld      e,(hl)
0f1c  23        inc     hl
0f1d  23        inc     hl
0f1e  23        inc     hl
0f1f  eb        ex      de,hl
0f20  f1        pop     af
0f21  d5        push    de
0f22  cdfc0e    call    #0efc
0f25  d1        pop     de
0f26  c3110f    jp      #0f11
0f29  f1        pop     af
0f2a  c9        ret

; BGM: MARCHA TURCA (MOZART). (Canal A.)
0f2b  0f        db      #0f ; Forma da envoltória = 0 (\___).
0f2c  8020      dw      #2080 ; Período da envoltória = 8320.
0f2d  00        db      #00 ; Valor para registrador de controle do gerador de ruído = 0.
;
0f2f  5b08      db      #5b, #08 ; 5ª oitava, nota B, duração 8.
0f31  5908      db      #59, #08 ; 5ª oitava, nota A, duração 8.
0f33  5808      db      #58, #08 ; 5ª oitava, nota G#, duração 8.
0f35  5908      db      #59, #08 ; 5ª oitava, nota A, duração 8.
0f37  6010      db      #60, #10 ; 6ª oitava, nota C, duração 16.
0f39  0010      db      #00, #10 ; Pausa, duração 16.
0f3b  6208      db      #62, #08 ; 6ª oitava, nota D, duração 8.
0f3d  6008      db      #60, #08 ; 6ª oitava, nota C, duração 8.
0f3f  5b08      db      #5b, #08 ; 5ª oitava, nota B, duração 8.
0f41  6008      db      #60, #08 ; 6ª oitava, nota C, duração 8.
0f43  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0f45  0010      db      #00, #10 ; Pausa, duração 16.
0f47  6508      db      #65, #08 ; 6ª oitava, nota F, duração 8.
0f49  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0f4b  6308      db      #63, #08 ; 6ª oitava, nota D#, duração 8.
0f4d  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0f4f  6b08      db      #6b, #08 ; 6ª oitava, nota B, duração 8.
0f51  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0f53  6808      db      #68, #08 ; 6ª oitava, nota G#, duração 8.
0f55  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0f57  6b08      db      #6b, #08 ; 6ª oitava, nota B, duração 8.
0f59  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0f5b  6808      db      #68, #08 ; 6ª oitava, nota G#, duração 8.
0f5d  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0f5f  7020      db      #70, #20 ; 7ª oitava, nota C, duração 32.
0f61  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
0f63  7010      db      #70, #10 ; 7ª oitava, nota C, duração 16.
0f65  6704      db      #67, #04 ; 6ª oitava, nota G, duração 4.
0f67  6904      db      #69, #04 ; 6ª oitava, nota A, duração 4.
0f69  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
0f6b  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
0f6d  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0f6f  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
0f71  6704      db      #67, #04 ; 6ª oitava, nota G, duração 4.
0f73  6904      db      #69, #04 ; 6ª oitava, nota A, duração 4.
0f75  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
0f77  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
0f79  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0f7b  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
0f7d  6704      db      #67, #04 ; 6ª oitava, nota G, duração 4.
0f7f  6904      db      #69, #04 ; 6ª oitava, nota A, duração 4.
0f81  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
0f83  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
0f85  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0f87  6510      db      #65, #10 ; 6ª oitava, nota F, duração 16.
0f89  6420      db      #64, #20 ; 6ª oitava, nota E, duração 32.
0f8b  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0f8d  6510      db      #65, #10 ; 6ª oitava, nota F, duração 16.
0f8f  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0f91  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0f93  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0f95  6708      db      #67, #08 ; 6ª oitava, nota G, duração 8.
0f97  6508      db      #65, #08 ; 6ª oitava, nota F, duração 8.
0f99  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0f9b  6210      db      #62, #10 ; 6ª oitava, nota D, duração 16.
0f9d  5710      db      #57, #10 ; 5ª oitava, nota G, duração 16.
0f9f  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0fa1  6510      db      #65, #10 ; 6ª oitava, nota F, duração 16.
0fa3  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0fa5  6710      db      #67, #10 ; 6ª oitava, nota G, duração 16.
0fa7  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0fa9  6708      db      #67, #08 ; 6ª oitava, nota G, duração 8.
0fab  6508      db      #65, #08 ; 6ª oitava, nota F, duração 8.
0fad  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0faf  6220      db      #62, #20 ; 6ª oitava, nota D, duração 32.
0fb1  6010      db      #60, #10 ; 6ª oitava, nota C, duração 16.
0fb3  6210      db      #62, #10 ; 6ª oitava, nota D, duração 16.
0fb5  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0fb7  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0fb9  6508      db      #65, #08 ; 6ª oitava, nota F, duração 8.
0fbb  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0fbd  6208      db      #62, #08 ; 6ª oitava, nota D, duração 8.
0fbf  6008      db      #60, #08 ; 6ª oitava, nota C, duração 8.
0fc1  5b10      db      #5b, #10 ; 5ª oitava, nota B, duração 16.
0fc3  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
0fc5  6010      db      #60, #10 ; 6ª oitava, nota C, duração 16.
0fc7  6210      db      #62, #10 ; 6ª oitava, nota D, duração 16.
0fc9  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0fcb  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0fcd  6508      db      #65, #08 ; 6ª oitava, nota F, duração 8.
0fcf  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0fd1  6208      db      #62, #08 ; 6ª oitava, nota D, duração 8.
0fd3  6008      db      #60, #08 ; 6ª oitava, nota C, duração 8.
0fd5  5b20      db      #5b, #20 ; 5ª oitava, nota B, duração 32.
;
0fd7  5b08      db      #5b, #08 ; 5ª oitava, nota B, duração 8.
0fd9  5908      db      #59, #08 ; 5ª oitava, nota A, duração 8.
0fdb  5708      db      #57, #08 ; 5ª oitava, nota G, duração 8.
0fdd  5908      db      #59, #08 ; 5ª oitava, nota A, duração 8.
0fdf  6010      db      #60, #10 ; 6ª oitava, nota C, duração 16.
0fe1  0010      db      #00, #10 ; Pausa, duração 16.
0fe3  6208      db      #62, #08 ; 6ª oitava, nota D, duração 8.
0fe5  6008      db      #60, #08 ; 6ª oitava, nota C, duração 8.
0fe7  5b08      db      #5b, #08 ; 5ª oitava, nota B, duração 8.
0fe9  6008      db      #60, #08 ; 6ª oitava, nota C, duração 8.
0feb  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
0fed  0010      db      #00, #10 ; Pausa, duração 16.
0fef  6508      db      #65, #08 ; 6ª oitava, nota F, duração 8.
0ff1  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0ff3  6308      db      #63, #08 ; 6ª oitava, nota D#, duração 8.
0ff5  6408      db      #64, #08 ; 6ª oitava, nota E, duração 8.
0ff7  6b08      db      #6b, #08 ; 6ª oitava, nota B, duração 8.
0ff9  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0ffb  6808      db      #68, #08 ; 6ª oitava, nota G#, duração 8.
0ffd  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
0fff  6b08      db      #6b, #08 ; 6ª oitava, nota B, duração 8.
1001  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
1003  6808      db      #68, #08 ; 6ª oitava, nota G#, duração 8.
1005  6908      db      #69, #08 ; 6ª oitava, nota A, duração 8.
1007  7020      db      #70, #20 ; 7ª oitava, nota C, duração 32.
1009  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
100b  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
100d  7010      db      #70, #10 ; 7ª oitava, nota C, duração 16.
100f  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
1011  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
1013  6810      db      #68, #10 ; 6ª oitava, nota G#, duração 16.
1015  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
1017  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
1019  6510      db      #65, #10 ; 6ª oitava, nota F, duração 16.
101b  6210      db      #62, #10 ; 6ª oitava, nota D, duração 16.
101d  6020      db      #60, #20 ; 6ª oitava, nota C, duração 32.
101f  5b18      db      #5b, #18 ; 5ª oitava, nota B, duração 24.
1021  5908      db      #59, #08 ; 5ª oitava, nota A, duração 8.
1023  5920      db      #59, #20 ; 5ª oitava, nota A, duração 32.
1025  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
1027  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
1029  7120      db      #71, #20 ; 7ª oitava, nota C#, duração 32.
102b  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
102d  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
102f  7110      db      #71, #10 ; 7ª oitava, nota C#, duração 16.
1031  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
1033  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
1035  6810      db      #68, #10 ; 6ª oitava, nota G#, duração 16.
1037  6610      db      #66, #10 ; 6ª oitava, nota F#, duração 16.
1039  6810      db      #68, #10 ; 6ª oitava, nota G#, duração 16.
103b  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
103d  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
103f  6810      db      #68, #10 ; 6ª oitava, nota G#, duração 16.
1041  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
1043  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
1045  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
1047  7120      db      #71, #20 ; 7ª oitava, nota C#, duração 32.
1049  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
104b  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
104d  7110      db      #71, #10 ; 7ª oitava, nota C#, duração 16.
104f  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
1051  6910      db      #69, #10 ; 6ª oitava, nota A, duração 16.
1053  6810      db      #68, #10 ; 6ª oitava, nota G#, duração 16.
1055  6610      db      #66, #10 ; 6ª oitava, nota F#, duração 16.
1057  6b10      db      #6b, #10 ; 6ª oitava, nota B, duração 16.
1059  6810      db      #68, #10 ; 6ª oitava, nota G#, duração 16.
105b  6410      db      #64, #10 ; 6ª oitava, nota E, duração 16.
105d  6920      db      #69, #20 ; 6ª oitava, nota A, duração 32.
;
105f  ee        db      #ee ; Repetir.
 
; BGM: MARCHA TURCA (MOZART). (Canal B.)
1060  0c        db      #0c ; Forma da envoltória = 0 (\___).
1061  8020      dw      #2080 ; Período da envoltória = 8320.
1063  00        db      #00 ; Valor para registrador de controle do gerador de ruído = 0.
;
1064  0020      db      #00, #20 ; Pausa, duração 32.
1066  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1068  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
106a  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
106c  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
106e  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1070  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
1072  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
1074  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
1076  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1078  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
107a  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
107c  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
107e  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1080  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
1082  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
1084  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
1086  4418      db      #44, #18 ; 4ª oitava, nota E, duração 24.
1088  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
108a  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
108c  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
108e  4418      db      #44, #18 ; 4ª oitava, nota E, duração 24.
1090  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
1092  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
1094  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
1096  4418      db      #44, #18 ; 4ª oitava, nota E, duração 24.
1098  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
109a  3b10      db      #3b, #10 ; 3ª oitava, nota B, duração 16.
109c  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
109e  4420      db      #44, #20 ; 4ª oitava, nota E, duração 32.
10a0  0020      db      #00, #20 ; Pausa, duração 32.
10a2  4010      db      #40, #10 ; 4ª oitava, nota C, duração 16.
10a4  5010      db      #50, #10 ; 5ª oitava, nota C, duração 16.
10a6  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
10a8  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10aa  4720      db      #47, #20 ; 4ª oitava, nota G, duração 32.
10ac  0020      db      #00, #20 ; Pausa, duração 32.
10ae  4010      db      #40, #10 ; 4ª oitava, nota C, duração 16.
10b0  5010      db      #50, #10 ; 5ª oitava, nota C, duração 16.
10b2  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
10b4  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10b6  4720      db      #47, #20 ; 4ª oitava, nota G, duração 32.
10b8  0020      db      #00, #20 ; Pausa, duração 32.
10ba  3910      db      #39, #10 ; 3ª oitava, nota A, duração 16.
10bc  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10be  4010      db      #40, #10 ; 4ª oitava, nota C, duração 16.
10c0  5010      db      #50, #10 ; 5ª oitava, nota C, duração 16.
10c2  4420      db      #44, #20 ; 4ª oitava, nota E, duração 32.
10c4  0020      db      #00, #20 ; Pausa, duração 32.
10c6  3910      db      #39, #10 ; 3ª oitava, nota A, duração 16.
10c8  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10ca  4010      db      #40, #10 ; 4ª oitava, nota C, duração 16.
10cc  5010      db      #50, #10 ; 5ª oitava, nota C, duração 16.
10ce  4420      db      #44, #20 ; 4ª oitava, nota E, duração 32.
;
10d0  0020      db      #00, #20 ; Pausa, duração 32.
10d2  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10d4  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10d6  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10d8  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10da  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10dc  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10de  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10e0  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10e2  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10e4  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10e6  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10e8  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10ea  4510      db      #45, #10 ; 4ª oitava, nota F, duração 16.
10ec  5310      db      #53, #10 ; 5ª oitava, nota D#, duração 16.
10ee  5310      db      #53, #10 ; 5ª oitava, nota D#, duração 16.
10f0  5310      db      #53, #10 ; 5ª oitava, nota D#, duração 16.
10f2  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
10f4  5410      db      #54, #10 ; 5ª oitava, nota E, duração 16.
10f6  4210      db      #42, #10 ; 4ª oitava, nota D, duração 16.
10f8  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
10fa  4010      db      #40, #10 ; 4ª oitava, nota C, duração 16.
10fc  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
10fe  4210      db      #42, #10 ; 4ª oitava, nota D, duração 16.
1100  4b10      db      #4b, #10 ; 4ª oitava, nota B, duração 16.
1102  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
1104  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
1106  4810      db      #48, #10 ; 4ª oitava, nota G#, duração 16.
1108  4810      db      #48, #10 ; 4ª oitava, nota G#, duração 16.
110a  4920      db      #49, #20 ; 4ª oitava, nota A, duração 32.
110c  0020      db      #00, #20 ; Pausa, duração 32.
110e  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1110  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1112  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1114  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1116  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1118  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
111a  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
111c  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
111e  4210      db      #42, #10 ; 4ª oitava, nota D, duração 16.
1120  4210      db      #42, #10 ; 4ª oitava, nota D, duração 16.
1122  4310      db      #43, #10 ; 4ª oitava, nota D#, duração 16.
1124  5310      db      #53, #10 ; 5ª oitava, nota D#, duração 16.
1126  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
1128  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
112a  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
112c  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
112e  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1130  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1132  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1134  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1136  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
1138  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
113a  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
113c  4910      db      #49, #10 ; 4ª oitava, nota A, duração 16.
113e  4210      db      #42, #10 ; 4ª oitava, nota D, duração 16.
1140  4210      db      #42, #10 ; 4ª oitava, nota D, duração 16.
1142  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
1144  4410      db      #44, #10 ; 4ª oitava, nota E, duração 16.
1146  3920      db      #39, #20 ; 3ª oitava, nota A, duração 32.
;
1148  ee        db      #ee ; Repetir.

; SFX: Tiro. (Canal C.)
1149  0f        db      #0f ; Amplitude fixa = 15.
114a  8020      dw      #2080 ; Período da envoltória = 8320.
114c  00        db      #00 ; Valor para registrador de controle do gerador de ruído = 0.
;
114d  7b01      db      #7b, #01 ; 7ª oitava, nota B, duração 1.
114f  7a01      db      #7a, #01 ; 7ª oitava, nota A#, duração 1.
1151  7901      db      #79, #01 ; 7ª oitava, nota A, duração 1.
1153  7801      db      #78, #01 ; 7ª oitava, nota G#, duração 1.
1155  7701      db      #77, #01 ; 7ª oitava, nota G, duração 1.
1157  7601      db      #76, #01 ; 7ª oitava, nota F#, duração 1.
1159  7501      db      #75, #01 ; 7ª oitava, nota F, duração 1.
115b  7401      db      #74, #01 ; 7ª oitava, nota E, duração 1.
115d  7301      db      #73, #01 ; 7ª oitava, nota D#, duração 1.
115f  7201      db      #72, #01 ; 7ª oitava, nota D, duração 1.
1161  7101      db      #71, #01 ; 7ª oitava, nota C#, duração 1.
1163  7001      db      #70, #01 ; 7ª oitava, nota C, duração 1.
1165  6b01      db      #6b, #01 ; 6ª oitava, nota B, duração 1.
1167  6a01      db      #6a, #01 ; 6ª oitava, nota A#, duração 1.
1169  6901      db      #69, #01 ; 6ª oitava, nota A, duração 1.
116b  6801      db      #68, #01 ; 6ª oitava, nota G#, duração 1.
116d  6701      db      #67, #01 ; 6ª oitava, nota G, duração 1.
116f  6601      db      #66, #01 ; 6ª oitava, nota F#, duração 1.
1171  6501      db      #65, #01 ; 6ª oitava, nota F, duração 1.
1173  6401      db      #64, #01 ; 6ª oitava, nota E, duração 1.
1175  6301      db      #63, #01 ; 6ª oitava, nota D#, duração 1.
1177  6201      db      #62, #01 ; 6ª oitava, nota D, duração 1.
;
1179  ff        db      #ff ; Fim.

; SFX: Explosão. (Canal C.)
117a  0f        db      #0f ; Amplitude fixa = 15.
117b  0000      dw      #0000 ; Período da envoltória = 0.
117d  1f        db      #1f ; Valor para registrador de controle do gerador de ruído = 31.
;
117e  0101      db      #01, #01 ; Amplitude 1, duração 1.
1180  0201      db      #02, #01 ; Amplitude 2, duração 1.
1182  0301      db      #03, #01 ; Amplitude 3, duração 1.
1184  0401      db      #04, #01 ; Amplitude 4, duração 1.
1186  0501      db      #05, #01 ; Amplitude 5, duração 1.
1188  0601      db      #06, #01 ; Amplitude 6, duração 1.
118a  0701      db      #07, #01 ; Amplitude 7, duração 1.
118c  0801      db      #08, #01 ; Amplitude 8, duração 1.
118e  0901      db      #09, #01 ; Amplitude 9, duração 1.
1190  0a01      db      #0a, #01 ; Amplitude 10, duração 1.
1192  0b01      db      #0b, #01 ; Amplitude 11, duração 1.
1194  0c01      db      #0c, #01 ; Amplitude 12, duração 1.
1196  0d01      db      #0d, #01 ; Amplitude 13, duração 1.
1198  0e02      db      #0e, #02 ; Amplitude 14, duração 2.
119a  0f10      db      #0f, #10 ; Amplitude 15, duração 16.
119c  0e10      db      #0e, #10 ; Amplitude 14, duração 16.
119e  0d10      db      #0d, #10 ; Amplitude 13, duração 16.
11a0  0c10      db      #0c, #10 ; Amplitude 12, duração 16.
11a2  0b10      db      #0b, #10 ; Amplitude 11, duração 16.
11a4  0a10      db      #0a, #10 ; Amplitude 10, duração 16.
11a6  0910      db      #09, #10 ; Amplitude 9, duração 16.
11a8  0810      db      #08, #10 ; Amplitude 8, duração 16.
11aa  0710      db      #07, #10 ; Amplitude 7, duração 16.
11ac  0610      db      #06, #10 ; Amplitude 6, duração 16.
11ae  0510      db      #05, #10 ; Amplitude 5, duração 16.
11b0  0410      db      #04, #10 ; Amplitude 4, duração 16.
11b2  0318      db      #03, #18 ; Amplitude 3, duração 24.
11b4  0220      db      #02, #20 ; Amplitude 2, duração 32.
11b6  0120      db      #01, #20 ; Amplitude 1, duração 32.
;
11b8  ff        db      #ff ; Fim.

11b9  ff        rst     #38
11ba  ff        rst     #38
11bb  ff        rst     #38
11bc  ff        rst     #38
11bd  ff        rst     #38
11be  ff        rst     #38
11bf  ff        rst     #38
