Preenchimento da tela com blocos coloridos aleatórios (dados quaisquer obtidos da ROM).

Código de máquina na linha 70:
```z80
  .org 0x3f00
  call 0xc886 ; Habilita VRAM.
  call 0xdef0 ; Argumento em DE.
  ex de,hl ; Argumento em HL.
  ld de,#0x8000 ; Início da VRAM.
  ld bc,#0x0200 ; 512 bytes.
  ldir ; Copia.
  ret
```