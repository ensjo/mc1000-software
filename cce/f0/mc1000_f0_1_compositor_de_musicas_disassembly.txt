; Disassembly of the file "D:\Emerson\mc-1000\aplicativos cassete\COMPMUSI.BIN"
;
; Created with dZ80 v1.31
;
; on Wednesday, 18 of April 2007 at 05:14 PM
;
 
; Valores iniciais para variáveis do sistema (0100~01ff).
 
0100  ffffffff  db      #ff, #ff, #ff, #ff
0104  01        db      #01 ; Tópico (modo) de jogo atual.
0105  02        db      #02 ; Quantidade de tópicos.
0106  00        db      #00 ; MC 1000 em modo de jogo (não BASIC).
0107  ffff      db      #ff, #ff
0109  ff        db      #ff ; Byte menos significativo do endereço do último slot de placar preenchido.
010a  ff        db      #ff
010b  ffffffff  db      #ff, #ff, #ff, #ff ; 16 bytes, 8 pares de placares (jogadores 1 e 2).
010f  ffffffff  db      #ff, #ff, #ff, #ff
0113  ffffffff  db      #ff, #ff, #ff, #ff
0117  ffffffff  db      #ff, #ff, #ff, #ff
011b  ff        db      #ff ; Última tecla pressionada (auxiliar).
011c  ff        db      #ff ; Última tecla pressionada.
011d  ffffff    db      #ff, #ff, #ff
0120  c3530b    jp      #0b53 ; Primeiro hook chamado durante a leitura de teclado (SKEY?).
0123  0000ffff  db      #00, #00, #ff, #ff
0127  ffffffff  db      #ff, #ff, #ff, #ff
012b  ffffff    db      #ff, #ff, #ff
012e  ff        db      #ff ; Contém #ff se tecla pressionada.
012f  ff        db      #ff
0130  c9        ret     ; Segundo hook chamado durante a leitura do teclado (SKEY?).
0131  ffff      db      #ff, #ff ; 2 bytes restantes do espaço reservado ao hook (3 bytes).
0133  ff        db      #ff ; Contador de intermitência do cursor.
0134  ffffffff  db      #ff, #ff, #ff, #ff
0138  ff        db      #ff
0139  00        db      #00 ; 2º parâmetro de TEMPO no canal 1.
013a  ffffffff  db      #ff, #ff, #ff, #ff
013e  ffffffff  db      #ff, #ff, #ff, #ff
0142  00        db      #00 ; 2º parâmetro de TEMPO no canal 2.
0143  ffffffff  db      #ff, #ff, #ff, #ff
0147  ffffffff  db      #ff, #ff, #ff, #ff
014b  00        db      #00 ; 2º parâmetro de TEMPO no canal 3.
014c  ffffffff  db      #ff, #ff, #ff, #ff
0150  ff        db      #ff ; Valor lançado ao registrador MIXER do PSG. (#7f = nenhum som.)
0151  ffffffff  db      #ff, #ff, #ff, #ff
0155  ffffffff  db      #ff, #ff, #ff, #ff
0159  ffffffff  db      #ff, #ff, #ff, #ff
015d  ffff      db      #ff, #ff
015f  00        db      #00 ; ????
0160  ffffffff  db      #ff, #ff, #ff, #ff
0164  ffffffff  db      #ff, #ff, #ff, #ff
0168  ffffffff  db      #ff, #ff, #ff, #ff
016c  ffffff    db      #ff, #ff, #ff
016f  ff        db      #ff ; 1º parâmetro de TEMPO no canal 1.
0170  ff        db      #ff
0171  ff        db      #ff ; 1º parâmetro de SOUND no canal 1 (nota).
0172  ff        db      #ff ; 2º parâmetro de SOUND no canal 1 (duração).
0173  ffff      db      #ff, #ff
0175  ff        db      #ff ; 1º parâmetro de TEMPO no canal 2.
0176  ff        db      #ff
0177  ff        db      #ff ; 1º parâmetro de SOUND no canal 2 (nota).
0178  ff        db      #ff ; 2º parâmetro de SOUND no canal 2 (duração).
0179  ffff      db      #ff, #ff
017b  ff        db      #ff ; 1º parâmetro de TEMPO no canal 3.
017c  ff        db      #ff
017d  ff        db      #ff ; 1º parâmetro de SOUND no canal 3 (nota).
017e  ff        db      #ff ; 2º parâmetro de SOUND no canal 3 (duração).
017f  ff        db      #ff
0180  ffffffff  db      #ff, #ff, #ff, #ff
0184  ffffffff  db      #ff, #ff, #ff, #ff
0188  ffffffff  db      #ff, #ff, #ff, #ff
018c  ffffffff  db      #ff, #ff, #ff, #ff
0190  ffffffff  db      #ff, #ff, #ff, #ff
0194  ffffffff  db      #ff, #ff, #ff, #ff
0198  ffffffff  db      #ff, #ff, #ff, #ff
019c  ffffffff  db      #ff, #ff, #ff, #ff
01a0  ffffffff  db      #ff, #ff, #ff, #ff
01a4  ffffffff  db      #ff, #ff, #ff, #ff
01a8  ffffffff  db      #ff, #ff, #ff, #ff
01ac  ffffffff  db      #ff, #ff, #ff, #ff
01b0  ffffffff  db      #ff, #ff, #ff, #ff
01b4  ffffffff  db      #ff, #ff, #ff, #ff
01b8  ffffffff  db      #ff, #ff, #ff, #ff
01bc  ffffffff  db      #ff, #ff, #ff, #ff
01c0  ffffffff  db      #ff, #ff, #ff, #ff
01c4  ffffffff  db      #ff, #ff, #ff, #ff
01c8  ffffffff  db      #ff, #ff, #ff, #ff
01cc  ffffffff  db      #ff, #ff, #ff, #ff
01d0  ffffffff  db      #ff, #ff, #ff, #ff
01d4  ffffffff  db      #ff, #ff, #ff, #ff
01d8  ffffffff  db      #ff, #ff, #ff, #ff
01dc  ffffffff  db      #ff, #ff, #ff, #ff
01e0  ffffffff  db      #ff, #ff, #ff, #ff
01e4  ffffffff  db      #ff, #ff, #ff, #ff
01e8  ffffffff  db      #ff, #ff, #ff, #ff
01ec  ffffffff  db      #ff, #ff, #ff, #ff
01f0  ffffffff  db      #ff, #ff, #ff, #ff
01f4  ffffffff  db      #ff, #ff, #ff, #ff
01f8  ffffffff  db      #ff, #ff, #ff, #ff
01fc  ffffffff  db      #ff, #ff, #ff, #ff
 
; Ponto de início da execução após a carga do programa.
; Tabela de saltos para cada tópico do jogo.
0200  c36903    jp      #0369 ; Salto para o "tópico" 1 do jogo.
0203  c32602    jp      #0226 ; Salto para o "tópico" 2 do jogo.
 
;
0206  ffff      dw      #ffff
0208  ff        db      #ff
0209  ff        db      #ff
020a  ffff      dw      #ffff
020c  ff        db      #ff
020d  ff        db      #ff
020e  ff        db      #ff
020f  ff        db      #ff
0210  ff        db      #ff
0211  ff        db      #ff
0212  ff        db      #ff
0213  ff        db      #ff
0214  ff        db      #ff
0215  00        db      #00
0216  00        db      #00
0217  ff        db      #ff
0218  00        db      #00
0219  00        db      #00
021a  ff        db      #ff
021b  ff        db      #ff
021c  00        db      #00
021d  00        db      #00
021e  88        db      #88 ; Modo de vídeo (GR).
021f  c9        db      #c9
0220  7f        db      #7f
0221  e4        db      #e4
0222  01        db      #01
0223  0f        db      #0f
0224  1a        db      #1a
0225  0f        db      #0f
 
; Ponto de início da execução do "tópico" 2 do jogo.
0226  cd5803    call    #0358
0229  321c02    ld      (#021c),a
022c  320601    ld      (#0106),a
022f  3a1e02    ld      a,(#021e)
0232  d380      out     (#80),a
0234  cd3703    call    #0337
0237  cd6303    call    #0363
023a  3a1f02    ld      a,(#021f)
023d  322001    ld      (#0120),a
0240  21e080    ld      hl,#80e0
0243  220a02    ld      (#020a),hl
 
; Aguarda pressionar tecla e trata.
0246  cd06c0    call    #c006 ; KEY: Entrada console.
0249  47        ld      b,a
; Verifica se SHIFT + 1~8 (ASCII #21~#28).
024a  fe21      cp      #21
024c  da4602    jp      c,#0246
024f  fe29      cp      #29
0251  da6002    jp      c,#0260
; Verifica se 1~8 (ASCII #31~38).
0254  fe31      cp      #31
0256  da4602    jp      c,#0246
0259  fe38      cp      #38
025b  d24602    jp      nc,#0246
025e  d608      sub     #08 ; Converte para ASCII #29~#30.
;
0260  f5        push    af
0261  cda702    call    #02a7
0264  cd9902    call    #0299
0267  f1        pop     af
0268  d621      sub     #21 ; Converte #21~#30 para #00~#0f.
026a  f5        push    af
026b  5f        ld      e,a
026c  1600      ld      d,#00
026e  21bc02    ld      hl,#02bc
0271  19        add     hl,de
0272  46        ld      b,(hl)
0273  0e55      ld      c,#55
0275  2a0a02    ld      hl,(#020a)
0278  eb        ex      de,hl
0279  cd42c0    call    #c042 ; SHOWNO: Exibe 1 dígito.
027c  2a0a02    ld      hl,(#020a)
027f  f1        pop     af
0280  fe05      cp      #05
0282  d28e02    jp      nc,#028e
0285  11c0ff    ld      de,#ffc0
0288  19        add     hl,de
0289  3656      ld      (hl),#56
028b  c3e902    jp      #02e9
028e  fe08      cp      #08
0290  d2e902    jp      nc,#02e9
0293  11c000    ld      de,#00c0
0296  c38802    jp      #0288
0299  216713    ld      hl,#1367
029c  cd2c09    call    #092c
029f  70        ld      (hl),b
02a0  23        inc     hl
02a1  3618      ld      (hl),#18
02a3  23        inc     hl
02a4  36ff      ld      (hl),#ff
02a6  c9        ret
 
02a7  d621      sub     #21
02a9  5f        ld      e,a
02aa  1600      ld      d,#00
02ac  21da02    ld      hl,#02da
02af  3a1c02    ld      a,(#021c)
02b2  a7        and     a
02b3  cab902    jp      z,#02b9
02b6  21cb02    ld      hl,#02cb
02b9  19        add     hl,de
02ba  46        ld      b,(hl)
02bb  c9        ret
 
02bc  010203    ld      bc,#0302
02bf  04        inc     b
02c0  05        dec     b
02c1  0607      ld      b,#07
02c3  05        dec     b
02c4  010203    ld      bc,#0302
02c7  04        inc     b
02c8  05        dec     b
02c9  0607      ld      b,#07
02cb  40        ld      b,b
02cc  42        ld      b,d
02cd  44        ld      b,h
02ce  45        ld      b,l
02cf  47        ld      b,a
02d0  49        ld      c,c
02d1  4b        ld      c,e
02d2  3b        dec     sp
02d3  50        ld      d,b
02d4  52        ld      d,d
02d5  54        ld      d,h
02d6  55        ld      d,l
02d7  57        ld      d,a
02d8  59        ld      e,c
02d9  5b        ld      e,e
02da  60        ld      h,b
02db  62        ld      h,d
02dc  64        ld      h,h
02dd  65        ld      h,l
02de  67        ld      h,a
02df  49        ld      c,c
02e0  4b        ld      c,e
02e1  47        ld      b,a
02e2  50        ld      d,b
02e3  52        ld      d,d
02e4  54        ld      d,h
02e5  55        ld      d,l
02e6  57        ld      d,a
02e7  59        ld      e,c
02e8  5b        ld      e,e
 
;
02e9  cd800c    call    #0c80
02ec  7d        ld      a,l
02ed  b7        or      a
02ee  c21f03    jp      nz,#031f
02f1  7c        ld      a,h
02f2  fe87      cp      #87
02f4  c21803    jp      nz,#0318
02f7  01a082    ld      bc,#82a0
02fa  11ff87    ld      de,#87ff
02fd  21a080    ld      hl,#80a0
0300  cd010d    call    #0d01
0303  21a086    ld      hl,#86a0
0306  3655      ld      (hl),#55
0308  23        inc     hl
0309  7c        ld      a,h
030a  fe88      cp      #88
030c  c20603    jp      nz,#0306
030f  21e086    ld      hl,#86e0
0312  220a02    ld      (#020a),hl
0315  c31f03    jp      #031f
0318  11e001    ld      de,#01e0
031b  19        add     hl,de
031c  220a02    ld      (#020a),hl
031f  216713    ld      hl,#1367
0322  223701    ld      (#0137),hl
0325  3e7d      ld      a,#7d
0327  323901    ld      (#0139),a
032a  c34602    jp      #0246
032d  214080    ld      hl,#8040
0330  114000    ld      de,#0040
0333  cdf60c    call    #0cf6
0336  c9        ret
 
;
0337  f3        di
0338  01797d    ld      bc,#7d79
033b  21940d    ld      hl,#0d94
033e  cd1808    call    #0818
0341  21ab0e    ld      hl,#0eab
0344  cd2008    call    #0820
0347  fb        ei
0348  3e88      ld      a,#88
034a  d380      out     (#80),a
034c  cdad06    call    #06ad
034f  3e07      ld      a,#07
0351  d320      out     (#20),a
0353  3a2002    ld      a,(#0220)
0356  d360      out     (#60),a
 
;
0358  af        xor     a
0359  323901    ld      (#0139),a
035c  324201    ld      (#0142),a
035f  324b01    ld      (#014b),a
0362  c9        ret
 
;
0363  0655      ld      b,#55
0365  cd30c0    call    #c030 ; XCLEAR: Limpa tela gráfica.
0368  c9        ret
 
0369  310002    ld      sp,#0200
036c  3a1d02    ld      a,(#021d)
036f  b7        or      a
0370  c28e03    jp      nz,#038e
0373  321b01    ld      (#011b),a
0376  3c        inc     a
0377  321d02    ld      (#021d),a
037a  3ec9      ld      a,#c9
037c  325e40    ld      (#405e),a
037f  3ec3      ld      a,#c3
0381  323800    ld      (#0038),a
0384  2124c0    ld      hl,#c024
0387  223900    ld      (#0039),hl
038a  fb        ei
038b  cd3703    call    #0337
038e  3e88      ld      a,#88
0390  d380      out     (#80),a
0392  af        xor     a
0393  320601    ld      (#0106),a
0396  321102    ld      (#0211),a
0399  321502    ld      (#0215),a
039c  321602    ld      (#0216),a
039f  321702    ld      (#0217),a
03a2  321902    ld      (#0219),a
03a5  321c02    ld      (#021c),a
03a8  cd4f03    call    #034f
03ab  21c481    ld      hl,#81c4
03ae  220a02    ld      (#020a),hl
03b1  cd6303    call    #0363
03b4  3a1502    ld      a,(#0215)
03b7  b7        or      a
03b8  c2c905    jp      nz,#05c9
03bb  cd5d0d    call    #0d5d
03be  3ec3      ld      a,#c3
03c0  322001    ld      (#0120),a
03c3  21530b    ld      hl,#0b53
03c6  222101    ld      (#0121),hl
03c9  cd06c0    call    #c006 ; KEY: Entrada console.
03cc  47        ld      b,a
03cd  3a1102    ld      a,(#0211)
03d0  b7        or      a
03d1  ca5605    jp      z,#0556
03d4  78        ld      a,b
03d5  fe30      cp      #30
03d7  dac903    jp      c,#03c9
03da  fe39      cp      #39
03dc  d2c903    jp      nc,#03c9
03df  d630      sub     #30
03e1  5f        ld      e,a
03e2  1600      ld      d,#00
03e4  213910    ld      hl,#1039
03e7  19        add     hl,de
03e8  af        xor     a
03e9  321102    ld      (#0211),a
03ec  7e        ld      a,(hl)
03ed  2a0602    ld      hl,(#0206)
03f0  e5        push    hl
03f1  23        inc     hl
03f2  77        ld      (hl),a
03f3  23        inc     hl
03f4  220602    ld      (#0206),hl
03f7  cd2109    call    #0921
03fa  67        ld      h,a
03fb  3e04      ld      a,#04
03fd  010005    ld      bc,#0500
0400  bc        cp      h
0401  ca1904    jp      z,#0419
0404  07        rlca
0405  0c        inc     c
0406  05        dec     b
0407  c20004    jp      nz,#0400
040a  3e06      ld      a,#06
040c  110004    ld      de,#0400
040f  bc        cp      h
0410  ca1904    jp      z,#0419
0413  07        rlca
0414  1c        inc     e
0415  15        dec     d
0416  c20f04    jp      nz,#040f
0419  e1        pop     hl
041a  79        ld      a,c
041b  fe05      cp      #05
041d  d2a604    jp      nc,#04a6
0420  fe04      cp      #04
0422  c23f04    jp      nz,#043f
0425  2a0c02    ld      hl,(#020c)
0428  113210    ld      de,#1032
042b  cd0009    call    #0900
042e  23        inc     hl
042f  7e        ld      a,(hl)
0430  fe55      cp      #55
0432  cab204    jp      z,#04b2
0435  367f      ld      (hl),#7f
0437  c3b204    jp      #04b2
043a  fe54      cp      #54
043c  c34f04    jp      #044f
043f  4f        ld      c,a
0440  e5        push    hl
0441  cd0505    call    #0505
0444  e1        pop     hl
0445  3a1c02    ld      a,(#021c)
0448  a7        and     a
0449  7e        ld      a,(hl)
044a  c23a04    jp      nz,#043a
044d  fe60      cp      #60
044f  d27e04    jp      nc,#047e
0452  cd1e05    call    #051e
0455  79        ld      a,c
0456  fe03      cp      #03
0458  cab204    jp      z,#04b2
045b  fe02      cp      #02
045d  cdee04    call    #04ee
0460  cdf604    call    #04f6
0463  cab204    jp      z,#04b2
0466  fe01      cp      #01
0468  c27404    jp      nz,#0474
046b  112000    ld      de,#0020
046e  19        add     hl,de
046f  3665      ld      (hl),#65
0471  c3b204    jp      #04b2
0474  114000    ld      de,#0040
0477  19        add     hl,de
0478  cdf604    call    #04f6
047b  c3b204    jp      #04b2
047e  cd3505    call    #0535
0481  79        ld      a,c
0482  fe03      cp      #03
0484  cab204    jp      z,#04b2
0487  fe02      cp      #02
0489  cd4a05    call    #054a
048c  cab204    jp      z,#04b2
048f  fe01      cp      #01
0491  c29d04    jp      nz,#049d
0494  11e0ff    ld      de,#ffe0
0497  19        add     hl,de
0498  3699      ld      (hl),#99
049a  c3b204    jp      #04b2
049d  11c0ff    ld      de,#ffc0
04a0  19        add     hl,de
04a1  36a9      ld      (hl),#a9
04a3  c3b204    jp      #04b2
04a6  e5        push    hl
04a7  2a0c02    ld      hl,(#020c)
04aa  23        inc     hl
04ab  3665      ld      (hl),#65
04ad  7b        ld      a,e
04ae  e1        pop     hl
04af  c33f04    jp      #043f
04b2  2a0a02    ld      hl,(#020a)
04b5  7d        ld      a,l
04b6  fee0      cp      #e0
04b8  c2c903    jp      nz,#03c9
04bb  7c        ld      a,h
04bc  fe87      cp      #87
04be  cacc04    jp      z,#04cc
04c1  eb        ex      de,hl
04c2  2a2102    ld      hl,(#0221)
04c5  19        add     hl,de
04c6  220a02    ld      (#020a),hl
04c9  c3c903    jp      #03c9
04cc  211802    ld      hl,#0218
04cf  34        inc     (hl)
04d0  7e        ld      a,(hl)
04d1  fe10      cp      #10
04d3  d2c903    jp      nc,#03c9
04d6  010082    ld      bc,#8200
04d9  11ff87    ld      de,#87ff
04dc  210080    ld      hl,#8000
04df  cd010d    call    #0d01
04e2  cd300d    call    #0d30
04e5  21c487    ld      hl,#87c4
04e8  220a02    ld      (#020a),hl
04eb  c3c903    jp      #03c9
04ee  2a0c02    ld      hl,(#020c)
04f1  1181ff    ld      de,#ff81
04f4  19        add     hl,de
04f5  c9        ret
 
04f6  f5        push    af
04f7  7e        ld      a,(hl)
04f8  fe55      cp      #55
04fa  ca0105    jp      z,#0501
04fd  36a7      ld      (hl),#a7
04ff  f1        pop     af
0500  c9        ret
 
0501  36a5      ld      (hl),#a5
0503  f1        pop     af
0504  c9        ret
 
0505  7e        ld      a,(hl)
0506  f5        push    af
0507  0600      ld      b,#00
0509  214210    ld      hl,#1042
050c  3a1c02    ld      a,(#021c)
050f  a7        and     a
0510  ca1605    jp      z,#0516
0513  215110    ld      hl,#1051
0516  f1        pop     af
0517  be        cp      (hl)
0518  c8        ret     z
 
0519  04        inc     b
051a  23        inc     hl
051b  c31705    jp      #0517
051e  f5        push    af
051f  78        ld      a,b
0520  a7        and     a
0521  2a0c02    ld      hl,(#020c)
0524  ea2f05    jp      pe,#052f
0527  117610    ld      de,#1076
052a  cd0009    call    #0900
052d  f1        pop     af
052e  c9        ret
 
052f  118910    ld      de,#1089
0532  c32a05    jp      #052a
0535  f5        push    af
0536  78        ld      a,b
0537  a7        and     a
0538  2a0c02    ld      hl,(#020c)
053b  ea4405    jp      pe,#0544
053e  116010    ld      de,#1060
0541  c32a05    jp      #052a
0544  116b10    ld      de,#106b
0547  c32a05    jp      #052a
054a  f5        push    af
054b  2a0c02    ld      hl,(#020c)
054e  118000    ld      de,#0080
0551  19        add     hl,de
0552  36a9      ld      (hl),#a9
0554  f1        pop     af
0555  c9        ret
 
0556  78        ld      a,b
0557  fe41      cp      #41
0559  ca6609    jp      z,#0966
055c  fe42      cp      #42
055e  ca5409    jp      z,#0954
0561  fe57      cp      #57
0563  ca5c09    jp      z,#095c
0566  fe47      cp      #47
0568  211602    ld      hl,#0216
056b  c27305    jp      nz,#0573
056e  3601      ld      (hl),#01
0570  c3c903    jp      #03c9
0573  fe48      cp      #48
0575  c27d05    jp      nz,#057d
0578  3602      ld      (hl),#02
057a  c3c903    jp      #03c9
057d  fe45      cp      #45
057f  ca6e09    jp      z,#096e
0582  fe53      cp      #53
0584  ca1007    jp      z,#0710
0587  fe4c      cp      #4c
0589  ca5f07    jp      z,#075f
058c  47        ld      b,a
058d  211702    ld      hl,#0217
0590  7e        ld      a,(hl)
0591  b7        or      a
0592  c29c05    jp      nz,#059c
0595  34        inc     (hl)
0596  cd3b0c    call    #0c3b
0599  220602    ld      (#0206),hl
059c  78        ld      a,b
059d  fe4f      cp      #4f
059f  c22c06    jp      nz,#062c
05a2  af        xor     a
05a3  321802    ld      (#0218),a
05a6  321702    ld      (#0217),a
05a9  321902    ld      (#0219),a
05ac  3c        inc     a
05ad  321c02    ld      (#021c),a
05b0  211502    ld      hl,#0215
05b3  34        inc     (hl)
05b4  7e        ld      a,(hl)
05b5  fe03      cp      #03
05b7  dac005    jp      c,#05c0
05ba  3600      ld      (hl),#00
05bc  af        xor     a
05bd  321c02    ld      (#021c),a
05c0  cd3b0c    call    #0c3b
05c3  220602    ld      (#0206),hl
05c6  c3ab03    jp      #03ab
05c9  fe03      cp      #03
05cb  d26609    jp      nc,#0966
05ce  cdd405    call    #05d4
05d1  c3be03    jp      #03be
05d4  cd2d03    call    #032d
05d7  11db08    ld      de,#08db
05da  218080    ld      hl,#8080
05dd  cd0009    call    #0900
05e0  cd690d    call    #0d69
05e3  c9        ret
 
05e4  117000    ld      de,#0070
05e7  19        add     hl,de
05e8  c9        ret
 
05e9  21c481    ld      hl,#81c4
05ec  220a02    ld      (#020a),hl
05ef  211902    ld      hl,#0219
05f2  34        inc     (hl)
05f3  7e        ld      a,(hl)
05f4  fe01      cp      #01
05f6  2a1a02    ld      hl,(#021a)
05f9  c4e405    call    nz,#05e4
05fc  220602    ld      (#0206),hl
05ff  221a02    ld      (#021a),hl
0602  3a1502    ld      a,(#0215)
0605  a7        and     a
0606  ca1d06    jp      z,#061d
0609  fe01      cp      #01
060b  ca2606    jp      z,#0626
060e  224701    ld      (#0147),hl
0611  cd6303    call    #0363
0614  cdd405    call    #05d4
0617  cd0e11    call    #110e
061a  c3be03    jp      #03be
061d  223501    ld      (#0135),hl
0620  cdad06    call    #06ad
0623  c3be03    jp      #03be
0626  223e01    ld      (#013e),hl
0629  c31106    jp      #0611
062c  fe49      cp      #49
062e  cabe09    jp      z,#09be
0631  fe44      cp      #44
0633  ca550a    jp      z,#0a55
0636  fe54      cp      #54
0638  cafc0a    jp      z,#0afc
063b  fe59      cp      #59
063d  ca2b0b    jp      z,#0b2b
0640  fe51      cp      #51
0642  cae905    jp      z,#05e9
0645  fe21      cp      #21
0647  dac903    jp      c,#03c9
064a  fe29      cp      #29
064c  da6006    jp      c,#0660
064f  fe31      cp      #31
0651  dac903    jp      c,#03c9
0654  fe38      cp      #38
0656  d2c903    jp      nc,#03c9
0659  f5        push    af
065a  cdd30b    call    #0bd3
065d  f1        pop     af
065e  d608      sub     #08
0660  cda702    call    #02a7
0663  2a0602    ld      hl,(#0206)
0666  70        ld      (hl),b
0667  3e01      ld      a,#01
0669  321102    ld      (#0211),a
066c  211410    ld      hl,#1014
066f  3a1c02    ld      a,(#021c)
0672  a7        and     a
0673  ca7906    jp      z,#0679
0676  212310    ld      hl,#1023
0679  19        add     hl,de
067a  7e        ld      a,(hl)
067b  feff      cp      #ff
067d  2a0a02    ld      hl,(#020a)
0680  c28d06    jp      nz,#068d
0683  112000    ld      de,#0020
0686  19        add     hl,de
0687  220c02    ld      (#020c),hl
068a  c3c903    jp      #03c9
068d  a7        and     a
068e  ca8706    jp      z,#0687
0691  11e0ff    ld      de,#ffe0
0694  19        add     hl,de
0695  3d        dec     a
0696  c29406    jp      nz,#0694
0699  c38706    jp      #0687
 
; Exibe uma mensagem de B bytes na tela (HL), copiando de DE.
069c  1a        ld      a,(de)
069d  77        ld      (hl),a
069e  13        inc     de
069f  23        inc     hl
06a0  05        dec     b
06a1  c29c06    jp      nz,#069c
06a4  c9        ret
 
06a5  3e00      ld      a,#00
06a7  d380      out     (#80),a
06a9  cd21c0    call    #c021 ; ISCN: Apaga tela de texto.
06ac  c9        ret
 
06ad  cd6303    call    #0363
06b0  cd5d0d    call    #0d5d
06b3  fb        ei
06b4  cd0e11    call    #110e
06b7  c9        ret
 
06b8  af        xor     a
06b9  32013a    ld      (#3a01),a
06bc  32a83b    ld      (#3ba8),a
06bf  cd1ec0    call    #c01e ; GETL: Entra uma linha do teclado.
06c2  21b03b    ld      hl,#3bb0
06c5  0603      ld      b,#03
06c7  118d01    ld      de,#018d
06ca  7e        ld      a,(hl)
06cb  fe30      cp      #30
06cd  da0207    jp      c,#0702
06d0  fe3a      cp      #3a
06d2  dadf06    jp      c,#06df
06d5  fe41      cp      #41
06d7  da0207    jp      c,#0702
06da  fe5b      cp      #5b
06dc  d20207    jp      nc,#0702
06df  12        ld      (de),a
06e0  23        inc     hl
06e1  13        inc     de
06e2  05        dec     b
06e3  c2ca06    jp      nz,#06ca
06e6  3e0d      ld      a,#0d
06e8  12        ld      (de),a
06e9  217713    ld      hl,#1377
06ec  22fb00    ld      (#00fb),hl
06ef  c9        ret
 
06f0  218d01    ld      hl,#018d
06f3  117f01    ld      de,#017f
06f6  0603      ld      b,#03
06f8  1a        ld      a,(de)
06f9  be        cp      (hl)
06fa  c0        ret     nz
 
06fb  05        dec     b
06fc  c8        ret     z
 
06fd  23        inc     hl
06fe  13        inc     de
06ff  c3f806    jp      #06f8
 
0702  11e607    ld      de,#07e6
0705  214c81    ld      hl,#814c
0708  0605      ld      b,#05
070a  cd9c06    call    #069c
070d  c3b806    jp      #06b8
 
0710  f3        di
0711  cda506    call    #06a5
0714  116708    ld      de,#0867
0717  21c280    ld      hl,#80c2
071a  061a      ld      b,#1a
071c  cd9c06    call    #069c
071f  118208    ld      de,#0882
0722  21e480    ld      hl,#80e4
0725  0617      ld      b,#17
0727  cd9c06    call    #069c
072a  11f807    ld      de,#07f8
072d  210081    ld      hl,#8100
0730  061f      ld      b,#1f
0732  cd9c06    call    #069c
0735  cdb806    call    #06b8
0738  2a0602    ld      hl,(#0206)
073b  23        inc     hl
073c  22fd00    ld      (#00fd),hl
073f  cd12c0    call    #c012 ; TAPOUT: Saída cassete.
0742  cda506    call    #06a5
0745  115a07    ld      de,#075a
0748  210e81    ld      hl,#810e
074b  0604      ld      b,#04
074d  cd9c06    call    #069c
0750  010004    ld      bc,#0400 ; 1024ms
0753  cd48c0    call    #c048 ; DELAYB
0756  fb        ei
0757  c38e03    jp      #038e
075a  4f        ld      c,a
075b  2e4b      ld      l,#4b
075d  2e0d      ld      l,#0d
075f  f3        di
0760  cda506    call    #06a5
 
;
0763  113008    ld      de,#0830
0766  21e280    ld      hl,#80e2
0769  061b      ld      b,#1b
076b  cd9c06    call    #069c
076e  114c08    ld      de,#084c
0771  210381    ld      hl,#8103
0774  061a      ld      b,#1a
0776  cd9c06    call    #069c
 
0779  cdb806    call    #06b8
077c  3eff      ld      a,#ff
077e  32033a    ld      (#3a03),a
0781  cd0fc0    call    #c00f ; TAPIN: Entrada cassete.
0784  cdf006    call    #06f0
0787  c28107    jp      nz,#0781
078a  cd15c0    call    #c015 ; GET1: Carrega dados do cassete.
078d  c28107    jp      nz,#0781
0790  3e88      ld      a,#88
0792  d380      out     (#80),a
0794  cd3b09    call    #093b
0797  217713    ld      hl,#1377
079a  cd1808    call    #0818
079d  3a4201    ld      a,(#0142)
07a0  e601      and     #01
07a2  b7        or      a
07a3  caac07    jp      z,#07ac
07a6  217715    ld      hl,#1577
07a9  cd2008    call    #0820
07ac  3a4b01    ld      a,(#014b)
07af  e601      and     #01
07b1  b7        or      a
07b2  cabb07    jp      z,#07bb
07b5  217717    ld      hl,#1777
07b8  cd2808    call    #0828
07bb  af        xor     a
07bc  321902    ld      (#0219),a
07bf  321c02    ld      (#021c),a
07c2  c3a009    jp      #09a0
 
; Exibe mensagem de erro de paridade.
07c5  11d907    ld      de,#07d9
07c8  210181    ld      hl,#8101
07cb  061f      ld      b,#1f
07cd  cd9c06    call    #069c
07d0  010004    ld      bc,#0400 ; 1024ms
07d3  cd48c0    call    #c048 ; DELAYB
07d6  c36307    jp      #0763
 
;
07d9  50415249  ds      "PARITY CHECK "
07dd  54592043
07e1  4845434b
07e5  20
07e6  4552524f  ds      "ERROR RELOAD TAPE"
07ea  52205245
07ee  4c4f4144
07f2  20544150
07f6  45
07f7  0d        db      #0d
07f8  5448454e  ds      "THEN KEYIN YOUR FILENAME & <CR>"
07fc  204b4559
0800  494e2059
0804  4f555220
0807  46494c45
080c  4e414d45
0810  2026203c
0814  43523e
0817  0d        db      #0d
 
;
0818  223701    ld      (#0137),hl
081b  78        ld      a,b
081c  323901    ld      (#0139),a
081f  c9        ret
 
0820  224001    ld      (#0140),hl
0823  79        ld      a,c
0824  324201    ld      (#0142),a
0827  c9        ret
 
0828  224901    ld      (#0149),hl
082b  79        ld      a,c
082c  324b01    ld      (#014b),a
082f  c9        ret
 
;
0830  504c4541  ds      "PLEASE REWIND THE TAPE,THEN"
0834  53452052
0838  4557494e
083c  44205448
0840  45205441
0844  50452c54
0848  48454e
084b  0d        db      #0d
084c  4b455949  ds      "KEYIN YOUR FILENAME & <CR>"
0850  4e20594f
0854  55522046
0858  494c454e
085c  414d4520
0860  26203c43
0864  523e
0866  0d        db      #0d
0867  504c4541  ds      "PLEASE PUT A CASSETTE TAPE"
086b  53452050
086f  55542041
0873  20434153
0877  53455454
087b  45205441
087f  5045
0881  0d        db      #0d
0882  494e544f  ds      "INTO YOUR TAPE RECORDER"
0886  20594f55
088a  52205441
088e  50452052
0892  45434f52
0896  444552
0899  0d        db      #0d
 
089a  00        nop
089b  a5        and     l
089c  2059      jr      nz,#08f7        ; (89)
089e  ff        rst     #38
089f  56        ld      d,(hl)
08a0  20a6      jr      nz,#0848        ; (-90)
08a2  015920    ld      bc,#2059
08a5  a5        and     l
08a6  209f      jr      nz,#0847        ; (-97)
08a8  ff        rst     #38
08a9  f620      or      #20
08ab  69        ld      l,c
08ac  016521    ld      bc,#2165
08af  7f        ld      a,a
08b0  ff        rst     #38
08b1  aa        xor     d
08b2  ff        rst     #38
08b3  95        sub     l
08b4  ff        rst     #38
08b5  fd2056    jr      nz,#090e        ; (86)
08b8  019601    ld      bc,#0196
08bb  65        ld      h,l
08bc  019520    ld      bc,#2095
08bf  a7        and     a
08c0  ff        rst     #38
08c1  65        ld      h,l
08c2  ff        rst     #38
08c3  75        ld      (hl),l
08c4  ff        rst     #38
08c5  f621      or      #21
08c7  95        sub     l
08c8  016601    ld      bc,#0166
08cb  95        sub     l
08cc  207f      jr      nz,#094d        ; (127)
08ce  ff        rst     #38
08cf  aa        xor     d
08d0  ff        rst     #38
08d1  6a        ld      l,d
08d2  219520    ld      hl,#2095
08d5  95        sub     l
08d6  ff        rst     #38
08d7  95        sub     l
08d8  206a      jr      nz,#0944        ; (106)
08da  dd00      nop
08dc  59        ld      e,c
08dd  015fdf    ld      bc,#df5f
08e0  56        ld      d,(hl)
08e1  e0        ret     po
 
08e2  fd01aa01  ld      bc,#01aa
08e6  a5        and     l
08e7  2059      jr      nz,#0942        ; (89)
08e9  20f6      jr      nz,#08e1        ; (-10)
08eb  2056      jr      nz,#0943        ; (86)
08ed  016920    ld      bc,#2069
08f0  7f        ld      a,a
08f1  ff        rst     #38
08f2  59        ld      e,c
08f3  20a5      jr      nz,#089a        ; (-91)
08f5  01691f    ld      bc,#1f69
08f8  7f        ld      a,a
08f9  ff        rst     #38
08fa  5a        ld      e,d
08fb  20a5      jr      nz,#08a2        ; (-91)
08fd  1f        rra
08fe  d6dd      sub     #dd
0900  e5        push    hl
0901  d5        push    de
0902  c5        push    bc
0903  1a        ld      a,(de)
0904  fedd      cp      #dd
0906  ca1d09    jp      z,#091d
0909  4f        ld      c,a
090a  07        rlca
090b  da1809    jp      c,#0918
090e  0600      ld      b,#00
0910  09        add     hl,bc
0911  13        inc     de
0912  1a        ld      a,(de)
0913  77        ld      (hl),a
0914  13        inc     de
0915  c30309    jp      #0903
0918  06ff      ld      b,#ff
091a  c31009    jp      #0910
091d  c1        pop     bc
091e  d1        pop     de
091f  e1        pop     hl
0920  c9        ret
 
0921  2a0a02    ld      hl,(#020a)
0924  3655      ld      (hl),#55
0926  23        inc     hl
0927  23        inc     hl
0928  220a02    ld      (#020a),hl
092b  c9        ret
 
092c  3a2302    ld      a,(#0223)
092f  77        ld      (hl),a
0930  23        inc     hl
0931  3680      ld      (hl),#80
0933  23        inc     hl
0934  3640      ld      (hl),#40
0936  23        inc     hl
0937  3600      ld      (hl),#00
0939  23        inc     hl
093a  c9        ret
 
093b  3a1602    ld      a,(#0216)
093e  fe01      cp      #01
0940  c24709    jp      nz,#0947
0943  01696d    ld      bc,#6d69
0946  c9        ret
 
0947  fe02      cp      #02
0949  c25009    jp      nz,#0950
094c  01595d    ld      bc,#5d59
094f  c9        ret
 
0950  01797d    ld      bc,#7d79
0953  c9        ret
 
0954  2a0602    ld      hl,(#0206)
0957  36ee      ld      (hl),#ee
0959  c3c903    jp      #03c9
095c  af        xor     a
095d  321602    ld      (#0216),a
0960  321902    ld      (#0219),a
0963  c3c903    jp      #03c9
0966  2a0602    ld      hl,(#0206)
0969  36ff      ld      (hl),#ff
096b  c3c903    jp      #03c9
096e  af        xor     a
096f  321c02    ld      (#021c),a
0972  cd3b09    call    #093b
0975  f3        di
0976  217713    ld      hl,#1377
0979  cd1808    call    #0818
097c  3a1502    ld      a,(#0215)
097f  fe01      cp      #01
0981  ca8f09    jp      z,#098f
0984  fe02      cp      #02
0986  c29509    jp      nz,#0995
0989  217717    ld      hl,#1777
098c  cd2808    call    #0828
098f  217715    ld      hl,#1577
0992  cd2008    call    #0820
0995  fb        ei
0996  af        xor     a
0997  321702    ld      (#0217),a
099a  321902    ld      (#0219),a
099d  321502    ld      (#0215),a
09a0  cdad06    call    #06ad
09a3  3e7c      ld      a,#7c
09a5  213901    ld      hl,#0139
09a8  a6        and     (hl)
09a9  77        ld      (hl),a
09aa  324201    ld      (#0142),a
09ad  324b01    ld      (#014b),a
09b0  c3ab03    jp      #03ab
09b3  cd3b0c    call    #0c3b
09b6  2a0802    ld      hl,(#0208)
09b9  11f001    ld      de,#01f0
09bc  19        add     hl,de
09bd  c9        ret
 
09be  2a0602    ld      hl,(#0206)
09c1  e5        push    hl
09c2  cdb309    call    #09b3
09c5  4d        ld      c,l
09c6  44        ld      b,h
09c7  23        inc     hl
09c8  23        inc     hl
09c9  d1        pop     de
09ca  d5        push    de
09cb  cd010d    call    #0d01
09ce  e1        pop     hl
09cf  3600      ld      (hl),#00
09d1  23        inc     hl
09d2  3601      ld      (hl),#01
09d4  2a0a02    ld      hl,(#020a)
09d7  7c        ld      a,h
09d8  fe87      cp      #87
09da  013f86    ld      bc,#863f
09dd  113d86    ld      de,#863d
09e0  ca340a    jp      z,#0a34
09e3  211a0f    ld      hl,#0f1a
09e6  cd830b    call    #0b83
09e9  213e84    ld      hl,#843e
09ec  012486    ld      bc,#8624
09ef  cd130c    call    #0c13
09f2  2a0a02    ld      hl,(#020a)
09f5  7c        ld      a,h
09f6  fe85      cp      #85
09f8  013f84    ld      bc,#843f
09fb  113d84    ld      de,#843d
09fe  ca340a    jp      z,#0a34
0a01  2a2402    ld      hl,(#0224)
0a04  cd830b    call    #0b83
0a07  213e82    ld      hl,#823e
0a0a  012484    ld      bc,#8424
0a0d  cd130c    call    #0c13
0a10  2a0a02    ld      hl,(#020a)
0a13  7c        ld      a,h
0a14  fe83      cp      #83
0a16  013f82    ld      bc,#823f
0a19  113d82    ld      de,#823d
0a1c  ca340a    jp      z,#0a34
0a1f  211a0f    ld      hl,#0f1a
0a22  cd830b    call    #0b83
0a25  213e80    ld      hl,#803e
0a28  012482    ld      bc,#8224
0a2b  cd130c    call    #0c13
0a2e  013f80    ld      bc,#803f
0a31  113d80    ld      de,#803d
0a34  2a0a02    ld      hl,(#020a)
0a37  7d        ld      a,l
0a38  fede      cp      #de
0a3a  ca430a    jp      z,#0a43
0a3d  cd200c    call    #0c20
0a40  cd6a0b    call    #0b6a
0a43  cdd30b    call    #0bd3
0a46  2a0a02    ld      hl,(#020a)
0a49  23        inc     hl
0a4a  23        inc     hl
0a4b  7e        ld      a,(hl)
0a4c  b7        or      a
0a4d  c2c903    jp      nz,#03c9
0a50  3655      ld      (hl),#55
0a52  c3c903    jp      #03c9
0a55  2a0602    ld      hl,(#0206)
0a58  e5        push    hl
0a59  23        inc     hl
0a5a  23        inc     hl
0a5b  4d        ld      c,l
0a5c  44        ld      b,h
0a5d  cdb309    call    #09b3
0a60  eb        ex      de,hl
0a61  e1        pop     hl
0a62  cd010d    call    #0d01
0a65  2a0a02    ld      hl,(#020a)
0a68  e5        push    hl
0a69  cdd30b    call    #0bd3
0a6c  e1        pop     hl
0a6d  7c        ld      a,h
0a6e  fe81      cp      #81
0a70  c2ce0a    jp      nz,#0ace
0a73  7d        ld      a,l
0a74  fede      cp      #de
0a76  c42a0c    call    nz,#0c2a
0a79  212482    ld      hl,#8224
0a7c  013e80    ld      bc,#803e
0a7f  cd130c    call    #0c13
0a82  012482    ld      bc,#8224
0a85  112682    ld      de,#8226
0a88  211a0f    ld      hl,#0f1a
0a8b  cdbc0b    call    #0bbc
0a8e  212484    ld      hl,#8424
0a91  013e82    ld      bc,#823e
0a94  cd130c    call    #0c13
0a97  012484    ld      bc,#8424
0a9a  112684    ld      de,#8426
0a9d  211a0f    ld      hl,#0f1a
0aa0  cdbc0b    call    #0bbc
0aa3  212486    ld      hl,#8624
0aa6  013e84    ld      bc,#843e
0aa9  e5        push    hl
0aaa  c5        push    bc
0aab  3e0e      ld      a,#0e
0aad  cd010c    call    #0c01
0ab0  c1        pop     bc
0ab1  e1        pop     hl
0ab2  03        inc     bc
0ab3  23        inc     hl
0ab4  3e0e      ld      a,#0e
0ab6  cd010c    call    #0c01
0ab9  012486    ld      bc,#8624
0abc  112686    ld      de,#8626
0abf  211a0f    ld      hl,#0f1a
0ac2  cdbc0b    call    #0bbc
0ac5  21de87    ld      hl,#87de
0ac8  cdd60b    call    #0bd6
0acb  c3c903    jp      #03c9
0ace  fe83      cp      #83
0ad0  c2dc0a    jp      nz,#0adc
0ad3  7d        ld      a,l
0ad4  fede      cp      #de
0ad6  c42a0c    call    nz,#0c2a
0ad9  c38e0a    jp      #0a8e
0adc  fe85      cp      #85
0ade  c2ea0a    jp      nz,#0aea
0ae1  7d        ld      a,l
0ae2  fede      cp      #de
0ae4  c42a0c    call    nz,#0c2a
0ae7  c3a30a    jp      #0aa3
0aea  7d        ld      a,l
0aeb  fede      cp      #de
0aed  c2f60a    jp      nz,#0af6
0af0  cdd30b    call    #0bd3
0af3  c3c903    jp      #03c9
0af6  cd2a0c    call    #0c2a
0af9  c3c903    jp      #03c9
0afc  2a0a02    ld      hl,(#020a)
0aff  23        inc     hl
0b00  7e        ld      a,(hl)
0b01  fe55      cp      #55
0b03  2b        dec     hl
0b04  c2090b    jp      nz,#0b09
0b07  3655      ld      (hl),#55
0b09  7d        ld      a,l
0b0a  fec4      cp      #c4
0b0c  c2190b    jp      nz,#0b19
0b0f  7c        ld      a,h
0b10  fe81      cp      #81
0b12  cac903    jp      z,#03c9
0b15  111cfe    ld      de,#fe1c
0b18  19        add     hl,de
0b19  2b        dec     hl
0b1a  2b        dec     hl
0b1b  eb        ex      de,hl
0b1c  2a0602    ld      hl,(#0206)
0b1f  2b        dec     hl
0b20  2b        dec     hl
0b21  220602    ld      (#0206),hl
0b24  eb        ex      de,hl
0b25  220a02    ld      (#020a),hl
0b28  c3c903    jp      #03c9
0b2b  2a0a02    ld      hl,(#020a)
0b2e  23        inc     hl
0b2f  7e        ld      a,(hl)
0b30  fe55      cp      #55
0b32  2b        dec     hl
0b33  c2380b    jp      nz,#0b38
0b36  3655      ld      (hl),#55
0b38  23        inc     hl
0b39  23        inc     hl
0b3a  7d        ld      a,l
0b3b  fee0      cp      #e0
0b3d  c24a0b    jp      nz,#0b4a
0b40  7c        ld      a,h
0b41  fe87      cp      #87
0b43  cac903    jp      z,#03c9
0b46  11e401    ld      de,#01e4
0b49  19        add     hl,de
0b4a  eb        ex      de,hl
0b4b  2a0602    ld      hl,(#0206)
0b4e  23        inc     hl
0b4f  23        inc     hl
0b50  c3210b    jp      #0b21
0b53  2a0701    ld      hl,(#0107)
0b56  7d        ld      a,l
0b57  2a0a02    ld      hl,(#020a)
0b5a  0f        rrca
0b5b  3600      ld      (hl),#00
0b5d  d0        ret     nc
 
0b5e  3655      ld      (hl),#55
0b60  c9        ret
 
0b61  1a        ld      a,(de)
0b62  02        ld      (bc),a
0b63  1b        dec     de
0b64  0b        dec     bc
0b65  2d        dec     l
0b66  c2610b    jp      nz,#0b61
0b69  c9        ret
 
0b6a  e5        push    hl
0b6b  c5        push    bc
0b6c  d5        push    de
0b6d  cd610b    call    #0b61
0b70  212000    ld      hl,#0020
0b73  d1        pop     de
0b74  c1        pop     bc
0b75  19        add     hl,de
0b76  eb        ex      de,hl
0b77  212000    ld      hl,#0020
0b7a  09        add     hl,bc
0b7b  4d        ld      c,l
0b7c  44        ld      b,h
0b7d  e1        pop     hl
0b7e  25        dec     h
0b7f  c26a0b    jp      nz,#0b6a
0b82  c9        ret
 
0b83  e5        push    hl
0b84  cd610b    call    #0b61
0b87  213a00    ld      hl,#003a
0b8a  19        add     hl,de
0b8b  eb        ex      de,hl
0b8c  213a00    ld      hl,#003a
0b8f  09        add     hl,bc
0b90  4d        ld      c,l
0b91  44        ld      b,h
0b92  e1        pop     hl
0b93  25        dec     h
0b94  2e1a      ld      l,#1a
0b96  c2830b    jp      nz,#0b83
0b99  c9        ret
 
0b9a  1a        ld      a,(de)
0b9b  02        ld      (bc),a
0b9c  13        inc     de
0b9d  03        inc     bc
0b9e  2d        dec     l
0b9f  c29a0b    jp      nz,#0b9a
0ba2  c9        ret
 
0ba3  e5        push    hl
0ba4  c5        push    bc
0ba5  d5        push    de
0ba6  cd9a0b    call    #0b9a
0ba9  212000    ld      hl,#0020
0bac  d1        pop     de
0bad  c1        pop     bc
0bae  19        add     hl,de
0baf  eb        ex      de,hl
0bb0  212000    ld      hl,#0020
0bb3  09        add     hl,bc
0bb4  4d        ld      c,l
0bb5  44        ld      b,h
0bb6  e1        pop     hl
0bb7  25        dec     h
0bb8  c2a30b    jp      nz,#0ba3
0bbb  c9        ret
 
0bbc  e5        push    hl
0bbd  cd9a0b    call    #0b9a
0bc0  210600    ld      hl,#0006
0bc3  19        add     hl,de
0bc4  eb        ex      de,hl
0bc5  210600    ld      hl,#0006
0bc8  09        add     hl,bc
0bc9  4d        ld      c,l
0bca  44        ld      b,h
0bcb  e1        pop     hl
0bcc  25        dec     h
0bcd  2e1a      ld      l,#1a
0bcf  c2bc0b    jp      nz,#0bbc
0bd2  c9        ret
 
0bd3  2a0a02    ld      hl,(#020a)
0bd6  3e02      ld      a,#02
0bd8  e5        push    hl
0bd9  010405    ld      bc,#0504
0bdc  11e0ff    ld      de,#ffe0
0bdf  3655      ld      (hl),#55
0be1  19        add     hl,de
0be2  0d        dec     c
0be3  c2df0b    jp      nz,#0bdf
0be6  36ff      ld      (hl),#ff
0be8  19        add     hl,de
0be9  3655      ld      (hl),#55
0beb  19        add     hl,de
0bec  05        dec     b
0bed  c2e60b    jp      nz,#0be6
0bf0  e1        pop     hl
0bf1  e5        push    hl
0bf2  112000    ld      de,#0020
0bf5  19        add     hl,de
0bf6  3655      ld      (hl),#55
0bf8  3d        dec     a
0bf9  e1        pop     hl
0bfa  23        inc     hl
0bfb  c2d80b    jp      nz,#0bd8
0bfe  c9        ret
 
0bff  3e0f      ld      a,#0f
0c01  f5        push    af
0c02  112000    ld      de,#0020
0c05  7e        ld      a,(hl)
0c06  02        ld      (bc),a
0c07  19        add     hl,de
0c08  eb        ex      de,hl
0c09  09        add     hl,bc
0c0a  4d        ld      c,l
0c0b  44        ld      b,h
0c0c  eb        ex      de,hl
0c0d  f1        pop     af
0c0e  3d        dec     a
0c0f  c2010c    jp      nz,#0c01
0c12  c9        ret
 
0c13  e5        push    hl
0c14  c5        push    bc
0c15  cdff0b    call    #0bff
0c18  c1        pop     bc
0c19  e1        pop     hl
0c1a  03        inc     bc
0c1b  23        inc     hl
0c1c  cdff0b    call    #0bff
0c1f  c9        ret
 
0c20  2a0a02    ld      hl,(#020a)
0c23  3ede      ld      a,#de
0c25  95        sub     l
0c26  6f        ld      l,a
0c27  260f      ld      h,#0f
0c29  c9        ret
 
0c2a  1160fe    ld      de,#fe60
0c2d  19        add     hl,de
0c2e  4d        ld      c,l
0c2f  44        ld      b,h
0c30  23        inc     hl
0c31  23        inc     hl
0c32  5d        ld      e,l
0c33  54        ld      d,h
0c34  cd200c    call    #0c20
0c37  cda30b    call    #0ba3
0c3a  c9        ret
 
0c3b  3a1502    ld      a,(#0215)
0c3e  b7        or      a
0c3f  c2520c    jp      nz,#0c52
0c42  217713    ld      hl,#1377
0c45  223701    ld      (#0137),hl
0c48  cd2c09    call    #092c
0c4b  220802    ld      (#0208),hl
0c4e  221a02    ld      (#021a),hl
0c51  c9        ret
 
0c52  fe01      cp      #01
0c54  c2650c    jp      nz,#0c65
0c57  217715    ld      hl,#1577
0c5a  224001    ld      (#0140),hl
0c5d  360c      ld      (hl),#0c
0c5f  cd3009    call    #0930
0c62  c34b0c    jp      #0c4b
0c65  fe02      cp      #02
0c67  c0        ret     nz
 
0c68  217717    ld      hl,#1777
0c6b  224901    ld      (#0149),hl
0c6e  c35d0c    jp      #0c5d
0c71  0655      ld      b,#55
0c73  cd30c0    call    #c030 ; XCLEAR: Limpa tela gráfica.
0c76  cd5d0d    call    #0d5d
0c79  21c481    ld      hl,#81c4
0c7c  220a02    ld      (#020a),hl
0c7f  c9        ret
 
0c80  2a0a02    ld      hl,(#020a)
0c83  23        inc     hl
0c84  23        inc     hl
0c85  220a02    ld      (#020a),hl
0c88  c9        ret
 
0c89  cd800c    call    #0c80
0c8c  11e201    ld      de,#01e2
0c8f  19        add     hl,de
0c90  220a02    ld      (#020a),hl
0c93  c9        ret
 
0c94  e5        push    hl
0c95  061c      ld      b,#1c
0c97  36ff      ld      (hl),#ff
0c99  23        inc     hl
0c9a  05        dec     b
0c9b  c2970c    jp      nz,#0c97
0c9e  e1        pop     hl
0c9f  c9        ret
 
0ca0  0e05      ld      c,#05
0ca2  cd940c    call    #0c94
0ca5  19        add     hl,de
0ca6  0d        dec     c
0ca7  c2a20c    jp      nz,#0ca2
0caa  c9        ret
 
0cab  010082    ld      bc,#8200
0cae  11ff87    ld      de,#87ff
0cb1  210080    ld      hl,#8000
0cb4  cd010d    call    #0d01
0cb7  210486    ld      hl,#8604
0cba  0e20      ld      c,#20
0cbc  3655      ld      (hl),#55
0cbe  23        inc     hl
0cbf  7c        ld      a,h
0cc0  fe88      cp      #88
0cc2  cad40c    jp      z,#0cd4
0cc5  7d        ld      a,l
0cc6  b9        cp      c
0cc7  c2bc0c    jp      nz,#0cbc
0cca  c604      add     a,#04
0ccc  6f        ld      l,a
0ccd  79        ld      a,c
0cce  c620      add     a,#20
0cd0  4f        ld      c,a
0cd1  c3bc0c    jp      #0cbc
0cd4  214486    ld      hl,#8644
0cd7  114000    ld      de,#0040
0cda  cda00c    call    #0ca0
0cdd  c9        ret
 
0cde  2a0a02    ld      hl,(#020a)
0ce1  11e0ff    ld      de,#ffe0
0ce4  19        add     hl,de
0ce5  0d        dec     c
0ce6  c2e40c    jp      nz,#0ce4
0ce9  c9        ret
 
0cea  e5        push    hl
0ceb  0620      ld      b,#20
0ced  36ff      ld      (hl),#ff
0cef  23        inc     hl
0cf0  05        dec     b
0cf1  c2ed0c    jp      nz,#0ced
0cf4  e1        pop     hl
0cf5  c9        ret
 
0cf6  0e05      ld      c,#05
0cf8  cdea0c    call    #0cea
0cfb  19        add     hl,de
0cfc  0d        dec     c
0cfd  c2f80c    jp      nz,#0cf8
0d00  c9        ret
 
0d01  cd1c0d    call    #0d1c
0d04  0a        ld      a,(bc)
0d05  77        ld      (hl),a
0d06  c8        ret     z
 
0d07  da0f0d    jp      c,#0d0f
0d0a  03        inc     bc
0d0b  23        inc     hl
0d0c  c3010d    jp      #0d01
0d0f  0b        dec     bc
0d10  2b        dec     hl
0d11  c3010d    jp      #0d01
0d14  0600      ld      b,#00
0d16  1f        rra
0d17  d8        ret     c
 
0d18  04        inc     b
0d19  c2160d    jp      nz,#0d16
0d1c  7a        ld      a,d
0d1d  90        sub     b
0d1e  d8        ret     c
 
0d1f  c0        ret     nz
 
0d20  7b        ld      a,e
0d21  91        sub     c
0d22  d8        ret     c
 
0d23  c0        ret     nz
 
0d24  37        scf
0d25  c9        ret
 
0d26  cd1c0d    call    #0d1c
0d29  7c        ld      a,h
0d2a  02        ld      (bc),a
0d2b  03        inc     bc
0d2c  c2260d    jp      nz,#0d26
0d2f  c9        ret
 
0d30  210086    ld      hl,#8600
0d33  0655      ld      b,#55
0d35  70        ld      (hl),b
0d36  23        inc     hl
0d37  7c        ld      a,h
0d38  fe88      cp      #88
0d3a  c2350d    jp      nz,#0d35
0d3d  214086    ld      hl,#8640
0d40  cd3003    call    #0330
0d43  210286    ld      hl,#8602
0d46  3a1502    ld      a,(#0215)
0d49  a7        and     a
0d4a  c2540d    jp      nz,#0d54
0d4d  119a08    ld      de,#089a
0d50  cd0009    call    #0900
0d53  c9        ret
 
0d54  218086    ld      hl,#8680
0d57  11db08    ld      de,#08db
0d5a  c3500d    jp      #0d50
0d5d  cd2d03    call    #032d
0d60  210280    ld      hl,#8002
0d63  119a08    ld      de,#089a
0d66  cd0009    call    #0900
0d69  010080    ld      bc,#8000
0d6c  c5        push    bc
0d6d  11bf81    ld      de,#81bf
0d70  210082    ld      hl,#8200
0d73  cd010d    call    #0d01
0d76  c1        pop     bc
0d77  11bf83    ld      de,#83bf
0d7a  210084    ld      hl,#8400
0d7d  cd010d    call    #0d01
0d80  c9        ret
 
0d81  11e0ff    ld      de,#ffe0
0d84  19        add     hl,de
0d85  3d        dec     a
0d86  c2840d    jp      nz,#0d84
0d89  c9        ret
 
0d8a  2a0602    ld      hl,(#0206)
0d8d  70        ld      (hl),b
0d8e  23        inc     hl
0d8f  220602    ld      (#0206),hl
0d92  7a        ld      a,d
0d93  c9        ret
 
0d94  0f        rrca
0d95  80        add     a,b
0d96  40        ld      b,b
0d97  00        nop
0d98  50        ld      d,b
0d99  3054      jr      nc,#0def        ; (84)
0d9b  3057      jr      nc,#0df4        ; (87)
0d9d  3057      jr      nc,#0df6        ; (87)
0d9f  2064      jr      nz,#0e05        ; (100)
0da1  1064      djnz    #0e07           ; (100)
0da3  2060      jr      nz,#0e05        ; (96)
0da5  1060      djnz    #0e07           ; (96)
0da7  2050      jr      nz,#0df9        ; (80)
0da9  1050      djnz    #0dfb           ; (80)
0dab  1054      djnz    #0e01           ; (84)
0dad  1057      djnz    #0e06           ; (87)
0daf  1057      djnz    #0e08           ; (87)
0db1  2065      jr      nz,#0e18        ; (101)
0db3  1065      djnz    #0e1a           ; (101)
0db5  2062      jr      nz,#0e19        ; (98)
0db7  1062      djnz    #0e1b           ; (98)
0db9  204b      jr      nz,#0e06        ; (75)
0dbb  104b      djnz    #0e08           ; (75)
0dbd  1052      djnz    #0e11           ; (82)
0dbf  1059      djnz    #0e1a           ; (89)
0dc1  1059      djnz    #0e1c           ; (89)
0dc3  2065      jr      nz,#0e2a        ; (101)
0dc5  1065      djnz    #0e2c           ; (101)
0dc7  205b      jr      nz,#0e24        ; (91)
0dc9  105b      djnz    #0e26           ; (91)
0dcb  204b      jr      nz,#0e18        ; (75)
0dcd  104b      djnz    #0e1a           ; (75)
0dcf  1052      djnz    #0e23           ; (82)
0dd1  1059      djnz    #0e2c           ; (89)
0dd3  1059      djnz    #0e2e           ; (89)
0dd5  2064      jr      nz,#0e3b        ; (100)
0dd7  1064      djnz    #0e3d           ; (100)
0dd9  2060      jr      nz,#0e3b        ; (96)
0ddb  1060      djnz    #0e3d           ; (96)
0ddd  2050      jr      nz,#0e2f        ; (80)
0ddf  1050      djnz    #0e31           ; (80)
0de1  1054      djnz    #0e37           ; (84)
0de3  1057      djnz    #0e3c           ; (87)
0de5  1060      djnz    #0e47           ; (96)
0de7  2067      jr      nz,#0e50        ; (103)
0de9  1067      djnz    #0e52           ; (103)
0deb  2064      jr      nz,#0e51        ; (100)
0ded  1064      djnz    #0e53           ; (100)
0def  2052      jr      nz,#0e43        ; (82)
0df1  1052      djnz    #0e45           ; (82)
0df3  1055      djnz    #0e4a           ; (85)
0df5  1059      djnz    #0e50           ; (89)
0df7  1059      djnz    #0e52           ; (89)
0df9  40        ld      b,b
0dfa  55        ld      d,l
0dfb  1057      djnz    #0e54           ; (87)
0dfd  1064      djnz    #0e63           ; (100)
0dff  40        ld      b,b
0e00  60        ld      h,b
0e01  1054      djnz    #0e57           ; (84)
0e03  1054      djnz    #0e59           ; (84)
0e05  2052      jr      nz,#0e59        ; (82)
0e07  1059      djnz    #0e62           ; (89)
0e09  205b      jr      nz,#0e66        ; (91)
0e0b  1060      djnz    #0e6d           ; (96)
0e0d  2057      jr      nz,#0e66        ; (87)
0e0f  1055      djnz    #0e66           ; (85)
0e11  2057      jr      nz,#0e6a        ; (87)
0e13  1055      djnz    #0e6a           ; (85)
0e15  2057      jr      nz,#0e6e        ; (87)
0e17  1064      djnz    #0e7d           ; (100)
0e19  40        ld      b,b
0e1a  62        ld      h,d
0e1b  1057      djnz    #0e74           ; (87)
0e1d  1054      djnz    #0e73           ; (84)
0e1f  2057      jr      nz,#0e78        ; (87)
0e21  1054      djnz    #0e77           ; (84)
0e23  2057      jr      nz,#0e7c        ; (87)
0e25  1062      djnz    #0e89           ; (98)
0e27  40        ld      b,b
0e28  60        ld      h,b
0e29  1057      djnz    #0e82           ; (87)
0e2b  1055      djnz    #0e82           ; (85)
0e2d  2057      jr      nz,#0e86        ; (87)
0e2f  1055      djnz    #0e86           ; (85)
0e31  2057      jr      nz,#0e8a        ; (87)
0e33  1064      djnz    #0e99           ; (100)
0e35  40        ld      b,b
0e36  62        ld      h,d
0e37  1057      djnz    #0e90           ; (87)
0e39  1060      djnz    #0e9b           ; (96)
0e3b  1062      djnz    #0e9f           ; (98)
0e3d  1064      djnz    #0ea3           ; (100)
0e3f  1067      djnz    #0ea8           ; (103)
0e41  2065      jr      nz,#0ea8        ; (101)
0e43  1064      djnz    #0ea9           ; (100)
0e45  2062      jr      nz,#0ea9        ; (98)
0e47  1060      djnz    #0ea9           ; (96)
0e49  2057      jr      nz,#0ea2        ; (87)
0e4b  1055      djnz    #0ea2           ; (85)
0e4d  08        ex      af,af''
0e4e  57        ld      d,a
0e4f  08        ex      af,af'
0e50  5b        ld      e,e
0e51  08        ex      af,af'
0e52  62        ld      h,d
0e53  08        ex      af,af'
0e54  67        ld      h,a
0e55  1055      djnz    #0eac           ; (85)
0e57  08        ex      af,af'
0e58  57        ld      d,a
0e59  08        ex      af,af'
0e5a  5b        ld      e,e
0e5b  08        ex      af,af'
0e5c  62        ld      h,d
0e5d  08        ex      af,af'
0e5e  67        ld      h,a
0e5f  1064      djnz    #0ec5           ; (100)
0e61  40        ld      b,b
0e62  62        ld      h,d
0e63  1057      djnz    #0ebc           ; (87)
0e65  1054      djnz    #0ebb           ; (84)
0e67  08        ex      af,af'
0e68  57        ld      d,a
0e69  08        ex      af,af'
0e6a  60        ld      h,b
0e6b  08        ex      af,af'
0e6c  64        ld      h,h
0e6d  08        ex      af,af'
0e6e  67        ld      h,a
0e6f  1054      djnz    #0ec5           ; (84)
0e71  08        ex      af,af'
0e72  57        ld      d,a
0e73  08        ex      af,af'
0e74  60        ld      h,b
0e75  08        ex      af,af'
0e76  64        ld      h,h
0e77  08        ex      af,af'
0e78  67        ld      h,a
0e79  1062      djnz    #0edd           ; (98)
0e7b  40        ld      b,b
0e7c  60        ld      h,b
0e7d  1057      djnz    #0ed6           ; (87)
0e7f  1055      djnz    #0ed6           ; (85)
0e81  08        ex      af,af'
0e82  57        ld      d,a
0e83  08        ex      af,af'
0e84  5b        ld      e,e
0e85  08        ex      af,af'
0e86  62        ld      h,d
0e87  08        ex      af,af'
0e88  67        ld      h,a
0e89  1055      djnz    #0ee0           ; (85)
0e8b  08        ex      af,af'
0e8c  57        ld      d,a
0e8d  08        ex      af,af'
0e8e  5b        ld      e,e
0e8f  08        ex      af,af'
0e90  62        ld      h,d
0e91  08        ex      af,af'
0e92  67        ld      h,a
0e93  1064      djnz    #0ef9           ; (100)
0e95  40        ld      b,b
0e96  62        ld      h,d
0e97  1057      djnz    #0ef0           ; (87)
0e99  1060      djnz    #0efb           ; (96)
0e9b  1062      djnz    #0eff           ; (98)
0e9d  1064      djnz    #0f03           ; (100)
0e9f  1067      djnz    #0f08           ; (103)
0ea1  2065      jr      nz,#0f08        ; (101)
0ea3  1064      djnz    #0f09           ; (100)
0ea5  2062      jr      nz,#0f09        ; (98)
0ea7  1060      djnz    #0f09           ; (96)
0ea9  40        ld      b,b
0eaa  ff        rst     #38
0eab  0e80      ld      c,#80
0ead  40        ld      b,b
0eae  00        nop
0eaf  50        ld      d,b
0eb0  3054      jr      nc,#0f06        ; (84)
0eb2  3057      jr      nc,#0f0b        ; (87)
0eb4  3050      jr      nc,#0f06        ; (80)
0eb6  1057      djnz    #0f0f           ; (87)
0eb8  1057      djnz    #0f11           ; (87)
0eba  1054      djnz    #0f10           ; (84)
0ebc  1057      djnz    #0f15           ; (87)
0ebe  1057      djnz    #0f17           ; (87)
0ec0  1050      djnz    #0f12           ; (80)
0ec2  1057      djnz    #0f1b           ; (87)
0ec4  1057      djnz    #0f1d           ; (87)
0ec6  1054      djnz    #0f1c           ; (84)
0ec8  1057      djnz    #0f21           ; (87)
0eca  1057      djnz    #0f23           ; (87)
0ecc  104b      djnz    #0f19           ; (75)
0ece  1057      djnz    #0f27           ; (87)
0ed0  1057      djnz    #0f29           ; (87)
0ed2  1052      djnz    #0f26           ; (82)
0ed4  1057      djnz    #0f2d           ; (87)
0ed6  1057      djnz    #0f2f           ; (87)
0ed8  104b      djnz    #0f25           ; (75)
0eda  1057      djnz    #0f33           ; (87)
0edc  1057      djnz    #0f35           ; (87)
0ede  1052      djnz    #0f32           ; (82)
0ee0  1059      djnz    #0f3b           ; (89)
0ee2  1059      djnz    #0f3d           ; (89)
0ee4  104b      djnz    #0f31           ; (75)
0ee6  1059      djnz    #0f41           ; (89)
0ee8  1059      djnz    #0f43           ; (89)
0eea  104b      djnz    #0f37           ; (75)
0eec  1057      djnz    #0f45           ; (87)
0eee  1057      djnz    #0f47           ; (87)
0ef0  1052      djnz    #0f44           ; (82)
0ef2  1057      djnz    #0f4b           ; (87)
0ef4  1057      djnz    #0f4d           ; (87)
0ef6  1047      djnz    #0f3f           ; (71)
0ef8  1052      djnz    #0f4c           ; (82)
0efa  1052      djnz    #0f4e           ; (82)
0efc  1050      djnz    #0f4e           ; (80)
0efe  1057      djnz    #0f57           ; (87)
0f00  1057      djnz    #0f59           ; (87)
0f02  1054      djnz    #0f58           ; (84)
0f04  1057      djnz    #0f5d           ; (87)
0f06  1057      djnz    #0f5f           ; (87)
0f08  1050      djnz    #0f5a           ; (80)
0f0a  1057      djnz    #0f63           ; (87)
0f0c  1057      djnz    #0f65           ; (87)
0f0e  1054      djnz    #0f64           ; (84)
0f10  1057      djnz    #0f69           ; (87)
0f12  1057      djnz    #0f6b           ; (87)
0f14  1050      djnz    #0f66           ; (80)
0f16  1057      djnz    #0f6f           ; (87)
0f18  1057      djnz    #0f71           ; (87)
0f1a  1054      djnz    #0f70           ; (84)
0f1c  1057      djnz    #0f75           ; (87)
0f1e  1057      djnz    #0f77           ; (87)
0f20  1052      djnz    #0f74           ; (82)
0f22  1055      djnz    #0f79           ; (85)
0f24  1059      djnz    #0f7f           ; (89)
0f26  1059      djnz    #0f81           ; (89)
0f28  1060      djnz    #0f8a           ; (96)
0f2a  1060      djnz    #0f8c           ; (96)
0f2c  1055      djnz    #0f83           ; (85)
0f2e  1060      djnz    #0f90           ; (96)
0f30  1060      djnz    #0f92           ; (96)
0f32  1059      djnz    #0f8d           ; (89)
0f34  1060      djnz    #0f96           ; (96)
0f36  1060      djnz    #0f98           ; (96)
0f38  1054      djnz    #0f8e           ; (84)
0f3a  1060      djnz    #0f9c           ; (96)
0f3c  1060      djnz    #0f9e           ; (96)
0f3e  1057      djnz    #0f97           ; (87)
0f40  1060      djnz    #0fa2           ; (96)
0f42  1060      djnz    #0fa4           ; (96)
0f44  1052      djnz    #0f98           ; (82)
0f46  1059      djnz    #0fa1           ; (89)
0f48  1059      djnz    #0fa3           ; (89)
0f4a  1055      djnz    #0fa1           ; (85)
0f4c  1059      djnz    #0fa7           ; (89)
0f4e  105b      djnz    #0fab           ; (91)
0f50  1054      djnz    #0fa6           ; (84)
0f52  1060      djnz    #0fb4           ; (96)
0f54  1060      djnz    #0fb6           ; (96)
0f56  1055      djnz    #0fad           ; (85)
0f58  1060      djnz    #0fba           ; (96)
0f5a  1060      djnz    #0fbc           ; (96)
0f5c  1059      djnz    #0fb7           ; (89)
0f5e  1060      djnz    #0fc0           ; (96)
0f60  1060      djnz    #0fc2           ; (96)
0f62  1057      djnz    #0fbb           ; (87)
0f64  1064      djnz    #0fca           ; (100)
0f66  1064      djnz    #0fcc           ; (100)
0f68  1057      djnz    #0fc1           ; (87)
0f6a  1062      djnz    #0fce           ; (98)
0f6c  1062      djnz    #0fd0           ; (98)
0f6e  1054      djnz    #0fc4           ; (84)
0f70  1060      djnz    #0fd2           ; (96)
0f72  1060      djnz    #0fd4           ; (96)
0f74  1057      djnz    #0fcd           ; (87)
0f76  1060      djnz    #0fd8           ; (96)
0f78  1060      djnz    #0fda           ; (96)
0f7a  1057      djnz    #0fd3           ; (87)
0f7c  1062      djnz    #0fe0           ; (98)
0f7e  1062      djnz    #0fe2           ; (98)
0f80  1054      djnz    #0fd6           ; (84)
0f82  1060      djnz    #0fe4           ; (96)
0f84  1060      djnz    #0fe6           ; (96)
0f86  1055      djnz    #0fdd           ; (85)
0f88  1060      djnz    #0fea           ; (96)
0f8a  1060      djnz    #0fec           ; (96)
0f8c  1059      djnz    #0fe7           ; (89)
0f8e  1060      djnz    #0ff0           ; (96)
0f90  1060      djnz    #0ff2           ; (96)
0f92  1057      djnz    #0feb           ; (87)
0f94  1060      djnz    #0ff6           ; (96)
0f96  1060      djnz    #0ff8           ; (96)
0f98  1057      djnz    #0ff1           ; (87)
0f9a  1062      djnz    #0ffe           ; (98)
0f9c  1062      djnz    #1000           ; (98)
0f9e  1054      djnz    #0ff4           ; (84)
0fa0  1060      djnz    #1002           ; (96)
0fa2  1060      djnz    #1004           ; (96)
0fa4  1057      djnz    #0ffd           ; (87)
0fa6  1060      djnz    #1008           ; (96)
0fa8  1060      djnz    #100a           ; (96)
0faa  1057      djnz    #1003           ; (87)
0fac  1064      djnz    #1012           ; (100)
0fae  1062      djnz    #1012           ; (98)
0fb0  1054      djnz    #1006           ; (84)
0fb2  1060      djnz    #1014           ; (96)
0fb4  1060      djnz    #1016           ; (96)
0fb6  1055      djnz    #100d           ; (85)
0fb8  1060      djnz    #101a           ; (96)
0fba  1060      djnz    #101c           ; (96)
0fbc  1059      djnz    #1017           ; (89)
0fbe  1060      djnz    #1020           ; (96)
0fc0  1060      djnz    #1022           ; (96)
0fc2  1054      djnz    #1018           ; (84)
0fc4  1060      djnz    #1026           ; (96)
0fc6  1060      djnz    #1028           ; (96)
0fc8  1057      djnz    #1021           ; (87)
0fca  1062      djnz    #102e           ; (98)
0fcc  1062      djnz    #1030           ; (98)
0fce  1054      djnz    #1024           ; (84)
0fd0  1060      djnz    #1032           ; (96)
0fd2  1060      djnz    #1034           ; (96)
0fd4  1057      djnz    #102d           ; (87)
0fd6  1060      djnz    #1038           ; (96)
0fd8  1060      djnz    #103a           ; (96)
0fda  1057      djnz    #1033           ; (87)
0fdc  1062      djnz    #1040           ; (98)
0fde  1062      djnz    #1042           ; (98)
0fe0  1057      djnz    #1039           ; (87)
0fe2  1060      djnz    #1044           ; (96)
0fe4  1060      djnz    #1046           ; (96)
0fe6  1055      djnz    #103d           ; (85)
0fe8  1060      djnz    #104a           ; (96)
0fea  1060      djnz    #104c           ; (96)
0fec  1059      djnz    #1047           ; (89)
0fee  1060      djnz    #1050           ; (96)
0ff0  1060      djnz    #1052           ; (96)
0ff2  1057      djnz    #104b           ; (87)
0ff4  1064      djnz    #105a           ; (100)
0ff6  1064      djnz    #105c           ; (100)
0ff8  1057      djnz    #1051           ; (87)
0ffa  1062      djnz    #105e           ; (98)
0ffc  1062      djnz    #1060           ; (98)
0ffe  1054      djnz    #1054           ; (84)
1000  1060      djnz    #1062           ; (96)
1002  1060      djnz    #1064           ; (96)
1004  1057      djnz    #105d           ; (87)
1006  1060      djnz    #1068           ; (96)
1008  1060      djnz    #106a           ; (96)
100a  1054      djnz    #1060           ; (84)
100c  1057      djnz    #1065           ; (87)
100e  1055      djnz    #1065           ; (85)
1010  1054      djnz    #1066           ; (84)
1012  40        ld      b,b
1013  ff        rst     #38
1014  09        add     hl,bc
1015  0a        ld      a,(bc)
1016  0b        dec     bc
1017  0c        inc     c
1018  0d        dec     c
1019  00        nop
101a  01ff02    ld      bc,#02ff
101d  03        inc     bc
101e  04        inc     b
101f  05        dec     b
1020  0607      ld      b,#07
1022  08        ex      af,af'
1023  00        nop
1024  010203    ld      bc,#0302
1027  04        inc     b
1028  05        dec     b
1029  06ff      ld      b,#ff
102b  07        rlca
102c  08        ex      af,af'
102d  09        add     hl,bc
102e  0a        ld      a,(bc)
102f  0b        dec     bc
1030  0c        inc     c
1031  0d        dec     c
1032  00        nop
1033  66        ld      h,(hl)
1034  e0        ret     po
 
1035  59        ld      e,c
1036  40        ld      b,b
1037  59        ld      e,c
1038  dd04      inc     b
103a  0608      ld      b,#08
103c  0c        inc     c
103d  1018      djnz    #1057           ; (24)
103f  2030      jr      nz,#1071        ; (48)
1041  40        ld      b,b
1042  49        ld      c,c
1043  47        ld      b,a
1044  4b        ld      c,e
1045  50        ld      d,b
1046  52        ld      d,d
1047  54        ld      d,h
1048  57        ld      d,a
1049  55        ld      d,l
104a  59        ld      e,c
104b  5b        ld      e,e
104c  62        ld      h,d
104d  60        ld      h,b
104e  65        ld      h,l
104f  64        ld      h,h
1050  67        ld      h,a
1051  40        ld      b,b
1052  3b        dec     sp
1053  42        ld      b,d
1054  44        ld      b,h
1055  45        ld      b,l
1056  47        ld      b,a
1057  4b        ld      c,e
1058  49        ld      c,c
1059  50        ld      d,b
105a  52        ld      d,d
105b  55        ld      d,l
105c  54        ld      d,h
105d  59        ld      e,c
105e  57        ld      d,a
105f  5b        ld      e,e
1060  00        nop
1061  aa        xor     d
1062  209f      jr      nz,#1003        ; (-97)
1064  2095      jr      nz,#0ffb        ; (-107)
1066  209f      jr      nz,#1007        ; (-97)
1068  2095      jr      nz,#0fff        ; (-107)
106a  dd00      nop
106c  aa        xor     d
106d  2095      jr      nz,#1004        ; (-107)
106f  209f      jr      nz,#1010        ; (-97)
1071  2095      jr      nz,#1008        ; (-107)
1073  209f      jr      nz,#1014        ; (-97)
1075  dd00      nop
1077  aa        xor     d
1078  e0        ret     po
 
1079  f6e0      or      #e0
107b  56        ld      d,(hl)
107c  e0        ret     po
 
107d  f6e0      or      #e0
107f  56        ld      d,(hl)
1080  015520    ld      bc,#2055
1083  7f        ld      a,a
1084  2055      jr      nz,#10db        ; (85)
1086  207f      jr      nz,#1107        ; (127)
1088  dd00      nop
108a  aa        xor     d
108b  e0        ret     po
 
108c  56        ld      d,(hl)
108d  e0        ret     po
 
108e  f6e0      or      #e0
1090  56        ld      d,(hl)
1091  e0        ret     po
 
1092  f601      or      #01
1094  7f        ld      a,a
1095  2055      jr      nz,#10ec        ; (85)
1097  207f      jr      nz,#1118        ; (127)
1099  2055      jr      nz,#10f0        ; (85)
109b  dd2a3501  ld      ix,(#0135)
109f  3a1902    ld      a,(#0219)
10a2  a7        and     a
10a3  c9        ret
 
10a4  cd9c10    call    #109c
10a7  c8        ret     z
 
10a8  23        inc     hl
10a9  223501    ld      (#0135),hl
10ac  c9        ret
 
10ad  cd9c10    call    #109c
10b0  c8        ret     z
 
10b1  3a1502    ld      a,(#0215)
10b4  a7        and     a
10b5  c8        ret     z
 
10b6  fe01      cp      #01
10b8  2a3e01    ld      hl,(#013e)
10bb  c8        ret     z
 
10bc  2a4701    ld      hl,(#0147)
10bf  c9        ret
 
10c0  cdad10    call    #10ad
10c3  3a1902    ld      a,(#0219)
10c6  a7        and     a
10c7  c9        ret
 
10c8  cdc010    call    #10c0
10cb  c8        ret     z
 
10cc  23        inc     hl
10cd  3a1502    ld      a,(#0215)
10d0  a7        and     a
10d1  c2d810    jp      nz,#10d8
10d4  223501    ld      (#0135),hl
10d7  c9        ret
 
10d8  fe01      cp      #01
10da  c2e110    jp      nz,#10e1
10dd  223e01    ld      (#013e),hl
10e0  c9        ret
 
10e1  224701    ld      (#0147),hl
10e4  c9        ret
 
10e5  3a1c02    ld      a,(#021c)
10e8  a7        and     a
10e9  78        ld      a,b
10ea  c9        ret
 
10eb  fe4b      cp      #4b
10ed  c33111    jp      #1131
10f0  fe44      cp      #44
10f2  c34211    jp      #1142
10f5  fe40      cp      #40
10f7  c35311    jp      #1153
10fa  fe47      cp      #47
10fc  c36d11    jp      #116d
10ff  fe55      cp      #55
1101  c38711    jp      #1187
1104  fe52      cp      #52
1106  c39811    jp      #1198
1109  fe59      cp      #59
110b  c3b611    jp      #11b6
110e  11c481    ld      de,#81c4
1111  d5        push    de
1112  cdc010    call    #10c0
1115  c21911    jp      nz,#1119
1118  2b        dec     hl
1119  a7        and     a
111a  ca2811    jp      z,#1128
111d  7e        ld      a,(hl)
111e  feff      cp      #ff
1120  caf812    jp      z,#12f8
1123  feee      cp      #ee
1125  caf812    jp      z,#12f8
1128  46        ld      b,(hl)
1129  cde510    call    #10e5
112c  c2eb10    jp      nz,#10eb
112f  fe57      cp      #57
1131  2140ff    ld      hl,#ff40
1134  cac511    jp      z,#11c5
1137  d27f11    jp      nc,#117f
113a  cde510    call    #10e5
113d  c2f010    jp      nz,#10f0
1140  fe50      cp      #50
1142  21c0ff    ld      hl,#ffc0
1145  cac511    jp      z,#11c5
1148  d26511    jp      nc,#1165
114b  cde510    call    #10e5
114e  c2f510    jp      nz,#10f5
1151  fe49      cp      #49
1153  210000    ld      hl,#0000
1156  cac511    jp      z,#11c5
1159  21e0ff    ld      hl,#ffe0
115c  d2c511    jp      nc,#11c5
115f  212000    ld      hl,#0020
1162  c3c511    jp      #11c5
1165  cde510    call    #10e5
1168  c2fa10    jp      nz,#10fa
116b  fe54      cp      #54
116d  2180ff    ld      hl,#ff80
1170  cac511    jp      z,#11c5
1173  21a0ff    ld      hl,#ffa0
1176  dac511    jp      c,#11c5
1179  2160ff    ld      hl,#ff60
117c  c3c511    jp      #11c5
117f  cde510    call    #10e5
1182  c2ff10    jp      nz,#10ff
1185  fe62      cp      #62
1187  21c0fe    ld      hl,#fec0
118a  cac511    jp      z,#11c5
118d  d2ae11    jp      nc,#11ae
1190  cde510    call    #10e5
1193  c20411    jp      nz,#1104
1196  fe5b      cp      #5b
1198  2100ff    ld      hl,#ff00
119b  cac511    jp      z,#11c5
119e  2120ff    ld      hl,#ff20
11a1  dac511    jp      c,#11c5
11a4  21e0fe    ld      hl,#fee0
11a7  c3c511    jp      #11c5
11aa  e1        pop     hl
11ab  c38112    jp      #1281
11ae  cde510    call    #10e5
11b1  c20911    jp      nz,#1109
11b4  fe65      cp      #65
11b6  2180fe    ld      hl,#fe80
11b9  cac511    jp      z,#11c5
11bc  21a0fe    ld      hl,#fea0
11bf  dac511    jp      c,#11c5
11c2  2160fe    ld      hl,#fe60
11c5  19        add     hl,de
11c6  7c        ld      a,h
11c7  0f        rrca
11c8  da2612    jp      c,#1226
11cb  7d        ld      a,l
11cc  fec0      cp      #c0
11ce  d22612    jp      nc,#1226
11d1  e5        push    hl
11d2  cdc810    call    #10c8
11d5  7e        ld      a,(hl)
11d6  fe35      cp      #35
11d8  d2aa11    jp      nc,#11aa
11db  e1        pop     hl
11dc  e5        push    hl
11dd  110113    ld      de,#1301
11e0  cd0009    call    #0900
11e3  cdad10    call    #10ad
11e6  7e        ld      a,(hl)
11e7  e1        pop     hl
11e8  fe23      cp      #23
11ea  114213    ld      de,#1342
11ed  d28412    jp      nc,#1284
11f0  fe1a      cp      #1a
11f2  114413    ld      de,#1344
11f5  d28412    jp      nc,#1284
11f8  fe12      cp      #12
11fa  114513    ld      de,#1345
11fd  d28412    jp      nc,#1284
1200  fe0e      cp      #0e
1202  114a13    ld      de,#134a
1205  d28412    jp      nc,#1284
1208  fe0a      cp      #0a
120a  114f13    ld      de,#134f
120d  d28412    jp      nc,#1284
1210  fe07      cp      #07
1212  115613    ld      de,#1356
1215  d28412    jp      nc,#1284
1218  fe05      cp      #05
121a  115b13    ld      de,#135b
121d  d28412    jp      nc,#1284
1220  116213    ld      de,#1362
1223  c38412    jp      #1284
1226  e5        push    hl
1227  cdc810    call    #10c8
122a  7e        ld      a,(hl)
122b  fe35      cp      #35
122d  d2aa11    jp      nc,#11aa
1230  e1        pop     hl
1231  e5        push    hl
1232  110c13    ld      de,#130c
1235  cd0009    call    #0900
1238  cdad10    call    #10ad
123b  7e        ld      a,(hl)
123c  e1        pop     hl
123d  fe23      cp      #23
123f  111713    ld      de,#1317
1242  d28412    jp      nc,#1284
1245  fe1d      cp      #1d
1247  111913    ld      de,#1319
124a  d28412    jp      nc,#1284
124d  fe12      cp      #12
124f  111a13    ld      de,#131a
1252  d28412    jp      nc,#1284
1255  fe0d      cp      #0d
1257  111f13    ld      de,#131f
125a  d28412    jp      nc,#1284
125d  fe0a      cp      #0a
125f  112213    ld      de,#1322
1262  d28412    jp      nc,#1284
1265  fe07      cp      #07
1267  112913    ld      de,#1329
126a  d28412    jp      nc,#1284
126d  fe05      cp      #05
126f  112e13    ld      de,#132e
1272  d28412    jp      nc,#1284
1275  113913    ld      de,#1339
1278  c38412    jp      #1284
127b  cdc810    call    #10c8
127e  c3b512    jp      #12b5
1281  11fa12    ld      de,#12fa
1284  cd0009    call    #0900
1287  3a1902    ld      a,(#0219)
128a  a7        and     a
128b  c27b12    jp      nz,#127b
128e  d5        push    de
128f  cd27c0    call    #c027 ; SKEY?: Procura status do teclado para jogo.
1292  d1        pop     de
1293  3a1b01    ld      a,(#011b)
1296  fe43      cp      #43
1298  caf812    jp      z,#12f8
129b  fe08      cp      #08
129d  caf812    jp      z,#12f8
12a0  3a3901    ld      a,(#0139)
12a3  0f        rrca
12a4  d2f812    jp      nc,#12f8
12a7  3a3c01    ld      a,(#013c)
12aa  fe01      cp      #01
12ac  c2a712    jp      nz,#12a7
12af  013000    ld      bc,#0030 ; 48ms
12b2  cd48c0    call    #c048 ; DELAYB
12b5  d1        pop     de
12b6  13        inc     de
12b7  13        inc     de
12b8  7b        ld      a,e
12b9  fee0      cp      #e0
12bb  c21111    jp      nz,#1111
12be  7a        ld      a,d
12bf  c602      add     a,#02
12c1  57        ld      d,a
12c2  7b        ld      a,e
12c3  d61c      sub     #1c
12c5  5f        ld      e,a
12c6  7a        ld      a,d
12c7  fe88      cp      #88
12c9  da1111    jp      c,#1111
12cc  3a1902    ld      a,(#0219)
12cf  a7        and     a
12d0  c0        ret     nz
 
12d1  210082    ld      hl,#8200
12d4  110080    ld      de,#8000
12d7  7e        ld      a,(hl)
12d8  eb        ex      de,hl
12d9  77        ld      (hl),a
12da  eb        ex      de,hl
12db  23        inc     hl
12dc  13        inc     de
12dd  7c        ld      a,h
12de  fe88      cp      #88
12e0  dad712    jp      c,#12d7
12e3  210086    ld      hl,#8600
12e6  3655      ld      (hl),#55
12e8  23        inc     hl
12e9  7c        ld      a,h
12ea  fe88      cp      #88
12ec  dae612    jp      c,#12e6
12ef  cd300d    call    #0d30
12f2  11c487    ld      de,#87c4
12f5  c31111    jp      #1111
12f8  d1        pop     de
12f9  c9        ret
 
12fa  2059      jr      nz,#1355        ; (89)
12fc  e0        ret     po
 
12fd  66        ld      h,(hl)
12fe  e0        ret     po
 
12ff  59        ld      e,c
1300  dd00      nop
1302  aa        xor     d
1303  2095      jr      nz,#129a        ; (-107)
1305  2095      jr      nz,#129c        ; (-107)
1307  2095      jr      nz,#129e        ; (-107)
1309  2095      jr      nz,#12a0        ; (-107)
130b  dd00      nop
130d  aa        xor     d
130e  e0        ret     po
 
130f  56        ld      d,(hl)
1310  e0        ret     po
 
1311  56        ld      d,(hl)
1312  e0        ret     po
 
1313  56        ld      d,(hl)
1314  e0        ret     po
 
1315  56        ld      d,(hl)
1316  dd0165dd  ld      bc,#dd65
131a  016580    ld      bc,#8065
131d  a5        and     l
131e  dd81      add     a,c
1320  a5        and     l
1321  dd0165a0  ld      bc,#a065
1325  65        ld      h,l
1326  e0        ret     po
 
1327  95        sub     l
1328  dda1      and     c
132a  65        ld      h,l
132b  e0        ret     po
 
132c  95        sub     l
132d  dd0165e0  ld      bc,#e065
1331  55        ld      d,l
1332  e0        ret     po
 
1333  a5        and     l
1334  e0        ret     po
 
1335  55        ld      d,l
1336  e0        ret     po
 
1337  a5        and     l
1338  dde1      pop     ix
133a  55        ld      d,l
133b  e0        ret     po
 
133c  a5        and     l
133d  e0        ret     po
 
133e  55        ld      d,l
133f  e0        ret     po
 
1340  a5        and     l
1341  dd0165dd  ld      bc,#dd65
1345  01657f    ld      bc,#7f65
1348  a5        and     l
1349  dd40      ld      b,b
134b  95        sub     l
134c  40        ld      b,b
134d  a5        and     l
134e  dd01655f  ld      bc,#5f65
1352  99        sbc     a,c
1353  20a5      jr      nz,#12fa        ; (-91)
1355  dd60      ld      ixh,b
1357  99        sbc     a,c
1358  20a5      jr      nz,#12ff        ; (-91)
135a  dd01653f  ld      bc,#3f65
135e  a5        and     l
135f  40        ld      b,b
1360  a5        and     l
1361  dd40      ld      b,b
1363  a5        and     l
1364  40        ld      b,b
1365  a5        and     l
1366  ddff      rst     #38
1368  ff        rst     #38
1369  ff        rst     #38
136a  ff        rst     #38
136b  ff        rst     #38
136c  ff        rst     #38
136d  ff        rst     #38
136e  ff        rst     #38
136f  ff        rst     #38