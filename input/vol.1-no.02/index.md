# INPUT (BR), vol. 1, no. 2

## Programação BASIC 2: <br> A arte de fazer laços

### [pag.002.bas](pag.022.bas)

Geração de um tom sonoro de frequência variável demonstrando uso do laço `FOR`.

Como variação ([pag.002-extra.bas](pag.022-extra.bas)), me inspirei no programa para MSX. O MSX, o comando `SOUND` carrega valores diretamente nos registradores do processador de som PSG AY-3-8910. Para fazer o mesmo no MC-1000, foi preciso recorrer a código de máquina. Assim, `SOUND <registrador>, <valor>` foi substituído por `<var> = USR(<registrador> * 256 + <valor>)`.

IMPORTANTE: No registrador 7 (mixer) é preciso sempre manter o bit 7 como 0 e o bit 6 como 1, para que o teclado funcione corretamente. Por isso se soma 64 (0b01000000) ao valor desejado para os demais bits.
