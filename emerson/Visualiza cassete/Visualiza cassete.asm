                 org     #3f00
3F00 CD 86 C8    call    #c886           ; Habilita VRAM para escrita.
3F03 21 00 80    ld      hl,#8000        ; Início da VRAM.
                 loopvram:
3F06 06 08       ld      b,#08           ; Ler 8 bits, que...
3F08 0E 00       ld      c,#00           ; serão armazenados em C.
                 loopbyte:
3F0A 3E 0F       ld      a,#0f           ; Lê a entrada do cassete.
3F0C D3 20       out     (#20),a
3F0E DB 40       in      a,(#40)
3F10 07          rlca                    ; Passa o bit mais significativo
3F11 CB 11       rl      c               ; para C.
3F13 10 F5       djnz    loopbyte
3F15 71          ld      (hl),c          ; Coloca o byte em C na VRAM.
3F16 23          inc     hl              ; Passa para a próxima posição.
3F17 7C          ld      a,h             ; Termina se já encheu a VRAM.
3F18 FE 98       cp      #98
3F1A 20 EA       jr      nz,loopvram
3F1C CD 79 C8    call    #c879           ; Desabilita VRAM.
3F1F C9          ret
