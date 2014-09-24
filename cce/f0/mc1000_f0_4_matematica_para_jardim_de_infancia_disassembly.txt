; Disassembly of the file "D:\Emerson\mc-1000\aplicativos cassete\MATEJARD.BIN"
;
; Created with dZ80 v1.31
;
; on Wednesday, 18 of April 2007 at 05:19 PM
;
0100  00        nop
0101  ff        rst     #38
0102  ff        rst     #38
0103  ff        rst     #38
0104  010500    ld      bc,#0005
0107  ba        cp      d
0108  3645      ld      (hl),#45
010a  50        ld      d,b
010b  4d        ld      c,l
010c  3634      ld      (hl),#34
010e  0d        dec     c
010f  0a        ld      a,(bc)
0110  0d        dec     c
0111  ff        rst     #38
0112  ff        rst     #38
0113  ff        rst     #38
0114  ff        rst     #38
0115  ff        rst     #38
0116  ff        rst     #38
0117  ff        rst     #38
0118  ff        rst     #38
0119  ff        rst     #38
011a  ff        rst     #38
011b  ff        rst     #38
011c  ff        rst     #38
011d  ff        rst     #38
011e  ff        rst     #38
011f  ff        rst     #38
0120  c9        ret
 
0121  0a        ld      a,(bc)
0122  0a        ld      a,(bc)
0123  00        nop
0124  00        nop
0125  ff        rst     #38
0126  ff        rst     #38
0127  ff        rst     #38
0128  ff        rst     #38
0129  ff        rst     #38
012a  ff        rst     #38
012b  ff        rst     #38
012c  ff        rst     #38
012d  ff        rst     #38
012e  ff        rst     #38
012f  ff        rst     #38
0130  c9        ret
 
0131  ff        rst     #38
0132  ff        rst     #38
0133  ff        rst     #38
0134  ff        rst     #38
0135  ff        rst     #38
0136  ff        rst     #38
0137  ff        rst     #38
0138  ff        rst     #38
0139  00        nop
013a  ff        rst     #38
013b  ff        rst     #38
013c  ff        rst     #38
013d  ff        rst     #38
013e  ff        rst     #38
013f  ff        rst     #38
0140  ff        rst     #38
0141  ff        rst     #38
0142  00        nop
0143  ff        rst     #38
0144  ff        rst     #38
0145  ff        rst     #38
0146  ff        rst     #38
0147  ff        rst     #38
0148  ff        rst     #38
0149  ff        rst     #38
014a  ff        rst     #38
014b  00        nop
014c  ff        rst     #38
014d  ff        rst     #38
014e  ff        rst     #38
014f  ff        rst     #38
0150  ff        rst     #38
0151  ff        rst     #38
0152  ff        rst     #38
0153  ff        rst     #38
0154  ff        rst     #38
0155  ff        rst     #38
0156  ff        rst     #38
0157  ff        rst     #38
0158  ff        rst     #38
0159  ff        rst     #38
015a  ff        rst     #38
015b  ff        rst     #38
015c  ff        rst     #38
015d  ff        rst     #38
015e  00        nop
015f  ff        rst     #38
0160  ff        rst     #38
0161  ff        rst     #38
0162  ff        rst     #38
0163  ff        rst     #38
0164  ff        rst     #38
0165  ff        rst     #38
0166  ff        rst     #38
0167  ff        rst     #38
0168  ff        rst     #38
0169  ff        rst     #38
016a  ff        rst     #38
016b  ff        rst     #38
016c  ff        rst     #38
016d  ff        rst     #38
016e  ff        rst     #38
016f  ff        rst     #38
0170  ff        rst     #38
0171  ff        rst     #38
0172  ff        rst     #38
0173  ff        rst     #38
0174  ff        rst     #38
0175  ff        rst     #38
0176  ff        rst     #38
0177  ff        rst     #38
0178  ff        rst     #38
0179  ff        rst     #38
017a  ff        rst     #38
017b  ff        rst     #38
017c  ff        rst     #38
017d  ff        rst     #38
017e  ff        rst     #38
017f  ff        rst     #38
0180  ff        rst     #38
0181  ff        rst     #38
0182  ff        rst     #38
0183  ff        rst     #38
0184  ff        rst     #38
0185  ff        rst     #38
0186  ff        rst     #38
0187  ff        rst     #38
0188  ff        rst     #38
0189  00        nop
018a  0e40      ld      c,#40
018c  09        add     hl,bc
018d  40        ld      b,b
018e  05        dec     b
018f  00        nop
0190  00        nop
0191  00        nop
0192  ff        rst     #38
0193  ff        rst     #38
0194  010009    ld      bc,#0900
0197  40        ld      b,b
0198  0e40      ld      c,#40
019a  00        nop
019b  00        nop
019c  a9        xor     c
019d  36ff      ld      (hl),#ff
019f  ff        rst     #38
01a0  ff        rst     #38
01a1  0e40      ld      c,#40
01a3  ff        rst     #38
01a4  ff        rst     #38
01a5  af        xor     a
01a6  3609      ld      (hl),#09
01a8  40        ld      b,b
01a9  04        inc     b
01aa  00        nop
01ab  ff        rst     #38
01ac  ff        rst     #38
01ad  ff        rst     #38
01ae  ff        rst     #38
01af  ff        rst     #38
01b0  ff        rst     #38
01b1  ff        rst     #38
01b2  ff        rst     #38
01b3  ff        rst     #38
01b4  34        inc     (hl)
01b5  ff        rst     #38
01b6  ff        rst     #38
01b7  ff        rst     #38
01b8  ff        rst     #38
01b9  ff        rst     #38
01ba  ff        rst     #38
01bb  ff        rst     #38
01bc  ff        rst     #38
01bd  09        add     hl,bc
01be  40        ld      b,b
01bf  00        nop
01c0  00        nop
01c1  010092    ld      bc,#9200
01c4  40        ld      b,b
01c5  90        sub     b
01c6  40        ld      b,b
01c7  010009    ld      bc,#0900
01ca  40        ld      b,b
01cb  05        dec     b
01cc  00        nop
01cd  8e        adc     a,(hl)
01ce  40        ld      b,b
01cf  90        sub     b
01d0  40        ld      b,b
01d1  010090    ld      bc,#9000
01d4  40        ld      b,b
01d5  00        nop
01d6  00        nop
01d7  ae        xor     (hl)
01d8  3601      ld      (hl),#01
01da  00        nop
01db  90        sub     b
01dc  40        ld      b,b
01dd  ff        rst     #38
01de  ff        rst     #38
01df  ff        rst     #38
01e0  ff        rst     #38
01e1  ff        rst     #38
01e2  ff        rst     #38
01e3  ff        rst     #38
01e4  ff        rst     #38
01e5  ff        rst     #38
01e6  ff        rst     #38
01e7  ff        rst     #38
01e8  ff        rst     #38
01e9  ff        rst     #38
01ea  ff        rst     #38
01eb  ff        rst     #38
01ec  ff        rst     #38
01ed  ff        rst     #38
01ee  ff        rst     #38
01ef  ff        rst     #38
01f0  ff        rst     #38
01f1  ff        rst     #38
01f2  ff        rst     #38
01f3  ff        rst     #38
01f4  ff        rst     #38
01f5  ff        rst     #38
01f6  ff        rst     #38
01f7  ff        rst     #38
01f8  ff        rst     #38
01f9  ff        rst     #38
01fa  ff        rst     #38
01fb  ff        rst     #38
01fc  ff        rst     #38
01fd  ff        rst     #38
01fe  ff        rst     #38
01ff  ff        rst     #38
0200  c3260c    jp      #0c26
0203  c3720c    jp      #0c72
0206  c37c0d    jp      #0d7c
0209  c36a0e    jp      #0e6a
020c  c35c10    jp      #105c
020f  3ea1      ld      a,#a1
0211  81        add     a,c
0212  81        add     a,c
0213  83        add     a,e
0214  61        ld      h,c
0215  85        add     a,l
0216  69        ld      l,c
0217  85        add     a,l
0218  a9        xor     c
0219  86        add     a,(hl)
021a  71        ld      (hl),c
021b  85        add     a,l
021c  b1        or      c
021d  86        add     a,(hl)
021e  b9        cp      c
021f  81        add     a,c
0220  99        sbc     a,c
0221  83        add     a,e
0222  79        ld      a,c
0223  85        add     a,l
0224  ff        rst     #38
0225  00        nop
0226  00        nop
0227  00        nop
0228  00        nop
0229  00        nop
022a  00        nop
022b  00        nop
022c  00        nop
022d  00        nop
022e  00        nop
022f  ff        rst     #38
0230  00        nop
0231  02        ld      (bc),a
0232  326609    ld      (#0966),a
0235  3e05      ld      a,#05
0237  324e09    ld      (#094e),a
023a  210000    ld      hl,#0000
023d  22231b    ld      (#1b23),hl
0240  80        add     a,b
0241  82        add     a,d
0242  84        add     a,h
0243  9a        sbc     a,d
0244  81        add     a,c
0245  f5        push    af
0246  d380      out     (#80),a
0248  0600      ld      b,#00
024a  cd30ff    call    #ff30
024d  216d81    ld      hl,#816d
0250  112000    ld      de,#0020
0253  01070d    ld      bc,#0d07
0256  e5        push    hl
0257  3655      ld      (hl),#55
0259  23        inc     hl
025a  0d        dec     c
025b  c25702    jp      nz,#0257
025e  e1        pop     hl
025f  0e07      ld      c,#07
0261  19        add     hl,de
0262  05        dec     b
0263  c25602    jp      nz,#0256
0266  11e902    ld      de,#02e9
0269  cdd908    call    #08d9
026c  0e00      ld      c,#00
026e  04        inc     b
026f  11c981    ld      de,#81c9
0272  cd42c0    call    #c042
0275  14        inc     d
0276  55        ld      d,l
0277  14        inc     d
0278  14        inc     d
0279  41        ld      b,c
027a  14        inc     d
027b  3c        inc     a
027c  ff        rst     #38
027d  3c        inc     a
027e  41        ld      b,c
027f  14        inc     d
0280  41        ld      b,c
0281  82        add     a,d
0282  2882      jr      z,#0206         ; (-126)
0284  c33cc3    jp      #c33c
0287  14        inc     d
0288  41        ld      b,c
0289  14        inc     d
028a  3c        inc     a
028b  c33c00    jp      #003c
028e  8d        adc     a,l
028f  6e        ld      l,(hl)
0290  6e        ld      l,(hl)
0291  7a        ld      a,d
0292  84        add     a,h
0293  25        dec     h
0294  34        inc     (hl)
0295  00        nop
0296  00        nop
0297  0600      ld      b,#00
0299  2000      jr      nz,#029b        ; (0)
029b  fa0001    jp      m,#0100
029e  0f        rrca
029f  04        inc     b
02a0  f0        ret     p
 
02a1  2000      jr      nz,#02a3        ; (0)
02a3  0100fa    ld      bc,#fa00
02a6  00        nop
02a7  010020    ld      bc,#2000
02aa  00        nop
02ab  010002    ld      bc,#0200
02ae  00        nop
02af  010001    ld      bc,#0100
02b2  00        nop
02b3  fa00ff    jp      m,#ff00
02b6  210c09    ld      hl,#090c
02b9  0603      ld      b,#03
02bb  00        nop
02bc  0613      ld      b,#13
02be  03        inc     bc
02bf  1000      djnz    #02c1           ; (0)
02c1  33        inc     sp
02c2  34        inc     (hl)
02c3  44        ld      b,h
02c4  45        ld      b,l
02c5  55        ld      d,l
02c6  3d        dec     a
02c7  f5        push    af
02c8  010508    ld      bc,#0805
02cb  d5        push    de
02cc  e5        push    hl
02cd  cd6803    call    #0368
02d0  e1        pop     hl
02d1  d1        pop     de
02d2  f1        pop     af
02d3  c8        ret     z
 
02d4  010600    ld      bc,#0006
02d7  09        add     hl,bc
02d8  c3c602    jp      #02c6
02db  2a0701    ld      hl,(#0107)
02de  67        ld      h,a
02df  25        dec     h
02e0  4f        ld      c,a
02e1  cd2dc0    call    #c02d
02e4  7c        ld      a,h
02e5  c9        ret
 
02e6  c5        push    bc
02e7  cd27c0    call    #c027
02ea  c1        pop     bc
02eb  c0        ret     nz
 
02ec  05        dec     b
02ed  c2e602    jp      nz,#02e6
02f0  c9        ret
 
02f1  3e08      ld      a,#08
02f3  f5        push    af
02f4  2a3f02    ld      hl,(#023f)
02f7  118d02    ld      de,#028d
02fa  1a        ld      a,(de)
02fb  13        inc     de
02fc  0600      ld      b,#00
02fe  4f        ld      c,a
02ff  09        add     hl,bc
0300  d5        push    de
0301  e5        push    hl
0302  010103    ld      bc,#0301
0305  af        xor     a
0306  cd5603    call    #0356
0309  e1        pop     hl
030a  d1        pop     de
030b  f1        pop     af
030c  3d        dec     a
030d  c8        ret     z
 
030e  f5        push    af
030f  c3fa02    jp      #02fa
0312  0608      ld      b,#08
0314  c5        push    bc
0315  2a3f02    ld      hl,(#023f)
0318  eb        ex      de,hl
0319  218d02    ld      hl,#028d
031c  0600      ld      b,#00
031e  4e        ld      c,(hl)
031f  23        inc     hl
0320  eb        ex      de,hl
0321  09        add     hl,bc
0322  d5        push    de
0323  f5        push    af
0324  e5        push    hl
0325  cd4903    call    #0349
0328  2a0701    ld      hl,(#0107)
032b  09        add     hl,bc
032c  217502    ld      hl,#0275
032f  09        add     hl,bc
0330  d1        pop     de
0331  eb        ex      de,hl
0332  f1        pop     af
0333  e5        push    hl
0334  17        rla
0335  f5        push    af
0336  d23f03    jp      nc,#033f
0339  010103    ld      bc,#0301
033c  cd6803    call    #0368
033f  f1        pop     af
0340  d1        pop     de
0341  e1        pop     hl
0342  c1        pop     bc
0343  05        dec     b
0344  c8        ret     z
 
0345  c5        push    bc
0346  c31c03    jp      #031c
0349  3e08      ld      a,#08
034b  cddb02    call    #02db
034e  0e03      ld      c,#03
0350  cd2ac0    call    #c02a
0353  e5        push    hl
0354  c1        pop     bc
0355  c9        ret
 
0356  113a02    ld      de,#023a
0359  12        ld      (de),a
035a  e5        push    hl
035b  216b03    ld      hl,#036b
035e  3600      ld      (hl),#00
0360  e3        ex      (sp),hl
0361  cd6803    call    #0368
0364  e1        pop     hl
0365  3613      ld      (hl),#13
0367  c9        ret
 
0368  c5        push    bc
0369  e5        push    hl
036a  1a        ld      a,(de)
036b  13        inc     de
036c  77        ld      (hl),a
036d  23        inc     hl
036e  0d        dec     c
036f  c26a03    jp      nz,#036a
0372  78        ld      a,b
0373  e1        pop     hl
0374  c1        pop     bc
0375  47        ld      b,a
0376  05        dec     b
0377  c8        ret     z
 
0378  c5        push    bc
0379  012000    ld      bc,#0020
037c  09        add     hl,bc
037d  c1        pop     bc
037e  c36803    jp      #0368
0381  2a0701    ld      hl,(#0107)
0384  7d        ld      a,l
0385  cd1203    call    #0312
0388  016400    ld      bc,#0064
038b  cd48c0    call    #c048
038e  cdf102    call    #02f1
0391  016400    ld      bc,#0064
0394  cd48c0    call    #c048
0397  c9        ret
 
0398  2a4102    ld      hl,(#0241)
039b  fe06      cp      #06
039d  d2c103    jp      nc,#03c1
03a0  4f        ld      c,a
03a1  0d        dec     c
03a2  c5        push    bc
03a3  78        ld      a,b
03a4  e60f      and     #0f
03a6  0600      ld      b,#00
03a8  4f        ld      c,a
03a9  09        add     hl,bc
03aa  010508    ld      bc,#0805
03ad  e5        push    hl
03ae  d5        push    de
03af  cd6803    call    #0368
03b2  d1        pop     de
03b3  e1        pop     hl
03b4  c1        pop     bc
03b5  79        ld      a,c
03b6  b7        or      a
03b7  c8        ret     z
 
03b8  0d        dec     c
03b9  c5        push    bc
03ba  010600    ld      bc,#0006
03bd  09        add     hl,bc
03be  c3aa03    jp      #03aa
03c1  4f        ld      c,a
03c2  c5        push    bc
03c3  78        ld      a,b
03c4  e60f      and     #0f
03c6  4f        ld      c,a
03c7  0600      ld      b,#00
03c9  09        add     hl,bc
03ca  c1        pop     bc
03cb  e5        push    hl
03cc  d5        push    de
03cd  59        ld      e,c
03ce  1600      ld      d,#00
03d0  21bb02    ld      hl,#02bb
03d3  19        add     hl,de
03d4  4e        ld      c,(hl)
03d5  d1        pop     de
03d6  e1        pop     hl
03d7  c5        push    bc
03d8  e5        push    hl
03d9  79        ld      a,c
03da  e60f      and     #0f
03dc  cdc602    call    #02c6
03df  e1        pop     hl
03e0  c1        pop     bc
03e1  d5        push    de
03e2  78        ld      a,b
03e3  e6f0      and     #f0
03e5  c2ee03    jp      nz,#03ee
03e8  114001    ld      de,#0140
03eb  c3f103    jp      #03f1
03ee  114301    ld      de,#0143
03f1  19        add     hl,de
03f2  d1        pop     de
03f3  79        ld      a,c
03f4  0f        rrca
03f5  0f        rrca
03f6  0f        rrca
03f7  0f        rrca
03f8  e60f      and     #0f
03fa  cdc602    call    #02c6
03fd  c9        ret
 
03fe  f5        push    af
03ff  cd1b04    call    #041b
0402  f1        pop     af
0403  4f        ld      c,a
0404  21b602    ld      hl,#02b6
0407  0600      ld      b,#00
0409  09        add     hl,bc
040a  46        ld      b,(hl)
040b  cd9803    call    #0398
040e  c9        ret
 
040f  3e8a      ld      a,#8a
0411  d380      out     (#80),a
0413  cde602    call    #02e6
0416  3e88      ld      a,#88
0418  d380      out     (#80),a
041a  c9        ret
 
041b  3e0a      ld      a,#0a
041d  cddb02    call    #02db
0420  0e28      ld      c,#28
0422  cd2ac0    call    #c02a
0425  11cb11    ld      de,#11cb
0428  19        add     hl,de
0429  eb        ex      de,hl
042a  c9        ret
 
042b  3e88      ld      a,#88
042d  d380      out     (#80),a
042f  cd39c0    call    #c039
0432  21ad80    ld      hl,#80ad
0435  01070b    ld      bc,#0b07
0438  3eaa      ld      a,#aa
043a  cd5603    call    #0356
043d  21ee80    ld      hl,#80ee
0440  010507    ld      bc,#0705
0443  af        xor     a
0444  cd5603    call    #0356
0447  210982    ld      hl,#8209
044a  010f04    ld      bc,#040f
044d  3eff      ld      a,#ff
044f  cd5603    call    #0356
0452  210c82    ld      hl,#820c
0455  010902    ld      bc,#0209
0458  af        xor     a
0459  cd5603    call    #0356
045c  218d82    ld      hl,#828d
045f  010709    ld      bc,#0907
0462  3eff      ld      a,#ff
0464  cd5603    call    #0356
0467  21cd82    ld      hl,#82cd
046a  119502    ld      de,#0295
046d  cd51c0    call    #c051
0470  218103    ld      hl,#0381
0473  222101    ld      (#0121),hl
0476  212001    ld      hl,#0120
0479  36c3      ld      (hl),#c3
047b  217211    ld      hl,#1172
047e  224901    ld      (#0149),hl
0481  3e6d      ld      a,#6d
0483  324b01    ld      (#014b),a
0486  c9        ret
 
0487  218284    ld      hl,#8482
048a  012014    ld      bc,#1420
048d  af        xor     a
048e  cd5603    call    #0356
0491  c9        ret
 
0492  7c        ld      a,h
0493  ba        cp      d
0494  daa704    jp      c,#04a7
0497  ca9c04    jp      z,#049c
049a  af        xor     a
049b  c9        ret
 
049c  7d        ld      a,l
049d  bb        cp      e
049e  daa704    jp      c,#04a7
04a1  c29a04    jp      nz,#049a
04a4  3e02      ld      a,#02
04a6  c9        ret
 
04a7  3e01      ld      a,#01
04a9  c9        ret
 
04aa  2a3b02    ld      hl,(#023b)
04ad  e5        push    hl
04ae  01040b    ld      bc,#0b04
04b1  3eaa      ld      a,#aa
04b3  cd5603    call    #0356
04b6  e1        pop     hl
04b7  112000    ld      de,#0020
04ba  19        add     hl,de
04bb  e5        push    hl
04bc  115b13    ld      de,#135b
04bf  cd51c0    call    #c051
04c2  e1        pop     hl
04c3  110500    ld      de,#0005
04c6  19        add     hl,de
04c7  119013    ld      de,#1390
04ca  cd51c0    call    #c051
04cd  c9        ret
 
04ce  3a3d02    ld      a,(#023d)
04d1  2a3b02    ld      hl,(#023b)
04d4  e5        push    hl
04d5  116100    ld      de,#0061
04d8  19        add     hl,de
04d9  eb        ex      de,hl
04da  47        ld      b,a
04db  0e00      ld      c,#00
04dd  cd42c0    call    #c042
04e0  e1        pop     hl
04e1  3a3e02    ld      a,(#023e)
04e4  11c1ff    ld      de,#ffc1
04e7  19        add     hl,de
04e8  e5        push    hl
04e9  f5        push    af
04ea  010202    ld      bc,#0202
04ed  cd5603    call    #0356
04f0  f1        pop     af
04f1  e1        pop     hl
04f2  f5        push    af
04f3  11a001    ld      de,#01a0
04f6  19        add     hl,de
04f7  010202    ld      bc,#0202
04fa  cd5603    call    #0356
04fd  f1        pop     af
04fe  0f        rrca
04ff  0f        rrca
0500  323e02    ld      (#023e),a
0503  214602    ld      hl,#0246
0506  7e        ld      a,(hl)
0507  3c        inc     a
0508  77        ld      (hl),a
0509  23        inc     hl
050a  46        ld      b,(hl)
050b  b8        cp      b
050c  ca1905    jp      z,#0519
050f  cd1807    call    #0718
0512  011400    ld      bc,#0014
0515  cd48c0    call    #c048
0518  c9        ret
 
0519  2a4302    ld      hl,(#0243)
051c  2b        dec     hl
051d  118781    ld      de,#8187
0520  cd9204    call    #0492
0523  fe02      cp      #02
0525  c24405    jp      nz,#0544
0528  3e8a      ld      a,#8a
052a  d380      out     (#80),a
052c  01dc05    ld      bc,#05dc
052f  cd48c0    call    #c048
0532  cd5b05    call    #055b
0535  3e88      ld      a,#88
0537  d380      out     (#80),a
0539  0601      ld      b,#01
053b  cdef07    call    #07ef
053e  cdd106    call    #06d1
0541  219a81    ld      hl,#819a
0544  224302    ld      (#0243),hl
0547  cd5b05    call    #055b
054a  af        xor     a
054b  324602    ld      (#0246),a
054e  cd1807    call    #0718
0551  cd6107    call    #0761
0554  011400    ld      bc,#0014
0557  cd48c0    call    #c048
055a  c9        ret
 
055b  010630    ld      bc,#3006
055e  af        xor     a
055f  cd5603    call    #0356
0562  c9        ret
 
0563  2a3b02    ld      hl,(#023b)
0566  e5        push    hl
0567  fe49      cp      #49
0569  c27805    jp      nz,#0578
056c  11e0ff    ld      de,#ffe0
056f  19        add     hl,de
0570  112081    ld      de,#8120
0573  0600      ld      b,#00
0575  c38605    jp      #0586
0578  fe51      cp      #51
057a  c2a805    jp      nz,#05a8
057d  112000    ld      de,#0020
0580  19        add     hl,de
0581  116086    ld      de,#8660
0584  0601      ld      b,#01
0586  cd9204    call    #0492
0589  fe02      cp      #02
058b  caa805    jp      z,#05a8
058e  a8        xor     b
058f  c2a805    jp      nz,#05a8
0592  223b02    ld      (#023b),hl
0595  e1        pop     hl
0596  11c0ff    ld      de,#ffc0
0599  19        add     hl,de
059a  01070f    ld      bc,#0f07
059d  af        xor     a
059e  cd5603    call    #0356
05a1  cdaa04    call    #04aa
05a4  cdce04    call    #04ce
05a7  c9        ret
 
05a8  e1        pop     hl
05a9  c9        ret
 
05aa  2b        dec     hl
05ab  cd9204    call    #0492
05ae  fe01      cp      #01
05b0  c8        ret     z
 
05b1  af        xor     a
05b2  77        ld      (hl),a
05b3  e5        push    hl
05b4  d5        push    de
05b5  010300    ld      bc,#0003
05b8  cd48c0    call    #c048
05bb  d1        pop     de
05bc  e1        pop     hl
05bd  c3aa05    jp      #05aa
05c0  af        xor     a
05c1  12        ld      (de),a
05c2  13        inc     de
05c3  cd9204    call    #0492
05c6  fe02      cp      #02
05c8  c8        ret     z
 
05c9  e5        push    hl
05ca  d5        push    de
05cb  010300    ld      bc,#0003
05ce  cd48c0    call    #c048
05d1  d1        pop     de
05d2  e1        pop     hl
05d3  c3c005    jp      #05c0
05d6  1600      ld      d,#00
05d8  7e        ld      a,(hl)
05d9  fe55      cp      #55
05db  c2e005    jp      nz,#05e0
05de  af        xor     a
05df  c9        ret
 
05e0  feff      cp      #ff
05e2  c2e805    jp      nz,#05e8
05e5  3e01      ld      a,#01
05e7  c9        ret
 
05e8  3655      ld      (hl),#55
05ea  23        inc     hl
05eb  14        inc     d
05ec  7a        ld      a,d
05ed  fe18      cp      #18
05ef  c2f505    jp      nz,#05f5
05f2  3e02      ld      a,#02
05f4  c9        ret
 
05f5  e5        push    hl
05f6  010300    ld      bc,#0003
05f9  cd48c0    call    #c048
05fc  e1        pop     hl
05fd  c3d805    jp      #05d8
0600  2a3b02    ld      hl,(#023b)
0603  112500    ld      de,#0025
0606  19        add     hl,de
0607  e5        push    hl
0608  11b313    ld      de,#13b3
060b  cd51c0    call    #c051
060e  e1        pop     hl
060f  118000    ld      de,#0080
0612  19        add     hl,de
0613  e5        push    hl
0614  cdd605    call    #05d6
0617  d1        pop     de
0618  d5        push    de
0619  b7        or      a
061a  ca6106    jp      z,#0661
061d  fe01      cp      #01
061f  c22806    jp      nz,#0628
0622  cdaa05    call    #05aa
0625  c3a806    jp      #06a8
0628  e5        push    hl
0629  cdc005    call    #05c0
062c  e1        pop     hl
062d  e3        ex      (sp),hl
062e  cda906    call    #06a9
0631  e1        pop     hl
0632  e5        push    hl
0633  11d613    ld      de,#13d6
0636  d5        push    de
0637  cd51c0    call    #c051
063a  013c00    ld      bc,#003c
063d  cd48c0    call    #c048
0640  d1        pop     de
0641  e1        pop     hl
0642  e5        push    hl
0643  cd54c0    call    #c054
0646  e1        pop     hl
0647  e5        push    hl
0648  11e313    ld      de,#13e3
064b  d5        push    de
064c  cd51c0    call    #c051
064f  014600    ld      bc,#0046
0652  cd48c0    call    #c048
0655  d1        pop     de
0656  e1        pop     hl
0657  cd54c0    call    #c054
065a  cd1807    call    #0718
065d  cd6107    call    #0761
0660  c9        ret
 
0661  e5        push    hl
0662  cdc005    call    #05c0
0665  e1        pop     hl
0666  cd8a07    call    #078a
0669  cdab07    call    #07ab
066c  f5        push    af
066d  2a4302    ld      hl,(#0243)
0670  2b        dec     hl
0671  cd5b05    call    #055b
0674  f1        pop     af
0675  feff      cp      #ff
0677  c2a206    jp      nz,#06a2
067a  3a3702    ld      a,(#0237)
067d  fe01      cp      #01
067f  c28906    jp      nz,#0689
0682  3eff      ld      a,#ff
0684  323702    ld      (#0237),a
0687  e1        pop     hl
0688  c9        ret
 
0689  0600      ld      b,#00
068b  cdef07    call    #07ef
068e  e1        pop     hl
068f  e5        push    hl
0690  cda906    call    #06a9
0693  01dc05    ld      bc,#05dc
0696  cd48c0    call    #c048
0699  219a81    ld      hl,#819a
069c  224302    ld      (#0243),hl
069f  cdd106    call    #06d1
06a2  cd1807    call    #0718
06a5  cd6107    call    #0761
06a8  e1        pop     hl
06a9  1180ff    ld      de,#ff80
06ac  19        add     hl,de
06ad  119013    ld      de,#1390
06b0  cd51c0    call    #c051
06b3  c9        ret
 
06b4  0e03      ld      c,#03
06b6  3a4502    ld      a,(#0245)
06b9  0f        rrca
06ba  0f        rrca
06bb  47        ld      b,a
06bc  dac406    jp      c,#06c4
06bf  3e55      ld      a,#55
06c1  c3c606    jp      #06c6
06c4  3eff      ld      a,#ff
06c6  77        ld      (hl),a
06c7  112000    ld      de,#0020
06ca  19        add     hl,de
06cb  0d        dec     c
06cc  c8        ret     z
 
06cd  78        ld      a,b
06ce  c3b906    jp      #06b9
06d1  212001    ld      hl,#0120
06d4  36c9      ld      (hl),#c9
06d6  e5        push    hl
06d7  213802    ld      hl,#0238
06da  3602      ld      (hl),#02
06dc  23        inc     hl
06dd  3604      ld      (hl),#04
06df  214502    ld      hl,#0245
06e2  36f5      ld      (hl),#f5
06e4  214802    ld      hl,#0248
06e7  3e04      ld      a,#04
06e9  f5        push    af
06ea  e5        push    hl
06eb  cd27c0    call    #c027
06ee  3e0a      ld      a,#0a
06f0  cddb02    call    #02db
06f3  b7        or      a
06f4  caeb06    jp      z,#06eb
06f7  e1        pop     hl
06f8  cd0b08    call    #080b
06fb  e5        push    hl
06fc  05        dec     b
06fd  caeb06    jp      z,#06eb
0700  79        ld      a,c
0701  f5        push    af
0702  f5        push    af
0703  cd27c0    call    #c027
0706  f1        pop     af
0707  3d        dec     a
0708  c20207    jp      nz,#0702
070b  f1        pop     af
070c  e1        pop     hl
070d  77        ld      (hl),a
070e  23        inc     hl
070f  f1        pop     af
0710  3d        dec     a
0711  c2e906    jp      nz,#06e9
0714  e1        pop     hl
0715  36c3      ld      (hl),#c3
0717  c9        ret
 
0718  2a4302    ld      hl,(#0243)
071b  3a3802    ld      a,(#0238)
071e  47        ld      b,a
071f  3a4502    ld      a,(#0245)
0722  0f        rrca
0723  05        dec     b
0724  c22207    jp      nz,#0722
0727  324502    ld      (#0245),a
072a  014802    ld      bc,#0248
072d  0a        ld      a,(bc)
072e  feff      cp      #ff
0730  c8        ret     z
 
0731  fe0a      cp      #0a
0733  03        inc     bc
0734  da3e07    jp      c,#073e
0737  118001    ld      de,#0180
073a  19        add     hl,de
073b  c32d07    jp      #072d
073e  e5        push    hl
073f  c5        push    bc
0740  e5        push    hl
0741  115b13    ld      de,#135b
0744  cd51c0    call    #c051
0747  e1        pop     hl
0748  115f00    ld      de,#005f
074b  19        add     hl,de
074c  e5        push    hl
074d  cdb406    call    #06b4
0750  e1        pop     hl
0751  110500    ld      de,#0005
0754  19        add     hl,de
0755  cdb406    call    #06b4
0758  78        ld      a,b
0759  324502    ld      (#0245),a
075c  c1        pop     bc
075d  e1        pop     hl
075e  c33707    jp      #0737
0761  2a4302    ld      hl,(#0243)
0764  014802    ld      bc,#0248
0767  0a        ld      a,(bc)
0768  feff      cp      #ff
076a  c8        ret     z
 
076b  fe0a      cp      #0a
076d  03        inc     bc
076e  da7807    jp      c,#0778
0771  118001    ld      de,#0180
0774  19        add     hl,de
0775  c36707    jp      #0767
0778  e5        push    hl
0779  c5        push    bc
077a  114100    ld      de,#0041
077d  19        add     hl,de
077e  eb        ex      de,hl
077f  47        ld      b,a
0780  0e00      ld      c,#00
0782  cd42c0    call    #c042
0785  c1        pop     bc
0786  e1        pop     hl
0787  c37107    jp      #0771
078a  0e00      ld      c,#00
078c  110083    ld      de,#8300
078f  cd9204    call    #0492
0792  fe01      cp      #01
0794  c8        ret     z
 
0795  0c        inc     c
0796  110084    ld      de,#8400
0799  cd9204    call    #0492
079c  fe01      cp      #01
079e  c8        ret     z
 
079f  0c        inc     c
07a0  110086    ld      de,#8600
07a3  cd9204    call    #0492
07a6  fe01      cp      #01
07a8  c8        ret     z
 
07a9  0c        inc     c
07aa  c9        ret
 
07ab  214802    ld      hl,#0248
07ae  0600      ld      b,#00
07b0  09        add     hl,bc
07b1  46        ld      b,(hl)
07b2  3a3d02    ld      a,(#023d)
07b5  b8        cp      b
07b6  c0        ret     nz
 
07b7  78        ld      a,b
07b8  f680      or      #80
07ba  77        ld      (hl),a
07bb  213902    ld      hl,#0239
07be  35        dec     (hl)
07bf  7e        ld      a,(hl)
07c0  fe02      cp      #02
07c2  caca07    jp      z,#07ca
07c5  3ef5      ld      a,#f5
07c7  c3cc07    jp      #07cc
07ca  3efd      ld      a,#fd
07cc  324502    ld      (#0245),a
07cf  7e        ld      a,(hl)
07d0  2b        dec     hl
07d1  fe01      cp      #01
07d3  c2da07    jp      nz,#07da
07d6  3e08      ld      a,#08
07d8  77        ld      (hl),a
07d9  c9        ret
 
07da  fe02      cp      #02
07dc  c2e307    jp      nz,#07e3
07df  3e06      ld      a,#06
07e1  77        ld      (hl),a
07e2  c9        ret
 
07e3  fe03      cp      #03
07e5  c2ec07    jp      nz,#07ec
07e8  3e04      ld      a,#04
07ea  77        ld      (hl),a
07eb  c9        ret
 
07ec  3eff      ld      a,#ff
07ee  c9        ret
 
07ef  78        ld      a,b
07f0  b7        or      a
07f1  3a3702    ld      a,(#0237)
07f4  cafd07    jp      z,#07fd
07f7  3c        inc     a
07f8  fe06      cp      #06
07fa  c2fe07    jp      nz,#07fe
07fd  3d        dec     a
07fe  323702    ld      (#0237),a
0801  115c80    ld      de,#805c
0804  0e00      ld      c,#00
0806  47        ld      b,a
0807  cd42c0    call    #c042
080a  c9        ret
 
080b  e5        push    hl
080c  f5        push    af
080d  cd27c0    call    #c027
0810  f1        pop     af
0811  e1        pop     hl
0812  4f        ld      c,a
0813  2b        dec     hl
0814  7e        ld      a,(hl)
0815  23        inc     hl
0816  e60f      and     #0f
0818  0600      ld      b,#00
081a  b9        cp      c
081b  c0        ret     nz
 
081c  0601      ld      b,#01
081e  c9        ret
 
081f  5e        ld      e,(hl)
0820  23        inc     hl
0821  56        ld      d,(hl)
0822  23        inc     hl
0823  eb        ex      de,hl
0824  1a        ld      a,(de)
0825  b7        or      a
0826  c8        ret     z
 
0827  47        ld      b,a
0828  13        inc     de
0829  1a        ld      a,(de)
082a  13        inc     de
082b  4f        ld      c,a
082c  78        ld      a,b
082d  d5        push    de
082e  cd3508    call    #0835
0831  d1        pop     de
0832  c32408    jp      #0824
0835  f5        push    af
0836  06ff      ld      b,#ff
0838  79        ld      a,c
0839  07        rlca
083a  da4b08    jp      c,#084b
083d  07        rlca
083e  06aa      ld      b,#aa
0840  da4b08    jp      c,#084b
0843  07        rlca
0844  0655      ld      b,#55
0846  da4b08    jp      c,#084b
0849  0600      ld      b,#00
084b  79        ld      a,c
084c  e60f      and     #0f
084e  4f        ld      c,a
084f  f1        pop     af
0850  cd5408    call    #0854
0853  c9        ret
 
0854  0f        rrca
0855  da7308    jp      c,#0873
0858  0f        rrca
0859  dac708    jp      c,#08c7
085c  0f        rrca
085d  da9c08    jp      c,#089c
0860  0f        rrca
0861  daf208    jp      c,#08f2
0864  0f        rrca
0865  da7d08    jp      c,#087d
0868  0f        rrca
0869  dace08    jp      c,#08ce
086c  0f        rrca
086d  da8708    jp      c,#0887
0870  c3a308    jp      #08a3
0873  70        ld      (hl),b
0874  0d        dec     c
0875  c8        ret     z
 
0876  cdf908    call    #08f9
0879  23        inc     hl
087a  c37308    jp      #0873
087d  70        ld      (hl),b
087e  0d        dec     c
087f  c8        ret     z
 
0880  cdf908    call    #08f9
0883  2b        dec     hl
0884  c37d08    jp      #087d
0887  11e0ff    ld      de,#ffe0
088a  78        ld      a,b
088b  e6f0      and     #f0
088d  47        ld      b,a
088e  7e        ld      a,(hl)
088f  e60f      and     #0f
0891  b0        or      b
0892  77        ld      (hl),a
0893  0d        dec     c
0894  c8        ret     z
 
0895  cdf908    call    #08f9
0898  19        add     hl,de
0899  c38a08    jp      #088a
089c  112000    ld      de,#0020
089f  cd8a08    call    #088a
08a2  c9        ret
 
08a3  11e0ff    ld      de,#ffe0
08a6  78        ld      a,b
08a7  e6f0      and     #f0
08a9  c5        push    bc
08aa  47        ld      b,a
08ab  7e        ld      a,(hl)
08ac  e60f      and     #0f
08ae  b0        or      b
08af  77        ld      (hl),a
08b0  19        add     hl,de
08b1  c1        pop     bc
08b2  78        ld      a,b
08b3  e60f      and     #0f
08b5  c5        push    bc
08b6  47        ld      b,a
08b7  7e        ld      a,(hl)
08b8  e6f0      and     #f0
08ba  b0        or      b
08bb  c1        pop     bc
08bc  77        ld      (hl),a
08bd  0d        dec     c
08be  c8        ret     z
 
08bf  cdf908    call    #08f9
08c2  19        add     hl,de
08c3  23        inc     hl
08c4  c3a608    jp      #08a6
08c7  112000    ld      de,#0020
08ca  cda608    call    #08a6
08cd  c9        ret
 
08ce  11e0ff    ld      de,#ffe0
08d1  78        ld      a,b
08d2  e60f      and     #0f
08d4  c5        push    bc
08d5  47        ld      b,a
08d6  7e        ld      a,(hl)
08d7  e6f0      and     #f0
08d9  b0        or      b
08da  c1        pop     bc
08db  77        ld      (hl),a
08dc  19        add     hl,de
08dd  78        ld      a,b
08de  e6f0      and     #f0
08e0  c5        push    bc
08e1  47        ld      b,a
08e2  7e        ld      a,(hl)
08e3  e60f      and     #0f
08e5  b0        or      b
08e6  c1        pop     bc
08e7  77        ld      (hl),a
08e8  0d        dec     c
08e9  c8        ret     z
 
08ea  cdf908    call    #08f9
08ed  19        add     hl,de
08ee  2b        dec     hl
08ef  c3d108    jp      #08d1
08f2  112000    ld      de,#0020
08f5  cdd108    call    #08d1
08f8  c9        ret
 
08f9  c5        push    bc
08fa  d5        push    de
08fb  e5        push    hl
08fc  2a3202    ld      hl,(#0232)
08ff  e5        push    hl
0900  c1        pop     bc
0901  cd48c0    call    #c048
0904  e1        pop     hl
0905  d1        pop     de
0906  c1        pop     bc
0907  c9        ret
 
0908  c5        push    bc
0909  e5        push    hl
090a  7e        ld      a,(hl)
090b  12        ld      (de),a
090c  23        inc     hl
090d  13        inc     de
090e  0d        dec     c
090f  c20a09    jp      nz,#090a
0912  78        ld      a,b
0913  e1        pop     hl
0914  c1        pop     bc
0915  05        dec     b
0916  c8        ret     z
 
0917  c5        push    bc
0918  012000    ld      bc,#0020
091b  09        add     hl,bc
091c  c1        pop     bc
091d  c30809    jp      #0908
0920  e5        push    hl
0921  3a3602    ld      a,(#0236)
0924  21f413    ld      hl,#13f4
0927  110f00    ld      de,#000f
092a  3d        dec     a
092b  ca3209    jp      z,#0932
092e  19        add     hl,de
092f  c32a09    jp      #092a
0932  eb        ex      de,hl
0933  e1        pop     hl
0934  010305    ld      bc,#0503
0937  cd6803    call    #0368
093a  c9        ret
 
093b  210200    ld      hl,#0002
093e  223202    ld      (#0232),hl
0941  2a3402    ld      hl,(#0234)
0944  cd2009    call    #0920
0947  213602    ld      hl,#0236
094a  34        inc     (hl)
094b  7e        ld      a,(hl)
094c  fe05      cp      #05
094e  c25a09    jp      nz,#095a
0951  3601      ld      (hl),#01
0953  216614    ld      hl,#1466
0956  cd1f08    call    #081f
0959  c9        ret
 
095a  215914    ld      hl,#1459
095d  cd1f08    call    #081f
0960  c9        ret
 
0961  212502    ld      hl,#0225
0964  e5        push    hl
0965  d1        pop     de
0966  7e        ld      a,(hl)
0967  feff      cp      #ff
0969  c8        ret     z
 
096a  e5        push    hl
096b  d5        push    de
096c  cd27c0    call    #c027
096f  3e0a      ld      a,#0a
0971  cddb02    call    #02db
0974  fe00      cp      #00
0976  da6c09    jp      c,#096c
0979  fe0a      cp      #0a
097b  d26c09    jp      nc,#096c
097e  d1        pop     de
097f  e1        pop     hl
0980  47        ld      b,a
0981  cd9204    call    #0492
0984  fe02      cp      #02
0986  c29109    jp      nz,#0991
0989  70        ld      (hl),b
098a  23        inc     hl
098b  112502    ld      de,#0225
098e  c36609    jp      #0966
0991  1a        ld      a,(de)
0992  b8        cp      b
0993  c29c09    jp      nz,#099c
0996  112502    ld      de,#0225
0999  c36a09    jp      #096a
099c  13        inc     de
099d  cd9204    call    #0492
09a0  fe02      cp      #02
09a2  c29109    jp      nz,#0991
09a5  70        ld      (hl),b
09a6  23        inc     hl
09a7  112502    ld      de,#0225
09aa  c36609    jp      #0966
09ad  211002    ld      hl,#0210
09b0  012502    ld      bc,#0225
09b3  0a        ld      a,(bc)
09b4  03        inc     bc
09b5  feff      cp      #ff
09b7  c8        ret     z
 
09b8  5e        ld      e,(hl)
09b9  23        inc     hl
09ba  56        ld      d,(hl)
09bb  23        inc     hl
09bc  e5        push    hl
09bd  c5        push    bc
09be  eb        ex      de,hl
09bf  cd270a    call    #0a27
09c2  c1        pop     bc
09c3  e1        pop     hl
09c4  c3b309    jp      #09b3
09c7  2a3402    ld      hl,(#0234)
09ca  114100    ld      de,#0041
09cd  19        add     hl,de
09ce  011002    ld      bc,#0210
09d1  af        xor     a
09d2  f5        push    af
09d3  0a        ld      a,(bc)
09d4  feff      cp      #ff
09d6  c2dd09    jp      nz,#09dd
09d9  c1        pop     bc
09da  3eff      ld      a,#ff
09dc  c9        ret
 
09dd  5f        ld      e,a
09de  03        inc     bc
09df  0a        ld      a,(bc)
09e0  03        inc     bc
09e1  57        ld      d,a
09e2  c5        push    bc
09e3  010508    ld      bc,#0805
09e6  d5        push    de
09e7  c5        push    bc
09e8  d5        push    de
09e9  cd9204    call    #0492
09ec  fe02      cp      #02
09ee  ca0f0a    jp      z,#0a0f
09f1  13        inc     de
09f2  0d        dec     c
09f3  c2e909    jp      nz,#09e9
09f6  d1        pop     de
09f7  78        ld      a,b
09f8  c1        pop     bc
09f9  47        ld      b,a
09fa  05        dec     b
09fb  ca080a    jp      z,#0a08
09fe  e5        push    hl
09ff  212000    ld      hl,#0020
0a02  19        add     hl,de
0a03  eb        ex      de,hl
0a04  e1        pop     hl
0a05  c3e709    jp      #09e7
0a08  d1        pop     de
0a09  c1        pop     bc
0a0a  f1        pop     af
0a0b  3c        inc     a
0a0c  c3d209    jp      #09d2
0a0f  c1        pop     bc
0a10  c1        pop     bc
0a11  d1        pop     de
0a12  c1        pop     bc
0a13  f1        pop     af
0a14  c9        ret
 
0a15  e5        push    hl
0a16  212502    ld      hl,#0225
0a19  0600      ld      b,#00
0a1b  4f        ld      c,a
0a1c  09        add     hl,bc
0a1d  46        ld      b,(hl)
0a1e  3a3102    ld      a,(#0231)
0a21  b8        cp      b
0a22  e1        pop     hl
0a23  c0        ret     nz
 
0a24  3eff      ld      a,#ff
0a26  c9        ret
 
0a27  e5        push    hl
0a28  0e28      ld      c,#28
0a2a  cd2ac0    call    #c02a
0a2d  11cb11    ld      de,#11cb
0a30  19        add     hl,de
0a31  eb        ex      de,hl
0a32  e1        pop     hl
0a33  010508    ld      bc,#0805
0a36  cd6803    call    #0368
0a39  c9        ret
 
0a3a  218381    ld      hl,#8183
0a3d  b7        or      a
0a3e  c8        ret     z
 
0a3f  0604      ld      b,#04
0a41  116001    ld      de,#0160
0a44  19        add     hl,de
0a45  3d        dec     a
0a46  c8        ret     z
 
0a47  05        dec     b
0a48  c2440a    jp      nz,#0a44
0a4b  219881    ld      hl,#8198
0a4e  3d        dec     a
0a4f  c8        ret     z
 
0a50  19        add     hl,de
0a51  c34e0a    jp      #0a4e
0a54  212502    ld      hl,#0225
0a57  0600      ld      b,#00
0a59  7e        ld      a,(hl)
0a5a  23        inc     hl
0a5b  e5        push    hl
0a5c  c5        push    bc
0a5d  cd2004    call    #0420
0a60  c1        pop     bc
0a61  78        ld      a,b
0a62  c5        push    bc
0a63  d5        push    de
0a64  cd3a0a    call    #0a3a
0a67  d1        pop     de
0a68  010508    ld      bc,#0805
0a6b  cd6803    call    #0368
0a6e  c1        pop     bc
0a6f  e1        pop     hl
0a70  04        inc     b
0a71  78        ld      a,b
0a72  fe0a      cp      #0a
0a74  c2590a    jp      nz,#0a59
0a77  c9        ret
 
0a78  0600      ld      b,#00
0a7a  0eff      ld      c,#ff
0a7c  c3810a    jp      #0a81
0a7f  0eaa      ld      c,#aa
0a81  c5        push    bc
0a82  78        ld      a,b
0a83  cd3a0a    call    #0a3a
0a86  c1        pop     bc
0a87  79        ld      a,c
0a88  c5        push    bc
0a89  010508    ld      bc,#0805
0a8c  cd5603    call    #0356
0a8f  c1        pop     bc
0a90  04        inc     b
0a91  78        ld      a,b
0a92  fe0a      cp      #0a
0a94  c8        ret     z
 
0a95  fe05      cp      #05
0a97  da7a0a    jp      c,#0a7a
0a9a  c37f0a    jp      #0a7f
0a9d  f5        push    af
0a9e  cd3a0a    call    #0a3a
0aa1  f1        pop     af
0aa2  e5        push    hl
0aa3  fe05      cp      #05
0aa5  daac0a    jp      c,#0aac
0aa8  11f1ff    ld      de,#fff1
0aab  19        add     hl,de
0aac  eb        ex      de,hl
0aad  2a3402    ld      hl,(#0234)
0ab0  cd9204    call    #0492
0ab3  d1        pop     de
0ab4  c9        ret
 
0ab5  212502    ld      hl,#0225
0ab8  0e00      ld      c,#00
0aba  7e        ld      a,(hl)
0abb  23        inc     hl
0abc  feff      cp      #ff
0abe  c8        ret     z
 
0abf  47        ld      b,a
0ac0  3a3102    ld      a,(#0231)
0ac3  b8        cp      b
0ac4  c8        ret     z
 
0ac5  0c        inc     c
0ac6  c3ba0a    jp      #0aba
0ac9  2a3402    ld      hl,(#0234)
0acc  e5        push    hl
0acd  3e00      ld      a,#00
0acf  010508    ld      bc,#0805
0ad2  cd5603    call    #0356
0ad5  e1        pop     hl
0ad6  112000    ld      de,#0020
0ad9  19        add     hl,de
0ada  c9        ret
 
0adb  223402    ld      (#0234),hl
0ade  e5        push    hl
0adf  3a3102    ld      a,(#0231)
0ae2  cd2004    call    #0420
0ae5  e1        pop     hl
0ae6  010508    ld      bc,#0805
0ae9  cd6803    call    #0368
0aec  013200    ld      bc,#0032
0aef  cd48c0    call    #c048
0af2  c9        ret
 
0af3  e5        push    hl
0af4  3a3102    ld      a,(#0231)
0af7  cd2004    call    #0420
0afa  e1        pop     hl
0afb  e5        push    hl
0afc  010508    ld      bc,#0805
0aff  cd6803    call    #0368
0b02  011e00    ld      bc,#001e
0b05  cd48c0    call    #c048
0b08  e1        pop     hl
0b09  c9        ret
 
0b0a  e5        push    hl
0b0b  11e2ff    ld      de,#ffe2
0b0e  19        add     hl,de
0b0f  36aa      ld      (hl),#aa
0b11  e1        pop     hl
0b12  c9        ret
 
0b13  3e1e      ld      a,#1e
0b15  eb        ex      de,hl
0b16  f5        push    af
0b17  21e0ff    ld      hl,#ffe0
0b1a  223202    ld      (#0232),hl
0b1d  eb        ex      de,hl
0b1e  cd3a0b    call    #0b3a
0b21  f1        pop     af
0b22  3d        dec     a
0b23  f5        push    af
0b24  eb        ex      de,hl
0b25  212000    ld      hl,#0020
0b28  223202    ld      (#0232),hl
0b2b  eb        ex      de,hl
0b2c  cd3a0b    call    #0b3a
0b2f  f1        pop     af
0b30  3d        dec     a
0b31  eb        ex      de,hl
0b32  c2160b    jp      nz,#0b16
0b35  eb        ex      de,hl
0b36  223402    ld      (#0234),hl
0b39  c9        ret
 
0b3a  f5        push    af
0b3b  e5        push    hl
0b3c  010508    ld      bc,#0805
0b3f  af        xor     a
0b40  cd5603    call    #0356
0b43  3a3102    ld      a,(#0231)
0b46  cd2004    call    #0420
0b49  2a3202    ld      hl,(#0232)
0b4c  e5        push    hl
0b4d  c1        pop     bc
0b4e  e1        pop     hl
0b4f  09        add     hl,bc
0b50  e5        push    hl
0b51  010508    ld      bc,#0805
0b54  cd6803    call    #0368
0b57  e1        pop     hl
0b58  e5        push    hl
0b59  11e2ff    ld      de,#ffe2
0b5c  19        add     hl,de
0b5d  36aa      ld      (hl),#aa
0b5f  010500    ld      bc,#0005
0b62  cd48c0    call    #c048
0b65  e1        pop     hl
0b66  f1        pop     af
0b67  3d        dec     a
0b68  c23a0b    jp      nz,#0b3a
0b6b  c9        ret
 
0b6c  cd39c0    call    #c039
0b6f  210a00    ld      hl,#000a
0b72  223202    ld      (#0232),hl
0b75  210d82    ld      hl,#820d
0b78  227314    ld      (#1473),hl
0b7b  010104    ld      bc,#0401
0b7e  3eff      ld      a,#ff
0b80  cd5603    call    #0356
0b83  217314    ld      hl,#1473
0b86  cd1f08    call    #081f
0b89  211582    ld      hl,#8215
0b8c  227314    ld      (#1473),hl
0b8f  010104    ld      bc,#0401
0b92  3eff      ld      a,#ff
0b94  cd5603    call    #0356
0b97  217314    ld      hl,#1473
0b9a  cd1f08    call    #081f
0b9d  215083    ld      hl,#8350
0ba0  3eff      ld      a,#ff
0ba2  010104    ld      bc,#0401
0ba5  cd5603    call    #0356
0ba8  219614    ld      hl,#1496
0bab  cd1f08    call    #081f
0bae  21b483    ld      hl,#83b4
0bb1  3eff      ld      a,#ff
0bb3  01010d    ld      bc,#0d01
0bb6  cd5603    call    #0356
0bb9  21a514    ld      hl,#14a5
0bbc  cd1f08    call    #081f
0bbf  212001    ld      hl,#0120
0bc2  36c9      ld      (hl),#c9
0bc4  cd27c0    call    #c027
0bc7  c3c40b    jp      #0bc4
0bca  01401f    ld      bc,#1f40
0bcd  cd48c0    call    #c048
0bd0  c9        ret
 
0bd1  d5        push    de
0bd2  e5        push    hl
0bd3  114d02    ld      de,#024d
0bd6  010508    ld      bc,#0805
0bd9  cd0809    call    #0908
0bdc  e1        pop     hl
0bdd  e5        push    hl
0bde  111b12    ld      de,#121b
0be1  010508    ld      bc,#0805
0be4  cd6803    call    #0368
0be7  011e00    ld      bc,#001e
0bea  cd48c0    call    #c048
0bed  e1        pop     hl
0bee  e5        push    hl
0bef  114d02    ld      de,#024d
0bf2  010508    ld      bc,#0805
0bf5  cd6803    call    #0368
0bf8  e1        pop     hl
0bf9  d1        pop     de
0bfa  c9        ret
 
0bfb  5e        ld      e,(hl)
0bfc  23        inc     hl
0bfd  56        ld      d,(hl)
0bfe  23        inc     hl
0bff  eb        ex      de,hl
0c00  cdd10b    call    #0bd1
0c03  eb        ex      de,hl
0c04  7e        ld      a,(hl)
0c05  b7        or      a
0c06  c8        ret     z
 
0c07  47        ld      b,a
0c08  23        inc     hl
0c09  4e        ld      c,(hl)
0c0a  23        inc     hl
0c0b  e5        push    hl
0c0c  2600      ld      h,#00
0c0e  78        ld      a,b
0c0f  07        rlca
0c10  d2150c    jp      nc,#0c15
0c13  26ff      ld      h,#ff
0c15  68        ld      l,b
0c16  19        add     hl,de
0c17  d1        pop     de
0c18  c5        push    bc
0c19  cdd10b    call    #0bd1
0c1c  eb        ex      de,hl
0c1d  c1        pop     bc
0c1e  0d        dec     c
0c1f  c20b0c    jp      nz,#0c0b
0c22  eb        ex      de,hl
0c23  c3030c    jp      #0c03
0c26  310002    ld      sp,#0200
0c29  3a3002    ld      a,(#0230)
0c2c  a7        and     a
0c2d  c2400c    jp      nz,#0c40
0c30  3c        inc     a
0c31  323002    ld      (#0230),a
0c34  3ec3      ld      a,#c3
0c36  323800    ld      (#0038),a
0c39  2124c0    ld      hl,#c024
0c3c  223900    ld      (#0039),hl
0c3f  fb        ei
0c40  cd2b04    call    #042b
0c43  cd27c0    call    #c027
0c46  3e01      ld      a,#01
0c48  f5        push    af
0c49  110e81    ld      de,#810e
0c4c  0e00      ld      c,#00
0c4e  cd3fc0    call    #c03f
0c51  0607      ld      b,#07
0c53  cde602    call    #02e6
0c56  f1        pop     af
0c57  f5        push    af
0c58  cdfe03    call    #03fe
0c5b  0610      ld      b,#10
0c5d  cde602    call    #02e6
0c60  0605      ld      b,#05
0c62  cd0f04    call    #040f
0c65  cd8704    call    #0487
0c68  f1        pop     af
0c69  3c        inc     a
0c6a  fe0b      cp      #0b
0c6c  c2480c    jp      nz,#0c48
0c6f  c3460c    jp      #0c46
0c72  cd2b04    call    #042b
0c75  cd27c0    call    #c027
0c78  ca750c    jp      z,#0c75
0c7b  3a1b01    ld      a,(#011b)
0c7e  0632      ld      b,#32
0c80  fe32      cp      #32
0c82  c28a0c    jp      nz,#0c8a
0c85  061e      ld      b,#1e
0c87  c3990c    jp      #0c99
0c8a  fe33      cp      #33
0c8c  c2940c    jp      nz,#0c94
0c8f  0612      ld      b,#12
0c91  c3990c    jp      #0c99
0c94  fe31      cp      #31
0c96  c2750c    jp      nz,#0c75
0c99  78        ld      a,b
0c9a  320f02    ld      (#020f),a
0c9d  cd8704    call    #0487
0ca0  3e8a      ld      a,#8a
0ca2  d380      out     (#80),a
0ca4  cd27c0    call    #c027
0ca7  3e0b      ld      a,#0b
0ca9  cddb02    call    #02db
0cac  b7        or      a
0cad  caa00c    jp      z,#0ca0
0cb0  f5        push    af
0cb1  cdfe03    call    #03fe
0cb4  21ee80    ld      hl,#80ee
0cb7  e5        push    hl
0cb8  010407    ld      bc,#0704
0cbb  3e00      ld      a,#00
0cbd  cd5603    call    #0356
0cc0  e1        pop     hl
0cc1  23        inc     hl
0cc2  11cc14    ld      de,#14cc
0cc5  cd51c0    call    #c051
0cc8  cd27c0    call    #c027
0ccb  c2c80c    jp      nz,#0cc8
0cce  3e88      ld      a,#88
0cd0  d380      out     (#80),a
0cd2  3a0f02    ld      a,(#020f)
0cd5  47        ld      b,a
0cd6  cde602    call    #02e6
0cd9  78        ld      a,b
0cda  f5        push    af
0cdb  21ef80    ld      hl,#80ef
0cde  010307    ld      bc,#0703
0ce1  3e00      ld      a,#00
0ce3  cd5603    call    #0356
0ce6  f1        pop     af
0ce7  c1        pop     bc
0ce8  b7        or      a
0ce9  c2f40c    jp      nz,#0cf4
0cec  0605      ld      b,#05
0cee  cd0f04    call    #040f
0cf1  c39d0c    jp      #0c9d
0cf4  3a1b01    ld      a,(#011b)
0cf7  d630      sub     #30
0cf9  fe01      cp      #01
0cfb  ca540d    jp      z,#0d54
0cfe  b8        cp      b
0cff  ca370d    jp      z,#0d37
0d02  c5        push    bc
0d03  3e8a      ld      a,#8a
0d05  d380      out     (#80),a
0d07  21f014    ld      hl,#14f0
0d0a  cdfb0b    call    #0bfb
0d0d  21f514    ld      hl,#14f5
0d10  cdfb0b    call    #0bfb
0d13  cd27c0    call    #c027
0d16  c2130d    jp      nz,#0d13
0d19  3e88      ld      a,#88
0d1b  d380      out     (#80),a
0d1d  f1        pop     af
0d1e  110e81    ld      de,#810e
0d21  d5        push    de
0d22  0e00      ld      c,#00
0d24  cd3fc0    call    #c03f
0d27  0608      ld      b,#08
0d29  cde602    call    #02e6
0d2c  e1        pop     hl
0d2d  010405    ld      bc,#0504
0d30  af        xor     a
0d31  cd5603    call    #0356
0d34  c39d0c    jp      #0c9d
0d37  78        ld      a,b
0d38  0e00      ld      c,#00
0d3a  110e81    ld      de,#810e
0d3d  cd3fc0    call    #c03f
0d40  21dd14    ld      hl,#14dd
0d43  cdfb0b    call    #0bfb
0d46  cd27c0    call    #c027
0d49  c2460d    jp      nz,#0d46
0d4c  0606      ld      b,#06
0d4e  cde602    call    #02e6
0d51  c39d0c    jp      #0c9d
0d54  b8        cp      b
0d55  ca370d    jp      z,#0d37
0d58  78        ld      a,b
0d59  fe0a      cp      #0a
0d5b  c2020d    jp      nz,#0d02
0d5e  cd27c0    call    #c027
0d61  c25e0d    jp      nz,#0d5e
0d64  0614      ld      b,#14
0d66  cde602    call    #02e6
0d69  78        ld      a,b
0d6a  b7        or      a
0d6b  060a      ld      b,#0a
0d6d  ca020d    jp      z,#0d02
0d70  3a1b01    ld      a,(#011b)
0d73  d630      sub     #30
0d75  b7        or      a
0d76  c2020d    jp      nz,#0d02
0d79  c3370d    jp      #0d37
0d7c  212001    ld      hl,#0120
0d7f  36c9      ld      (hl),#c9
0d81  cd39c0    call    #c039
0d84  219a81    ld      hl,#819a
0d87  224302    ld      (#0243),hl
0d8a  216083    ld      hl,#8360
0d8d  223b02    ld      (#023b),hl
0d90  cdaa04    call    #04aa
0d93  3ee5      ld      a,#e5
0d95  323e02    ld      (#023e),a
0d98  af        xor     a
0d99  324602    ld      (#0246),a
0d9c  323702    ld      (#0237),a
0d9f  4f        ld      c,a
0da0  3c        inc     a
0da1  323d02    ld      (#023d),a
0da4  115c80    ld      de,#805c
0da7  3e05      ld      a,#05
0da9  323702    ld      (#0237),a
0dac  47        ld      b,a
0dad  cd42c0    call    #c042
0db0  cdce04    call    #04ce
0db3  cdd106    call    #06d1
0db6  cd1807    call    #0718
0db9  cd6107    call    #0761
0dbc  212001    ld      hl,#0120
0dbf  36c9      ld      (hl),#c9
0dc1  21ce04    ld      hl,#04ce
0dc4  222101    ld      (#0121),hl
0dc7  3e8a      ld      a,#8a
0dc9  d380      out     (#80),a
0dcb  cd27c0    call    #c027
0dce  cacb0d    jp      z,#0dcb
0dd1  3a1b01    ld      a,(#011b)
0dd4  062c      ld      b,#2c
0dd6  fe32      cp      #32
0dd8  c2e00d    jp      nz,#0de0
0ddb  0620      ld      b,#20
0ddd  c3ef0d    jp      #0def
0de0  fe33      cp      #33
0de2  c2ea0d    jp      nz,#0dea
0de5  0617      ld      b,#17
0de7  c3ef0d    jp      #0def
0dea  fe31      cp      #31
0dec  c2cb0d    jp      nz,#0dcb
0def  78        ld      a,b
0df0  324702    ld      (#0247),a
0df3  3e88      ld      a,#88
0df5  d380      out     (#80),a
0df7  cd27c0    call    #c027
0dfa  c2f70d    jp      nz,#0df7
0dfd  012003    ld      bc,#0320
0e00  cd48c0    call    #c048
0e03  212001    ld      hl,#0120
0e06  36c3      ld      (hl),#c3
0e08  cd27c0    call    #c027
0e0b  ca080e    jp      z,#0e08
0e0e  d21e0e    jp      nc,#0e1e
0e11  3a1b01    ld      a,(#011b)
0e14  cd2e0e    call    #0e2e
0e17  b7        or      a
0e18  ca7c0d    jp      z,#0d7c
0e1b  c3080e    jp      #0e08
0e1e  3a1b01    ld      a,(#011b)
0e21  cd2e0e    call    #0e2e
0e24  b7        or      a
0e25  ca7c0d    jp      z,#0d7c
0e28  3a1c01    ld      a,(#011c)
0e2b  c3140e    jp      #0e14
0e2e  fe39      cp      #39
0e30  c24c0e    jp      nz,#0e4c
0e33  213d02    ld      hl,#023d
0e36  7e        ld      a,(hl)
0e37  3c        inc     a
0e38  fe0a      cp      #0a
0e3a  da3f0e    jp      c,#0e3f
0e3d  3e01      ld      a,#01
0e3f  77        ld      (hl),a
0e40  cdce04    call    #04ce
0e43  015000    ld      bc,#0050
0e46  cd48c0    call    #c048
0e49  3e01      ld      a,#01
0e4b  c9        ret
 
0e4c  fe31      cp      #31
0e4e  c2640e    jp      nz,#0e64
0e51  cd0006    call    #0600
0e54  3a3702    ld      a,(#0237)
0e57  feff      cp      #ff
0e59  ca5f0e    jp      z,#0e5f
0e5c  3e01      ld      a,#01
0e5e  c9        ret
 
0e5f  cd6c0b    call    #0b6c
0e62  af        xor     a
0e63  c9        ret
 
0e64  cd6305    call    #0563
0e67  3e01      ld      a,#01
0e69  c9        ret
 
0e6a  212001    ld      hl,#0120
0e6d  36c9      ld      (hl),#c9
0e6f  3e01      ld      a,#01
0e71  323602    ld      (#0236),a
0e74  cd7a0e    call    #0e7a
0e77  c3af0e    jp      #0eaf
0e7a  cd39c0    call    #c039
0e7d  214883    ld      hl,#8348
0e80  3e0a      ld      a,#0a
0e82  010103    ld      bc,#0301
0e85  cd5603    call    #0356
0e88  211400    ld      hl,#0014
0e8b  223202    ld      (#0232),hl
0e8e  213014    ld      hl,#1430
0e91  cd1f08    call    #081f
0e94  215914    ld      hl,#1459
0e97  cd1f08    call    #081f
0e9a  216e81    ld      hl,#816e
0e9d  223402    ld      (#0234),hl
0ea0  e5        push    hl
0ea1  114d02    ld      de,#024d
0ea4  010305    ld      bc,#0503
0ea7  cd0809    call    #0908
0eaa  e1        pop     hl
0eab  cd2009    call    #0920
0eae  c9        ret
 
0eaf  213b09    ld      hl,#093b
0eb2  222101    ld      (#0121),hl
0eb5  212001    ld      hl,#0120
0eb8  36c3      ld      (hl),#c3
0eba  cd27c0    call    #c027
0ebd  caba0e    jp      z,#0eba
0ec0  3a1b01    ld      a,(#011b)
0ec3  06a0      ld      b,#a0
0ec5  fe32      cp      #32
0ec7  c2cf0e    jp      nz,#0ecf
0eca  0678      ld      b,#78
0ecc  c3de0e    jp      #0ede
0ecf  fe33      cp      #33
0ed1  c2d90e    jp      nz,#0ed9
0ed4  0650      ld      b,#50
0ed6  c3de0e    jp      #0ede
0ed9  fe31      cp      #31
0edb  c2ba0e    jp      nz,#0eba
0ede  78        ld      a,b
0edf  320f02    ld      (#020f),a
0ee2  c3e80e    jp      #0ee8
0ee5  cd7a0e    call    #0e7a
0ee8  3e8a      ld      a,#8a
0eea  d380      out     (#80),a
0eec  cd27c0    call    #c027
0eef  cd6109    call    #0961
0ef2  cd27c0    call    #c027
0ef5  3e0a      ld      a,#0a
0ef7  cddb02    call    #02db
0efa  212502    ld      hl,#0225
0efd  4f        ld      c,a
0efe  0600      ld      b,#00
0f00  09        add     hl,bc
0f01  7e        ld      a,(hl)
0f02  323102    ld      (#0231),a
0f05  f5        push    af
0f06  cd27c0    call    #c027
0f09  c2060f    jp      nz,#0f06
0f0c  3e88      ld      a,#88
0f0e  d380      out     (#80),a
0f10  f1        pop     af
0f11  210d83    ld      hl,#830d
0f14  cd270a    call    #0a27
0f17  0628      ld      b,#28
0f19  cde602    call    #02e6
0f1c  210d83    ld      hl,#830d
0f1f  010508    ld      bc,#0805
0f22  3e55      ld      a,#55
0f24  cd5603    call    #0356
0f27  cdad09    call    #09ad
0f2a  3a0f02    ld      a,(#020f)
0f2d  47        ld      b,a
0f2e  c5        push    bc
0f2f  cd27c0    call    #c027
0f32  c1        pop     bc
0f33  c23d0f    jp      nz,#0f3d
0f36  05        dec     b
0f37  cae50e    jp      z,#0ee5
0f3a  c32e0f    jp      #0f2e
0f3d  05        dec     b
0f3e  cae50e    jp      z,#0ee5
0f41  3a1b01    ld      a,(#011b)
0f44  fe39      cp      #39
0f46  c5        push    bc
0f47  cabe0f    jp      z,#0fbe
0f4a  2a3402    ld      hl,(#0234)
0f4d  e5        push    hl
0f4e  c1        pop     bc
0f4f  fe59      cp      #59
0f51  ca940f    jp      z,#0f94
0f54  fe31      cp      #31
0f56  ca860f    jp      z,#0f86
0f59  fe49      cp      #49
0f5b  ca740f    jp      z,#0f74
0f5e  fe51      cp      #51
0f60  c22f0f    jp      nz,#0f2f
0f63  112000    ld      de,#0020
0f66  19        add     hl,de
0f67  116087    ld      de,#8760
0f6a  cd9204    call    #0492
0f6d  b7        or      a
0f6e  ca2f0f    jp      z,#0f2f
0f71  c3a00f    jp      #0fa0
0f74  11e0ff    ld      de,#ffe0
0f77  19        add     hl,de
0f78  110081    ld      de,#8100
0f7b  cd9204    call    #0492
0f7e  fe01      cp      #01
0f80  ca2f0f    jp      z,#0f2f
0f83  c3a00f    jp      #0fa0
0f86  23        inc     hl
0f87  115087    ld      de,#8750
0f8a  cd9204    call    #0492
0f8d  b7        or      a
0f8e  ca2f0f    jp      z,#0f2f
0f91  c3a00f    jp      #0fa0
0f94  2b        dec     hl
0f95  110081    ld      de,#8100
0f98  cd9204    call    #0492
0f9b  fe01      cp      #01
0f9d  ca2f0f    jp      z,#0f2f
0fa0  223402    ld      (#0234),hl
0fa3  c5        push    bc
0fa4  e3        ex      (sp),hl
0fa5  114d02    ld      de,#024d
0fa8  010305    ld      bc,#0503
0fab  d5        push    de
0fac  c5        push    bc
0fad  cd6803    call    #0368
0fb0  c1        pop     bc
0fb1  d1        pop     de
0fb2  e1        pop     hl
0fb3  e5        push    hl
0fb4  cd0809    call    #0908
0fb7  e1        pop     hl
0fb8  cd2009    call    #0920
0fbb  c32f0f    jp      #0f2f
0fbe  cdc709    call    #09c7
0fc1  feff      cp      #ff
0fc3  ca2f0f    jp      z,#0f2f
0fc6  cd150a    call    #0a15
0fc9  feff      cp      #ff
0fcb  c2ec0f    jp      nz,#0fec
0fce  210d83    ld      hl,#830d
0fd1  3a3102    ld      a,(#0231)
0fd4  cd270a    call    #0a27
0fd7  21dd14    ld      hl,#14dd
0fda  cdfb0b    call    #0bfb
0fdd  cd27c0    call    #c027
0fe0  c2dd0f    jp      nz,#0fdd
0fe3  061c      ld      b,#1c
0fe5  cde602    call    #02e6
0fe8  c1        pop     bc
0fe9  c3e50e    jp      #0ee5
0fec  3e8a      ld      a,#8a
0fee  d380      out     (#80),a
0ff0  21f014    ld      hl,#14f0
0ff3  cdfb0b    call    #0bfb
0ff6  21f514    ld      hl,#14f5
0ff9  cdfb0b    call    #0bfb
0ffc  cd27c0    call    #c027
0fff  c2fc0f    jp      nz,#0ffc
1002  0618      ld      b,#18
1004  cd0f04    call    #040f
1007  210d83    ld      hl,#830d
100a  3a3102    ld      a,(#0231)
100d  cd270a    call    #0a27
1010  f1        pop     af
1011  3a3102    ld      a,(#0231)
1014  0e00      ld      c,#00
1016  212502    ld      hl,#0225
1019  46        ld      b,(hl)
101a  b8        cp      b
101b  ca2310    jp      z,#1023
101e  23        inc     hl
101f  0c        inc     c
1020  c31910    jp      #1019
1023  79        ld      a,c
1024  211002    ld      hl,#0210
1027  b7        or      a
1028  ca3110    jp      z,#1031
102b  23        inc     hl
102c  23        inc     hl
102d  3d        dec     a
102e  c32710    jp      #1027
1031  5e        ld      e,(hl)
1032  23        inc     hl
1033  56        ld      d,(hl)
1034  eb        ex      de,hl
1035  3e0f      ld      a,#0f
1037  f5        push    af
1038  c5        push    bc
1039  e5        push    hl
103a  af        xor     a
103b  010508    ld      bc,#0805
103e  cd5603    call    #0356
1041  cd27c0    call    #c027
1044  e1        pop     hl
1045  c1        pop     bc
1046  e5        push    hl
1047  c5        push    bc
1048  78        ld      a,b
1049  cd270a    call    #0a27
104c  cd27c0    call    #c027
104f  cd27c0    call    #c027
1052  c1        pop     bc
1053  e1        pop     hl
1054  f1        pop     af
1055  3d        dec     a
1056  c23710    jp      nz,#1037
1059  c3e50e    jp      #0ee5
105c  cd39c0    call    #c039
105f  cd6109    call    #0961
1062  cd540a    call    #0a54
1065  018813    ld      bc,#1388
1068  cd48c0    call    #c048
106b  cd780a    call    #0a78
106e  212502    ld      hl,#0225
1071  7e        ld      a,(hl)
1072  feaa      cp      #aa
1074  23        inc     hl
1075  ca7110    jp      z,#1071
1078  feff      cp      #ff
107a  ca8610    jp      z,#1086
107d  cd27c0    call    #c027
1080  cd8c10    call    #108c
1083  c3a610    jp      #10a6
1086  cd6c0b    call    #0b6c
1089  c35c10    jp      #105c
108c  3e0a      ld      a,#0a
108e  cddb02    call    #02db
1091  323102    ld      (#0231),a
1094  210d80    ld      hl,#800d
1097  223402    ld      (#0234),hl
109a  e5        push    hl
109b  cd2004    call    #0420
109e  e1        pop     hl
109f  010508    ld      bc,#0805
10a2  cd6803    call    #0368
10a5  c9        ret
 
10a6  cd27c0    call    #c027
10a9  caa610    jp      z,#10a6
10ac  3a1b01    ld      a,(#011b)
10af  fe39      cp      #39
10b1  c2c010    jp      nz,#10c0
10b4  cd8c10    call    #108c
10b7  cd27c0    call    #c027
10ba  c2b710    jp      nz,#10b7
10bd  c3a610    jp      #10a6
10c0  fe51      cp      #51
10c2  c2a610    jp      nz,#10a6
10c5  cdb50a    call    #0ab5
10c8  feff      cp      #ff
10ca  c2fc10    jp      nz,#10fc
10cd  2a3402    ld      hl,(#0234)
10d0  110087    ld      de,#8700
10d3  cd9204    call    #0492
10d6  b7        or      a
10d7  c2ed10    jp      nz,#10ed
10da  cd130b    call    #0b13
10dd  cdc90a    call    #0ac9
10e0  210f80    ld      hl,#800f
10e3  af        xor     a
10e4  010136    ld      bc,#3601
10e7  cd5603    call    #0356
10ea  c36e10    jp      #106e
10ed  cdc90a    call    #0ac9
10f0  cd0a0b    call    #0b0a
10f3  cddb0a    call    #0adb
10f6  cd27c0    call    #c027
10f9  c3cd10    jp      #10cd
10fc  c5        push    bc
10fd  cdc90a    call    #0ac9
1100  cd0a0b    call    #0b0a
1103  cddb0a    call    #0adb
1106  c1        pop     bc
1107  79        ld      a,c
1108  c5        push    bc
1109  cd9d0a    call    #0a9d
110c  b7        or      a
110d  c1        pop     bc
110e  c2fc10    jp      nz,#10fc
1111  c5        push    bc
1112  0600      ld      b,#00
1114  212502    ld      hl,#0225
1117  09        add     hl,bc
1118  36aa      ld      (hl),#aa
111a  eb        ex      de,hl
111b  cdf30a    call    #0af3
111e  e5        push    hl
111f  3e00      ld      a,#00
1121  010508    ld      bc,#0805
1124  cd5603    call    #0356
1127  e1        pop     hl
1128  c1        pop     bc
1129  79        ld      a,c
112a  fe05      cp      #05
112c  d23311    jp      nc,#1133
112f  23        inc     hl
1130  c33411    jp      #1134
1133  2b        dec     hl
1134  c5        push    bc
1135  cdf30a    call    #0af3
1138  eb        ex      de,hl
1139  c1        pop     bc
113a  2a3402    ld      hl,(#0234)
113d  cd9204    call    #0492
1140  fe02      cp      #02
1142  c21111    jp      nz,#1111
1145  e5        push    hl
1146  3e00      ld      a,#00
1148  010508    ld      bc,#0805
114b  cd5603    call    #0356
114e  212800    ld      hl,#0028
1151  22030b    ld      (#0b03),hl
1154  e1        pop     hl
1155  11e0ff    ld      de,#ffe0
1158  19        add     hl,de
1159  cdf30a    call    #0af3
115c  e5        push    hl
115d  211e00    ld      hl,#001e
1160  22030b    ld      (#0b03),hl
1163  e1        pop     hl
1164  110d80    ld      de,#800d
1167  cd9204    call    #0492
116a  fe02      cp      #02
116c  c24511    jp      nz,#1145
116f  c36e10    jp      #106e
1172  0f        rrca
1173  80        add     a,b
1174  40        ld      b,b
1175  2060      jr      nz,#11d7        ; (96)
1177  2060      jr      nz,#11d9        ; (96)
1179  2067      jr      nz,#11e2        ; (103)
117b  2067      jr      nz,#11e4        ; (103)
117d  2069      jr      nz,#11e8        ; (105)
117f  2069      jr      nz,#11ea        ; (105)
1181  2067      jr      nz,#11ea        ; (103)
1183  40        ld      b,b
1184  65        ld      h,l
1185  2065      jr      nz,#11ec        ; (101)
1187  2064      jr      nz,#11ed        ; (100)
1189  2064      jr      nz,#11ef        ; (100)
118b  2062      jr      nz,#11ef        ; (98)
118d  2062      jr      nz,#11f1        ; (98)
118f  2060      jr      nz,#11f1        ; (96)
1191  40        ld      b,b
1192  67        ld      h,a
1193  2067      jr      nz,#11fc        ; (103)
1195  2065      jr      nz,#11fc        ; (101)
1197  2065      jr      nz,#11fe        ; (101)
1199  2064      jr      nz,#11ff        ; (100)
119b  2064      jr      nz,#1201        ; (100)
119d  2062      jr      nz,#1201        ; (98)
119f  40        ld      b,b
11a0  67        ld      h,a
11a1  2067      jr      nz,#120a        ; (103)
11a3  2065      jr      nz,#120a        ; (101)
11a5  2065      jr      nz,#120c        ; (101)
11a7  2064      jr      nz,#120d        ; (100)
11a9  2064      jr      nz,#120f        ; (100)
11ab  2062      jr      nz,#120f        ; (98)
11ad  40        ld      b,b
11ae  60        ld      h,b
11af  2060      jr      nz,#1211        ; (96)
11b1  2067      jr      nz,#121a        ; (103)
11b3  2067      jr      nz,#121c        ; (103)
11b5  2069      jr      nz,#1220        ; (105)
11b7  2069      jr      nz,#1222        ; (105)
11b9  2067      jr      nz,#1222        ; (103)
11bb  40        ld      b,b
11bc  65        ld      h,l
11bd  2065      jr      nz,#1224        ; (101)
11bf  2064      jr      nz,#1225        ; (100)
11c1  2064      jr      nz,#1227        ; (100)
11c3  2062      jr      nz,#1227        ; (98)
11c5  2062      jr      nz,#1229        ; (98)
11c7  2060      jr      nz,#1229        ; (96)
11c9  40        ld      b,b
11ca  ee00      xor     #00
11cc  00        nop
11cd  ff        rst     #38
11ce  00        nop
11cf  00        nop
11d0  00        nop
11d1  3f        ccf
11d2  ff        rst     #38
11d3  f3        di
11d4  00        nop
11d5  00        nop
11d6  0f        rrca
11d7  ff        rst     #38
11d8  f0        ret     p
 
11d9  00        nop
11da  00        nop
11db  03        inc     bc
11dc  ff        rst     #38
11dd  c0        ret     nz
 
11de  00        nop
11df  015028    ld      bc,#2850
11e2  15        dec     d
11e3  40        ld      b,b
11e4  00        nop
11e5  55        ld      d,l
11e6  2855      jr      z,#123d         ; (85)
11e8  00        nop
11e9  00        nop
11ea  15        dec     d
11eb  2854      jr      z,#1241         ; (84)
11ed  00        nop
11ee  00        nop
11ef  aa        xor     d
11f0  aa        xor     d
11f1  aa        xor     d
11f2  00        nop
11f3  ff        rst     #38
11f4  c1        pop     bc
11f5  41        ld      b,c
11f6  43        ld      b,e
11f7  ff        rst     #38
11f8  f0        ret     p
 
11f9  f0        ret     p
 
11fa  41        ld      b,c
11fb  0f        rrca
11fc  0f        rrca
11fd  f0        ret     p
 
11fe  0f        rrca
11ff  55        ld      d,l
1200  f0        ret     p
 
1201  0f        rrca
1202  3f        ccf
1203  00        nop
1204  55        ld      d,l
1205  00        nop
1206  fc03f0    call    m,#f003
1209  14        inc     d
120a  0f        rrca
120b  c0        ret     nz
 
120c  0f        rrca
120d  03        inc     bc
120e  d7        rst     #10
120f  c0        ret     nz
 
1210  f0        ret     p
 
1211  f0        ret     p
 
1212  3d        dec     a
1213  55        ld      d,l
1214  7c        ld      a,h
1215  0f        rrca
1216  ff        rst     #38
1217  f0        ret     p
 
1218  00        nop
1219  0f        rrca
121a  ff        rst     #38
121b  00        nop
121c  ff        rst     #38
121d  00        nop
121e  3f        ccf
121f  c0        ret     nz
 
1220  0f        rrca
1221  d7        rst     #10
1222  c0        ret     nz
 
1223  f5        push    af
1224  fc3d55    call    m,#553d
1227  7f        ld      a,a
1228  55        ld      d,l
1229  5f        ld      e,a
122a  35        dec     (hl)
122b  55        ld      d,l
122c  55        ld      d,l
122d  55        ld      d,l
122e  57        ld      d,a
122f  3d        dec     a
1230  55        ld      d,l
1231  55        ld      d,l
1232  55        ld      d,l
1233  5f        ld      e,a
1234  0f        rrca
1235  d5        push    de
1236  55        ld      d,l
1237  55        ld      d,l
1238  fc00fd    call    m,#fd00
123b  55        ld      d,l
123c  5f        ld      e,a
123d  c0        ret     nz
 
123e  00        nop
123f  03        inc     bc
1240  ff        rst     #38
1241  f0        ret     p
 
1242  00        nop
1243  00        nop
1244  00        nop
1245  00        nop
1246  00        nop
1247  00        nop
1248  02        ld      (bc),a
1249  a0        and     b
124a  00        nop
124b  00        nop
124c  00        nop
124d  282a      jr      z,#1279         ; (42)
124f  02        ld      (bc),a
1250  08        ex      af,af''
1251  28a0      jr      z,#11f3         ; (-96)
1253  0a        ld      a,(bc)
1254  02        ld      (bc),a
1255  2828      jr      z,#127f         ; (40)
1257  a0        and     b
1258  0a        ld      a,(bc)
1259  aa        xor     d
125a  aa        xor     d
125b  aa        xor     d
125c  282a      jr      z,#1288         ; (42)
125e  00        nop
125f  00        nop
1260  00        nop
1261  0a        ld      a,(bc)
1262  a0        and     b
1263  00        nop
1264  00        nop
1265  00        nop
1266  00        nop
1267  00        nop
1268  00        nop
1269  00        nop
126a  00        nop
126b  00        nop
126c  00        nop
126d  15        dec     d
126e  00        nop
126f  00        nop
1270  00        nop
1271  014050    ld      bc,#5040
1274  00        nop
1275  00        nop
1276  05        dec     b
1277  00        nop
1278  14        inc     d
1279  00        nop
127a  00        nop
127b  14        inc     d
127c  00        nop
127d  05        dec     b
127e  00        nop
127f  00        nop
1280  50        ld      d,b
1281  00        nop
1282  014001    ld      bc,#0140
1285  55        ld      d,l
1286  55        ld      d,l
1287  55        ld      d,l
1288  50        ld      d,b
1289  00        nop
128a  00        nop
128b  2a0000    ld      hl,(#0000)
128e  2aaaaa    ld      hl,(#aaaa)
1291  aa        xor     d
1292  aa        xor     d
1293  14        inc     d
1294  00        nop
1295  aa        xor     d
1296  00        nop
1297  14        inc     d
1298  55        ld      d,l
1299  00        nop
129a  2800      jr      z,#129c         ; (0)
129c  55        ld      d,l
129d  55        ld      d,l
129e  a8        xor     b
129f  282a      jr      z,#12cb         ; (42)
12a1  55        ld      d,l
12a2  55        ld      d,l
12a3  2828      jr      z,#12cd         ; (40)
12a5  2855      jr      z,#12fc         ; (85)
12a7  14        inc     d
12a8  2a28a8    ld      hl,(#a828)
12ab  14        inc     d
12ac  00        nop
12ad  02        ld      (bc),a
12ae  aa        xor     d
12af  80        add     a,b
12b0  00        nop
12b1  00        nop
12b2  0a        ld      a,(bc)
12b3  aa        xor     d
12b4  a0        and     b
12b5  00        nop
12b6  00        nop
12b7  aa        xor     d
12b8  aa        xor     d
12b9  aa        xor     d
12ba  00        nop
12bb  00        nop
12bc  00        nop
12bd  00        nop
12be  00        nop
12bf  00        nop
12c0  0a        ld      a,(bc)
12c1  a0        and     b
12c2  00        nop
12c3  0a        ld      a,(bc)
12c4  a0        and     b
12c5  2b        dec     hl
12c6  fa82af    jp      m,#af82
12c9  e8        ret     pe
 
12ca  af        xor     a
12cb  ff        rst     #38
12cc  eb        ex      de,hl
12cd  ff        rst     #38
12ce  faafff    jp      m,#ffaf
12d1  eb        ex      de,hl
12d2  ff        rst     #38
12d3  fa2bfa    jp      m,#fa2b
12d6  82        add     a,d
12d7  af        xor     a
12d8  e8        ret     pe
 
12d9  0a        ld      a,(bc)
12da  a0        and     b
12db  00        nop
12dc  0a        ld      a,(bc)
12dd  a0        and     b
12de  00        nop
12df  00        nop
12e0  00        nop
12e1  00        nop
12e2  00        nop
12e3  00        nop
12e4  00        nop
12e5  3c        inc     a
12e6  00        nop
12e7  00        nop
12e8  05        dec     b
12e9  50        ld      d,b
12ea  3c        inc     a
12eb  05        dec     b
12ec  50        ld      d,b
12ed  15        dec     d
12ee  ff        rst     #38
12ef  ff        rst     #38
12f0  ff        rst     #38
12f1  54        ld      d,h
12f2  05        dec     b
12f3  50        ld      d,b
12f4  3c        inc     a
12f5  05        dec     b
12f6  50        ld      d,b
12f7  00        nop
12f8  03        inc     bc
12f9  c3c000    jp      #00c0
12fc  00        nop
12fd  0f        rrca
12fe  00        nop
12ff  f0        ret     p
 
1300  00        nop
1301  00        nop
1302  ff        rst     #38
1303  00        nop
1304  ff        rst     #38
1305  00        nop
1306  00        nop
1307  ff        rst     #38
1308  00        nop
1309  ff        rst     #38
130a  00        nop
130b  00        nop
130c  00        nop
130d  00        nop
130e  00        nop
130f  00        nop
1310  00        nop
1311  aa        xor     d
1312  aa        xor     d
1313  aa        xor     d
1314  80        add     a,b
1315  00        nop
1316  a5        and     l
1317  55        ld      d,l
1318  5a        ld      e,d
1319  80        add     a,b
131a  00        nop
131b  a5        and     l
131c  55        ld      d,l
131d  5a        ld      e,d
131e  80        add     a,b
131f  0a        ld      a,(bc)
1320  aa        xor     d
1321  aa        xor     d
1322  aa        xor     d
1323  a0        and     b
1324  a8        xor     b
1325  00        nop
1326  00        nop
1327  00        nop
1328  2aaaaa    ld      hl,(#aaaa)
132b  aa        xor     d
132c  aa        xor     d
132d  aa        xor     d
132e  00        nop
132f  00        nop
1330  00        nop
1331  00        nop
1332  00        nop
1333  00        nop
1334  ff        rst     #38
1335  55        ld      d,l
1336  ff        rst     #38
1337  00        nop
1338  00        nop
1339  ff        rst     #38
133a  55        ld      d,l
133b  ff        rst     #38
133c  00        nop
133d  ff        rst     #38
133e  00        nop
133f  55        ld      d,l
1340  00        nop
1341  ff        rst     #38
1342  ff        rst     #38
1343  00        nop
1344  55        ld      d,l
1345  00        nop
1346  ff        rst     #38
1347  00        nop
1348  ff        rst     #38
1349  55        ld      d,l
134a  ff        rst     #38
134b  00        nop
134c  00        nop
134d  ff        rst     #38
134e  55        ld      d,l
134f  ff        rst     #38
1350  00        nop
1351  aa        xor     d
1352  aa        xor     d
1353  aa        xor     d
1354  aa        xor     d
1355  aa        xor     d
1356  aa        xor     d
1357  aa        xor     d
1358  aa        xor     d
1359  aa        xor     d
135a  aa        xor     d
135b  00        nop
135c  aa        xor     d
135d  01aa01    ld      bc,#01aa
1360  aa        xor     d
1361  01aa1d    ld      bc,#1daa
1364  a0        and     b
1365  010001    ld      bc,#0100
1368  00        nop
1369  010a1d    ld      bc,#1d0a
136c  a0        and     b
136d  03        inc     bc
136e  0a        ld      a,(bc)
136f  1d        dec     e
1370  a0        and     b
1371  03        inc     bc
1372  0a        ld      a,(bc)
1373  1d        dec     e
1374  a0        and     b
1375  03        inc     bc
1376  0a        ld      a,(bc)
1377  1d        dec     e
1378  a0        and     b
1379  03        inc     bc
137a  0a        ld      a,(bc)
137b  1d        dec     e
137c  a0        and     b
137d  03        inc     bc
137e  0a        ld      a,(bc)
137f  1d        dec     e
1380  a0        and     b
1381  010001    ld      bc,#0100
1384  00        nop
1385  010a1d    ld      bc,#1d0a
1388  aa        xor     d
1389  01aa01    ld      bc,#01aa
138c  aa        xor     d
138d  01aaff    ld      bc,#ffaa
1390  00        nop
1391  aa        xor     d
1392  01a01f    ld      bc,#1fa0
1395  aa        xor     d
1396  01a01e    ld      bc,#1ea0
1399  aa        xor     d
139a  01a81f    ld      bc,#1fa8
139d  aa        xor     d
139e  01a81f    ld      bc,#1fa8
13a1  aa        xor     d
13a2  20aa      jr      nz,#134e        ; (-86)
13a4  01a81f    ld      bc,#1fa8
13a7  aa        xor     d
13a8  01a820    ld      bc,#20a8
13ab  aa        xor     d
13ac  01a01f    ld      bc,#1fa0
13af  aa        xor     d
13b0  01a0ff    ld      bc,#ffa0
13b3  00        nop
13b4  ff        rst     #38
13b5  01f01f    ld      bc,#1ff0
13b8  ff        rst     #38
13b9  01f01e    ld      bc,#1ef0
13bc  ff        rst     #38
13bd  01fc1f    ld      bc,#1ffc
13c0  ff        rst     #38
13c1  01fc1f    ld      bc,#1ffc
13c4  ff        rst     #38
13c5  20ff      jr      nz,#13c6        ; (-1)
13c7  01fc1f    ld      bc,#1ffc
13ca  ff        rst     #38
13cb  01fc20    ld      bc,#20fc
13ce  ff        rst     #38
13cf  01f01f    ld      bc,#1ff0
13d2  ff        rst     #38
13d3  01f0ff    ld      bc,#fff0
13d6  c0        ret     nz
 
13d7  0f        rrca
13d8  3f        ccf
13d9  f0        ret     p
 
13da  01fc20    ld      bc,#20fc
13dd  fc01fc    call    m,#fc01
13e0  1e3c      ld      e,#3c
13e2  ff        rst     #38
13e3  bf        cp      a
13e4  c0        ret     nz
 
13e5  02        ld      (bc),a
13e6  c31ff0    jp      #f01f
13e9  2003      jr      nz,#13ee        ; (3)
13eb  1f        rra
13ec  0f        rrca
13ed  22331e    ld      (#1e33),hl
13f0  c0        ret     nz
 
13f1  01c0ff    ld      bc,#ffc0
13f4  3f        ccf
13f5  fcfc03    call    m,#03fc
13f8  ff        rst     #38
13f9  c0        ret     nz
 
13fa  00        nop
13fb  2800      jr      z,#13fd         ; (0)
13fd  015540    ld      bc,#4055
1400  15        dec     d
1401  55        ld      d,l
1402  54        ld      d,h
1403  54        ld      d,h
1404  00        nop
1405  3f        ccf
1406  55        ld      d,l
1407  43        ld      b,e
1408  ff        rst     #38
1409  55        ld      d,l
140a  6b        ld      l,e
140b  ff        rst     #38
140c  55        ld      d,l
140d  43        ld      b,e
140e  ff        rst     #38
140f  54        ld      d,h
1410  00        nop
1411  3f        ccf
1412  15        dec     d
1413  55        ld      d,l
1414  54        ld      d,h
1415  015540    ld      bc,#4055
1418  00        nop
1419  2800      jr      z,#141b         ; (0)
141b  03        inc     bc
141c  ff        rst     #38
141d  c0        ret     nz
 
141e  3f        ccf
141f  ff        rst     #38
1420  fcfc00    call    m,#00fc
1423  15        dec     d
1424  ff        rst     #38
1425  c1        pop     bc
1426  55        ld      d,l
1427  ff        rst     #38
1428  e9        jp      (hl)
1429  55        ld      d,l
142a  ff        rst     #38
142b  c1        pop     bc
142c  55        ld      d,l
142d  fc0015    call    m,#1500
1430  a8        xor     b
1431  83        add     a,e
1432  08        ex      af,af'
1433  42        ld      b,d
1434  40        ld      b,b
1435  42        ld      b,d
1436  02        ld      (bc),a
1437  45        ld      b,l
1438  80        add     a,b
1439  42        ld      b,d
143a  014702    ld      bc,#0247
143d  42        ld      b,d
143e  80        add     a,b
143f  45        ld      b,l
1440  02        ld      (bc),a
1441  112042    ld      de,#4220
1444  40        ld      b,b
1445  44        ld      b,h
1446  80        add     a,b
1447  42        ld      b,d
1448  02        ld      (bc),a
1449  41        ld      b,c
144a  2045      jr      nz,#1491        ; (69)
144c  08        ex      af,af'
144d  42        ld      b,d
144e  1047      djnz    #1497           ; (71)
1450  2042      jr      nz,#1494        ; (66)
1452  08        ex      af,af'
1453  45        ld      b,l
1454  40        ld      b,b
1455  42        ld      b,d
1456  02        ld      (bc),a
1457  42        ld      b,d
1458  00        nop
1459  53        ld      d,e
145a  84        add     a,h
145b  1029      djnz    #1486           ; (41)
145d  40        ld      b,b
145e  2e01      ld      l,#01
1460  2a0111    ld      hl,(#1101)
1463  04        inc     b
1464  2e00      ld      l,#00
1466  53        ld      d,e
1467  84        add     a,h
1468  1089      djnz    #13f3           ; (-119)
146a  40        ld      b,b
146b  8e        adc     a,(hl)
146c  018a01    ld      bc,#018a
146f  11048e    ld      de,#8e04
1472  00        nop
1473  ff        rst     #38
1474  ff        rst     #38
1475  04        inc     b
1476  04        inc     b
1477  08        ex      af,af'
1478  82        add     a,d
1479  04        inc     b
147a  82        add     a,d
147b  1002      djnz    #147f           ; (2)
147d  40        ld      b,b
147e  02        ld      (bc),a
147f  1083      djnz    #1404           ; (-125)
1481  010120    ld      bc,#2001
1484  82        add     a,d
1485  40        ld      b,b
1486  84        add     a,h
1487  80        add     a,b
1488  82        add     a,d
1489  40        ld      b,b
148a  02        ld      (bc),a
148b  010204    ld      bc,#0402
148e  02        ld      (bc),a
148f  018301    ld      bc,#0183
1492  010282    ld      bc,#8202
1495  00        nop
1496  50        ld      d,b
1497  83        add     a,e
1498  04        inc     b
1499  04        inc     b
149a  1084      djnz    #1420           ; (-124)
149c  40        ld      b,b
149d  84        add     a,h
149e  80        add     a,b
149f  82        add     a,d
14a0  018202    ld      bc,#0282
14a3  82        add     a,d
14a4  00        nop
14a5  d48304    call    nc,#0483
14a8  0c        inc     c
14a9  08        ex      af,af'
14aa  82        add     a,d
14ab  04        inc     b
14ac  82        add     a,d
14ad  1002      djnz    #14b1           ; (2)
14af  40        ld      b,b
14b0  02        ld      (bc),a
14b1  1089      djnz    #143c           ; (-119)
14b3  04        inc     b
14b4  012082    ld      bc,#8220
14b7  40        ld      b,b
14b8  8d        adc     a,l
14b9  018201    ld      bc,#0182
14bc  010283    ld      bc,#8302
14bf  04        inc     b
14c0  02        ld      (bc),a
14c1  010240    ld      bc,#4002
14c4  02        ld      (bc),a
14c5  018501    ld      bc,#0185
14c8  018083    ld      bc,#8380
14cb  00        nop
14cc  00        nop
14cd  03        inc     bc
14ce  2003      jr      nz,#14d3        ; (3)
14d0  e1        pop     hl
14d1  ff        rst     #38
14d2  2003      jr      nz,#14d7        ; (3)
14d4  2003      jr      nz,#14d9        ; (3)
14d6  203f      jr      nz,#1517        ; (63)
14d8  2030      jr      nz,#150a        ; (48)
14da  40        ld      b,b
14db  30ff      jr      nc,#14dc        ; (-1)
14dd  2a8101    ld      hl,(#0181)
14e0  08        ex      af,af'
14e1  210820    ld      hl,#2008
14e4  0f        rrca
14e5  1f        rra
14e6  08        ex      af,af'
14e7  ff        rst     #38
14e8  08        ex      af,af'
14e9  df        rst     #18
14ea  08        ex      af,af'
14eb  e0        ret     po
 
14ec  0f        rrca
14ed  e1        pop     hl
14ee  09        add     hl,bc
14ef  00        nop
14f0  15        dec     d
14f1  81        add     a,c
14f2  3f        ccf
14f3  1000      djnz    #14f5           ; (0)
14f5  08        ex      af,af'
14f6  81        add     a,c
14f7  41        ld      b,c
14f8  1000      djnz    #14fa           ; (0)
14fa  ff        rst     #38
14fb  ff        rst     #38
14fc  ff        rst     #38
14fd  ff        rst     #38
14fe  ff        rst     #38
14ff  ff        rst     #38