; Disassembly of the file "D:\Emerson\mc-1000\aplicativos cassete\BOMBCIDA.BIN"
;
; Created with dZ80 v1.31
;
; on Wednesday, 18 of April 2007 at 05:11 PM
;
; Variáveis do sistema (#0100-#01ff).
0100  ffffffff  db      #ff,#ff,#ff,#ff
; PLAY:
0104  01        db      #01
; PLAYMX:
0105  01        db      #01
; HEAD:
0106  00        db      #00
; RANDOM:
0107  ffff      dw      #ffff
; RCRDPT:
0109  ff        db      #ff
; 
010a  ff        db      #ff
; RECORD:
010b  ffffffff  db      #ff,#ff,#ff,#ff
010f  ffffffff  db      #ff,#ff,#ff,#ff
0113  ffffffff  db      #ff,#ff,#ff,#ff
0117  ffffffff  db      #ff,#ff,#ff,#ff
; KEY0:
011b  ffffffff  db      #ff,#ff,#ff,#ff
011f  ff        db      #ff
; JOB:
0120  c9        ret
0121  ffff      db      #ff,#ff
; SCOREA:
0123  00        db      #00
; SCOREB:
0124  00        db      #00
; SHAPE0:
0125  ff        db      #ff
;
0126  ffff      db      #ff,ff
0128  ffffffff  db      #ff,#ff,#ff,#ff
012c  ffffffff  db      #ff,#ff,#ff,#ff
; JOBM:
0130  c9        ret
0131  ffff      db      #ff,#ff
;
0133  ffffffff  db      #ff,#ff,#ff,#ff
0137  ffff      db      #ff,#ff
; AVALUE:
0139  00        db      #00
;
013a  ffffffff  db      #ff,#ff,#ff,#ff
013e  ffffffff  db      #ff,#ff,#ff,#ff
; BVALUE:
0142  00        db      #00
;
0143  ffffffff  db      #ff,#ff,#ff,#ff
0147  ffffffff  db      #ff,#ff,#ff,#ff
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
0188  ffffffff  db      #ff,#ff,#ff,#ff
018c  ffffffff  db      #ff,#ff,#ff,#ff
0190  ffffffff  db      #ff,#ff,#ff,#ff
0194  ffffffff  db      #ff,#ff,#ff,#ff
0198  ffffffff  db      #ff,#ff,#ff,#ff
019c  ffffffff  db      #ff,#ff,#ff,#ff
01a0  ffffffff  db      #ff,#ff,#ff,#ff
01a4  ffffffff  db      #ff,#ff,#ff,#ff
01a8  ffffffff  db      #ff,#ff,#ff,#ff
01ac  ffffffff  db      #ff,#ff,#ff,#ff
01b0  ffffffff  db      #ff,#ff,#ff,#ff
01b4  ffffffff  db      #ff,#ff,#ff,#ff
01b8  ffffffff  db      #ff,#ff,#ff,#ff
01bc  ffffffff  db      #ff,#ff,#ff,#ff
01c0  ffffffff  db      #ff,#ff,#ff,#ff
01c4  ffffffff  db      #ff,#ff,#ff,#ff
01c8  ffffffff  db      #ff,#ff,#ff,#ff
01cc  ffffffff  db      #ff,#ff,#ff,#ff
01d0  ffffffff  db      #ff,#ff,#ff,#ff
01d4  ffffffff  db      #ff,#ff,#ff,#ff
01d8  ffffffff  db      #ff,#ff,#ff,#ff
01dc  ffffffff  db      #ff,#ff,#ff,#ff
01e0  ffffffff  db      #ff,#ff,#ff,#ff
01e4  ffffffff  db      #ff,#ff,#ff,#ff
01e8  ffffffff  db      #ff,#ff,#ff,#ff
01ec  ffffffff  db      #ff,#ff,#ff,#ff
01f0  ffffffff  db      #ff,#ff,#ff,#ff
01f4  ffffffff  db      #ff,#ff,#ff,#ff
01f8  ffffffff  db      #ff,#ff,#ff,#ff
01fc  ffffffff  db      #ff,#ff,#ff,#ff

; Pontos de entrada dos tópicos de jogo.
0200  c31c02    jp      #021c ; Tópico 1. (único).

; Inicializa som.
0203  21f008    ld      hl,#08f0 ; Dados de música.
0206  223701    ld      (#0137),hl ; NAA.
0209  3e8d      ld      a,#8d
020b  323901    ld      (#0139),a ; VOICEA.
020e  af        xor     a
020f  324201    ld      (#0142),a ; BVALUE.
0212  324b01    ld      (#014b),a ; CVALUE.
0215  c9        ret
 
0216  cd6508    call    #0865
0219  23        inc     hl
021a  23        inc     hl
021b  c9        ret

; Tópico 1.
021c  310002    ld      sp,#0200
021f  3ad508    ld      a,(#08d5) ; Inicialização do sistema já feita?
0222  a7        and     a
0223  c24202    jp      nz,#0242 ; Sim, desvia.
0226  321b01    ld      (#011b),a ; KEY0.
0229  320601    ld      (#0106),a ; HEAD.
022c  3ec9      ld      a,#c9 ; Instrução RET.
022e  322001    ld      (#0120),a ; JOB.
0231  3ec3      ld      a,#c3 ; Instrução JP.
0233  323800    ld      (#0038),a ; 
0236  2124c0    ld      hl,#c024 ; Ponto de entrada para INTRUP.
0239  223900    ld      (#0039),hl
023c  fb        ei
023d  3e02      ld      a,#02 ; Indica que inicialização já foi feita.
023f  32d508    ld      (#08d5),a
;
0242  3e88      ld      a,#88 ; Modo de vídeo "GR".
0244  d380      out     (#80),a ; COL32.
0246  0600      ld      b,#00 ; Preenche a tela com zeros.
0248  cd30c0    call    #c030 ; Ponto de entrada para XCLEAR.
024b  216d81    ld      hl,#816d
024e  112000    ld      de,#0020
0251  01070d    ld      bc,#0d07
0254  e5        push    hl
0255  3655      ld      (hl),#55
0257  23        inc     hl
0258  0d        dec     c
0259  c25502    jp      nz,#0255
025c  e1        pop     hl
025d  0e07      ld      c,#07
025f  19        add     hl,de
0260  05        dec     b
0261  c25402    jp      nz,#0254
0264  118303    ld      de,#0383
0267  cd6508    call    #0865
026a  0e00      ld      c,#00
026c  04        inc     b
026d  11c981    ld      de,#81c9
0270  cd42c0    call    #c042
0273  0602      ld      b,#02
0275  11d681    ld      de,#81d6
0278  cd42c0    call    #c042
027b  0603      ld      b,#03
027d  112f80    ld      de,#802f
0280  cd42c0    call    #c042 ; Ponto de entrada para SHOWNO.
0283  0604      ld      b,#04
0285  11af83    ld      de,#83af
0288  cd42c0    call    #c042 ; Ponto de entrada para SHOWNO.
028b  218384    ld      hl,#8483
028e  119806    ld      de,#0698
0291  cd1602    call    #0216
0294  11a506    ld      de,#06a5
0297  cd1602    call    #0216
029a  d5        push    de
029b  11b606    ld      de,#06b6
029e  cd1602    call    #0216
02a1  d1        pop     de
02a2  cd1602    call    #0216
02a5  119806    ld      de,#0698
02a8  cdb705    call    #05b7
02ab  fe02      cp      #02
02ad  061b      ld      b,#1b
02af  0e06      ld      c,#06
02b1  1626      ld      d,#26
02b3  dacc02    jp      c,#02cc
02b6  061f      ld      b,#1f
02b8  1627      ld      d,#27
02ba  cacc02    jp      z,#02cc
02bd  fe04      cp      #04
02bf  0629      ld      b,#29
02c1  0e08      ld      c,#08
02c3  1624      ld      d,#24
02c5  dacc02    jp      c,#02cc
02c8  062f      ld      b,#2f
02ca  1624      ld      d,#24
02cc  78        ld      a,b
02cd  32eb08    ld      (#08eb),a
02d0  79        ld      a,c
02d1  32ec08    ld      (#08ec),a
02d4  7a        ld      a,d
02d5  32ed08    ld      (#08ed),a
02d8  21a385    ld      hl,#85a3
02db  11c906    ld      de,#06c9
02de  cd1602    call    #0216
02e1  11da06    ld      de,#06da
02e4  cd1602    call    #0216
02e7  11a506    ld      de,#06a5
02ea  cd1602    call    #0216
02ed  cd1602    call    #0216
02f0  11eb06    ld      de,#06eb
02f3  cdb705    call    #05b7
02f6  fe02      cp      #02
02f8  211c0c    ld      hl,#0c1c
02fb  da0f03    jp      c,#030f
02fe  219209    ld      hl,#0992
0301  ca0f03    jp      z,#030f
0304  fe04      cp      #04
0306  216c07    ld      hl,#076c
0309  da0f03    jp      c,#030f
030c  21cc06    ld      hl,#06cc
030f  22ee08    ld      (#08ee),hl
0312  1664      ld      d,#64
0314  cd2a08    call    #082a
0317  15        dec     d
0318  c21403    jp      nz,#0314
031b  cd30c0    call    #c030 ; Ponto de entrada para XCLEAR.
031e  af        xor     a
031f  21db08    ld      hl,#08db
0322  060e      ld      b,#0e
0324  77        ld      (hl),a
0325  23        inc     hl
0326  05        dec     b
0327  c22403    jp      nz,#0324
032a  3d        dec     a
032b  77        ld      (hl),a
032c  23        inc     hl
032d  77        ld      (hl),a
032e  210881    ld      hl,#8108
0331  22d208    ld      (#08d2),hl
0334  21c487    ld      hl,#87c4
0337  3ab108    ld      a,(#08b1)
033a  e604      and     #04
033c  85        add     a,l
033d  6f        ld      l,a
033e  cdb108    call    #08b1
0341  060c      ld      b,#0c
0343  c5        push    bc
0344  e5        push    hl
0345  cd7f07    call    #077f
0348  e1        pop     hl
0349  e5        push    hl
034a  cd3a07    call    #073a
034d  e1        pop     hl
034e  23        inc     hl
034f  23        inc     hl
0350  c1        pop     bc
0351  05        dec     b
0352  c24303    jp      nz,#0343
0355  cd0302    call    #0203
0358  2ad208    ld      hl,(#08d2)
035b  11fc06    ld      de,#06fc
035e  cd8308    call    #0883
0361  e5        push    hl
0362  21db08    ld      hl,#08db
0365  34        inc     (hl)
0366  7e        ld      a,(hl)
0367  e1        pop     hl
0368  0f        rrca
0369  d25105    jp      nc,#0551
036c  23        inc     hl
036d  cd6508    call    #0865
0370  22d208    ld      (#08d2),hl
0373  3aed08    ld      a,(#08ed)
0376  47        ld      b,a
0377  21dc08    ld      hl,#08dc
037a  7e        ld      a,(hl)
037b  b8        cp      b
037c  d2be03    jp      nc,#03be
037f  34        inc     (hl)
0380  c30804    jp      #0408
0383  63        ld      h,e
0384  3c        inc     a
0385  e0        ret     po
 
0386  ff        rst     #38
0387  e0        ret     po
 
0388  3c        inc     a
0389  e0        ret     po
 
038a  3c        inc     a
038b  e0        ret     po
 
038c  7d        ld      a,l
038d  e0        ret     po
 
038e  7d        ld      a,l
038f  e0        ret     po
 
0390  7d        ld      a,l
0391  a0        and     b
0392  aa        xor     d
0393  fcf0df    call    m,#dff0
0396  0f        rrca
0397  01ff01    ld      bc,#01ff
039a  ff        rst     #38
039b  01ff02    ld      bc,#02ff
039e  aa        xor     d
039f  02        ld      (bc),a
03a0  ff        rst     #38
03a1  01ff01    ld      bc,#01ff
03a4  ff        rst     #38
03a5  200f      jr      nz,#03b6        ; (15)
03a7  e1        pop     hl
03a8  f0        ret     p
 
03a9  dbaa      in      a,(#aa)
03ab  be        cp      (hl)
03ac  ff        rst     #38
03ad  e0        ret     po
 
03ae  ff        rst     #38
03af  02        ld      (bc),a
03b0  7d        ld      a,l
03b1  e0        ret     po
 
03b2  7d        ld      a,l
03b3  e0        ret     po
 
03b4  7d        ld      a,l
03b5  e0        ret     po
 
03b6  3c        inc     a
03b7  e0        ret     po
 
03b8  3c        inc     a
03b9  e0        ret     po
 
03ba  ff        rst     #38
03bb  e0        ret     po
 
03bc  3c        inc     a
03bd  ff        rst     #38
03be  cd3f08    call    #083f
03c1  0e39      ld      c,#39
03c3  cd5108    call    #0851
03c6  c20804    jp      nz,#0408
03c9  3adb08    ld      a,(#08db)
03cc  0f        rrca
03cd  da0804    jp      c,#0408
03d0  2ad208    ld      hl,(#08d2)
03d3  2b        dec     hl
03d4  012000    ld      bc,#0020
03d7  09        add     hl,bc
03d8  7e        ld      a,(hl)
03d9  fe88      cp      #88
03db  d20804    jp      nc,#0408
03de  eb        ex      de,hl
03df  cdb108    call    #08b1
03e2  cdba08    call    #08ba
03e5  c20804    jp      nz,#0408
03e8  7b        ld      a,e
03e9  e6fe      and     #fe
03eb  77        ld      (hl),a
03ec  23        inc     hl
03ed  72        ld      (hl),d
03ee  23        inc     hl
03ef  af        xor     a
03f0  77        ld      (hl),a
03f1  23        inc     hl
03f2  77        ld      (hl),a
03f3  32dc08    ld      (#08dc),a
03f6  3a4201    ld      a,(#0142) ; BVALUE.
03f9  a7        and     a
03fa  c20804    jp      nz,#0408
03fd  211909    ld      hl,#0919
0400  224001    ld      (#0140),hl ; NBB.
0403  3e45      ld      a,#45
0405  324201    ld      (#0142),a ; BVALUE.
0408  21de08    ld      hl,#08de
040b  7e        ld      a,(hl)
040c  feff      cp      #ff
040e  ca0205    jp      z,#0502
0411  a7        and     a
0412  c21c04    jp      nz,#041c
0415  23        inc     hl
0416  23        inc     hl
0417  23        inc     hl
0418  23        inc     hl
0419  c30b04    jp      #040b
041c  2b        dec     hl
041d  5e        ld      e,(hl)
041e  23        inc     hl
041f  56        ld      d,(hl)
0420  23        inc     hl
0421  23        inc     hl
0422  7e        ld      a,(hl)
0423  a7        and     a
0424  c2d304    jp      nz,#04d3
0427  2b        dec     hl
0428  7e        ld      a,(hl)
0429  e5        push    hl
042a  fe03      cp      #03
042c  da7d04    jp      c,#047d
042f  caa404    jp      z,#04a4
0432  fe05      cp      #05
0434  da4c04    jp      c,#044c
0437  ca5d04    jp      z,#045d
043a  213606    ld      hl,#0636
043d  eb        ex      de,hl
043e  cd8308    call    #0883
0441  e1        pop     hl
0442  2b        dec     hl
0443  3600      ld      (hl),#00
0445  af        xor     a
0446  324201    ld      (#0142),a ; BVALUE.
0449  c31504    jp      #0415
044c  216206    ld      hl,#0662
044f  eb        ex      de,hl
0450  cd8308    call    #0883
0453  113b06    ld      de,#063b
0456  cd6508    call    #0865
0459  eb        ex      de,hl
045a  c39a04    jp      #049a
045d  213b06    ld      hl,#063b
0460  eb        ex      de,hl
0461  cd8308    call    #0883
0464  113606    ld      de,#0636
0467  c35604    jp      #0456
046a  eb        ex      de,hl
046b  cd6508    call    #0865
046e  012000    ld      bc,#0020
0471  09        add     hl,bc
0472  7c        ld      a,h
0473  fe88      cp      #88
0475  c9        ret
 
0476  01e0ff    ld      bc,#ffe0
0479  09        add     hl,bc
047a  c33e04    jp      #043e
047d  fe01      cp      #01
047f  213606    ld      hl,#0636
0482  da8e04    jp      c,#048e
0485  213b06    ld      hl,#063b
0488  ca8e04    jp      z,#048e
048b  214406    ld      hl,#0644
048e  cd6a04    call    #046a
0491  d27604    jp      nc,#0476
0494  eb        ex      de,hl
0495  7e        ld      a,(hl)
0496  a7        and     a
0497  c2be04    jp      nz,#04be
049a  e1        pop     hl
049b  34        inc     (hl)
049c  2b        dec     hl
049d  72        ld      (hl),d
049e  2b        dec     hl
049f  73        ld      (hl),e
04a0  23        inc     hl
04a1  c31504    jp      #0415
04a4  215106    ld      hl,#0651
04a7  eb        ex      de,hl
04a8  cd8308    call    #0883
04ab  cd6e04    call    #046e
04ae  d24104    jp      nc,#0441
04b1  7e        ld      a,(hl)
04b2  a7        and     a
04b3  c2be04    jp      nz,#04be
04b6  cd6508    call    #0865
04b9  eb        ex      de,hl
04ba  e1        pop     hl
04bb  c39c04    jp      #049c
04be  af        xor     a
04bf  324201    ld      (#0142),a ; BVALUE.
04c2  214a09    ld      hl,#094a
04c5  224001    ld      (#0140),hl ; NBB.
04c8  3eb5      ld      a,#b5
04ca  324201    ld      (#0142),a ; BVALUE.
04cd  e1        pop     hl
04ce  23        inc     hl
04cf  34        inc     (hl)
04d0  c31704    jp      #0417
04d3  e5        push    hl
04d4  216206    ld      hl,#0662
04d7  eb        ex      de,hl
04d8  cd8308    call    #0883
04db  cd6e04    call    #046e
04de  dae704    jp      c,#04e7
04e1  e1        pop     hl
04e2  2b        dec     hl
04e3  e5        push    hl
04e4  c34104    jp      #0441
04e7  cd6508    call    #0865
04ea  eb        ex      de,hl
04eb  e1        pop     hl
04ec  34        inc     (hl)
04ed  3aec08    ld      a,(#08ec)
04f0  47        ld      b,a
04f1  7e        ld      a,(hl)
04f2  b8        cp      b
04f3  dafe04    jp      c,#04fe
04f6  3600      ld      (hl),#00
04f8  2b        dec     hl
04f9  3604      ld      (hl),#04
04fb  c39c04    jp      #049c
04fe  2b        dec     hl
04ff  c39c04    jp      #049c
0502  2aee08    ld      hl,(#08ee)
0505  44        ld      b,h
0506  4d        ld      c,l
0507  cd2d08    call    #082d
050a  21c287    ld      hl,#87c2
050d  061d      ld      b,#1d
050f  7e        ld      a,(hl)
0510  a7        and     a
0511  c25803    jp      nz,#0358
0514  23        inc     hl
0515  05        dec     b
0516  c20f05    jp      nz,#050f
0519  218909    ld      hl,#0989
051c  223701    ld      (#0137),hl ; NAA.
051f  21000a    ld      hl,#0a00
0522  224001    ld      (#0140),hl ; NBB.
0525  3e7d      ld      a,#7d
0527  323901    ld      (#0139),a ; AVALUE.
052a  3e79      ld      a,#79
052c  324201    ld      (#0142),a ; BVALUE.
052f  cd3505    call    #0535
0532  c31c02    jp      #021c
0535  af        xor     a
0536  324b01    ld      (#014b),a ; CVALUE.
0539  1606      ld      d,#06
053b  0160ea    ld      bc,#ea60
053e  cd2d08    call    #082d
0541  05        dec     b
0542  cd2d08    call    #082d
0545  15        dec     d
0546  c23b05    jp      nz,#053b
0549  af        xor     a
054a  323901    ld      (#0139),a ; AVALUE.
054d  324201    ld      (#0142),a ; BVALUE.
0550  c9        ret
 
0551  111b07    ld      de,#071b
0554  cd6508    call    #0865
0557  23        inc     hl
0558  7e        ld      a,(hl)
0559  a7        and     a
055a  ca7303    jp      z,#0373
055d  1606      ld      d,#06
055f  21960a    ld      hl,#0a96
0562  224901    ld      (#0149),hl ; NCC.
0565  3e2d      ld      a,#2d
0567  324b01    ld      (#014b),a ; CVALUE.
056a  af        xor     a
056b  323901    ld      (#0139),a ; AVALUE.
056e  324201    ld      (#0142),a ; BVALUE.
0571  3e8a      ld      a,#8a ; Paleta de cores alternativa.
0573  d380      out     (#80),a ; COL32.
0575  cd1806    call    #0618
0578  cd3908    call    #0839
057b  3e88      ld      a,#88 ; Paleta de cores original.
057d  d380      out     (#80),a ; COL32.
057f  cd2706    call    #0627
0582  cd3908    call    #0839
0585  3e8a      ld      a,#8a ; Paleta de cores alternativa.
0587  d380      out     (#80),a ; COL32.
0589  cd2706    call    #0627
058c  cd3908    call    #0839
058f  3e88      ld      a,#88 ; Paleta de cores original.
0591  d380      out     (#80),a ; COL32.
0593  cd1806    call    #0618
0596  cd3908    call    #0839
0599  15        dec     d
059a  c27105    jp      nz,#0571
059d  0160ea    ld      bc,#ea60
05a0  cd2d08    call    #082d
05a3  21450a    ld      hl,#0a45
05a6  224901    ld      (#0149),hl ; NCC.
05a9  3e79      ld      a,#79
05ab  324b01    ld      (#014b),a ; CVALUE.
05ae  cd3905    call    #0539
05b1  324b01    ld      (#014b),a ; CVALUE.
05b4  c31c02    jp      #021c
05b7  cd1602    call    #0216
05ba  117e06    ld      de,#067e
05bd  cd1602    call    #0216
05c0  2b        dec     hl
05c1  eb        ex      de,hl
05c2  010001    ld      bc,#0100
05c5  d5        push    de
05c6  cd42c0    call    #c042 ; Ponto de entrada de SHOWNO.
05c9  d1        pop     de
05ca  13        inc     de
05cb  13        inc     de
05cc  214000    ld      hl,#0040
05cf  19        add     hl,de
05d0  3615      ld      (hl),#15
05d2  23        inc     hl
05d3  3654      ld      (hl),#54
05d5  13        inc     de
05d6  13        inc     de
05d7  0604      ld      b,#04
05d9  d5        push    de
05da  cd42c0    call    #c042 ; Ponto de entrada de SHOWNO.
05dd  d1        pop     de
05de  eb        ex      de,hl
05df  23        inc     hl
05e0  23        inc     hl
05e1  117306    ld      de,#0673
05e4  cd1602    call    #0216
05e7  118906    ld      de,#0689
05ea  cd1602    call    #0216
05ed  e5        push    hl
05ee  cd06c0    call    #c006 ; Ponto de entrada de KEY.
05f1  e1        pop     hl
05f2  0601      ld      b,#01
05f4  fe59      cp      'Y'
05f6  ca0e06    jp      z,#060e
05f9  0602      ld      b,#02
05fb  fe31      cp      '1'
05fd  ca0e06    jp      z,#060e
0600  0603      ld      b,#03
0602  fe49      cp      'I'
0604  ca0e06    jp      z,#060e
0607  fe51      cp      'Q'
0609  0604      ld      b,#04
060b  c2ed05    jp      nz,#05ed
060e  78        ld      a,b
060f  f5        push    af
0610  eb        ex      de,hl
0611  0e00      ld      c,#00
0613  cd42c0    call    #c042 ; Ponto de entrada de SHOWNO.
0616  f1        pop     af
0617  c9        ret
 
0618  21fe87    ld      hl,#87fe
061b  7e        ld      a,(hl)
061c  23        inc     hl
061d  77        ld      (hl),a
061e  2b        dec     hl
061f  2b        dec     hl
0620  7c        ld      a,h
0621  fe80      cp      #80
0623  d21b06    jp      nc,#061b
0626  c9        ret
 
0627  210180    ld      hl,#8001
062a  7e        ld      a,(hl)
062b  2b        dec     hl
062c  77        ld      (hl),a
062d  23        inc     hl
062e  23        inc     hl
062f  7c        ld      a,h
0630  fe88      cp      #88
0632  da2a06    jp      c,#062a
0635  c9        ret
 
0636  00        nop
0637  010140    ld      bc,#4001
063a  ff        rst     #38
063b  00        nop
063c  010140    ld      bc,#4001
063f  df        rst     #18
0640  05        dec     b
0641  0150ff    ld      bc,#ff50
0644  00        nop
0645  010140    ld      bc,#4001
0648  df        rst     #18
0649  05        dec     b
064a  0150df    ld      bc,#df50
064d  05        dec     b
064e  0150ff    ld      bc,#ff50
0651  00        nop
0652  010140    ld      bc,#4001
0655  df        rst     #18
0656  05        dec     b
0657  0150df    ld      bc,#df50
065a  05        dec     b
065b  0150df    ld      bc,#df50
065e  05        dec     b
065f  0150ff    ld      bc,#ff50
0662  00        nop
0663  03        inc     bc
0664  01c0df    ld      bc,#dfc0
0667  0f        rrca
0668  01f0df    ld      bc,#dff0
066b  0f        rrca
066c  01f0df    ld      bc,#dff0
066f  0f        rrca
0670  01f0ff    ld      bc,#fff0
0673  00        nop
0674  1020      djnz    #0696           ; (32)
0676  04        inc     b
0677  2001      jr      nz,#067a        ; (1)
0679  2004      jr      nz,#067f        ; (4)
067b  2010      jr      nz,#068d        ; (16)
067d  ff        rst     #38
067e  00        nop
067f  04        inc     b
0680  2010      jr      nz,#0692        ; (16)
0682  2040      jr      nz,#06c4        ; (64)
0684  2010      jr      nz,#0696        ; (16)
0686  2004      jr      nz,#068c        ; (4)
0688  ff        rst     #38
0689  00        nop
068a  15        dec     d
068b  01401f    ld      bc,#1f40
068e  40        ld      b,b
068f  011020    ld      bc,#2010
0692  40        ld      b,b
0693  1f        rra
0694  012001    ld      bc,#0120
0697  ff        rst     #38
0698  01401f    ld      bc,#1f40
069b  012004    ld      bc,#0420
069e  2010      jr      nz,#06b0        ; (16)
06a0  2055      jr      nz,#06f7        ; (85)
06a2  0154ff    ld      bc,#ff54
06a5  00        nop
06a6  55        ld      d,l
06a7  01501f    ld      bc,#1f50
06aa  40        ld      b,b
06ab  2055      jr      nz,#0702        ; (85)
06ad  01401f    ld      bc,#1f40
06b0  40        ld      b,b
06b1  2055      jr      nz,#0708        ; (85)
06b3  0150ff    ld      bc,#ff50
06b6  00        nop
06b7  40        ld      b,b
06b8  01041f    ld      bc,#1f04
06bb  40        ld      b,b
06bc  01041f    ld      bc,#1f04
06bf  1001      djnz    #06c2           ; (1)
06c1  101f      djnz    #06e2           ; (31)
06c3  04        inc     b
06c4  01401f    ld      bc,#1f40
06c7  01ff00    ld      bc,#00ff
06ca  15        dec     d
06cb  01501f    ld      bc,#1f50
06ce  50        ld      d,b
06cf  2015      jr      nz,#06e6        ; (21)
06d1  015020    ld      bc,#2050
06d4  14        inc     d
06d5  1f        rra
06d6  15        dec     d
06d7  0150ff    ld      bc,#ff50
06da  00        nop
06db  55        ld      d,l
06dc  01401f    ld      bc,#1f40
06df  40        ld      b,b
06e0  01101f    ld      bc,#1f10
06e3  55        ld      d,l
06e4  01401f    ld      bc,#1f40
06e7  40        ld      b,b
06e8  2040      jr      nz,#072a        ; (64)
06ea  ff        rst     #38
06eb  00        nop
06ec  55        ld      d,l
06ed  2040      jr      nz,#072f        ; (64)
06ef  01401f    ld      bc,#1f40
06f2  40        ld      b,b
06f3  01101f    ld      bc,#1f10
06f6  40        ld      b,b
06f7  01401f    ld      bc,#1f40
06fa  55        ld      d,l
06fb  ff        rst     #38
06fc  fe03      cp      #03
06fe  01ff01    ld      bc,#01ff
0701  c0        ret     nz
 
0702  dd3f      ccf
0704  01ff01    ld      bc,#01ff
0707  ff        rst     #38
0708  01f0dd    ld      bc,#ddf0
070b  3002      jr      nc,#070f        ; (2)
070d  30dd      jr      nc,#06ec        ; (-35)
070f  05        dec     b
0710  017f02    ld      bc,#027f
0713  30df      jr      nc,#06f4        ; (-33)
0715  0f        rrca
0716  01fd01    ld      bc,#01fd
0719  54        ld      d,h
071a  ff        rst     #38
071b  fe00      cp      #00
071d  017f01    ld      bc,#017f
0720  fcdd03    call    m,#03dd
0723  01ff01    ld      bc,#01ff
0726  ff        rst     #38
0727  01ffdd    ld      bc,#ddff
072a  03        inc     bc
072b  02        ld      (bc),a
072c  03        inc     bc
072d  deff      sbc     a,#ff
072f  015001    ld      bc,#0150
0732  03        inc     bc
0733  df        rst     #18
0734  010157    ld      bc,#5701
0737  01ffff    ld      bc,#ffff
073a  eb        ex      de,hl
073b  0e02      ld      c,#02
073d  2ad708    ld      hl,(#08d7)
0740  7e        ld      a,(hl)
0741  fedd      cp      #dd
0743  ca3d07    jp      z,#073d
0746  12        ld      (de),a
0747  13        inc     de
0748  23        inc     hl
0749  0d        dec     c
074a  c24007    jp      nz,#0740
074d  0e02      ld      c,#02
074f  c5        push    bc
0750  01deff    ld      bc,#ffde ; -34.
0753  eb        ex      de,hl
0754  09        add     hl,bc
0755  eb        ex      de,hl
0756  cdb108    call    #08b1
0759  cd2a08    call    #082a
075c  c1        pop     bc
075d  05        dec     b
075e  c24007    jp      nz,#0740
0761  2ad908    ld      hl,(#08d9)
0764  7e        ld      a,(hl)
0765  fedd      cp      #dd
0767  c8        ret     z
 
0768  12        ld      (de),a
0769  13        inc     de
076a  23        inc     hl
076b  0d        dec     c
076c  c26407    jp      nz,#0764
076f  0e02      ld      c,#02
0771  c5        push    bc
0772  eb        ex      de,hl
0773  01deff    ld      bc,#ffde ; -34.
0776  09        add     hl,bc
0777  eb        ex      de,hl
0778  cdb108    call    #08b1
077b  c1        pop     bc
077c  c36407    jp      #0764
077f  3aeb08    ld      a,(#08eb)
0782  47        ld      b,a
0783  cdb108    call    #08b1
0786  84        add     a,h
0787  85        add     a,l
0788  e63e      and     #3e
078a  b8        cp      b
078b  d27f07    jp      nc,#077f
078e  fe0b      cp      #0b
0790  da7f07    jp      c,#077f
0793  47        ld      b,a
0794  3a0701    ld      a,(#0107) ; RANDOM.
0797  1e00      ld      e,#00
0799  fe40      cp      #40
079b  daae07    jp      c,#07ae
079e  fe80      cp      #80
07a0  1e02      ld      e,#02
07a2  daae07    jp      c,#07ae
07a5  fec0      cp      #c0
07a7  1e04      ld      e,#04
07a9  daae07    jp      c,#07ae
07ac  1e06      ld      e,#06
07ae  21da07    ld      hl,#07da
07b1  1600      ld      d,#00
07b3  19        add     hl,de
07b4  d5        push    de
07b5  5e        ld      e,(hl)
07b6  23        inc     hl
07b7  56        ld      d,(hl)
07b8  eb        ex      de,hl
07b9  22d708    ld      (#08d7),hl
07bc  d1        pop     de
07bd  07        rlca
07be  e60c      and     #0c
07c0  5f        ld      e,a
07c1  78        ld      a,b
07c2  e604      and     #04
07c4  cace07    jp      z,#07ce
07c7  7b        ld      a,e
07c8  c602      add     a,#02
07ca  5f        ld      e,a
07cb  cdb108    call    #08b1
07ce  21e207    ld      hl,#07e2
07d1  19        add     hl,de
07d2  5e        ld      e,(hl)
07d3  23        inc     hl
07d4  56        ld      d,(hl)
07d5  eb        ex      de,hl
07d6  22d908    ld      (#08d9),hl
07d9  c9        ret
 
07da  f207f7    jp      p,#f707
07dd  07        rlca
07de  fc0701    call    m,#0107
07e1  08        ex      af,af''
07e2  0608      ld      b,#08
07e4  0e08      ld      c,#08
07e6  0f        rrca
07e7  08        ex      af,af'
07e8  17        rla
07e9  08        ex      af,af'
07ea  1808      jr      #07f4           ; (8)
07ec  2008      jr      nz,#07f6        ; (8)
07ee  210829    ld      hl,#2908
07f1  08        ex      af,af'
07f2  41        ld      b,c
07f3  41        ld      b,c
07f4  55        ld      d,l
07f5  55        ld      d,l
07f6  dd82      add     a,d
07f8  82        add     a,d
07f9  aa        xor     d
07fa  aa        xor     d
07fb  ddc3c3ff  jp      #ffc3
07ff  ff        rst     #38
0800  ddc1      pop     bc
0802  c1        pop     bc
0803  77        ld      (hl),a
0804  77        ld      (hl),a
0805  dd15      dec     d
0807  54        ld      d,h
0808  05        dec     b
0809  50        ld      d,b
080a  014001    ld      bc,#0140
080d  40        ld      b,b
080e  dd2aa80a  ld      ix,(#0aa8)
0812  a0        and     b
0813  02        ld      (bc),a
0814  80        add     a,b
0815  02        ld      (bc),a
0816  80        add     a,b
0817  dd3f      ccf
0819  fc0ff0    call    m,#f00f
081c  03        inc     bc
081d  c0        ret     nz
 
081e  03        inc     bc
081f  c0        ret     nz
 
0820  dd37      scf
0822  7c        ld      a,h
0823  0d        dec     c
0824  d0        ret     nc
 
0825  03        inc     bc
0826  40        ld      b,b
0827  03        inc     bc
0828  40        ld      b,b
0829  dd01d007  ld      bc,#07d0

; Temporização de BC ciclos.
082d  0d        dec     c
082e  c22d08    jp      nz,#082d
0831  78        ld      a,b
0832  a7        and     a
0833  c8        ret     z
0834  05        dec     b
0835  c22d08    jp      nz,#082d
0838  c9        ret
 
; Temporização de #3000=12288 ciclos.
0839  010030    ld      bc,#3000
083c  c32d08    jp      #082d

; Limpa KEY0 ~ KEY0+3.
083f  af        xor     a
0840  211b01    ld      hl,#011b ; KEY0.
0843  77        ld      (hl),a
0844  23        inc     hl
0845  77        ld      (hl),a
0846  23        inc     hl
0847  77        ld      (hl),a
0848  23        inc     hl
0849  77        ld      (hl),a
084a  c5        push    bc
084b  cd27c0    call    #c027 ; Ponto de entrada de SKEY?.
084e  b7        or      a
084f  c1        pop     bc
0850  c9        ret

; Retorna flag Z ligado se alguma das 4 teclas
; pressionadas for igual ao registrador C.
0851  3a1b01    ld      a,(#011b) ; KEY0.
0854  b9        cp      c
0855  c8        ret     z
0856  3a1c01    ld      a,(#011c) ; KEY0+1.
0859  b9        cp      c
085a  c8        ret     z
085b  3a1d01    ld      a,(#011d) ; KEY0+2.
085e  b9        cp      c
085f  c8        ret     z
0860  3a1e01    ld      a,(#011e) ; KEY0+3.
0863  b9        cp      c
0864  c9        ret

;
0865  e5        push    hl
0866  d5        push    de
0867  c5        push    bc
0868  1a        ld      a,(de)
0869  feff      cp      #ff
086b  ca7f08    jp      z,#087f
086e  4f        ld      c,a
086f  07        rlca
0870  06ff      ld      b,#ff
0872  da7708    jp      c,#0877
0875  0600      ld      b,#00
0877  09        add     hl,bc
0878  13        inc     de
0879  1a        ld      a,(de)
087a  77        ld      (hl),a
087b  13        inc     de
087c  c36808    jp      #0868
087f  c1        pop     bc
0880  d1        pop     de
0881  e1        pop     hl
0882  c9        ret

;
0883  e5        push    hl
0884  d5        push    de
0885  c5        push    bc
0886  af        xor     a
0887  32d608    ld      (#08d6),a
088a  1a        ld      a,(de)
088b  feff      cp      #ff
088d  caad08    jp      z,#08ad
0890  4f        ld      c,a
0891  07        rlca
0892  06ff      ld      b,#ff
0894  da9908    jp      c,#0899
0897  0600      ld      b,#00
0899  09        add     hl,bc
089a  13        inc     de
089b  1a        ld      a,(de)
089c  be        cp      (hl)
089d  caa708    jp      z,#08a7
08a0  3ad608    ld      a,(#08d6)
08a3  3c        inc     a
08a4  32d608    ld      (#08d6),a
08a7  3600      ld      (hl),#00
08a9  13        inc     de
08aa  c38a08    jp      #088a
08ad  c1        pop     bc
08ae  d1        pop     de
08af  e1        pop     hl
08b0  c9        ret

; Atualiza RANDOM.
08b1  3a0701    ld      a,(#0107) ; RANDOM.
08b4  c625      add     a,#25
08b6  320701    ld      (#0107),a ; RANDOM.
08b9  c9        ret

;
08ba  21dd08    ld      hl,#08dd
08bd  23        inc     hl
08be  7e        ld      a,(hl)
08bf  2b        dec     hl
08c0  a7        and     a
08c1  c8        ret     z
 
08c2  feff      cp      #ff
08c4  cace08    jp      z,#08ce
08c7  23        inc     hl
08c8  23        inc     hl
08c9  23        inc     hl
08ca  23        inc     hl
08cb  c3bd08    jp      #08bd
08ce  a7        and     a
08cf  c9        ret
 
08d0  ff        rst     #38
08d1  ff        rst     #38
08d2  ff        rst     #38
08d3  ff        rst     #38
08d4  ff        rst     #38
08d5  00        nop
08d6  ff        rst     #38
08d7  ff        rst     #38
08d8  ff        rst     #38
08d9  ff        rst     #38
08da  ff        rst     #38
08db  ff        rst     #38
08dc  ff        rst     #38
08dd  ff        rst     #38
08de  ff        rst     #38
08df  ff        rst     #38
08e0  ff        rst     #38
08e1  ff        rst     #38
08e2  ff        rst     #38
08e3  ff        rst     #38
08e4  ff        rst     #38
08e5  ff        rst     #38
08e6  ff        rst     #38
08e7  ff        rst     #38
08e8  ff        rst     #38
08e9  ff        rst     #38
08ea  ff        rst     #38
08eb  ff        rst     #38
08ec  ff        rst     #38
08ed  ff        rst     #38
08ee  ff        rst     #38
08ef  ff        rst     #38

; Dados de música.
08f0  af        xor     a
08f1  80        add     a,b
08f2  2010      jr      nz,#0904        ; (16)
08f4  0a        ld      a,(bc)
08f5  010b01    ld      bc,#010b
08f8  0c        inc     c
08f9  010d01    ld      bc,#010d
08fc  0e01      ld      c,#01
08fe  0f        rrca
08ff  010e01    ld      bc,#010e
0902  0d        dec     c
0903  010c01    ld      bc,#010c
0906  0b        dec     bc
0907  010a01    ld      bc,#010a
090a  00        nop
090b  03        inc     bc
090c  0f        rrca
090d  010e01    ld      bc,#010e
0910  0d        dec     c
0911  010c01    ld      bc,#010c
0914  0b        dec     bc
0915  010a01    ld      bc,#010a
0918  ee        db      #ee

; Dados de música.
0919  0f        db      #0f
091a  f0        ret     p
 
091b  f0        ret     p
 
091c  00        nop
091d  69        ld      l,c
091e  0668      ld      b,#68
0920  0667      ld      b,#67
0922  0666      ld      b,#66
0924  0665      ld      b,#65
0926  0664      ld      b,#64
0928  0663      ld      b,#63
092a  0662      ld      b,#62
092c  0661      ld      b,#61
092e  0660      ld      b,#60
0930  065b      ld      b,#5b
0932  065a      ld      b,#5a
0934  0659      ld      b,#59
0936  0658      ld      b,#58
0938  0657      ld      b,#57
093a  0656      ld      b,#56
093c  0655      ld      b,#55
093e  0654      ld      b,#54
0940  0653      ld      b,#53
0942  0652      ld      b,#52
0944  0651      ld      b,#51
0946  0650      ld      b,#50
0948  06ee      ld      b,#ee

; Dados de música.
094a  0f        rrca
094b  00        nop
094c  00        nop
094d  1f        rra
094e  010102    ld      bc,#0201
0951  010301    ld      bc,#0103
0954  04        inc     b
0955  010501    ld      bc,#0105
0958  0601      ld      b,#01
095a  07        rlca
095b  010801    ld      bc,#0108
095e  09        add     hl,bc
095f  010a01    ld      bc,#010a
0962  0b        dec     bc
0963  010c01    ld      bc,#010c
0966  0d        dec     c
0967  010e02    ld      bc,#020e
096a  0f        rrca
096b  100e      djnz    #097b           ; (14)
096d  100d      djnz    #097c           ; (13)
096f  100c      djnz    #097d           ; (12)
0971  100b      djnz    #097e           ; (11)
0973  100a      djnz    #097f           ; (10)
0975  1009      djnz    #0980           ; (9)
0977  1008      djnz    #0981           ; (8)
0979  1007      djnz    #0982           ; (7)
097b  1006      djnz    #0983           ; (6)
097d  1005      djnz    #0984           ; (5)
097f  1004      djnz    #0985           ; (4)
0981  1003      djnz    #0986           ; (3)
0983  1002      djnz    #0987           ; (2)
0985  2001      jr      nz,#0988        ; (1)
0987  20ee      jr      nz,#0977        ; (-18)

; Dados de música.
0989  0f        rrca
098a  80        add     a,b
098b  2000      jr      nz,#098d        ; (0)
098d  57        ld      d,a
098e  08        ex      af,af'
098f  57        ld      d,a
0990  08        ex      af,af'
0991  57        ld      d,a
0992  08        ex      af,af'
0993  54        ld      d,h
0994  08        ex      af,af'
0995  57        ld      d,a
0996  08        ex      af,af'
0997  59        ld      e,c
0998  08        ex      af,af'
0999  57        ld      d,a
099a  08        ex      af,af'
099b  54        ld      d,h
099c  08        ex      af,af'
099d  00        nop
099e  08        ex      af,af'
099f  54        ld      d,h
09a0  08        ex      af,af'
09a1  52        ld      d,d
09a2  1854      jr      #09f8           ; (84)
09a4  08        ex      af,af'
09a5  52        ld      d,d
09a6  1057      djnz    #09ff           ; (87)
09a8  08        ex      af,af'
09a9  57        ld      d,a
09aa  04        inc     b
09ab  57        ld      d,a
09ac  04        inc     b
09ad  57        ld      d,a
09ae  08        ex      af,af'
09af  54        ld      d,h
09b0  08        ex      af,af'
09b1  57        ld      d,a
09b2  08        ex      af,af'
09b3  59        ld      e,c
09b4  08        ex      af,af'
09b5  57        ld      d,a
09b6  08        ex      af,af'
09b7  54        ld      d,h
09b8  08        ex      af,af'
09b9  00        nop
09ba  08        ex      af,af'
09bb  52        ld      d,d
09bc  08        ex      af,af'
09bd  00        nop
09be  08        ex      af,af'
09bf  54        ld      d,h
09c0  08        ex      af,af'
09c1  52        ld      d,d
09c2  08        ex      af,af'
09c3  50        ld      d,b
09c4  1000      djnz    #09c6           ; (0)
09c6  1050      djnz    #0a18           ; (80)
09c8  0c        inc     c
09c9  50        ld      d,b
09ca  04        inc     b
09cb  54        ld      d,h
09cc  08        ex      af,af'
09cd  57        ld      d,a
09ce  08        ex      af,af'
09cf  60        ld      h,b
09d0  1000      djnz    #09d2           ; (0)
09d2  1059      djnz    #0a2d           ; (89)
09d4  0c        inc     c
09d5  59        ld      e,c
09d6  04        inc     b
09d7  60        ld      h,b
09d8  08        ex      af,af'
09d9  59        ld      e,c
09da  08        ex      af,af'
09db  57        ld      d,a
09dc  1854      jr      #0a32           ; (84)
09de  04        inc     b
09df  55        ld      d,l
09e0  04        inc     b
09e1  57        ld      d,a
09e2  08        ex      af,af'
09e3  57        ld      d,a
09e4  08        ex      af,af'
09e5  54        ld      d,h
09e6  08        ex      af,af'
09e7  57        ld      d,a
09e8  08        ex      af,af'
09e9  59        ld      e,c
09ea  08        ex      af,af'
09eb  57        ld      d,a
09ec  08        ex      af,af'
09ed  54        ld      d,h
09ee  08        ex      af,af'
09ef  00        nop
09f0  08        ex      af,af'
09f1  52        ld      d,d
09f2  08        ex      af,af'
09f3  54        ld      d,h
09f4  04        inc     b
09f5  55        ld      d,l
09f6  04        inc     b
09f7  54        ld      d,h
09f8  08        ex      af,af'
09f9  52        ld      d,d
09fa  08        ex      af,af'
09fb  50        ld      d,b
09fc  1000      djnz    #09fe           ; (0)
09fe  10ee      djnz    #09ee           ; (-18)

; Dados de música.
0a00  0f        rrca
0a01  80        add     a,b
0a02  2000      jr      nz,#0a04        ; (0)
0a04  00        nop
0a05  08        ex      af,af'
0a06  50        ld      d,b
0a07  1057      djnz    #0a60           ; (87)
0a09  1054      djnz    #0a5f           ; (84)
0a0b  1057      djnz    #0a64           ; (87)
0a0d  1047      djnz    #0a56           ; (71)
0a0f  1052      djnz    #0a63           ; (82)
0a11  104b      djnz    #0a5e           ; (75)
0a13  1052      djnz    #0a67           ; (82)
0a15  1050      djnz    #0a67           ; (80)
0a17  1057      djnz    #0a70           ; (87)
0a19  1054      djnz    #0a6f           ; (84)
0a1b  1057      djnz    #0a74           ; (87)
0a1d  1047      djnz    #0a66           ; (71)
0a1f  1055      djnz    #0a76           ; (85)
0a21  1054      djnz    #0a77           ; (84)
0a23  1000      djnz    #0a25           ; (0)
0a25  1050      djnz    #0a77           ; (80)
0a27  1057      djnz    #0a80           ; (87)
0a29  1054      djnz    #0a7f           ; (84)
0a2b  1057      djnz    #0a84           ; (87)
0a2d  1055      djnz    #0a84           ; (85)
0a2f  1060      djnz    #0a91           ; (96)
0a31  1054      djnz    #0a87           ; (84)
0a33  1057      djnz    #0a8c           ; (87)
0a35  1050      djnz    #0a87           ; (80)
0a37  1057      djnz    #0a90           ; (87)
0a39  1054      djnz    #0a8f           ; (84)
0a3b  1057      djnz    #0a94           ; (87)
0a3d  1047      djnz    #0a86           ; (71)
0a3f  104b      djnz    #0a8c           ; (75)
0a41  1000      djnz    #0a43           ; (0)
0a43  20ee      jr      nz,#0a33        ; (-18)

; Dados de música.
0a45  0f        rrca
0a46  80        add     a,b
0a47  2000      jr      nz,#0a49        ; (0)
0a49  64        ld      h,h
0a4a  04        inc     b
0a4b  62        ld      h,d
0a4c  04        inc     b
0a4d  60        ld      h,b
0a4e  04        inc     b
0a4f  5b        ld      e,e
0a50  04        inc     b
0a51  59        ld      e,c
0a52  04        inc     b
0a53  5b        ld      e,e
0a54  04        inc     b
0a55  58        ld      e,b
0a56  04        inc     b
0a57  59        ld      e,c
0a58  04        inc     b
0a59  60        ld      h,b
0a5a  04        inc     b
0a5b  62        ld      h,d
0a5c  04        inc     b
0a5d  5b        ld      e,e
0a5e  04        inc     b
0a5f  60        ld      h,b
0a60  04        inc     b
0a61  62        ld      h,d
0a62  04        inc     b
0a63  64        ld      h,h
0a64  04        inc     b
0a65  60        ld      h,b
0a66  04        inc     b
0a67  62        ld      h,d
0a68  04        inc     b
0a69  64        ld      h,h
0a6a  04        inc     b
0a6b  65        ld      h,l
0a6c  04        inc     b
0a6d  64        ld      h,h
0a6e  04        inc     b
0a6f  69        ld      l,c
0a70  04        inc     b
0a71  62        ld      h,d
0a72  04        inc     b
0a73  64        ld      h,h
0a74  04        inc     b
0a75  62        ld      h,d
0a76  04        inc     b
0a77  69        ld      l,c
0a78  04        inc     b
0a79  60        ld      h,b
0a7a  04        inc     b
0a7b  62        ld      h,d
0a7c  04        inc     b
0a7d  60        ld      h,b
0a7e  04        inc     b
0a7f  69        ld      l,c
0a80  04        inc     b
0a81  5b        ld      e,e
0a82  04        inc     b
0a83  60        ld      h,b
0a84  04        inc     b
0a85  5b        ld      e,e
0a86  04        inc     b
0a87  6b        ld      l,e
0a88  04        inc     b
0a89  54        ld      d,h
0a8a  04        inc     b
0a8b  64        ld      h,h
0a8c  04        inc     b
0a8d  69        ld      l,c
0a8e  04        inc     b
0a8f  64        ld      h,h
0a90  04        inc     b
0a91  59        ld      e,c
0a92  08        ex      af,af'
0a93  00        nop
0a94  08        ex      af,af'
0a95  ee        db      #ee

; Dados de música.
0a96  0f        db      #0f
0a97  40        ld      b,b
0a98  1010      djnz    #0aaa           ; (16)
0a9a  7b        ld      a,e
0a9b  012002    ld      bc,#0220
0a9e  00        nop
0a9f  03        inc     bc
0aa0  80        add     a,b
0aa1  04        inc     b
0aa2  210500    ld      hl,#0005
0aa5  0681      ld      b,#81
0aa7  07        rlca
0aa8  220800    ld      (#0008),hl
0aab  09        add     hl,bc
0aac  23        inc     hl
0aad  08        ex      af,af'
0aae  00        nop
0aaf  07        rlca
0ab0  83        add     a,e
0ab1  0624      ld      b,#24
0ab3  05        dec     b
0ab4  00        nop
0ab5  04        inc     b
0ab6  84        add     a,h
0ab7  03        inc     bc
0ab8  25        dec     h
0ab9  02        ld      (bc),a
0aba  00        nop
0abb  1085      djnz    #0a42           ; (-123)
0abd  012602    ld      bc,#0226
0ac0  00        nop
0ac1  03        inc     bc
0ac2  86        add     a,(hl)
0ac3  04        inc     b
0ac4  27        daa
0ac5  05        dec     b
0ac6  00        nop
0ac7  0687      ld      b,#87
0ac9  07        rlca
0aca  2808      jr      z,#0ad4         ; (8)
0acc  00        nop
0acd  09        add     hl,bc
0ace  eeff      xor     #ff