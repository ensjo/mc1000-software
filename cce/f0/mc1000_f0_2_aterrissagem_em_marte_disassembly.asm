; Disassembly of the file "D:\Emerson\mc-1000\aplicativos cassete\ATERMART.BIN"
;
; Created with dZ80 v1.31
;
; on Wednesday, 18 of April 2007 at 04:30 PM
;
; Variáveis do sistema (#0100-#01ff).
0100  ffffffff  db      #ff,#ff,#ff,#ff
; PLAY:
0104  01        db      #01
; PLAYMX:
0105  03        db      #03
; HEAD:
0106  00        db      #00
; RANDOM:
0107  ba36      dw      #36ba
; RCRDPT:
0109  45        db      #45
;
010a  50        db      #50
; RECORD:
010b  4d36340d  db      #4d,#36,#34,#0d
010f  0a0dffff  db      #0a,#0d,#ff,#ff
0113  ffffffff  db      #ff,#ff,#ff,#ff
0117  ffffffff  db      #ff,#ff,#ff,#ff
; KEY0:
011b  ffffffff  db      #ff,#ff,#ff,#ff
011f  ff        db      #ff
; JOB:
0120  c3430b    jp      #0b43
; SCOREA:
0123  00        db      #00
; SCOREB:
0124  00        db      #00
; SHAPE0:
0125  ff        db      #ff
;
0126  ffff      db      #ff,#ff
0128  ffffffff  db      #ff,#ff,#ff,#ff
012c  ffffffff  db      #ff,#ff,#ff,#ff
; JOBM:
0130  c9        ret
0131  ffff      db      #ff,#ff
;
0133  ffff      db      #ff,#ff
0135  ffffffff  db      #ff,#ff,#ff,#ff
; AVALUE:
0139  00        db      #00
;
013a  ffff      db      #ff,#ff
013c  ffffffff  db      #ff,#ff,#ff,#ff
0140  ffff      db      #ff,#ff
; BVALUE:
0142  00        db      #00
;
0143  ffff      db      #ff,#ff
0145  ffffffff  db      #ff,#ff,#ff,#ff
0149  ffff      db      #ff,#ff
; CVALUE:
014b  00        db      #00
;
014c  ffffffff  db      #ff,#ff,#ff,#ff
0150  ffffffff  db      #ff,#ff,#ff,#ff
0154  ffffffff  db      #ff,#ff,#ff,#ff
0158  ffffffff  db      #ff,#ff,#ff,#ff
015c  ffff      db      #ff,#ff
; CHECK:
015e  00        db      #00
;
015f  ff        db      #ff
0160  ffffffff  db      #ff,#ff,#ff,#ff
0164  ffffffff  db      #ff,#ff,#ff,#ff
0168  ffffffff  db      #ff,#ff,#ff,#ff
016c  ffffffff  db      #ff,#ff,#ff,#ff
0170  ffffffff  db      #ff,#ff,#ff,#ff
0174  ffffffff  db      #ff,#ff,#ff,#ff
0178  ffffffff  db      #ff,#ff,#ff,#ff
017c  ffffffff  db      #ff,#ff,#ff,#ff
0180  ffffffff  db      #ff,#ff,#ff,#ff
0184  ffffffff  db      #ff,#ff,#ff,#ff
0188  ff000e40  db      #ff,#00,#0e,#40
018c  09400500  db      #09,#40,#05,#00
0190  0000ffff  db      #00,#00,#ff,#ff
0194  01000940  db      #01,#00,#09,#40
0198  0e400000  db      #0e,#40,#00,#00
019c  a936ffff  db      #a9,#36,#ff,#ff
01a0  ff0e40ff  db      #ff,#0e,#40,#ff
01a4  ffaf3609  db      #ff,#af,#36,#09
01a8  400400ff  db      #40,#04,#00,#ff
01ac  ffffffff  db      #ff,#ff,#ff,#ff
01b0  ffffffff  db      #ff,#ff,#ff,#ff
01b4  34ffffff  db      #34,#ff,#ff,#ff
01b8  ffffffff  db      #ff,#ff,#ff,#ff
01bc  ff094000  db      #ff,#09,#40,#00
01c0  00010092  db      #00,#01,#00,#92
01c4  40904001  db      #40,#90,#40,#01
01c8  00094005  db      #00,#09,#40,#05
01cc  008e4090  db      #00,#8e,#40,#90
01d0  40010090  db      #40,#01,#00,#90
01d4  400000ae  db      #40,#00,#00,#ae
01d8  36010090  db      #36,#01,#00,#09
01dc  40ffffff  db      #40,#ff,#ff,#ff
01e0  ffffffff  db      #ff,#ff,#ff,#ff
01e4  ffffffff  db      #ff,#ff,#ff,#ff
01e8  ffffffff  db      #ff,#ff,#ff,#ff
01ec  ffffffff  db      #ff,#ff,#ff,#ff
01f0  ffffffff  db      #ff,#ff,#ff,#ff
01f4  ffffffff  db      #ff,#ff,#ff,#ff
01f8  ffffffff  db      #ff,#ff,#ff,#ff
01fc  ffffffff  db      #ff,#ff,#ff,#ff
 
; Pontos de entrada dos tópicos de jogo.
0200  c3b207    jp      #07b2 ; Tópico 1 (1 jogador).
0203  c3a407    jp      #07a4 ; Tópico 2 (2 jogadores).
0206  c3640d    jp      #0d64 ; Tópico 3 (placar).
 
0209  c36e05    jp      #056e
020c  c3b107    jp      #07b1
020f  c3b907    jp      #07b9
0212  c3bd07    jp      #07bd
0215  c37405    jp      #0574
0218  c37905    jp      #0579
021b  c37e05    jp      #057e
021e  c3c207    jp      #07c2
0221  c3c707    jp      #07c7
0224  c3cc07    jp      #07cc
0227  c3d50b    jp      #0bd5
022a  c3da0b    jp      #0bda
022d  c3e20b    jp      #0be2
0230  c3ea0b    jp      #0bea
0233  ff        rst     #38
0234  86        add     a,(hl)
0235  0b        dec     bc
0236  c3fa01    jp      #01fa
0239  00        nop
023a  00        nop
023b  00        nop
023c  00        nop
; Indica se interrupção já está configurada.
023d  00        db      #00
;
023e  0c        inc     c
023f  c33b0c    jp      #0c3b
0242  c3020c    jp      #0c02
0245  c3070c    jp      #0c07
0248  c30021    jp      #2100
024b  00        nop
024c  32c1ff    ld      (#ffc1),a
024f  18fc      jr      #024d           ; (-4)
0251  d5        push    de
0252  eb        ex      de,hl
0253  78        ld      a,b
0254  f5        push    af
0255  112000    ld      de,#0020
0258  3a0902    ld      a,(#0209)
025b  77        ld      (hl),a
025c  19        add     hl,de
025d  05        dec     b
025e  c25b02    jp      nz,#025b
0261  f1        pop     af
0262  d1        pop     de
0263  13        inc     de
0264  47        ld      b,a
0265  0d        dec     c
0266  c25102    jp      nz,#0251
0269  c9        ret
 
026a  e5        push    hl
026b  d5        push    de
026c  c5        push    bc
026d  1a        ld      a,(de)
026e  feff      cp      #ff
0270  ca8702    jp      z,#0287
0273  4f        ld      c,a
0274  07        rlca
0275  da8202    jp      c,#0282
0278  0600      ld      b,#00
027a  09        add     hl,bc
027b  13        inc     de
027c  1a        ld      a,(de)
027d  77        ld      (hl),a
027e  13        inc     de
027f  c36d02    jp      #026d
0282  06ff      ld      b,#ff
0284  c37a02    jp      #027a
0287  c1        pop     bc
0288  d1        pop     de
0289  e1        pop     hl
028a  c9        ret
 
028b  e5        push    hl
028c  d5        push    de
028d  c5        push    bc
028e  af        xor     a
028f  320a02    ld      (#020a),a
0292  1a        ld      a,(de)
0293  feff      cp      #ff
0295  caba02    jp      z,#02ba
0298  4f        ld      c,a
0299  07        rlca
029a  dab502    jp      c,#02b5
029d  0600      ld      b,#00
029f  09        add     hl,bc
02a0  13        inc     de
02a1  1a        ld      a,(de)
02a2  be        cp      (hl)
02a3  caad02    jp      z,#02ad
02a6  3a0a02    ld      a,(#020a)
02a9  3c        inc     a
02aa  320a02    ld      (#020a),a
02ad  3a4902    ld      a,(#0249)
02b0  77        ld      (hl),a
02b1  13        inc     de
02b2  c39202    jp      #0292
02b5  06ff      ld      b,#ff
02b7  c39f02    jp      #029f
02ba  c1        pop     bc
02bb  d1        pop     de
02bc  e1        pop     hl
02bd  c9        ret
 
02be  00        nop
02bf  20e0      jr      nz,#02a1        ; (-32)
02c1  28e0      jr      z,#02a3         ; (-32)
02c3  0a        ld      a,(bc)
02c4  c0        ret     nz
 
02c5  0a        ld      a,(bc)
02c6  e0        ret     po
 
02c7  02        ld      (bc),a
02c8  e1        pop     hl
02c9  2a20aa    ld      hl,(#aa20)
02cc  2080      jr      nz,#024e        ; (-128)
02ce  20aa      jr      nz,#027a        ; (-86)
02d0  200a      jr      nz,#02dc        ; (10)
02d2  20aa      jr      nz,#027e        ; (-86)
02d4  202a      jr      nz,#0300        ; (42)
02d6  0180e0    ld      bc,#e080
02d9  a2        and     d
02da  e0        ret     po
 
02db  0a        ld      a,(bc)
02dc  e0        ret     po
 
02dd  a0        and     b
02de  e0        ret     po
 
02df  2ae0a8    ld      hl,(#a8e0)
02e2  e0        ret     po
 
02e3  80        add     a,b
02e4  61        ld      h,c
02e5  00        nop
02e6  40        ld      b,b
02e7  80        add     a,b
02e8  2080      jr      nz,#026a        ; (-128)
02ea  ff        rst     #38
02eb  00        nop
02ec  08        ex      af,af''
02ed  e0        ret     po
 
02ee  0a        ld      a,(bc)
02ef  e0        ret     po
 
02f0  02        ld      (bc),a
02f1  c0        ret     nz
 
02f2  02        ld      (bc),a
02f3  c1        pop     bc
02f4  0a        ld      a,(bc)
02f5  20aa      jr      nz,#02a1        ; (-86)
02f7  20a0      jr      nz,#0299        ; (-96)
02f9  202a      jr      nz,#0325        ; (42)
02fb  2082      jr      nz,#027f        ; (-126)
02fd  202a      jr      nz,#0329        ; (42)
02ff  200a      jr      nz,#030b        ; (10)
0301  01a0e0    ld      bc,#e0a0
0304  a8        xor     b
0305  e0        ret     po
 
0306  82        add     a,d
0307  e0        ret     po
 
0308  a8        xor     b
0309  e0        ret     po
 
030a  0a        ld      a,(bc)
030b  e0        ret     po
 
030c  aa        xor     d
030d  e0        ret     po
 
030e  a0        and     b
030f  41        ld      b,c
0310  80        add     a,b
0311  40        ld      b,b
0312  80        add     a,b
0313  20a0      jr      nz,#02b5        ; (-96)
0315  2020      jr      nz,#0337        ; (32)
0317  ff        rst     #38
0318  00        nop
0319  02        ld      (bc),a
031a  e0        ret     po
 
031b  02        ld      (bc),a
031c  2102e0    ld      hl,#e002
031f  8a        adc     a,d
0320  e0        ret     po
 
0321  a0        and     b
0322  e0        ret     po
 
0323  0a        ld      a,(bc)
0324  e0        ret     po
 
0325  a8        xor     b
0326  e0        ret     po
 
0327  2ae002    ld      hl,(#02e0)
032a  01a820    ld      bc,#20a8
032d  aa        xor     d
032e  2002      jr      nz,#0332        ; (2)
0330  20aa      jr      nz,#02dc        ; (-86)
0332  20a0      jr      nz,#02d4        ; (-96)
0334  20aa      jr      nz,#02e0        ; (-86)
0336  20a8      jr      nz,#02e0        ; (-88)
0338  0108e0    ld      bc,#e008
033b  28e0      jr      z,#031d         ; (-32)
033d  a0        and     b
033e  c0        ret     nz
 
033f  a0        and     b
0340  e0        ret     po
 
0341  80        add     a,b
0342  ff        rst     #38
0343  00        nop
0344  80        add     a,b
0345  e0        ret     po
 
0346  a2        and     d
0347  e0        ret     po
 
0348  28e0      jr      z,#032a         ; (-32)
034a  02        ld      (bc),a
034b  e0        ret     po
 
034c  2ae00a    ld      hl,(#0ae0)
034f  e1        pop     hl
0350  aa        xor     d
0351  20aa      jr      nz,#02fd        ; (-86)
0353  40        ld      b,b
0354  aa        xor     d
0355  2028      jr      nz,#037f        ; (40)
0357  20aa      jr      nz,#0303        ; (-86)
0359  20aa      jr      nz,#0305        ; (-86)
035b  0102e0    ld      bc,#e002
035e  8a        adc     a,d
035f  e0        ret     po
 
0360  28e0      jr      z,#0342         ; (-32)
0362  80        add     a,b
0363  e0        ret     po
 
0364  a8        xor     b
0365  e0        ret     po
 
0366  a0        and     b
0367  ff        rst     #38
0368  00        nop
0369  02        ld      (bc),a
036a  200a      jr      nz,#0376        ; (10)
036c  2020      jr      nz,#038e        ; (32)
036e  200a      jr      nz,#037a        ; (10)
0370  20a2      jr      nz,#0314        ; (-94)
0372  208a      jr      nz,#02fe        ; (-118)
0374  0188e0    ld      bc,#e088
0377  28e0      jr      z,#0359         ; (-32)
0379  80        add     a,b
037a  e0        ret     po
 
037b  20e0      jr      nz,#035d        ; (-32)
037d  80        add     a,b
037e  ff        rst     #38
037f  00        nop
0380  aa        xor     d
0381  20aa      jr      nz,#032d        ; (-86)
0383  20aa      jr      nz,#032f        ; (-86)
0385  20aa      jr      nz,#0331        ; (-86)
0387  df        rst     #18
0388  aa        xor     d
0389  20aa      jr      nz,#0335        ; (-86)
038b  20aa      jr      nz,#0337        ; (-86)
038d  20aa      jr      nz,#0339        ; (-86)
038f  df        rst     #18
0390  0a        ld      a,(bc)
0391  200a      jr      nz,#039d        ; (10)
0393  60        ld      h,b
0394  0a        ld      a,(bc)
0395  200a      jr      nz,#03a1        ; (10)
0397  20aa      jr      nz,#0343        ; (-86)
0399  20aa      jr      nz,#0345        ; (-86)
039b  20a0      jr      nz,#033d        ; (-96)
039d  20a0      jr      nz,#033f        ; (-96)
039f  c1        pop     bc
03a0  0a        ld      a,(bc)
03a1  e0        ret     po
 
03a2  0a        ld      a,(bc)
03a3  e0        ret     po
 
03a4  a0        and     b
03a5  e0        ret     po
 
03a6  a0        and     b
03a7  e0        ret     po
 
03a8  0a        ld      a,(bc)
03a9  e0        ret     po
 
03aa  0a        ld      a,(bc)
03ab  c1        pop     bc
03ac  00        nop
03ad  40        ld      b,b
03ae  aa        xor     d
03af  20aa      jr      nz,#035b        ; (-86)
03b1  200a      jr      nz,#03bd        ; (10)
03b3  200a      jr      nz,#03bf        ; (10)
03b5  20aa      jr      nz,#0361        ; (-86)
03b7  20aa      jr      nz,#0363        ; (-86)
03b9  20aa      jr      nz,#0365        ; (-86)
03bb  20aa      jr      nz,#0367        ; (-86)
03bd  01aae0    ld      bc,#e0aa
03c0  aa        xor     d
03c1  e0        ret     po
 
03c2  aa        xor     d
03c3  e0        ret     po
 
03c4  aa        xor     d
03c5  e0        ret     po
 
03c6  a0        and     b
03c7  e0        ret     po
 
03c8  a0        and     b
03c9  e0        ret     po
 
03ca  aa        xor     d
03cb  e0        ret     po
 
03cc  aa        xor     d
03cd  a0        and     b
03ce  aa        xor     d
03cf  e0        ret     po
 
03d0  aa        xor     d
03d1  e0        ret     po
 
03d2  aa        xor     d
03d3  e0        ret     po
 
03d4  aa        xor     d
03d5  41        ld      b,c
03d6  aa        xor     d
03d7  20aa      jr      nz,#0383        ; (-86)
03d9  20aa      jr      nz,#0385        ; (-86)
03db  20aa      jr      nz,#0387        ; (-86)
03dd  20a0      jr      nz,#037f        ; (-96)
03df  20a0      jr      nz,#0381        ; (-96)
03e1  200a      jr      nz,#03ed        ; (10)
03e3  200a      jr      nz,#03ef        ; (10)
03e5  20a0      jr      nz,#0387        ; (-96)
03e7  20a0      jr      nz,#0389        ; (-96)
03e9  41        ld      b,c
03ea  0a        ld      a,(bc)
03eb  e0        ret     po
 
03ec  0a        ld      a,(bc)
03ed  e0        ret     po
 
03ee  aa        xor     d
03ef  e0        ret     po
 
03f0  aa        xor     d
03f1  e0        ret     po
 
03f2  a0        and     b
03f3  e0        ret     po
 
03f4  a0        and     b
03f5  a0        and     b
03f6  a0        and     b
03f7  e0        ret     po
 
03f8  a0        and     b
03f9  ff        rst     #38
03fa  00        nop
03fb  80        add     a,b
03fc  218042    ld      hl,#4280
03ff  80        add     a,b
0400  63        ld      h,e
0401  80        add     a,b
0402  84        add     a,h
0403  80        add     a,b
0404  a5        and     l
0405  80        add     a,b
0406  c680      add     a,#80
0408  e7        rst     #20
0409  80        add     a,b
040a  08        ex      af,af'
040b  81        add     a,c
040c  09        add     hl,bc
040d  82        add     a,d
040e  4a        ld      c,d
040f  82        add     a,d
0410  8b        adc     a,e
0411  82        add     a,d
0412  4c        ld      c,h
0413  83        add     a,e
0414  8d        adc     a,l
0415  83        add     a,e
0416  ce83      adc     a,#83
0418  0f        rrca
0419  84        add     a,h
041a  50        ld      d,b
041b  83        add     a,e
041c  d0        ret     nc
 
041d  83        add     a,e
041e  50        ld      d,b
041f  84        add     a,h
0420  d0        ret     nc
 
0421  84        add     a,h
0422  50        ld      d,b
0423  85        add     a,l
0424  d0        ret     nc
 
0425  85        add     a,l
0426  1186f5    ld      de,#f586
0429  c5        push    bc
042a  d5        push    de
042b  e5        push    hl
042c  210386    ld      hl,#8603
042f  3e05      ld      a,#05
0431  cd4904    call    #0449
0434  210d83    ld      hl,#830d
0437  3e08      ld      a,#08
0439  cd4904    call    #0449
043c  21d585    ld      hl,#85d5
043f  3e05      ld      a,#05
0441  cd4904    call    #0449
0444  e1        pop     hl
0445  d1        pop     de
0446  c1        pop     bc
0447  f1        pop     af
0448  c9        ret
 
0449  01e0ff    ld      bc,#ffe0
044c  e5        push    hl
044d  2a4a02    ld      hl,(#024a)
0450  eb        ex      de,hl
0451  e1        pop     hl
0452  36bb      ld      (hl),#bb
0454  09        add     hl,bc
0455  36ee      ld      (hl),#ee
0457  3d        dec     a
0458  c8        ret     z
 
0459  19        add     hl,de
045a  c35204    jp      #0452
045d  00        nop
045e  40        ld      b,b
045f  010001    ld      bc,#0100
0462  00        nop
0463  1d        dec     e
0464  00        nop
0465  014001    ld      bc,#0140
0468  00        nop
0469  01001d    ld      bc,#1d00
046c  00        nop
046d  015001    ld      bc,#0150
0470  00        nop
0471  01001d    ld      bc,#1d00
0474  010150    ld      bc,#5001
0477  010001    ld      bc,#0100
047a  00        nop
047b  1d        dec     e
047c  05        dec     b
047d  015401    ld      bc,#0154
0480  00        nop
0481  01001d    ld      bc,#1d00
0484  15        dec     d
0485  02        ld      (bc),a
0486  00        nop
0487  01001d    ld      bc,#1d00
048a  05        dec     b
048b  02        ld      (bc),a
048c  40        ld      b,b
048d  01001d    ld      bc,#1d00
0490  05        dec     b
0491  02        ld      (bc),a
0492  50        ld      d,b
0493  01001d    ld      bc,#1d00
0496  05        dec     b
0497  03        inc     bc
0498  00        nop
0499  1d        dec     e
049a  15        dec     d
049b  03        inc     bc
049c  50        ld      d,b
049d  1d        dec     e
049e  05        dec     b
049f  04        inc     b
04a0  50        ld      d,b
04a1  010006    ld      bc,#0600
04a4  00        nop
04a5  010001    ld      bc,#0100
04a8  00        nop
04a9  010008    ld      bc,#0800
04ac  00        nop
04ad  010008    ld      bc,#0800
04b0  00        nop
04b1  010505    ld      bc,#0505
04b4  00        nop
04b5  0600      ld      b,#00
04b7  010001    ld      bc,#0100
04ba  00        nop
04bb  010008    ld      bc,#0800
04be  00        nop
04bf  010008    ld      bc,#0800
04c2  00        nop
04c3  011505    ld      bc,#0515
04c6  50        ld      d,b
04c7  0600      ld      b,#00
04c9  010001    ld      bc,#0100
04cc  00        nop
04cd  09        add     hl,bc
04ce  00        nop
04cf  010008    ld      bc,#0800
04d2  00        nop
04d3  010505    ld      bc,#0505
04d6  54        ld      d,h
04d7  0600      ld      b,#00
04d9  010001    ld      bc,#0100
04dc  05        dec     b
04dd  09        add     hl,bc
04de  50        ld      d,b
04df  010008    ld      bc,#0800
04e2  00        nop
04e3  010505    ld      bc,#0505
04e6  54        ld      d,h
04e7  0600      ld      b,#00
04e9  01050b    ld      bc,#0b05
04ec  00        nop
04ed  08        ex      af,af'
04ee  00        nop
04ef  01150b    ld      bc,#0b15
04f2  00        nop
04f3  0c        inc     c
04f4  50        ld      d,b
04f5  08        ex      af,af'
04f6  00        nop
04f7  011506    ld      bc,#0615
04fa  50        ld      d,b
04fb  0600      ld      b,#00
04fd  0c        inc     c
04fe  50        ld      d,b
04ff  08        ex      af,af'
0500  05        dec     b
0501  0654      ld      b,#54
0503  0605      ld      b,#05
0505  0c        inc     c
0506  54        ld      d,h
0507  08        ex      af,af'
0508  15        dec     d
0509  0650      ld      b,#50
050b  12        ld      (de),a
050c  50        ld      d,b
050d  08        ex      af,af'
050e  05        dec     b
050f  0650      ld      b,#50
0511  04        inc     b
0512  00        nop
0513  01010d    ld      bc,#0d01
0516  50        ld      d,b
0517  08        ex      af,af'
0518  05        dec     b
0519  0654      ld      b,#54
051b  04        inc     b
051c  00        nop
051d  01000d    ld      bc,#0d00
0520  54        ld      d,h
0521  08        ex      af,af'
0522  05        dec     b
0523  0650      ld      b,#50
0525  04        inc     b
0526  00        nop
0527  01000d    ld      bc,#0d00
052a  50        ld      d,b
052b  08        ex      af,af'
052c  15        dec     d
052d  0650      ld      b,#50
052f  04        inc     b
0530  00        nop
0531  01010d    ld      bc,#0d01
0534  50        ld      d,b
0535  08        ex      af,af'
0536  05        dec     b
0537  05        dec     b
0538  54        ld      d,h
0539  010004    ld      bc,#0400
053c  00        nop
053d  01050d    ld      bc,#0d05
0540  00        nop
0541  08        ex      af,af'
0542  05        dec     b
0543  05        dec     b
0544  40        ld      b,b
0545  010004    ld      bc,#0400
0548  00        nop
0549  0d        dec     c
054a  50        ld      d,b
054b  01000c    ld      bc,#0c00
054e  54        ld      d,h
054f  010001    ld      bc,#0100
0552  00        nop
0553  04        inc     b
0554  00        nop
0555  13        inc     de
0556  00        nop
0557  010001    ld      bc,#0100
055a  05        dec     b
055b  05        dec     b
055c  40        ld      b,b
055d  010001    ld      bc,#0100
0560  00        nop
0561  04        inc     b
0562  010c50    ld      bc,#500c
0565  07        rlca
0566  00        nop
0567  010001    ld      bc,#0100
056a  05        dec     b
056b  05        dec     b
056c  40        ld      b,b
056d  010001    ld      bc,#0100
0570  00        nop
0571  04        inc     b
0572  00        nop
0573  0c        inc     c
0574  00        nop
0575  07        rlca
0576  00        nop
0577  010001    ld      bc,#0100
057a  05        dec     b
057b  05        dec     b
057c  50        ld      d,b
057d  010001    ld      bc,#0100
0580  00        nop
0581  04        inc     b
0582  00        nop
0583  0c        inc     c
0584  00        nop
0585  07        rlca
0586  00        nop
0587  010006    ld      bc,#0600
058a  40        ld      b,b
058b  010001    ld      bc,#0100
058e  00        nop
058f  04        inc     b
0590  15        dec     d
0591  0c        inc     c
0592  40        ld      b,b
0593  07        rlca
0594  00        nop
0595  010506    ld      bc,#0605
0598  40        ld      b,b
0599  010001    ld      bc,#0100
059c  00        nop
059d  04        inc     b
059e  55        ld      d,l
059f  0c        inc     c
05a0  00        nop
05a1  07        rlca
05a2  05        dec     b
05a3  07        rlca
05a4  50        ld      d,b
05a5  010001    ld      bc,#0100
05a8  00        nop
05a9  03        inc     bc
05aa  05        dec     b
05ab  0d        dec     c
05ac  00        nop
05ad  0655      ld      b,#55
05af  08        ex      af,af'
05b0  00        nop
05b1  010001    ld      bc,#0100
05b4  00        nop
05b5  03        inc     bc
05b6  05        dec     b
05b7  01551a    ld      bc,#1a55
05ba  00        nop
05bb  010001    ld      bc,#0100
05be  00        nop
05bf  03        inc     bc
05c0  55        ld      d,l
05c1  ff        rst     #38
05c2  00        nop
05c3  82        add     a,d
05c4  2082      jr      nz,#0548        ; (-126)
05c6  20aa      jr      nz,#0572        ; (-86)
05c8  2082      jr      nz,#054c        ; (-126)
05ca  2082      jr      nz,#054e        ; (-126)
05cc  010ae0    ld      bc,#e00a
05cf  02        ld      (bc),a
05d0  e0        ret     po
 
05d1  02        ld      (bc),a
05d2  e0        ret     po
 
05d3  02        ld      (bc),a
05d4  e0        ret     po
 
05d5  0a        ld      a,(bc)
05d6  018020    ld      bc,#2080
05d9  02        ld      (bc),a
05da  40        ld      b,b
05db  02        ld      (bc),a
05dc  2080      jr      nz,#055e        ; (-128)
05de  0d        dec     c
05df  aa        xor     d
05e0  e0        ret     po
 
05e1  02        ld      (bc),a
05e2  e0        ret     po
 
05e3  aa        xor     d
05e4  e0        ret     po
 
05e5  80        add     a,b
05e6  e0        ret     po
 
05e7  aa        xor     d
05e8  010a20    ld      bc,#200a
05eb  08        ex      af,af'
05ec  2008      jr      nz,#05f6        ; (8)
05ee  2008      jr      nz,#05f8        ; (8)
05f0  200a      jr      nz,#05fc        ; (10)
05f2  01a080    ld      bc,#80a0
05f5  a0        and     b
05f6  01aa20    ld      bc,#20aa
05f9  82        add     a,d
05fa  2082      jr      nz,#057e        ; (-126)
05fc  2082      jr      nz,#0580        ; (-126)
05fe  20aa      jr      nz,#05aa        ; (-86)
0600  0108e0    ld      bc,#e008
0603  08        ex      af,af'
0604  e0        ret     po
 
0605  0a        ld      a,(bc)
0606  e0        ret     po
 
0607  08        ex      af,af'
0608  e0        ret     po
 
0609  0a        ld      a,(bc)
060a  01a020    ld      bc,#20a0
060d  2020      jr      nz,#062f        ; (32)
060f  a0        and     b
0610  2080      jr      nz,#0592        ; (-128)
0612  2020      jr      nz,#0634        ; (32)
0614  e1        pop     hl
0615  80        add     a,b
0616  c0        ret     nz
 
0617  80        add     a,b
0618  ff        rst     #38
0619  11c205    ld      de,#05c2
061c  212180    ld      hl,#8021
061f  cd6a02    call    #026a
0622  c9        ret
 
0623  cd39c0    call    #c039 ; TOP
0626  0655      ld      b,#55
0628  cd30c0    call    #c030 ; XCLEAR
062b  cdf106    call    #06f1
062e  115d04    ld      de,#045d
0631  21a081    ld      hl,#81a0
0634  cd6a02    call    #026a
0637  cd2804    call    #0428
063a  cd1906    call    #0619
063d  cd6b06    call    #066b
0640  cda606    call    #06a6
0643  3a3c02    ld      a,(#023c)
0646  b7        or      a
0647  c8        ret     z
 
0648  cdb006    call    #06b0
064b  c9        ret
 
064c  00        nop
064d  aa        xor     d
064e  2095      jr      nz,#05e5        ; (-107)
0650  20aa      jr      nz,#05fc        ; (-86)
0652  2095      jr      nz,#05e9        ; (-107)
0654  20aa      jr      nz,#0600        ; (-86)
0656  0195e0    ld      bc,#e095
0659  95        sub     l
065a  c0        ret     nz
 
065b  95        sub     l
065c  e0        ret     po
 
065d  95        sub     l
065e  01aa20    ld      bc,#20aa
0661  59        ld      e,c
0662  2059      jr      nz,#06bd        ; (89)
0664  2059      jr      nz,#06bf        ; (89)
0666  2059      jr      nz,#06c1        ; (89)
0668  81        add     a,c
0669  95        sub     l
066a  ff        rst     #38
066b  218e84    ld      hl,#848e
066e  114c06    ld      de,#064c
0671  cd6a02    call    #026a
; Identifica base "X8".
0674  114386    ld      de,#8643
0677  01550d    ld      bc,#0d55
067a  cd42c0    call    #c042 ; SHOWNO
067d  114586    ld      de,#8645
0680  0608      ld      b,#08
0682  cd42c0    call    #c042 ; SHOWNO
; Identifica base "X1".
0685  114f83    ld      de,#834f
0688  060d      ld      b,#0d
068a  cd42c0    call    #c042 ; SHOWNO
068d  115283    ld      de,#8352
0690  0601      ld      b,#01
0692  cd42c0    call    #c042 ; SHOWNO
; Identifica base "X3".
0695  111686    ld      de,#8616
0698  060d      ld      b,#0d
069a  cd42c0    call    #c042 ; SHOWNO
069d  111886    ld      de,#8618
06a0  0603      ld      b,#03
06a2  cd42c0    call    #c042 ; SHOWNO
06a5  c9        ret
 
06a6  11c206    ld      de,#06c2
06a9  214287    ld      hl,#8742
06ac  cd6a02    call    #026a
06af  c9        ret
 
06b0  115a87    ld      de,#875a
06b3  01000a    ld      bc,#0a00
06b6  3a3802    ld      a,(#0238)
06b9  b7        or      a
06ba  c2be06    jp      nz,#06be
06bd  04        inc     b
06be  cd42c0    call    #c042 ; SHOWNO
06c1  c9        ret
 
06c2  00        nop
06c3  ff        rst     #38
06c4  20c0      jr      nz,#0686        ; (-64)
06c6  20ff      jr      nz,#06c7        ; (-1)
06c8  20c0      jr      nz,#068a        ; (-64)
06ca  20c0      jr      nz,#068c        ; (-64)
06cc  010fe0    ld      bc,#e00f
06cf  30e0      jr      nc,#06b1        ; (-32)
06d1  30e0      jr      nc,#06b3        ; (-32)
06d3  30e0      jr      nc,#06b5        ; (-32)
06d5  3001      jr      nc,#06d8        ; (1)
06d7  cf        rst     #8
06d8  20cc      jr      nz,#06a6        ; (-52)
06da  20cf      jr      nz,#06ab        ; (-49)
06dc  20cc      jr      nz,#06aa        ; (-52)
06de  200f      jr      nz,#06ef        ; (15)
06e0  01f3e0    ld      bc,#e0f3
06e3  03        inc     bc
06e4  e0        ret     po
 
06e5  f3        di
06e6  e0        ret     po
 
06e7  03        inc     bc
06e8  e0        ret     po
 
06e9  f3        di
06ea  210340    ld      hl,#4003
06ed  03        inc     bc
06ee  20f0      jr      nz,#06e0        ; (-16)
06f0  ff        rst     #38
06f1  3e00      ld      a,#00
06f3  320902    ld      (#0209),a
06f6  210d07    ld      hl,#070d
06f9  7e        ld      a,(hl)
06fa  feff      cp      #ff
06fc  c8        ret     z
 
06fd  5f        ld      e,a
06fe  23        inc     hl
06ff  56        ld      d,(hl)
0700  23        inc     hl
0701  4e        ld      c,(hl)
0702  23        inc     hl
0703  46        ld      b,(hl)
0704  e5        push    hl
0705  cd5102    call    #0251
0708  e1        pop     hl
0709  23        inc     hl
070a  c3f906    jp      #06f9
070d  00        nop
070e  80        add     a,b
070f  200d      jr      nz,#071e        ; (13)
0711  a3        and     e
0712  81        add     a,c
0713  1c        inc     e
0714  0a        ld      a,(bc)
0715  e5        push    hl
0716  82        add     a,d
0717  0609      ld      b,#09
0719  05        dec     b
071a  84        add     a,h
071b  04        inc     b
071c  0f        rrca
071d  d5        push    de
071e  84        add     a,h
071f  07        rlca
0720  07        rlca
0721  f7        rst     #30
0722  82        add     a,d
0723  08        ex      af,af'
0724  0f        rrca
0725  00        nop
0726  87        add     a,a
0727  2008      jr      nz,#0731        ; (8)
0729  ff        rst     #38
072a  ff        rst     #38
072b  80        add     a,b
072c  81        add     a,c
072d  0101a0    ld      bc,#a001
0730  00        nop
0731  a0        and     b
0732  00        nop
0733  a0        and     b
0734  00        nop
0735  e0        ret     po
 
0736  70        ld      (hl),b
0737  2003      jr      nz,#073c        ; (3)
0739  016020    ld      bc,#2060
073c  35        dec     (hl)
073d  2026      jr      nz,#0765        ; (38)
073f  20b5      jr      nz,#06f6        ; (-75)
0741  1f        rra
0742  02        ld      (bc),a
0743  210520    ld      hl,#2005
0746  1d        dec     e
0747  20d0      jr      nz,#0719        ; (-48)
0749  1f        rra
074a  09        add     hl,bc
074b  2090      jr      nz,#06dd        ; (-112)
074d  82        add     a,d
074e  e4e06d    call    po,#6de0
0751  e0        ret     po
 
0752  33        inc     sp
0753  e0        ret     po
 
0754  65        ld      h,l
0755  e0        ret     po
 
0756  eee0      xor     #e0
0758  3d        dec     a
0759  e0        ret     po
 
075a  93        sub     e
075b  e0        ret     po
 
075c  1e20      ld      e,#20
075e  ee20      xor     #20
0760  ff        rst     #38
0761  203b      jr      nz,#079e        ; (59)
0763  203f      jr      nz,#07a4        ; (63)
0765  20ee      jr      nz,#0755        ; (-18)
0767  205e      jr      nz,#07c7        ; (94)
0769  2085      jr      nz,#06f0        ; (-123)
076b  200e      jr      nz,#077b        ; (14)
076d  2004      jr      nz,#0773        ; (4)
076f  01c0e0    ld      bc,#e0c0
0772  35        dec     (hl)
0773  e0        ret     po
 
0774  e4e0e7    call    po,#e7e0
0777  e0        ret     po
 
0778  f5        push    af
0779  e0        ret     po
 
077a  b7        or      a
077b  e0        ret     po
 
077c  f5        push    af
077d  e0        ret     po
 
077e  77        ld      (hl),a
077f  e0        ret     po
 
0780  79        ld      a,c
0781  e0        ret     po
 
0782  77        ld      (hl),a
0783  e0        ret     po
 
0784  25        dec     h
0785  c1        pop     bc
0786  0e20      ld      c,#20
0788  e8        ret     pe
 
0789  20e0      jr      nz,#076b        ; (-32)
078b  2040      jr      nz,#07cd        ; (64)
078d  2060      jr      nz,#07ef        ; (96)
078f  200c      jr      nz,#079d        ; (12)
0791  2036      jr      nz,#07c9        ; (54)
0793  2040      jr      nz,#07d5        ; (64)
0795  2030      jr      nz,#07c7        ; (48)
0797  2004      jr      nz,#079d        ; (4)
0799  a1        and     c
079a  e0        ret     po
 
079b  a0        and     b
079c  00        nop
079d  a0        and     b
079e  80        add     a,b
079f  e0        ret     po
 
07a0  30e0      jr      nc,#0782        ; (-32)
07a2  08        ex      af,af'
07a3  ff        rst     #38
 
; Ponto de entrada do Tópico 2 (2 jogadores).
07a4  cd27c0    call    #c027 ; SKEY?
07a7  3e01      ld      a,#01
07a9  323c02    ld      (#023c),a
07ac  323802    ld      (#0238),a
07af  c3d407    jp      #07d4
 
; Ponto de entrada do Tópico 1 (1 jogador).
07b2  310002    ld      sp,#0200
; Interrupção já configurada?
07b5  3a3d02    ld      a,(#023d)
07b8  b7        or      a
; Não: configura com salto para a rotina intrup da ROM.
07b9  c2cc07    jp      nz,#07cc
07bc  3c        inc     a
07bd  323d02    ld      (#023d),a
07c0  3ec3      ld      a,#c3
07c2  323800    ld      (#0038),a
07c5  2124c0    ld      hl,#c024
07c8  223900    ld      (#0039),hl
07cb  fb        ei
;
07cc  af        xor     a
07cd  323c02    ld      (#023c),a
07d0  3c        inc     a
07d1  323802    ld      (#0238),a
;
07d4  af        xor     a
07d5  323a02    ld      (#023a),a
07d8  323b02    ld      (#023b),a
07db  3a4c02    ld      a,(#024c)
07de  323702    ld      (#0237),a
07e1  cd880b    call    #0b88
07e4  cd690b    call    #0b69
07e7  cd2306    call    #0623
07ea  cde80a    call    #0ae8
07ed  cdff0a    call    #0aff
07f0  218081    ld      hl,#8180
07f3  222b07    ld      (#072b),hl
07f6  3e01      ld      a,#01
07f8  322d07    ld      (#072d),a
07fb  322e07    ld      (#072e),a
07fe  3a3702    ld      a,(#0237)
0801  323602    ld      (#0236),a
; Aponta JOB para #0b43.
0804  3ec3      ld      a,#c3
0806  21430b    ld      hl,#0b43
0809  222101    ld      (#0121),hl
080c  322001    ld      (#0120),a
;
080f  cde60b    call    #0be6
0812  cd27c0    call    #c027 ; SKEY?
0815  b7        or      a
0816  cabf08    jp      z,#08bf
0819  fe02      cp      #02
081b  c25308    jp      nz,#0853
081e  3a1b01    ld      a,(#011b)
0821  cdb808    call    #08b8
0824  c22c08    jp      nz,#082c
0827  fe40      cp      #40
0829  c32e08    jp      #082e
082c  fe39      cp      #39
082e  c23a08    jp      nz,#083a
0831  cd9b09    call    #099b
0834  3a1c01    ld      a,(#011c)
0837  c37508    jp      #0875
083a  3a1c01    ld      a,(#011c)
083d  cdb808    call    #08b8
0840  c24808    jp      nz,#0848
0843  fe40      cp      #40
0845  c34a08    jp      #084a
0848  fe39      cp      #39
084a  c26c08    jp      nz,#086c
084d  cd9b09    call    #099b
0850  c36f08    jp      #086f
0853  3a1b01    ld      a,(#011b)
0856  cdb808    call    #08b8
0859  c26108    jp      nz,#0861
085c  fe40      cp      #40
085e  c36308    jp      #0863
0861  fe39      cp      #39
0863  c27508    jp      nz,#0875
0866  cd9b09    call    #099b
0869  c37508    jp      #0875
086c  cdae09    call    #09ae
086f  3a1b01    ld      a,(#011b)
0872  c37508    jp      #0875
0875  cdb808    call    #08b8
0878  c28008    jp      nz,#0880
087b  fe58      cp      #58
087d  c38208    jp      #0882
0880  fe59      cp      #59
0882  ca8409    jp      z,#0984
0885  cdb808    call    #08b8
0888  c29008    jp      nz,#0890
088b  fe30      cp      #30
088d  c39208    jp      #0892
0890  fe31      cp      #31
0892  ca8b09    jp      z,#098b
0895  cdb808    call    #08b8
0898  c2a008    jp      nz,#08a0
089b  fe48      cp      #48
089d  c3a208    jp      #08a2
08a0  fe49      cp      #49
08a2  ca9309    jp      z,#0993
08a5  cdb808    call    #08b8
08a8  c2b008    jp      nz,#08b0
08ab  fe50      cp      #50
08ad  c3b208    jp      #08b2
08b0  fe51      cp      #51
08b2  ca7c09    jp      z,#097c
08b5  c3c208    jp      #08c2
08b8  47        ld      b,a
08b9  3a3802    ld      a,(#0238)
08bc  b7        or      a
08bd  78        ld      a,b
08be  c9        ret
 
08bf  cdae09    call    #09ae
08c2  2a2b07    ld      hl,(#072b)
08c5  3a2e07    ld      a,(#072e)
08c8  fe01      cp      #01
08ca  cadb08    jp      z,#08db
08cd  fe03      cp      #03
08cf  dae108    jp      c,#08e1
08d2  cae708    jp      z,#08e7
08d5  111803    ld      de,#0318
08d8  c3ea08    jp      #08ea
08db  114303    ld      de,#0343
08de  c3ea08    jp      #08ea
08e1  11be02    ld      de,#02be
08e4  c3ea08    jp      #08ea
08e7  11eb02    ld      de,#02eb
08ea  cd8b02    call    #028b
08ed  3a2d07    ld      a,(#072d)
08f0  fe00      cp      #00
08f2  ca0609    jp      z,#0906
08f5  fe01      cp      #01
08f7  ca3709    jp      z,#0937
08fa  fe02      cp      #02
08fc  ca6609    jp      z,#0966
08ff  012000    ld      bc,#0020
0902  09        add     hl,bc
0903  c37609    jp      #0976
0906  3a2e07    ld      a,(#072e)
0909  fe01      cp      #01
090b  ca1b09    jp      z,#091b
090e  fe03      cp      #03
0910  da2a09    jp      c,#092a
0913  ca2f09    jp      z,#092f
0916  3e03      ld      a,#03
0918  c33109    jp      #0931
091b  7d        ld      a,l
091c  e61f      and     #1f
091e  cac109    jp      z,#09c1
0921  2b        dec     hl
0922  222b07    ld      (#072b),hl
0925  3e04      ld      a,#04
0927  c33109    jp      #0931
092a  3e01      ld      a,#01
092c  c33109    jp      #0931
092f  3e02      ld      a,#02
0931  322e07    ld      (#072e),a
0934  c3c109    jp      #09c1
0937  3a2e07    ld      a,(#072e)
093a  fe01      cp      #01
093c  ca2f09    jp      z,#092f
093f  fe03      cp      #03
0941  da1609    jp      c,#0916
0944  ca2509    jp      z,#0925
0947  7d        ld      a,l
0948  e61f      and     #1f
094a  f5        push    af
094b  3a2e07    ld      a,(#072e)
094e  fe01      cp      #01
0950  c25909    jp      nz,#0959
0953  f1        pop     af
0954  fe1d      cp      #1d
0956  c35c09    jp      #095c
0959  f1        pop     af
095a  fe1c      cp      #1c
095c  cac109    jp      z,#09c1
095f  23        inc     hl
0960  222b07    ld      (#072b),hl
0963  c32a09    jp      #092a
0966  01e0ff    ld      bc,#ffe0
0969  09        add     hl,bc
096a  7c        ld      a,h
096b  fe81      cp      #81
096d  c27609    jp      nz,#0976
0970  7d        ld      a,l
0971  fe80      cp      #80
0973  dac109    jp      c,#09c1
0976  222b07    ld      (#072b),hl
0979  c3c109    jp      #09c1
097c  3e03      ld      a,#03
097e  322d07    ld      (#072d),a
0981  c3c208    jp      #08c2
0984  af        xor     a
0985  322d07    ld      (#072d),a
0988  c3c208    jp      #08c2
098b  3e01      ld      a,#01
098d  322d07    ld      (#072d),a
0990  c3c208    jp      #08c2
0993  3e02      ld      a,#02
0995  322d07    ld      (#072d),a
0998  c3c208    jp      #08c2
099b  f5        push    af
099c  3a3602    ld      a,(#0236)
099f  fe01      cp      #01
09a1  caa909    jp      z,#09a9
09a4  d601      sub     #01
09a6  323602    ld      (#0236),a
09a9  cd430b    call    #0b43
09ac  f1        pop     af
09ad  c9        ret
 
09ae  f5        push    af
09af  3a3702    ld      a,(#0237)
09b2  47        ld      b,a
09b3  3a3602    ld      a,(#0236)
09b6  b8        cp      b
09b7  cabf09    jp      z,#09bf
09ba  c601      add     a,#01
09bc  323602    ld      (#0236),a
09bf  f1        pop     af
09c0  c9        ret
 
09c1  2a2b07    ld      hl,(#072b)
09c4  7e        ld      a,(hl)
09c5  feee      cp      #ee
09c7  c2dc09    jp      nz,#09dc
09ca  23        inc     hl
09cb  23        inc     hl
09cc  23        inc     hl
09cd  3a2e07    ld      a,(#072e)
09d0  fe01      cp      #01
09d2  c2d609    jp      nz,#09d6
09d5  2b        dec     hl
09d6  7e        ld      a,(hl)
09d7  feee      cp      #ee
09d9  ca9e0a    jp      z,#0a9e
09dc  3a2d07    ld      a,(#072d)
09df  b7        or      a
09e0  ca070a    jp      z,#0a07
09e3  fe02      cp      #02
09e5  da560a    jp      c,#0a56
09e8  ca3d0a    jp      z,#0a3d
09eb  2a2b07    ld      hl,(#072b)
09ee  7e        ld      a,(hl)
09ef  b7        or      a
09f0  c2730a    jp      nz,#0a73
09f3  23        inc     hl
09f4  23        inc     hl
09f5  23        inc     hl
09f6  3a2e07    ld      a,(#072e)
09f9  fe01      cp      #01
09fb  c2ff09    jp      nz,#09ff
09fe  2b        dec     hl
09ff  7e        ld      a,(hl)
0a00  b7        or      a
0a01  c2730a    jp      nz,#0a73
0a04  c30b0b    jp      #0b0b
0a07  2a2b07    ld      hl,(#072b)
0a0a  7e        ld      a,(hl)
0a0b  b7        or      a
0a0c  c2730a    jp      nz,#0a73
0a0f  2a2b07    ld      hl,(#072b)
0a12  0180ff    ld      bc,#ff80
0a15  09        add     hl,bc
0a16  3a2e07    ld      a,(#072e)
0a19  fe04      cp      #04
0a1b  c21f0a    jp      nz,#0a1f
0a1e  23        inc     hl
0a1f  7e        ld      a,(hl)
0a20  b7        or      a
0a21  c2730a    jp      nz,#0a73
0a24  e5        push    hl
0a25  2a4d02    ld      hl,(#024d)
0a28  4d        ld      c,l
0a29  44        ld      b,h
0a2a  e1        pop     hl
0a2b  09        add     hl,bc
0a2c  3a2e07    ld      a,(#072e)
0a2f  fe04      cp      #04
0a31  c2350a    jp      nz,#0a35
0a34  2b        dec     hl
0a35  7e        ld      a,(hl)
0a36  b7        or      a
0a37  c2730a    jp      nz,#0a73
0a3a  c30b0b    jp      #0b0b
0a3d  2a2b07    ld      hl,(#072b)
0a40  01a0ff    ld      bc,#ffa0
0a43  09        add     hl,bc
0a44  01a1ff    ld      bc,#ffa1
0a47  09        add     hl,bc
0a48  7e        ld      a,(hl)
0a49  b7        or      a
0a4a  c2730a    jp      nz,#0a73
0a4d  23        inc     hl
0a4e  7e        ld      a,(hl)
0a4f  b7        or      a
0a50  c2730a    jp      nz,#0a73
0a53  c30b0b    jp      #0b0b
0a56  2a2b07    ld      hl,(#072b)
0a59  23        inc     hl
0a5a  23        inc     hl
0a5b  23        inc     hl
0a5c  3a2e07    ld      a,(#072e)
0a5f  fe01      cp      #01
0a61  c2650a    jp      nz,#0a65
0a64  2b        dec     hl
0a65  7c        ld      a,h
0a66  fe82      cp      #82
0a68  da0b0b    jp      c,#0b0b
0a6b  7e        ld      a,(hl)
0a6c  b7        or      a
0a6d  c2730a    jp      nz,#0a73
0a70  c30b0b    jp      #0b0b
0a73  2a2b07    ld      hl,(#072b)
0a76  112f07    ld      de,#072f
0a79  cd6a02    call    #026a
0a7c  cd010c    call    #0c01
0a7f  0606      ld      b,#06
0a81  c5        push    bc
0a82  3e88      ld      a,#88
0a84  d380      out     (#80),a
0a86  015000    ld      bc,#0050
0a89  cd48c0    call    #c048 ; DELAYB
0a8c  3e8a      ld      a,#8a
0a8e  d380      out     (#80),a
0a90  015000    ld      bc,#0050
0a93  cd48c0    call    #c048 ; DELAYB
0a96  c1        pop     bc
0a97  05        dec     b
0a98  c2810a    jp      nz,#0a81
0a9b  c3e707    jp      #07e7
0a9e  e5        push    hl
0a9f  cd230c    call    #0c23
0aa2  e1        pop     hl
0aa3  7c        ld      a,h
0aa4  fe82      cp      #82
0aa6  cad80a    jp      z,#0ad8
0aa9  7d        ld      a,l
0aaa  fee0      cp      #e0
0aac  dadf0a    jp      c,#0adf
0aaf  3a3a02    ld      a,(#023a)
0ab2  0608      ld      b,#08
0ab4  80        add     a,b
0ab5  323a02    ld      (#023a),a
0ab8  f5        push    af
0ab9  cda30b    call    #0ba3
0abc  f1        pop     af
0abd  fe64      cp      #64
0abf  daf90a    jp      c,#0af9
0ac2  caf90a    jp      z,#0af9
0ac5  3a3b02    ld      a,(#023b)
0ac8  b7        or      a
0ac9  c2e707    jp      nz,#07e7
0acc  3c        inc     a
0acd  323b02    ld      (#023b),a
0ad0  cd710d    call    #0d71
0ad3  3e19      ld      a,#19
0ad5  c3de07    jp      #07de
0ad8  3a3a02    ld      a,(#023a)
0adb  3c        inc     a
0adc  c3b50a    jp      #0ab5
0adf  3a3a02    ld      a,(#023a)
0ae2  0603      ld      b,#03
0ae4  80        add     a,b
0ae5  c3b50a    jp      #0ab5
0ae8  213780    ld      hl,#8037
0aeb  22cf0c    ld      (#0ccf),hl
0aee  3a3a02    ld      a,(#023a)
0af1  210000    ld      hl,#0000
0af4  6f        ld      l,a
0af5  cdd40c    call    #0cd4
0af8  c9        ret
 
0af9  cde80a    call    #0ae8
0afc  c3e707    jp      #07e7
0aff  212580    ld      hl,#8025
0b02  22cf0c    ld      (#0ccf),hl
0b05  3a3902    ld      a,(#0239)
0b08  c3f10a    jp      #0af1
0b0b  2a2b07    ld      hl,(#072b)
0b0e  3a2e07    ld      a,(#072e)
0b11  fe01      cp      #01
0b13  ca240b    jp      z,#0b24
0b16  fe03      cp      #03
0b18  da2a0b    jp      c,#0b2a
0b1b  ca300b    jp      z,#0b30
0b1e  111803    ld      de,#0318
0b21  c3330b    jp      #0b33
0b24  114303    ld      de,#0343
0b27  c3330b    jp      #0b33
0b2a  11be02    ld      de,#02be
0b2d  c3330b    jp      #0b33
0b30  11eb02    ld      de,#02eb
0b33  cd6a02    call    #026a
0b36  010000    ld      bc,#0000
0b39  3a3602    ld      a,(#0236)
0b3c  4f        ld      c,a
0b3d  cd48c0    call    #c048 ; DELAYB
0b40  c30408    jp      #0804
0b43  3a3302    ld      a,(#0233)
0b46  b7        or      a
0b47  f5        push    af
0b48  3d        dec     a
0b49  323302    ld      (#0233),a
0b4c  f1        pop     af
0b4d  c2530b    jp      nz,#0b53
0b50  cd570b    call    #0b57
0b53  cd690b    call    #0b69
0b56  c9        ret
 
0b57  2a3402    ld      hl,(#0234)
0b5a  7d        ld      a,l
0b5b  00        nop
0b5c  fe74      cp      #74
0b5e  ca9d0b    jp      z,#0b9d
0b61  af        xor     a
0b62  77        ld      (hl),a
0b63  2b        dec     hl
0b64  2b        dec     hl
0b65  223402    ld      (#0234),hl
0b68  c9        ret
 
0b69  11730b    ld      de,#0b73
0b6c  21ab87    ld      hl,#87ab
0b6f  cd6a02    call    #026a
0b72  c9        ret
 
0b73  00        nop
0b74  ff        rst     #38
0b75  01ff01    ld      bc,#01ff
0b78  ff        rst     #38
0b79  01ff01    ld      bc,#01ff
0b7c  ff        rst     #38
0b7d  01ff01    ld      bc,#01ff
0b80  ff        rst     #38
0b81  01ff01    ld      bc,#01ff
0b84  ff        rst     #38
0b85  01ffff    ld      bc,#ffff
0b88  21860b    ld      hl,#0b86
0b8b  223402    ld      (#0234),hl
0b8e  060a      ld      b,#0a
0b90  3eff      ld      a,#ff
0b92  21730b    ld      hl,#0b73
0b95  23        inc     hl
0b96  77        ld      (hl),a
0b97  05        dec     b
0b98  c8        ret     z
 
0b99  23        inc     hl
0b9a  c3950b    jp      #0b95
0b9d  310002    ld      sp,#0200
0ba0  c3b10b    jp      #0bb1
0ba3  3a3902    ld      a,(#0239)
0ba6  57        ld      d,a
0ba7  3a3a02    ld      a,(#023a)
0baa  ba        cp      d
0bab  d8        ret     c
 
0bac  c8        ret     z
 
0bad  323902    ld      (#0239),a
0bb0  c9        ret
 
0bb1  cda30b    call    #0ba3
0bb4  f5        push    af
0bb5  3a3802    ld      a,(#0238)
0bb8  b7        or      a
0bb9  c2d80b    jp      nz,#0bd8
0bbc  f1        pop     af
0bbd  322401    ld      (#0124),a
0bc0  3a3802    ld      a,(#0238)
0bc3  b7        or      a
0bc4  c2d10b    jp      nz,#0bd1
0bc7  3c        inc     a
0bc8  323802    ld      (#0238),a
0bcb  cd4ec0    call    #c04e ; LSCORE
0bce  c3d407    jp      #07d4
0bd1  af        xor     a
0bd2  323802    ld      (#0238),a
0bd5  c3d407    jp      #07d4
0bd8  f1        pop     af
0bd9  322301    ld      (#0123),a
0bdc  3a3c02    ld      a,(#023c)
0bdf  b7        or      a
0be0  cacb0b    jp      z,#0bcb
0be3  c3c00b    jp      #0bc0
0be6  216f0c    ld      hl,#0c6f
0be9  223701    ld      (#0137),hl
0bec  3eb9      ld      a,#b9
0bee  323901    ld      (#0139),a
0bf1  21780c    ld      hl,#0c78
0bf4  224001    ld      (#0140),hl
0bf7  3e79      ld      a,#79
0bf9  324201    ld      (#0142),a
0bfc  af        xor     a
0bfd  324b01    ld      (#014b),a
0c00  c9        ret
 
0c01  217f0c    ld      hl,#0c7f
0c04  223701    ld      (#0137),hl
0c07  3eb5      ld      a,#b5
0c09  323901    ld      (#0139),a
0c0c  217f0c    ld      hl,#0c7f
0c0f  224001    ld      (#0140),hl
0c12  3eb5      ld      a,#b5
0c14  324201    ld      (#0142),a
0c17  217f0c    ld      hl,#0c7f
0c1a  224901    ld      (#0149),hl
0c1d  3eb5      ld      a,#b5
0c1f  324b01    ld      (#014b),a
0c22  c9        ret
 
0c23  21b40c    ld      hl,#0cb4
0c26  223701    ld      (#0137),hl
0c29  3eb5      ld      a,#b5
0c2b  323901    ld      (#0139),a
0c2e  224001    ld      (#0140),hl
0c31  324201    ld      (#0142),a
0c34  af        xor     a
0c35  324b01    ld      (#014b),a
0c38  2a2b07    ld      hl,(#072b)
0c3b  01e0ff    ld      bc,#ffe0
0c3e  09        add     hl,bc
0c3f  3a2e07    ld      a,(#072e)
0c42  fe04      cp      #04
0c44  ca610c    jp      z,#0c61
0c47  fe02      cp      #02
0c49  ca550c    jp      z,#0c55
0c4c  d25b0c    jp      nc,#0c5b
0c4f  114303    ld      de,#0343
0c52  c3640c    jp      #0c64
0c55  11be02    ld      de,#02be
0c58  c3640c    jp      #0c64
0c5b  11eb02    ld      de,#02eb
0c5e  c3640c    jp      #0c64
0c61  111803    ld      de,#0318
0c64  cd6a02    call    #026a
0c67  3a3901    ld      a,(#0139)
0c6a  0f        rrca
0c6b  da670c    jp      c,#0c67
0c6e  c9        ret
 
0c6f  0f        rrca
0c70  80        add     a,b
0c71  301f      jr      nc,#0c92        ; (31)
0c73  50        ld      d,b
0c74  04        inc     b
0c75  50        ld      d,b
0c76  04        inc     b
0c77  ee0f      xor     #0f
0c79  80        add     a,b
0c7a  3000      jr      nc,#0c7c        ; (0)
0c7c  50        ld      d,b
0c7d  30ee      jr      nc,#0c6d        ; (-18)
0c7f  0f        rrca
0c80  00        nop
0c81  00        nop
0c82  1f        rra
0c83  40        ld      b,b
0c84  014001    ld      bc,#0140
0c87  40        ld      b,b
0c88  014001    ld      bc,#0140
0c8b  40        ld      b,b
0c8c  014001    ld      bc,#0140
0c8f  40        ld      b,b
0c90  014001    ld      bc,#0140
0c93  40        ld      b,b
0c94  010f04    ld      bc,#040f
0c97  0e04      ld      c,#04
0c99  0d        dec     c
0c9a  04        inc     b
0c9b  0c        inc     c
0c9c  04        inc     b
0c9d  0b        dec     bc
0c9e  04        inc     b
0c9f  0a        ld      a,(bc)
0ca0  04        inc     b
0ca1  09        add     hl,bc
0ca2  04        inc     b
0ca3  08        ex      af,af'
0ca4  04        inc     b
0ca5  07        rlca
0ca6  08        ex      af,af'
0ca7  0608      ld      b,#08
0ca9  05        dec     b
0caa  08        ex      af,af'
0cab  04        inc     b
0cac  1003      djnz    #0cb1           ; (3)
0cae  14        inc     d
0caf  02        ld      (bc),a
0cb0  1801      jr      #0cb3           ; (1)
0cb2  20ff      jr      nz,#0cb3        ; (-1)
0cb4  0f        rrca
0cb5  00        nop
0cb6  00        nop
0cb7  1f        rra
0cb8  00        nop
0cb9  04        inc     b
0cba  09        add     hl,bc
0cbb  1809      jr      #0cc6           ; (9)
0cbd  1809      jr      #0cc8           ; (9)
0cbf  1808      jr      #0cc9           ; (8)
0cc1  1807      jr      #0cca           ; (7)
0cc3  1806      jr      #0ccb           ; (6)
0cc5  1c        inc     e
0cc6  05        dec     b
0cc7  1c        inc     e
0cc8  04        inc     b
0cc9  1c        inc     e
0cca  03        inc     bc
0ccb  2002      jr      nz,#0ccf        ; (2)
0ccd  10ff      djnz    #0cce           ; (-1)
0ccf  ff        rst     #38
0cd0  ff        rst     #38
0cd1  ff        rst     #38
0cd2  ff        rst     #38
0cd3  ff        rst     #38
0cd4  7d        ld      a,l
0cd5  b4        or      h
0cd6  ca520d    jp      z,#0d52
0cd9  e5        push    hl
0cda  af        xor     a
0cdb  32d10c    ld      (#0cd1),a
0cde  2a4f02    ld      hl,(#024f)
0ce1  22d20c    ld      (#0cd2),hl
0ce4  e1        pop     hl
0ce5  0600      ld      b,#00
0ce7  e5        push    hl
0ce8  2ad20c    ld      hl,(#0cd2)
0ceb  7c        ld      a,h
0cec  2f        cpl
0ced  67        ld      h,a
0cee  7d        ld      a,l
0cef  2f        cpl
0cf0  6f        ld      l,a
0cf1  23        inc     hl
0cf2  eb        ex      de,hl
0cf3  e1        pop     hl
0cf4  7c        ld      a,h
0cf5  ba        cp      d
0cf6  da0c0d    jp      c,#0d0c
0cf9  c2010d    jp      nz,#0d01
0cfc  7d        ld      a,l
0cfd  bb        cp      e
0cfe  da0c0d    jp      c,#0d0c
0d01  e5        push    hl
0d02  2ad20c    ld      hl,(#0cd2)
0d05  eb        ex      de,hl
0d06  e1        pop     hl
0d07  19        add     hl,de
0d08  04        inc     b
0d09  c3e70c    jp      #0ce7
0d0c  e5        push    hl
0d0d  d5        push    de
0d0e  c5        push    bc
0d0f  78        ld      a,b
0d10  b7        or      a
0d11  c21b0d    jp      nz,#0d1b
0d14  3ad10c    ld      a,(#0cd1)
0d17  b7        or      a
0d18  ca240d    jp      z,#0d24
0d1b  2acf0c    ld      hl,(#0ccf)
0d1e  eb        ex      de,hl
0d1f  0e00      ld      c,#00
0d21  cd42c0    call    #c042 ; SHOWNO
0d24  2acf0c    ld      hl,(#0ccf)
0d27  23        inc     hl
0d28  23        inc     hl
0d29  22cf0c    ld      (#0ccf),hl
0d2c  3ad10c    ld      a,(#0cd1)
0d2f  b7        or      a
0d30  c1        pop     bc
0d31  c2380d    jp      nz,#0d38
0d34  78        ld      a,b
0d35  32d10c    ld      (#0cd1),a
0d38  d1        pop     de
0d39  eb        ex      de,hl
0d3a  0e0a      ld      c,#0a
0d3c  cd2dc0    call    #c02d ; DIV
0d3f  7d        ld      a,l
0d40  b7        or      a
0d41  ca500d    jp      z,#0d50
0d44  2f        cpl
0d45  6f        ld      l,a
0d46  26ff      ld      h,#ff
0d48  23        inc     hl
0d49  22d20c    ld      (#0cd2),hl
0d4c  e1        pop     hl
0d4d  c3e50c    jp      #0ce5
0d50  e1        pop     hl
0d51  c9        ret
 
0d52  0600      ld      b,#00
0d54  0e00      ld      c,#00
0d56  2acf0c    ld      hl,(#0ccf)
0d59  23        inc     hl
0d5a  23        inc     hl
0d5b  23        inc     hl
0d5c  23        inc     hl
0d5d  23        inc     hl
0d5e  23        inc     hl
0d5f  eb        ex      de,hl
0d60  cd42c0    call    #c042 ; SHOWNO
0d63  c9        ret
 
; Ponto de entrada do Tópico 3 (placar).
0d64  af        xor     a
0d65  323901    ld      (#0139),a ; AVALUE
0d68  324201    ld      (#0142),a ; BVALUE
0d6b  324b01    ld      (#014b),a ; CVALUE
0d6e  c34bc0    jp      #c04b ; SCORE
 
0d71  0600      ld      b,#00
0d73  cd30c0    call    #c030 ; XCLEAR
0d76  21c087    ld      hl,#87c0
0d79  3e33      ld      a,#33
0d7b  324002    ld      (#0240),a
0d7e  cd030e    call    #0e03
0d81  3ecc      ld      a,#cc
0d83  324002    ld      (#0240),a
0d86  cd030e    call    #0e03
0d89  3e33      ld      a,#33
0d8b  324002    ld      (#0240),a
0d8e  cd030e    call    #0e03
0d91  cd110e    call    #0e11
0d94  21fa03    ld      hl,#03fa
0d97  223e02    ld      (#023e),hl
0d9a  016803    ld      bc,#0368
0d9d  3e08      ld      a,#08
0d9f  324002    ld      (#0240),a
0da2  cddb0d    call    #0ddb
0da5  014303    ld      bc,#0343
0da8  3e0f      ld      a,#0f
0daa  324002    ld      (#0240),a
0dad  cddb0d    call    #0ddb
0db0  017f03    ld      bc,#037f
0db3  3e11      ld      a,#11
0db5  324002    ld      (#0240),a
0db8  cddb0d    call    #0ddb
0dbb  cd6a02    call    #026a
0dbe  21b40c    ld      hl,#0cb4
0dc1  223701    ld      (#0137),hl
0dc4  3eb5      ld      a,#b5
0dc6  323901    ld      (#0139),a
0dc9  224001    ld      (#0140),hl
0dcc  324201    ld      (#0142),a
0dcf  af        xor     a
0dd0  324b01    ld      (#014b),a
0dd3  3a3901    ld      a,(#0139)
0dd6  0f        rrca
0dd7  dad30d    jp      c,#0dd3
0dda  c9        ret
 
0ddb  2a3e02    ld      hl,(#023e)
0dde  5e        ld      e,(hl)
0ddf  23        inc     hl
0de0  56        ld      d,(hl)
0de1  23        inc     hl
0de2  223e02    ld      (#023e),hl
0de5  eb        ex      de,hl
0de6  50        ld      d,b
0de7  59        ld      e,c
0de8  cd6a02    call    #026a
0deb  c5        push    bc
0dec  d5        push    de
0ded  e5        push    hl
0dee  015a00    ld      bc,#005a
0df1  cd48c0    call    #c048 ; DELAYB
0df4  cd8b02    call    #028b
0df7  e1        pop     hl
0df8  d1        pop     de
0df9  45        ld      b,l
0dfa  3a4002    ld      a,(#0240)
0dfd  b8        cp      b
0dfe  c1        pop     bc
0dff  c2db0d    jp      nz,#0ddb
0e02  c9        ret
 
0e03  3a4002    ld      a,(#0240)
0e06  77        ld      (hl),a
0e07  7d        ld      a,l
0e08  e61f      and     #1f
0e0a  fe1f      cp      #1f
0e0c  23        inc     hl
0e0d  c2030e    jp      nz,#0e03
0e10  c9        ret
 
0e11  21330e    ld      hl,#0e33
0e14  223701    ld      (#0137),hl
0e17  3e7d      ld      a,#7d
0e19  323901    ld      (#0139),a
0e1c  21440e    ld      hl,#0e44
0e1f  224001    ld      (#0140),hl
0e22  3e79      ld      a,#79
0e24  324201    ld      (#0142),a
0e27  21550e    ld      hl,#0e55
0e2a  224901    ld      (#0149),hl
0e2d  3eb5      ld      a,#b5
0e2f  324b01    ld      (#014b),a
0e32  c9        ret
 
0e33  0f        rrca
0e34  80        add     a,b
0e35  2000      jr      nz,#0e37        ; (0)
0e37  67        ld      h,a
0e38  02        ld      (bc),a
0e39  67        ld      h,a
0e3a  02        ld      (bc),a
0e3b  69        ld      l,c
0e3c  02        ld      (bc),a
0e3d  69        ld      l,c
0e3e  02        ld      (bc),a
0e3f  69        ld      l,c
0e40  02        ld      (bc),a
0e41  69        ld      l,c
0e42  02        ld      (bc),a
0e43  ee0f      xor     #0f
0e45  80        add     a,b
0e46  2000      jr      nz,#0e48        ; (0)
0e48  50        ld      d,b
0e49  02        ld      (bc),a
0e4a  50        ld      d,b
0e4b  02        ld      (bc),a
0e4c  50        ld      d,b
0e4d  02        ld      (bc),a
0e4e  50        ld      d,b
0e4f  02        ld      (bc),a
0e50  50        ld      d,b
0e51  02        ld      (bc),a
0e52  50        ld      d,b
0e53  02        ld      (bc),a
0e54  ee0f      xor     #0f
0e56  80        add     a,b
0e57  2000      jr      nz,#0e59        ; (0)
0e59  40        ld      b,b
0e5a  02        ld      (bc),a
0e5b  40        ld      b,b
0e5c  02        ld      (bc),a
0e5d  40        ld      b,b
0e5e  02        ld      (bc),a
0e5f  40        ld      b,b
0e60  02        ld      (bc),a
0e61  40        ld      b,b
0e62  02        ld      (bc),a
0e63  40        ld      b,b
0e64  02        ld      (bc),a
0e65  eeff      xor     #ff
0e67  ff        rst     #38
0e68  ff        rst     #38
0e69  ff        rst     #38
0e6a  ff        rst     #38
0e6b  ff        rst     #38
0e6c  ff        rst     #38
0e6d  ff        rst     #38
0e6e  ff        rst     #38
0e6f  ff        rst     #38