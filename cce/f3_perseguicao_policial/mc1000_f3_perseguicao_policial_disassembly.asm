; Disassembly of the file "D:\Emerson\mc-1000\aplicativos cassete\PERSPOLI.BIN"
;
; Created with dZ80 v1.31
;
; on Wednesday, 18 of April 2007 at 05:20 PM
;
0100  ff        rst     #38
0101  ff        rst     #38
0102  ff        rst     #38
0103  ff        rst     #38
0104  013100    ld      bc,#0031
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
 
0121  43        ld      b,e
0122  0b        dec     bc
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
0200  c31605    jp      #0516
0203  c31605    jp      #0516
0206  c31605    jp      #0516
0209  c31605    jp      #0516
020c  c31605    jp      #0516
020f  c31605    jp      #0516
0212  c31605    jp      #0516
0215  c31605    jp      #0516
0218  c31605    jp      #0516
021b  c31605    jp      #0516
021e  c31605    jp      #0516
0221  c31605    jp      #0516
0224  c31605    jp      #0516
0227  c31605    jp      #0516
022a  c31605    jp      #0516
022d  c31605    jp      #0516
0230  c31605    jp      #0516
0233  c31605    jp      #0516
0236  c31605    jp      #0516
0239  c31605    jp      #0516
023c  c31605    jp      #0516
023f  c31605    jp      #0516
0242  c31605    jp      #0516
0245  c31605    jp      #0516
0248  c31605    jp      #0516
024b  c31605    jp      #0516
024e  c31605    jp      #0516
0251  c31605    jp      #0516
0254  c31605    jp      #0516
0257  c31605    jp      #0516
025a  c31605    jp      #0516
025d  c31605    jp      #0516
0260  c31605    jp      #0516
0263  c31605    jp      #0516
0266  c31605    jp      #0516
0269  c31605    jp      #0516
026c  c31605    jp      #0516
026f  c31605    jp      #0516
0272  c31605    jp      #0516
0275  c31605    jp      #0516
0278  c31605    jp      #0516
027b  c31605    jp      #0516
027e  c31605    jp      #0516
0281  c31605    jp      #0516
0284  c31605    jp      #0516
0287  c31605    jp      #0516
028a  c31605    jp      #0516
028d  c31605    jp      #0516
0290  c34bc0    jp      #c04b
0293  b7        or      a
0294  02        ld      (bc),a
0295  c40200    call    nz,#0002
0298  00        nop
0299  d1        pop     de
029a  02        ld      (bc),a
029b  00        nop
029c  00        nop
029d  ef        rst     #28
029e  02        ld      (bc),a
029f  48        ld      c,b
02a0  04        inc     b
02a1  00        nop
02a2  00        nop
02a3  e0        ret     po
 
02a4  02        ld      (bc),a
02a5  00        nop
02a6  00        nop
02a7  0a        ld      a,(bc)
02a8  be        cp      (hl)
02a9  11030b    ld      de,#0b03
02ac  c2de02    jp      nz,#02de
02af  85        add     a,l
02b0  226000    ld      (#0060),hl
02b3  3f        ccf
02b4  00        nop
02b5  e2ff20    jp      po,#20ff
02b8  54        ld      d,h
02b9  e0        ret     po
 
02ba  15        dec     d
02bb  e0        ret     po
 
02bc  54        ld      d,h
02bd  015020    ld      bc,#2050
02c0  40        ld      b,b
02c1  2050      jr      nz,#0313        ; (80)
02c3  ff        rst     #38
02c4  2005      jr      nz,#02cb        ; (5)
02c6  e0        ret     po
 
02c7  01e005    ld      bc,#05e0
02ca  014520    ld      bc,#2045
02cd  54        ld      d,h
02ce  2045      jr      nz,#0315        ; (69)
02d0  ff        rst     #38
02d1  40        ld      b,b
02d2  50        ld      d,b
02d3  e0        ret     po
 
02d4  55        ld      d,l
02d5  e0        ret     po
 
02d6  05        dec     b
02d7  e0        ret     po
 
02d8  50        ld      d,b
02d9  015040    ld      bc,#4050
02dc  50        ld      d,b
02dd  2050      jr      nz,#032f        ; (80)
02df  ff        rst     #38
02e0  40        ld      b,b
02e1  50        ld      d,b
02e2  e0        ret     po
 
02e3  05        dec     b
02e4  e0        ret     po
 
02e5  55        ld      d,l
02e6  e0        ret     po
 
02e7  50        ld      d,b
02e8  015020    ld      bc,#2050
02eb  50        ld      d,b
02ec  40        ld      b,b
02ed  50        ld      d,b
02ee  ff        rst     #38
02ef  2005      jr      nz,#02f6        ; (5)
02f1  e0        ret     po
 
02f2  01e005    ld      bc,#05e0
02f5  011520    ld      bc,#2015
02f8  54        ld      d,h
02f9  2015      jr      nz,#0310        ; (21)
02fb  ff        rst     #38
02fc  00        nop
02fd  81        add     a,c
02fe  12        ld      (de),a
02ff  81        add     a,c
0300  40        ld      b,b
0301  87        add     a,a
0302  52        ld      d,d
0303  87        add     a,a
0304  ff        rst     #38
0305  ff        rst     #38
0306  a3        and     e
0307  81        add     a,c
0308  b2        or      d
0309  81        add     a,c
030a  a3        and     e
030b  86        add     a,(hl)
030c  b2        or      d
030d  86        add     a,(hl)
030e  ff        rst     #38
030f  ff        rst     #38
0310  46        ld      b,(hl)
0311  82        add     a,d
0312  52        ld      d,d
0313  82        add     a,d
0314  8c        adc     a,h
0315  83        add     a,e
0316  ac        xor     h
0317  83        add     a,e
0318  8c        adc     a,h
0319  84        add     a,h
031a  ac        xor     h
031b  84        add     a,h
031c  0686      ld      b,#86
031e  12        ld      (de),a
031f  86        add     a,(hl)
0320  ff        rst     #38
0321  ff        rst     #38
0322  e9        jp      (hl)
0323  82        add     a,d
0324  f28269    jp      p,#6982
0327  85        add     a,l
0328  72        ld      (hl),d
0329  85        add     a,l
032a  0d        dec     c
032b  81        add     a,c
032c  4d        ld      c,l
032d  87        add     a,a
032e  ff        rst     #38
032f  ff        rst     #38
0330  2081      jr      nz,#02b3        ; (-127)
0332  a0        and     b
0333  84        add     a,h
0334  bf        cp      a
0335  84        add     a,h
0336  3f        ccf
0337  81        add     a,c
0338  ff        rst     #38
0339  ff        rst     #38
033a  c381dc    jp      #dc81
033d  81        add     a,c
033e  a3        and     e
033f  84        add     a,h
0340  bc        cp      h
0341  84        add     a,h
0342  ff        rst     #38
0343  ff        rst     #38
0344  66        ld      h,(hl)
0345  82        add     a,d
0346  a6        and     (hl)
0347  84        add     a,h
0348  b9        cp      c
0349  84        add     a,h
034a  79        ld      a,c
034b  82        add     a,d
034c  ff        rst     #38
034d  ff        rst     #38
034e  09        add     hl,bc
034f  83        add     a,e
0350  1683      ld      d,#83
0352  a9        xor     c
0353  84        add     a,h
0354  b6        or      (hl)
0355  84        add     a,h
0356  1f        rra
0357  81        add     a,c
0358  bc        cp      h
0359  81        add     a,c
035a  59        ld      e,c
035b  82        add     a,d
035c  f682      or      #82
035e  ff        rst     #38
035f  ff        rst     #38
0360  cc83d3    call    z,#d383
0363  83        add     a,e
0364  4c        ld      c,h
0365  84        add     a,h
0366  53        ld      d,e
0367  84        add     a,h
0368  ff        rst     #38
0369  ff        rst     #38
036a  69        ld      l,c
036b  85        add     a,l
036c  0686      ld      b,#86
036e  a3        and     e
036f  86        add     a,(hl)
0370  40        ld      b,b
0371  87        add     a,a
0372  ff        rst     #38
0373  ff        rst     #38
0374  63        ld      h,e
0375  81        add     a,c
0376  63        ld      h,e
0377  81        add     a,c
0378  65        ld      h,l
0379  81        add     a,c
037a  67        ld      h,a
037b  81        add     a,c
037c  61        ld      h,c
037d  81        add     a,c
037e  69        ld      l,c
037f  81        add     a,c
0380  6b        ld      l,e
0381  81        add     a,c
0382  6d        ld      l,l
0383  81        add     a,c
0384  72        ld      (hl),d
0385  81        add     a,c
0386  74        ld      (hl),h
0387  81        add     a,c
0388  76        halt
0389  81        add     a,c
038a  78        ld      a,b
038b  81        add     a,c
038c  7a        ld      a,d
038d  81        add     a,c
038e  7c        ld      a,h
038f  81        add     a,c
0390  e1        pop     hl
0391  81        add     a,c
0392  fd81      add     a,c
0394  05        dec     b
0395  82        add     a,d
0396  07        rlca
0397  82        add     a,d
0398  09        add     hl,bc
0399  82        add     a,d
039a  0b        dec     bc
039b  82        add     a,d
039c  12        ld      (de),a
039d  82        add     a,d
039e  0d        dec     c
039f  82        add     a,d
03a0  14        inc     d
03a1  82        add     a,d
03a2  1682      ld      d,#82
03a4  1882      jr      #0328           ; (-126)
03a6  1a        ld      a,(de)
03a7  82        add     a,d
03a8  61        ld      h,c
03a9  82        add     a,d
03aa  64        ld      h,h
03ab  82        add     a,d
03ac  7a        ld      a,d
03ad  82        add     a,d
03ae  7d        ld      a,l
03af  82        add     a,d
03b0  a7        and     a
03b1  82        add     a,d
03b2  a9        xor     c
03b3  82        add     a,d
03b4  ab        xor     e
03b5  82        add     a,d
03b6  ad        xor     l
03b7  82        add     a,d
03b8  b2        or      d
03b9  82        add     a,d
03ba  b4        or      h
03bb  82        add     a,d
03bc  b6        or      (hl)
03bd  82        add     a,d
03be  e1        pop     hl
03bf  82        add     a,d
03c0  e482e7    call    po,#e782
03c3  82        add     a,d
03c4  f7        rst     #30
03c5  82        add     a,d
03c6  fa82fd    jp      m,#fd82
03c9  82        add     a,d
03ca  2b        dec     hl
03cb  83        add     a,e
03cc  2d        dec     l
03cd  83        add     a,e
03ce  328334    ld      (#3483),a
03d1  83        add     a,e
03d2  61        ld      h,c
03d3  83        add     a,e
03d4  64        ld      h,h
03d5  83        add     a,e
03d6  67        ld      h,a
03d7  83        add     a,e
03d8  6a        ld      l,d
03d9  83        add     a,e
03da  74        ld      (hl),h
03db  83        add     a,e
03dc  77        ld      (hl),a
03dd  83        add     a,e
03de  7a        ld      a,d
03df  83        add     a,e
03e0  7d        ld      a,l
03e1  83        add     a,e
03e2  e1        pop     hl
03e3  84        add     a,h
03e4  e484ea    call    po,#ea84
03e7  84        add     a,h
03e8  f484fa    call    p,#fa84
03eb  84        add     a,h
03ec  fd84      add     a,iyh
03ee  0b        dec     bc
03ef  85        add     a,l
03f0  0d        dec     c
03f1  85        add     a,l
03f2  12        ld      (de),a
03f3  85        add     a,l
03f4  61        ld      h,c
03f5  85        add     a,l
03f6  64        ld      h,h
03f7  85        add     a,l
03f8  67        ld      h,a
03f9  85        add     a,l
03fa  77        ld      (hl),a
03fb  85        add     a,l
03fc  7a        ld      a,d
03fd  85        add     a,l
03fe  7d        ld      a,l
03ff  85        add     a,l
0400  e1        pop     hl
0401  85        add     a,l
0402  e485c9    call    po,#c985
0405  85        add     a,l
0406  cb85      res     0,l
0408  cd85d2    call    #d285
040b  85        add     a,l
040c  d485d6    call    nc,#d685
040f  85        add     a,l
0410  fa85fd    jp      m,#fd85
0413  85        add     a,l
0414  61        ld      h,c
0415  86        add     a,(hl)
0416  64        ld      h,h
0417  86        add     a,(hl)
0418  67        ld      h,a
0419  86        add     a,(hl)
041a  69        ld      l,c
041b  86        add     a,(hl)
041c  6b        ld      l,e
041d  86        add     a,(hl)
041e  6d        ld      l,l
041f  86        add     a,(hl)
0420  72        ld      (hl),d
0421  86        add     a,(hl)
0422  74        ld      (hl),h
0423  86        add     a,(hl)
0424  76        halt
0425  86        add     a,(hl)
0426  78        ld      a,b
0427  86        add     a,(hl)
0428  7a        ld      a,d
0429  86        add     a,(hl)
042a  7d        ld      a,l
042b  86        add     a,(hl)
042c  018703    ld      bc,#0387
042f  87        add     a,a
0430  05        dec     b
0431  87        add     a,a
0432  07        rlca
0433  8f        adc     a,a
0434  09        add     hl,bc
0435  87        add     a,a
0436  0b        dec     bc
0437  87        add     a,a
0438  0d        dec     c
0439  87        add     a,a
043a  12        ld      (de),a
043b  87        add     a,a
043c  14        inc     d
043d  87        add     a,a
043e  1687      ld      d,#87
0440  1887      jr      #03c9           ; (-121)
0442  1a        ld      a,(de)
0443  87        add     a,a
0444  1c        inc     e
0445  87        add     a,a
0446  ff        rst     #38
0447  ff        rst     #38
0448  2051      jr      nz,#049b        ; (81)
044a  e0        ret     po
 
044b  15        dec     d
044c  e0        ret     po
 
044d  51        ld      d,c
044e  015020    ld      bc,#2050
0451  40        ld      b,b
0452  2050      jr      nz,#04a4        ; (80)
0454  ff        rst     #38
0455  40        ld      b,b
0456  f0        ret     p
 
0457  e0        ret     po
 
0458  ff        rst     #38
0459  e0        ret     po
 
045a  0f        rrca
045b  e0        ret     po
 
045c  f0        ret     p
 
045d  01f040    ld      bc,#40f0
0460  f0        ret     p
 
0461  20f0      jr      nz,#0453        ; (-16)
0463  ff        rst     #38
0464  40        ld      b,b
0465  f0        ret     p
 
0466  e0        ret     po
 
0467  0f        rrca
0468  e0        ret     po
 
0469  ff        rst     #38
046a  e0        ret     po
 
046b  f0        ret     p
 
046c  01f020    ld      bc,#20f0
046f  f0        ret     p
 
0470  40        ld      b,b
0471  f0        ret     p
 
0472  ff        rst     #38
0473  20f3      jr      nz,#0468        ; (-13)
0475  e0        ret     po
 
0476  3f        ccf
0477  e0        ret     po
 
0478  f3        di
0479  01f020    ld      bc,#20f0
047c  c0        ret     nz
 
047d  20f0      jr      nz,#046f        ; (-16)
047f  ff        rst     #38
0480  200f      jr      nz,#0491        ; (15)
0482  e0        ret     po
 
0483  03        inc     bc
0484  e0        ret     po
 
0485  0f        rrca
0486  013f20    ld      bc,#203f
0489  fc203f    call    m,#3f20
048c  ff        rst     #38
048d  200f      jr      nz,#049e        ; (15)
048f  e0        ret     po
 
0490  03        inc     bc
0491  e0        ret     po
 
0492  0f        rrca
0493  01cf20    ld      bc,#20cf
0496  fc20cf    call    m,#cf20
0499  ff        rst     #38
049a  20fc      jr      nz,#0498        ; (-4)
049c  e0        ret     po
 
049d  3f        ccf
049e  e0        ret     po
 
049f  fc01f0    call    m,#f001
04a2  20c0      jr      nz,#0464        ; (-64)
04a4  20f0      jr      nz,#0496        ; (-16)
04a6  ff        rst     #38
04a7  be        cp      (hl)
04a8  04        inc     b
04a9  c1        pop     bc
04aa  04        inc     b
04ab  d204be    jp      nc,#be04
04ae  04        inc     b
04af  c1        pop     bc
04b0  04        inc     b
04b1  d204be    jp      nc,#be04
04b4  04        inc     b
04b5  c1        pop     bc
04b6  04        inc     b
04b7  d204bd    jp      nc,#bd04
04ba  04        inc     b
04bb  00        nop
04bc  00        nop
04bd  ff        rst     #38
04be  00        nop
04bf  bb        cp      e
04c0  ff        rst     #38
04c1  1f        rra
04c2  0d        dec     c
04c3  018301    ld      bc,#0183
04c6  b0        or      b
04c7  de02      sbc     a,#02
04c9  01eedf    ld      bc,#dfee
04cc  09        add     hl,bc
04cd  01c201    ld      bc,#01c2
04d0  70        ld      (hl),b
04d1  ff        rst     #38
04d2  20e7      jr      nz,#04bb        ; (-25)
04d4  df        rst     #18
04d5  e7        rst     #20
04d6  019e01    ld      bc,#019e
04d9  e7        rst     #20
04da  df        rst     #18
04db  e7        rst     #20
04dc  ff        rst     #38
04dd  e0        ret     po
 
04de  14        inc     d
04df  1f        rra
04e0  010141    ld      bc,#4101
04e3  0140be    ld      bc,#be40
04e6  010141    ld      bc,#4101
04e9  0140ff    ld      bc,#ff40
04ec  e0        ret     po
 
04ed  14        inc     d
04ee  1f        rra
04ef  00        nop
04f0  010001    ld      bc,#0100
04f3  00        nop
04f4  be        cp      (hl)
04f5  00        nop
04f6  010001    ld      bc,#0100
04f9  00        nop
04fa  ff        rst     #38
04fb  21a710    ld      hl,#10a7
04fe  360f      ld      (hl),#0f
0500  223701    ld      (#0137),hl
0503  21b011    ld      hl,#11b0
0506  360f      ld      (hl),#0f
0508  224001    ld      (#0140),hl
050b  3e4d      ld      a,#4d
050d  323901    ld      (#0139),a
0510  3e49      ld      a,#49
0512  324201    ld      (#0142),a
0515  c9        ret
 
0516  310002    ld      sp,#0200
0519  af        xor     a
051a  32780f    ld      (#0f78),a
051d  210000    ld      hl,#0000
0520  222301    ld      (#0123),hl
0523  3a1210    ld      a,(#1012)
0526  a7        and     a
0527  c23b05    jp      nz,#053b
052a  3ec3      ld      a,#c3
052c  323800    ld      (#0038),a
052f  2124c0    ld      hl,#c024
0532  223900    ld      (#0039),hl
0535  fb        ei
0536  3e01      ld      a,#01
0538  321210    ld      (#1012),a
053b  3e05      ld      a,#05
053d  32830f    ld      (#0f83),a
0540  cd3206    call    #0632
0543  210000    ld      hl,#0000
0546  220d10    ld      (#100d),hl
0549  af        xor     a
054a  320e10    ld      (#100e),a
054d  3e88      ld      a,#88
054f  d380      out     (#80),a
0551  0600      ld      b,#00
0553  cd30c0    call    #c030
0556  11fd02    ld      de,#02fd
0559  3e01      ld      a,#01
055b  01aa0e    ld      bc,#0eaa
055e  cd8b0e    call    #0e8b
0561  060b      ld      b,#0b
0563  110703    ld      de,#0307
0566  cd8b0e    call    #0e8b
0569  0608      ld      b,#08
056b  111103    ld      de,#0311
056e  cd8b0e    call    #0e8b
0571  112303    ld      de,#0323
0574  0605      ld      b,#05
0576  cd8b0e    call    #0e8b
0579  113103    ld      de,#0331
057c  3e16      ld      a,#16
057e  01a001    ld      bc,#01a0
0581  cd8b0e    call    #0e8b
0584  113b03    ld      de,#033b
0587  3e11      ld      a,#11
0589  cd8b0e    call    #0e8b
058c  114503    ld      de,#0345
058f  3e0c      ld      a,#0c
0591  cd8b0e    call    #0e8b
0594  114f03    ld      de,#034f
0597  3e07      ld      a,#07
0599  cd8b0e    call    #0e8b
059c  116103    ld      de,#0361
059f  3e03      ld      a,#03
05a1  0eaa      ld      c,#aa
05a3  cd8b0e    call    #0e8b
05a6  116b03    ld      de,#036b
05a9  3e01      ld      a,#01
05ab  cd8b0e    call    #0e8b
05ae  3a0401    ld      a,(#0104)
05b1  fe19      cp      #19
05b3  dab805    jp      c,#05b8
05b6  d618      sub     #18
05b8  fe09      cp      #09
05ba  daea05    jp      c,#05ea
05bd  3e01      ld      a,#01
05bf  0603      ld      b,#03
05c1  21b684    ld      hl,#84b6
05c4  cd760e    call    #0e76
05c7  21a684    ld      hl,#84a6
05ca  cd760e    call    #0e76
05cd  3a0401    ld      a,(#0104)
05d0  fe19      cp      #19
05d2  dad705    jp      c,#05d7
05d5  d618      sub     #18
05d7  fe11      cp      #11
05d9  daea05    jp      c,#05ea
05dc  3e02      ld      a,#02
05de  21a383    ld      hl,#83a3
05e1  cd760e    call    #0e76
05e4  21b983    ld      hl,#83b9
05e7  cd760e    call    #0e76
05ea  110080    ld      de,#8000
05ed  3a0401    ld      a,(#0104)
05f0  0e00      ld      c,#00
05f2  cd3fc0    call    #c03f
05f5  cdfb05    call    #05fb
05f8  c31506    jp      #0615
05fb  21f286    ld      hl,#86f2
05fe  11b702    ld      de,#02b7
0601  cd080f    call    #0f08
0604  22790f    ld      (#0f79),hl
0607  219302    ld      hl,#0293
060a  227c0f    ld      (#0f7c),hl
060d  227f0f    ld      (#0f7f),hl
0610  af        xor     a
0611  327b0f    ld      (#0f7b),a
0614  c9        ret
 
0615  af        xor     a
0616  32810f    ld      (#0f81),a
0619  32850f    ld      (#0f85),a
061c  320f10    ld      (#100f),a
061f  21840f    ld      hl,#0f84
0622  0603      ld      b,#03
0624  cd3c06    call    #063c
0627  cdfb04    call    #04fb
062a  3e04      ld      a,#04
062c  328a0f    ld      (#0f8a),a
062f  c34806    jp      #0648
0632  af        xor     a
0633  218b0f    ld      hl,#0f8b
0636  f5        push    af
0637  3aaf02    ld      a,(#02af)
063a  47        ld      b,a
063b  f1        pop     af
063c  77        ld      (hl),a
063d  23        inc     hl
063e  05        dec     b
063f  c23c06    jp      nz,#063c
0642  3eff      ld      a,#ff
0644  77        ld      (hl),a
0645  23        inc     hl
0646  77        ld      (hl),a
0647  c9        ret
 
0648  3a0401    ld      a,(#0104)
064b  fe19      cp      #19
064d  daea06    jp      c,#06ea
0650  cd6306    call    #0663
0653  cd8606    call    #0686
0656  3a780f    ld      a,(#0f78)
0659  a7        and     a
065a  c2e706    jp      nz,#06e7
065d  cd7606    call    #0676
0660  c3ea06    jp      #06ea
0663  111c80    ld      de,#801c
0666  3a2401    ld      a,(#0124)
0669  cda50e    call    #0ea5
066c  c9        ret
 
066d  111080    ld      de,#8010
0670  3a2301    ld      a,(#0123)
0673  c36906    jp      #0669
0676  11a706    ld      de,#06a7
0679  216e84    ld      hl,#846e
067c  cd080f    call    #0f08
067f  c9        ret
 
0680  11c606    ld      de,#06c6
0683  c37906    jp      #0679
0686  218980    ld      hl,#8089
0689  11a706    ld      de,#06a7
068c  cd080f    call    #0f08
068f  219580    ld      hl,#8095
0692  11c606    ld      de,#06c6
0695  cd080f    call    #0f08
0698  3e28      ld      a,#28
069a  322d80    ld      (#802d),a
069d  326d80    ld      (#806d),a
06a0  323980    ld      (#8039),a
06a3  327980    ld      (#8079),a
06a6  c9        ret
 
06a7  00        nop
06a8  0c        inc     c
06a9  e0        ret     po
 
06aa  0c        inc     c
06ab  e0        ret     po
 
06ac  0f        rrca
06ad  01fcdf    ld      bc,#dffc
06b0  0c        inc     c
06b1  010cdf    ld      bc,#df0c
06b4  3f        ccf
06b5  01fc02    ld      bc,#02fc
06b8  c0        ret     nz
 
06b9  1f        rra
06ba  03        inc     bc
06bb  01c020    ld      bc,#20c0
06be  c0        ret     nz
 
06bf  20c0      jr      nz,#0681        ; (-64)
06c1  1f        rra
06c2  03        inc     bc
06c3  01f0ff    ld      bc,#fff0
06c6  00        nop
06c7  0c        inc     c
06c8  e0        ret     po
 
06c9  0c        inc     c
06ca  e0        ret     po
 
06cb  0f        rrca
06cc  01fcdf    ld      bc,#dffc
06cf  0c        inc     c
06d0  010cdf    ld      bc,#df0c
06d3  3f        ccf
06d4  01fc01    ld      bc,#01fc
06d7  0f        rrca
06d8  01fc20    ld      bc,#20fc
06db  0c        inc     c
06dc  1f        rra
06dd  0f        rrca
06de  01fc1f    ld      bc,#1ffc
06e1  0c        inc     c
06e2  200f      jr      nz,#06f3        ; (15)
06e4  01fcff    ld      bc,#fffc
06e7  cd8006    call    #0680
06ea  cd6d06    call    #066d
06ed  110680    ld      de,#8006
06f0  3a830f    ld      a,(#0f83)
06f3  47        ld      b,a
06f4  0e00      ld      c,#00
06f6  cd42c0    call    #c042
06f9  3a7b0f    ld      a,(#0f7b)
06fc  fe05      cp      #05
06fe  cadb09    jp      z,#09db
0701  fe02      cp      #02
0703  da4c07    jp      c,#074c
0706  af        xor     a
0707  321010    ld      (#1010),a
070a  3a8a0f    ld      a,(#0f8a)
070d  47        ld      b,a
070e  3a790f    ld      a,(#0f79)
0711  cd1707    call    #0717
0714  c34907    jp      #0749
0717  e61f      and     #1f
0719  fe04      cp      #04
071b  da3e07    jp      c,#073e
071e  ca3b07    jp      z,#073b
0721  fe0a      cp      #0a
0723  ca4407    jp      z,#0744
0726  da4107    jp      c,#0741
0729  fe12      cp      #12
072b  da4707    jp      c,#0747
072e  fe17      cp      #17
0730  ca4107    jp      z,#0741
0733  da4407    jp      c,#0744
0736  fe1d      cp      #1d
0738  ca3e07    jp      z,#073e
073b  3e03      ld      a,#03
073d  c9        ret
 
073e  3e04      ld      a,#04
0740  c9        ret
 
0741  3e02      ld      a,#02
0743  c9        ret
 
0744  3e01      ld      a,#01
0746  c9        ret
 
0747  78        ld      a,b
0748  c9        ret
 
0749  328a0f    ld      (#0f8a),a
074c  2a840f    ld      hl,(#0f84)
074f  eb        ex      de,hl
0750  cd1309    call    #0913
0753  feff      cp      #ff
0755  ca8d07    jp      z,#078d
0758  213009    ld      hl,#0930
075b  cd1609    call    #0916
075e  feff      cp      #ff
0760  ca8807    jp      z,#0788
0763  213809    ld      hl,#0938
0766  cd1609    call    #0916
0769  feff      cp      #ff
076b  ca8307    jp      z,#0783
076e  214809    ld      hl,#0948
0771  cd1609    call    #0916
0774  feff      cp      #ff
0776  ca7e07    jp      z,#077e
0779  3e01      ld      a,#01
077b  c38a07    jp      #078a
077e  3e02      ld      a,#02
0780  c38a07    jp      #078a
0783  3e03      ld      a,#03
0785  c38a07    jp      #078a
0788  3e04      ld      a,#04
078a  32890f    ld      (#0f89),a
078d  3a810f    ld      a,(#0f81)
0790  3c        inc     a
0791  32810f    ld      (#0f81),a
0794  3a850f    ld      a,(#0f85)
0797  a7        and     a
0798  c2d407    jp      nz,#07d4
079b  c5        push    bc
079c  3ab002    ld      a,(#02b0)
079f  47        ld      b,a
07a0  3a0701    ld      a,(#0107)
07a3  a0        and     b
07a4  fe02      cp      #02
07a6  c1        pop     bc
07a7  cac007    jp      z,#07c0
07aa  dac807    jp      c,#07c8
07ad  fe20      cp      #20
07af  cace07    jp      z,#07ce
07b2  21ec86    ld      hl,#86ec
07b5  3e01      ld      a,#01
07b7  22840f    ld      (#0f84),hl
07ba  32860f    ld      (#0f86),a
07bd  c3d407    jp      #07d4
07c0  21c183    ld      hl,#83c1
07c3  3e02      ld      a,#02
07c5  c3b707    jp      #07b7
07c8  214c86    ld      hl,#864c
07cb  c3b507    jp      #07b5
07ce  21a783    ld      hl,#83a7
07d1  c3c307    jp      #07c3
07d4  2a840f    ld      hl,(#0f84)
07d7  eb        ex      de,hl
07d8  3a860f    ld      a,(#0f86)
07db  fe02      cp      #02
07dd  daf207    jp      c,#07f2
07e0  caec07    jp      z,#07ec
07e3  cde10d    call    #0de1
07e6  cd7b08    call    #087b
07e9  c32508    jp      #0825
07ec  cdce0d    call    #0dce
07ef  c3e607    jp      #07e6
07f2  3a810f    ld      a,(#0f81)
07f5  0f        rrca
07f6  da0f08    jp      c,#080f
07f9  3a860f    ld      a,(#0f86)
07fc  a7        and     a
07fd  ca0908    jp      z,#0809
0800  cdf30d    call    #0df3
0803  cd4a09    call    #094a
0806  c32508    jp      #0825
0809  cd0c0e    call    #0e0c
080c  c30308    jp      #0803
080f  3a860f    ld      a,(#0f86)
0812  a7        and     a
0813  ca1f08    jp      z,#081f
0816  cdf30d    call    #0df3
0819  cd6209    call    #0962
081c  c32508    jp      #0825
081f  cd0c0e    call    #0e0c
0822  c31908    jp      #0819
0825  3a0f10    ld      a,(#100f)
0828  47        ld      b,a
0829  3a0401    ld      a,(#0104)
082c  fe03      cp      #03
082e  da6908    jp      c,#0869
0831  fe05      cp      #05
0833  da6008    jp      c,#0860
0836  fe07      cp      #07
0838  da7208    jp      c,#0872
083b  fe09      cp      #09
083d  da4508    jp      c,#0845
0840  d608      sub     #08
0842  c32c08    jp      #082c
0845  78        ld      a,b
0846  fe02      cp      #02
0848  ca5208    jp      z,#0852
084b  3c        inc     a
084c  320f10    ld      (#100f),a
084f  c3db09    jp      #09db
0852  af        xor     a
0853  320f10    ld      (#100f),a
0856  3a810f    ld      a,(#0f81)
0859  3c        inc     a
085a  32810f    ld      (#0f81),a
085d  c3d407    jp      #07d4
0860  78        ld      a,b
0861  fe04      cp      #04
0863  ca5208    jp      z,#0852
0866  c34b08    jp      #084b
0869  78        ld      a,b
086a  fe05      cp      #05
086c  ca5208    jp      z,#0852
086f  c34b08    jp      #084b
0872  78        ld      a,b
0873  fe03      cp      #03
0875  ca5208    jp      z,#0852
0878  c34b08    jp      #084b
087b  2aff0f    ld      hl,(#0fff)
087e  eb        ex      de,hl
087f  cd290f    call    #0f29
0882  3a820f    ld      a,(#0f82)
0885  eb        ex      de,hl
0886  2a0110    ld      hl,(#1001)
0889  cdb30d    call    #0db3
088c  c2be08    jp      nz,#08be
088f  cd950d    call    #0d95
0892  caa908    jp      z,#08a9
0895  af        xor     a
0896  32860f    ld      (#0f86),a
0899  3a810f    ld      a,(#0f81)
089c  0f        rrca
089d  cd0c0e    call    #0e0c
08a0  dad009    jp      c,#09d0
08a3  cd0c0e    call    #0e0c
08a6  c35009    jp      #0950
08a9  3e01      ld      a,#01
08ab  32860f    ld      (#0f86),a
08ae  3a810f    ld      a,(#0f81)
08b1  0f        rrca
08b2  cdf30d    call    #0df3
08b5  dad009    jp      c,#09d0
08b8  cdf30d    call    #0df3
08bb  c35009    jp      #0950
08be  cd950d    call    #0d95
08c1  c2df08    jp      nz,#08df
08c4  2a0510    ld      hl,(#1005)
08c7  19        add     hl,de
08c8  eb        ex      de,hl
08c9  2aff0f    ld      hl,(#0fff)
08cc  eb        ex      de,hl
08cd  cd080f    call    #0f08
08d0  22840f    ld      (#0f84),hl
08d3  3a890f    ld      a,(#0f89)
08d6  47        ld      b,a
08d7  7d        ld      a,l
08d8  cd1707    call    #0717
08db  32890f    ld      (#0f89),a
08de  c9        ret
 
08df  cd1309    call    #0913
08e2  feff      cp      #ff
08e4  cac408    jp      z,#08c4
08e7  7b        ld      a,e
08e8  e61f      and     #1f
08ea  fe0f      cp      #0f
08ec  3a8a0f    ld      a,(#0f8a)
08ef  2a890f    ld      hl,(#0f89)
08f2  ca0c09    jp      z,#090c
08f5  d20209    jp      nc,#0902
08f8  bd        cp      l
08f9  cac408    jp      z,#08c4
08fc  da9508    jp      c,#0895
08ff  c3a908    jp      #08a9
0902  bd        cp      l
0903  cac408    jp      z,#08c4
0906  daa908    jp      c,#08a9
0909  c39508    jp      #0895
090c  bd        cp      l
090d  ca9508    jp      z,#0895
0910  c3c408    jp      #08c4
0913  212809    ld      hl,#0928
0916  23        inc     hl
0917  7e        ld      a,(hl)
0918  feff      cp      #ff
091a  c8        ret     z
 
091b  ba        cp      d
091c  c22409    jp      nz,#0924
091f  2b        dec     hl
0920  7e        ld      a,(hl)
0921  bb        cp      e
0922  c8        ret     z
 
0923  23        inc     hl
0924  23        inc     hl
0925  c31609    jp      #0916
0928  21843d    ld      hl,#3d84
092b  84        add     a,h
092c  4f        ld      c,a
092d  81        add     a,c
092e  ef        rst     #28
092f  86        add     a,(hl)
0930  24        inc     h
0931  84        add     a,h
0932  ef        rst     #28
0933  81        add     a,c
0934  3a844f    ld      a,(#4f84)
0937  86        add     a,(hl)
0938  27        daa
0939  84        add     a,h
093a  8f        adc     a,a
093b  82        add     a,d
093c  37        scf
093d  84        add     a,h
093e  af        xor     a
093f  85        add     a,l
0940  2a842f    ld      hl,(#2f84)
0943  83        add     a,e
0944  34        inc     (hl)
0945  84        add     a,h
0946  0f        rrca
0947  85        add     a,l
0948  ff        rst     #38
0949  ff        rst     #38
094a  2a0a10    ld      hl,(#100a)
094d  cd5809    call    #0958
0950  2a0c10    ld      hl,(#100c)
0953  eb        ex      de,hl
0954  cd080f    call    #0f08
0957  c9        ret
 
0958  eb        ex      de,hl
0959  cd290f    call    #0f29
095c  3a820f    ld      a,(#0f82)
095f  eb        ex      de,hl
0960  a7        and     a
0961  c9        ret
 
0962  2a0c10    ld      hl,(#100c)
0965  cd5809    call    #0958
0968  2a0310    ld      hl,(#1003)
096b  cd980d    call    #0d98
096e  c28d09    jp      nz,#098d
0971  cdb00d    call    #0db0
0974  c28209    jp      nz,#0982
0977  3e03      ld      a,#03
0979  32860f    ld      (#0f86),a
097c  cde10d    call    #0de1
097f  c3c408    jp      #08c4
0982  3e02      ld      a,#02
0984  32860f    ld      (#0f86),a
0987  cdce0d    call    #0dce
098a  c3c408    jp      #08c4
098d  cd1309    call    #0913
0990  feff      cp      #ff
0992  cacb09    jp      z,#09cb
0995  7a        ld      a,d
0996  fe84      cp      #84
0998  3a8a0f    ld      a,(#0f8a)
099b  2a890f    ld      hl,(#0f89)
099e  cab809    jp      z,#09b8
09a1  d2ae09    jp      nc,#09ae
09a4  bd        cp      l
09a5  cacb09    jp      z,#09cb
09a8  d28209    jp      nc,#0982
09ab  c3bf09    jp      #09bf
09ae  bd        cp      l
09af  cacb09    jp      z,#09cb
09b2  d2bf09    jp      nc,#09bf
09b5  c38209    jp      #0982
09b8  bd        cp      l
09b9  ca8209    jp      z,#0982
09bc  c3cb09    jp      #09cb
09bf  2ab102    ld      hl,(#02b1)
09c2  cdb30d    call    #0db3
09c5  cacb09    jp      z,#09cb
09c8  c37709    jp      #0977
09cb  2a0810    ld      hl,(#1008)
09ce  19        add     hl,de
09cf  eb        ex      de,hl
09d0  2a0a10    ld      hl,(#100a)
09d3  eb        ex      de,hl
09d4  cd080f    call    #0f08
09d7  22840f    ld      (#0f84),hl
09da  c9        ret
 
09db  3a7b0f    ld      a,(#0f7b)
09de  fe05      cp      #05
09e0  cae50a    jp      z,#0ae5
09e3  47        ld      b,a
09e4  cdd10e    call    #0ed1
09e7  0e59      ld      c,#59
09e9  cde30e    call    #0ee3
09ec  2a790f    ld      hl,(#0f79)
09ef  eb        ex      de,hl
09f0  c2220a    jp      nz,#0a22
09f3  7b        ld      a,e
09f4  e61f      and     #1f
09f6  a7        and     a
09f7  ca030a    jp      z,#0a03
09fa  2ab302    ld      hl,(#02b3)
09fd  cd980d    call    #0d98
0a00  ca220a    jp      z,#0a22
0a03  78        ld      a,b
0a04  fe01      cp      #01
0a06  caeb0a    jp      z,#0aeb
0a09  da220a    jp      c,#0a22
0a0c  cd1309    call    #0913
0a0f  feff      cp      #ff
0a11  ca220a    jp      z,#0a22
0a14  3e01      ld      a,#01
0a16  219d02    ld      hl,#029d
0a19  327b0f    ld      (#0f7b),a
0a1c  227c0f    ld      (#0f7c),hl
0a1f  c3eb0a    jp      #0aeb
0a22  0e31      ld      c,#31
0a24  cde30e    call    #0ee3
0a27  c2530a    jp      nz,#0a53
0a2a  7b        ld      a,e
0a2b  e61f      and     #1f
0a2d  fe1e      cp      #1e
0a2f  ca380a    jp      z,#0a38
0a32  cd950d    call    #0d95
0a35  ca530a    jp      z,#0a53
0a38  78        ld      a,b
0a39  fe01      cp      #01
0a3b  daeb0a    jp      c,#0aeb
0a3e  ca530a    jp      z,#0a53
0a41  cd5a0f    call    #0f5a
0a44  cd1309    call    #0913
0a47  feff      cp      #ff
0a49  ca530a    jp      z,#0a53
0a4c  af        xor     a
0a4d  219302    ld      hl,#0293
0a50  c3190a    jp      #0a19
0a53  0e49      ld      c,#49
0a55  cde30e    call    #0ee3
0a58  c27d0a    jp      nz,#0a7d
0a5b  cdb00d    call    #0db0
0a5e  ca7d0a    jp      z,#0a7d
0a61  78        ld      a,b
0a62  fe02      cp      #02
0a64  caeb0a    jp      z,#0aeb
0a67  d27d0a    jp      nc,#0a7d
0a6a  cd5a0f    call    #0f5a
0a6d  cd1309    call    #0913
0a70  feff      cp      #ff
0a72  ca7d0a    jp      z,#0a7d
0a75  3e02      ld      a,#02
0a77  219902    ld      hl,#0299
0a7a  c3190a    jp      #0a19
0a7d  0e51      ld      c,#51
0a7f  cde30e    call    #0ee3
0a82  c2a40a    jp      nz,#0aa4
0a85  cd8f0d    call    #0d8f
0a88  caa40a    jp      z,#0aa4
0a8b  78        ld      a,b
0a8c  fe02      cp      #02
0a8e  caa40a    jp      z,#0aa4
0a91  d2eb0a    jp      nc,#0aeb
0a94  cd1309    call    #0913
0a97  feff      cp      #ff
0a99  caa40a    jp      z,#0aa4
0a9c  3e03      ld      a,#03
0a9e  21a302    ld      hl,#02a3
0aa1  c3190a    jp      #0a19
0aa4  78        ld      a,b
0aa5  fe01      cp      #01
0aa7  cad00a    jp      z,#0ad0
0aaa  dac10a    jp      c,#0ac1
0aad  fe02      cp      #02
0aaf  cadc0a    jp      z,#0adc
0ab2  cd8f0d    call    #0d8f
0ab5  c2eb0a    jp      nz,#0aeb
0ab8  cd950d    call    #0d95
0abb  ca140a    jp      z,#0a14
0abe  c34c0a    jp      #0a4c
0ac1  cd950d    call    #0d95
0ac4  c2eb0a    jp      nz,#0aeb
0ac7  cdb00d    call    #0db0
0aca  ca9c0a    jp      z,#0a9c
0acd  c3750a    jp      #0a75
0ad0  213f00    ld      hl,#003f
0ad3  cd980d    call    #0d98
0ad6  c2eb0a    jp      nz,#0aeb
0ad9  c3c70a    jp      #0ac7
0adc  cdb00d    call    #0db0
0adf  c2eb0a    jp      nz,#0aeb
0ae2  c3b80a    jp      #0ab8
0ae5  017800    ld      bc,#0078
0ae8  cd48c0    call    #c048
0aeb  3a0710    ld      a,(#1007)
0aee  3c        inc     a
0aef  320710    ld      (#1007),a
0af2  cdf70e    call    #0ef7
0af5  ca060b    jp      z,#0b06
0af8  3a7b0f    ld      a,(#0f7b)
0afb  fe05      cp      #05
0afd  ca060b    jp      z,#0b06
0b00  cd240e    call    #0e24
0b03  c3060c    jp      #0c06
0b06  2a7c0f    ld      hl,(#0f7c)
0b09  23        inc     hl
0b0a  7e        ld      a,(hl)
0b0b  a7        and     a
0b0c  ca250b    jp      z,#0b25
0b0f  3a7b0f    ld      a,(#0f7b)
0b12  fe05      cp      #05
0b14  da060c    jp      c,#0c06
0b17  af        xor     a
0b18  320710    ld      (#1007),a
0b1b  c3060c    jp      #0c06
0b1e  017017    ld      bc,#1770
0b21  cd48c0    call    #c048
0b24  c9        ret
 
0b25  2a790f    ld      hl,(#0f79)
0b28  eb        ex      de,hl
0b29  3a7b0f    ld      a,(#0f7b)
0b2c  fe01      cp      #01
0b2e  cad80b    jp      z,#0bd8
0b31  dabd0b    jp      c,#0bbd
0b34  fe03      cp      #03
0b36  cafa0b    jp      z,#0bfa
0b39  daee0b    jp      c,#0bee
0b3c  3a830f    ld      a,(#0f83)
0b3f  3d        dec     a
0b40  ca4f0b    jp      z,#0b4f
0b43  32830f    ld      (#0f83),a
0b46  01e803    ld      bc,#03e8
0b49  cd48c0    call    #c048
0b4c  c34d05    jp      #054d
0b4f  af        xor     a
0b50  324201    ld      (#0142),a
0b53  324b01    ld      (#014b),a
0b56  219312    ld      hl,#1293
0b59  223701    ld      (#0137),hl
0b5c  3e6d      ld      a,#6d
0b5e  323901    ld      (#0139),a
0b61  3a0401    ld      a,(#0104)
0b64  fe19      cp      #19
0b66  da930b    jp      c,#0b93
0b69  3a780f    ld      a,(#0f78)
0b6c  a7        and     a
0b6d  caad0b    jp      z,#0bad
0b70  3a830f    ld      a,(#0f83)
0b73  47        ld      b,a
0b74  05        dec     b
0b75  ca830b    jp      z,#0b83
0b78  3a2401    ld      a,(#0124)
0b7b  c60f      add     a,#0f
0b7d  322401    ld      (#0124),a
0b80  c3740b    jp      #0b74
0b83  cd6306    call    #0663
0b86  cd4ec0    call    #c04e
0b89  af        xor     a
0b8a  32780f    ld      (#0f78),a
0b8d  cd1e0b    call    #0b1e
0b90  c31605    jp      #0516
0b93  cd9c0b    call    #0b9c
0b96  cd6d06    call    #066d
0b99  c3860b    jp      #0b86
0b9c  3a830f    ld      a,(#0f83)
0b9f  47        ld      b,a
0ba0  05        dec     b
0ba1  c8        ret     z
 
0ba2  3a2301    ld      a,(#0123)
0ba5  c60f      add     a,#0f
0ba7  322301    ld      (#0123),a
0baa  c3a00b    jp      #0ba0
0bad  3c        inc     a
0bae  32780f    ld      (#0f78),a
0bb1  cd9c0b    call    #0b9c
0bb4  cd6d06    call    #066d
0bb7  cd1e0b    call    #0b1e
0bba  c33b05    jp      #053b
0bbd  219302    ld      hl,#0293
0bc0  227c0f    ld      (#0f7c),hl
0bc3  7b        ld      a,e
0bc4  e61f      and     #1f
0bc6  fe1e      cp      #1e
0bc8  210100    ld      hl,#0001
0bcb  c2d10b    jp      nz,#0bd1
0bce  2ab502    ld      hl,(#02b5)
0bd1  19        add     hl,de
0bd2  22790f    ld      (#0f79),hl
0bd5  c3060c    jp      #0c06
0bd8  219d02    ld      hl,#029d
0bdb  227c0f    ld      (#0f7c),hl
0bde  7b        ld      a,e
0bdf  e61f      and     #1f
0be1  a7        and     a
0be2  21ffff    ld      hl,#ffff
0be5  c2d10b    jp      nz,#0bd1
0be8  211e00    ld      hl,#001e
0beb  c3d10b    jp      #0bd1
0bee  219902    ld      hl,#0299
0bf1  227c0f    ld      (#0f7c),hl
0bf4  21e0ff    ld      hl,#ffe0
0bf7  c3d10b    jp      #0bd1
0bfa  21a302    ld      hl,#02a3
0bfd  227c0f    ld      (#0f7c),hl
0c00  212000    ld      hl,#0020
0c03  c3d10b    jp      #0bd1
0c06  3a7b0f    ld      a,(#0f7b)
0c09  fe05      cp      #05
0c0b  da680c    jp      c,#0c68
0c0e  3a1010    ld      a,(#1010)
0c11  a7        and     a
0c12  c25c0c    jp      nz,#0c5c
0c15  3a860f    ld      a,(#0f86)
0c18  2a840f    ld      hl,(#0f84)
0c1b  a7        and     a
0c1c  ca3c0c    jp      z,#0c3c
0c1f  fe02      cp      #02
0c21  ca500c    jp      z,#0c50
0c24  da460c    jp      c,#0c46
0c27  116404    ld      de,#0464
0c2a  cd290f    call    #0f29
0c2d  11c0ff    ld      de,#ffc0
0c30  19        add     hl,de
0c31  22840f    ld      (#0f84),hl
0c34  3e02      ld      a,#02
0c36  321010    ld      (#1010),a
0c39  c3680c    jp      #0c68
0c3c  118004    ld      de,#0480
0c3f  cd290f    call    #0f29
0c42  2b        dec     hl
0c43  c3310c    jp      #0c31
0c46  119a04    ld      de,#049a
0c49  cd290f    call    #0f29
0c4c  23        inc     hl
0c4d  c3310c    jp      #0c31
0c50  115504    ld      de,#0455
0c53  cd290f    call    #0f29
0c56  114000    ld      de,#0040
0c59  c3300c    jp      #0c30
0c5c  2a7f0f    ld      hl,(#0f7f)
0c5f  5e        ld      e,(hl)
0c60  23        inc     hl
0c61  56        ld      d,(hl)
0c62  2a840f    ld      hl,(#0f84)
0c65  cd290f    call    #0f29
0c68  2a7c0f    ld      hl,(#0f7c)
0c6b  227f0f    ld      (#0f7f),hl
0c6e  5e        ld      e,(hl)
0c6f  23        inc     hl
0c70  56        ld      d,(hl)
0c71  23        inc     hl
0c72  227c0f    ld      (#0f7c),hl
0c75  2a790f    ld      hl,(#0f79)
0c78  cd080f    call    #0f08
0c7b  3a7b0f    ld      a,(#0f7b)
0c7e  fe05      cp      #05
0c80  daa20c    jp      c,#0ca2
0c83  2a840f    ld      hl,(#0f84)
0c86  cd080f    call    #0f08
0c89  3a1110    ld      a,(#1011)
0c8c  f5        push    af
0c8d  0f        rrca
0c8e  d2960c    jp      nc,#0c96
0c91  3e88      ld      a,#88
0c93  c3980c    jp      #0c98
0c96  3e8a      ld      a,#8a
0c98  d380      out     (#80),a
0c9a  f1        pop     af
0c9b  3c        inc     a
0c9c  321110    ld      (#1011),a
0c9f  c34806    jp      #0648
0ca2  af        xor     a
0ca3  321110    ld      (#1011),a
0ca6  0600      ld      b,#00
0ca8  217503    ld      hl,#0375
0cab  118b0f    ld      de,#0f8b
0cae  7e        ld      a,(hl)
0caf  feff      cp      #ff
0cb1  ca500d    jp      z,#0d50
0cb4  2b        dec     hl
0cb5  eb        ex      de,hl
0cb6  7e        ld      a,(hl)
0cb7  a7        and     a
0cb8  eb        ex      de,hl
0cb9  cac40c    jp      z,#0cc4
0cbc  04        inc     b
0cbd  23        inc     hl
0cbe  23        inc     hl
0cbf  13        inc     de
0cc0  23        inc     hl
0cc1  c3ae0c    jp      #0cae
0cc4  d5        push    de
0cc5  5e        ld      e,(hl)
0cc6  23        inc     hl
0cc7  56        ld      d,(hl)
0cc8  2b        dec     hl
0cc9  eb        ex      de,hl
0cca  7e        ld      a,(hl)
0ccb  a7        and     a
0ccc  ca490d    jp      z,#0d49
0ccf  fe3c      cp      #3c
0cd1  ca4b0d    jp      z,#0d4b
0cd4  7e        ld      a,(hl)
0cd5  fe50      cp      #50
0cd7  cafd0c    jp      z,#0cfd
0cda  fe55      cp      #55
0cdc  cafd0c    jp      z,#0cfd
0cdf  fe05      cp      #05
0ce1  cafd0c    jp      z,#0cfd
0ce4  fe51      cp      #51
0ce6  cafd0c    jp      z,#0cfd
0ce9  fe01      cp      #01
0ceb  cafd0c    jp      z,#0cfd
0cee  fe45      cp      #45
0cf0  cafd0c    jp      z,#0cfd
0cf3  fe40      cp      #40
0cf5  cafd0c    jp      z,#0cfd
0cf8  fe15      cp      #15
0cfa  c24b0d    jp      nz,#0d4b
0cfd  3a7b0f    ld      a,(#0f7b)
0d00  fe05      cp      #05
0d02  ca7c0d    jp      z,#0d7c
0d05  215210    ld      hl,#1052
0d08  224901    ld      (#0149),hl
0d0b  3e59      ld      a,#59
0d0d  324b01    ld      (#014b),a
0d10  af        xor     a
0d11  320710    ld      (#1007),a
0d14  3a0e10    ld      a,(#100e)
0d17  3c        inc     a
0d18  320e10    ld      (#100e),a
0d1b  eb        ex      de,hl
0d1c  d1        pop     de
0d1d  eb        ex      de,hl
0d1e  34        inc     (hl)
0d1f  eb        ex      de,hl
0d20  3a780f    ld      a,(#0f78)
0d23  a7        and     a
0d24  ca380d    jp      z,#0d38
0d27  3a2401    ld      a,(#0124)
0d2a  3c        inc     a
0d2b  fe64      cp      #64
0d2d  c2320d    jp      nz,#0d32
0d30  c60a      add     a,#0a
0d32  322401    ld      (#0124),a
0d35  c3bc0c    jp      #0cbc
0d38  3a2301    ld      a,(#0123)
0d3b  3c        inc     a
0d3c  fe64      cp      #64
0d3e  c2430d    jp      nz,#0d43
0d41  c60a      add     a,#0a
0d43  322301    ld      (#0123),a
0d46  c3bc0c    jp      #0cbc
0d49  3614      ld      (hl),#14
0d4b  eb        ex      de,hl
0d4c  d1        pop     de
0d4d  c3bc0c    jp      #0cbc
0d50  3a0e10    ld      a,(#100e)
0d53  b8        cp      b
0d54  c2690d    jp      nz,#0d69
0d57  217c10    ld      hl,#107c
0d5a  223701    ld      (#0137),hl
0d5d  3e6d      ld      a,#6d
0d5f  323901    ld      (#0139),a
0d62  af        xor     a
0d63  324201    ld      (#0142),a
0d66  c3610b    jp      #0b61
0d69  3a0710    ld      a,(#1007)
0d6c  fe06      cp      #06
0d6e  da7c0d    jp      c,#0d7c
0d71  216910    ld      hl,#1069
0d74  224901    ld      (#0149),hl
0d77  3e59      ld      a,#59
0d79  324b01    ld      (#014b),a
0d7c  3a0401    ld      a,(#0104)
0d7f  0f        rrca
0d80  010400    ld      bc,#0004
0d83  d2890d    jp      nc,#0d89
0d86  010a00    ld      bc,#000a
0d89  cd48c0    call    #c048
0d8c  c34806    jp      #0648
0d8f  216000    ld      hl,#0060
0d92  c3b30d    jp      #0db3
0d95  214200    ld      hl,#0042
0d98  d5        push    de
0d99  c5        push    bc
0d9a  0604      ld      b,#04
0d9c  19        add     hl,de
0d9d  7e        ld      a,(hl)
0d9e  e6f0      and     #f0
0da0  fea0      cp      #a0
0da2  cacb0d    jp      z,#0dcb
0da5  05        dec     b
0da6  cac80d    jp      z,#0dc8
0da9  eb        ex      de,hl
0daa  21e0ff    ld      hl,#ffe0
0dad  c39c0d    jp      #0d9c
0db0  21c0ff    ld      hl,#ffc0
0db3  d5        push    de
0db4  c5        push    bc
0db5  0602      ld      b,#02
0db7  19        add     hl,de
0db8  7e        ld      a,(hl)
0db9  e6f0      and     #f0
0dbb  fea0      cp      #a0
0dbd  cacb0d    jp      z,#0dcb
0dc0  05        dec     b
0dc1  cac80d    jp      z,#0dc8
0dc4  23        inc     hl
0dc5  c3b80d    jp      #0db8
0dc8  af        xor     a
0dc9  3c        inc     a
0dca  a7        and     a
0dcb  c1        pop     bc
0dcc  d1        pop     de
0dcd  c9        ret
 
0dce  215504    ld      hl,#0455
0dd1  22ff0f    ld      (#0fff),hl
0dd4  21e0ff    ld      hl,#ffe0
0dd7  220510    ld      (#1005),hl
0dda  21c0ff    ld      hl,#ffc0
0ddd  220110    ld      (#1001),hl
0de0  c9        ret
 
0de1  216404    ld      hl,#0464
0de4  22ff0f    ld      (#0fff),hl
0de7  212000    ld      hl,#0020
0dea  220510    ld      (#1005),hl
0ded  216000    ld      hl,#0060
0df0  c3dd0d    jp      #0ddd
0df3  218004    ld      hl,#0480
0df6  220a10    ld      (#100a),hl
0df9  213f00    ld      hl,#003f
0dfc  220310    ld      (#1003),hl
0dff  21ffff    ld      hl,#ffff
0e02  220810    ld      (#1008),hl
0e05  217304    ld      hl,#0473
0e08  220c10    ld      (#100c),hl
0e0b  c9        ret
 
0e0c  219a04    ld      hl,#049a
0e0f  220a10    ld      (#100a),hl
0e12  214200    ld      hl,#0042
0e15  220310    ld      (#1003),hl
0e18  210100    ld      hl,#0001
0e1b  220810    ld      (#1008),hl
0e1e  218d04    ld      hl,#048d
0e21  c3080e    jp      #0e08
0e24  211310    ld      hl,#1013
0e27  223701    ld      (#0137),hl
0e2a  224001    ld      (#0140),hl
0e2d  224901    ld      (#0149),hl
0e30  3eb9      ld      a,#b9
0e32  323901    ld      (#0139),a
0e35  324201    ld      (#0142),a
0e38  324b01    ld      (#014b),a
0e3b  cdca0e    call    #0eca
0e3e  3a7b0f    ld      a,(#0f7b)
0e41  2a790f    ld      hl,(#0f79)
0e44  a7        and     a
0e45  ca5a0e    jp      z,#0e5a
0e48  fe02      cp      #02
0e4a  ca640e    jp      z,#0e64
0e4d  da5f0e    jp      c,#0e5f
0e50  11a0ff    ld      de,#ffa0
0e53  19        add     hl,de
0e54  22790f    ld      (#0f79),hl
0e57  c36a0e    jp      #0e6a
0e5a  2b        dec     hl
0e5b  2b        dec     hl
0e5c  c3540e    jp      #0e54
0e5f  23        inc     hl
0e60  23        inc     hl
0e61  c3540e    jp      #0e54
0e64  116000    ld      de,#0060
0e67  c3530e    jp      #0e53
0e6a  3e05      ld      a,#05
0e6c  327b0f    ld      (#0f7b),a
0e6f  21a704    ld      hl,#04a7
0e72  227c0f    ld      (#0f7c),hl
0e75  c9        ret
 
0e76  f5        push    af
0e77  e5        push    hl
0e78  c5        push    bc
0e79  71        ld      (hl),c
0e7a  23        inc     hl
0e7b  05        dec     b
0e7c  c2790e    jp      nz,#0e79
0e7f  c1        pop     bc
0e80  e1        pop     hl
0e81  112000    ld      de,#0020
0e84  19        add     hl,de
0e85  3d        dec     a
0e86  c2770e    jp      nz,#0e77
0e89  f1        pop     af
0e8a  c9        ret
 
0e8b  f5        push    af
0e8c  eb        ex      de,hl
0e8d  7e        ld      a,(hl)
0e8e  feff      cp      #ff
0e90  caa30e    jp      z,#0ea3
0e93  56        ld      d,(hl)
0e94  2b        dec     hl
0e95  5e        ld      e,(hl)
0e96  23        inc     hl
0e97  23        inc     hl
0e98  23        inc     hl
0e99  eb        ex      de,hl
0e9a  f1        pop     af
0e9b  d5        push    de
0e9c  cd760e    call    #0e76
0e9f  d1        pop     de
0ea0  c38b0e    jp      #0e8b
0ea3  f1        pop     af
0ea4  c9        ret
 
0ea5  210000    ld      hl,#0000
0ea8  0e00      ld      c,#00
0eaa  fe0a      cp      #0a
0eac  dac20e    jp      c,#0ec2
0eaf  0e0a      ld      c,#0a
0eb1  6f        ld      l,a
0eb2  d5        push    de
0eb3  cd2dc0    call    #c02d
0eb6  d1        pop     de
0eb7  0e00      ld      c,#00
0eb9  7c        ld      a,h
0eba  e5        push    hl
0ebb  d5        push    de
0ebc  cd3fc0    call    #c03f
0ebf  d1        pop     de
0ec0  e1        pop     hl
0ec1  7d        ld      a,l
0ec2  1b        dec     de
0ec3  1b        dec     de
0ec4  d5        push    de
0ec5  cd3fc0    call    #c03f
0ec8  d1        pop     de
0ec9  c9        ret
 
0eca  011e00    ld      bc,#001e
0ecd  cd48c0    call    #c048
0ed0  c9        ret
 
0ed1  af        xor     a
0ed2  211b01    ld      hl,#011b
0ed5  77        ld      (hl),a
0ed6  23        inc     hl
0ed7  77        ld      (hl),a
0ed8  23        inc     hl
0ed9  77        ld      (hl),a
0eda  23        inc     hl
0edb  77        ld      (hl),a
0edc  c5        push    bc
0edd  cd27c0    call    #c027
0ee0  b7        or      a
0ee1  c1        pop     bc
0ee2  c9        ret
 
0ee3  3a1b01    ld      a,(#011b)
0ee6  b9        cp      c
0ee7  c8        ret     z
 
0ee8  3a1c01    ld      a,(#011c)
0eeb  b9        cp      c
0eec  c8        ret     z
 
0eed  3a1d01    ld      a,(#011d)
0ef0  b9        cp      c
0ef1  c8        ret     z
 
0ef2  3a1e01    ld      a,(#011e)
0ef5  b9        cp      c
0ef6  c9        ret
 
0ef7  2a7f0f    ld      hl,(#0f7f)
0efa  5e        ld      e,(hl)
0efb  23        inc     hl
0efc  56        ld      d,(hl)
0efd  2a790f    ld      hl,(#0f79)
0f00  cd290f    call    #0f29
0f03  3a820f    ld      a,(#0f82)
0f06  a7        and     a
0f07  c9        ret
 
0f08  e5        push    hl
0f09  d5        push    de
0f0a  c5        push    bc
0f0b  1a        ld      a,(de)
0f0c  feff      cp      #ff
0f0e  ca250f    jp      z,#0f25
0f11  4f        ld      c,a
0f12  07        rlca
0f13  da200f    jp      c,#0f20
0f16  0600      ld      b,#00
0f18  09        add     hl,bc
0f19  13        inc     de
0f1a  1a        ld      a,(de)
0f1b  77        ld      (hl),a
0f1c  13        inc     de
0f1d  c30b0f    jp      #0f0b
0f20  06ff      ld      b,#ff
0f22  c3180f    jp      #0f18
0f25  c1        pop     bc
0f26  d1        pop     de
0f27  e1        pop     hl
0f28  c9        ret
 
0f29  e5        push    hl
0f2a  d5        push    de
0f2b  c5        push    bc
0f2c  af        xor     a
0f2d  32820f    ld      (#0f82),a
0f30  1a        ld      a,(de)
0f31  feff      cp      #ff
0f33  ca560f    jp      z,#0f56
0f36  4f        ld      c,a
0f37  07        rlca
0f38  da510f    jp      c,#0f51
0f3b  0600      ld      b,#00
0f3d  09        add     hl,bc
0f3e  13        inc     de
0f3f  1a        ld      a,(de)
0f40  be        cp      (hl)
0f41  ca4b0f    jp      z,#0f4b
0f44  3a820f    ld      a,(#0f82)
0f47  3c        inc     a
0f48  32820f    ld      (#0f82),a
0f4b  3600      ld      (hl),#00
0f4d  13        inc     de
0f4e  c3300f    jp      #0f30
0f51  06ff      ld      b,#ff
0f53  c33d0f    jp      #0f3d
0f56  c1        pop     bc
0f57  d1        pop     de
0f58  e1        pop     hl
0f59  c9        ret
 
0f5a  3a0701    ld      a,(#0107)
0f5d  c635      add     a,#35
0f5f  320701    ld      (#0107),a
0f62  c9        ret
 
0f63  21840f    ld      hl,#0f84
0f66  23        inc     hl
0f67  7e        ld      a,(hl)
0f68  2b        dec     hl
0f69  a7        and     a
0f6a  c8        ret     z
 
0f6b  feff      cp      #ff
0f6d  ca760f    jp      z,#0f76
0f70  23        inc     hl
0f71  23        inc     hl
0f72  23        inc     hl
0f73  c3660f    jp      #0f66
0f76  a7        and     a
0f77  c9        ret
 
0f78  00        nop
0f79  ff        rst     #38
0f7a  ff        rst     #38
0f7b  ff        rst     #38
0f7c  ff        rst     #38
0f7d  ff        rst     #38
0f7e  ff        rst     #38
0f7f  ff        rst     #38
0f80  ff        rst     #38
0f81  00        nop
0f82  00        nop
0f83  05        dec     b
0f84  ff        rst     #38
0f85  ff        rst     #38
0f86  ff        rst     #38
0f87  ff        rst     #38
0f88  ff        rst     #38
0f89  ff        rst     #38
0f8a  ff        rst     #38
0f8b  ff        rst     #38
0f8c  ff        rst     #38
0f8d  ff        rst     #38
0f8e  ff        rst     #38
0f8f  ff        rst     #38
0f90  ff        rst     #38
0f91  ff        rst     #38
0f92  ff        rst     #38
0f93  ff        rst     #38
0f94  ff        rst     #38
0f95  ff        rst     #38
0f96  ff        rst     #38
0f97  ff        rst     #38
0f98  ff        rst     #38
0f99  ff        rst     #38
0f9a  ff        rst     #38
0f9b  ff        rst     #38
0f9c  ff        rst     #38
0f9d  ff        rst     #38
0f9e  ff        rst     #38
0f9f  ff        rst     #38
0fa0  ff        rst     #38
0fa1  ff        rst     #38
0fa2  ff        rst     #38
0fa3  ff        rst     #38
0fa4  ff        rst     #38
0fa5  ff        rst     #38
0fa6  ff        rst     #38
0fa7  ff        rst     #38
0fa8  ff        rst     #38
0fa9  ff        rst     #38
0faa  ff        rst     #38
0fab  ff        rst     #38
0fac  ff        rst     #38
0fad  ff        rst     #38
0fae  ff        rst     #38
0faf  ff        rst     #38
0fb0  ff        rst     #38
0fb1  ff        rst     #38
0fb2  ff        rst     #38
0fb3  ff        rst     #38
0fb4  ff        rst     #38
0fb5  ff        rst     #38
0fb6  ff        rst     #38
0fb7  ff        rst     #38
0fb8  ff        rst     #38
0fb9  ff        rst     #38
0fba  ff        rst     #38
0fbb  ff        rst     #38
0fbc  ff        rst     #38
0fbd  ff        rst     #38
0fbe  ff        rst     #38
0fbf  ff        rst     #38
0fc0  ff        rst     #38
0fc1  ff        rst     #38
0fc2  ff        rst     #38
0fc3  ff        rst     #38
0fc4  ff        rst     #38
0fc5  ff        rst     #38
0fc6  ff        rst     #38
0fc7  ff        rst     #38
0fc8  ff        rst     #38
0fc9  ff        rst     #38
0fca  ff        rst     #38
0fcb  ff        rst     #38
0fcc  ff        rst     #38
0fcd  ff        rst     #38
0fce  ff        rst     #38
0fcf  ff        rst     #38
0fd0  ff        rst     #38
0fd1  ff        rst     #38
0fd2  ff        rst     #38
0fd3  ff        rst     #38
0fd4  ff        rst     #38
0fd5  ff        rst     #38
0fd6  ff        rst     #38
0fd7  ff        rst     #38
0fd8  ff        rst     #38
0fd9  ff        rst     #38
0fda  ff        rst     #38
0fdb  ff        rst     #38
0fdc  ff        rst     #38
0fdd  ff        rst     #38
0fde  ff        rst     #38
0fdf  ff        rst     #38
0fe0  ff        rst     #38
0fe1  ff        rst     #38
0fe2  ff        rst     #38
0fe3  ff        rst     #38
0fe4  ff        rst     #38
0fe5  ff        rst     #38
0fe6  ff        rst     #38
0fe7  ff        rst     #38
0fe8  ff        rst     #38
0fe9  ff        rst     #38
0fea  ff        rst     #38
0feb  ff        rst     #38
0fec  ff        rst     #38
0fed  ff        rst     #38
0fee  ff        rst     #38
0fef  ff        rst     #38
0ff0  ff        rst     #38
0ff1  ff        rst     #38
0ff2  ff        rst     #38
0ff3  ff        rst     #38
0ff4  ff        rst     #38
0ff5  ff        rst     #38
0ff6  ff        rst     #38
0ff7  ff        rst     #38
0ff8  ff        rst     #38
0ff9  ff        rst     #38
0ffa  ff        rst     #38
0ffb  ff        rst     #38
0ffc  ff        rst     #38
0ffd  ff        rst     #38
0ffe  ff        rst     #38
0fff  ff        rst     #38
1000  ff        rst     #38
1001  ff        rst     #38
1002  ff        rst     #38
1003  ff        rst     #38
1004  ff        rst     #38
1005  ff        rst     #38
1006  ff        rst     #38
1007  ff        rst     #38
1008  ff        rst     #38
1009  ff        rst     #38
100a  ff        rst     #38
100b  ff        rst     #38
100c  ff        rst     #38
100d  ff        rst     #38
100e  ff        rst     #38
100f  ff        rst     #38
1010  ff        rst     #38
1011  ff        rst     #38
1012  00        nop
1013  0f        rrca
1014  00        nop
1015  00        nop
1016  1f        rra
1017  010102    ld      bc,#0201
101a  010301    ld      bc,#0103
101d  04        inc     b
101e  010501    ld      bc,#0105
1021  0601      ld      b,#01
1023  07        rlca
1024  010801    ld      bc,#0108
1027  09        add     hl,bc
1028  010a01    ld      bc,#010a
102b  0b        dec     bc
102c  010c01    ld      bc,#010c
102f  0d        dec     c
1030  010e02    ld      bc,#020e
1033  0f        rrca
1034  100e      djnz    #1044           ; (14)
1036  100d      djnz    #1045           ; (13)
1038  0a        ld      a,(bc)
1039  0c        inc     c
103a  0a        ld      a,(bc)
103b  0b        dec     bc
103c  0a        ld      a,(bc)
103d  0a        ld      a,(bc)
103e  0a        ld      a,(bc)
103f  09        add     hl,bc
1040  0a        ld      a,(bc)
1041  08        ex      af,af''
1042  0a        ld      a,(bc)
1043  07        rlca
1044  0a        ld      a,(bc)
1045  060a      ld      b,#0a
1047  05        dec     b
1048  0a        ld      a,(bc)
1049  04        inc     b
104a  0a        ld      a,(bc)
104b  03        inc     bc
104c  0a        ld      a,(bc)
104d  02        ld      (bc),a
104e  14        inc     d
104f  0114ee    ld      bc,#ee14
1052  0f        rrca
1053  80        add     a,b
1054  2000      jr      nz,#1056        ; (0)
1056  60        ld      h,b
1057  04        inc     b
1058  70        ld      (hl),b
1059  04        inc     b
105a  60        ld      h,b
105b  04        inc     b
105c  70        ld      (hl),b
105d  04        inc     b
105e  60        ld      h,b
105f  04        inc     b
1060  70        ld      (hl),b
1061  04        inc     b
1062  60        ld      h,b
1063  04        inc     b
1064  70        ld      (hl),b
1065  04        inc     b
1066  60        ld      h,b
1067  08        ex      af,af'
1068  ff        rst     #38
1069  0f        rrca
106a  80        add     a,b
106b  2000      jr      nz,#106d        ; (0)
106d  59        ld      e,c
106e  016002    ld      bc,#0260
1071  59        ld      e,c
1072  016901    ld      bc,#0169
1075  70        ld      (hl),b
1076  017201    ld      bc,#0172
1079  74        ld      (hl),h
107a  01ff0f    ld      bc,#0fff
107d  80        add     a,b
107e  2000      jr      nz,#1080        ; (0)
1080  60        ld      h,b
1081  1860      jr      #10e3           ; (96)
1083  0c        inc     c
1084  5b        ld      e,e
1085  0c        inc     c
1086  59        ld      e,c
1087  1859      jr      #10e2           ; (89)
1089  1857      jr      #10e2           ; (87)
108b  1857      jr      #10e4           ; (87)
108d  0c        inc     c
108e  55        ld      d,l
108f  0c        inc     c
1090  54        ld      d,h
1091  1854      jr      #10e7           ; (84)
1093  0c        inc     c
1094  55        ld      d,l
1095  0c        inc     c
1096  57        ld      d,a
1097  1850      jr      #10e9           ; (80)
1099  1852      jr      #10ed           ; (82)
109b  1855      jr      #10f2           ; (85)
109d  1854      jr      #10f3           ; (84)
109f  24        inc     h
10a0  52        ld      d,d
10a1  0c        inc     c
10a2  50        ld      d,b
10a3  1800      jr      #10a5           ; (0)
10a5  18ee      jr      #1095           ; (-18)
10a7  0f        rrca
10a8  80        add     a,b
10a9  40        ld      b,b
10aa  00        nop
10ab  56        ld      d,(hl)
10ac  0657      ld      b,#57
10ae  2a5430    ld      hl,(#3054)
10b1  54        ld      d,h
10b2  3054      jr      nc,#1108        ; (84)
10b4  3056      jr      nc,#110c        ; (86)
10b6  0657      ld      b,#57
10b8  2a5430    ld      hl,(#3054)
10bb  54        ld      d,h
10bc  3064      jr      nc,#1122        ; (100)
10be  3062      jr      nc,#1122        ; (98)
10c0  1860      jr      #1122           ; (96)
10c2  185b      jr      #111f           ; (91)
10c4  1859      jr      #111f           ; (89)
10c6  1857      jr      #111f           ; (87)
10c8  3055      jr      nc,#111f        ; (85)
10ca  3054      jr      nc,#1120        ; (84)
10cc  3055      jr      nc,#1123        ; (85)
10ce  3057      jr      nc,#1127        ; (87)
10d0  3000      jr      nc,#10d2        ; (0)
10d2  3056      jr      nc,#112a        ; (86)
10d4  0657      ld      b,#57
10d6  2a5430    ld      hl,(#3054)
10d9  54        ld      d,h
10da  3054      jr      nc,#1130        ; (84)
10dc  3056      jr      nc,#1134        ; (86)
10de  0657      ld      b,#57
10e0  2a5430    ld      hl,(#3054)
10e3  54        ld      d,h
10e4  3064      jr      nc,#114a        ; (100)
10e6  3062      jr      nc,#114a        ; (98)
10e8  1860      jr      #114a           ; (96)
10ea  185b      jr      #1147           ; (91)
10ec  1859      jr      #1147           ; (89)
10ee  1857      jr      #1147           ; (87)
10f0  305b      jr      nc,#114d        ; (91)
10f2  3060      jr      nc,#1154        ; (96)
10f4  3000      jr      nc,#10f6        ; (0)
10f6  90        sub     b
10f7  5b        ld      e,e
10f8  0660      ld      b,#60
10fa  2a5930    ld      hl,(#3059)
10fd  59        ld      e,c
10fe  3059      jr      nc,#1159        ; (89)
1100  3060      jr      nc,#1162        ; (96)
1102  0662      ld      b,#62
1104  2a5b30    ld      hl,(#305b)
1107  5b        ld      e,e
1108  305b      jr      nc,#1165        ; (91)
110a  3060      jr      nc,#116c        ; (96)
110c  0662      ld      b,#62
110e  2a5b30    ld      hl,(#305b)
1111  60        ld      h,b
1112  0662      ld      b,#62
1114  2a5b30    ld      hl,(#305b)
1117  62        ld      h,d
1118  0664      ld      b,#64
111a  2a6030    ld      hl,(#3060)
111d  62        ld      h,d
111e  0664      ld      b,#64
1120  2a6030    ld      hl,(#3060)
1123  66        ld      h,(hl)
1124  0667      ld      b,#67
1126  2a6430    ld      hl,(#3064)
1129  64        ld      h,h
112a  3064      jr      nc,#1190        ; (100)
112c  3066      jr      nc,#1194        ; (102)
112e  0667      ld      b,#67
1130  2a6430    ld      hl,(#3064)
1133  64        ld      h,h
1134  3074      jr      nc,#11aa        ; (116)
1136  3072      jr      nc,#11aa        ; (114)
1138  1870      jr      #11aa           ; (112)
113a  186b      jr      #11a7           ; (107)
113c  1869      jr      #11a7           ; (105)
113e  1867      jr      #11a7           ; (103)
1140  306b      jr      nc,#11ad        ; (107)
1142  3070      jr      nc,#11b4        ; (112)
1144  3000      jr      nc,#1146        ; (0)
1146  90        sub     b
1147  58        ld      e,b
1148  3058      jr      nc,#11a2        ; (88)
114a  1859      jr      #11a5           ; (89)
114c  185b      jr      #11a9           ; (91)
114e  3054      jr      nc,#11a4        ; (84)
1150  3060      jr      nc,#11b2        ; (96)
1152  3060      jr      nc,#11b4        ; (96)
1154  185b      jr      #11b1           ; (91)
1156  1859      jr      #11b1           ; (89)
1158  60        ld      h,b
1159  58        ld      e,b
115a  3058      jr      nc,#11b4        ; (88)
115c  1859      jr      #11b7           ; (89)
115e  185b      jr      #11bb           ; (91)
1160  3054      jr      nc,#11b6        ; (84)
1162  3064      jr      nc,#11c8        ; (100)
1164  305b      jr      nc,#11c1        ; (91)
1166  3064      jr      nc,#11cc        ; (100)
1168  305b      jr      nc,#11c5        ; (91)
116a  3060      jr      nc,#11cc        ; (96)
116c  3059      jr      nc,#11c7        ; (89)
116e  3064      jr      nc,#11d4        ; (100)
1170  305b      jr      nc,#11cd        ; (91)
1172  3060      jr      nc,#11d4        ; (96)
1174  3059      jr      nc,#11cf        ; (89)
1176  3064      jr      nc,#11dc        ; (100)
1178  305b      jr      nc,#11d5        ; (91)
117a  3061      jr      nc,#11dd        ; (97)
117c  3061      jr      nc,#11df        ; (97)
117e  1862      jr      #11e2           ; (98)
1180  1864      jr      #11e6           ; (100)
1182  305b      jr      nc,#11df        ; (91)
1184  3065      jr      nc,#11eb        ; (101)
1186  3065      jr      nc,#11ed        ; (101)
1188  1864      jr      #11ee           ; (100)
118a  1862      jr      #11ee           ; (98)
118c  60        ld      h,b
118d  61        ld      h,c
118e  3061      jr      nc,#11f1        ; (97)
1190  1862      jr      #11f4           ; (98)
1192  1864      jr      #11f8           ; (100)
1194  305b      jr      nc,#11f1        ; (91)
1196  3069      jr      nc,#1201        ; (105)
1198  3064      jr      nc,#11fe        ; (100)
119a  3069      jr      nc,#1205        ; (105)
119c  3064      jr      nc,#1202        ; (100)
119e  3065      jr      nc,#1205        ; (101)
11a0  3062      jr      nc,#1204        ; (98)
11a2  3069      jr      nc,#120d        ; (105)
11a4  3064      jr      nc,#120a        ; (100)
11a6  3055      jr      nc,#11fd        ; (85)
11a8  3052      jr      nc,#11fc        ; (82)
11aa  3059      jr      nc,#1205        ; (89)
11ac  3054      jr      nc,#1202        ; (84)
11ae  30ee      jr      nc,#119e        ; (-18)
11b0  0c        inc     c
11b1  80        add     a,b
11b2  40        ld      b,b
11b3  00        nop
11b4  50        ld      d,b
11b5  3057      jr      nc,#120e        ; (87)
11b7  3057      jr      nc,#1210        ; (87)
11b9  3057      jr      nc,#1212        ; (87)
11bb  3050      jr      nc,#120d        ; (80)
11bd  3057      jr      nc,#1216        ; (87)
11bf  3057      jr      nc,#1218        ; (87)
11c1  3057      jr      nc,#121a        ; (87)
11c3  3055      jr      nc,#121a        ; (85)
11c5  3059      jr      nc,#1220        ; (89)
11c7  3059      jr      nc,#1222        ; (89)
11c9  3059      jr      nc,#1224        ; (89)
11cb  3050      jr      nc,#121d        ; (80)
11cd  3057      jr      nc,#1226        ; (87)
11cf  3057      jr      nc,#1228        ; (87)
11d1  3057      jr      nc,#122a        ; (87)
11d3  3050      jr      nc,#1225        ; (80)
11d5  3057      jr      nc,#122e        ; (87)
11d7  3057      jr      nc,#1230        ; (87)
11d9  3057      jr      nc,#1232        ; (87)
11db  3050      jr      nc,#122d        ; (80)
11dd  3057      jr      nc,#1236        ; (87)
11df  3057      jr      nc,#1238        ; (87)
11e1  3057      jr      nc,#123a        ; (87)
11e3  3055      jr      nc,#123a        ; (85)
11e5  3059      jr      nc,#1240        ; (89)
11e7  3054      jr      nc,#123d        ; (84)
11e9  3057      jr      nc,#1242        ; (87)
11eb  3000      jr      nc,#11ed        ; (0)
11ed  3059      jr      nc,#1248        ; (89)
11ef  1859      jr      #124a           ; (89)
11f1  1859      jr      #124c           ; (89)
11f3  3059      jr      nc,#124e        ; (89)
11f5  3049      jr      nc,#1240        ; (73)
11f7  3055      jr      nc,#124e        ; (85)
11f9  3055      jr      nc,#1250        ; (85)
11fb  3055      jr      nc,#1252        ; (85)
11fd  304b      jr      nc,#124a        ; (75)
11ff  3057      jr      nc,#1258        ; (87)
1201  3057      jr      nc,#125a        ; (87)
1203  3057      jr      nc,#125c        ; (87)
1205  3057      jr      nc,#125e        ; (87)
1207  3062      jr      nc,#126b        ; (98)
1209  3057      jr      nc,#1262        ; (87)
120b  3062      jr      nc,#126f        ; (98)
120d  3000      jr      nc,#120f        ; (0)
120f  c0        ret     nz
 
1210  50        ld      d,b
1211  3057      jr      nc,#126a        ; (87)
1213  3057      jr      nc,#126c        ; (87)
1215  3057      jr      nc,#126e        ; (87)
1217  3050      jr      nc,#1269        ; (80)
1219  3057      jr      nc,#1272        ; (87)
121b  3057      jr      nc,#1274        ; (87)
121d  3057      jr      nc,#1276        ; (87)
121f  3055      jr      nc,#1276        ; (85)
1221  3059      jr      nc,#127c        ; (89)
1223  3054      jr      nc,#1279        ; (84)
1225  3057      jr      nc,#127e        ; (87)
1227  3000      jr      nc,#1229        ; (0)
1229  3054      jr      nc,#127f        ; (84)
122b  1854      jr      #1281           ; (84)
122d  1854      jr      #1283           ; (84)
122f  3054      jr      nc,#1285        ; (84)
1231  3054      jr      nc,#1287        ; (84)
1233  305b      jr      nc,#1290        ; (91)
1235  305b      jr      nc,#1292        ; (91)
1237  305b      jr      nc,#1294        ; (91)
1239  3059      jr      nc,#1294        ; (89)
123b  3060      jr      nc,#129d        ; (96)
123d  3060      jr      nc,#129f        ; (96)
123f  3060      jr      nc,#12a1        ; (96)
1241  3054      jr      nc,#1297        ; (84)
1243  305b      jr      nc,#12a0        ; (91)
1245  305b      jr      nc,#12a2        ; (91)
1247  305b      jr      nc,#12a4        ; (91)
1249  3058      jr      nc,#12a3        ; (88)
124b  3062      jr      nc,#12af        ; (98)
124d  3058      jr      nc,#12a7        ; (88)
124f  3062      jr      nc,#12b3        ; (98)
1251  3059      jr      nc,#12ac        ; (89)
1253  3064      jr      nc,#12b9        ; (100)
1255  3058      jr      nc,#12af        ; (88)
1257  3062      jr      nc,#12bb        ; (98)
1259  3059      jr      nc,#12b4        ; (89)
125b  3064      jr      nc,#12c1        ; (100)
125d  3058      jr      nc,#12b7        ; (88)
125f  3062      jr      nc,#12c3        ; (98)
1261  3059      jr      nc,#12bc        ; (89)
1263  3064      jr      nc,#12c9        ; (100)
1265  3064      jr      nc,#12cb        ; (100)
1267  3064      jr      nc,#12cd        ; (100)
1269  3059      jr      nc,#12c4        ; (89)
126b  3065      jr      nc,#12d2        ; (101)
126d  3065      jr      nc,#12d4        ; (101)
126f  3065      jr      nc,#12d6        ; (101)
1271  3059      jr      nc,#12cc        ; (89)
1273  3064      jr      nc,#12d9        ; (100)
1275  3064      jr      nc,#12db        ; (100)
1277  3064      jr      nc,#12dd        ; (100)
1279  3061      jr      nc,#12dc        ; (97)
127b  3067      jr      nc,#12e4        ; (103)
127d  3061      jr      nc,#12e0        ; (97)
127f  3067      jr      nc,#12e8        ; (103)
1281  3062      jr      nc,#12e5        ; (98)
1283  3069      jr      nc,#12ee        ; (105)
1285  3061      jr      nc,#12e8        ; (97)
1287  3067      jr      nc,#12f0        ; (103)
1289  3052      jr      nc,#12dd        ; (82)
128b  3059      jr      nc,#12e6        ; (89)
128d  3051      jr      nc,#12e0        ; (81)
128f  3057      jr      nc,#12e8        ; (87)
1291  30ee      jr      nc,#1281        ; (-18)
1293  0f        rrca
1294  80        add     a,b
1295  2000      jr      nz,#1297        ; (0)
1297  54        ld      d,h
1298  04        inc     b
1299  57        ld      d,a
129a  04        inc     b
129b  60        ld      h,b
129c  04        inc     b
129d  62        ld      h,d
129e  04        inc     b
129f  52        ld      d,d
12a0  04        inc     b
12a1  55        ld      d,l
12a2  04        inc     b
12a3  59        ld      e,c
12a4  04        inc     b
12a5  5b        ld      e,e
12a6  04        inc     b
12a7  59        ld      e,c
12a8  04        inc     b
12a9  5b        ld      e,e
12aa  04        inc     b
12ab  59        ld      e,c
12ac  04        inc     b
12ad  57        ld      d,a
12ae  04        inc     b
12af  59        ld      e,c
12b0  08        ex      af,af'
12b1  00        nop
12b2  08        ex      af,af'
12b3  eeff      xor     #ff
12b5  ff        rst     #38
12b6  ff        rst     #38
12b7  ff        rst     #38
12b8  ff        rst     #38
12b9  ff        rst     #38
12ba  ff        rst     #38
12bb  ff        rst     #38
12bc  ff        rst     #38
12bd  ff        rst     #38
12be  ff        rst     #38
12bf  ff        rst     #38