                 org     #3f00
3F00 3E 0F       ld      a,#0f           ; Seleciona entrada de cassete.
3F02 D3 20       out     (#20),a
                 loop:
3F04 DB 40       in      a,(#40)         ; Lê entrada de cassete.
3F06 17          rla                     ; Seleciona modo de vídeo:
3F07 3E 01       ld      a,#1            ; 1 (verde) ou 3 (vermelho),
3F09 38 02       jr      c,poke          ; conforme o valor lido.
3F0B 3E 03       ld      a,#3
                 poke:
3F0D D3 80       out     (#80),a         ; Define modo de vídeo.
3F0F 18 F3       jr      loop