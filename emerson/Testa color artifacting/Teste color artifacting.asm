                 org    #3f00
3F00 CD 86 C8    call   #c886           ; Habilita VRAM para escrita.
3F03 21 00 80    ld     hl,#8000        ; Inicio da VRAM.
                 loop:
3F06 7D          ld     a,l
3F07 CB 6F       bit    5,a             ; Em que linha estamos?
3F09 28 02       jr     z,par           ; Linha par? Usaremos os bits 2 e 1.
3F0B 0F          rrca                   ; Linha ímpar? Usaremos os bits 4 e 3.
3F0C 0F          rrca
                 par:
3F0D 0F          rrca
3F0E E6 03       and    #3
3F10 47          ld     b,a             ; Monta um byte com o padrão de 2 bits repetidos 4 vezes.
3F11 07          rlca
3F12 07          rlca
3F13 B0          or     b
3F14 07          rlca
3F15 07          rlca
3F16 B0          or     b
3F17 07          rlca
3F18 07          rlca
3F19 B0          or     b
3F1A 77          ld     (hl),a          ; Coloca o padrão na tela.
3F1B 23          inc    hl              ; Próximo endereço.
3F1C 7C          ld     a,h             ; Repete até o fim da VRAM.
3F1D FE 98       cp     #98
3F1F 20 E5       jr     nz,loop
3F21 CD 79 C8    call   #c879           ; Desabilita VRAM.
3F24 C9          ret
