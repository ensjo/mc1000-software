10  TEXT : HOME : POKE 245,97: REM SEMIGRAPHICS 6
15 C$ =  CHR$ (128) +  CHR$ (174) +  CHR$ (140) +  CHR$ (170) +  CHR$ (140) +  CHR$ (172) +  CHR$ (140) +  CHR$ (142) +  CHR$ (140) +  CHR$ (140) +  CHR$ (128) +  CHR$ (170)
20  PRINT  MID$ (C$, INT ( RND (1) * 6) * 2 + 1,2);: POKE 910,0: GOTO 20
