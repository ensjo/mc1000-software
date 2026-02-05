Comparação entre a velocidade do BASIC e do código de máquina em preencher a memória de vídeo com caracteres aleatórios (dados quaisquer obtidos da ROM).


Código de máquina na linha 170:

 ```z80
   .org 0x3f00
  ld hl,#0xc020 ; Endereço na ROM.
  ld de,#0x8020 ; Segunda linha da VRAM.
  ld bc,#0x01e0 ; 512-32=480 bytes.
  ldir ; Copia.
  ret
 ```
