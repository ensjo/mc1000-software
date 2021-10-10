	; *** DOOMFIRE ***
	; para CCE MC1000.
	; Emerson Costa ("Ensjo").
	; 2021-10-08.
	DEFC WIDTH = 32 ; Largura da tela.
	DEFC HEIGHT = 16 ; Altura da tela.
	DEFC SEMIGRAPHICS_4_MODE = 64; Valor que indica o modo de vídeo semigráfico 4.
	DEFC VRAM_BANK_OFF = 1; Bit 0 = 1 indica VRAM inativa.
	DEFC COL32 = $80 ; Porta de configuração do modo de vídeo e bank-switching da VRAM.
	DEFC MODBUF = $00F5 ; Variável do sistema que armazena o valor a usar na porta COL32.
	DEFC RANDOM = $0107 ; Variável do sistema alterada a cada leitura de teclado para prover aleatoriedade em jogos.
	DEFC VRAM = $8000 ; Endereço de início da VRAM.
	DEFC XCLEAR = $C030 ; Preenche 2Kb iniciais da VRAM com o byte contido em B.
	DEFC BLACK_BLOCK  = 0 ; Ausência de fogo.
	DEFC RED_BLOCK    = 3 << 4 | @1111 ; Partícula de fogo mais fria.
	DEFC ORANGE_BLOCK = 7 << 4 | @1111
	DEFC YELLOW_BLOCK = 1 << 4 | @1111
	DEFC WHITE_BLOCK  = 4 << 4 | @1111 ; Partícula de fogo mais quente.
	
	ORG $3F00
	
	; 1. INICIALIZAÇÃO. (Executar 1 vez.)

	; Configura modo de vídeo e ativa VRAM.
	ld a,SEMIGRAPHICS_4_MODE | VRAM_BANK_OFF
	ld (MODBUF),a ; Armazena para uso futuro.
	res 0,a ; Bit 0 = 0 indica VRAM ativa.
	out (COL32),a ; Configura modo de vídeo e ativa VRAM.

	; Preenche a tela com blocos pretos.
	ld b,BLACK_BLOCK
	call XCLEAR

	; Preenche a última linha da tela com blocos brancos.
	; Esta será a fonte do fogo, nunca será modificada.
	ld b,WIDTH
	ld hl,VRAM + (HEIGHT - 1) * WIDTH ; Início da última linha.
l_fonte_fogo:
	ld (hl),WHITE_BLOCK
	inc hl
	djnz l_fonte_fogo

	; (Configura modo de vídeo e) inativa VRAM.
	ld a,(MODBUF)
	out (COL32),a

	; Retorna ao BASIC.
	ret
	

	; 2. PROPAGAÇÃO DO FOGO. (Executar sucessivas vezes.)

	; Cada partícula de fogo na tela irá subir para a linha acima,
	; com 50% de chance de se tornar mais fria, e, possivelmente,
	; se extinguir (tornar-se um bloco preto).
	; A linha de blocos brancos na última linha da tela (fonte do
	; fogo) gera novas partículas acima, mas não se desloca.

	; (Configura modo de vídeo e) ativa VRAM.
	ld (MODBUF),a
	res 0,a
	out (COL32),a

	ld hl,VRAM ; Posição acima = início da primeira linha da tela.
	ld de,VRAM + WIDTH ; Posição atual = início da segunda linha da tela.
l_propaga_fogo:
	ld a,(de) ; Obtém a cor do bloco na posição atual.
	ld c,a ; A princípio, essa será a cor a usar na posição acima.
	cp BLACK_BLOCK ; Se for um bloco preto,
	jr z,colore ; propagar o bloco preto acima.
	
	; Se a posição atual for uma partícula de fogo (bloco não preto),
	; há 50% de chance de mudar para uma cor mais fria ao subir.

	; Rotina de geração de número aleatório obtida em
	; http://www.z80.info/pseudo-random.txt
	DEFC seed = RANDOM
	; ------------------------------------------
	; Fast RND
	;
	; An 8-bit pseudo-random number generator,
	; using a similar method to the Spectrum ROM,
	; - without the overhead of the Spectrum ROM.
	;
	; R = random number seed
	; an integer in the range [1, 256]
	;
	; R -> (33*R) mod 257
	;
	; S = R - 1
	; an 8-bit unsigned integer

	ld a, (seed)
	ld b, a 

	rrca ; multiply by 32
	rrca
	rrca
	xor $1f

	add a, b
	sbc a, 255 ; carry

	ld (seed), a
	;ret
	; ------------------------------------------

	bit 3,a ; Checa um bit do número aleatório gerado.
	jr z,colore ; Se for 0 (50% de chance), o fogo sobe com a mesma cor.

	; Se for 1,
	; muda cor do bloco ao subir.
	ld a,c
	cp a,WHITE_BLOCK ; Se for branco (mais quente),
	ld c,YELLOW_BLOCK ; muda para amarelo.
	jr z,colore
	cp a,c ; YELLOW_BLOCK ; Se for amarelo,
	ld c,ORANGE_BLOCK ; muda para laranja.
	jr z,colore
	cp a,c ; ORANGE_BLOCK ; Se for laranja,
	ld c,RED_BLOCK ; muda para vermelho.
	jr z,colore
	; Se for vermelho (mais frio),
	ld c,BLACK_BLOCK ; muda para preto (ausência de fogo).

colore:
	ld (hl),c ; Colore o bloco na posição acima.
	
	inc hl ; Avança para a próxima posição.
	inc de
	ld a,d ; Repete até a última linha.
	cp (VRAM + HEIGHT * WIDTH) / 256
	jr nz,l_propaga_fogo

	; (Configura modo de vídeo e) inativa VRAM.
	ld (MODBUF),a
	out (COL32),a

	; Retorna ao BASIC.
	ret
