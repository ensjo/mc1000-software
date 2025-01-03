; Disassembly of the file MC1000.ROM
;
; Created with dZ80 v1.31
;
; on Saturday, 24 of September 2005 at 02:02 AM
;

; Recursos auxiliares para análise da ROM:
; 1. Listagem do interpretador do Altair BASIC 4K com rótulos
;    "reinventados" e comentários em inglês:
;    http://altairbasic.org/
;    Estes rotulos serão registrados entre sinais de maior e menor <>.
; 2. Listagem de um interpretador HC-BASIC (8KB), de 1988,
;    aparentemente com rótulos originais, e comentários em alemão:
;    http://www.iee.et.tu-dresden.de/~kc-club/DOWNLOAD/DISK283/HCBASIC.MAC
;    Estes serão indicados entre chaves {}.
; 3. Listagem do interpretador NASCOM ROM BASIC (8KB), de 1978:
;    http://www.nascomhomepage.com/lang/8kbasic.asm
;    Estes serão indicados entre colchetes [].
; 4. Código-fonte original do Microsoft BASIC para 6502 (1978):
;    https://github.com/brajeshwar/Microsoft-BASIC-for-6502-Original-Source-Code-1978/blob/master/M6502.MAC.txt
;    Estes rótulos serão registrados prefixados com "\".
; 5. Código-fonte original do Microsoft GW-BASIC para 8088 (1983):
;    https://github.com/microsoft/GW-BASIC
;    O código do GW-BASIC foi aberto em 21/05/2020. Eis o anúncio:
;    https://devblogs.microsoft.com/commandline/microsoft-open-sources-gw-basic/
;    Estes rótulos serão registrados prefixados com "@".

C000  C363C0    JP      #C063 ; ST: Partida a frio
C003  C3D6CE    JP      #CED6 ; BAENT0: Início CCE BASIC
C006  C31BC3    JP      #C31B ; KEY: Entrada console
C009  C347C3    JP      #C347 ; KEY?: Status console
C00C  C397C8    JP      #C897 ; CO: Saída console
C00F  C362C1    JP      #C162 ; TAPIN: Entrada cassete
C012  C3B7C4    JP      #C4B7 ; TAPOUT: Saída cassete
C015  C388C1    JP      #C188 ; GET1: Carrega dados do cassete
C018  C3DEC0    JP      #C0DE ; MSG: Apresenta uma string na tela
C01B  C354C1    JP      #C154 ; TLOAD: carrega jogo do cassete
C01E  C3C9DA    JP      #DAC9 ; GETL: Entra uma linha do teclado
C021  C3CEC7    JP      #C7CE ; ISCN: Apaga tela de texto
C024  C35FC5    JP      #C55F ; INTRUP
C027  C37FC3    JP      #C37F ; SKEY?: Procura status do teclado para jogo. A = nº da tecla pressionada.
C02A  C36EC4    JP      #C46E ; MPY: Multiplicação
C02D  C383C4    JP      #C483 ; DIV: Divisão
C030  C361CB    JP      #CB61 ; XCLEAR: Limpa tela gráfica
C033  C364CB    JP      #CB64 ; XCLR1
C036  C36DCB    JP      #CB6D ; D4X5: Display padrão 4x5
C039  C37DCB    JP      #CB7D ; TOP: Mostra tópico do jogo
C03C  C38ACB    JP      #CB8A ; PLAYNO: Mostra nº do jogo
C03F  C38DCB    JP      #CB8D ; DISPY2: Exibe 2 dígitos
C042  C3ADCB    JP      #CBAD ; SHOWNO: Exibe 1 dígito
C045  C3D5CB    JP      #CBD5 ; NEXTGM: Muda número do jogo
C048  C30EC3    JP      #C30E ; DELAYB
C04B  C395CD    JP      #CD95 ; SCORE: Exibe pontos na direita e na esquerda
C04E  C36ECE    JP      #CE6E ; LSCORE: Exibe pontos da direita
C051  C3BACC    JP      #CCBA ; SHAPON: Mostra contorno
C054  C3D7CC    JP      #CCD7 ; SHAPOF: Apaga contorno
C057  C38FCB    JP      #CB8F ; DISPY: Exibe 1 ou 2 dígitos
C05A  C3CBC0    JP      #C0CB ; LPDRV: Envia um caracter para a impressora
C05D  C3DAC0    JP      #C0DA ; LPSTS: Testa status da impressora
C060  C3FCC0    JP      #C0FC ; BEEP

; ST : Partida a frio.
; Inicialização do computador.
; Prepara jump para a rotina de interrupção.
C063  3EC3      LD      A,#C3
C065  323800    LD      (#0038),A
C068  215FC5    LD      HL,#C55F ; INTRUP
C06B  223900    LD      (#0039),HL
;
C06E  ED56      IM      1
C070  310002    LD      SP,#0200
; Modo de texto.
C073  3E01      LD      A,#01 ; Modo alfanumérico verde.
C075  D380      OUT     (#80),A ; COL32
C077  32F500    LD      (#00F5),A ; MODBUF
;
C07A  CDC0C0    CALL    #C0C0 ; Zera AVALUE, BVALUE e CVALUE.
C07D  FB        EI
C07E  322F01    LD      (#012F),A ; FSHCNT
C081  320F00    LD      (#000F),A ; C40?80
C084  3C        INC     A
C085  325801    LD      (#0158),A ; MODEK
C088  CD30C1    CALL    #C130 ; Silencia PSG e inicializa ENABLE.
C08B  CDFCC0    CALL    #C0FC ; BEEP
; Desativa hooks da leitura de teclado.
C08E  3EC9      LD      A,#C9
C090  322001    LD      (#0120),A ; JOB
C093  323001    LD      (#0130),A ; JOBM
; Aguarda liberação de alguma tecla pressionada.
C096  CD39C3    CALL    #C339
; Testa presença de monitor de 80 colunas.
C099  3E0F      LD      A,#0F
C09B  D310      OUT     (#10),A ; RPORT1
C09D  D311      OUT     (#11),A ; DPORT1
C09F  DB11      IN      A,(#11) ; DPORT1
C0A1  FE0F      CP      #0F
C0A3  3E00      LD      A,#00
C0A5  C2AAC0    JP      NZ,#C0AA
C0A8  3E02      LD      A,#02
C0AA  322D01    LD      (#012D),A ; COSW
; Direciona um dos hooks da leitura de teclado
; para a rotina de intermitência do cursor.
C0AD  3EC3      LD      A,#C3
C0AF  323001    LD      (#0130),A ; JOBM
C0B2  21E9C0    LD      HL,#C0E9
C0B5  223101    LD      (#0131),HL ; JOBM+1
;
C0B8  3E5A      LD      A,#5A
C0BA  325E01    LD      (#015E),A ; CHECK
C0BD  C395CE    JP      #CE95 ; {PRIST1}

; Zera AVALUE, BVALUE e CVALUE.
C0C0  AF        XOR     A
C0C1  323901    LD      (#0139),A ; AVALUE
C0C4  324201    LD      (#0142),A ; BVALUE
C0C7  324B01    LD      (#014B),A ; CVALUE
C0CA  C9        RET

; LPDRV: Envia um caracter para a impressora.
; O código do caracter deve estar armazenado em C.
C0CB  F5        PUSH    AF
C0CC  CDDAC0    CALL    #C0DA ; LPSTS
C0CF  DACCC0    JP      C,#C0CC
C0D2  79        LD      A,C
C0D3  D305      OUT     (#05),A ; DPORT
C0D5  AF        XOR     A
C0D6  D304      OUT     (#04),A ; STROB
C0D8  F1        POP     AF
C0D9  C9        RET

; LPSTS: Testa status da impressora.
; Se bit de carry retorna desligado, a impressora
; está pronta.
C0DA  DB04      IN      A,(#04) ; SPORT
C0DC  0F        RRCA
C0DD  C9        RET

; MSG: Apresenta uma string na tela.
; Imprime a string apontada por HL.
; A string termina com um byte '#00'.
C0DE  7E        LD      A,(HL)
C0DF  B7        OR      A
C0E0  C8        RET     Z
C0E1  4F        LD      C,A
C0E2  CD97C8    CALL    #C897 ; CO
C0E5  23        INC     HL
C0E6  C3DEC0    JP      #C0DE ; MSG

; Decrementa contador para intermitência do
; cursor.
C0E9  3A3301    LD      A,(#0133) ; FLASHB
C0EC  3D        DEC     A
C0ED  323301    LD      (#0133),A ; FLASHB
C0F0  C0        RET     NZ

; Efetua intermitência do cursor e registra
; seu estado atual.
; (Cursor aceso: FSHCNT (#012F) é par.)
C0F1  CD55CB    CALL    #CB55 ; CALLUPDBM
C0F4  3A2F01    LD      A,(#012F) ; FSHCNT
C0F7  3C        INC     A
C0F8  322F01    LD      (#012F),A ; FSHCNT
C0FB  C9        RET

; Instrui o PSG a produzir um BEEP
; no alto-falante.
C0FC  E5        PUSH    HL
C0FD  C5        PUSH    BC
C0FE  F5        PUSH    AF
C0FF  211FC1    LD      HL,#C11F
C102  0E04      LD      C,#04
C104  F3        DI
C105  7E        LD      A,(HL)
C106  D320      OUT     (#20),A ; REG
C108  23        INC     HL
C109  7E        LD      A,(HL)
C10A  D360      OUT     (#60),A ; WR
C10C  23        INC     HL
C10D  0D        DEC     C
C10E  C205C1    JP      NZ,#C105
C111  013000    LD      BC,#0030 ; 48ms
C114  CD0EC3    CALL    #C30E ; DELAYB
C117  CD27C1    CALL    #C127
C11A  FB        EI
C11B  F1        POP     AF
C11C  C1        POP     BC
C11D  E1        POP     HL
C11E  C9        RET

; Dados para produção do BEEP.
; Pares: registrador do PSG & valor.
C11F  0420      DB      #04,#20
C121  077B      DB      #07,#7B
C123  0A1F      DB      #0A,#1F
C125  0D0D      DB      #0D,#0D

; Silencia PSG.
C127  3E07      LD      A,#07
C129  D320      OUT     (#20),A ; REG
C12B  3E7F      LD      A,#7F
C12D  D360      OUT     (#60),A ; WR
C12F  C9        RET

; Silencia PSG e inicializa ENABLE.
C130  CD27C1    CALL    #C127
C133  325001    LD      (#0150),A ; ENABLE
C136  C9        RET

; BITFROMTAPE: Lê o toca-fitas.
; Lê um pulso (se houver), um
; silêncio e retorna em A o
; comprimento do pulso seguinte.
C137  D5        PUSH    DE
C138  1600      LD      D,#00
; Seleciona o registro do PSG
; correspondente à entrada da
; fita.
C13A  3E0F      LD      A,#0F
C13C  D320      OUT     (#20),A ; REG
; Lê enquanto houver pulso.
C13E  DB40      IN      A,(#40) ; RD
C140  07        RLCA
C141  DA3EC1    JP      C,#C13E
; Lê enquanto houver silêncio.
C144  DB40      IN      A,(#40) ; RD
C146  07        RLCA
C147  D244C1    JP      NC,#C144
; Lê enquanto houver pulso,
; incrementando D.
C14A  14        INC     D
C14B  DB40      IN      A,(#40) ; RD
C14D  07        RLCA
C14E  DA4AC1    JP      C,#C14A
;
C151  7A        LD      A,D
C152  D1        POP     DE
C153  C9        RET

; TLOAD: Carrega jogo do cassete.
C154  310002    LD      SP,#0200
C157  3E01      LD      A,#01
C159  320601    LD      (#0106),A ; HEAD
C15C  210001    LD      HL,#0100
C15F  22FB00    LD      (#00FB),HL ; STAR

; TAPIN: Entrada cassete
C162  F3        DI
; Modo texto (fundo verde)
C163  3E01      LD      A,#01
C165  D380      OUT     (#80),A ; COL32
C167  32F500    LD      (#00F5),A ; MODBUF
C16A  325801    LD      (#0158),A ; MODEK
; Lê header
C16D  CD58C2    CALL    #C258 ; HEADERFROMTAPE
; Lê o nome do arquivo em #017F (OBUF).
; (Máx. 14 bytes. Se tiver menos bytes,
; deve terminar com CR .)
C170  160E      LD      D,#0E
C172  217F01    LD      HL,#017F ; OBUF
;
C175  CD6EC2    CALL    #C26E ; BYTEFROMTAPE
C178  77        LD      (HL),A
C179  FE0D      CP      #0D
C17B  CA83C1    JP      Z,#C183
C17E  23        INC     HL
C17F  15        DEC     D
C180  C275C1    JP      NZ,#C175
; Retorna se estiver em modo BASIC. (?)
C183  3A0601    LD      A,(#0106) ; HEAD
C186  3C        INC     A
C187  C8        RET     Z

; GET1: Carrega dados do cassete

; Lê os endereços de início e fim(+1)
; do bloco salvo na fita.
C188  CD6EC2    CALL    #C26E ; BYTEFROMTAPE
C18B  6F        LD      L,A
C18C  CD6EC2    CALL    #C26E ; BYTEFROMTAPE
C18F  67        LD      H,A
C190  CD6EC2    CALL    #C26E ; BYTEFROMTAPE
C193  5F        LD      E,A
C194  CD6EC2    CALL    #C26E ; BYTEFROMTAPE
C197  57        LD      D,A
C198  EB        EX      DE,HL
; Calcula o tamanho do bloco.
C199  7D        LD      A,L
C19A  93        SUB     E
C19B  5F        LD      E,A
C19C  7C        LD      A,H
C19D  9A        SBC     A,D
C19E  57        LD      D,A
; Calcula novo endereço de fim.
C19F  2AFB00    LD      HL,(#00FB) ; STAR
C1A2  19        ADD     HL,DE
C1A3  22FD00    LD      (#00FD),HL ; ENDT
C1A6  EB        EX      DE,HL
; Lê o bloco da fita.
C1A7  2AFB00    LD      HL,(#00FB) ; STAR
C1AA  CD6EC2    CALL    #C26E ; BYTEFROMTAPE
C1AD  77        LD      (HL),A
C1AE  23        INC     HL
C1AF  CDE6C2    CALL    #C2E6 ; GREENRED
C1B2  C2AAC1    JP      NZ,#C1AA
; Modo texto (fundo verde) e retorna
; se estiver em modo BASIC. (?)
C1B5  3A0601    LD      A,(#0106) ; HEAD
C1B8  3C        INC     A
C1B9  3E01      LD      A,#01
C1BB  D380      OUT     (#80),A ; COL32
C1BD  32F500    LD      (#00F5),A ; MODBUF
C1C0  C8        RET     Z

; ExecAposTLOAD:
; Inicializa pilha e salta para $0200.
C1C1  210002    LD      HL,#0200
; Inicializa pilha e salta para HL.
C1C4  310002    LD      SP,#0200
; Cursor sem piscar.
C1C7  3EC9      LD      A,#C9
C1C9  323001    LD      (#0130),A ; JOBM
;
C1CC  AF        XOR     A
C1CD  325E01    LD      (#015E),A ; CHECK
C1D0  320601    LD      (#0106),A ; HEAD
C1D3  321B01    LD      (#011B),A ; KEY0
C1D6  E9        JP      (HL)

; INTIA:
; (HL) <-- (HL) << 4 OR B.
C1D7  7E        LD      A,(HL)
C1D8  07        RLCA
C1D9  07        RLCA
C1DA  07        RLCA
C1DB  07        RLCA
C1DC  E670      AND     #70
C1DE  B0        OR      B
C1DF  77        LD      (HL),A
C1E0  C9        RET

; VOICE:
; Monta os registros CHANA/CHANB/CHANC e aponta NNA/NNB/NNC para eles.
C1E1  3E80      LD      A,#80
C1E3  326E01    LD      (#016E),A ; CHANA+1
C1E6  327401    LD      (#0174),A ; CHANB+1
C1E9  327A01    LD      (#017A),A ; CHANC+1
C1EC  3E0F      LD      A,#0F
C1EE  327001    LD      (#0170),A ; CHANA+3
C1F1  327601    LD      (#0176),A ; CHANB+3
C1F4  327C01    LD      (#017C),A ; CHANC+3
C1F7  AF        XOR     A
C1F8  213901    LD      HL,#0139 ; AVALUE
C1FB  B6        OR      (HL)
C1FC  CA0CC2    JP      Z,#C20C ; BBB
C1FF  064D      LD      B,#4D
C201  CDD7C1    CALL    #C1D7 ; INTIA ; (AVALUE) <-- (AVALUE) << 4 OR #4D:
                              ; * VOICEA=3, controle de amplitude pela envoltória.
                              ; * INTRPA=(valor anterior de AVALUE)+1.
                              ; * Produção de tom.
C204  216D01    LD      HL,#016D ; CHANA
C207  223701    LD      (#0137),HL ; NAA ; (NAA) <-- CHANA.
C20A  360F      LD      (HL),#0F ; (CHANA) <-- #0F.
; BBB:
C20C  214201    LD      HL,#0142 ; BVALUE
C20F  AF        XOR     A
C210  B6        OR      (HL)
C211  CA21C2    JP      Z,#C221 ; CCC
C214  0649      LD      B,#49
C216  CDD7C1    CALL    #C1D7 ; INTIA ; (BVALUE) <-- (BVALUE) << 4 OR #49:
                              ; * VOICEB=2, amplitude fixa decrescida.
                              ; * INTRPB=(valor anterior de BVALUE)+1.
                              ; * Produção de tom.
C219  217301    LD      HL,#0173 ; CHANB
C21C  224001    LD      (#0140),HL ; NBB ; (NBB) <-- CHANB.
C21F  360D      LD      (HL),#0D ; (CHANB) <-- #0D.
; CCC:
C221  214B01    LD      HL,#014B ; CVALUE
C224  AF        XOR     A
C225  B6        OR      (HL)
C226  CA36C2    JP      Z,#C236 ; DZD
C229  0649      LD      B,#49
C22B  CDD7C1    CALL    #C1D7 ; INTIA ; (CVALUE) <-- (CVALUE) << 4 OR #49:
                              ; * VOICEC=2, amplitude fixa decrescida.
                              ; * INTRPC=(valor anterior de CVALUE)+1.
                              ; * Produção de tom.
C22E  217901    LD      HL,#0179 ; CHANC
C231  224901    LD      (#0149),HL ; NCC ; (NCC) <-- CHANC.
C234  360D      LD      (HL),#0D ; (CHANC) <-- #0D.
; DZD:
C236  CD5FC5    CALL    #C55F ; INTRUP
C239  C9        RET

; Lê 64 pulsos (e silêncios) de
; comprimento D <= x < E, somando
; esses comprimentos.
C23A  210000    LD      HL,#0000
C23D  0640      LD      B,#40
C23F  CD37C1    CALL    #C137 ; BITFROMTAPE
C242  BA        CP      D
C243  DA3AC2    JP      C,#C23A
C246  BB        CP      E
C247  D23AC2    JP      NC,#C23A
C24A  D5        PUSH    DE
C24B  1600      LD      D,#00
C24D  5F        LD      E,A
C24E  19        ADD     HL,DE
C24F  D1        POP     DE
C250  05        DEC     B
C251  C23FC2    JP      NZ,#C23F
C254  29        ADD     HL,HL
C255  29        ADD     HL,HL
C256  4C        LD      C,H
C257  C9        RET

; HEADERFROMTAPE: Lê um header da fita,
; calibrando o comprimento dos pulsos.

; Lê 64 pulsos (e silêncios) de
; comprimento 37 <= x < 68
; (bits "1").
C258  114425    LD      DE,#2544
C25B  CD3AC2    CALL    #C23A
C25E  C5        PUSH    BC
; Lê 64 pulsos (e silêncios) de
; comprimento 69 <= x < 129
; (bits "0").
C25F  118145    LD      DE,#4581
C262  CD3AC2    CALL    #C23A
; Calcula a média de comprimento (fronteira)
; entre os pulsos curtos e os pulsos longos.
C265  79        LD      A,C
C266  C1        POP     BC
C267  81        ADD     A,C
C268  A7        AND     A
C269  1F        RRA
C26A  32FF00    LD      (#00FF),A ; BORDER
C26D  C9        RET

; BYTEFROMTAPE: Lê um byte da fita.
C26E  C5        PUSH    BC
C26F  D5        PUSH    DE
C270  3AFF00    LD      A,(#00FF) ; BORDER
C273  57        LD      D,A
; Espera um bit "1".
C274  CD37C1    CALL    #C137 ; BITFROMTAPE
C277  FE25      CP      #25
C279  DA74C2    JP      C,#C274
C27C  FE44      CP      #44
C27E  D274C2    JP      NC,#C274
; Lê os oito bits do bytes,
; do menos ao mais significativo.
C281  0608      LD      B,#08
C283  CD37C1    CALL    #C137 ; BITFROMTAPE
C286  BA        CP      D
C287  79        LD      A,C
C288  1F        RRA
C289  4F        LD      C,A
C28A  05        DEC     B
C28B  C283C2    JP      NZ,#C283
; Lê bit de paridade e checa.
C28E  CD37C1    CALL    #C137 ; BITFROMTAPE
C291  BA        CP      D
C292  78        LD      A,B
C293  1F        RRA
C294  81        ADD     A,C
C295  B7        OR      A
C296  EA9DC2    JP      PE,#C29D ; PARITYERR
; Retorna byte lido em A.
C299  79        LD      A,C
C29A  D1        POP     DE
C29B  C1        POP     BC
C29C  C9        RET

; PARITYERR
C29D  F1        POP     AF
C29E  F1        POP     AF
C29F  F1        POP     AF
C2A0  3A0601    LD      A,(#0106) ; HEAD
C2A3  3C        INC     A
C2A4  C4CEC7    CALL    NZ,#C7CE ; ISCN
C2A7  21B5C2    LD      HL,#C2B5 ; "REBOBINE..."
C2AA  CDDEC0    CALL    #C0DE ; MSG
C2AD  3A0601    LD      A,(#0106) ; HEAD
C2B0  3C        INC     A
C2B1  C8        RET     Z
C2B2  C362C1    JP      #C162 ; TAPIN

;
C2B5  0D0A      DB      #0D,#0A ; CR+LF
C2B7  5245424F  DB      'REBOBINE A FITA E'
C2BB  42494E45
C2BF  20412046
C2C3  49544120
C2C7  45
C2C8  0D0A      DB      #0D,#0A ; CR+LF
C2CA  52454150  DB      'REAPERTE O BOTAO PLAY'
C2CE  45525445
C2D2  204F2042
C2D6  4F54414F
C2DA  20504C41
C2DE  59
C2DF  20202020  DB      '    '
C2E3  0D0A      DB      #0D,#0A ; CR+LF
C2E5  00        DB      #00

; GREENRED: Alterna a cor do vídeo durante uma
; operação de fita a cada 256 bytes.

; Se o byte menos significativo do endereço do
; ponto atual de leitura/gravação for igual ao
; bytes menos significativo do endereço de fim
; do bloco de memória...
C2E6  7D        LD      A,L
C2E7  BB        CP      E
C2E8  C0        RET     NZ
; ...alterna a cor do vídeo.
C2E9  3A5801    LD      A,(#0158) ; MODEK
C2EC  D602      SUB     #02
C2EE  FE01      CP      #01
C2F0  CAF5C2    JP      Z,#C2F5
C2F3  3E03      LD      A,#03
C2F5  325801    LD      (#0158),A ; MODEK
C2F8  D380      OUT     (#80),A ; COL32
C2FA  7C        LD      A,H
C2FB  BA        CP      D
C2FC  C9        RET

; FINDRAMTOP: A partir do endereço em HL,
; testa a escrita na RAM. Retorna o último
; endereço que aceita escrita.
; [MLOOP]
C2FD  23        INC     HL
C2FE  7C        LD      A,H
C2FF  B5        OR      L
C300  CA0CC3    JP      Z,#C30C ; [SETTOP]
C303  7E        LD      A,(HL)
C304  47        LD      B,A
C305  2F        CPL
C306  77        LD      (HL),A
C307  BE        CP      (HL)
C308  70        LD      (HL),B
C309  CAFDC2    JP      Z,#C2FD ; FINDRAMTOP [MLOOP]
; [SETTOP]
C30C  2B        DEC     HL
C30D  C9        RET

; DELAYB: Produz uma pausa de BC
; milissegundos.
C30E  3ED2      LD      A,#D2
C310  3D        DEC     A
C311  C210C3    JP      NZ,#C310
C314  0B        DEC     BC
C315  78        LD      A,B
C316  B1        OR      C
C317  C20EC3    JP      NZ,#C30E ; DELAYB
C31A  C9        RET

; KEY: Entrada console.
; Aguarda até que uma tecla seja pressionada
; e então liberada.
C31B  3A2E01    LD      A,(#012E) ; KEYSW
C31E  B7        OR      A
C31F  CA33C3    JP      Z,#C333
C322  3A0601    LD      A,(#0106) ; HEAD
C325  3C        INC     A
C326  C22CC3    JP      NZ,#C32C
C329  CDFCC0    CALL    #C0FC ; BEEP
C32C  3A1C01    LD      A,(#011C) ; KEY0+1
C32F  CD39C3    CALL    #C339
C332  C9        RET
C333  CD47C3    CALL    #C347 ; KEY?
C336  C31BC3    JP      #C31B ; KEY

; Há uma tecla pressionada?
; Se estiver, espera até que seja liberada.
C339  F5        PUSH    AF
C33A  AF        XOR     A
C33B  322E01    LD      (#012E),A ; KEYSW
C33E  CD47C3    CALL    #C347 ; KEY?
C341  B7        OR      A
C342  C23AC3    JP      NZ,#C33A
C345  F1        POP     AF
C346  C9        RET

; KEY?: Verifica se uma mesma tecla está
; pressionada em um intervalo de 7ms.
; Se sim, A e KEYSW (#012E) recebem #FF,
; E o código da tecla é colocado em KEY0+1 (#011C).
; Se não, A e KEYSW (#012E) recebem #00.
C347  D5        PUSH    DE
C348  C5        PUSH    BC
C349  3A2E01    LD      A,(#012E) ; KEYSW
C34C  B7        OR      A
C34D  C27CC3    JP      NZ,#C37C
C350  CD7FC3    CALL    #C37F ; SKEY?
C353  B7        OR      A
C354  CA77C3    JP      Z,#C377
C357  3A1B01    LD      A,(#011B) ; KEY0
C35A  5F        LD      E,A
C35B  010700    LD      BC,#0007 ; 7ms
C35E  CD0EC3    CALL    #C30E ; DELAYB
C361  CD7FC3    CALL    #C37F ; SKEY?
C364  B7        OR      A
C365  CA77C3    JP      Z,#C377
C368  3A1B01    LD      A,(#011B) ; KEY0
C36B  BB        CP      E
C36C  C277C3    JP      NZ,#C377
C36F  321C01    LD      (#011C),A ; KEY0+1
C372  3EFF      LD      A,#FF
C374  C379C3    JP      #C379
;
C377  3E00      LD      A,#00
;
C379  322E01    LD      (#012E),A ; KEYSW
;
C37C  C1        POP     BC
C37D  D1        POP     DE
C37E  C9        RET

; SKEY?: Procura status do teclado
; para jogo.
; Retorna #00 se nenhuma tecla
; pressionada. #FF se tecla
; pressionada, e o código da tecla
; fica armazenado em KEY0 (#011B).
; (Esse é o comportamento em modo
; "BASIC" [HEAD = #FF]. Em "modo de
; jogo" [HEAD = 0], retorna a
; quantidade de teclas simultânea-
; mente pressionadas [até 4],
; com as teclas armazenadas nos
; endereços de KEY0 a KEY0+3.)
C37F  E5        PUSH    HL
C380  D5        PUSH    DE
C381  C5        PUSH    BC
; Chama hooks.
C382  CD2001    CALL    #0120 ; JOB
C385  CD3001    CALL    #0130 ; JOBM
; Atualiza número aleatório.
C388  2A0701    LD      HL,(#0107) ; RANDOM
C38B  11E7B2    LD      DE,#B2E7
C38E  19        ADD     HL,DE
C38F  220701    LD      (#0107),HL ; RANDOM
; B vai variar de #FE (11111110) a #7F
; (01111111) para selecionar cada "linha"
; do teclado.
; Em modo de jogo (HEAD [$0106] = 0),
; C vai contar a quantidade de teclas
; simultâneas (0~3).
C392  0100FE    LD      BC,#FE00
; K1:
; Seleciona linha do teclado indicada por B.
C395  F3        DI      ; Impede que a interrupção periódica do Z80 (0x0038) que
                        ; por padrão é configurada para chamar a rotina de som (INTRUP)
                        ; se intrometa e altere a seleção dos registradores do PSG.
C396  3E0E      LD      A,#0E
C398  D320      OUT     (#20),A ; REG
C39A  78        LD      A,B
C39B  D360      OUT     (#60),A ; WR
C39D  CD65C4    CALL    #C465 ; INPUT/GETPSG0F
; D vai variar de 0 a 5 para selecionar
; cada bit da linha do teclado.
C3A0  1600      LD      D,#00
; K3:
C3A2  0F        RRCA
C3A3  5F        LD      E,A
C3A4  D4CFC3    CALL    NC,#C3CF ; K4 ; tecla pressionada
; "next D"
C3A7  14        INC     D
C3A8  7A        LD      A,D
C3A9  FE06      CP      #06
C3AB  7B        LD      A,E
C3AC  DAA2C3    JP      C,#C3A2 ; K3
; "next B"
C3AF  78        LD      A,B
C3B0  07        RLCA
C3B1  47        LD      B,A
C3B2  DA95C3    JP      C,#C395
; K2:
; Nenhuma tecla pressionada?
C3B5  79        LD      A,C
C3B6  B7        OR      A
C3B7  CA5FC4    JP      Z,#C45F
; Alguma tecla pressionada.
; Retorna #FF em modo BASIC.
C3BA  3A0601    LD      A,(#0106) ; HEAD
C3BD  3C        INC     A
C3BE  3EFF      LD      A,#FF
C3C0  CA61C4    JP      Z,#C461 ; KEY3
; Retorna quantidade de teclas (1~4)
; em modo de jogo.
C3C3  3A1B01    LD      A,(#011B) ; KEY0
C3C6  CDD5CB    CALL    #CBD5 ; NEXTGM
C3C9  79        LD      A,C
C3CA  0F        RRCA
C3CB  07        RLCA
C3CC  C361C4    JP      #C461
; K4:
; CTRL pressionado?
C3CF  CD65C4    CALL    #C465 ; INPUT/GETPSG0F
C3D2  07        RLCA
C3D3  D256C4    JP      NC,#C456 ; K9 ; testa CTRL
; CTRL não pressionado.
C3D6  7A        LD      A,D
C3D7  FE04      CP      #04
C3D9  D2DEC3    JP      NC,#C3DE
; L = D * 8 + 64
C3DC  C606      ADD     A,#06
; L = D * 8 + 16
C3DE  C602      ADD     A,#02
; L = D * 8
C3E0  87        ADD     A,A
C3E1  87        ADD     A,A
C3E2  87        ADD     A,A
C3E3  6F        LD      L,A
; SHIFT pressionado?
C3E4  CD65C4    CALL    #C465 ; GETPSG0F
C3E7  E640      AND     #40
C3E9  C2F8C3    JP      NZ,#C3F8
; SHIFT pressionado.
C3EC  7A        LD      A,D
C3ED  FE04      CP      #04
C3EF  3EF0      LD      A,#F0
C3F1  D2F6C3    JP      NC,#C3F6
C3F4  3E20      LD      A,#20
C3F6  85        ADD     A,L
C3F7  6F        LD      L,A
; H = posição do bit apagado em B.
C3F8  2600      LD      H,#00
C3FA  C5        PUSH    BC
C3FB  78        LD      A,B
C3FC  0F        RRCA
C3FD  47        LD      B,A
C3FE  D205C4    JP      NC,#C405
C401  24        INC     H
C402  C3FBC3    JP      #C3FB
C405  C1        POP     BC
;
C406  7C        LD      A,H
C407  85        ADD     A,L
C408  F5        PUSH    AF
; Em modo BASIC, vai para os ajustes finais.
C409  3A0601    LD      A,(#0106) ; HEAD
C40C  3C        INC     A
C40D  CA21C4    JP      Z,#C421
; Em modo de jogo, armazena a tecla pressionada
; em KEY0+C
C410  79        LD      A,C
C411  211B01    LD      HL,#011B ; KEY0
C414  85        ADD     A,L
C415  6F        LD      L,A
C416  F1        POP     AF
C417  77        LD      (HL),A
; Incrementa C. Se C < 4, continua a
; varredura do teclado.
C418  0C        INC     C
C419  79        LD      A,C
C41A  FE04      CP      #04
C41C  D8        RET     C
; Senão, termina a varredura.
C41D  F1        POP     AF
C41E  C3B5C3    JP      #C3B5

; Ajustes finais.
; [ --> RETURN
; \ --> SPACE
; ] --> RUBOUT
; < --> ,
; = --> -
; > --> .
; ? --> /
; , --> <
; - --> =
; . --> >
; / --> ?
C421  F1        POP     AF
C422  D1        POP     DE
C423  2600      LD      H,#00
C425  6F        LD      L,A
C426  E6FC      AND     #FC
; Corrige < = > ? (+16).
C428  FE2C      CP      ','
C42A  C22FC4    JP      NZ,#C42F
C42D  2610      LD      H,#10 ; +16
; Corrige , - . / (-16).
C42F  FE3C      CP      '<'
C431  C236C4    JP      NZ,#C436
C434  26F0      LD      H,#F0 ; -16
C436  7D        LD      A,L
C437  84        ADD     A,H
; Corrige ENTER.
C438  FE5B      CP      '['
C43A  060D      LD      B,#0D ; tecla RETURN
C43C  CA4DC4    JP      Z,#C44D
; Corrige SPACE.
C43F  FE5C      CP      '\'
C441  0620      LD      B,' ' ; tecla SPACE
C443  CA4DC4    JP      Z,#C44D
; Corrige RUBOUT.
C446  FE5D      CP      ']'
C448  C24EC4    JP      NZ,#C44E
C44B  067F      LD      B,#7F ; tecla RUBOUT
; Armazena código da tecla pressionada.
C44D  78        LD      A,B
C44E  321B01    LD      (#011B),A ; KEY0
; A = #FF indica que houve tecla pressionada.
C451  3EFF      LD      A,#FF
C453  C361C4    JP      #C461
; CTRL pressionado
C456  7A        LD      A,D
C457  FE04      CP      #04
C459  DAE0C3    JP      C,#C3E0
C45C  C3DCC3    JP      #C3DC
; Nenhuma tecla pressionada: código de
; retorno = 0.
C45F  3E00      LD      A,#00
;
C461  C1        POP     BC
C462  D1        POP     DE
C463  E1        POP     HL
C464  C9        RET

; INPUT: Lê em A o registrador #0F do PSG.
; Isto obtém uma "linha" do teclado.
; Os bits são normalmente ligados.
; Pressionar uma tecla zera o bit
; correspondente. O bit 6 é sempre SHIFT e
; o bit 7 é sempre CTRL.
C465  F3        DI
C466  3E0F      LD      A,#0F
C468  D320      OUT     (#20),A ; REG
C46A  DB40      IN      A,(#40) ; RD
C46C  FB        EI
C46D  C9        RET

; MPY: Multiplicação.
; HL <-- A * C, sempre positivo.
C46E  C5        PUSH    BC
C46F  D5        PUSH    DE
C470  210000    LD      HL,#0000
C473  44        LD      B,H
C474  1608      LD      D,#08
C476  29        ADD     HL,HL
C477  07        RLCA
C478  D27CC4    JP      NC,#C47C
C47B  09        ADD     HL,BC
C47C  15        DEC     D
C47D  C276C4    JP      NZ,#C476
C480  D1        POP     DE
C481  C1        POP     BC
C482  C9        RET

; DIV: Divisão
; HL/C = L+H/C
; Erro se carry=0.
C483  7C        LD      A,H
C484  B9        CP      C
C485  D0        RET     NC
C486  C5        PUSH    BC
C487  0608      LD      B,#08
C489  29        ADD     HL,HL
C48A  7C        LD      A,H
C48B  DA9BC4    JP      C,#C49B
C48E  91        SUB     C
C48F  DA94C4    JP      C,#C494
C492  23        INC     HL
C493  67        LD      H,A
C494  05        DEC     B
C495  C289C4    JP      NZ,#C489
C498  37        SCF
C499  C1        POP     BC
C49A  C9        RET
C49B  91        SUB     C
C49C  C392C4    JP      #C492

; FREQ: Tabela dos períodos máximos das notas musicais.
C49F  5D0D      DW      #0D5D ; C = 3421
C4A1  9C0C      DW      #0C9C ; C# = 3228
C4A3  E70B      DW      #0BE7 ; D = 3047
C4A5  3C0B      DW      #0B3C ; D# = 2876
C4A7  9B0A      DW      #0A9B ; E = 2715
C4A9  020A      DW      #0A02 ; F = 2562
C4AB  7309      DW      #0973 ; F# = 2419
C4AD  EB08      DW      #08EB ; G = 2283
C4AF  6B08      DW      #086B ; G# = 2155
C4B1  F207      DW      #07F2 ; A = 2034
C4B3  8007      DW      #0780 ; A# = 1920
C4B5  1407      DW      #0714 ; B = 1812

; TAPOUT: Saída cassete
C4B7  F3        DI
; Modo texto (fundo verde).
C4B8  3E01      LD      A,#01
C4BA  D380      OUT     (#80),A ; COL32
C4BC  32F500    LD      (#00F5),A ; MODBUF
; Envia nome do arquivo à fita.
; (Máx. 14 bytes. Se tiver menos bytes,
; deve terminar com CR .)
C4BF  CDFEC4    CALL    #C4FE ; HEADERTOTAPE
C4C2  218D01    LD      HL,#018D ; FILNAM
C4C5  160E      LD      D,#0E
C4C7  4E        LD      C,(HL)
C4C8  CD1EC5    CALL    #C51E ; BYTETOTAPE
C4CB  3E0D      LD      A,#0D
C4CD  BE        CP      (HL)
C4CE  CAD6C4    JP      Z,#C4D6
C4D1  23        INC     HL
C4D2  15        DEC     D
C4D3  C2C7C4    JP      NZ,#C4C7
; Envia endereço de início e fim(+1) do bloco
; de memória a salvar na fita.
C4D6  21FB00    LD      HL,#00FB
C4D9  1604      LD      D,#04
C4DB  4E        LD      C,(HL)
C4DC  CD1EC5    CALL    #C51E ; BYTETOTAPE
C4DF  23        INC     HL
C4E0  15        DEC     D
C4E1  C2DBC4    JP      NZ,#C4DB
; Envia bloco de memória à fita.
C4E4  2AFD00    LD      HL,(#00FD) ; ENDT
C4E7  EB        EX      DE,HL
C4E8  2AFB00    LD      HL,(#00FB) ; STAR
C4EB  4E        LD      C,(HL)
C4EC  CD1EC5    CALL    #C51E ; BYTETOTAPE
C4EF  CDE6C2    CALL    #C2E6 ; GREENRED
C4F2  23        INC     HL
C4F3  C2EBC4    JP      NZ,#C4EB
; Modo texto (fundo verde).
C4F6  3E01      LD      A,#01
C4F8  D380      OUT     (#80),A ; COL32
C4FA  32F500    LD      (#00F5),A ; MODBUF
C4FD  C9        RET

; HEADERTOTAPE
; Silencia fita.
C4FE  3E0E      LD      A,#0E
C500  D320      OUT     (#20),A ; REG
C502  3EFF      LD      A,#FF
C504  D360      OUT     (#60),A ; WR
; Envia 4096 pulsos curtos (bits "1") à fita.
C506  011000    LD      BC,#0010
C509  37        SCF
C50A  CD39C5    CALL    #C539 ; BITTOTAPE
C50D  05        DEC     B
C50E  C209C5    JP      NZ,#C509
C511  0D        DEC     C
C512  C209C5    JP      NZ,#C509
; Envia 256 pulsos longos (bits "0") à fita.
C515  B7        OR      A
C516  CD39C5    CALL    #C539 ; BITTOTAPE
C519  05        DEC     B
C51A  C215C5    JP      NZ,#C515
C51D  C9        RET

; BYTETOTAPE: Envia um byte (armazenado em C)
; à fita.

; Envia um pulso curto (bit "1") à fita.
C51E  37        SCF
C51F  CD39C5    CALL    #C539 ; BITTOTAPE
; Envia os oito bits do byte, do menos
; ao mais significativo.
C522  C5        PUSH    BC
C523  0608      LD      B,#08
C525  79        LD      A,C
C526  0F        RRCA
C527  4F        LD      C,A
C528  CD39C5    CALL    #C539 ; BITTOTAPE
C52B  05        DEC     B
C52C  C225C5    JP      NZ,#C525
; Envia um bit de paridade. (1 = par; 0 = ímpar)
C52F  B7        OR      A
C530  E439C5    CALL    PO,#C539 ; BITTOTAPE
C533  3F        CCF
C534  EC39C5    CALL    PE,#C539 ; BITTOTAPE
C537  C1        POP     BC
C538  C9        RET

; BITTOTAPE: Envia um bit (armazenado no
; carry flag) à fita: um pulso seguido
; de um silêncio. Se o bit é 0, o pulso
; tem o dobro do comprimento.
C539  F5        PUSH    AF
; Inicia pulso.
C53A  3E0E      LD      A,#0E
C53C  D320      OUT     (#20),A ; REG
C53E  3E7F      LD      A,#7F
C540  D360      OUT     (#60),A ; WR
; Mantém durante algum tempo.
C542  CD4EC5    CALL    #C54E ; BITTOTAPEDELAY
; Inicia silêncio.
C545  3EFF      LD      A,#FF
C547  D360      OUT     (#60),A ; WR
; Mantém durante algum tempo.
C549  CD4EC5    CALL    #C54E ; BITTOTAPEDELAY
C54C  F1        POP     AF
C54D  C9        RET

; BITTOTAPEDELAY: Produz uma pausa.
; Se carry flag desligado (bit "0"), a pausa
; tem o dobro da duração.
C54E  3E57      LD      A,#57
C550  DA54C5    JP      C,#C554
C553  07        RLCA
C554  3D        DEC     A
C555  C254C5    JP      NZ,#C554
C558  C9        RET

; Controle de impressão.
C559  7D        LD      A,L
C55A  BB        CP      E
C55B  C0        RET     NZ
C55C  7C        LD      A,H
C55D  BA        CP      D
C55E  C9        RET

; INTRUP
C55F  F3        DI
C560  F5        PUSH    AF
C561  E5        PUSH    HL
; INTRUR
C562  D5        PUSH    DE
C563  C5        PUSH    BC
; Trata canal 1:
C564  01FE00    LD      BC,#00FE ; B = Offset para variáveis de sistema do canal 1. C = Valor para DEFIN.
C567  210001    LD      HL,#0100 ; HL = Valor para REGIST (registros 0 e 1 do PSG).
C56A  110908    LD      DE,#0809 ; DE = Valor para ONAMP.
C56D  CDB1C5    CALL    #C5B1 ; SUB1
C570  3A3C01    LD      A,(#013C) ; TEMPA
C573  327201    LD      (#0172),A ; TONEA
; Trata canal 2:
C576  01FD09    LD      BC,#09FD ; B = Offset para variáveis de sistema do canal 2. C = Valor para DEFIN.
C579  210203    LD      HL,#0302 ; HL = Valor para REGIST (registros 2 e 3 do PSG).
C57C  111209    LD      DE,#0912 ; DE = Valor para ONAMP.
C57F  CDB1C5    CALL    #C5B1 ; SUB1
C582  3A4501    LD      A,(#0145) ; TEMPB
C585  327801    LD      (#0178),A ; TONEB
; Trata canal 3:
C588  01FB12    LD      BC,#12FB ; B = Offset para variáveis de sistema do canal 3. C = Valor para DEFIN.
C58B  11240A    LD      DE,#0A24 ; DE = Valor para ONAMP.
C58E  210405    LD      HL,#0504 ; HL = Valor para REGIST (registros 4 e 5 do PSG).
C591  CDB1C5    CALL    #C5B1 ; SUB1
C594  3A4E01    LD      A,(#014E) ; TEMPC
C597  327E01    LD      (#017E),A ; TONEC
; GCC:
; Aplica o valor de ENABLE
; ao registrador 7 do PSG (Mixer Control).
C59A  3E07      LD      A,#07
C59C  D320      OUT     (#20),A ; REG
C59E  3A5001    LD      A,(#0150) ; ENABLE
C5A1  F640      OR      #40 ; Cuida para que a configuração das portas IOA e IOB
C5A3  E67F      AND     #7F ; do PSG estejam corretas para o teclado do MC-1000.
C5A5  325001    LD      (#0150),A ; ENABLE
C5A8  D360      OUT     (#60),A ; WR
C5AA  C1        POP     BC
C5AB  D1        POP     DE
C5AC  E1        POP     HL
C5AD  F1        POP     AF
C5AE  FB        EI
C5AF  ED4D      RETI

; SUB1:
; HL = valor para REGIST.
; D = valor para MSB de ONAMP e para AMPLIT.
; E = valor para LSB de ONAMP e máscara para
;     alterar ENABLE.
; B = valor a somar com endereço de AVALUE
;     para selecionar AVALUE, BVALUE ou CVALUE.
; C = valor para DEFIN.
C5B1  225201    LD      (#0152),HL ; REGIST
C5B4  EB        EX      DE,HL
C5B5  225501    LD      (#0155),HL ; ONAMP
C5B8  79        LD      A,C
C5B9  325401    LD      (#0154),A ; DEFIN
C5BC  7C        LD      A,H
C5BD  325101    LD      (#0151),A ; AMPLIT
; Faz HL apontar para AVALUE, BVALUE ou CVALUE.
C5C0  213901    LD      HL,#0139 ; AVALUE
C5C3  58        LD      E,B
C5C4  1600      LD      D,#00
C5C6  19        ADD     HL,DE
; Se AVALUE/BVALUE/CVALUE for >= 31 e o
; bit 0 for 1, desvia para AI.
C5C7  7E        LD      A,(HL)
C5C8  A7        AND     A
C5C9  FE1F      CP      #1F
C5CB  DAD2C5    JP      C,#C5D2 ; SONG0
C5CE  0F        RRCA
C5CF  DADDC5    JP      C,#C5DD ; AI
; SONG0:
; Usando a máscara no LSB de ONAMP,
; altera ENABLE para desabilitar tom
; e ruído do canal.
C5D2  2A5501    LD      HL,(#0155) ; ONAMP
C5D5  45        LD      B,L
C5D6  215001    LD      HL,#0150 ; ENABLE
C5D9  7E        LD      A,(HL)
C5DA  B0        OR      B
C5DB  77        LD      (HL),A
C5DC  C9        RET

; AI:
; G1:
; Desvia se o bit 1 de AVALUE/BVALUE/CVALUE for 1
; (canal já configurado).
C5DD  0F        RRCA
C5DE  DA69C6    JP      C,#C669 ; SONGAS
; Configurar canal.
; Faz NSA/NSB/NSC apontar para o início das notas
; (o endereço apontado por NAA/NBB/NCC acrescido de 4).
C5E1  E5        PUSH    HL ; Preserva referência a AVALUE/BVALUE/CVALUE.
C5E2  2B        DEC     HL
C5E3  56        LD      D,(HL)
C5E4  2B        DEC     HL ; HL aponta a NAA/NBB/NCC
C5E5  5E        LD      E,(HL)
C5E6  13        INC     DE
C5E7  13        INC     DE
C5E8  13        INC     DE
C5E9  13        INC     DE
C5EA  2B        DEC     HL
C5EB  72        LD      (HL),D
C5EC  2B        DEC     HL ; HL aponta a NSA/NSB/NSC.
C5ED  73        LD      (HL),E ; Carrega o valor de NAA/NBB/NCC + 4.
; Chama rotina de inicialização usando AVALUE.
C5EE  CDF7C5    CALL    #C5F7 ; INIABC
; Ativa o bit 1 de AVALUE/BVALUE/CVALUE.
; (Inicialização do canal concluída.)
C5F1  E1        POP     HL ; Restaura referência a AVALUE/BVALUE/CVALUE.
C5F2  7E        LD      A,(HL)
C5F3  F602      OR      #02
C5F5  77        LD      (HL),A
C5F6  C9        RET

; INIABC:
; VOICEA/VOICEB/VOICEC = (AVALUE/BVALUE/CVALUE >> 2) & 3
C5F7  E5        PUSH    HL ; Preserva referência a NSA/NSB/NSC.
C5F8  47        LD      B,A ; Preserva valor de AVALUE/BVALUE/CVALUE (já um pouco modificado).
C5F9  E603      AND     #03 ; A = valor dos bits 2 e 3 de AVALUE/BVALUE/CVALUE.
C5FB  110500    LD      DE,#0005
C5FE  19        ADD     HL,DE ; HL aponta para VOICEA/VOICEB/VOICEC.
C5FF  77        LD      (HL),A ; Armazena aí o valor de A.
C600  FE03      CP      #03
C602  E5        PUSH    HL ; Preserva referência a VOICEA/VOICEB/VOICEC.
C603  CA0CC6    JP      Z,#C60C ; SONG4 ; Desvia se VOICEA/VOICEB/VOICEC = 3.
C606  CD11C7    CALL    #C711 ; N7 ; Configura amplitude fixa (ver NAA).
C609  C30FC6    JP      #C60F ; SONG5
; SONG4:
C60C  CD4BC7    CALL    #C74B ; COAMP ; Configura amplitude definida pela envoltória (ver NAA).
; SONG5:
; INTRPA/INTRPB/INTRPC = (AVALUE/BVALUE/CVALUE >> 4) & 3 + 1
C60F  78        LD      A,B ; Restaura valor de AVALUE/BVALUE/CVALUE (já um pouco modificado).
C610  0F        RRCA
C611  0F        RRCA
C612  47        LD      B,A ; Preserva valor de AVALUE/BVALUE/CVALUE (já um pouco modificado).
C613  E603      AND     #03 ; A = valor dos bits 4 e 5 de AVALUE/BVALUE/CVALUE
C615  3C        INC     A ; acrescido de 1.
C616  E1        POP     HL ; Restaura referência a VOICEA/VOICEB/VOICEC.
C617  23        INC     HL ; HL aponta para INTRPA/INTRPB/INTRPC.
C618  77        LD      (HL),A ; Armazena aí o valor de A.
; INTA/INTB/INTC = 0
C619  23        INC     HL
C61A  23        INC     HL ; HL aponta para INTA/INTB/INTC.
C61B  3600      LD      (HL),#00 ; Zera.
; Calcula (AVALUE/BVALUE/CVALUE >> 6) & 3:
; Se for 2, executa TONE.
; Se for 1, executa NOISE.
; 0 ou 3, executa ambos.
C61D  78        LD      A,B ; Restaura valor de AVALUE/BVALUE/CVALUE (já um pouco modificado).
C61E  0F        RRCA
C61F  0F        RRCA
C620  E1        POP     HL ; Restaura referência a NSA/NSB/NSC.
C621  5E        LD      E,(HL)
C622  23        INC     HL     ; HL aponta para NSA/NSB/NSC + 1.
C623  56        LD      D,(HL) ; DE = endereço apontado por NSA/NSB/NSC.
C624  E603      AND     #03
C626  FE02      CP      #02
C628  CA42C6    JP      Z,#C642 ; NOISE
C62B  3D        DEC     A
C62C  CA36C6    JP      Z,#C636 ; TONE
C62F  E5        PUSH    HL
C630  D5        PUSH    DE
C631  CD42C6    CALL    #C642 ; NOISE
C634  D1        POP     DE
C635  E1        POP     HL

; TONE:
C636  CDABC7    CALL    #C7AB ; FREQU ; Configura PSG para a nota, armazena duração em TEMPA/TEMPB/TEMPC.
; Modifica ENABLE para ativar tom do canal.
C639  215001    LD      HL,#0150 ; ENABLE
C63C  3A5401    LD      A,(#0154) ; DEFIN
C63F  A6        AND     (HL)
C640  77        LD      (HL),A
C641  C9        RET

; NOISE:
C642  1B        DEC     DE
C643  3E06      LD      A,#06 ; Registrador de controle do gerador de ruído.
C645  D320      OUT     (#20),A ; REG
C647  1A        LD      A,(DE) ; Byte apontado por NSA/NSB/NSC - 1.
C648  D360      OUT     (#60),A ; WR
C64A  13        INC     DE ; Restaura referência a NSA/NSB/NSC.
C64B  3A5101    LD      A,(#0151) ; AMPLIT
C64E  D320      OUT     (#20),A ; REG
C650  1A        LD      A,(DE) ; Byte apontado por NSA/NSB/NSC.
C651  D360      OUT     (#60),A ; WR
C653  13        INC     DE ; Avança NSA/NSB/NSC.
C654  72        LD      (HL),D
C655  2B        DEC     HL
C656  73        LD      (HL),E
C657  1A        LD      A,(DE) ; Carrega o novo valor apontado por NSA/NSB/NSC (duração) em TEMPA/TEMPB/TEMPC.
C658  110700    LD      DE,#0007
C65B  19        ADD     HL,DE
C65C  77        LD      (HL),A
; Modifica ENABLE para ativar o ruído do canal.
C65D  215001    LD      HL,#0150 ; ENABLE
C660  3A5401    LD      A,(#0154) ; DEFIN
C663  07        RLCA
C664  07        RLCA
C665  07        RLCA
C666  A6        AND     (HL)
C667  77        LD      (HL),A
C668  C9        RET

; SONGAS:
C669  EB        EX      DE,HL ; Preserva referência a AVALUE/BVALUE/CVALUE em DE.
C66A  2A5501    LD      HL,(#0155) ; ONAMP ; C = Máscara OR para desativar tom e ruído no canal.
C66D  4D        LD      C,L
C66E  EB        EX      DE,HL ; Restaura referência a AVALUE/BVALUE/CVALUE em HL.
C66F  23        INC     HL ; B = valor de VOICEA/VOICEB/VOICEC.
C670  46        LD      B,(HL)
C671  23        INC     HL ; Desvia se bit 7 de INTRPA/INTRPB/INTRPC for 1.
C672  CB7E      BIT     7,(HL)
C674  C294C6    JP      NZ,#C694 ; HH1
; Incrementa INTA/INTB/INTC.
C677  E5        PUSH    HL ; Preserva referência a INTRPA/INTRPB/INTRPC.
C678  23        INC     HL
C679  23        INC     HL
C67A  34        INC     (HL) ; Incrementa INTA/INTB/INTC.
C67B  D1        POP     DE ; Restaura referência a INTRPA/INTRPB/INTRPC em DE.
; Retorna se INTA/INTB/INTC <> INTRPA/INTRPB/INTRPC.
C67C  1A        LD      A,(DE)
C67D  BE        CP      (HL)
C67E  C0        RET     NZ
; Zera INTA/INTB/INTC.
C67F  3600      LD      (HL),#00
; Decrementa TEMPA/TEMPB/TEMPC.
C681  2B        DEC     HL
C682  35        DEC     (HL)
; Desvia se não zerou.
C683  C285C7    JP      NZ,#C785 ; AMP
; Se zerou (acabou a duração da nota)...
C686  2B        DEC     HL ; INTRPA/INTRPB/INTRPC.
; Desvia se CHECK <> 90.
C687  3A5E01    LD      A,(#015E) ; CHECK
C68A  FE5A      CP      #5A
C68C  C298C6    JP      NZ,#C698 ; HH
; Se o bit 7 de INTRPA/INTRPB/INTRPC for 0,
; muda para 1 e retorna.
C68F  7E        LD      A,(HL)
C690  07        RLCA
C691  CBFE      SET     7,(HL)
C693  D0        RET     NC
; HH1:
; Apaga bit 7 de INTRPA/INTRPB/INTRPC.
C694  7E        LD      A,(HL)
C695  E67F      AND     #7F
C697  77        LD      (HL),A
; HH:
; HL = NSA/NSB/NSC + (CHECK = 90 ? -1 : +1)
C698  11FAFF    LD      DE,#FFFA ; -6
C69B  19        ADD     HL,DE ; HL aponta para NSA/NSB/NSC.
C69C  5E        LD      E,(HL)
C69D  23        INC     HL ; NSA/NSB/NSC + 1
C69E  56        LD      D,(HL) ; DE = valor de NSA/NSB/NSC.
C69F  EB        EX      DE,HL
C6A0  3A5E01    LD      A,(#015E) ; CHECK
C6A3  FE5A      CP      #5A
C6A5  C2ACC6    JP      NZ,#C6AC ; EVER
C6A8  2B        DEC     HL ; HL = valor de NSA/NSB/NSC - 1 (aponta para a mesma nota).
C6A9  C3ADC6    JP      #C6AD ; EVE
; EVER:
C6AC  23        INC     HL ; HL = valor de NSA/NSB/NSC + 1 (aponta para a próxima nota).
; EVE:
; Se o byte da nota não for $EE, desvia.
C6AD  7E        LD      A,(HL)
C6AE  FEEE      CP      #EE
C6B0  13        INC     DE
C6B1  13        INC     DE
C6B2  13        INC     DE ; AVALUE/BVALUE/CVALUE.
C6B3  C2BCC6    JP      NZ,#C6BC ; OVER
; É $EE: desativa bit 1 do valor de AVALUE/BVALUE/CVALUE
; (sinalizando reinício da música) e retorna.
C6B6  4F        LD      C,A
C6B7  1A        LD      A,(DE)
C6B8  E6FD      AND     #FD
C6BA  12        LD      (DE),A
C6BB  C9        RET

; OVER:
; Se o byte da nota for diferente de $FF, desvia.
C6BC  FEFF      CP      #FF
C6BE  C2DFC6    JP      NZ,#C6DF ; NEXT
; É $FF.
C6C1  3A5E01    LD      A,(#015E) ; CHECK
C6C4  FE5A      CP      #5A
C6C6  CAD9C6    JP      Z,#C6D9 ; BAS
; CHECK <> 90: Zera AVALUE/BVALUE/CVALUE.
C6C9  AF        XOR     A
; OVERP:
C6CA  12        LD      (DE),A
; Configura ENABLE para silenciar canal.
C6CB  215001    LD      HL,#0150 ; ENABLE
C6CE  7E        LD      A,(HL)
C6CF  B1        OR      C
C6D0  77        LD      (HL),A
; Se ENABLE for silenciar todos os canais,
; zera SNDSW.
C6D1  FE7F      CP      #7F
C6D3  C0        RET     NZ
C6D4  AF        XOR     A
C6D5  320200    LD      (#0002),A ; SNDSW
C6D8  C9        RET

; BAS:
; CHECK = 90: Zera os bits 0 e 1 de AVALUE/BVALUE/CVALUE (silencia canal)
; preservando os demais bits (para quê?).
C6D9  1A        LD      A,(DE)
C6DA  E6FC      AND     #FC
C6DC  C3CAC6    JP      #C6CA ; OVERP

; NEXT:
; Continua a música.
; Desvia se AVALUE/BVALUE/CVALUE estiver configurado para produzir apenas tom.
C6DF  1A        LD      A,(DE)
C6E0  E6C0      AND     #C0
C6E2  FE40      CP      #40
C6E4  EB        EX      DE,HL ; Endereço de AVALUE/BVALUE/CVALUE em HL; DE aponta para próxima nota.
C6E5  CA03C7    JP      Z,#C703 ; NET
; Desvia se AVALUE/BVALUE/CVALUE estiver configurado para produzir apenas ruído.
C6E8  FE80      CP      #80
C6EA  E5        PUSH    HL ; Preserva referência a AVALUE/BVALUE/CVALUE.
C6EB  CAF3C6    JP      Z,#C6F3 ; NET0
; AVALUE/BVALUE/CVALUE configurado para produzir tom e ruído.
C6EE  D5        PUSH    DE
C6EF  CD03C7    CALL    #C703 ; NET
C6F2  D1        POP     DE
; NET0:
C6F3  2A5501    LD      HL,(#0155) ; ONAMP
C6F6  7C        LD      A,H
C6F7  D320      OUT     (#20),A ; REG
C6F9  1A        LD      A,(DE)
C6FA  D360      OUT     (#60),A ; WR
C6FC  E1        POP     HL
C6FD  2B        DEC     HL
C6FE  2B        DEC     HL
C6FF  2B        DEC     HL
C700  C398C7    JP      #C798 ; ND
; NET:
C703  2B        DEC     HL
C704  2B        DEC     HL
C705  2B        DEC     HL ; HL aponta para NSA/NSB/NSC+1.
C706  CDABC7    CALL    #C7AB ; FREQU
; Se VOICEA/VOICEB/VOICEC = 3, configura controle de amplitude pela envoltória.
C709  2B        DEC     HL
C70A  2B        DEC     HL ; HL aponta para VOICEA/VOICEB/VOICEC.
C70B  7E        LD      A,(HL)
C70C  FE03      CP      #03
C70E  CA4BC7    JP      Z,#C74B ; COAMP
; Senão...

; N7:
; Define valor de amplitude fixa conforme o nibble menos
; significativo do primeiro byte apontado por NAA/NBB/NCC.
C711  3A5101    LD      A,(#0151) ; AMPLIT
C714  D320      OUT     (#20),A ; REG
C716  2B        DEC     HL
C717  2B        DEC     HL
C718  56        LD      D,(HL)
C719  2B        DEC     HL ; HL aponta para NAA/NBB/NCC.
C71A  5E        LD      E,(HL) ; Estrutura apontada por NAA/NBB/NCC.
C71B  1A        LD      A,(DE) ; Primeiro byte.
C71C  E60F      AND     #0F ; Nibble menos significativo.
C71E  D360      OUT     (#60),A ; WR
C720  C9        RET

; F1:
; Entrada:
; HL aponta para byte aaaabbbb, onde:
; * aaaa = oitava (1~8).
; * bbbb = nota (0~11).
; Saída:
; BC contém o período da nota para o PSG.
C721  119FC4    LD      DE,#C49F ; FREQ ; Tabela de períodos máximos das notas.
; BC = #C49F + ((HL) and #0F) x 2
C724  7E        LD      A,(HL) ; Obtém byte [oitava,nota].
C725  E60F      AND     #0F ; Isola a nota.
C727  07        RLCA    ; x2
C728  83        ADD     A,E ; Soma ao endereço FREQ da tabela de períodos.
C729  4F        LD      C,A
C72A  3E00      LD      A,#00
C72C  8A        ADC     A,D
C72D  47        LD      B,A ; e armazena em BC.
; D = ((HL)/16) and #0F
C72E  7E        LD      A,(HL) ; Obtém byte [oitava,nota].
C72F  0F        RRCA    ; Isola a oitava.
C730  0F        RRCA
C731  0F        RRCA
C732  0F        RRCA
C733  E60F      AND     #0F
C735  57        LD      D,A ; Armazena em D.
; BC = (BC)
C736  0A        LD      A,(BC) ; Obtém o período da nota em BC.
C737  5F        LD      E,A
C738  03        INC     BC
C739  0A        LD      A,(BC)
C73A  47        LD      B,A
C73B  4B        LD      C,E
; F1A:
; Divide o período repetidamente por 2
; D vezes, até atingir o valor correspondente
; à oitava desejada.
; BC = BC / (2 ^ (D - 1))
C73C  15        DEC     D ; Retorna se já terminou.
C73D  C8        RET     Z
; BC = (RR BC) and #0FFF.
C73E  78        LD      A,B
C73F  1F        RRA
C740  F5        PUSH    AF
C741  E60F      AND     #0F
C743  47        LD      B,A
C744  F1        POP     AF
C745  79        LD      A,C
C746  1F        RRA
C747  4F        LD      C,A
C748  C33CC7    JP      #C73C ; F1A

; COAMP:
; Configura a amplitude do canal para ser
; variável, controlada pelo gerador da
; envoltória. (Graças ao bit 4 do byte #1F.
; Os bits 0~3 são ignorados.)
; Entrada:
; HL aponta para VOICEA/VOICEB/VOICEC.
C74B  3A5101    LD      A,(#0151) ; AMPLIT
C74E  D320      OUT     (#20),A ; REG ; Seleciona registrador de amplitude do canal.
C750  3E1F      LD      A,#1F
C752  D360      OUT     (#60),A ; WR
; Configura a forma da envoltória
; com os quatro bits mais significativos
; do valor apontado por NAA/NBB/NCC.
C754  3E0D      LD      A,#0D
C756  D320      OUT     (#20),A ; REG
C758  2B        DEC     HL
C759  2B        DEC     HL
C75A  2B        DEC     HL ; HL aponta para NAA/NBB/NCC.
C75B  5E        LD      E,(HL)
C75C  23        INC     HL
C75D  56        LD      D,(HL) ; DE aponta para a estrutura apontada por NAA/NBB/NCC.
C75E  1A        LD      A,(DE) ; Obtém o primeiro byte.
C75F  0F        RRCA
C760  0F        RRCA
C761  0F        RRCA
C762  0F        RRCA
C763  E60F      AND     #0F ; Extrai o valor dos 4 bits mais significativos e define a envoltória.
C765  D360      OUT     (#60),A ; WR
; Configura o período da envoltória
; com os dois bytes seguintes àquele
; apontado por NAA/NBB/NCC.
C767  3E0B      LD      A,#0B
C769  D320      OUT     (#20),A ; REG
C76B  13        INC     DE
C76C  1A        LD      A,(DE)
C76D  D360      OUT     (#60),A ; WR
C76F  3E0C      LD      A,#0C
C771  D320      OUT     (#20),A ; REG
C773  13        INC     DE
C774  1A        LD      A,(DE)
C775  D360      OUT     (#60),A ; WR
C777  C9        RET

; TONREG:
; Envia dados a portas do PSG.
; porta H recebe B.
; porta L recebe C.
C778  7D        LD      A,L
C779  D320      OUT     (#20),A ; REG
C77B  79        LD      A,C
C77C  D360      OUT     (#60),A ; WR
C77E  7C        LD      A,H
C77F  D320      OUT     (#20),A ; REG
C781  78        LD      A,B
C782  D360      OUT     (#60),A ; WR
C784  C9        RET

; AMP:
; Se VOICEA/VOICEB/VOICEC = 2...
C785  78        LD      A,B
C786  FE02      CP      #02
C788  C0        RET     NZ
; AMPDCR:
; Decrementa o valor do registrador
; do PSG apontado por AMPLIT, se
; maior que zero.
C789  3A5101    LD      A,(#0151) ; AMPLIT
C78C  D320      OUT     (#20),A ; REG
C78E  DB40      IN      A,(#40) ; RD
C790  B7        OR      A
C791  CA95C7    JP      Z,#C795 ; AMPP
C794  3D        DEC     A
; AMPP:
C795  D360      OUT     (#60),A ; WR
C797  C9        RET

; ND:
; Entrada:
; DE aponta para o byte contendo [oitava,nota].
; HL aponta para NSA/NSB/NSC + 1.
; Avança NSA/NSB/NSC,
; obtém a duração da nota e armazena em TEMPA/TEMPB/TEMPC.
C798  D5        PUSH    DE ; Preserva referência ao byte [oitava,nota].
C799  13        INC     DE ; Obtém duração em A.
C79A  1A        LD      A,(DE)
C79B  72        LD      (HL),D ; Atualiza NSA/NSB/NSC apontando para a duração.
C79C  2B        DEC     HL
C79D  73        LD      (HL),E
C79E  110700    LD      DE,#0007 ; HL aponta para TEMPA/TEMPB/TEMPC.
C7A1  19        ADD     HL,DE
C7A2  77        LD      (HL),A ; Armazena duração em TEMPA/TEMPB/TEMPC.
C7A3  A7        AND     A ; Se o valor é zero, armazena 2.
C7A4  C2A9C7    JP      NZ,#C7A9 ; NND
C7A7  3602      LD      (HL),#02
; NND:
C7A9  D1        POP     DE ; Restaura referência ao byte [oitava,nota].
C7AA  C9        RET

; FREQU:
; Entrada:
; DE aponta para o byte aaaabbbb, onde:
; * aaaa = oitava (1~8)
; * bbbb = nota (0~11)
; HL aponta para NSA/NSB/NSC + 1.
C7AB  E5        PUSH    HL ; Preserva referência a NSA/NSB/NSC + 1.
C7AC  EB        EX      DE,HL
C7AD  CD21C7    CALL    #C721 ; F1 ; Calcula a período da nota em BC.
C7B0  EB        EX      DE,HL
C7B1  E1        POP     HL ; Restaura referência a NSA/NSB/NSC + 1.
C7B2  CD98C7    CALL    #C798 ; ND ; Guarda a duração em TEMPA/TEMPB/TEMPC.
C7B5  E5        PUSH    HL ; Preserva referência a TEMPA/TEMPB/TEMPC.
C7B6  2A5201    LD      HL,(#0152) ; REGIST
C7B9  CD78C7    CALL    #C778 ; TONREG ; Aplica o período ao PSG.
C7BC  E1        POP     HL ; Restaura referência a TEMPA/TEMPB/TEMPC.
C7BD  C9        RET

; DREG1:
; Dados para inicialização dos registradores
; do monitor de 80 colunas (MC6845).
; R15: Cursor (L) <-- 0
C7BE  00        DB      #00
; R14: Cursor (H) <-- 0
C7BF  00        DB      #00
; R13: Start Address (L) <-- 0
C7C0  00        DB      #00
; R12: Start Address (H) <-- 0
C7C1  00        DB      #00
; R11: Cursor End <-- scan line 11
C7C2  0B        DB      #0B
; R10: Cursor Start <-- scan line 11
; + bit 5 = piscante
C7C3  4B        DB      #4B
; R9: Max Scan Line Address <-- scan line 11
C7C4  0B        DB      #0B
; R8: Interlace Mode <-- 160
C7C5  A0        DB      #A0
; R7: Vertical Sync Position <-- 25 char rows
C7C6  19        DB      #19
; R6: Vertical Displayed <-- 24 char rows
C7C7  18        DB      #18
; R5: Vertical Total Adjust <-- scan line 2
C7C8  02        DB      #02
; R4: Vertical Total <-- 26 char rows
C7C9  1A        DB      #1A
; R3: Horizontal Sync Width <-- 109 chars
C7CA  6D        DB      #6D
; R2: Horizontal Sync Position <-- 92 chars
C7CB  5C        DB      #5C
; R1: Horizontal Displayed <-- 80 chars
C7CC  50        DB      #50
; R0: Horizontal Total <-- 109 chars
C7CD  6D        DB      #6D

; ISCN: Apaga tela de texto
C7CE  3A0F00    LD      A,(#000F) ; C40?80
C7D1  B7        OR      A
C7D2  CA33C8    JP      Z,#C833
; Inicializa monitor de 80 colunas.
; Inicializa registadores.
C7D5  21BEC7    LD      HL,#C7BE
C7D8  0610      LD      B,#10
C7DA  05        DEC     B
C7DB  78        LD      A,B
C7DC  D310      OUT     (#10),A ; RPORT1
C7DE  7E        LD      A,(HL)
C7DF  D311      OUT     (#11),A ; DPORT1
C7E1  23        INC     HL
C7E2  C2DAC7    JP      NZ,#C7DA
; Inicializa variáveis e limpa a tela.
C7E5  CDECC7    CALL    #C7EC
C7E8  CD18C8    CALL    #C818
C7EB  C9        RET
; Inicializa variáveis para 80 colunas.
; Caracteres por linha de texto.
C7EC  215000    LD      HL,#0050
C7EF  221301    LD      (#0113),HL ; DLNG
; Endereço do fim da tela de texto da VRAM + 1.
C7F2  218027    LD      HL,#2780
C7F5  226501    LD      (#0165),HL ; DENAM
; Configura rotina para...
C7F8  213FCB    LD      HL,#CB3F
C7FB  22F700    LD      (#00F7),HL ; UPDBM
; Configura rotina para...
C7FE  213FCB    LD      HL,#CB3F
C801  22F900    LD      (#00F9),HL ; UPDBCM
; Endereço de início da VRAM.
C804  210020    LD      HL,#2000
C807  226301    LD      (#0163),HL ; DSNAM
; Posição do cursor na VRAM.
C80A  225B01    LD      (#015B),HL ; SNPTR
; Posição do início da linha atual do
; cursor na VRAM.
C80D  225901    LD      (#0159),HL ; LNHD
; Coluna atual do cursor na tela de texto.
C810  AF        XOR     A
C811  325D01    LD      (#015D),A ; LCNT
;
C814  CD3FCB    CALL    #CB3F
C817  C9        RET
; Limpa tela 80 colunas.
C818  2A6501    LD      HL,(#0165) ; DENAM
C81B  115000    LD      DE,#0050
C81E  19        ADD     HL,DE
C81F  EB        EX      DE,HL
C820  2A6301    LD      HL,(#0163) ; DSNAM
C823  CD90C8    CALL    #C890 ; BANK2
; Preenche de HL a DE com espaços.
C826  3620      LD      (HL),#20
C828  23        INC     HL
C829  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
C82C  C226C8    JP      NZ,#C826
C82F  CD79C8    CALL    #C879 ; BANK0
C832  C9        RET
; Inicializa tela de 32 colunas.
C833  3E01      LD      A,#01
C835  32F500    LD      (#00F5),A ; MODBUF
C838  D380      OUT     (#80),A ; COL32
; Inicializa variáveis e limpa a tela.
C83A  CD6DC8    CALL    #C86D
C83D  CD41C8    CALL    #C841
C840  C9        RET
; Inicializa variáveis para 32 colunas.
; Caracteres por linha da tela de texto.
C841  212000    LD      HL,#0020
C844  221301    LD      (#0113),HL ; DLNG
; Endereço de início da tela de texto.
C847  210080    LD      HL,#8000
C84A  226301    LD      (#0163),HL ; DSNAM
; Endereço do cursor.
C84D  225B01    LD      (#015B),HL ; SNPTR
; Endereço do início da linha atual do cursor.
C850  225901    LD      (#0159),HL ; LNHD
; Coluna atual do cursor na linha.
C853  AF        XOR     A
C854  325D01    LD      (#015D),A ; LCNT
; Endereço de fim da tela de texto + 1.
C857  210082    LD      HL,#8200
C85A  226501    LD      (#0165),HL ; DENAM
; Configura rotina para piscar o cursor.
C85D  211DCB    LD      HL,#CB1D
C860  22F700    LD      (#00F7),HL ; UPDBM
; Configura rotina para apagar cursor (antes de movê-lo).
C863  212DCB    LD      HL,#CB2D
C866  22F900    LD      (#00F9),HL ; UPDBCM
; Posiciona o cursor.
C869  CD1DCB    CALL    #CB1D
C86C  C9        RET
; CLR40: Limpa tela 32 colunas.
C86D  210080    LD      HL,#8000 ; SNAM4
C870  11FF97    LD      DE,#97FF ; SNAM4+#17FF
C873  CD86C8    CALL    #C886 ; BANK1
C876  C326C8    JP      #C826 ; CLR80M
;
; BANK0: Desabilita VRAM.
C879  F5        PUSH    AF
C87A  AF        XOR     A
C87B  D312      OUT     (#12),A ; COL80
C87D  3AF500    LD      A,(#00F5) ; MODBUF
C880  F601      OR      #01
C882  D380      OUT     (#80),A ; COL32
C884  F1        POP     AF
C885  C9        RET

; BANK1: Habilita VRAM 32 colunas.
C886  F5        PUSH    AF
C887  3AF500    LD      A,(#00F5) ; MODBUF
C88A  E6FE      AND     #FE
C88C  D380      OUT     (#80),A ; COL32
C88E  F1        POP     AF
C88F  C9        RET

; BANK2: Habilita VRAM 80 colunas.
C890  F5        PUSH    AF
C891  3E01      LD      A,#01
C893  D312      OUT     (#12),A ; COL80
C895  F1        POP     AF
C896  C9        RET

; CO: Imprime o caracter armazenado em C.
C897  E5        PUSH    HL
C898  D5        PUSH    DE
C899  C5        PUSH    BC
C89A  F5        PUSH    AF
C89B  21A9C8    LD      HL,#C8A9 ; Forja retorno p/ #CO0.
C89E  E5        PUSH    HL
C89F  3A0F00    LD      A,(#000F) ; C40?80
C8A2  B7        OR      A
C8A3  CA86C8    JP      Z,#C886 ; BANK1
C8A6  C390C8    JP      #C890 ; BANK2

; CO0: Imprime o caracter armazenado em C (continuação).
; Desvia se está em uma sequência de ESCape.
C8A9  212D01    LD      HL,#012D ; COSW
C8AC  7E        LD      A,(HL)
C8AD  07        RLCA
C8AE  DA58C9    JP      C,#C958 ; DIRECT
; Caracter fora de sequência de ESCape.
C8B1  79        LD      A,C
C8B2  FE1B      CP      #1B ; É ESC?
C8B4  CA50C9    JP      Z,#C950 ; SPECAL
C8B7  FE20      CP      ' ' ; É caracter de controle?
C8B9  DAC7C8    JP      C,#C8C7 ; CNTR
C8BC  FE3D      CP      '='
C8BE  C2F9C8    JP      NZ,#C8F9 ; OTCH
; Trata impressão de '='.
; Se não estiver em sequência de ESCape,
; trata como caracter imprimível normal.
C8C1  7E        LD      A,(HL)
C8C2  0F        RRCA
C8C3  D2F9C8    JP      NC,#C8F9
C8C6  79        LD      A,C
; CNTR: Trata impressão de caracter de controle.
C8C7  FE07      CP      #07 ; É BEEP?
C8C9  CA08CA    JP      Z,#CA08
C8CC  FE08      CP      #08 ; É BS?
C8CE  CA3FCA    JP      Z,#CA3F
C8D1  FE0C      CP      #0C ; É avanço de cursor?
C8D3  CA62CA    JP      Z,#CA62
C8D6  FE0A      CP      #0A ; É LF?
C8D8  CA8CCA    JP      Z,#CA8C
C8DB  FE0D      CP      #0D ; É CR?
C8DD  CA79CA    JP      Z,#CA79
C8E0  FE1E      CP      #1E ; É início de tela?
C8E2  CAD4C9    JP      Z,#C9D4
C8E5  FE0B      CP      #0B ; É sobe linha?
C8E7  CAB1CA    JP      Z,#CAB1
C8EA  FE1A      CP      #1A ; É limpa tela?
C8EC  CAEDC9    JP      Z,#C9ED
C8EF  FE3D      CP      '='
C8F1  CA58C9    JP      Z,#C958 ; DIRECT
; O teste abaixo é inútil, pois os testes
; em #C8B1 impedem que a execução atinja
; este ponto se o caracter for RUBOUT.
C8F4  FE7F      CP      #7F ; É RUBOUT?
C8F6  CADFCA    JP      Z,#CADF
; OTCH: Impressão de caracter imprimível.
C8F9  F5        PUSH    AF
; Coloca caracter na VRAM na posição do cursor.
C8FA  2A5B01    LD      HL,(#015B) ; SNPTR
C8FD  79        LD      A,C
C8FE  77        LD      (HL),A
C8FF  F1        POP     AF
; Incrementa posição horizontal do cursor.
C900  3A1301    LD      A,(#0113) ; DLNG
C903  47        LD      B,A
C904  3A5D01    LD      A,(#015D) ; LCNT
C907  3C        INC     A
; Zera se atingiu o fim da linha.
C908  B8        CP      B
C909  C20DC9    JP      NZ,#C90D
C90C  AF        XOR     A
C90D  325D01    LD      (#015D),A ; LCNT
; Incrementa posição do cursor na VRAM.
C910  23        INC     HL
; Se atingiu fim da tela, providenciar SCROLL.
C911  F5        PUSH    AF
C912  EB        EX      DE,HL
C913  2A6501    LD      HL,(#0165) ; DENAM
C916  EB        EX      DE,HL
C917  7C        LD      A,H
C918  BA        CP      D
C919  C221C9    JP      NZ,#C921
C91C  7D        LD      A,L
C91D  BB        CP      E
C91E  D23EC9    JP      NC,#C93E
C921  F1        POP     AF
C922  CC42C9    CALL    Z,#C942
; Armazena posição atualizada do cursor na VRAM.
C925  225B01    LD      (#015B),HL ; SNPTR
;
C928  CD55CB    CALL    #CB55 ; CALLUPDBM
C92B  AF        XOR     A
C92C  322F01    LD      (#012F),A ; FSHCNT
; Anula sequência de ESCape (se houver).
C92F  212D01    LD      HL,#012D ; COSW
C932  7E        LD      A,(HL)
C933  E602      AND     #02 ; Desliga todos os bits de COSW, exceto o que indica a presença da placa de 80 colunas.
C935  77        LD      (HL),A
; Encerra impressão.
C936  F1        POP     AF
C937  C1        POP     BC
C938  D1        POP     DE
C939  E1        POP     HL
C93A  CD79C8    CALL    #C879 ; BANK0
C93D  C9        RET

; Impressão chegou ao fim da tela.
C93E  F1        POP     AF
C93F  C30ECA    JP      #CA0E ; SCROLL

; Atualiza endereço do início da linha atual.
C942  E5        PUSH    HL
C943  2A1301    LD      HL,(#0113) ; DLNG
C946  EB        EX      DE,HL
C947  2A5901    LD      HL,(#0159) ; LNHD
C94A  19        ADD     HL,DE
C94B  225901    LD      (#0159),HL ; LNHD
C94E  E1        POP     HL
C94F  C9        RET

; SPECAL: Trata impressão de ESC.
; Ativa um flag de sequência de ESCape.
C950  212D01    LD      HL,#012D ; COSW
C953  CBC6      SET     0,(HL)
C955  C336C9    JP      #C936

; DIRECT: Trata sequência de ESCape.
; Já foi impresso um caracter após o ESC?
C958  212D01    LD      HL,#012D ; COSW
C95B  CB7E      BIT     7,(HL)
C95D  C265C9    JP      NZ,#C965
; Este é o primeiro.
C960  CBFE      SET     7,(HL)
C962  C336C9    JP      #C936
; Já foram impressos dois caracteres após o ESC?
C965  CB76      BIT     6,(HL)
C967  79        LD      A,C
C968  C273C9    JP      NZ,#C973
; Este é o segundo. (Indicará posição vertical.)
C96B  321501    LD      (#0115),A
C96E  CBF6      SET     6,(HL)
C970  C336C9    JP      #C936
; Este é o terceiro. (Indicará posição horizontal.)
C973  321601    LD      (#0116),A
C976  2A1501    LD      HL,(#0115)
C979  7D        LD      A,L
; Se as posições vertical e horizontal forem zero,
; desvia para rotina que coloca cursor no início da tela.
C97A  B4        OR      H
C97B  CAD4C9    JP      Z,#C9D4
; Determina número de linhas do modo texto.
C97E  3A0F00    LD      A,(#000F) ; C40?80
C981  B7        OR      A
C982  0610      LD      B,#10 ; 16 linhas.
C984  CA89C9    JP      Z,#C989
C987  0618      LD      B,#18 ; 24 linhas.
; Se a posição vertical excede o limite,
; ignora sequência de escape.
C989  7D        LD      A,L
C98A  B8        CP      B
C98B  D22FC9    JP      NC,#C92F
; Desvia se a posição horizontal >= 32.
C98E  7C        LD      A,H
C98F  FE20      CP      #20
C991  D2BFC9    JP      NC,#C9BF
; Posição horizontal < 32.
; (Para vídeo de 32 colunas.)
; A soma abaixo é um erro, pois faz o cursor
; cair uma linha abaixo de onde deveria ficar:
C994  C620      ADD     A,#20 ; <--- ERRO DE PROGRAMAÇÃO
C996  67        LD      H,A
; Recalcula variáveis de posição do cursor.
C997  EB        EX      DE,HL
C998  1C        INC     E
C999  3A1301    LD      A,(#0113) ; DLNG
C99C  4F        LD      C,A
C99D  0600      LD      B,#00
C99F  CD5BCB    CALL    #CB5B ; CALLUPDBCM
C9A2  2A6301    LD      HL,(#0163) ; DSNAM
C9A5  1D        DEC     E
C9A6  CAADC9    JP      Z,#C9AD
C9A9  09        ADD     HL,BC
C9AA  C3A5C9    JP      #C9A5
C9AD  225901    LD      (#0159),HL ; LNHD
C9B0  4A        LD      C,D
C9B1  09        ADD     HL,BC
C9B2  225B01    LD      (#015B),HL ; SNPTR
C9B5  CD55CB    CALL    #CB55 ; CALLUPDBM
C9B8  7A        LD      A,D
C9B9  325D01    LD      (#015D),A ; LCNT
C9BC  C32FC9    JP      #C92F

; Posição horizontal >= 32.
; Se posição horizontal >= 112, ignora sequência de ESCape.
C9BF  FE70      CP      #70
C9C1  D22FC9    JP      NC,#C92F
; Posição horizontal >= 32 e < 112.
; (Para vídeo de 80 colunas.)
; Subtrai 32.
C9C4  D620      SUB     #20
; Se posição horizontal excede o limite,
; ignora sequência de escape.
C9C6  67        LD      H,A
C9C7  3A1301    LD      A,(#0113) ; DLNG
C9CA  BC        CP      H
C9CB  CA2FC9    JP      Z,#C92F
C9CE  DA2FC9    JP      C,#C92F
C9D1  C397C9    JP      #C997

; Põe o cursor no início da tela.
C9D4  CD5BCB    CALL    #CB5B ; CALLUPDBCM
C9D7  2A6301    LD      HL,(#0163) ; DSNAM
C9DA  3A0F00    LD      A,(#000F) ; C40?80
C9DD  B7        OR      A
C9DE  C2E7C9    JP      NZ,#C9E7
C9E1  CD4DC8    CALL    #C84D
C9E4  C3F7C9    JP      #C9F7
C9E7  CD0AC8    CALL    #C80A
C9EA  C3F7C9    JP      #C9F7

; Limpa tela.
C9ED  3A0F00    LD      A,(#000F) ; C40?80
C9F0  B7        OR      A
C9F1  C2FAC9    JP      NZ,#C9FA
; Para 32 colunas.
C9F4  CD6DC8    CALL    #C86D
;
C9F7  C32FC9    JP      #C92F
; Para 80 colunas.
C9FA  3A2D01    LD      A,(#012D) ; COSW
C9FD  E602      AND     #02
C9FF  CAF7C9    JP      Z,#C9F7
CA02  CD18C8    CALL    #C818
CA05  C3F7C9    JP      #C9F7

; Impressão do caracter de controle #07 (BEEP).
CA08  CDFCC0    CALL    #C0FC ; BEEP
CA0B  C32FC9    JP      #C92F

; SCROLL: Rola a tela de texto uma linha para cima.
CA0E  C5        PUSH    BC
CA0F  2A6301    LD      HL,(#0163) ; DSNAM
CA12  E5        PUSH    HL
CA13  ED5B1301  LD      DE,(#0113) ; DLNG
CA17  19        ADD     HL,DE
CA18  D1        POP     DE
CA19  3A0F00    LD      A,(#000F) ; C40?80
CA1C  B7        OR      A
CA1D  CA29CA    JP      Z,#CA29
CA20  018007    LD      BC,#0780
CA23  CD90C8    CALL    #C890 ; BANK2
CA26  C32FCA    JP      #CA2F
CA29  010002    LD      BC,#0200
CA2C  CD86C8    CALL    #C886 ; BANK1
CA2F  EDB0      LDIR
CA31  2A5901    LD      HL,(#0159) ; LNHD
CA34  EB        EX      DE,HL
CA35  2A5D01    LD      HL,(#015D) ; LCNT
CA38  2600      LD      H,#00
CA3A  19        ADD     HL,DE
CA3B  C1        POP     BC
CA3C  C325C9    JP      #C925

; Impressão de caracter de controle #08 (BS).
; Se encontrou o início da tela, produz BEEP.
CA3F  2A6301    LD      HL,(#0163) ; DSNAM
CA42  EB        EX      DE,HL
CA43  2A5B01    LD      HL,(#015B) ; SNPTR
CA46  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
CA49  CCFCC0    CALL    Z,#C0FC ; BEEP
CA4C  CA2FC9    JP      Z,#C92F
CA4F  CD5BCB    CALL    #CB5B ; CALLUPDBCM
CA52  2A5B01    LD      HL,(#015B) ; SNPTR
CA55  2B        DEC     HL
CA56  225B01    LD      (#015B),HL ; SNPTR
CA59  CD5BCB    CALL    #CB5B ; CALLUPDBCM
CA5C  CD11CB    CALL    #CB11
CA5F  C32FC9    JP      #C92F

; Impressão de caracter de controle #0C.
; Deveria ser o avanço de cursor, mas não funciona.
; A instrução DEC HL deveria ser DEC DE.
CA62  2A5B01    LD      HL,(#015B) ; SNPTR
CA65  ED5B6501  LD      DE,(#0165) ; DENAM
CA69  2B        DEC     HL
CA6A  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
CA6D  CCFCC0    CALL    Z,#C0FC ; BEEP
CA70  CA2FC9    JP      Z,#C92F
CA73  CD5BCB    CALL    #CB5B ; CALLUPDBCM
CA76  C300C9    JP      #C900

; Impressão de caracter de controle #0D (CR).
; Move o cursor para o início da linha.
CA79  CD5BCB    CALL    #CB5B ; CALLUPDBCM
CA7C  2A5901    LD      HL,(#0159) ; LNHD
CA7F  225B01    LD      (#015B),HL ; SNPTR
CA82  CD55CB    CALL    #CB55 ; CALLUPDBM
CA85  AF        XOR     A
CA86  325D01    LD      (#015D),A ; LCNT
CA89  C32FC9    JP      #C92F

; Impressão de caracter de controle #0A (LF).
CA8C  CD5BCB    CALL    #CB5B ; CALLUPDBCM
; Incrementa a posição do cursor na VRAM com
; a quantidade de caracteres de uma linha.
CA8F  2A5B01    LD      HL,(#015B) ; SNPTR
CA92  ED4B1301  LD      BC,(#0113) ; DLNG
CA96  09        ADD     HL,BC
; Se exceder o final da tela, rola uma linha.
CA97  ED5B6501  LD      DE,(#0165) ; DENAM
CA9B  7C        LD      A,H
CA9C  BA        CP      D
CA9D  C2A5CA    JP      NZ,#CAA5
CAA0  7D        LD      A,L
CAA1  BB        CP      E
CAA2  D20ECA    JP      NC,#CA0E ; SCROLL
; Incrementa a posição de início da linha com
; a quantidade de caracteres de uma linha.
CAA5  E5        PUSH    HL
CAA6  2A5901    LD      HL,(#0159) ; LNHD
CAA9  09        ADD     HL,BC
CAAA  225901    LD      (#0159),HL ; LNHD
CAAD  E1        POP     HL
CAAE  C325C9    JP      #C925

; Impressão de caracter de controle #0B.
; Se o cursor já está na primeira linha
; apenas produz BEEP.
CAB1  2A6301    LD      HL,(#0163) ; DSNAM
CAB4  ED5B1301  LD      DE,(#0113) ; DLNG
CAB8  19        ADD     HL,DE
CAB9  EB        EX      DE,HL
CABA  2A5B01    LD      HL,(#015B) ; SNPTR
CABD  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
CAC0  DCFCC0    CALL    C,#C0FC ; BEEP
CAC3  DA2FC9    JP      C,#C92F

; Decrementa a posição de início da linha com
; a quantidade de caracteres de uma linha.
CAC6  ED5B1301  LD      DE,(#0113) ; DLNG
CACA  2A5901    LD      HL,(#0159) ; LNHD
CACD  AF        XOR     A
CACE  ED52      SBC     HL,DE
CAD0  225901    LD      (#0159),HL ; LNHD
CAD3  CD5BCB    CALL    #CB5B ; CALLUPDBCM
CAD6  AF        XOR     A
; Incrementa a posição do cursor na VRAM com
; a quantidade de caracteres de uma linha.
CAD7  2A5B01    LD      HL,(#015B) ; SNPTR
CADA  ED52      SBC     HL,DE
CADC  C325C9    JP      #C925

; Impressão de caracter de controle #7F (RUBOUT).
CADF  ED5B6301  LD      DE,(#0163) ; DSNAM
CAE3  2A5B01    LD      HL,(#015B) ; SNPTR
CAE6  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
CAE9  CA2FC9    JP      Z,#C92F
CAEC  CD11CB    CALL    #CB11
CAEF  2A5B01    LD      HL,(#015B) ; SNPTR
CAF2  3620      LD      (HL),#20
CAF4  2B        DEC     HL
CAF5  3620      LD      (HL),#20
CAF7  CD55CB    CALL    #CB55 ; CALLUPDBM
CAFA  225B01    LD      (#015B),HL ; SNPTR
CAFD  C32FC9    JP      #C92F

; Põe cursor no fim da linha anterior.
CB00  2A5901    LD      HL,(#0159) ; LNHD
CB03  ED4B1301  LD      BC,(#0113) ; DLNG
CB07  AF        XOR     A
CB08  ED42      SBC     HL,BC
CB0A  225901    LD      (#0159),HL ; LNHD
CB0D  3A1301    LD      A,(#0113) ; DLNG
CB10  C9        RET

; Decrementa posição horizontal do cursor.
CB11  3A5D01    LD      A,(#015D) ; LCNT
CB14  B7        OR      A
CB15  CC00CB    CALL    Z,#CB00
CB18  3D        DEC     A
CB19  325D01    LD      (#015D),A ; LCNT
CB1C  C9        RET

; Exibe cursor em 32 colunas.
; (Inverte o caracter na posição do cursor.)
CB1D  CD86C8    CALL    #C886 ; BANK1
CB20  E5        PUSH    HL
CB21  2A5B01    LD      HL,(#015B) ; SNPTR
CB24  7E        LD      A,(HL)
CB25  EE80      XOR     #80
CB27  77        LD      (HL),A
CB28  E1        POP     HL
CB29  CD79C8    CALL    #C879 ; BANK0
CB2C  C9        RET

; Apaga cursor se estiver aceso. (Em 32 colunas.)
; (Necessário, por exemplo, antes de movê-lo.)
CB2D  F5        PUSH    AF
CB2E  3A2F01    LD      A,(#012F) ; FSHCNT
CB31  E601      AND     #01
CB33  C239CB    JP      NZ,#CB39
CB36  CD1DCB    CALL    #CB1D
CB39  AF        XOR     A
CB3A  322F01    LD      (#012F),A ; FSHCNT
CB3D  F1        POP     AF
CB3E  C9        RET

; Exibe o cursor em 80 colunas.
CB3F  E5        PUSH    HL
CB40  2A5B01    LD      HL,(#015B) ; SNPTR
CB43  3E0E      LD      A,#0E
CB45  D310      OUT     (#10),A ; RPORT1
CB47  7C        LD      A,H
CB48  D620      SUB     #20
CB4A  D311      OUT     (#11),A ; DPORT1
CB4C  3E0F      LD      A,#0F
CB4E  D310      OUT     (#10),A ; RPORT1
CB50  7D        LD      A,L
CB51  D311      OUT     (#11),A ; DPORT1
CB53  E1        POP     HL
CB54  C9        RET

; CALLUPDBM:
; Salta para endereço armazenado em UPDBM (#00F7): #CB1D ou #CB3F.
CB55  E5        PUSH    HL
CB56  2AF700    LD      HL,(#00F7) ; UPDBM
CB59  E3        EX      (SP),HL
CB5A  C9        RET

; CALLUPDBCM:
; Salta para endereço armazenado em UPDBCM (#00F9): #CB2D ou #CB3F.
CB5B  E5        PUSH    HL
CB5C  2AF900    LD      HL,(#00F9) ; UPDBCM
CB5F  E3        EX      (SP),HL
CB60  C9        RET

; XCLEAR: Limpa tela gráfica.
; Preenche 2kb de VRAM com o valor contido em B.
; 2kb = 64 linhas de vídeo (1 linha = 32 bytes).
CB61  210080    LD      HL,#8000
; XCLR1
CB64  70        LD      (HL),B
CB65  23        INC     HL
CB66  7C        LD      A,H
CB67  FE88      CP      #88
CB69  C264CB    JP      NZ,#CB64 ; XCLR1
CB6C  C9        RET

; D4X5: Display padrão 4x5.
; Coloca 5 bytes em linhas consecutivas
; da VRAM, produzindo uma figura de 4x5
; pixels em modo GR (8x5 em HGR).
; HL aponta para a posição do topo da
; figura na VRAM.
; DE aponta para a sequência de bytes
; que compõem a figura.
CB6D  0605      LD      B,#05
; D4XB
CB6F  1A        LD      A,(DE)
CB70  77        LD      (HL),A
CB71  13        INC     DE
CB72  D5        PUSH    DE
CB73  112000    LD      DE,#0020
CB76  19        ADD     HL,DE
CB77  D1        POP     DE
CB78  05        DEC     B
CB79  C26FCB    JP      NZ,#CB6F
CB7C  C9        RET

; TOP: Mostra tópico do jogo.
CB7D  3E88      LD      A,#88
CB7F  D380      OUT     (#80),A ; COL32
CB81  010000    LD      BC,#0000
CB84  CD61CB    CALL    #CB61 ; XCLEAR
CB87  3A0401    LD      A,(#0104) ; PLAY

; PLAYNO: Mostra número do jogo.
; Exibe o valor contido em A com um ou
; dois dígitos.
; C define cores: vide SHOWNO.
CB8A  114080    LD      DE,#8040

; DISPY2: Exibe 2 dígitos.
; Exibe o valor em A com dois dígitos
; a partir do endereço de VRAM em DE.
; C define cores: vide SHOWNO.
CB8D  2600      LD      H,#00

; DISPY: Exibe 1 ou 2 dígitos.
; Exibe o valor em A com um ou dois dígitos
; a partir do endereço de VRAM em DE.
; H <> 0 força a impressão de 2 dígitos.
; C define cores: vide SHOWNO.
; Põe o primeiro dígito em B:
; B <-- INT(A / 10).
CB8F  0600      LD      B,#00
CB91  D60A      SUB     #0A
CB93  DA9ACB    JP      C,#CB9A
CB96  04        INC     B
CB97  C391CB    JP      #CB91
CB9A  C60A      ADD     A,#0A
; Empilha segundo dígito.
CB9C  F5        PUSH    AF
; Se B = 0 e H = 0, troca o primeiro
; dígito por um espaço.
CB9D  78        LD      A,B
CB9E  B4        OR      H
CB9F  C2A4CB    JP      NZ,#CBA4
CBA2  060E      LD      B,#0E
; Exibe o primeiro dígito.
CBA4  D5        PUSH    DE
CBA5  CDADCB    CALL    #CBAD ; SHOWNO
; Avança a posição de exibição.
CBA8  D1        POP     DE
CBA9  13        INC     DE
CBAA  13        INC     DE
; Recupera o segundo dígito.
CBAB  F1        POP     AF
CBAC  47        LD      B,A
; SHOWNO: Exibe 1 dígito.
; Exibe o dígito armazenado em B (0~9)
; a partir do endereço de VRAM em DE.
; C define cores:
; #00 = letras amarelas sobre fundo verde.
; #55 = letras azuis sobre fundo amarelo.
; #AA = letras vermelhas sobre fundo azul.
CBAD  3EF6      LD      A,#F6 ; -10
CBAF  04        INC     B
CBB0  C60A      ADD     A,#0A ; +10
CBB2  05        DEC     B
CBB3  C2B0CB    JP      NZ,#CBB0
CBB6  C5        PUSH    BC
CBB7  4F        LD      C,A
CBB8  21FFCC    LD      HL,#CCFF
CBBB  09        ADD     HL,BC
CBBC  C1        POP     BC
; Coloca 5 pares de bytes em linhas
; consecutivas da VRAM, produzindo uma
; figura de 8x5 pixels em modo GR
; (16x5 em HGR).
; DE aponta para a posição do topo da
; figura na VRAM.
; HL aponta para a sequência de bytes
; que compõem a figura.
; Se a figura utiliza somente os bits
; ímpares de seus bytes, é possível
; obter variações de cores com o valor
; de C:
; #00 = letras amarelas sobre fundo verde.
; #55 = letras azuis sobre fundo amarelo.
; #AA = letras vermelhas sobre fundo azul.
; Se não for o caso, assegure-se de que
; C = #00.
CBBD  0605      LD      B,#05
; D8XB.
CBBF  7E        LD      A,(HL)
CBC0  81        ADD     A,C
CBC1  12        LD      (DE),A
CBC2  23        INC     HL
CBC3  13        INC     DE
CBC4  7E        LD      A,(HL)
CBC5  81        ADD     A,C
CBC6  12        LD      (DE),A
CBC7  23        INC     HL
CBC8  EB        EX      DE,HL
CBC9  C5        PUSH    BC
CBCA  011F00    LD      BC,#001F
CBCD  09        ADD     HL,BC
CBCE  C1        POP     BC
CBCF  EB        EX      DE,HL
CBD0  05        DEC     B
CBD1  C2BFCB    JP      NZ,#CBBF
CBD4  C9        RET

; NEXTGM: Muda número do jogo.
; Recebe A = última tecla pressionada.

; Desvia se tecla foi Ctrl+H.
CBD5  FE08      CP      #08 ; Ctrl+H
CBD7  CA00CC    JP      Z,#CC00
; Faz HEAD = 1.
CBDA  F5        PUSH    AF
CBDB  3E01      LD      A,#01
CBDD  320601    LD      (#0106),A ; HEAD
; PLAY = LPLAY?
CBE0  3A0401    LD      A,(#0104) ; PLAY
CBE3  E5        PUSH    HL
CBE4  215701    LD      HL,#0157 ; LPLAY
CBE7  BE        CP      (HL)
CBE8  CAFDCB    JP      Z,#CBFD
; Não: Incrementa KTIME...
CBEB  212601    LD      HL,#0126 ; KTIME
CBEE  34        INC     (HL)
; ...e se KTIME = 0...
CBEF  C2FDCB    JP      NZ,#CBFD
; ...faz KTIME = $FD (-3); LPLAY = PLAY; e reinicia RCRDPT = RECORD.
CBF2  36FD      LD      (HL),#FD
CBF4  325701    LD      (#0157),A ; LPLAY
CBF7  210B01    LD      HL,#010B ; RECORD
CBFA  220901    LD      (#0109),HL ; RCRDPT
;
CBFD  E1        POP     HL
CBFE  F1        POP     AF
CBFF  C9        RET

; Retorna se HEAD = $ff.
CC00  3A0601    LD      A,(#0106) ; HEAD
CC03  3C        INC     A
CC04  C8        RET     Z
; Pausa de meio segundo.
CC05  01F401    LD      BC,#01F4 ; 500ms
CC08  CD0EC3    CALL    #C30E ; DELAYB
; Se HEAD = $01, reinicia tópico de jogo atual.
CC0B  210401    LD      HL,#0104 ; PLAY
CC0E  3A0601    LD      A,(#0106) ; HEAD
CC11  A7        AND     A
CC12  C21FCC    JP      NZ,#CC1F
; Se HEAD = $00, inicia próximo tópico de jogo (incrementa PLAY).
CC15  34        INC     (HL)
; Se PLAY > PLAYMX, faz PLAY = 1.
CC16  3A0501    LD      A,(#0105) ; PLAYMX
CC19  BE        CP      (HL)
CC1A  D21FCC    JP      NC,#CC1F
CC1D  3601      LD      (HL),#01
; Prepara inicialização com salto para $0200 - 3 + 3 * PLAY.
CC1F  7E        LD      A,(HL)
CC20  87        ADD     A,A
CC21  86        ADD     A,(HL)
CC22  5F        LD      E,A
CC23  1600      LD      D,#00
CC25  21FD01    LD      HL,#01FD ; $0200 - 3
CC28  19        ADD     HL,DE
CC29  C3C4C1    JP      #C1C4

; JSTICK: Entrada do joystick.
; A = valor de entrada.
; A = valor de saída.
; bit 0 = 0 esquerda, bit 1 = 1 direita
; bit 2 = 1 esquerda, bit 3 = 1 direita
; bit 4 = 1 cima,     bit 5 = 1 baixo
; Se A=0, não há movimento.
CC2C  C5        PUSH    BC
CC2D  0600      LD      B,#00
CC2F  E5        PUSH    HL
; Pula para JFL se A = "Q"/"W"/"E"/"R"/"T".
CC30  21AACC    LD      HL,#CCAA
CC33  E5        PUSH    HL
CC34  FE45      CP      'E'
CC36  C8        RET     Z
CC37  FE51      CP      'Q'
CC39  C8        RET     Z
CC3A  FE57      CP      'W'
CC3C  C8        RET     Z
CC3D  FE52      CP      'R'
CC3F  C8        RET     Z
CC40  FE54      CP      'T'
CC42  C8        RET     Z
CC43  E1        POP     HL
; Pula para JFR se A = "I"/"O"/"P"/...
CC44  21AFCC    LD      HL,#CCAF
CC47  E5        PUSH    HL
CC48  FE49      CP      'I'
CC4A  C8        RET     Z
CC4B  FE4F      CP      'O'
CC4D  C8        RET     Z
CC4E  FE50      CP      'P'
CC50  C8        RET     Z
CC51  FE5B      CP      '[' ; tecla RETURN?
CC53  C8        RET     Z
CC54  FE5D      CP      ']' ; tecla RUBOUT?
CC56  C8        RET     Z
CC57  E1        POP     HL
;
CC58  E1        POP     HL
CC59  FE41      CP      'A'
CC5B  C260CC    JP      NZ,#CC60
CC5E  0604      LD      B,#04
CC60  FE46      CP      'F'
CC62  C267CC    JP      NZ,#CC67
CC65  0608      LD      B,#08
CC67  FE53      CP      'S'
CC69  C26ECC    JP      NZ,#CC6E
CC6C  0610      LD      B,#10
CC6E  FE43      CP      'C'
CC70  C275CC    JP      NZ,#CC75
CC73  0610      LD      B,#10
CC75  FE44      CP      'D'
CC77  C27CCC    JP      NZ,#CC7C
CC7A  0620      LD      B,#20
CC7C  FE4B      CP      'K'
CC7E  C2FBC3    JP      NZ,#C3FB ; (BUG!!! Endereço errado.)
CC81  0605      LD      B,#05
CC83  FE3A      CP      ':'
CC85  CAB4CC    JP      Z,#CCB4
CC88  FE27      CP      '''
CC8A  CAB4CC    JP      Z,#CCB4
CC8D  FE4E      CP      'N'
CC8F  CAB4CC    JP      Z,#CCB4
CC92  FE4C      CP      'L'
CC94  C299CC    JP      NZ,#CC99
CC97  0611      LD      B,#11
CC99  FE3B      CP      ';'
CC9B  C2A0CC    JP      NZ,#CCA0
CC9E  0621      LD      B,#21
CCA0  FE4D      CP      'M'
CCA2  C2A7CC    JP      NZ,#CCA7
CCA5  0621      LD      B,#21
CCA7  78        LD      A,B
CCA8  C1        POP     BC
CCA9  C9        RET

; JFL:
CCAA  E1        POP     HL
CCAB  3E02      LD      A,#02
CCAD  C1        POP     BC
CCAE  C9        RET

; JFR:
CCAF  E1        POP     HL
CCB0  3E03      LD      A,#03
CCB2  C1        POP     BC
CCB3  C9        RET

; JRR:
CCB4  3E03      LD      A,#03
CCB6  C1        POP     BC
CCB7  C9        RET

; "Exibe score." (???)
CCB8  C9        RET

; "Exibe score esquerdo." (???)
CCB9  C9        RET

; SHAPON: Mostra contorno.
; HL aponta para o ponto da VRAM onde
; o desenho vai começar.
; DE aponta para os dados da figura,
; que consiste em uma sequência de bytes:
; I0 B0 I1 B1 ... In Bn #FF
; Cada byte I incrementa (ou decrementa)
; HL. Depois disso, o byte B é colocado
; no endereço da VRAM apontado por HL.
; O desenho termina quando se encontra
; um valor de I = #FF.
CCBA  E5        PUSH    HL
CCBB  D5        PUSH    DE
CCBC  C5        PUSH    BC
CCBD  1A        LD      A,(DE)
CCBE  FEFF      CP      #FF
CCC0  CAD3CC    JP      Z,#CCD3
CCC3  4F        LD      C,A
CCC4  07        RLCA
CCC5  06FF      LD      B,#FF
CCC7  DACBCC    JP      C,#CCCB
CCCA  04        INC     B
CCCB  09        ADD     HL,BC
CCCC  13        INC     DE
CCCD  1A        LD      A,(DE)
CCCE  77        LD      (HL),A
CCCF  13        INC     DE
CCD0  C3BDCC    JP      #CCBD
;
CCD3  C1        POP     BC
CCD4  D1        POP     DE
CCD5  E1        POP     HL
CCD6  C9        RET

; SHAPOF: Apaga contorno.
; Apaga a figura desenhada por SHAPON,
; substituindo os bytes da figura pelo
; padrão de fundo armazenado em C.
; Inclui detecção de colisão: Se algum
; byte apagado for diferente do byte
; original da figura, significa que
; algum outro desenho colidiu com a
; figura. (#0125) recebe 1. Se não
; houver colisão, o valor é 0.
CCD7  E5        PUSH    HL
CCD8  D5        PUSH    DE
CCD9  C5        PUSH    BC
CCDA  AF        XOR     A
CCDB  322501    LD      (#0125),A
CCDE  1A        LD      A,(DE)
CCDF  FEFF      CP      #FF
CCE1  CAD3CC    JP      Z,#CCD3
CCE4  4F        LD      C,A
CCE5  07        RLCA
CCE6  06FF      LD      B,#FF
CCE8  DAECCC    JP      C,#CCEC
CCEB  04        INC     B
CCEC  09        ADD     HL,BC
CCED  13        INC     DE
CCEE  1A        LD      A,(DE)
CCEF  BE        CP      (HL)
CCF0  CAF8CC    JP      Z,#CCF8
CCF3  3E01      LD      A,#01
CCF5  322501    LD      (#0125),A
CCF8  C1        POP     BC
CCF9  C5        PUSH    BC
CCFA  71        LD      (HL),C
CCFB  13        INC     DE
CCFC  C3DECC    JP      #CCDE

; Padrões de dígitos usados por SHOWNO.
; "0"
CCFF  0554      DB      #05,#54 ; --XX|XXX-
CC01  0404      DB      #04,#04 ; --X-|--X-
CD03  0404      DB      #04,#04 ; --X-|--X-
CD05  0404      DB      #04,#04 ; --X-|--X-
CD07  0554      DB      #05,#54 ; --XX|XXX-
; "1"
CD09  0040      DB      #00,#40 ; ----|X---
CD0B  0140      DB      #01,#40 ; ---X|X---
CD0D  0040      DB      #00,#40 ; ----|X---
CD0F  0040      DB      #00,#40 ; ----|X---
CD11  0150      DB      #01,#50 ; ---X|XX--
; "2"
CD13  0554      DB      #05,#54 ; --XX|XXX-
CD15  0004      DB      #00,#04 ; ----|--X-
CD17  0554      DB      #05,#54 ; --XX|XXX-
CD19  0400      DB      #04,#00 ; --X-|----
CD1B  0554      DB      #05,#54 ; --XX|XXX-
; "3"
CD1D  0554      DB      #05,#54 ; --XX|XXX-
CD1F  0004      DB      #00,#04 ; ----|--X-
CD21  0154      DB      #01,#54 ; ---X|XXX-
CD23  0004      DB      #00,#04 ; ----|--X-
CD25  0554      DB      #05,#54 ; --XX|XXX-
; "4"
CD27  0050      DB      #00,#50 ; ----|XX--
CD29  0110      DB      #01,#10 ; ---X|-X--
CD2B  0410      DB      #04,#10 ; --X-|-X--
CD3D  0554      DB      #05,#54 ; --XX|XXX-
CD2F  0010      DB      #00,#10 ; ----|-X--
; "5"
CD31  0554      DB      #05,#54 ; --XX|XXX-
CD33  0400      DB      #04,#00 ; --X-|----
CD35  0554      DB      #05,#54 ; --XX|XXX-
CD37  0004      DB      #00,#04 ; ----|--X-
CD39  0554      DB      #05,#54 ; --XX|XXX-
; "6"
CD3B  0554      DB      #05,#54 ; --XX|XXX-
CD3D  0400      DB      #04,#00 ; --X-|----
CD3F  0554      DB      #05,#54 ; --XX|XXX-
CD41  0404      DB      #04,#04 ; --X-|--X-
CD43  0554      DB      #05,#54 ; --XX|XXX-
; "7"
CD45  0554      DB      #05,#54 ; --XX|XXX-
CD47  0004      DB      #00,#04 ; ----|--X-
CD49  0010      DB      #00,#10 ; ----|-X--
CD4B  0040      DB      #00,#40 ; ----|X---
CD4D  0100      DB      #01,#00 ; ---X|----
; "8"
CD4F  0554      DB      #05,#54 ; --XX|XXX-
CD51  0404      DB      #04,#04 ; --X-|--X-
CD53  0554      DB      #05,#54 ; --XX|XXX-
CD55  0404      DB      #04,#04 ; --X-|--X-
CD57  0554      DB      #05,#54 ; --XX|XXX-
; "9"
CD59  0554      DB      #05,#54 ; --XX|XXX-
CD5B  0404      DB      #04,#04 ; --X-|--X-
CD5D  0554      DB      #05,#54 ; --XX|XXX-
CD5F  0004      DB      #00,#04 ; ----|--X-
CD61  0554      DB      #05,#54 ; --XX|XXX-
; seta à esquerda
CD63  0400      DB      #04,#00 ; --X-|----
CD65  1555      DB      #15,#55 ; -XXX|XXXX
CD67  5555      DB      #55,#55 ; XXXX|XXXX
CD69  1555      DB      #15,#55 ; -XXX|XXXX
CD6B  0400      DB      #04,#00 ; --X-|----
; seta à direita
CD6D  0010      DB      #00,#10 ; ----|-X--
CD6F  5554      DB      #55,#54 ; XXXX|XXX-
CD71  5555      DB      #55,#55 ; XXXX|XXXX
CD73  5554      DB      #55,#54 ; XXXX|XXX-
CD75  0010      DB      #00,#10 ; ----|-X--
; ticado
CD77  0001      DB      #00,#01 ; ----|---X
CD79  4004      DB      #40,#04 ; X---|--X-
CD7B  1010      DB      #10,#10 ; -X--|-X--
CD7D  0440      DB      #04,#40 ; --X-|X---
CD7F  0100      DB      #01,#00 ; ---X|----
; "X"
CD81  0404      DB      #04,#04 ; --X-|--X-
CD83  0110      DB      #01,#10 ; ---X|-X--
CD85  0040      DB      #00,#40 ; ----|X---
CD87  0110      DB      #01,#10 ; ---X|-X--
CD89  0404      DB      #04,#04 ; --X-|--X-
; espaço
CD8B  0000      DB      #00,#00 ; ----|----
CD8D  0000      DB      #00,#00 ; ----|----
CD8F  0000      DB      #00,#00 ; ----|----
CD91  0000      DB      #00,#00 ; ----|----
CD93  0000      DB      #00,#00 ; ----|----

; SCORE: Exibe pontos na direita e na esquerda.
; Limpa a tela em cor amarela.
CD95  3E88      LD      A,#88
CD97  D380      OUT     (#80),A ; COL32
CD99  015555    LD      BC,#5555
CD9C  CD61CB    CALL    #CB61 ; XCLEAR
; Exibe o valor em LPLAY.
CD9F  3A5701    LD      A,(#0157) ; LPLAY
CDA2  210B0A    LD      HL,#0A0B
CDA5  E5        PUSH    HL
CDA6  112080    LD      DE,#8020
CDA9  CD8DCB    CALL    #CB8D ; DISPY2
CDAC  E1        POP     HL
; Exibe seta à esquerda.
CDAD  E5        PUSH    HL
CDAE  44        LD      B,H
CDAF  112880    LD      DE,#8028
CDB2  CDADCB    CALL    #CBAD ; SHOWNO
; Exibe seta à direita.
CDB5  E1        POP     HL
CDB6  45        LD      B,L
CDB7  113480    LD      DE,#8034
CDBA  CDADCB    CALL    #CBAD ; SHOWNO
; Desenha linha reta verde na base da tela
; para os totais.
CDBD  210887    LD      HL,#8708
CDC0  3E00      LD      A,#00
CDC2  0616      LD      B,#16
CDC4  77        LD      (HL),A
CDC5  23        INC     HL
CDC6  05        DEC     B
CDC7  C2C4CD    JP      NZ,#CDC4
; Há scores armazenados?
CDCA  112C80    LD      DE,#802C
CDCD  0608      LD      B,#08
CDCF  210B01    LD      HL,#010B ; RECORD
CDD2  3A0901    LD      A,(#0109) ; RCRDPT
CDD5  BD        CP      L
CDD6  CAF7CD    JP      Z,#CDF7
; Sim: exibe-os.
CDD9  C5        PUSH    BC
CDDA  7E        LD      A,(HL)
CDDB  23        INC     HL
CDDC  E5        PUSH    HL
CDDD  CD0FCE    CALL    #CE0F
CDE0  210C00    LD      HL,#000C
CDE3  19        ADD     HL,DE
CDE4  EB        EX      DE,HL
CDE5  E1        POP     HL
CDE6  7E        LD      A,(HL)
CDE7  23        INC     HL
CDE8  E5        PUSH    HL
CDE9  CD0FCE    CALL    #CE0F
CDEC  21D400    LD      HL,#00D4
CDEF  19        ADD     HL,DE
CDF0  EB        EX      DE,HL
CDF1  E1        POP     HL
CDF2  C1        POP     BC
CDF3  05        DEC     B
CDF4  C2D2CD    JP      NZ,#CDD2
; Soma scores do jogador 1 e exibe total.
CDF7  210B01    LD      HL,#010B ; RECORD
CDFA  114887    LD      DE,#8748
CDFD  CD2FCE    CALL    #CE2F
; Soma scores do jogador 2 e exibe total.
CE00  210C01    LD      HL,#010C
CE03  115487    LD      DE,#8754
CE06  CD2FCE    CALL    #CE2F
; Aguarda alguma tecla ser pressionada
; e retorna.
CE09  CD1BC3    CALL    #C31B ; KEY
CE0C  C309CE    JP      #CE09
; DISPY3: Exibe 1, 2 ou 3 dígitos.
; Obtém dígito das centenas.
CE0F  0600      LD      B,#00
CE11  D664      SUB     #64 ; 100
CE13  04        INC     B
CE14  D211CE    JP      NC,#CE11
CE17  C664      ADD     A,#64 ; 100
CE19  05        DEC     B
CE1A  60        LD      H,B
CE1B  CA29CE    JP      Z,#CE29
; Se não for zero, recua posição na tela
; e exibe dígito.
CE1E  D5        PUSH    DE
CE1F  F5        PUSH    AF
CE20  1B        DEC     DE
CE21  1B        DEC     DE
CE22  CDADCB    CALL    #CBAD ; SHOWNO
CE25  F1        POP     AF
CE26  D1        POP     DE
; Se houve centena, força exibição das
; dezenas.
CE27  2601      LD      H,#01
; Exibe dígitos das dezenas/unidades.
CE29  D5        PUSH    DE
CE2A  CD8FCB    CALL    #CB8F ; DISPY
CE2D  D1        POP     DE
CE2E  C9        RET
; Soma scores e exibe.
; Se HL = RECORD (#010B), soma scores do jogador 1.
; Se HL = RECORD+1 (#010C), soma scores do jogador 2.
CE2F  D5        PUSH    DE
CE30  110000    LD      DE,#0000
CE33  3A0901    LD      A,(#0109) ; RCRDPT
CE36  47        LD      B,A
CE37  7D        LD      A,L
CE38  B8        CP      B
CE39  D248CE    JP      NC,#CE48
CE3C  E5        PUSH    HL
CE3D  6E        LD      L,(HL)
CE3E  2600      LD      H,#00
CE40  19        ADD     HL,DE
CE41  EB        EX      DE,HL
CE42  E1        POP     HL
CE43  23        INC     HL
CE44  23        INC     HL
CE45  C337CE    JP      #CE37
; Exibe total.
; Obtém dígitos dos milhares/centenas.
CE48  0600      LD      B,#00
CE4A  EB        EX      DE,HL
CE4B  119CFF    LD      DE,#FF9C ; -100
CE4E  19        ADD     HL,DE
CE4F  04        INC     B
CE50  DA4ECE    JP      C,#CE4E
CE53  116400    LD      DE,#0064 ; 100
CE56  19        ADD     HL,DE
CE57  05        DEC     B
CE58  CA64CE    JP      Z,#CE64
; Se os houver, exibe-os.
CE5B  D1        POP     DE
CE5C  D5        PUSH    DE
CE5D  E5        PUSH    HL
CE5E  78        LD      A,B
CE5F  CD8DCB    CALL    #CB8D ; DISPY2
; Se houve milhares/centenas, força
; exibição das dezenas.
CE62  E1        POP     HL
CE63  24        INC     H
; Exibe dígitos das dezenas/unidades.
CE64  D1        POP     DE
CE65  13        INC     DE
CE66  13        INC     DE
CE67  13        INC     DE
CE68  13        INC     DE
CE69  7D        LD      A,L
CE6A  CD8FCB    CALL    #CB8F ; DISPY
CE6D  C9        RET

; LSCORE: Exibe pontos da direita.
; (Esta descrição no manual de referência
; está errada! LSCORE na verdade transfere
; os scores do jogo recém-jogado para
; a tabela de scores.)

; Tabela de scores está cheia?
CE6E  2A0901    LD      HL,(#0109) ; RCRDPT
CE71  7D        LD      A,L
CE72  FE1B      CP      #1B
CE74  C287CE    JP      NZ,#CE87
; Sim: Descarta os 2 scores mais
; antigos e desloca os outros, para
; abrir espaço para os novos.
CE77  110D01    LD      DE,#010D ; RECORD+2
CE7A  210B01    LD      HL,#010B ; RECORD
CE7D  060E      LD      B,#0E
CE7F  1A        LD      A,(DE)
CE80  77        LD      (HL),A
CE81  23        INC     HL
CE82  13        INC     DE
CE83  05        DEC     B
CE84  C27FCE    JP      NZ,#CE7F
; Armazena os novos scores.
CE87  3A2301    LD      A,(#0123)
CE8A  77        LD      (HL),A
CE8B  23        INC     HL
CE8C  3A2401    LD      A,(#0124)
CE8F  77        LD      (HL),A
CE90  23        INC     HL
CE91  220901    LD      (#0109),HL ; RCRDPT
CE94  C9        RET

; BAS8K:
; Inicializa algumas variáveis do BASIC e do sistema.
; (Inicializações próprias do BASIC do MC-1000,
; implementadas à parte do BASIC original.)
; {PRIST1}
CE95  CDBACE    CALL    #CEBA ; Inicializa som (silêncio).
CE98  322801    LD      (#0128),A ; PNTR ; Chave PR# = 0
CE9B  325703    LD      (#0357),A ; @TRCFLG ; Chave TRON/TROF = TROF
CE9E  326003    LD      (#0360),A ; Chave FAST/SLOW = FAST
CEA1  325803    LD      (#0358),A ; Chave TEXT/GR/HGR = TEXT
CEA4  325203    LD      (#0352),A ; Chave NORMAL/INVERSE = NORMAL
CEA7  326103    LD      (#0361),A ; AUTOEXEC
CEAA  3D        DEC     A ; =$FF
CEAB  320601    LD      (#0106),A ; HEAD ; Chave jogo/BASIC = BASIC
CEAE  325303    LD      (#0353),A
CEB1  CDCEC7    CALL    #C7CE ; ISCN
CEB4  CDFCC0    CALL    #C0FC ; BEEP
CEB7  C3D6CE    JP      #CED6 ; BAENT0

; Inicializa som (silêncio).
; (A retorna com 0.)
CEBA  AF        XOR     A
CEBB  327201    LD      (#0172),A ; TONEA
CEBE  327801    LD      (#0178),A ; TONEB
CEC1  327E01    LD      (#017E),A ; TONEC
CEC4  320100    LD      (#0001),A
; Zera período da envoltória no PSG.
CEC7  3E0B      LD      A,#0B
CEC9  D320      OUT     (#20),A ; REG
CECB  AF        XOR     A
CECC  D360      OUT     (#60),A ; WR
CECE  3E0C      LD      A,#0C
CED0  D320      OUT     (#20),A ; REG
CED2  AF        XOR     A
CED3  D360      OUT     (#60),A ; WR
CED5  C9        RET

; BAENT0 : Início CCE BASIC.
; Copia o bloco de dados em (#D792~#D7DF) (tabela de inicialização)
; para (#0300~#034D) (área de trabalho).
; {ROMBEG} {PRIST1}=>#CE95 {LDWSP} [INIT]
CED6  014E00    LD      BC,#004E ; {PSTBEG-RSTLOC+8}
CED9  110003    LD      DE,#0300 ; {WSP} [WRKSPC]
CEDC  2192D7    LD      HL,#D792 ; {RAMST} [INITAB]
CEDF  EDB0      LDIR
;
CEE1  EB        EX      DE,HL
CEE2  F9        LD      SP,HL ; Pilha temporária.
CEE3  CDC7D9    CALL    #D9C7 ; {INITR} <ResetStack> [CLREG]
CEE6  CDC7E0    CALL    #E0C7 ; PRINTCRLF [PRNTCR]
CEE9  328D03    LD      (#038D),A ; {EOINPB} [BUFFER+72+1] ; [Mark end of buffer]
CEEC  32D403    LD      (#03D4),A ; {PRAM-1} [PROGST] ; Área de programa.
;
CEEF  213804    LD      HL,#0438
CEF2  CDFDC2    CALL    #C2FD ; FINDRAMTOP [MLOOP]
; {RAMTST}?
CEF5  1100FF    LD      DE,#FF00 ; -256=-#0100
CEF8  19        ADD     HL,DE ; HL
CEF9  112C03    LD      DE,#032C
CEFC  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
CEFF  DA3ED8    JP      C,#D83E ; FMERRO
CF02  1100FE    LD      DE,#FE00 ; -512=-#0200
CF05  229203    LD      (#0392),HL ; topo da RAM - #0100 {MEMSIZ} [LSTRAM]
CF08  19        ADD     HL,DE
CF09  224503    LD      (#0345),HL ; topo da RAM - #0300 {STDPTR} <STACK_TOP> [STRSPC]
; Apaga programa BASIC.
CF0C  CDA2D9    CALL    #D9A2 ; NEW {NEW1} [CLRPTR]
; Calcula memória livre.
CF0F  2A4503    LD      HL,(#0345) ; {STDPTR} <STACK_TOP> [STRSPC]
CF12  11EFFF    LD      DE,#FFEF ; -17
CF15  19        ADD     HL,DE
CF16  11D403    LD      DE,#03D4 ; {PRAM-1} [PROGST]
CF19  AF        XOR     A
CF1A  ED52      SBC     HL,DE
CF1C  E5        PUSH    HL
; Imprime mensagem de abertura ("MC-1000"...)
CF1D  2142D5    LD      HL,#D542 ; {MEMO} [SIGNON]
CF20  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
; Imprime memória livre e "BYTES".
CF23  E1        POP     HL
CF24  CD8BEE    CALL    #EE8B ; PRINTHL {NUMBO} <PrintInt> [PRNTHL]
CF27  2138D5    LD      HL,#D538 ; {BYT} [BFREE]
CF2A  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
; [WARMST]:
CF2D  315103    LD      SP,#0351 ; {INPBUF+6} [STACK] ; Pilha temporária.
; [BRKRET]:
CF30  CDC7D9    CALL    #D9C7 ; {INITR} <ResetStack> [CLREG]
CF33  C38DD8    JP      #D88D ; {EDIT} [PRNTOK] ; Obtém linha de comando.

; BWIDTH
; {WIDTH} [WIDTH]
CF36  2B        DEC     HL
CF37  CD96E9    CALL    #E996 ; {ARGVAL} <GetSubscript> [FNDNUM]
CF3A  324203    LD      (#0342),A ; {LINLEN} [LWIDTH]
CF3D  324303    LD      (#0343),A ; {PRLISI} [COMMAN]
CF40  C9        RET

;
CF41  F5        PUSH    AF
CF42  2B        DEC     HL
CF43  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
CF46  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
CF49  23        DB      '#'
CF4A  2B        DEC     HL
CF4B  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
CF4E  F1        POP     AF
CF4F  C9        RET
; HL8A : HL <-- 8 * A
CF50  6F        LD      L,A
CF51  2600      LD      H,#00
CF53  29        ADD     HL,HL
CF54  29        ADD     HL,HL
CF55  29        ADD     HL,HL
CF56  C9        RET

;
CF57  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
CF5A  2C        DB      ','
CF5B  7E        LD      A,(HL)
CF5C  FEBF      CP      #BF ; token '-'
CF5E  2808      JR      Z,#CF68 ; (8)
CF60  FEBE      CP      #BE ; token '+'
CF62  2001      JR      NZ,#CF65 ; (1)
CF64  23        INC     HL
CF65  C399E9    JP      #E999 ; @GETBYT {ARGVL1} [GETINT]
CF68  23        INC     HL
CF69  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
CF6C  2F        CPL
CF6D  3C        INC     A
CF6E  C9        RET

;
CF6F  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
CF72  2C        DB      ','
CF73  C399E9    JP      #E999 ; @GETBYT {ARGVL1} [GETINT]

; Lê os três parâmetros de TEMPO/SOUND: B, C, A.
; Retorna flags indicando número do canal (C=1, Z=2).
CF76  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
CF79  47        LD      B,A
CF7A  C5        PUSH    BC
CF7B  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
CF7E  2C        DB      ','
CF7F  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
CF82  C1        POP     BC
CF83  4F        LD      C,A
CF84  C5        PUSH    BC
CF85  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
CF88  2C        DB      ','
CF89  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
; Checa valor do canal (1~3).
CF8C  FE01      CP      #01
CF8E  DAF6DE    JP      C,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
CF91  FE04      CP      #04
CF93  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
CF96  FE02      CP      #02
CF98  C1        POP     BC
CF99  C9        RET

; BTEMPO
CF9A  C8        RET     Z
CF9B  CD76CF    CALL    #CF76 ; Lê os três parâmetros de TEMPO/SOUND: B, C, A.
; Checa 2º parâmetro (0~3).
CF9E  F5        PUSH    AF ; Preserva indicação do número do canal nos flags (C=1, Z=2).
CF9F  79        LD      A,C ; Segundo parâmetro deve estar entre 0 e 3.
CFA0  FE00      CP      #00
CFA2  DAF6DE    JP      C,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
CFA5  FE04      CP      #04
CFA7  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
CFAA  F1        POP     AF ; Restaura indicação do número de canal nos flags (C=1, Z=2).
; Forja retorno.
CFAB  11BACE    LD      DE,#CEBA ; Inicializa som (silêncio).
CFAE  D5        PUSH    DE
;
CFAF  3814      JR      C,#CFC5 ; Canal 1.
CFB1  2809      JR      Z,#CFBC ; Canal 2.
; Canal 3.
CFB3  78        LD      A,B
CFB4  327B01    LD      (#017B),A ; CHANC+2. Byte mais significativo do período da envoltória.
CFB7  79        LD      A,C
CFB8  324B01    LD      (#014B),A ; CVALUE
CFBB  C9        RET
; Canal 2.
CFBC  78        LD      A,B
CFBD  327501    LD      (#0175),A ; CHANB+2. Byte mais significativo do período da envoltória.
CFC0  79        LD      A,C
CFC1  324201    LD      (#0142),A ; BVALUE
CFC4  C9        RET
; Canal 1.
CFC5  78        LD      A,B
CFC6  326F01    LD      (#016F),A ; CHANA+2. Byte mais significativo do período da envoltória.
CFC9  79        LD      A,C
CFCA  323901    LD      (#0139),A ; AVALUE
CFCD  C9        RET

; BSOUND
CFCE  C8        RET Z
; Se nenhum som estiver sendo tocado, inicializa algumas variáveis referentes aos canais.
CFCF  E5        PUSH    HL
CFD0  3A0100    LD      A,(#0001) ; Se (#0001) = 0...
CFD3  B7        OR      A
CFD4  2007      JR      NZ,#CFDD ; (7)
CFD6  3C        INC     A ; (#0001) <-- 1
CFD7  320100    LD      (#0001),A
CFDA  CDE1C1    CALL    #C1E1 ; VOICE
CFDD  E1        POP     HL
;
CFDE  CD76CF    CALL    #CF76 ; Lê os três parâmetros de TEMPO/SOUND: B, C, A.
CFE1  3820      JR      C,#D003 ; Canal 1.
CFE3  280F      JR      Z,#CFF4 ; Canal 2.

; Canal 3.
; Espera acabar a nota anterior, se houver.
CFE5  3A7E01    LD      A,(#017E) ; TONEC
CFE8  B7        OR      A
CFE9  20FA      JR      NZ,#CFE5 ; (-6)
; Armazena nota e duração.
CFEB  78        LD      A,B
CFEC  327D01    LD      (#017D),A ; TONEC-1
CFEF  79        LD      A,C
CFF0  327E01    LD      (#017E),A ; TONEC
CFF3  C9        RET

; Canal 2.
; Espera acabar a nota anterior, se houver.
CFF4  3A7801    LD      A,(#0178) ; TONEB
CFF7  B7        OR      A
CFF8  20FA      JR      NZ,#CFF4 ; (-6)
; Armazena nota e duração.
CFFA  78        LD      A,B
CFFB  327701    LD      (#0177),A ; TONEB-1
CFFE  79        LD      A,C
CFFF  327801    LD      (#0178),A ; TONEB
D002  C9 RET

; Canal 1.
; Espera acabar a nota anterior, se houver.
D003  3A7201    LD      A,(#0172) ; TONEA
D006  B7        OR      A
D007  20FA      JR      NZ,#D003        ; (-6)
; Armazena nota e duração.
D009  78        LD      A,B
D00A  327101    LD      (#0171),A ; TONEA-1
D00D  79        LD      A,C
D00E  327201    LD      (#0172),A ; TONEA
D011  C9        RET

; BUNDRAW
D012  AF        XOR     A
D013  1802      JR      #D017           ; (2)
; BDRAW
D015  3E01      LD      A,#01
;
D017  325403    LD      (#0354),A
; TIERRO se modo = TEXT.
D01A  3A5803    LD      A,(#0358)
D01D  B7        OR      A
D01E  CAAAD3    JP      Z,#D3AA ; TIERRO
; Empilha últimas coordenadas.
D021  E5        PUSH    HL
D022  2A5903    LD      HL,(#0359)
D025  E3        EX      (SP),HL
D026  2B        DEC     HL
D027  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D02A  7E        LD      A,(HL)
D02B  FEBF      CP      #BF ; token '-'
D02D  2836      JR      Z,#D065         ; (54)
D02F  FEBE      CP      #BE ; token '+'
D031  2001      JR      NZ,#D034        ; (1)
D033  23        INC     HL
D034  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
D037  E3        EX      (SP),HL
D038  84        ADD     A,H ; A = último X + novo valor
D039  67        LD      H,A
D03A  E3        EX      (SP),HL
D03B  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
D03E  2C        DB      ','
D03F  7E        LD      A,(HL)
D040  FEBF      CP      #BF ; token '-'
D042  282B      JR      Z,#D06F         ; (43)
D044  FEBE      CP      #BE ; token '+'
D046  2001      JR      NZ,#D049        ; (1)
D048  23        INC     HL
D049  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
D04C  E3        EX      (SP),HL
D04D  85        ADD     A,L ; A = último Y + novo valor
D04E  47        LD      B,A ; novo Y
D04F  7C        LD      A,H ; novo X
D050  2A5903    LD      HL,(#0359)
D053  C5        PUSH    BC ; empilha novo Y.
D054  F5        PUSH    AF ; empilha novo X.
; Forja retorno.
D055  115ED0    LD      DE,#D05E
D058  D5        PUSH    DE
;
D059  F5        PUSH    AF
D05A  78        LD      A,B ; novo Y
D05B  C383D3    JP      #D383

;
D05E  F1        POP     AF ; novo X
D05F  C1        POP     BC ; novo Y
D060  CD33D2    CALL    #D233
D063  E1        POP     HL
D064  C9        RET
;
D065  23        INC     HL
D066  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
D069  E3        EX      (SP),HL
D06A  47        LD      B,A
D06B  7C        LD      A,H ; A = último X – novo valor
D06C  90        SUB     B
D06D  18CA      JR      #D039           ; (-54)
;
D06F  23        INC     HL
D070  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
D073  E3        EX      (SP),HL
D074  47        LD      B,A
D075  7D        LD      A,L ; A = último Y – novo valor
D076  90        SUB     B
D077  18D5      JR      #D04E           ; (-43)

; BCALL
; Obtém endereço.
D079  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
; Empilha ponteiro de execução
; do BASIC.
D07C  E5        PUSH    HL
; Forja retorno ao interpretador.
D07D  EB        EX      DE,HL
D07E  1183D0    LD      DE,#D083
D081  D5        PUSH    DE
; Salta para a rotina.
D082  E9        JP      (HL)
; Retorno da rotina: recupera
; ponteiro de execução do BASIC.
D083  E1        POP     HL
D084  C9        RET
;
; BINVERSE
D085  C0        RET     NZ
D086  3E01      LD      A,#01
;
D088  325203    LD      (#0352),A
D08B  C9        RET
;
; BNORMAL
D08C  C0        RET     NZ
D08D  AF        XOR     A
D08E  18F8      JR      #D088           ; (-8)

; BEDIT
D090  C8        RET     Z
D091  E5        PUSH    HL
D092  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
D095  EB        EX      DE,HL
D096  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D099  E1        POP     HL
D09A  110002    LD      DE,#0200 ; @BUF {INPBUF} <LINE_BUFFER> [BUFFER]
D09D  0601      LD      B,#01
D09F  7E        LD      A,(HL)
D0A0  B7        OR      A
D0A1  2806      JR      Z,#D0A9         ; (6)
D0A3  12        LD      (DE),A
D0A4  23        INC     HL
D0A5  13        INC     DE
D0A6  04        INC     B
D0A7  18F6      JR      #D09F           ; (-10)
D0A9  78        LD      A,B
D0AA  328D01    LD      (#018D),A ; FILNAM
D0AD  EB        EX      DE,HL
D0AE  228E01    LD      (#018E),HL ; FILNAM+1
D0B1  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D0B4  EB        EX      DE,HL
D0B5  CD82D9    CALL    #D982 ; {ZPOIT} <FindProgramLine> [SRCHLN] ; Procura pelo número de linha em DE.
D0B8  1E0E      LD      E,#0E ; LI erro
D0BA  D256D8    JP      NC,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
D0BD  2A8E01    LD      HL,(#018E)
D0C0  03        INC     BC
D0C1  03        INC     BC
D0C2  03        INC     BC
D0C3  03        INC     BC
D0C4  0A        LD      A,(BC)
D0C5  B7        OR      A
D0C6  2826      JR      Z,#D0EE         ; (38)
D0C8  03        INC     BC
D0C9  F2EAD0    JP      P,#D0EA
; "Token" encontrado (A).
; Localiza a palavra reservada correspondente
; (DE) e a copia para o buffer (HL).
D0CC  C5        PUSH    BC
D0CD  D67F      SUB     #7F
D0CF  4F        LD      C,A
D0D0  1191D5    LD      DE,#D591
D0D3  1A        LD      A,(DE)
D0D4  13        INC     DE
D0D5  B7        OR      A
D0D6  F2D3D0    JP      P,#D0D3
D0D9  0D        DEC     C
D0DA  20F7      JR      NZ,#D0D3        ; (-9)
D0DC  1B        DEC     DE
D0DD  E67F      AND     #7F
D0DF  77        LD      (HL),A
D0E0  23        INC     HL
D0E1  13        INC     DE
D0E2  1A        LD      A,(DE)
D0E3  B7        OR      A
D0E4  F2DDD0    JP      P,#D0DD
D0E7  C1        POP     BC
D0E8  18DA      JR      #D0C4           ; (-38)
; Caracter comum encontrado (A).
; Copia diretamente para o buffer (HL).
D0EA  77        LD      (HL),A
D0EB  23        INC     HL
D0EC  18D6      JR      #D0C4           ; (-42)
; Fim da linha atingido.
D0EE  77        LD      (HL),A
D0EF  E1        POP     HL
D0F0  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D0F3  CD8BEE    CALL    #EE8B ; PRINTHL {NUMBO} <PrintInt> [PRNTHL]
D0F6  3E20      LD      A,#20
D0F8  CDA6F1    CALL    #F1A6
D0FB  2A8E01    LD      HL,(#018E) ; FILNAM+1
D0FE  E5        PUSH    HL
D0FF  D1        POP     DE
D100  3A8D01    LD      A,(#018D) ; FILNAM
D103  47        LD      B,A
D104  CD06C0    CALL    #C006 ; KEY
D107  FE0D      CP      #0D
D109  CA4AD1    JP      Z,#D14A
D10C  FE20      CP      #20
D10E  CA38D1    JP      Z,#D138
D111  E6DF      AND     #DF
D113  FE58      CP      'X'
D115  CA6BD1    JP      Z,#D16B
D118  FE53      CP      'S'
D11A  CAC4D1    JP      Z,#D1C4
D11D  FE49      CP      'I'
D11F  CA7ED1    JP      Z,#D17E
D122  FE44      CP      'D'
D124  CADBD1    JP      Z,#D1DB
D127  FE4C      CP      'L'
D129  CAF2D1    JP      Z,#D1F2
D12C  FE48      CP      'H'
D12E  CA14D2    JP      Z,#D214
D131  FE51      CP      'Q'
D133  CA8DD8    JP      Z,#D88D ; {EDIT} [PRNTOK]
D136  18CC      JR      #D104           ; (-52)
D138  78        LD      A,B
D139  FEFF      CP      #FF
D13B  28C7      JR      Z,#D104         ; (-57)
D13D  7E        LD      A,(HL)
D13E  B7        OR      A
D13F  28C3      JR      Z,#D104         ; (-61)
D141  12        LD      (DE),A
D142  13        INC     DE
D143  23        INC     HL
D144  04        INC     B
D145  CDA6F1    CALL    #F1A6
D148  18BA      JR      #D104           ; (-70)
D14A  78        LD      A,B
D14B  FEFF      CP      #FF
D14D  280D      JR      Z,#D15C         ; (13)
D14F  7E        LD      A,(HL)
D150  12        LD      (DE),A
D151  23        INC     HL
D152  13        INC     DE
D153  04        INC     B
D154  B7        OR      A
D155  2805      JR      Z,#D15C         ; (5)
D157  CDA6F1    CALL    #F1A6
D15A  18EE      JR      #D14A           ; (-18)
D15C  AF        XOR     A
D15D  12        LD      (DE),A
D15E  21FFFF    LD      HL,#FFFF
D161  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D164  2101D9    LD      HL,#D901
D167  E5        PUSH    HL
D168  C3C4E0    JP      #E0C4
D16B  78        LD      A,B
D16C  FEFF      CP      #FF
D16E  CA04D1    JP      Z,#D104
D171  7E        LD      A,(HL)
D172  B7        OR      A
D173  2809      JR      Z,#D17E         ; (9)
D175  12        LD      (DE),A
D176  23        INC     HL
D177  13        INC     DE
D178  04        INC     B
D179  CDA6F1    CALL    #F1A6
D17C  18ED      JR      #D16B           ; (-19)
D17E  CD06C0    CALL    #C006 ; KEY
D181  FE03      CP      #03 ; Ctrl+C
D183  CA04D1    JP      Z,#D104
D186  FE0D      CP      #0D
D188  CA4AD1    JP      Z,#D14A
D18B  FE20      CP      ' '
D18D  38EF      JR      C,#D17E         ; (-17)
D18F  4F        LD      C,A
D190  78        LD      A,B
D191  FEFE      CP      #FE
D193  79        LD      A,C
D194  28E8      JR      Z,#D17E         ; (-24)
D196  F5        PUSH    AF
D197  D5        PUSH    DE
D198  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D19B  201C      JR      NZ,#D1B9        ; (28)
D19D  E5        PUSH    HL
D19E  D1        POP     DE
D19F  78        LD      A,B
D1A0  3C        INC     A
D1A1  FEFF      CP      #FF
D1A3  2814      JR      Z,#D1B9         ; (20)
D1A5  7E        LD      A,(HL)
D1A6  B7        OR      A
D1A7  2803      JR      Z,#D1AC         ; (3)
D1A9  23        INC     HL
D1AA  18F9      JR      #D1A5           ; (-7)
D1AC  7E        LD      A,(HL)
D1AD  23        INC     HL
D1AE  77        LD      (HL),A
D1AF  2B        DEC     HL
D1B0  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D1B3  2803      JR      Z,#D1B8         ; (3)
D1B5  2B        DEC     HL
D1B6  18F4      JR      #D1AC           ; (-12)
D1B8  23        INC     HL
D1B9  D1        POP     DE
D1BA  F1        POP     AF
D1BB  12        LD      (DE),A
D1BC  13        INC     DE
D1BD  04        INC     B
D1BE  CDA6F1    CALL    #F1A6
D1C1  C37ED1    JP      #D17E
D1C4  78        LD      A,B
D1C5  FEFF      CP      #FF
D1C7  CA04D1    JP      Z,#D104
D1CA  CD06C0    CALL    #C006 ; KEY
D1CD  FE20      CP      ' '
D1CF  38F3      JR      C,#D1C4         ; (-13)
D1D1  12        LD      (DE),A
D1D2  23        INC     HL
D1D3  13        INC     DE
D1D4  04        INC     B
D1D5  CDA6F1    CALL    #F1A6
D1D8  C304D1    JP      #D104
D1DB  7E        LD      A,(HL)
D1DC  B7        OR      A
D1DD  CA4AD1    JP      Z,#D14A
D1E0  3E2F      LD      A,#2F
D1E2  CDA6F1    CALL    #F1A6
D1E5  7E        LD      A,(HL)
D1E6  CDA6F1    CALL    #F1A6
D1E9  3E2F      LD      A,#2F
D1EB  CDA6F1    CALL    #F1A6
D1EE  23        INC     HL
D1EF  C304D1    JP      #D104
D1F2  78        LD      A,B
D1F3  FEFF      CP      #FF
D1F5  280E      JR      Z,#D205         ; (14)
D1F7  7E        LD      A,(HL)
D1F8  12        LD      (DE),A
D1F9  13        INC     DE
D1FA  04        INC     B
D1FB  B7        OR      A
D1FC  2809      JR      Z,#D207         ; (9)
D1FE  7E        LD      A,(HL)
D1FF  CDA6F1    CALL    #F1A6
D202  23        INC     HL
D203  18ED      JR      #D1F2           ; (-19)
D205  AF        XOR     A
D206  12        LD      (DE),A
D207  3E0D      LD      A,#0D
D209  CDA6F1    CALL    #F1A6
D20C  3E0A      LD      A,#0A
D20E  CDA6F1    CALL    #F1A6
D211  C3F0D0    JP      #D0F0
D214  7E        LD      A,(HL)
D215  B7        OR      A
D216  CA7ED1    JP      Z,#D17E
D219  23        INC     HL
D21A  18F8      JR      #D214           ; (-8)
; BFAST
D21C  C0        RET     NZ
D21D  AF        XOR     A
;
D21E  326003    LD      (#0360),A
D221  C9        RET
; BSLOW
D222  C0        RET     NZ
D223  3E01      LD      A,#01
; Bug: faltou aqui um JP D21E.
; Por isso o comando SLOW invade a
; programação do comando SET e
; acaba produzindo FO ERRO.

; BSET
D225  2B        DEC     HL
D226  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; TI ERRO se modo TEXT.
D229  3A5803    LD      A,(#0358)
D22C  B7        OR      A
D22D  CAAAD3    JP      Z,#D3AA ; TIERRO
;
D230  C377D3    JP      #D377 ; SETXY
;
; Plot (A,B) to (H,L).
D233  4F        LD      C,A
; Plot (C,B) to (H,L).
D234  78        LD      A,B
; Desvia se x1 = x2.
D235  7C        LD      A,H
D236  91        SUB     C
D237  CACBD2    JP      Z,#D2CB
; D = dx = int(y2-y1)
D23A  3002      JR      NC,#D23E        ; (2)
D23C  2F        CPL
D23D  3C        INC     A
D23E  57        LD      D,A
; Desvia se y1 = y2.
D23F  7D        LD      A,L
D240  90        SUB     B
D241  CADBD2    JP      Z,#D2DB
; E = dy = abs(y2-y1)
D244  3002      JR      NC,#D248        ; (2)
D246  2F        CPL
D247  3C        INC     A
D248  5F        LD      E,A
; Desvia se dx = dy.
D249  BA        CP      D
D24A  CAAED2    JP      Z,#D2AE
; Desvia se dx < dy.
D24D  3031      JR      NC,#D280        ; (49)
; Trata dx > dy.
; Se x1 > x2, troca coordenadas.
D24F  7C        LD      A,H
D250  B9        CP      C
D251  3803      JR      C,#D256         ; (3)
D253  CDEBD2    CALL    #D2EB
;
D256  E5        PUSH    HL
D257  C5        PUSH    BC
D258  4A        LD      C,D
D259  6B        LD      L,E
D25A  2600      LD      H,#00
D25C  CDF2D2    CALL    #D2F2
D25F  5D        LD      E,L
D260  1600      LD      D,#00
D262  C1        POP     BC
D263  E1        POP     HL
D264  7D        LD      A,L
D265  B8        CP      B
D266  3806      JR      C,#D26E         ; (6)
D268  7B        LD      A,E
D269  2F        CPL
D26A  5F        LD      E,A
D26B  16FF      LD      D,#FF
D26D  13        INC     DE
;
D26E  44        LD      B,H
D26F  65        LD      H,L
D270  2E80      LD      L,#80
D272  C5        PUSH    BC
D273  78        LD      A,B
D274  44        LD      B,H
D275  CDDAD3    CALL    #D3DA ; PLOTAB
D278  C1        POP     BC
D279  78        LD      A,B
D27A  B9        CP      C
D27B  C8        RET     Z
D27C  04        INC     B
D27D  19        ADD     HL,DE
D27E  18F2      JR      #D272           ; (-14)
; Trata dx < dy.
; Se y1 > y2, troca coordenadas.
D280  7D        LD      A,L
D281  B8        CP      B
D282  3803      JR      C,#D287         ; (3)
D284  CDEBD2    CALL    #D2EB
;
D287  E5        PUSH    HL
D288  C5        PUSH    BC
D289  4B        LD      C,E
D28A  6A        LD      L,D
D28B  2600      LD      H,#00
D28D  CDF2D2    CALL    #D2F2
D290  5D        LD      E,L
D291  1600      LD      D,#00
D293  C1        POP     BC
D294  E1        POP     HL
D295  7C        LD      A,H
D296  B9        CP      C
D297  3806      JR      C,#D29F         ; (6)
D299  7B        LD      A,E
D29A  2F        CPL
D29B  5F        LD      E,A
D29C  16FF      LD      D,#FF
D29E  13        INC     DE
D29F  48        LD      C,B
D2A0  45        LD      B,L
D2A1  2E80      LD      L,#80
D2A3  7C        LD      A,H
D2A4  CDDAD3    CALL    #D3DA ; PLOTAB
D2A7  78        LD      A,B
D2A8  B9        CP      C
D2A9  C8        RET     Z
D2AA  04        INC     B
D2AB  19        ADD     HL,DE
D2AC  18F5      JR      #D2A3           ; (-11)
; Trata dx = dy.
; Se x1 < x2, troca coordenadas.
D2AE  7C        LD      A,H
D2AF  B9        CP      C
D2B0  D4EBD2    CALL    NC,#D2EB
D2B3  7D        LD      A,L
D2B4  B8        CP      B
D2B5  F5        PUSH    AF
D2B6  7C        LD      A,H
D2B7  24        INC     H
D2B8  45        LD      B,L
D2B9  2C        INC     L
D2BA  CDDAD3    CALL    #D3DA ; PLOTAB
D2BD  F1        POP     AF
D2BE  F5        PUSH    AF
D2BF  3802      JR      C,#D2C3         ; (2)
D2C1  2D        DEC     L
D2C2  2D        DEC     L
D2C3  7C        LD      A,H
D2C4  B9        CP      C
D2C5  28EF      JR      Z,#D2B6         ; (-17)
D2C7  38ED      JR      C,#D2B6         ; (-19)
D2C9  C1        POP     BC
D2CA  C9        RET
; Trata linha vertical:
; Plot (H,B) to (H,L).
; Se B >= L, troca coordenadas.
D2CB  7D        LD      A,L
D2CC  B8        CP      B
D2CD  3002      JR      NC,#D2D1        ; (2)
D2CF  68        LD      L,B
D2D0  47        LD      B,A
; Desenha a linha.
D2D1  7C        LD      A,H
D2D2  CDDAD3    CALL    #D3DA ; PLOTAB
D2D5  78        LD      A,B
D2D6  BD        CP      L
D2D7  C8        RET     Z
D2D8  04        INC     B
D2D9  18F6      JR      #D2D1           ; (-10)
; Trata linha horizontal:
; Plot (C,L) to (H,L).
D2DB  7C        LD      A,H
D2DC  B9        CP      C
D2DD  3802      JR      C,#D2E1         ; (2)
D2DF  61        LD      H,C
D2E0  4F        LD      C,A
; Desenha a linha.
D2E1  7C        LD      A,H
D2E2  CDDAD3    CALL    #D3DA ; PLOTAB
D2E5  7C        LD      A,H
D2E6  B9        CP      C
D2E7  C8        RET     Z
D2E8  24        INC     H
D2E9  18F6      JR      #D2E1           ; (-10)
; Troca coordenadas.
D2EB  7C        LD      A,H
D2EC  61        LD      H,C
D2ED  4F        LD      C,A
D2EE  7D        LD      A,L
D2EF  68        LD      L,B
D2F0  47        LD      B,A
D2F1  C9        RET
;
D2F2  65        LD      H,L
D2F3  2E00      LD      L,#00
D2F5  7C        LD      A,H
D2F6  B9        CP      C
D2F7  D0        RET     NC
D2F8  0608      LD      B,#08
D2FA  29        ADD     HL,HL
D2FB  7C        LD      A,H
D2FC  380A      JR      C,#D308         ; (10)
D2FE  91        SUB     C
D2FF  3802      JR      C,#D303         ; (2)
D301  23        INC     HL
D302  67        LD      H,A
D303  05        DEC     B
D304  20F4      JR      NZ,#D2FA        ; (-12)
D306  37        SCF
D307  C9        RET
D308  91        SUB     C
D309  18F6      JR      #D301           ; (-10)

; BAUTO
D30B  E5        PUSH    HL
D30C  210000    LD      HL,#0000
D30F  225B03    LD      (#035B),HL ; @AUTLIN
D312  E1        POP     HL
D313  2823      JR      Z,#D338         ; (35)
D315  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
D318  E5        PUSH    HL
D319  21F6FF    LD      HL,#FFF6
D31C  19        ADD     HL,DE
D31D  225B03    LD      (#035B),HL ; @AUTLIN
D320  E1        POP     HL
D321  2815      JR      Z,#D338         ; (21)
D323  7E        LD      A,(HL)
D324  FEBF      CP      #BF ; token '-'
D326  1E02      LD      E,#02 ; SN erro
D328  C256D8    JP      NZ,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
D32B  23        INC     HL
D32C  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
D32F  EB        EX      DE,HL
D330  225E03    LD      (#035E),HL
D333  1E02      LD      E,#02 ; SN erro
D335  C256D8    JP      NZ,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
D338  3E01      LD      A,#01
D33A  325D03    LD      (#035D),A ; @AUTFLG {AUTOFG}
D33D  E1        POP     HL
D33E  C3A4D8    JP      #D8A4 ; {LININP} <GetNonBlankLine> [GETCMD]

; BTRO
D341  FE46      CP      'F'
D343  280E      JR      Z,#D353 ; DOTROF        ; (14)
D345  FE4E      CP      'N'
D347  1E02      LD      E,#02 ; SN erro
D349  C256D8    JP      NZ,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
; DOTRON
D34C  3E01      LD      A,#01
;
D34E  325703    LD      (#0357),A ; @TRCFLG
D351  23        INC     HL
D352  C9        RET
; DOTROF
D353  AF        XOR     A
D354  18F8      JR      #D34E           ; (-8)

;
D356  E5        PUSH    HL
D357  F5        PUSH    AF
D358  3A5703    LD      A,(#0357) ; @TRCFLG
D35B  B7        OR      A
D35C  2816      JR      Z,#D374         ; (22)
D35E  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D361  23        INC     HL
D362  7C        LD      A,H
D363  B5        OR      L
D364  280E      JR      Z,#D374         ; (14)
D366  2B        DEC     HL
D367  3E5B      LD      A,#5B ; '['
D369  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
D36C  CD8BEE    CALL    #EE8B ; PRINTHL {NUMBO} <PrintInt> [PRNTHL]
D36F  3E5D      LD      A,#5D ; ']'
D371  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
D374  F1        POP     AF
D375  E1        POP     HL
D376  C9        RET

; SETXY
; Lê dois valores (0~255) separados por
; vírgula.
D377  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
D37A  F5        PUSH    AF
D37B  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
D37E  2C        DB      ','
D37F  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
; Se modo gráfico = GR, checa limites
; x < 128, y < 64.
D382  47        LD      B,A
D383  3A5803    LD      A,(#0358)
D386  FE01      CP      #01
D388  78        LD      A,B
D389  C2A1D3    JP      NZ,#D3A1
D38C  FE40      CP      #40 ; 64
D38E  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
D391  F1        POP     AF
D392  FE80      CP      #80 ; 128
D394  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
; SETAB: Define o último ponto plotado
; como (A,B).
D397  325A03    LD      (#035A),A
D39A  F5        PUSH    AF
D39B  78        LD      A,B
D39C  325903    LD      (#0359),A
D39F  F1        POP     AF
D3A0  C9        RET
; Se modo gráfico = HGR, checa limite
; y < 192.
D3A1  FEC0      CP      #C0 ; 192
D3A3  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
D3A6  F1        POP     AF
D3A7  C397D3    JP      #D397 ; SETAB
; TIERRO
D3AA  1E18      LD      E,#18 ; TI erro
D3AC  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
; BUNPLOT
D3AF  3E00      LD      A,#00
D3B1  1802      JR      #D3B5           ; (2)
; BPLOT
D3B3  3E01      LD      A,#01
;
D3B5  F5        PUSH    AF
; TI ERRO se modo = TEXT.
D3B6  3A5803    LD      A,(#0358)
D3B9  B7        OR      A
D3BA  CAAAD3    JP      Z,#D3AA ; TIERRO
;
D3BD  F1        POP     AF
; Armazena flag de desenhar/apagar.
D3BE  325403    LD      (#0354),A
D3C1  C8        RET     Z
D3C2  2B        DEC     HL
D3C3  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; Desvia se PLOT TO.
D3C6  FEB7      CP      #B7 ; token 'TO'
D3C8  CA52D4    JP      Z,#D452 ; PLOTTO
; Desenha/apaga 1º ponto.
D3CB  CD77D3    CALL    #D377 ; SETXY
D3CE  E5        PUSH    HL
D3CF  CDDAD3    CALL    #D3DA ; PLOTAB
; Terminou sequência de plots?
D3D2  E1        POP     HL
D3D3  2B        DEC     HL
D3D4  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D3D7  C8        RET     Z
D3D8  18EC      JR      #D3C6           ; (-20)
; PLOTAB: Nas coordenadas (A,B),
; desenha um ponto (se (#0354) <> 0)
; ou apaga (se (#0354) = 0).
D3DA  C5        PUSH    BC
D3DB  D5        PUSH    DE
D3DC  E5        PUSH    HL
D3DD  F5        PUSH    AF
; Habilita VRAM.
D3DE  CD86C8    CALL    #C886 ; BANK1
; HL = #8000 + B * 32.
D3E1  210080    LD      HL,#8000
D3E4  112000    LD      DE,#0020
D3E7  04        INC     B
D3E8  05        DEC     B
D3E9  CAF0D3    JP      Z,#D3F0
D3EC  19        ADD     HL,DE
D3ED  C3E8D3    JP      #D3E8
; Checa modo.
; Desvia se não GR.
D3F0  3A5803    LD      A,(#0358)
D3F3  FE01      CP      #01
D3F5  C22BD4    JP      NZ,#D42B
; Trata plot em GR.
; HL += int(A/4)
D3F8  F1        POP     AF
D3F9  D604      SUB     #04
D3FB  DA02D4    JP      C,#D402
D3FE  23        INC     HL
D3FF  C3F9D3    JP      #D3F9
;
D402  C604      ADD     A,#04
D404  47        LD      B,A
D405  04        INC     B
D406  C5        PUSH    BC
; Apaga ponto original.
D407  3EFC      LD      A,#FC ; máscara
;
D409  0F        RRCA
D40A  0F        RRCA
D40B  05        DEC     B
D40C  C209D4    JP      NZ,#D409
D40F  A6        AND     (HL)
D410  77        LD      (HL),A
;
D411  C1        POP     BC
; Se era para apagar, desvia:
; nada mais a fazer.
D412  3A5403    LD      A,(#0354)
D415  B7        OR      A
D416  CA24D4    JP      Z,#D424
; Desenhar: colocar nova cor do ponto.
D419  3AF600    LD      A,(#00F6)
D41C  0F        RRCA
D41D  0F        RRCA
D41E  05        DEC     B
D41F  C21CD4    JP      NZ,#D41C
D422  B6        OR      (HL)
D423  77        LD      (HL),A
; Desabilita VRAM e termina.
D424  CD79C8    CALL    #C879 ; BANK0
D427  E1        POP     HL
D428  D1        POP     DE
D429  C1        POP     BC
D42A  C9        RET
; Trata plot em HGR.
; HL += int(A/8)
D42B  F1        POP     AF
D42C  D608      SUB     #08
D42E  DA35D4    JP      C,#D435
D431  23        INC     HL
D432  C32CD4    JP      #D42C
D435  C608      ADD     A,#08
D437  47        LD      B,A
D438  04        INC     B
D439  3E01      LD      A,#01
D43B  0F        RRCA
D43C  05        DEC     B
D43D  C23BD4    JP      NZ,#D43B
D440  47        LD      B,A
; É para desenhar ou apagar?
D441  3A5403    LD      A,(#0354)
D444  B7        OR      A
D445  78        LD      A,B
D446  C24ED4    JP      NZ,#D44E
; Apagar.
D449  2F        CPL
D44A  A6        AND     (HL)
D44B  C323D4    JP      #D423
; Desenhar.
D44E  B6        OR      (HL)
D44F  C323D4    JP      #D423
; PLOTTO
; Empilha últimas coordenadas.
D452  E5        PUSH    HL
D453  2A5903    LD      HL,(#0359)
D456  E3        EX      (SP),HL
; Obtém novas coordenadas.
D457  23        INC     HL
D458  CD77D3    CALL    #D377 ; SETXY
; Desempilha primeiras coordenadas.
D45B  E3        EX      (SP),HL
D45C  CD33D2    CALL    #D233 ; Plot (A,B) to (H,L).
D45F  C3D2D3    JP      #D3D2

; BTEXT
D462  C0        RET     NZ
; Modo de vídeo = 0 (texto).
D463  AF        XOR     A
D464  325803    LD      (#0358),A
; Configura VDG.
D467  3C        INC     A
D468  D380      OUT     (#80),A ; COL32
D46A  32F500    LD      (#00F5),A ; MODBUF
; Limpa a tela.
D46D  E5        PUSH    HL
D46E  D5        PUSH    DE
D46F  210080    LD      HL,#8000
D472  110098    LD      DE,#9800
D475  CD86C8    CALL    #C886 ; BANK1
D478  3620      LD      (HL),#20
D47A  23        INC     HL
D47B  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D47E  C278D4    JP      NZ,#D478
D481  CD79C8    CALL    #C879 ; BANK0
; Habilita hook para intermitência
; do cursor.
D484  3EC3      LD      A,#C3
D486  323001    LD      (#0130),A ; JOBM
D489  D1        POP     DE
D48A  E1        POP     HL
D48B  C9        RET

; BHOME
D48C  C0        RET     NZ
D48D  E5        PUSH    HL
D48E  CDCEC7    CALL    #C7CE ; ISCN
D491  E1        POP     HL
D492  C9        RET

; DOPR#
D493  FE03      CP      #03
D495  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
D498  322801    LD      (#0128),A ; PNTR
D49B  C9        RET

; BPR#
D49C  2B        DEC     HL
D49D  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D4A0  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
D4A3  E5        PUSH    HL
D4A4  CD93D4    CALL    #D493 ; DOPR#
D4A7  E1        POP     HL
D4A8  C9        RET

; BGR
D4A9  C0        RET     NZ
D4AA  3E01      LD      A,#01
; XGR
D4AC  F5        PUSH    AF
D4AD  3A0F00    LD      A,(#000F) ; C40?80
D4B0  B7        OR      A
D4B1  C2AAD3    JP      NZ,#D3AA ; TIERRO
D4B4  AF        XOR     A
D4B5  325903    LD      (#0359),A
D4B8  325A03    LD      (#035A),A
D4BB  F1        POP     AF
D4BC  325803    LD      (#0358),A
D4BF  FE01      CP      #01
D4C1  3E88      LD      A,#88
D4C3  CAC8D4    JP      Z,#D4C8
D4C6  3E9F      LD      A,#9F
D4C8  D380      OUT     (#80),A ; COL32
D4CA  32F500    LD      (#00F5),A ; MODBUF
D4CD  CDDCD4    CALL    #D4DC
D4D0  3EC9      LD      A,#C9
D4D2  323001    LD      (#0130),A ; JOBM
D4D5  C9        RET

; BHGR
D4D6  C0        RET     NZ
D4D7  3E02      LD      A,#02
D4D9  C3ACD4    JP      #D4AC ; XGR

; Limpa tela gráfica.
D4DC  E5        PUSH    HL
D4DD  D5        PUSH    DE
D4DE  CD86C8    CALL    #C886 ; BANK1
D4E1  210080    LD      HL,#8000
D4E4  110098    LD      DE,#9800
D4E7  3600      LD      (HL),#00
D4E9  23        INC     HL
D4EA  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D4ED  C2E7D4    JP      NZ,#D4E7
D4F0  CD79C8    CALL    #C879 ; BANK0
D4F3  D1        POP     DE
D4F4  E1        POP     HL
D4F5  C9        RET

; BCOLUMN
D4F6  2B        DEC     HL
D4F7  CD96E9    CALL    #E996 ; {ARGVAL} <GetSubscript> [FNDNUM]
; Desvia se parâmetro é 32.
D4FA  FE20      CP      #20
D4FC  2818      JR      Z,#D516         ; (24)
; PI ERRO se não for 80.
D4FE  FE50      CP      #50
D500  C2F6DE    JP      NZ,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
; 80 colunas: TI ERRO se monitor de 80
; colunas estiver ausente.
D503  3A2D01    LD      A,(#012D) ; COSW
D506  CB4F      BIT     1,A
D508  CAAAD3    JP      Z,#D3AA ; TIERRO
; Configuração para 80 colunas.
D50B  3E01      LD      A,#01
;
D50D  320F00    LD      (#000F),A ; C40?80
D510  E5        PUSH    HL
; Limpa a tela e termina.
D511  CDCEC7    CALL    #C7CE ; ISCN
D514  E1        POP     HL
D515  C9        RET
; Configuração para 32 colunas.
D516  AF        XOR     A
D517  18F4      JR      #D50D           ; (-12)

; BTLOAD
D519  C0        RET     NZ
D51A  C354C1    JP      #C154 ; TLOAD

; Lê parâmetro de COLOR.
D51D  2B        DEC     HL
D51E  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D521  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
D524  C6        DB      #C6 ; token "="
D525  C399E9    JP      #E999 ; @GETBYT {ARGVL1} [GETINT]

; BCOLOR
; Lê parâmetro.
D528  CD1DD5    CALL    #D51D
; PI ERRO se não válido (0 a 3).
D52B  B7        OR      A
D52C  FAF6DE    JP      M,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
D52F  FE04      CP      #04
D531  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
D534  32F600    LD      (#00F6),A
D537  C9        RET

; {BYT} [BFREE]
D538  20425954  DB      ' BYT'
D53C  4553      DB      'ES'
D53E  0D0A0A    DB      #0D,#0A,#0A ; CR+LF+LF
D541  00        DB      #00
; {MEMO} [SIGNON]
D542  4D432D31  DB      'MC-1'
D546  30303020  DB      '000 '
D54A  43434520  DB      'CCE '
D54E  434F4C4F  DB      'COLO'
D552  5220434F  DB      'R CO'
D556  4D505554  DB      'MPUT'
D55A  45522020  DB      'ER  '
D55E  0D0A      DB      #0D,#0A; CR+LF
D560  00        DB      #00

; @FUNDSP {ADRTB2} <KW_INLINE_FNS> [FNCTAB]
; Endereços das funções.
D561  E2EC      DW      #ECE2 ; BSGN {SGN} <Sgn>
D563  A5ED      DW      #EDA5 ; BINT {INT} <Int> [INT]
D565  F8EC      DW      #ECF8 ; BABS {ABS} <Abs>
D567  0303      DW      #0303 ; BUSR @USRTAB \USRPOK {USRLOC} <Usr>
D569  05E6      DW      #E605 ; BFRE {FRE}
D56B  59E9      DW      #E959 ; BINP {INP}
D56D  3CE6      DW      #E63C ; BPOS {POS}
D56F  81EF      DW      #EF81 ; BSQR {SQR} <Sqr> [SQR]
D571  5EF0      DW      #F05E ; BRND {RND} <Rnd> [RND]
D573  8EEB      DW      #EB8E ; BLOG {LOG} [LOG]
D575  CEEF      DW      #EFCE ; BEXP {EXP} [EXP]
D577  D2F0      DW      #F0D2 ; BCOS {COS}
D579  D8F0      DW      #F0D8 ; BSIN {SIN} <Sin>
D57B  39F1      DW      #F139 ; BTAN {TAN}
D57D  4EF1      DW      #F14E ; BATN {ATN}
D57F  D7ED      DW      #EDD7 ; BPEEK {PEEK}
D581  9DE8      DW      #E89D ; BLEN {LEN} [LEN]
D583  C1E6      DW      #E6C1 ; BSTR$ {STR_}
D585  34E9      DW      #E934 ; BVAL {VAL}
D587  ACE8      DW      #E8AC ; BASC {ASC}
D589  BDE8      DW      #E8BD ; BCHR$ @CHR$ {CHR_}
D58B  CDE8      DW      #E8CD ; BLEFT$ $LEFT$ {LEFT_}
D58D  FCE8      DW      #E8FC ; BRIGHT$ {RGHT_}
D58F  05E9      DW      #E905 ; BMID$ {MID_}

; {MNEMTB} <KEYWORDS>
; Palavras reservadas do BASIC.
; A primeira letra de cada palavra
; está com o 8º bit ligado.
; Comandos.
D591  C54E44    DB      'E'+#80,'ND' ; end
D594  C64F52    DB      'F'+#80,'OR' ; for
D597  CE455854  DB      'N'+#80,'EXT' ; next
D59B  C4415441  DB      'D'+#80,'ATA' ; data
D59F  C5584954  DB      'E'+#80,'XIT' ; exit
D5A3  C94E5055  DB      'I'+#80,'NPU' ; input
D5A7  54        DB      'T'
D5A8  C4494D    DB      'D'+#80,'IM' ; dim
D5AB  D2454144  DB      'R'+#80,'EAD' ; read
D5AF  CC4554    DB      'L'+#80,'ET' ; let
D5B2  C74F544F  DB      'G'+#80,'OTO' ; goto
D5B6  D2554E    DB      'R'+#80,'UN' ; run
D5B9  C946      DB      'I'+#80,'F' ; if
D5BB  D2455354  DB      'R'+#80,'EST' ; restore
D5BF  4F5245    DB      'ORE'
D5C2  C74F5355  DB      'G'+#80,'OSU' ; gosub
D5C6  42        DB      'B'
D5C7  D2455455  DB      'R'+#80,'ETU' ; return
D5CB  524E      DB      'RN'
D5CD  D2454D    DB      'R'+#80,'EM' ; rem
D5D0  D3544F50  DB      'S'+#80,'TOP' ; stop
D5D4  CF5554    DB      'O'+#80,'UT' ; out
D5D7  CF4E      DB      'O'+#80,'N' ; on
D5D9  C84F4D45  DB      'H'+#80,'OME' ; home
D5DD  D7414954  DB      'W'+#80,'AIT' ; wait
D5E1  C44546    DB      'D'+#80,'EF' ; def
D5E4  D04F4B45  DB      'P'+#80,'OKE' ; poke
D5E8  D052494E  DB      'P'+#80,'RIN' ; print
D5EC  54        DB      'T'
D5ED  D05223    DB      'P'+#80,'R#' ; pr#
D5F0  D34F554E  DB      'S'+#80,'OUN' ; sound
D5F4  44        DB      'D'
D5F5  C752      DB      'G'+#80,'R' ; gr
D5F7  C84752    DB      'H'+#80,'GR' ; hgr
D5FA  C34F4C4F  DB      'C'+#80,'OLO' ; color
D5FE  52        DB      'R'
D5FF  D4455854  DB      'T'+#80,'EXT' ; text
D603  D04C4F54  DB      'P'+#80,'LOT' ; plot
D607  D4524F    DB      'T'+#80,'RO' ; tro
D60A  D54E504C  DB      'U'+#80,'NPL' ; unplot
D60E  4F54      DB      'OT'
D610  D34554    DB      'S'+#80,'ET' ; set
D613  C3414C4C  DB      'C'+#80,'ALL' ; call
D617  C4524157  DB      'D'+#80,'RAW' ; draw
D61B  D54E4452  DB      'U'+#80,'NDR' ; undraw
D61F  4157      DB      'AW'
D621  D4454D50  DB      'T'+#80,'EMP' ; tempo
D625  4F        DB      'O'
D626  D7494454  DB      'W'+#80,'IDT' ; width
D62A  48        DB      'H'
D62B  C34F4E54  DB      'C'+#80,'ONT' ; cont
D62F  CC495354  DB      'L'+#80,'IST' ; list
D633  C34C4541  DB      'C'+#80,'LEA' ; clear
D637  52        DB      'R'
D638  CC4F4144  DB      'L'+#80,'OAD' ; load
D63C  D3415645  DB      'S'+#80,'AVE' ; save
D640  CE4557    DB      'N'+#80,'EW' ; new
D643  D44C4F41  DB      'T'+#80,'LOA' ; tload
D647  44        DB      'D'
D648  C34F4C55  DB      'C'+#80,'OLU' ; column
D64C  4D4E      DB      'MN'
D64E  C155544F  DB      'A'+#80,'UTO' ; auto
D652  C6415354  DB      'F'+#80,'AST' ; fast
D656  D34C4F57  DB      'S'+#80,'LOW' ; slow
D65A  C5444954  DB      'E'+#80,'DIT' ; edit
D65E  C94E5645  DB      'I'+#80,'NVE' ; inverse
D662  525345    DB      'RSE'
D665  CE4F524D  DB      'N'+#80,'ORM' ; normal
D669  414C      DB      'AL'
D66B  C4454255  DB      'D'+#80,'EBU' ; debug
D66F  47        DB      'G'
; Cláusulas, palavras reservadas auxiliares.
D670  D4414228  DB      'T'+#80,'AB(' ; tab(
D674  D44F      DB      'T'+#80,'O' ; to
D676  C64E      DB      'F'+#80,'N' ; fn
D678  D3504328  DB      'S'+#80,'PC(' ; spc(
D67C  D448454E  DB      'T'+#80,'HEN' ; then
D680  CE4F54    DB      'N'+#80,'OT' ; not
D683  D3544550  DB      'S'+#80,'TEP' ; step
D687  D6544142  DB      'V'+#80,'TAB' ; vtab(
D68B  28        DB      '('
; Operadores.
D68C  AB        DB      '+'+#80 ; +
D68D  AD        DB      '-'+#80 ; -
D68E  AA        DB      '*'+#80 ; *
D68F  AF        DB      '/'+#80 ; /
D690  DE        DB      '^'+#80 ; ^
D691  C14E44    DB      'A'+#80,'ND' ; and
D694  CF52      DB      'O'+#80,'R' ; or
D696  BE        DB      '>'+#80 ; >
D697  BD        DB      '='+#80 ; =
D698  BC        DB      '<'+#80 ; <
; Funções.
D699  D3474E    DB      'S'+#80,'GN' ; sgn
D69C  C94E54    DB      'I'+#80,'NT' ; int
D69F  C14253    DB      'A'+#80,'BS' ; abs
D6A2  D55352    DB      'U'+#80,'SR' ; usr
D6A5  C65245    DB      'F'+#80,'RE' ; fre
D6A8  C94E50    DB      'I'+#80,'NP' ; inp
D6AB  D04F53    DB      'P'+#80,'OS' ; pos
D6AE  D35152    DB      'S'+#80,'QR' ; sqr
D6B1  D24E44    DB      'A'+#80,'ND' ; rnd
D6B4  CC4F47    DB      'L'+#80,'OG' ; log
D6B7  C55850    DB      'E'+#80,'XP' ; exp
D6BA  C34F53    DB      'C'+#80,'OS' ; cos
D6BD  D3494E    DB      'S'+#80,'IN' ; sin
D6C0  D4414E    DB      'T'+#80,'AN' ; tan
D6C3  C1544E    DB      'A'+#80,'TN' ; atn
D6C6  D045454B  DB      'P'+#80,'EEK' ; peek
D6CA  CC454E    DB      'L'+#80,'EN' ; len
D6CD  D3545224  DB      'S'+#80,'TR$' ; str$
D6D1  D6414C    DB      'V'+#80,'AL' ; val
D6D4  C15343    DB      'A'+#80,'SC' ; asc
D6D7  C3485224  DB      'C'+#80,'HR$' ; chr$
D6DB  CC454654  DB      'L'+#80,'EFT' ; left$
D6DF  24        DB      '$'
D6E0  D2494748  DB      'R'+#80,'IGH' ; right$
D6E4  5424      DB      'T$'
D6E6  CD494424  DB      'M'+#80,'ID$' ; mid$
; Fim da lista de palavras reservadas.
D6EA  80        DB      #80

; {ADRTB1} <KW_GENERAL_FNS>
; Endereços dos comandos.
D6EB  21DE      DW      #DE21 ; BEND {END} <Stop>
DEED  F5DC      DW      #DCF5 ; BFOR {FOR} <For>
DEEF  72E2      DW      #E272 ; BNEXT {NEXT} <Next> [NEXT]
D6F1  C2DF      DW      #DFC2 ; BDATA {DATA} <Data> [DATA]
D6F3  03C0      DW      #C003 ; BEXIT = BAENT0
D6F5  8AE1      DW      #E18A ; BINPUT {INPUT} <Input> [INPUT]
D6F7  7FE4      DW      #E47F ; BDIM @DIM {DIM} <Dim>
D6F9  B7E1      DW      #E1B7 ; BREAD {READ} <Read> [READ]
D6FB  D7DF      DW      #DFD7 ; BLET {LET} <Let>
D6FD  80DF      DW      #DF80 ; BGOTO {GOTO} <Goto>
D6FF  64DF      DW      #DF64 ; BRUN {RUN} <Run>
D701  4AE0      DW      #E04A ; BIF {IF} <If>
D703  AFDD      DW      #DDAF ; BRESTORE {RESTO} <Restore> [RESTOR]
D705  6FDF      DW      #DF6F ; BGOSUB {GOSUB} <Gosub>
D707  9EDF      DW      #DF9E ; BRETURN {RETUR} <Return>
D709  C4DF      DW      #DFC4 ; BREM {REM} <Rem>
D70B  0DDE      DW      #DE0D ; BSTOP {STOP} <Stop>
D70D  65E9      DW      #E965 ; BOUT {OUT}
D70F  2EE0      DW      #E02E ; BON {ON}
D711  8CD4      DW      #D48C ; BHOME {CLS}
D713  6BE9      DW      #E96B ; BWAIT {WAIT}
D715  43E6      DW      #E643 ; BDEF {DEF}
D717  DEED      DW      #EDDE ; BPOKE {POKE}
D719  6DE0      DW      #E0D6 ; BPRINT {PRINT} <Print>
D71B  9CD4      DW      #D49C ; BPR#
D71D  CECF      DW      #CFCE ; BSOUND
D71F  A9D4      DW      #D4A9 ; BGR
D721  D6D4      DW      #D4D6 ; BHGR
D723  28D5      DW      #D528 ; BCOLOR
D725  62D4      DW      #D462 ; BTEXT
D727  B3D3      DW      #D3B3 ; BPLOT
D729  41D3      DW      #D341 ; BTRO {TRON}/{TROFF}
D72B  AFD3      DW      #D3AF ; BUNPLOT
D72D  25D2      DW      #D225 ; BSET
D72F  79D0      DW      #D079 ; BCALL {CALL}
D731  15D0      DW      #D015 ; BDRAW
D733  12D0      DW      #D012 ; BUNDRAW
D735  9ACF      DW      #CF9A ; BTEMPO
D737  36CF      DW      #CF36 ; BWIDTH {WIDTH}
D739  6EDE      DW      #DE6E ; BCONT {CONT}
D73B  4FDC      DW      #DC4F ; BLIST {LIST} <List>
D73D  1FDF      DW      #DF1F ; BCLEAR {CLEAR} <Clear>
D73F  1DEA      DW      #EA1D ; BLOAD {LOAD}
D741  AAE9      DW      #E9AA ; BSAVE
D743  A1D9      DW      #D9A1 ; BNEW <New> [NEW]
D745  19D5      DW      #D519 ; BTLOAD {CLOAD}
D747  F6D4      DW      #D4F6 ; BCOLUMN
D749  0BD3      DW      #D30B ; BAUTO {AUTO}
D74B  1CD2      DW      #D21C ; BFAST
D74D  22D2      DW      #D222 ; BSLOW
D74F  90D0      DW      #D090 ; BEDIT
D751  85D0      DW      #D085 ; BINVERSE
D753  8CD0      DW      #D08C ; BNORMAL
D755  F4F1      DW      #F1F4 ; BDEBUG

; @OPTAB {ADRTB3} <KW_ARITH_OP_FNS> [PRITAB]
; Precedência e endereço do operador.
D757  79        DB      #79
D758  72EE      DW      #EE72 ; BADD @FADDT {PLUS} <FAdd> [PADD]
D75A  79        DB      #79
D75B  95EA      DW      #EA95 ; BSUB @FSUBT {MINUS} <FSub>
D75D  7C        DB      #7C
D75E  CDEB      DW      #EBCD ; BMUL @FMULTT {MUL} <FMul> [MULT]
D760  7C        DB      #7C
D761  2BEC      DW      #EC2B ; BDIV @FDIVT {DIV} <FDiv>
D763  7F        DB      #7F
D764  8AEF      DW      #EF8A ; BPOW @FPWRT {EXPO} [POWER]
D766  50        DB      #50
D767  DAE3      DW      #E3DA ; BAND @ANDO {AND}
D769  46        DB      #46
D76A  D9E3      DB      #E3D9 ; BOR @ORO {OR}

; TABERRCOD: Tabela de códigos de erro.
; {ERRTAB} <ERROR_CODES> [ERRORS]
D76C  4E46      DB      'NF' ; NEXT sem FOR / NF=NEXT without FOR.
D76E  534E      DB      'SN' ; Erro de sintaxe / SN=Syntax error.
D770  5247      DB      'RG' ; RETURN sem GOSUB / RG=RETURN without GOSUB.
D772  4644      DB      'FD' ; Fim de dados / OD=Out of data.
D774  5049      DB      'PI' ; Parâmetro ilegal / FC=Illegal function call.
D776  5345      DB      'SE' ; Sem espaço / OV=Overflow.
D778  464D      DB      'FM' ; Fim de memória / OM=Out of memory.
D77A  4C49      DB      'LI' ; Linha indefinida / UL=Undefined line number.
D77C  4949      DB      'II' ; Índice ilegal / BS=Bad subscript.
D77E  4D52      DB      'MR' ; Matriz redimensionada / DD=Duplicate definition.
D780  445A      DB      'DZ' ; Divisão por zero / /0=Division by zero.
D782  4449      DB      'DI' ; Direto ilegal / ID=Invalid in direct mode.
D784  5449      DB      'TI' ; Tipo incompatível / TM=Type mismatch.
D786  4643      DB      'FC' ; Fim de cadeia / OS=Out of string space.
D788  434C      DB      'CL' ; Cadeia longa / LS=Long string.
D78A  4343      DB      'CC' ; Cadeia complexa / ST=String formula too complex.
D78C  4E43      DB      'NC' ; Não pode continuar / CN=Cannot continue.
D78E  4649      DB      'FI' ; Função indefinida / UF=Undefined function.
D790  464F      DB      'FO' ; Falta operando / MO=Missing operand.

; {RAMST} [INITAB]
; Este bloco de dados (#D792~#D7DF) é copiado
; para (#0300~#034D) na inicialização.
; INÍCIO DO BLOCO.
; #0300:{WSP} [WRKSPC]
D792  C32DCF    JP      #CF2D

; Ponto de entrada da função USR.
; #0303:BUSR @USRTAB \USRPOK {USRLOC} [USR]
D795  C3F6DE    JP      #DEF6 ; PIERRO @FCERR {FCER} [FCERR]

; Rotina auxiliar para OUT.
; #0306:OUTAUX {PORTAD} [OUTSUB]
D798  D300      OUT     (#00),A ; #0307:{PORTAD+1} [OTPORT]
D79A  C9        RET

; Rotina auxiliar para DIV.
; Os valores #00 serão substituídos.
; #0309:{DIVVAR} [DIVSUP]
D79B  D600      SUB     #00 ; #030A:{DVAR1} [DIV1]
D79D  6F        LD      L,A
D79E  7C        LD      A,H
D79F  DE00      SBC     A,#00 ; #030E:{DVAR2} [DIV2]
D7A1  67        LD      H,A
D7A2  78        LD      A,B
D7A3  DE00      SBC     A,#00 ; #0312:{DVAR3} [DIV3]
D7A5  47        LD      B,A
D7A6  3E00      LD      A,#00 ; #0315:{DVAR4} [DIV4]
D7A8  C9        RET

; Dados auxiliares para RND().
D7A9  00        DB      #00 ; #0317:{RNDVR1} [SEED]
D7AA  00        DB      #00 ; #0318:{RNDVR2} [SEED+1]
D7AB  00        DB      #00 ; #0319:{RNDVR3} [SEED+2]
D7AC  354ACA99  DB      #35,#4A,#CA,#99 ; -2.65145E+7
D7B0  391C7698  DB      #39,#1C,#76,#98 ; +1.61291E+7
D7B4  2295B398  DB      #22,#95,#B3,#98 ; -1.17691E+7
D7B8  0ADD4798  DB      #0A,#DD,#47,#98 ; +1.30983E+7
D7BC  53D19999  DB      #53,#D1,#99,#99 ; -2.01612E+7
D7C0  0A1A9F98  DB      #0A,#1A,#9F,#98 ; -1.04269E+7
D7C4  65BCCD98  DB      #65,#BC,#CD,#98 ; -1.34831E+7
D7C8  D6773E98  DB      #D6,#77,#3E,#98 ; +1.24825E+7
D7CC  52C74F80  DB      #52,#C7,#4F,#80 ; .811653 ; #033A: @RNDX {RNDVR4} [LSTRND]

; Rotina auxiliar para INP().
; #033E:[INPSUB]
D7D0  DB00      IN      A,(#00) ; #033F:[INPORT]
D7D2  C9        RET

; #0341: Quantidade de caracteres ASCII NULL a serem impressos
; após um CR+LF.
; (O Altair BASIC tinha um comando NULL para definir este valor.)
; @NULCNT {DUMMY} <TERMINAL_Y> [NULLS]
D7D3  01        DB      #01
; #0342: Limite máximo de POS(). Também recebe o valor de WIDTH.
; {LINLEN} [LWIDTH]
D7D4  FF        DB      #FF
; #0343: Valor de WIDTH para "PRINT ,".
; {PRLISI} [COMMAN]
D7D5  FF        DB      #FF
; #0344: Suprime a impressão de caracteres quando <> 0.
; {OUTFLG} [CTLOFG]
D7D6  00        DB      #00
; #0345: Base da pilha do Z80; Último endereço disponível
; para o BASIC antes da área de strings.
; {STDPTR} <STACK_TOP> [STRSPC]
D7D7  3804      DB      #0438
; #0346: Número de linha BASIC em execução. #FFFF após execução.
; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D7D9  FEFF      DB      #FFFE
; #0348: Endereço de início do programa BASIC.
; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
D7DB  D503      DB      #03D5 ; {PRAM}
; FIM DO BLOCO ([INITBE]) mais abaixo, em #D7DF.

; <Status Strings>
; {ERR} <szError> [ERRMSG]
D7DD  20        DB      ' '
D7DE  4552524F  DB      'ERRO'
D7E2  0707      DB      #07,#07 ; BEEP+BEEP
D7E4  00        DB      #00
; {IN} <szIn> [INMSG]
D7E5  20454D20  DB      ' EM '
D7E9  00        DB      #00
; {OK} <szOK> [OKMSG]
D7EA  4F4B      DB      'OK'
D7EC  0D0A      DB      #0D,#0A ; CR+LF
D7EE  00        DB      #00
; {BR} [BRMSG]
D7EF  50415553  DB      'PAUS'
D7F3  41        DB      'A'
D7F4  00        DB      #00

; {FORSR} <GetFlowPtr>
; "Faz HL apontar para a estrutura de fluxo apropriada na pilha.
; Na entrada, se a rotina foi chamada pelo tratador da palavra-chave
; NEXT então DE está apontando para a variável após a palavra-chave
; NEXT."

; "Os quatro primeiros bytes são (ou deveriam ser) dois endereços
; de retorno. Não estamos interessados neles, então a primeira
; coisa a fazer é fazer HL apontar para SP+4."
D7F5  210400    LD      HL,#0004
D7F8  39        ADD     HL,SP
; {FORSR1}
; "Obtém o ID da palavra-chave, o byte que precede a estrutura de
; fluxo. Depois incrementamos HL para (o que deveria ser) a
; estrutura de fluxo, e retornamos se o ID da palavra-chave não
; for 'FOR'."
D7F9  7E        LD      A,(H
L)
D7FA  23        INC     HL
D7FB  FE81      CP      #81 ; token "FOR"
D7FD  C0        RET     NZ
; "Tratamento especial para estruturas de fluxo FOR. Aqui
; verificamos se estamos com a estrutura certa, isto é, aquela
; exigida pela instrução NEXT que nos chamou. Quando somos
; chamados por NEXT, ele faz DE apontar para a variável na
; instrução NEXT. Então aqui pegamos a primeira palavra da
; estrutura de fluxo FOR que é o endereço para a variável do
; FOR, e comparamo-la com a que foi recebida em DE. Se elas
; coincidirem, então encontramos a estrutura de fluxo desejada
; e podemos retornar com segurança. Senão pulamos 13 bytes
; acima na pilha - 13 bytes é o tamanho da estrutura de fluxo
; FOR - e voltamos ao laço para tentar de novo."
D7FE  4E        LD      C,(HL)
D7FF  23        INC     HL
D800  46        LD      B,(HL)
D801  23        INC     HL
D802  E5        PUSH    HL
D803  69        LD      L,C
D804  60        LD      H,B
D805  7A        LD      A,D
D806  B3        OR      E
D807  EB        EX      DE,HL
D808  2804      JR      Z,#D80E         ; (4)
D80A  EB        EX      DE,HL
D80B  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
; {FORSR2}
D80E  010D00    LD      BC,#000D ; +13
D811  E1        POP     HL
D812  C8        RET     Z
D813  09        ADD     HL,BC
D814  18E3      JR      #D7F9           ; (-29)

 ; {LININ} <CopyMemoryUp> [MOVUP]
; "Copia um bloco de memória de BC para HL. A cópia
; é feita do fim para o começo, descendo e incluindo
; o ponto em que BC = DE. A cópia é feita do fim para
; o começo porque esta função é usada para mover para
; a frente blocos de memória de uns poucos bytes. Se
; ela copiasse do começo para o fim, então o bloco de
; memória se sobrescreveria."

; Checa memória disponível.
D816  CD30D8    CALL    #D830 ; {TMEMO1} <CheckEnoughMem>
; {LININ1}
; EX BC,HL. Agora HL aponta para a fonte e BC para o
; destino.
D819  C5        PUSH    BC
D81A  E3        EX      (SP),HL
D81B  C1        POP     BC
; {LININ2} <CopyMemLoop>
; Copia de HL para BC, decrementando-os,
; até que HL = DE.
D81C  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D81F  7E        LD      A,(HL)
D820  02        LD      (BC),A
D821  C8        RET     Z
D822  0B        DEC     BC
D823  2B        DEC     HL
D824  C31CD8    JP      #D81C ; {LININ2} <CopyMemLoop>

; Verifica memória disponível
; para 2xC bytes.
; @GETSTK {TMEMO} <CheckEnoughVarSpace> [CHKSTK]
D827  E5        PUSH    HL
; HL = início da área livre + 2 x C
D828  2ABB03    LD      HL,(#03BB) ; {FSLPTR} <VAR_TOP> [ARREND]
D82B  0600      LD      B,#00
D82D  09        ADD     HL,BC
D82E  09        ADD     HL,BC
D82F  3E        DB      #3E ; Oculta a instrução seguinte.
; {TMEMO1} <CheckEnoughMem>
D830  E5        PUSH    HL
; Se HL > 65536 – 48, FM ERRO.
D831  3ED0      LD      A,#D0
D833  95        SUB     L
D834  6F        LD      L,A
D835  3EFF      LD      A,#FF
D837  9C        SBC     A,H
D838  3804      JR      C,#D83E ; FMERRO {OMER} <OutOfMemory>; (4)
D83A  67        LD      H,A
; Se SP – HL < 48, FM ERRO.
D83B  39        ADD     HL,SP
D83C  E1        POP     HL
D83D  D8        RET     C

; FMERRO: Produz erro "FM" (fim de memória)
; {OMER} <OutOfMemory>
D83E  1E0C      LD      E,#0C ; erro "FM"
D840  1814      JR      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
; {SNER0} [DATSNR]
D842  2AAA03    LD      HL,(#03AA) ; {DATPTR} [DATLIN]
D845  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
; {SNER} <SyntaxError>
D848  1E02      LD      E,#02 ; erro "SN"
D84A  01        DB      #01 ; Oculta a instrução seguinte.
; DZERRO:
; {DIVER} <DivideByZero> [DZERR]
D84B  1E14      LD      E,#14 ; erro "DZ"
D84D  01        DB      #01 ; Oculta a instrução seguinte.
; {NFER}
D84E  1E00      LD      E,#00 ; erro "NF"
D850  01        DB      #01 ; Oculta a instrução seguinte.
; MRERRO {DDER} [DDERR]
D851  1E12      LD      E,#12 ; erro "MR"
D853  01        DB      #01 ; Oculta a instrução seguinte.
; {UFER}
D854  1E22      LD      E,#22 ; erro "FI"

; ERROE: Exibe erro indicado pelo registrador E.
; @ERROR {ERROO} <Error> [ERROR]
D856  CDC7D9    CALL    #D9C7 ; {INITR} <ResetStack> [CLREG]
D859  324403    LD      (#0344),A ; {OUTFLG} [CTLOFG]; Habilita impressão.
D85C  CDBBE0    CALL    #E0BB ; CRLFPOSNZ {CRWDY} <NewLine> [STTLIN]
D85F  216CD7    LD      HL,#D76C ; TABERRCOD {ERRTAB} <ERROR_CODES> [ERRORS]
D862  57        LD      D,A ; D = 0.
; Imprime "?"
D863  3E3F      LD      A,'?'
D865  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
; Imprime código de erro (2 caracteres) cuja
; posição na tabela está indicada por E.
D868  19        ADD     HL,DE ; HL aponta para o código de erro.
D869  7E        LD      A,(HL)
D86A  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
D86D  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D870  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
; Imprime " ERRO"
D873  21DDD7    LD      HL,#D7DD ; {ERR} <szError> [ERRMSG]
; {ERROO1} [ERRIN]
D876  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
; Se @CURLIN {CULINO} <CURRENT_LINE> contém 65534, reinicia BASIC.(?)
; Pula se erro ao entrar na área de RAM durante a partida fria.(?)
D879  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
D87C  11FEFF    LD      DE,#FFFE
D87F  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D882  CA95CE    JP      Z,#CE95 ; {PRIST1}
D885  7C        LD      A,H
D886  A5        AND     L
D887  3C        INC     A
D888  C483EE    CALL    NZ,#EE83 ; {INOUT} <PrintIN> [LINEIN] ; Imprime " EM " + HL.
D88B  3E        DB      #3E ; Oculta a instrução seguinte. ; "Salta Stop e cai em Main."
; Rotina de edição/Nível de comando.
; {EDIT0} <Stop+1> [POPNOK]
D88C  C1        POP     BC ; Descarta endereço de retorno.
; {EDIT} <Main> [PRNTOK]
D88D  AF        XOR     A
D88E  324403    LD      (#0344),A ; {OUTFLG} [CTLOFG] ; Habilita impressão de caracteres.
D891  325D03    LD      (#035D),A ; @AUTFLG {AUTOFG} ; Desativa AUTO.
D894  CDBBE0    CALL    #E0BB ; CRLFPOSNZ {CRWDY} <NewLine> [STTLIN]
; Faz PR# 0, para não mandar a mensagem
; de erro à impressora.
D897  AF        XOR     A
D898  CD93D4    CALL    #D493 ; DOPR#
; Imprime "OK"
D89B  CDBBE0    CALL    #E0BB ; CRLFPOSNZ {CRWDY} <NewLine> [STTLIN]
D89E  21EAD7    LD      HL,#D7EA ; "OK" {OK} <szOK> [OKMSG]
D8A1  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]

; {LININP} <GetNonBlankLine> [GETCMD]
; Seta {CURLINO} para #ffff, para indicar modo imediato.
D8A4  21FFFF    LD      HL,#FFFF
D8A7  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
; Verifica status de AUTO.
D8AA  3A5D03    LD      A,(#035D) ; @AUTFLG {AUTOFG}
D8AD  B7        OR      A
D8AE  2014      JR      NZ,#D8C4

; AUTO está inativo.
D8B0  225E03    LD      (#035E),HL
; AUTOEXEC está ativo?
D8B3  3A6103    LD      A,(#0361) ; AUTOEXEC
D8B6  B7        OR      A
; Não: Continua com modo imediato.
D8B7  2843      JR      Z,#D8FC         ; (67)
; Sim:
; Forja retorno para ...?
D8B9  014EDD    LD      BC,#DD4E
D8BC  C5        PUSH    BC
; Desativa AUTOEXEC.
D8BD  AF        XOR     A
D8BE  326103    LD      (#0361),A ; AUTOEXEC
; Vai para {NEW2}.
D8C1  C3ADD9    JP      #D9AD ; {NEW2} <ResetAll> [RUNFST]

; AUTO está ativo.
; Acrescenta 10 ao número de linha.
D8C4  110A00    LD      DE,#000A ; +10
D8C7  2A5B03    LD      HL,(#035B) ; @AUTLIN
D8CA  19        ADD     HL,DE
D8CB  225B03    LD      (#035B),HL ; @AUTLIN
; Guarda valor no buffer de linha.
D8CE  220002    LD      (#0200),HL ; @BUF {INPBUF} <LINE_BUFFER> [BUFFER]
; Ultrapassou o número de linha final? Desativa AUTO.
D8D1  EB        EX      DE,HL
D8D2  2A5E03    LD      HL,(#035E)
D8D5  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D8D8  381C      JR      C,#D8F6 ; {LIN2} ; (28)
; Imprime o número de linha.
D8DA  EB        EX      DE,HL
D8DB  CD8BEE    CALL    #EE8B ; PRINTHL {NUMBO} <PrintInt> [PRNTHL]
; Obtém linha digitada pelo usuário sem
; perder o número de linha já armazenado.
D8DE  210202    LD      HL,#0202
D8E1  0603      LD      B,#03
D8E3  CDD2DA    CALL    #DAD2
; Se a entrada foi cancelada com Ctrl+C
; (o AUTO foi desativado no processo)
; reiniciar entrada normal.
D8E6  38BC      JR      C,#D8A4 ; {LININP} <GetNonBlankLine> [GETCMD]
;
D8E8  2A5B03    LD      HL,(#035B) ; @AUTLIN
D8EB  EB        EX      DE,HL
D8EC  210102    LD      HL,#0201
D8EF  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D8F2  37        SCF
D8F3  F5        PUSH    AF
D8F4  1817      JR      #D90D           ; (23)

; {LIN2}
; Desativa AUTO.
D8F6  AF        XOR     A
D8F7  325D03    LD      (#035D),A ; @AUTFLG {AUTOFG}
D8FA  18A8      JR      #D8A4 ; {LININP} <GetNonBlankLine> [GETCMD]

; {LIN4}
D8FC  CDC9DA    CALL    #DAC9 ; GETL {INPLOC} <InputLine> [RINPUT]
D8FF  38A3      JR      C,#D8A4 ; {LININP} <GetNonBlankLine> [GETCMD] ; Obtém linha de novo se houve <CTRL>+<C>.
D901  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D904  3C        INC     A ; Testa se primeiro caracter é NUL...
D905  3D        DEC     A ; ...sem afetar o carry.
D906  CAA4D8    JP      Z,#D8A4 ; {LININP} <GetNonBlankLine> [GETCMD] ; Nada digitado, obtém linha de novo.
D909  F5        PUSH    AF ; Preserva o carry (indica se primeiro caracter é dígito).
D90A  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH] ; Se a linha começar com número, armazenar valor em DE.
; {LIN5}
D90D  D5        PUSH    DE ; Salva número da linha.
D90E  CDEED9    CALL    #D9EE ; {SCANN} <Tokenize> [CRUNCH] ; Tokeniza o resto da linha.
D911  47        LD      B,A ; Comprimento da linha tokenizada.
D912  D1        POP     DE ; Restaura número da linha.
D913  F1        POP     AF ; Restaura carry (indica se primeiro caracter é dígito).
D914  D27DDD    JP      NC,#DD7D ; {RUNMD2} <Exec> [EXCUTE] ; Sem número de linha - executa no modo direto.
; <StoreProgramLine>
D917  D5        PUSH    DE ; Salva número da linha.
D918  C5        PUSH    BC ; Salva comprimento da linha tokenizada.
D919  AF        XOR     A
D91A  32AD03    LD      (#03AD),A ; {IPHFLG} [LSTBIN] ; Zera registro de último byte inserido.
D91D  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
D920  B7        OR      A ; Ativa flags (zero se linha vazia).
D921  F5        PUSH    AF ; e os salva.
D922  CD82D9    CALL    #D982 ; {ZPOIT} <FindProgramLine> [SRCHLN] ; Procura pelo número de linha em DE.
D925  3806      JR      C,#D92D ; {LIN6} [LINFND] ; Desvia se encontrou.
D927  F1        POP     AF ; Restaura flags.
D928  F5        PUSH    AF ; e salva de novo.
D929  CA99DF    JP      Z,#DF99 ; LIERRO {ULER} [ULERR]
D92C  B7        OR      A ; Limpa carry.
; {LIN6} [LINFND]
D92D  C5        PUSH    BC ; Salva endereço
D92E  3012      JR      NC,#D942 ; {LIN8} <InsertProgramLine> [INEWLN] ; Linha não encontrada - inserir nova.
; {LIN14} <RemoveProgramLine>
D930  EB        EX      DE,HL ; Próximo endereço de linha em DE.
D931  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND] ; Fim do programa.
; Desloca o resto do programa para baixo.
; {LIN7} <RemoveProgramLine+4> [SFTPRG]
D934  1A        LD      A,(DE)
D935  02        LD      (BC),A
D936  03        INC     BC
D937  13        INC     DE
D938  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D93B  20F7      JR      NZ,#D934 ; {LIN7} <RemoveProgramLine+4> [SFTPRG]
D93D  60        LD      H,B ; Atualiza o endereço do fim do programa.
D93E  69        LD      L,C
D93F  22B703    LD      (#03B7),HL ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
; {LIN8} <InsertProgramLine> [INEWLIN]
D942  D1        POP     DE ; Restaura endereço da linha.
D943  F1        POP     AF ; Restaura flag de linha vazia.
D944  2821      JR      Z,#D967 ; {LIN10} <UpdateLinkedList> [SETPTR] ; Se a linha estiver vazia não precisamos inseri-la.
D946  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
D949  E3        EX      (SP),HL ; HL = comprimento da linha.
D94A  C1        POP     BC ; =<VAR_BASE>
D94B  09        ADD     HL,BC ; = <VAR_BASE> + comprimento da linha.
D94C  E5        PUSH    HL
D94D  CD16D8    CALL    #D816 ; {LININ} <CopyMemoryUp> [MOVUP] ; Move o resto do programa para abrir espaço para a nova linha.
D950  E1        POP     HL
D951  22B703    LD      (#03B7),HL ; @VARTAB {SVARPT} <VAR_BASE> [PROGND] ; Atualiza <VAR_BASE>.
D954  EB        EX      DE,HL ; HL=endereço da linha, DE=<VAR_BASE>.
D955  74        LD      (HL),H ; <???> [Save MSB.]
D956  D1        POP     DE ; Número da linha.
D957  23        INC     HL ; Armazena número de linha no registro da linha.
D958  23        INC     HL
D959  73        LD      (HL),E
D95A  23        INC     HL
D95B  72        LD      (HL),D
D95C  23        INC     HL
; Copia o conteúdo da linha para o programa.
; <CopyFromBuffer>
D95D  110002    LD      DE,#0200 ; {INPBUF+1} <LINE_BUFFER> [BUFFER]
; {LIN9} [MOVBUF]
D960  1A        LD      A,(DE)
D961  77        LD      (HL),A
D962  23        INC     HL
D963  13        INC     DE
D964  B7        OR      A
D965  20F9      JR      NZ,#D960 ; {LIN9} <CopyFromBuffer+3> [MOVBUF]

; Agora a linha de programa foi inserida/removida,
; todos os ponteiros de cada linha para a próxima
; precisam ser ajustados.
; {LIN10} <UpdateLinkedList> [SETPTR]

D967  CDADD9    CALL    #D9AD ; {NEW2} <ResetAll> [RUNFST] ; Apaga variáveis.
D96A  23        INC     HL
D96B  EB        EX      DE,HL ; Endereço em DE.
; {LIN11} [PTRLP]
D96C  62        LD      H,D ; Endereço em HL.
D96D  6B        LD      L,E
D96E  7E        LD      A,(HL) ; Se o ponteiro para a próxima linha for $0000, o trabalho acabou e podemos...
D96F  23        INC     HL
D970  B6        OR      (HL)
D971  CAA4D8    JP      Z,#D8A4 ; {LININP} <GetNonBlankLine> [GETCMD] ; ...voltar para deixar o usuário digitar a próxima linha.
D974  23        INC     HL ; Avança ao número da linha.
D975  23        INC     HL ; Salta númer de linha.
D976  23        INC     HL
D977  AF        XOR     A ; Procurando por um byte $00 (fim da linha).
; {LIN12} [FNDEND]
D978  BE        CP      (HL) ; Encontrou o fim da linha?
D979  23        INC     HL
D97A  20FC      JR      NZ,#D978 ; {LIN12} [FNDEND]
D97C  EB        EX      DE,HL ; Armazena endereço da próxima linha.
D97D  73        LD      (HL),E
D97E  23        INC     HL
D97F  72        LD      (HL),D
D980  18EA      JR      #D96C ; {LIN11} [PTRLP]

; Procura pelo número de linha em DE.
; Carry indica que encontrou a linha.
; {ZPOIT} <FindProgramLine> [SRCHLN]
D982  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
; {ZPOIT1} [SRCHLP]
D985  44        LD      B,H ; Salva início da linha atual em BC.
D986  4D        LD      C,L
D987  7E        LD      A,(HL) ; Pega endereço da próxima linha.
D988  23        INC     HL
D989  B6        OR      (HL) ; Encontrou fim do programa?
D98A  2B        DEC     HL
D98B  C8        RET     Z ; Sim - linha não encontrada. Retorna sem carry.
D98C  23        INC     HL ; HL = Número da linha.
D98D  23        INC     HL
D98E  7E        LD      A,(HL)
D98F  23        INC     HL
D990  66        LD      H,(HL)
D991  6F        LD      L,A
D992  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
D995  60        LD      H,B ; HL = início da linha atual.
D996  69        LD      L,C
D997  7E        LD      A,(HL) ; HL = endereço da próxima linha.
D998  23        INC     HL
D999  66        LD      H,(HL)
D99A  6F        LD      L,A
D99B  3F        CCF     ; Se encontrou a linha retorna carry.
D99C  C8        RET     Z
D99D  3F        CCF     ; Se já passou retorna sem carry.
D99E  D0        RET     NC
D99F  18E4      JR      #D985 ; {ZPOIT1} [SRCHLP]

; BNEW:
; {NEW} <New> [NEW]
; Comando NEW não admite argumentos.
D9A1  C0        RET     NZ
; NEW {NEW1} [CLRPTR]
; Coloca #00,#00 (fim de programa) no início
; da área do programa BASIC.
D9A2  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
D9A5  AF        XOR     A
D9A6  77        LD      (HL),A
D9A7  23        INC     HL
D9A8  77        LD      (HL),A
D9A9  23        INC     HL
; Apaga variáveis.
D9AA  22B703    LD      (#03B7),HL ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
; {NEW2} <ResetAll> [RUNFST]
; Aponta para o início do programa.
D9AD  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
D9B0  2B        DEC     HL
; Faz como um CLEAR sem parâmetros.
; {CLEAR2} {NEW3} [INTVAR]
D9B1  22AF03    LD      (#03AF),HL ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
D9B4  2A9203    LD      HL,(#0392) ; {MEMSIZ} [LSTRAM]
D9B7  22A603    LD      (#03A6),HL ; {SWAPTR} [STRBOT]
D9BA  AF        XOR     A
D9BB  CDAFDD    CALL    #DDAF ; {RESTO} <Restore> [RESTOR]
; Apaga matrizes.
D9BE  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
D9C1  22B903    LD      (#03B9),HL ; @ARYTAB {DVARPT} <VAR_ARRAY_BASE> [VAREND]
D9C4  22BB03    LD      (#03BB),HL ; {FSLPTR} <VAR_TOP> [ARREND]
; Inicializa pilhas...?
; {INITR} <ResetStack> [CLREG]
D9C7  C1        POP     BC ; Salva endereço de retorno em BC.
; Inicializa SP.
D9C8  2A4503    LD      HL,(#0345) ; {STDPTR} <STACK_TOP> [STRSPC]
D9CB  F9        LD      SP,HL
; Inicializa pilha de registros de strings
; temporários.
D9CC  219603    LD      HL,#0396 ; {LSPTBG} [TMSTPL]
D9CF  229403    LD      (#0394),HL ; {SPTPTR} [TMSTPT]
; Inicializa CONT, FOR e pilha do BASIC.
D9D2  AF        XOR     A ; A = $00
D9D3  6F        LD      L,A ; HL = $0000
D9D4  67        LD      H,A
D9D5  22B503    LD      (#03B5),HL ; {LBYTER} [CONTAD] ; Sem CONTinue.
D9D8  32AC03    LD      (#03AC),A ; @SUBFLG {FORFLG} [FORFLG] ; Limpa flag de FOR.
D9DB  E5        PUSH    HL ; Coloca $0000 na base da pilha.
D9DC  C5        PUSH    BC ; Recoloca endereço de retorno na pilha.
; [DOAGN]
D9DD  2AAF03    LD      HL,(#03AF) ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
D9E0  C9        RET

; {OUT?} <InputLineWith?> [PROMPT]
D9E1  3E3F      LD      A,'?'
D9E3  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
D9E6  3E20      LD      A,' '
D9E8  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
D9EB  C3C9DA    JP      #DAC9 ; GETL {INPLOC} <InputLine> [RINPUT]

; {SCANN} <Tokenize> [CRUNCH]
D9EE  AF        XOR     A
D9EF  329103    LD      (#0391),A ; @DORES {DSTMNT} [DATFLG]
; <Tokenize>
D9F2  0E05      LD      C,#05
D9F4  110002    LD      DE,#0200 ; @BUF {INPBUF} <LINE_BUFFER> [BUFFER]
; Obtém um caracter do buffer de entrada.
D9F7  7E        LD      A,(HL)
; Se espaço, não tratar.
D9F8  FE20      CP      ' '
D9FA  CA67DA    JP      Z,#DA67 ; {SCANN9} <WriteChar>
; Se aspa, tratar string.
D9FD  47        LD      B,A
D9FE  FE22      CP      '"'
DA00  CA8CDA    JP      Z,#DA8C ; {SCANND} <FreeCopy>
; Se nulo, terminar.
DA03  B7        OR      A
DA04  CA92DA    JP      Z,#DA92 ; {SCANNE} <Exit>
;
DA07  3A9103    LD      A,(#0391) ; @DORES {DSTMNT} [DATFLG]
DA0A  B7        OR      A
DA0B  7E        LD      A,(HL)
DA0C  C267DA    JP      NZ,#DA67 ; {SCANN9}
; Não tratar dígito, dois-pontos, ponto-e-vírgula.
DA0F  FE30      CP      '0'
DA11  3805      JR      C,#DA18 ; {DCLI0} ; (5)
DA13  FE3C      CP      '<'
DA15  DA67DA    JP      C,#DA67 ; {SCANN9} <WriteChar>

; Procura string na lista de palavras-chave.
; {DCLI0}
DA18  D5        PUSH    DE
DA19  1190D5    LD      DE,#D590 ; {MNEMTB-1}
DA1C  C5        PUSH    BC
DA1D  0163DA    LD      BC,#DA63 ; {SCANN8}
DA20  C5        PUSH    BC
DA21  067F      LD      B,#7F ; Token "END" (=#80) - 1.
; Converte minúsculas em maiúsculas.
DA23  7E        LD      A,(HL)
DA24  FE61      CP      'a'
DA26  3807      JR      C,#DA2F ; {SCANN2} ; (7)
DA28  FE7B      CP      'z'+#01
DA2A  3003      JR      NC,#DA2F ; {SCANN2} ; (3)
DA2C  E65F      AND     #5F
DA2E  77        LD      (HL),A
; {SCANN2}
DA2F  4E        LD      C,(HL)
DA30  EB        EX      DE,HL
; Avança até o início da próxima palavra reservada.
; (A primeira letra de cada palavra tem o bit 7 ligado.)
; {SCANN3}
DA31  23        INC     HL
DA32  B6        OR      (HL)
DA33  F231DA    JP      P,#DA31 ; {SCANN3}
DA36  04        INC     B
; Retorna se chegou ao fim da lista de palavras reservadas (onde há um byte #80).
DA37  7E        LD      A,(HL)
DA38  E67F      AND     #7F
DA3A  C8        RET     Z
; {SCANNF}
DA3B  B9        CP      C
DA3C  20F3      JR      NZ,#DA31 ; {SCANN3} ; (-13)
DA3E  EB        EX      DE,HL
DA3F  E5        PUSH    HL
; {SCANN4}
DA40  13        INC     DE
DA41  1A        LD      A,(DE)
DA42  B7        OR      A
DA43  FA5FDA    JP      M,#DA5F ; {SCANN7}
DA46  4F        LD      C,A
DA47  78        LD      A,B
DA48  FE89      CP      #89 ; token "GOTO"
DA4A  2004      JR      NZ,#DA50 ; {SCANN5} ; (4)
DA4C  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DA4F  2B        DEC     HL
; {SCANN5}
DA50  23        INC     HL
DA51  7E        LD      A,(HL)
DA52  FE61      CP      'a'
DA54  3802      JR      C,#DA58 ; {SCANN6} ; (2)
DA56  E65F      AND     #5F
; {SCANN6}
DA58  B9        CP      C
DA59  28E5      JR      Z,#DA40 ; {SCANN4} ; (-27)
DA5B  E1        POP     HL
DA5C  C32FDA    JP      #DA2F ; {SCANN2}

; {SCANN7}
DA5F  48        LD      C,B
DA60  F1        POP     AF
DA61  EB        EX      DE,HL
DA62  C9        RET

; {SCANN8}
DA63  EB        EX      DE,HL
DA64  79        LD      A,C
DA65  C1        POP     BC
DA66  D1        POP     DE

; {SCANN9} <WriteChar>
DA67  23        INC     HL
DA68  12        LD      (DE),A
DA69  13        INC     DE
DA6A  0C        INC     C
DA6B  D63A      SUB     #3A
DA6D  2804      JR      Z,#DA73         ; (4)
DA6F  FE49      CP      #49
DA71  2003      JR      NZ,#DA76        ; (3)
DA73  329103    LD      (#0391),A ; @DORES {DSTMNT} [DATFLG]
DA76  FE71      CP      #71
DA78  2809      JR      Z,#DA83         ; (9)
DA7A  FE70      CP      #70
DA7C  2805      JR      Z,#DA83         ; (5)
DA7E  FE55      CP      #55
DA80  C2F7D9    JP      NZ,#D9F7
DA83  0600      LD      B,#00
DA85  7E        LD      A,(HL)
DA86  B7        OR      A
DA87  2809      JR      Z,#DA92         ; (9)
DA89  B8        CP      B
DA8A  28DB      JR      Z,#DA67         ; (-37)
DA8C  23        INC     HL
DA8D  12        LD      (DE),A
DA8E  0C        INC     C
DA8F  13        INC     DE
DA90  18F3      JR      #DA85           ; (-13)
DA92  21FF01    LD      HL,#01FF
DA95  12        LD      (DE),A
DA96  13        INC     DE
DA97  12        LD      (DE),A
DA98  13        INC     DE
DA99  12        LD      (DE),A
DA9A  C9        RET

; Trata Ctrl+C: cancela entrada.
; Adicionalmente, desativa AUTO.
DA9B  CDC7E0    CALL    #E0C7 ; PRINTCRLF [PRNTCR]
DA9E  AF        XOR     A
DA9F  325D03    LD      (#035D),A ; @AUTFLG {AUTOFG}
DAA2  C9        RET

;
DAA3  3E1A      LD      A,#1A ; limpa a tela
DAA5  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DAA8  3E1E      LD      A,#1E ; cursor no início da tela
DAAA  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DAAD  C3D2DA    JP      #DAD2

; Trata Ctrl+H ou RUBOUT.
DAB0  3E08      LD      A,#08
; Se B < 2, apenas emite bip e
; reinicia laço.
DAB2  4F        LD      C,A
DAB3  78        LD      A,B
DAB4  FE02      CP      #02
DAB6  DCFCC0    CALL    C,#C0FC ; BEEP
DAB9  3817      JR      C,#DAD2         ; (23)
DABB  79        LD      A,C
; Decrementa contador e ponteiro.
DABC  05        DEC     B
DABD  2B        DEC     HL
DABE  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DAC1  200F      JR      NZ,#DAD2        ; (15)
; Trata @.
DAC3  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
; Trata Ctrl+U.
DAC6  CDC7E0    CALL    #E0C7 ; PRINTCRLF [PRNTCR]
;
; GETL: Entra uma linha do teclado.
; {INPLOC} <InputLine> [RINPUT]
DAC9  210002    LD      HL,#0200
DACC  0601      LD      B,#01
DACE  78        LD      A,B
DACF  325103    LD      (#0351),A ; [STACK]
;
DAD2  3A5103    LD      A,(#0351) ; [STACK]
; Laço da rotina GETL.
DAD5  B8        CP      B
DAD6  3004      JR      NC,#DADC        ; (4)
DAD8  78        LD      A,B
DAD9  325103    LD      (#0351),A ; [STACK]
DADC  CD06C0    CALL    #C006 ; KEY
DADF  FE1E      CP      #1E ; Ctrl+^
DAE1  CAA3DA    JP      Z,#DAA3 ; limpa a tela
DAE4  FE03      CP      #03 ; Ctrl+C
DAE6  CC9BDA    CALL    Z,#DA9B ; cancela
DAE9  37        SCF
DAEA  C8        RET     Z
DAEB  FE0D      CP      #0D ; RETURN
DAED  CAC2E0    JP      Z,#E0C2
DAF0  FE15      CP      #15 ; Ctrl+U
DAF2  CAC6DA    JP      Z,#DAC6 ; reinicia
DAF5  FE40      CP      '@'
DAF7  CAC3DA    JP      Z,#DAC3 ; reinicia
DAFA  FE7F      CP      #7F ; RUBOUT
DAFC  CAB0DA    JP      Z,#DAB0
DAFF  FE08      CP      #08 ; Ctrl+H
DB01  CAB0DA    JP      Z,#DAB0
DB04  FE0C      CP      #0C ; Ctrl+L
DB06  CA3CDB    JP      Z,#DB3C ; avança cursor
DB09  FE0A      CP      #0A ; Ctrl+J
DB0B  CA4CDB    JP      Z,#DB4C ; baixa cursor
DB0E  FE0B      CP      #0B ; Ctrl+K
DB10  CA7ADB    JP      Z,#DB7A ; sobe cursor
DB13  4F        LD      C,A
DB14  78        LD      A,B
DB15  FEFF      CP      #FF
DB17  79        LD      A,C
DB18  D2D2DA    JP      NC,#DAD2
DB1B  CDC4DB    CALL    #DBC4
DB1E  B7        OR      A
DB1F  2003      JR      NZ,#DB24        ; (3)
DB21  3E38      LD      A,#38; "8"
DB23  4F        LD      C,A
DB24  71        LD      (HL),C
DB25  32AD03    LD      (#03AD),A ; {IPHFLG} [LSTBIN]
;
DB28  23        INC     HL
DB29  04        INC     B
;
DB2A  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DB2D  C3D2DA    JP      #DAD2
;
DB30  3E01      LD      A,#01
;
DB32  325203    LD      (#0352),A
DB35  D1        POP     DE
DB36  C3D2DA    JP      #DAD2
;
DB39  AF        XOR     A
DB3A  18F6      JR      #DB32           ; (-10)
;
; Ctrl+L: Avança cursor no buffer.
; Funciona no buffer, mas na tela o
; cursor fica parado por causa do
; bug na implementação do CHR$(12).
DB3C  4F        LD      C,A
DB3D  3A5103    LD      A,(#0351) ; [STACK]
DB40  3D        DEC     A
DB41  B8        CP      B
DB42  79        LD      A,C
DB43  DCFCC0    CALL    C,#C0FC ; BEEP
DB46  DAD2DA    JP      C,#DAD2
DB49  C328DB    JP      #DB28
;
; Ctrl+J: Baixa cursor na tela,
; se houver algo já digitado na linha
; de baixo.
DB4C  F5        PUSH    AF
; Obtém a largura da tela.
DB4D  3A1301    LD      A,(#0113) ; DLNG
; Se não houver linha digitada
; abaixo, emite bip.
DB50  80        ADD     A,B
DB51  4F        LD      C,A
DB52  3A5103    LD      A,(#0351) ; [STACK]
DB55  B9        CP      C
DB56  DCFCC0    CALL    C,#C0FC ; BEEP
DB59  381B      JR      C,#DB76         ; (27)
; Atualiza contador.
DB5B  41        LD      B,C
; Baixa cursor na tela.
DB5C  F1        POP     AF
DB5D  4F        LD      C,A
DB5E  CD97C8    CALL    #C897 ; CO
; Atualiza POS().
DB61  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
DB64  4F        LD      C,A
DB65  3A1301    LD      A,(#0113) ; DLNG
DB68  81        ADD     A,C
DB69  328E03    LD      (#038E),A ; {CURPOS} [CURPOS]
; Atualiza ponteiro.
DB6C  ED5B1301  LD      DE,(#0113) ; DLNG
DB70  7B        LD      A,E
DB71  5F        LD      E,A
DB72  19        ADD     HL,DE
DB73  C3D2DA    JP      #DAD2
;
DB76  F1        POP     AF
DB77  C3D2DA    JP      #DAD2
;
; Ctrl+K: Sobe cursor na tela,
; se houver algo já digitado na linha
; de cima.
DB7A  F5        PUSH    AF
; Obtém a largura da tela.
DB7B  3A1301    LD      A,(#0113) ; DLNG
; Se não houver linha digitada
; acima, emite bip.
DB7E  4F        LD      C,A
DB7F  78        LD      A,B
DB80  91        SUB     C
DB81  DCFCC0    CALL    C,#C0FC ; BEEP
DB84  38F0      JR      C,#DB76         ; (-16)
DB86  FE01      CP      #01
DB88  DCFCC0    CALL    C,#C0FC ; BEEP
DB8B  38E9      JR      C,#DB76         ; (-23)
; Atualiza contador.
DB8D  47        LD      B,A
; Sobe cursor na tela.
DB8E  F1        POP     AF
DB8F  4F        LD      C,A
DB90  CD97C8    CALL    #C897 ; CO
; Atualiza ponteiro.
DB93  ED5B1301  LD      DE,(#0113) ; DLNG
DB97  7B        LD      A,E
DB98  5F        LD      E,A
DB99  AF        XOR     A
DB9A  ED52      SBC     HL,DE
; Atualiza POS().
DB9C  3A1301    LD      A,(#0113) ; DLNG
DB9F  4F        LD      C,A
DBA0  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
DBA3  91        SUB     C
DBA4  328E03    LD      (#038E),A ; {CURPOS} [CURPOS]
DBA7  C3D2DA    JP      #DAD2
;
; Palavras-chave produzidas com SHIFT.
DBAA  87        DB      #87 ; Shift+A = READ
DBAB  8D        DB      #8D ; Shift+B = GOSUB
DBAC  A9        DB      #A9 ; Shift+C = CLEAR
DBAD  83        DB      #83 ; Shift+D = DATA
DBAE  D7        DB      #D7 ; Shift+E = PEEK
DBAF  81        DB      #81 ; Shift+F = FOR
DBB0  89        DB      #89 ; Shift+G = GOTO
DBB1  93        DB      #93 ; Shift+H = HOME
DBB2  85        DB      #85 ; Shift+I = INPUT
DBB3  BA        DB      #BA ; Shift+J = THEN
DBB4  96        DB      #96 ; Shift+K = POKE
DBB5  A8        DB      #A8 ; Shift+L = LIST
DBB6  86        DB      #86 ; Shift+M = DIM
DBB7  99        DB      #99 ; Shift+N = SOUND
DBB8  A7        DB      #A7 ; Shift+O = CONT
DBB9  97        DB      #97 ; Shift+P = PRINT
DBBA  90        DB      #90 ; Shift+Q = STOP
DBBB  8A        DB      #8A ; Shift+R = RUN
DBBC  BC        DB      #BC ; Shift+S = STEP
DBBD  AD        DB      #AD ; Shift+T = TLOAD
DBBE  AB        DB      #AB ; Shift+U = SAVE
DBBF  8C        DB      #8C ; Shift+V = RESTORE
DBC0  AA        DB      #AA ; Shift+W = LOAD
DBC1  82        DB      #82 ; Shift+X = NEXT
DBC2  9E        DB      #9E ; Shift+Y = PLOT
DBC3  8E        DB      #8E ; Shift+Z = RETURN
;
; Retorna se não estiver entre
; Shift+A e Shift+Z.
DBC4  FE61      CP      #61 ; Shift+A
DBC6  D8        RET     C
DBC7  FE7B      CP      #7B ; RUBOUT
DBC9  D0        RET     NC
; Obtém o token correspondente à
; palavra da combinação Shift+tecla.
DBCA  D661      SUB     #61 ; Shift+A
DBCC  D5        PUSH    DE
DBCD  E5        PUSH    HL
DBCE  21AADB    LD      HL,#DBAA
DBD1  5F        LD      E,A
DBD2  1600      LD      D,#00
DBD4  19        ADD     HL,DE
DBD5  7E        LD      A,(HL)
DBD6  E1        POP     HL
; Localiza a palavra reservada
; correspondente.
DBD7  D67F      SUB     #7F
DBD9  4F        LD      C,A
DBDA  1191D5    LD      DE,#D591
DBDD  1A        LD      A,(DE)
DBDE  13        INC     DE
DBDF  B7        OR      A
DBE0  F2DDDB    JP      P,#DBDD
DBE3  0D        DEC     C
DBE4  20F7      JR      NZ,#DBDD        ; (-9)
DBE6  E67F      AND     #7F
; Enquanto não enche o buffer...
DBE8  4F        LD      C,A
DBE9  78        LD      A,B
DBEA  FEFF      CP      #FF
DBEC  79        LD      A,C
DBED  D206DC    JP      NC,#DC06
DBF0  3014      JR      NC,#DC06        ; (20)
DBF2  71        LD      (HL),C
; Copia cada letra da palavra
; reservada para o buffer.
DBF3  32AD03    LD      (#03AD),A ; {IPHFLG} [LSTBIN]
DBF6  23        INC     HL
DBF7  04        INC     B
DBF8  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DBFB  1A        LD      A,(DE)
DBFC  13        INC     DE
DBFD  B7        OR      A
DBFE  F2E6DB    JP      P,#DBE6
; Fim normal.
DC01  D1        POP     DE
DC02  F1        POP     AF
DC03  C3D2DA    JP      #DAD2
; Fim por buffer cheio.
DC06  D1        POP     DE
DC07  F1        POP     AF
DC08  C32ADB    JP      #DB2A
;
; RHLDE: Simula "CP HL,DE".
; {CPREG} <CompareHLDE> [CPDEHL]
DC0B  7C        LD      A,H
DC0C  92        SUB     D
DC0D  C0        RET     NZ
DC0E  7D        LD      A,L
DC0F  93        SUB     E
DC10  C9        RET

; CHKSYN: Checa sintaxe.
; Verifica se o próximo caracter do
; programa BASIC corresponde ao byte
; seguinte à chamada a esta rotina.
; Caso negativo, produz "SN ERRO".
; @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
DC11  7E        LD      A,(HL)
DC12  E3        EX      (SP),HL
DC13  BE        CP      (HL)
DC14  23        INC     HL
DC15  E3        EX      (SP),HL
DC16  CAA0DD    JP      Z,#DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DC19  C348D8    JP      #D848 ; SNERRO @SNERR

; PRINTAPOS: Imprime o caracter em A,
; atualizando o valor de POS() e
; providenciando quebra de linha
; se atingir limite (255 caracteres).
; Imprime em modo INVERSE e na impressora,
; se necessário.
; {CHARO} <OutChar> [OUTC]
DC1C  F5        PUSH    AF
; Não imprime nada nada se (#0344) <> 0.
DC1D  3A4403    LD      A,(#0344) ; {OUTFLG} [CTLOFG]
DC20  B7        OR      A
DC21  C267E7    JP      NZ,#E767 ; POP AF + RET
DC24  F1        POP     AF
DC25  C5        PUSH    BC
DC26  F5        PUSH    AF
; É caracter de controle?
DC27  FE20      CP      ' '
; É caracter de controle: Não modifica POS().
DC29  381A      JR      C,#DC45         ; (26)
; É RUBOUT?
DC2B  FE7F      CP      #7F ; RUBOUT
DC2D  2005      JR      NZ,#DC34        ; (5)
; É RUBOUT: Decrementa POS().
DC2F  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
DC32  180D      JR      #DC41           ; (13)
; É caracter imprimível: Se já atingiu o limite,
; imprime CR+LF; senão, incrementa POS().
DC34  3A4203    LD      A,(#0342) ; {LINLEN} [LWIDTH]
DC37  47        LD      B,A
DC38  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
DC3B  B8        CP      B
DC3C  CCC7E0    CALL    Z,#E0C7 ; PRINTCRLF [PRNTCR]
DC3F  3C        INC     A
; A instrução abaixo oculta a instrução
; DC41  3D        DEC     A
; que só pode ser atingida pelo jump em #DC32
; (condição de RUBOUT).
DC40  0E3D      LD      C,#3D
DC42  328E03    LD      (#038E),A ; {CURPOS} [CURPOS]
;
DC45  F1        POP     AF
DC46  C1        POP     BC
DC47  F5        PUSH    AF
DC48  C5        PUSH    BC
DC49  CDA6F1    CALL    #F1A6
DC4C  C1        POP     BC
DC4D  F1        POP     AF
DC4E  C9        RET

; BLIST
DC4F  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
DC52  200B      JR      NZ,#DC5F        ; (11)
DC54  7B        LD      A,E
DC55  B2        OR      D
DC56  2820      JR      Z,#DC78         ; (32)
DC58  EB        EX      DE,HL
DC59  225E03    LD      (#035E),HL
DC5C  EB        EX      DE,HL
DC5D  1819      JR      #DC78           ; (25)
DC5F  D5        PUSH    DE
DC60  7E        LD      A,(HL)
DC61  FEBF      CP      #BF ; token '-'
DC63  1E02      LD      E,#02 ; erro "SN"
DC65  C256D8    JP      NZ,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
DC68  23        INC     HL
DC69  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
DC6C  7B        LD      A,E
DC6D  B2        OR      D
DC6E  2003      JR      NZ,#DC73        ; (3)
DC70  11FFFF    LD      DE,#FFFF
DC73  EB        EX      DE,HL
DC74  225E03    LD      (#035E),HL
DC77  D1        POP     DE
DC78  C1        POP     BC
DC79  CD82D9    CALL    #D982 ; {ZPOIT} <FindProgramLine> [SRCHLN] ; Procura pelo número de linha em DE.
DC7C  C5        PUSH    BC
DC7D  E1        POP     HL
DC7E  4E        LD      C,(HL)
DC7F  23        INC     HL
DC80  46        LD      B,(HL)
DC81  23        INC     HL
DC82  78        LD      A,B
DC83  B1        OR      C
DC84  CA8DD8    JP      Z,#D88D ; {EDIT} [PRNTOK]
DC87  CDC9DD    CALL    #DDC9
DC8A  C5        PUSH    BC
DC8B  CDC7E0    CALL    #E0C7 ; PRINTCRLF [PRNTCR]
DC8E  5E        LD      E,(HL)
DC8F  23        INC     HL
DC90  56        LD      D,(HL)
DC91  E5        PUSH    HL
DC92  2A5E03    LD      HL,(#035E)
DC95  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
DC98  E1        POP     HL
DC99  3004      JR      NC,#DC9F        ; (4)
DC9B  C1        POP     BC
DC9C  C38DD8    JP      #D88D ; {EDIT} [PRNTOK]
DC9F  23        INC     HL
DCA0  E5        PUSH    HL
DCA1  EB        EX      DE,HL
DCA2  CD8BEE    CALL    #EE8B ; PRINTHL {NUMBO} <PrintInt> [PRNTHL]
DCA5  3E20      LD      A,#20
DCA7  E1        POP     HL
DCA8  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DCAB  7E        LD      A,(HL)
DCAC  FE22      CP      '"'
DCAE  2011      JR      NZ,#DCC1        ; (17)
DCB0  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DCB3  23        INC     HL
DCB4  7E        LD      A,(HL)
DCB5  FE22      CP      '"'
DCB7  23        INC     HL
DCB8  28EE      JR      Z,#DCA8         ; (-18)
DCBA  2B        DEC     HL
DCBB  B7        OR      A
DCBC  CA7DDC    JP      Z,#DC7D
DCBF  18EF      JR      #DCB0           ; (-17)
DCC1  B7        OR      A
DCC2  23        INC     HL
DCC3  CA7DDC    JP      Z,#DC7D
DCC6  F2A8DC    JP      P,#DCA8
DCC9  F5        PUSH    AF
DCCA  3E20      LD      A,#20
DCCC  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DCCF  F1        POP     AF
DCD0  CDDADC    CALL    #DCDA
DCD3  3E20      LD      A,#20
DCD5  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DCD8  18D1      JR      #DCAB           ; (-47)
; Imprime palavra reservada.
DCDA  D67F      SUB     #7F
DCDC  4F        LD      C,A
DCDD  1191D5    LD      DE,#D591 ; lista de pal. res.
DCE0  1A        LD      A,(DE)
DCE1  13        INC     DE
DCE2  B7        OR      A
DCE3  F2E0DC    JP      P,#DCE0
DCE6  0D        DEC     C
DCE7  20F7      JR      NZ,#DCE0        ; (-9)
DCE9  E67F      AND     #7F
DCEB  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
DCEE  1A        LD      A,(DE)
DCEF  13        INC     DE
DCF0  B7        OR      A
DCF1  F2E9DC    JP      P,#DCE9
DCF4  C9        RET
;
; BFOR: {FOR} <For>
DCF5  3E64      LD      A,#64 ; 100
DCF7  32AC03    LD      (#03AC),A ; @SUBFLG {FORFLG} [FORFLG]
DCFA  CDD7DF    CALL    #DFD7 ; BLET {LET} <Let>
DCFD  E3        EX      (SP),HL
; {FOR1}
DCFE  CDF5D7    CALL    #D7F5 ; {FORSR} <GetFlowPtr>
DD01  D1        POP     DE
DD02  2002      JR      NZ,#DD06        ; (2)
DD04  09        ADD     HL,BC
DD05  F9        LD      SP,HL
; {FOR2}
DD06  EB        EX      DE,HL
DD07  0E08      LD      C,#08
DD09  CD27D8    CALL    #D827 ; @GETSTK {TMEMO} <CheckEnoughVarSpace> [CHKSTK]
DD0C  E5        PUSH    HL
DD0D  CDC2DF    CALL    #DFC2 ; BDATA {DATA} <Data> [DATA]
DD10  E3        EX      (SP),HL
DD11  E5        PUSH    HL
DD12  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
DD15  E3        EX      (SP),HL
DD16  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
DD19  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
DD1C  B7        DB      #B7 ; token "TO"
DD1D  CDBCE2    CALL    #E2BC ; {SNALY2} [GETNUM]
DD20  E5        PUSH    HL
DD21  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
DD24  E1        POP     HL
DD25  C5        PUSH    BC
DD26  D5        PUSH    DE
DD27  010081    LD      BC,#8100
DD2A  51        LD      D,C
DD2B  5A        LD      E,D
DD2C  7E        LD      A,(HL)
DD2D  FEBC      CP      #BC ; token "STEP"
DD2F  3E01      LD      A,#01
DD31  200E      JR      NZ,#DD41        ; (14)
DD33  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DD36  CDBCE2    CALL    #E2BC ; {SNALY2} [GETNUM]
DD39  E5        PUSH    HL
DD3A  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
DD3D  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
DD40  E1        POP     HL
DD41  C5        PUSH    BC
DD42  D5        PUSH    DE
DD43  F5        PUSH    AF
DD44  33        INC     SP
DD45  E5        PUSH    HL
DD46  2AAF03    LD      HL,(#03AF) ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
DD49  E3        EX      (SP),HL
DD4A  0681      LD      B,#81
DD4C  C5        PUSH    BC
DD4D  33        INC     SP
;
; Produz pausa se estiver em modo SLOW.
DD4E  3A6003    LD      A,(#0360)
DD51  B7        OR      A
DD52  2806      JR      Z,#DD5A         ; (6)
DD54  018000    LD      BC,#0080 ; 128ms
DD57  CD0EC3    CALL    #C30E ; DELAYB
; Se alguma tecla estiver sendo pressionada,
; tratar.
DD5A  CD09C0    CALL    #C009 ; KEY?
DD5D  B7        OR      A
DD5E  C4DCDD    CALL    NZ,#DDDC
; Checa fim de comando: deve haver ":" ou
; fim de linha (#00). Caso contrário,
; produz "SN ERRO".
DD61  22AF03    LD      (#03AF),HL ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
DD64  7E        LD      A,(HL)
DD65  FE3A      CP      ':'
DD67  2814      JR      Z,#DD7D ; {RUNMD2} <Exec> [EXCUTE]
DD69  B7        OR      A
DD6A  C248D8    JP      NZ,#D848 ; SNERRO @SNERR
; Se a linha acabou, avançar o ponteiro
; para o início da próxima.
DD6D  23        INC     HL
DD6E  7E        LD      A,(HL)
DD6F  23        INC     HL
DD70  B6        OR      (HL)
; Se não houver próxima linha, termina execução.
DD71  CA29DE    JP      Z,#DE29 ; {END2} [ENDPRG]
; Se houver...
DD74  23        INC     HL
DD75  5E        LD      E,(HL)
DD76  23        INC     HL
DD77  56        LD      D,(HL)
; Atualiza número da linha em execução.
DD78  EB        EX      DE,HL
DD79  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
DD7C  EB        EX      DE,HL
; {RUNMD2} <Exec> [EXCUTE]
; Salta espaços.
DD7D  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; Forja retorno para o tratamento do
; próximo comando.
DD80  114EDD    LD      DE,#DD4E
DD83  D5        PUSH    DE
; Retorna se fim de linha.
DD84  C8        RET     Z
;
DD85  CD56D3    CALL    #D356
; Se não for palavra reservada,
; desvia para tratamento de LET...
DD88  D680      SUB     #80
DD8A  DAD7DF    JP      C,#DFD7
; Ou produz "SN ERRO" se não for
; um comando.
DD8D  FE36      CP      #36
DD8F  D248D8    JP      NC,#D848 ; SNERRO @SNERR
; Obtém o endereço da rotina que
; interpreta o comando.
DD92  07        RLCA
DD93  4F        LD      C,A
DD94  0600      LD      B,#00
DD96  EB        EX      DE,HL
DD97  21EBD6    LD      HL,#D6EB ; lista de endereços dos comandos
DD9A  09        ADD     HL,BC
DD9B  4E        LD      C,(HL)
DD9C  23        INC     HL
DD9D  46        LD      B,(HL)
; Forja retorno para esse endereço.
DD9E  C5        PUSH    BC
DD9F  EB        EX      DE,HL
;
; NEXTNSPC: Incrementa HL, buscando o próximo
; caracter diferente de espaço.
; Se o caracter encontrado foi "0"~"9"
; (dígito) retorna flag de carry ligado.
; Se o caracter encontrado foi ":" ou #00,
; (fim de comando) retorna flag zero ligado.
; @CHRGTR {TCHAR} <NextChar> [GETCHR]
DDA0  23        INC     HL
DDA1  7E        LD      A,(HL)
DDA2  FE3A      CP      ':'
DDA4  D0        RET     NC
DDA5  FE20      CP      ' '
DDA7  28F7      JR      Z,#DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DDA9  FE30      CP      '0'
DDAB  3F        CCF
DDAC  3C        INC     A
DDAD  3D        DEC     A
DDAE  C9        RET

; BRESTORE {RESTO}
DDAF  EB        EX      DE,HL
DDB0  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
DDB3  280E      JR      Z,#DDC3         ; (14)
DDB5  EB        EX      DE,HL
DDB6  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
DDB9  E5        PUSH    HL
DDBA  CD82D9    CALL    #D982 ; {ZPOIT} <FindProgramLine> [SRCHLN] ; Procura pelo número de linha em DE.
DDBD  60        LD      H,B
DDBE  69        LD      L,C
DDBF  D1        POP     DE
DDC0  D299DF    JP      NC,#DF99 ; LIERRO {ULER} [ULERR]
DDC3  2B        DEC     HL
; [UPDATA]
DDC4  22BD03    LD      (#03BD),HL ; {RDPTR} <DATA_PROG_PTR> [NXTDAT]
DDC7  EB        EX      DE,HL
DDC8  C9        RET
;
; Produz pausa se estiver em modo SLOW.
DDC9  3A6003    LD      A,(#0360)
DDCC  B7        OR      A
DDCD  2808      JR      Z,#DDD7         ; (8)
DDCF  C5        PUSH    BC
DDD0  018000    LD      BC,#0080 ; 128ms
DDD3  CD0EC3    CALL    #C30E ; DELAYB
DDD6  C1        POP     BC

; {TESC} [TSTBRK]
; Retorna se nenhuma tecla estiver sendo
; pressionada.
DDD7  CD09C0    CALL    #C009 ; KEY?
DDDA  B7        OR      A
DDDB  C8        RET     Z
; [STALL]
DDDC  CD06C0    CALL    #C006 ; KEY
DDDF  FE13      CP      #13 ; Ctrl+S
DDE1  C20BDE    JP      NZ,#DE0B
DDE4  E5        PUSH    HL
DDE5  D5        PUSH    DE
DDE6  C5        PUSH    BC
DDE7  213901    LD      HL,#0139 ; AVALUE
DDEA  110900    LD      DE,#0009 ; Incremento para acessar BVALUE e CVALUE.
DDED  3E7C      LD      A,#7C ; (AVALUE) = (AVALUE) AND %01111100
DDEF  A6        AND     (HL)
DDF0  77        LD      (HL),A
DDF1  19        ADD     HL,DE ; BVALUE
DDF2  3E7C      LD      A,#7C ; (BVALUE) = (BVALUE) AND %01111100
DDF4  A6        AND     (HL)
DDF5  77        LD      (HL),A
DDF6  19        ADD     HL,DE ; CVALUE
DDF7  3E7C      LD      A,#7C ; (CVALUE) = (CVALUE) AND %01111100
DDF9  A6        AND     (HL)
DDFA  77        LD      (HL),A
DDFB  CDC7CE    CALL    #CEC7 ; Zera período da envoltória no PSG.
DDFE  CD06C0    CALL    #C006 ; KEY ; Pausa até alguma tecla ser pressionada.
DE01  CD5FDE    CALL    #DE5F ; Incrementa AVALUE, BVALUE e CVALUE e silencia PSG.
DE04  3C        INC     A; (#0001) = 1.
DE05  320100    LD      (#0001),A
DE08  C1        POP     BC
DE09  D1        POP     DE
DE0A  E1        POP     HL
;
DE0B  FE03      CP      #03 ; Ctrl+C
;
; BSTOP {STOP} [STOP]
DE0D  2811      JR      Z,#DE20 ; Desvia se não houver nada depois. Se houver algo, retorna abaixo com erro de sintaxe.

;
DE0F  FE20      CP      ' '
DE11  C0        RET     NZ
; Produz pausa se NÃO estiver em modo SLOW.
DE12  3A6003    LD      A,(#0360)
DE15  B7        OR      A
DE16  C0        RET     NZ
DE17  C5        PUSH    BC
DE18  018000    LD      BC,#0080 ; 128ms
DE1B  CD0EC3    CALL    #C30E ; DELAYB
DE1E  C1        POP     BC
DE1F  C9        RET
;
; A instrução abaixo:
DE20  F6C0      OR      #C0
; oculta a instrução:
; ; BEND {END} [PEND]
; DE21  C0        RET     NZ ; Erro de sintaxe se houver algo depois.
; que é o ponto de entrada da rotina de
; interpretação do comando END, e serve
; para uma diferenciação:
; Para END, o flag Z estará ligado, e
; para STOP (ou programa parado por Ctrl+C),
; o flag Z estará desligado.
; {END0}
DE22  22AF03    LD      (#03AF),HL ; {CUSTMT} ; <PROG_PTR_TEMP> [BRKLIN]
; A instrução seguinte:
DE25  21F6FF    LD      HL,#FFF6
; oculta a instrução:
; {END1} [INPBRK]
; DE26  F6FF      OR      #FF ; [Flag "Break" wanted]
DE28  C1        POP     BC ; Não é mais necessário retornar.
; {END2} [ENDPRG]
DE29  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT] ; Número de linha atual.
DE2C  F5        PUSH    AF ; Preserva distinção STOP/END.
DE2D  7D        LD      A,L ; STOP/^C em modo direto?
DE2E  A4        AND     H
DE2F  3C        INC     A ; Linha é -1 se STOP/^C em modo direto.
DE30  2809      JR      Z,#DE3B ; {END3} [NOLIN] ; Modo direto: desvia.
DE32  22B303    LD      (#03B3),HL ; {LLNOEX} [ERRLIN] ; Preserva número de linha.
DE35  2AAF03    LD      HL,(#03AF) ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN] ; Obtém ponto da interrupção.
DE38  22B503    LD      (#03B5),HL ; {LBYTER} [CONTAD] ; Preserva ponto para CONTinuar.
; {END3} [NOLIN]
DE3B  AF        XOR     A
DE3C  324403    LD      (#0344),A ; {OUTFLG} [CTLOFG] ; Habilita impressão.
; Trata som em END/STOP/^C.
DE3F  3D        DEC     A
DE40  327101    LD      (#0171),A ; TONEA-1 ; Nota no canal 1 = $ff.
DE43  327701    LD      (#0177),A ; TONEB-1 ; Nota no canal 2 = $ff.
DE46  327D01    LD      (#017D),A ; TONEC-1 ; Nota no canal 3 = $ff.
DE49  010600    LD      BC,#0006 ; 6ms
DE4C  CD0EC3    CALL    #C30E ; DELAYB
DE4F  CDC7CE    CALL    #CEC7 ; Zera período da envoltória no PSG.
;
DE52  CDBBE0    CALL    #E0BB ; CRLFPOSNZ {CRWDY} <NewLine> [STTLIN] ; CR+LF se necessário.
; Se foi STOP ou Ctrl+C, imprime mensagem
; "PAUSA (EM...)".
DE55  F1        POP     AF ; Restaura distinção STOP/END.
DE56  21EFD7    LD      HL,#D7EF ; {BR} [BRMSG] ; Mensagem "PAUSA".
DE59  C276D8    JP      NZ,#D876 ; {ERROO1} [ERRIN] ; Exibe "EM" número de linha.
; Se foi END, vai direto para o modo direto.
DE5C  C38DD8    JP      #D88D ; {EDIT} [PRNTOK]

; Incrementa AVALUE, BVALUE e CVALUE e silencia PSG.
DE5F  213901    LD      HL,#0139 ; AVALUE
DE62  110900    LD      DE,#0009
DE65  34        INC     (HL)
DE66  19        ADD     HL,DE ; BVALUE
DE67  34        INC     (HL)
DE68  19        ADD     HL,DE ; CVALUE
DE69  34        INC     (HL)
DE6A  CDBACE    CALL    #CEBA ; Inicializa som (silêncio).
DE6D  C9        RET
;
; BCONT
DE6E  CD5FDE    CALL    #DE5F ; Incrementa AVALUE, BVALUE e CVALUE e silencia PSG.
DE71  3C        INC     A ; (#0001) = 1.
DE72  320100    LD      (#0001),A
DE75  2AB503    LD      HL,(#03B5) ; {LBYTER} [CONTAD]
DE78  7C        LD      A,H
DE79  B5        OR      L
DE7A  1E20      LD      E,#20 ; erro "NC"
DE7C  CA56D8    JP      Z,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
DE7F  EB        EX      DE,HL
DE80  2AB303    LD      HL,(#03B3)
DE83  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
DE86  EB        EX      DE,HL
DE87  C9        RET
;
; Indica LOAD*
DE88  06FF      LD      B,#FF
;
DE8A  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DE8D  78        LD      A,B
DE8E  32AF03    LD      (#03AF),A ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
DE91  3E01      LD      A,#01
DE93  32AC03    LD      (#03AC),A ; @SUBFLG {FORFLG} [FORFLG]
; Coloca o nome do arquivo em FILNAM.
DE96  E5        PUSH    HL
DE97  CDE2E9    CALL    #E9E2 ; STRFN5
DE9A  E1        POP     HL
DE9B  CD84E4    CALL    #E484 ; @PTRGET {DIM1} <GetVar> [GETVAR]
DE9E  E5        PUSH    HL
DE9F  32AC03    LD      (#03AC),A ; @SUBFLG {FORFLG} [FORFLG]
DEA2  60        LD      H,B
DEA3  69        LD      L,C
DEA4  0B        DEC     BC
DEA5  0B        DEC     BC
DEA6  0B        DEC     BC
DEA7  0B        DEC     BC
DEA8  3AAF03    LD      A,(#03AF) ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
DEAB  B7        OR      A
DEAC  F5        PUSH    AF
DEAD  EB        EX      DE,HL
DEAE  19        ADD     HL,DE
DEAF  EB        EX      DE,HL
DEB0  4E        LD      C,(HL)
DEB1  0600      LD      B,#00
DEB3  09        ADD     HL,BC
DEB4  09        ADD     HL,BC
DEB5  23        INC     HL
DEB6  CDBFE2    CALL    #E2BF; STR?TI {SNALY3} [TSTNUM]
DEB9  F1        POP     AF
DEBA  F5        PUSH    AF
DEBB  22FB00    LD      (#00FB),HL ; STAR
DEBE  EB        EX      DE,HL
DEBF  22FD00    LD      (#00FD),HL ; ENDT
DEC2  01D9DE    LD      BC,#DED9
DEC5  C5        PUSH    BC
DEC6  0606      LD      B,#06
DEC8  F2B7C4    JP      P,#C4B7 ; TAPOUT
DECB  C1        POP     BC
DECC  CD62C1    CALL    #C162 ; TAPIN
DECF  CD6DEA    CALL    #EA6D
DED2  20F7      JR      NZ,#DECB        ; (-9)
DED4  CD88C1    CALL    #C188 ; GET1
DED7  20F2      JR      NZ,#DECB        ; (-14)
DED9  F1        POP     AF
DEDA  E1        POP     HL
DEDB  C9        RET

; Retorna carry se caracter em (HL) não for letra.
; @ISLET {CLETST} <CharIsAlpha> [CHKLTR]
DEDC  7E        LD      A,(HL)
DEDD  FE41      CP      'A'
DEDF  D8        RET     C
DEE0  FE5B      CP      'Z'+1
DEE2  3F        CCF
DEE3  C9        RET

; Avalia uma expressão numérica positiva e obtém seu valor
; inteiro em CDE. Caso contrário, produz "PI ERRO".
; {EPRVAL} [FPSINT]
DEE4  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; {EPRVL1} [POSINT]
DEE7  CDBCE2    CALL    #E2BC ; {SNALY2} [GETNUM]
; Converte ponto flutuante positivo em inteiro 0~32767 (DE).
; {EPRVL2} [DEPINT]
DEEA  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
DEED  FAF6DE    JP      M,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
; {EPRVL3} [DEINT]
DEF0  3AC203    LD      A,(#03C2) ; {WRA1+3} <FACCUM+3> [FPEXP]
DEF3  C37AED    JP      #ED7A ; {INTMOV} <FAsInteger> [FPINT]

; PIERRO:
; @FCERR {FCER} [FCERR]
DEF6  1E08      LD      E,#08 ; erro "PI"
DEF8  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; Lê um literal inteiro sem sinal (0~65535)
; e o armazena em DE.
; {DCHEX} <LineNumberFromStr> [ATOH]
DEFB  2B        DEC     HL
; {DCHEX1} [GETLN]
DEFC  110000    LD      DE,#0000
; {DCHEX2} <NextLineNumChar> [GTLNLP]
DEFF  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR] ; Retorna se próximo caracter não for algarismo.
DF02  D0        RET     NC
;
DF03  E5        PUSH    HL
DF04  F5        PUSH    AF
; Se for produzir um número maior do que
; 65535, produz "SN ERRO".
DF05  219919    LD      HL,#1999 ; 6553
DF08  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
DF0B  DA48D8    JP      C,#D848 ; SNERRO @SNERR
; DE = DE * 10 + (A - #30).
DF0E  62        LD      H,D
DF0F  6B        LD      L,E
DF10  19        ADD     HL,DE
DF11  29        ADD     HL,HL
DF12  19        ADD     HL,DE
DF13  29        ADD     HL,HL
DF14  F1        POP     AF
DF15  D630      SUB     '0'
DF17  5F        LD      E,A
DF18  1600      LD      D,#00
DF1A  19        ADD     HL,DE
DF1B  EB        EX      DE,HL
DF1C  E1        POP     HL
DF1D  18E0      JR      #DEFF ; {DCHEX2} <NextLineNumChar> [GTLNLP]

; BCLEAR
DF1F  CAB1D9    JP      Z,#D9B1 ; {CLEAR2} {NEW3} [INTVAR]
DF22  CDE7DE    CALL    #DEE7
DF25  2B        DEC     HL
DF26  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DF29  E5        PUSH    HL
DF2A  2A9203    LD      HL,(#0392) ; {MEMSIZ} [LSTRAM]
DF2D  2812      JR      Z,#DF41         ; (18)
DF2F  E1        POP     HL
DF30  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
DF33  2C        DB      ','
DF34  D5        PUSH    DE
DF35  CDE7DE    CALL    #DEE7
DF38  2B        DEC     HL
DF39  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
DF3C  C248D8    JP      NZ,#D848 ; SNERRO @SNERR
DF3F  E3        EX      (SP),HL
DF40  EB        EX      DE,HL
DF41  7D        LD      A,L
DF42  93        SUB     E
DF43  5F        LD      E,A
DF44  7C        LD      A,H
DF45  9A        SBC     A,D
DF46  57        LD      D,A
DF47  DA3ED8    JP      C,#D83E ; FMERRO
DF4A  E5        PUSH    HL
DF4B  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
DF4E  012800    LD      BC,#0028
DF51  09        ADD     HL,BC
DF52  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
DF55  D23ED8    JP      NC,#D83E ; FMERRO
DF58  EB        EX      DE,HL
DF59  224503    LD      (#0345),HL ; {STDPTR} <STACK_TOP> [STRSPC]
DF5C  E1        POP     HL
DF5D  229203    LD      (#0392),HL ; {MEMSIZ} [LSTRAM]
DF60  E1        POP     HL
DF61  C3B1D9    JP      #D9B1 ; {CLEAR2} {NEW3} [INTVAR]

; BRUN
DF64  CAADD9    JP      Z,#D9AD ; {NEW2} <ResetAll> [RUNFST]
DF67  CDB1D9    CALL    #D9B1 ; {CLEAR2} {NEW3} [INTVAR]
DF6A  014EDD    LD      BC,#DD4E
DF6D  1810      JR      #DF7F           ; (16)

; BGOSUB
DF6F  0E03      LD      C,#03
DF71  CD27D8    CALL    #D827 ; @GETSTK {TMEMO} <CheckEnoughVarSpace> [CHKSTK]
DF74  C1        POP     BC
DF75  E5        PUSH    HL
DF76  E5        PUSH    HL
DF77  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
DF7A  E3        EX      (SP),HL
DF7B  3E8D      LD      A,#8D
DF7D  F5        PUSH    AF
DF7E  33        INC     SP
;
DF7F  C5        PUSH    BC
;
; BGOTO
DF80  CDFBDE    CALL    #DEFB ; {DCHEX} <LineNumberFromStr> [ATOH]
DF83  CDC4DF    CALL    #DFC4 ; BREM
DF86  E5        PUSH    HL
DF87  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
DF8A  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
DF8D  E1        POP     HL
DF8E  23        INC     HL
DF8F  DC85D9    CALL    C,#D985
DF92  D482D9    CALL    NC,#D982 ; {ZPOIT} <FindProgramLine> [SRCHLN] ; Procura pelo número de linha em DE.
DF95  60        LD      H,B
DF96  69        LD      L,C
DF97  2B        DEC     HL
DF98  D8        RET     C

; LIERRO:
; {ULER} [ULERR]
DF99  1E0E      LD      E,#0E ; erro "LI"
DF9B  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; BRETURN:
DF9E  C0        RET     NZ
DF9F  16FF      LD      D,#FF
DFA1  CDF5D7    CALL    #D7F5 ; {FORSR} <GetFlowPtr>
DFA4  F9        LD      SP,HL
DFA5  FE8D      CP      #8D ; token "GOSUB"
DFA7  1E04      LD      E,#04 ; erro "RG"
DFA9  C256D8    JP      NZ,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
DFAC  E1        POP     HL
DFAD  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
DFB0  23        INC     HL
DFB1  7C        LD      A,H
DFB2  B5        OR      L
DFB3  2007      JR      NZ,#DFBC        ; (7)
DFB5  3AAD03    LD      A,(#03AD) ; {IPHFLG} [LSTBIN]
DFB8  B7        OR      A
DFB9  C28CD8    JP      NZ,#D88C
DFBC  214EDD    LD      HL,#DD4E
DFBF  E3        EX      (SP),HL
DFC0  3E        DB      #3E ; Oculta a instrução seguinte
; [NXTDTA]:
DFC1  E1        POP     HL
;
; BDATA
; As duas instruções abaixo:
; {DATA} <Data> [DATA]
DFC2  013A0E    LD      BC,#0E3A
DFC5  00        NOP
; ocultam a instrução
; ; BREM
; DFC4  3A00      LD      C,#00
; que é o ponto de entrada da rotina que
; interpreta o comando REM.
; Basicamente, elas diferenciam com o valor
; do registrador C o ponto de parada de uma
; instrução DATA (que pode ser ":") e uma
; instrução REM (que é o final da linha, #00).
DFC6  0600      LD      B,#00
DFC8  79        LD      A,C
DFC9  48        LD      C,B
DFCA  47        LD      B,A
DFCB  7E        LD      A,(HL)
DFCC  B7        OR      A
DFCD  C8        RET     Z
DFCE  B8        CP      B
DFCF  C8        RET     Z
DFD0  23        INC     HL
DFD1  FE22      CP      '"'
DFD3  28F3      JR      Z,#DFC8         ; (-13)
DFD5  18F4      JR      #DFCB           ; (-12)
;
; BLET:
;
; Interpreta nome da variável/matriz
; e obtém o endereço dos quatro bytes
; de armazenamento em DE.
DFD7  CD84E4    CALL    #E484 ; @PTRGET {DIM1} <GetVar> [GETVAR] ; Lê nome da variável e obtém seu endereço.
; Passa pelo sinal de igual.
DFDA  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
DFDD  C6        DB      #C6 ; token "="
;
DFDE  D5        PUSH    DE ; Preserva endereço do conteúdo da variável.
DFDF  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE]
DFE2  F5        PUSH    AF ; Preserva tipo da variável.
; Avalia a expressão.
DFE3  CDD0E2    CALL    #E2D0 ; EVAL @FRMEVL {SNALY} <EvalExpression> [EVAL]
;
DFE6  F1        POP     AF ; Restaura tipo da variável.
DFE7  E3        EX      (SP),HL ; Restaura endereço do conteúdo da variável e preserva ponteiro de execução do BASIC.
DFE8  22AF03    LD      (#03AF),HL ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN] ; Preserva endereço do conteúdo da variável.
; Compara tipo da variável com o
; tipo do resultado da expressão.
; (PI ERRO se diferentes.)
DFEB  1F        RRA
DFEC  CDC1E2    CALL    #E2C1 ; {SNALY5} [CHKTYP]
; Desvia se forem numéricos.
DFEF  CA27E0    JP      Z,#E027 ; {LET4} [LETNUM]

; Trata atribuição de string.
; {LET1} [LETSTR]
DFF2  E5        PUSH    HL ; Preserva endereço do conteúdo da variável.
DFF3  2ABF03    LD      HL,(#03BF) ; @FACLO {WRA1} <FACCUM> [FPREG] ; Endereço do registro temporário na pilha (resultado da expressão).
DFF6  E5        PUSH    HL ; Preserva.
DFF7  23        INC     HL
DFF8  23        INC     HL
DFF9  5E        LD      E,(HL) ; DE = endereço do conteúdo da string.
DFFA  23        INC     HL
DFFB  56        LD      D,(HL)
; Onde está o conteúdo da string?
DFFC  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT] ; Endereço de início do programa BASIC.
DFFF  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL] ; O conteúdo da string se situa antes do programa? (No buffer de linha?)
E002  3012      JR      NC,#E016 ; {LET2} [CRESTR] ; Sim: cria registro de string.
E004  2A4503    LD      HL,(#0345) ; {STDPTR} <STACK_TOP> [STRSPC] ; Início da área de strings.
E007  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL] ; O conteúdo da string se situa na área do programa BASIC (literal string)?
E00A  D1        POP     DE ; Restaura endereço do registro de string.
E00B  3011      JR      NC,#E01E ; {LET3} [MVSTPT] ; Sim: apenas configura ponteiro.
; O conteúdo da string está na área de strings.
; Onde está o registro da string?
E00D  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND] ; Endereço do início da área de variáveis logo após o programa BASIC.
E010  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL] ; O registro da string se situa antes da área de variáveis (é temporário)?
E013  3009      JR      NC,#E01E ; {LET3} [MVSTPT] ; Sim: apenas configura ponteiro.
; O byte seguinte:
E015  3E        DB      #3E
; compõe uma instrução de dois bytes (LD A,#D1),
; ocultando a instrução seguinte:
; {LET2} [CRESTR]
E016  D1        POP     DE ; Restaura endereço do registro de string.
;
E017  CD8CE8    CALL    #E88C ; {SPTSRH} [BAKTMP] ; [Back to last tmp-str entry]
E01A  EB        EX      DE,HL ; Endereço do registro de string.
E01B  CDD1E6    CALL    #E6D1 ; @STRCPY {STR_1} [SAVSTR] ; Salva string na área de strings.
; {LET3} [MVSTPT]
E01E  CD8CE8    CALL    #E88C ; {SPTSRH} [BAKTMP] ; [Back to last tmp-str entry]
E021  E1        POP     HL ; Restaura ponteiro para o registro da string.
E022  CD2EED    CALL    #ED2E ; LD4HLDE {OPTRN1} ; Move o registro para a variável.
E025  E1        POP     HL ; Restaura o ponteiro de execução do programa BASIC.
E026  C9        RET

; Trata atribuição de numérico.
; Copia valor da expressão para os
; quatro bytes da variável/matriz.
; {LET4} [LETNUM]
E027  E5        PUSH    HL
E028  CD2BED    CALL    #ED2B ; HLFLOAT {OPTRAN} <FCopyToMem> [FPTHL]
E02B  D1        POP     DE
E02C  E1        POP     HL
E02D  C9        RET
;
; BON
E02E  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
E031  7E        LD      A,(HL)
E032  47        LD      B,A
E033  FE8D      CP      #8D ; token "GOSUB"
E035  2805      JR      Z,#E03C         ; (5)
E037  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E03A  89        DB      #89 ; token "GOTO"
E03B  2B        DEC     HL
E03C  4B        LD      C,E
E03D  0D        DEC     C
E03E  78        LD      A,B
E03F  CA85DD    JP      Z,#DD85
E042  CDFCDE    CALL    #DEFC ; {DCHEX1} [GETLN]
E045  FE2C      CP      ','
E047  C0        RET     NZ
E048  18F3      JR      #E03D           ; (-13)
;
; BIF
E04A  CDD0E2    CALL    #E2D0 ; EVAL @FRMEVL {SNALY} <EvalExpression> [EVAL]
E04D  7E        LD      A,(HL)
E04E  FE89      CP      #89 ; token "GOTO"
E050  2805      JR      Z,#E057         ; (5)
E052  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E055  BA        DB      #BA ; token "THEN"
E056  2B        DEC     HL
E057  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E05A  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
E05D  CAC4DF    JP      Z,#DFC4
E060  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E063  DA80DF    JP      C,#DF80
E066  C384DD    JP      #DD84

; {PRINT0} [MRPRNT]
E069  2B        DEC     HL
E06A  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
;
; BPRINT
; {PRINT} [PRINT]
E06D  CAC7E0    JP      Z,#E0C7 ; PRINTCRLF [PRNTCR]
; {PRINT2} [PRNTLP]
E070  C8        RET     Z
E071  FEB6      CP      #B6 ; token "TAB("
E073  CAF5E0    JP      Z,#E0F5 ; {TAB} [DOTAB]
E076  FEB9      CP      #B9 ; token "SPC("
E078  CAF5E0    JP      Z,#E0F5 ; {TAB} [DOTAB]
E07B  FEBD      CP      #BD ; token "VTAB("
E07D  CAF5E0    JP      Z,#E0F5 ; {TAB} [DOTAB]
E080  E5        PUSH    HL ; Salva ponto de interpretação.
E081  FE2C      CP      ','
E083  CAE1E0    JP      Z,#E0E1 ; {FORMAT} [DOCOM]
E086  FE3B      CP      ';'
E088  CA20E1    JP      Z,#E120 ; {TAB4} [NEXITM]
E08B  CDD0E2    CALL    #E2D0 ; EVAL @FRMEVL {SNALY} <EvalExpression> [EVAL]
E08E  C1        POP     BC ; Descarta ponto de interpretação salvo anteriormente.
E08F  E5        PUSH    HL ; Salva ponto de interpretação atual (após expressão).
E090  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE] ; Desvia se for string.
E093  B7        OR      A
E094  201E      JR      NZ,#E0B4 ; {PRINT4} [PRNTST]
E096  CD96EE    CALL    #EE96 ; STRFLOAT @FOUT {NUMKON} [NUMASC] ; Converte número em texto em #03C4.
E099  CDF5E6    CALL    #E6F5 ; NEWSTRREC @STRLIT {SLEN0} [CRTST] ; Cria string temporária.
E09C  2ABF03    LD      HL,(#03BF) ; @FACLO {WRA1} <FACCUM> [FPREG] ; Quebra linha se string não couber no resto da linha (WIDTH).
E09F  3A4203    LD      A,(#0342) ; {LINLEN} [LWIDTH]
E0A2  47        LD      B,A
E0A3  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
E0A6  86        ADD     A,(HL)
E0A7  B8        CP      B
E0A8  D4C7E0    CALL    NC,#E0C7 ; PRINTCRLF [PRNTCR]
E0AB  CD37E7    CALL    #E737 ; {TEXTO1} [PRS1] ; Imprime string com o número.
E0AE  3E20      LD      A,' ' ; Imprime espaço.
E0B0  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
E0B3  AF        XOR     A ; Pula o CALL seguinte.
; {PRINT4} [PRNTST]
E0B4  C437E7    CALL    NZ,#E737 ; {TEXTO1} [PRS1] ; Imprime string.
E0B7  E1        POP     HL ; Recupera ponto de interpretação.
E0B8  C369E0    JP      #E069 ; {PRINT0} [MRPRNT] ; Continua interpretação de PRINT.

; CRLFPOSNZ {CRWDY} <NewLine> [STTLIN]
; Imprime CR+LF se POS() diferente de zero.
E0BB  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
E0BE  B7        OR      A
E0BF  C8        RET     Z
E0C0  1805      JR      #E0C7 ; PRINTCRLF {CRWDY2} [PRNTCR]
;
; Trata tecla RETURN em GETL.
; {CRWDY1}
E0C2  3600      LD      (HL),#00
; {CRWDY6}
E0C4  21FF01    LD      HL,#01FF ; @BUF {INPBUF} <LINE_BUFFER> [BUFFER-1]
; PRINTCRLF: Imprime CR+LF, atualizando POS().
; {CRWDY2} [PRNTCR]
E0C7  3E0D      LD      A,#0D ; CR
E0C9  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
; {CRWDY5} [DONULL]
E0CC  3E0A      LD      A,#0A ; LF
E0CE  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
; POSZERO: Zera POS().
; Imprime a quantidade de characteres ASCII NULL
; indicada em @NULCNT {DUMMY} [NULLS].
; {CRWDY3}
E0D1  3A4103    LD      A,(#0341) ; @NULCNT {DUMMY} <TERMINAL_Y> [NULLS]
; {CRWDY4} [NULLP]
E0D4  3D        DEC     A
E0D5  328E03    LD      (#038E),A ; {CURPOS} [CURPOS]
E0D8  C8        RET     Z
E0D9  F5        PUSH    AF
E0DA  AF        XOR     A
E0DB  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
E0DE  F1        POP     AF
E0DF  18F3      JR      #E0D4 ; {CRWDY4} [NULLP]
;
; Trata "," no comando PRINT.
; {FORMAT} [DOCOM]
E0E1  3A4303    LD      A,(#0343) ; {PRLISI} [COMMAN]
E0E4  47        LD      B,A
E0E5  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
E0E8  B8        CP      B
E0E9  D4C7E0    CALL    NC,#E0C7 ; PRINTCRLF [PRNTCR]
E0EC  3032      JR      NC,#E120 ; {TAB4} [NEXITM]
; {FORM1} [ZONELP]
E0EE  D60F      SUB     #0F ; Próxima zona de 15 caracteres.
E0F0  30FC      JR      NC,#E0EE ; {FORM1} [ZONELP]
E0F2  2F        CPL
E0F3  1821      JR      #E116 ; {TAB2} [ASPCS]

; Trata cláusulas do PRINT: TAB, SPC e VTAB.
; {TAB} [DOTAB]
E0F5  F5        PUSH    AF ; Salva token.
E0F6  CD96E9    CALL    #E996 ; {ARGVAL} <GetSubscript> [FNDNUM]
E0F9  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E0FC  29        DB      ')'
E0FD  2B        DEC     HL
E0FE  F1        POP     AF ; Recupera token.
E0FF  D6B9      SUB     #B9 ; token "SPC("
E101  E5        PUSH    HL
E102  280E      JR      Z,#E112 ; {TAB1} [DOSPC]
E104  FE04      CP      #04
E106  CA3AE1    JP      Z,#E13A ; Trata VTAB.

; Trata TAB.
E109  7B        LD      A,E
E10A  FE01      CP      #01
E10C  DAF6DE    JP      C,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
E10F  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]

; Trata SPC.
; {TAB1} [DOSPC]
E112  2F        CPL
E113  83        ADD     A,E
E114  300A      JR      NC,#E120 ; {TAB4} [NEXITM]
; {TAB2} [ASPCS]
E116  3C        INC     A
E117  47        LD      B,A
E118  3E20      LD      A,' ' ; Espaço.
; {TAB3} [SPCLP]
E11A  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
E11D  05        DEC     B
E11E  20FA      JR      NZ,#E11A; {TAB3} [SPCLP]

; Trata ";" no comando PRINT.
; {TAB4} [NEXITM]
E120  E1        POP     HL
E121  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E124  C370E0    JP      #E070 ; {PRINT2} [PRNTLP]

; Verifica parâmetro de VTAB.
; Se o modo de texto é de 32 colunas...
E127  3A0F00    LD      A,(#000F) ; C40?80
E12A  B7        OR      A
E12B  78        LD      A,B
E12C  C235E1    JP      NZ,#E135
; O parâmetro de VTAB deve ser 0~15.
E12F  FE10      CP      #10
;
E131  D2F6DE    JP      NC,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
E134  C9        RET
; Se o modo de texto é de 80 colunas,
; O parâmetro de VTAB deve ser 0~23.
E135  FE18      CP      #18
E137  C331E1    JP      #E131

; Trata VTAB.
E13A  43        LD      B,E
E13B  CD27E1    CALL    #E127 ; Verifica parâmetro segundo 32/80 colunas.
E13E  CD5BCB    CALL    #CB5B ; CALLUPDBCM ; Apaga cursor se estiver aceso.

; BUG! O código adiante tem vários erros de lógica
; que impedem a cláusula VTAB( de funcionar.

; BUG! A linha abaixo não deveria usar o valor constante
; $8000, mas deveria ler a variável DSNAM, que contém o
; valor do início da VRAM para a largura de vídeo atual.
; No modo de 80 colunas, o valor é $2000.

E141  210080    LD      HL,#8000 ; Início da VRAM.

; BUG! Faltou carregar em DE o valor da variável DLNG,
; que contém a largura da tela (32/80).

E144  ED52      SBC     HL,DE
E146  13        INC     DE

; BUG! O registrador A é usado como contador do laço
; abaixo, mas faltou inicializar A com o parâmetro
; de VTAB.

; A instrução abaixo:
E147  017B3D    LD      BC,#3D7B
; oculta a instrução:
; E149  3D        DEC     A
E14A  2803      JR      Z,#E14F

; BUG! A soma abaixo deveria ser feita com DE
; (contendo a largura da tela) e não com BC
; (que recebeu lixo acima).

E14C  09        ADD     HL,BC
E14D  18FA      JR      #E149

; Neste ponto HL DEVERIA conter o valor de
; DSNAM + <parâmetro de VTAB> * DLNG,
; mas os bugs acima impediram isso.

E14F  225901    LD      (#0159),HL ; LNHD
E152  3A5D01    LD      A,(#015D) ; LCNT
E155  4F        LD      C,A
E156  0600      LD      B,#00
E158  09        ADD     HL,BC
E159  225B01    LD      (#015B),HL ; SNPTR
E15C  CD55CB    CALL    #CB55 ; CALLUPDBM
E15F  C320E1    JP      #E120 ; {TAB4} [NEXITM]

; [REDO]
E162  3F524545  DB      '?REE'
E166  4E545245  DB      'NTRE'
E16A  20444144  DB      ' DAD'
E16E  4F532020  DB      'OS  '
E172  0D0A      DB      #0D,#0A ; CR+LF
E174  00        DB      #00

; [BADINP]
E175  3AAE03    LD      A,(#03AE) ; {RDFLAG} <INPUT_OR_READ> [READFG] ; Se "READ", emite SN ERRO.
E178  B7        OR      A
E179  C242D8    JP      NZ,#D842 ; {SNER0} [DATSNR]
E17C  C1        POP     BC
E17D  2162E1    LD      HL,#E162 ; [REDO] ; "REENTRE DADOS"
E180  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E183  2C        DB      ','
E184  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
E187  C3DDD9    JP      #D9DD ; [DOAGN] ; Repita último INPUT.

; BINPUT:
; {INPUT} <Input> [INPUT]
E18A  CDA2E6    CALL    #E6A2 ; [IDTEST]
E18D  7E        LD      A,(HL) ; Instrução contém prompt?
E18E  FE22      CP      '"'
E190  3E00      LD      A,#00
E192  324403    LD      (#0344),A ; {OUTFLG} [CTLOFG]
E195  200C      JR      NZ,#E1A3 ; [NOPMPT]
; Exibe prompt.
E197  CDF6E6    CALL    #E6F6 ; {SOPRND} [QTSTR] ; Obtém literal string.
E19A  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E19D  3B        DB      ';'
E19E  E5        PUSH    HL ; Empilha ponto de interpretação.
E19F  CD37E7    CALL    #E737 ; {TEXTO1} [PRS1] ; Exibe prompt.
E1A2  3E        DB      #3E ; Oculta a instrução seguinte.
; {INPUT1} [NOPMPT]:
E1A3  E5        PUSH    HL ; Empilha ponto de interpretação.
E1A4  CDE1D9    CALL    #D9E1 ; {OUT?} <InputLineWith?> [PROMPT]
E1A7  C1        POP     BC ; Desempilha ponto de interpretação.
E1A8  DA26DE    JP      C,#DE26 ; {END1} [INPBRK] ; CTRL+C: Sair.
E1AB  23        INC     HL ; Fim de linha adiante?
E1AC  7E        LD      A,(HL)
E1AD  B7        OR      A
E1AE  2B        DEC     HL 
E1AF  C5        PUSH    BC ; Empilha ponto de interpretação.
E1B0  CAC1DF    JP      Z,#DFC1 ; [NXTDTA] ; Sim, procura próxima instrução DATA.
E1B3  362C      LD      (HL),',' ; Armazena vírgula como separador.
E1B5  1805      JR      #E1BC ; [NXTITM] ; Obtém próximo item.

; BREAD:
; {READ} <Read> [READ]
E1B7  E5        PUSH    HL ; Salva ponto de interpretação.
E1B8  2ABD03    LD      HL,(#03BD) ; {RDPTR} <DATA_PROG_PTR> [NXTDAT]
; A instrução abaixo:
E1BB  F6AF      OR      #AF ; Indicar "READ".
; oculta a instrução:
; [NXTITM]:
; E1BC  AF        XOR     A ; Indicar "INPUT".
E1BD  32AE03    LD      (#03AE),A ; {RDFLAG} <INPUT_OR_READ> [READFG]
; Preserva o ponteiro de DATA na pilha e restaura o ponteiro
; de programa em HL. Este deve apontar para o nome da variável
; onde se armazenará o dado lido.
E1C0  E3        EX      (SP),HL
E1C1  1804      JR      #E1C7 ; [GTVLUS]
; <ReadNext> [NEDMOR]
E1C3  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E1C6  2C        DB      ','
; [GTVLUS]
E1C7  CD84E4    CALL    #E484 ; @PTRGET {DIM1} <GetVar> [GETVAR] ; Obtém endereço do valor da variável em DE.
E1CA  E3        EX      (SP),HL ; Empilha ptr de programa e desempilha ponteiro de dados em HL.
E1CB  D5        PUSH    DE ; Empilha endereço do valor da variável.
; Se vírgula, obtém outro valor.
E1CC  7E        LD      A,(HL)
E1CD  FE2C      CP      ','
E1CF  281D      JR      Z,#E1EE ; <GotDataItem>(?) [ANTVLU]
; Se READ, procura próxima declaração DATA.
E1D1  3AAE03    LD      A,(#03AE) ; {RDFLAG} <INPUT_OR_READ> [READFG]
E1D4  B7        OR      A
E1D5  C250E2    JP      NZ,#E250 ; [FDTLP]
; A instrução é INPUT com múltiplas variáveis (INPUT A,B,C) e há mais
; variáveis do que valores fornecidos. O sistema vai exibir novo
; prompt ("??") para obter os valores restantes.
E1D8  3E3F      LD      A,'?'
E1DA  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
E1DD  CDE1D9    CALL    #D9E1 ; {OUT?} <InputLineWith?> [PROMPT]
; Restaura o endereço do valor da variável, avança o ponteiro de dado
; para o início do próximo item de dado, e atribui o item de dado à
; variável.
E1E0  D1        POP     DE ; Endereço do valor da variável.
E1E1  C1        POP     BC ; Ponto de interpretação.
E1E2  DA26DE    JP      C,#DE26 ; {END1} [INPBRK]
E1E5  23        INC     HL ; Próximo byte de DATA é $00?
E1E6  7E        LD      A,(HL)
E1E7  B7        OR      A
E1E8  2B        DEC     HL
E1E9  C5        PUSH    BC ; Ponto de interpretação.
E1EA  CAC1DF    JP      Z,#DFC1 ; [NXTDTA] ; Procura fim do buffer.
E1ED  D5        PUSH    DE ; Endereço do valor da variável.
; <GotDataItem> [ANTVLU]:
E1EE  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE] ; Se numérico, converte para binário.
E1F1  B7        OR      A
E1F2  281A      JR      Z,#E20E ; [INPBIN]
E1F4  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E1F7  57        LD      D,A ; Se literal string, o delimitador será aspas.
E1F8  47        LD      B,A
E1F9  FE22      CP      '"'
E1FB  2805      JR      Z,#E202 ; [STRENT]
E1FD  163A      LD      D,':' ; Senão os delimitadores serão vírgula ou dois-pontos.
E1FF  062C      LD      B,','
E201  2B        DEC     HL
;  [STRENT]
E202  CDF9E6    CALL    #E6F9 ; {STRLEN} [DTSTR] ; Obtém string delimitada por 0 ou pelos caracteres em B ou D.
E205  EB        EX      DE,HL ; Endereço da string em DE.
E206  2119E2    LD      HL,#E219 ; [LTSTND] ; Aonde ir depois de [LETSTR].
E209  E3        EX      (SP),HL
E20A  D5        PUSH    DE ; Endereço da string.
E20B  C3F2DF    JP      #DFF2 ; {LET1} [LETSTR] ; Atribui string à variável.

;  [INPBIN]
E20E  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E211  CDEFED    CALL    #EDEF ; {VALNRM} <FIn> [ASCTFP] ; Converte para ponto flutuante.
E214  E3        EX      (SP),HL ; Salva ponteiro de entrada, obtém endereço do valor da variável.
E215  CD2BED    CALL    #ED2B ; HLFLOAT {OPTRAN} <FCopyToMem> [FPTHL] ; Copia valor ponto flutuante para o endereço do valor da variável.
E218  E1        POP     HL ; Ponteiro de entrada.
; [LTSTND]
E219  2B        DEC     HL
E21A  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E21D  2805      JR      Z,#E224 ; [MORDT] ; Fim da linha. Precisa de mais?
E21F  FE2C      CP      ',' ; Outro valor?
E221  C275E1    JP      NZ,#E175 ; [BADINP] ; Não, entrada inválida.
; [MORDT]
E224  E3        EX      (SP),HL ; Obtém ponto de interpretação.
E225  2B        DEC     HL
E226  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E229  C2C3E1    JP      NZ,#E1C3; <ReadNext> [NEDMOR] ; Precisa de mais, obtenha.
E22C  D1        POP     DE ; Ponteiro de dados.
E22D  3AAE03    LD      A,(#03AE) ; {RDFLAG} <INPUT_OR_READ> [READFG]
E230  B7        OR      A
E231  EB        EX      DE,HL ; Ponteiro de dados em HL.
E232  C2C4DD    JP      NZ,#DDC4 ; [UPDATA] ; Atualiza ponteiro de dados se READ.
E235  D5        PUSH    DE ; Ponto de interpretação.
E236  B6        OR      (HL) ; Mais entradas fornecidas?
E237  213FE2    LD      HL,#E23F ; [EXTIG] ; "IGNOROU EXTRA"
E23A  C434E7    CALL    NZ,#E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
E23D  E1        POP     HL ; Ponto de interpretação.
E23E  C9        RET

; [EXTIG]
E23F  3F49474E  DB      '?IGN'
E243  4F524F55  DB      'OROU'
E247  20455854  DB      ' EXT'
E24B  5241      DB      'RA'
E24D  0D0A      DB      #0D,#0A ; CR+LF
E24F  00        DB      #00

; [FDTLP]:
E250  CDC2DF    CALL    #DFC2 ; {DATA} <Data> [DATA] ; Obtém próxima instrução.
E253  B7        OR      A ; Fim da linha?
E254  2012      JR      NZ,#E268 ; [FANDT] ; Não, checar se é instrução DATA.
E256  23        INC     HL
E257  7E        LD      A,(HL) ; Fim do programa? ($00 $00)
E258  23        INC     HL
E259  B6        OR      (HL)
E25A  1E06      LD      E,#06 ; erro "FD"
E25C  CA56D8    JP      Z,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]; Sim, FD ERRO.
E25F  23        INC     HL ; Armazena linha do item de DATA atual.
E260  5E        LD      E,(HL)
E261  23        INC     HL
E262  56        LD      D,(HL)
E263  EB        EX      DE,HL
E264  22AA03    LD      (#03AA),HL ; {DATPTR} [DATLIN]
E267  EB        EX      DE,HL
; [FANDT]:
E268  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E26B  FE83      CP      #83 ; token "DATA"
E26D  20E1      JR      NZ,#E250 ; [FDTLP] ; Não é "DATA", continuar a procurar.
E26F  C3EEE1    JP      #E1EE ; <GotDataItem>(?) [ANTVLU] ; Encontrou. Converta entrada.
;
; BNEXT
; {NEXT} <Next> [NEXT]
E272  110000    LD      DE,#0000 ; Caso nenhum índice seja fornecido.
E275  C484E4    CALL    NZ,#E484 ; @PTRGET {DIM1} <GetVar> [GETVAR]
E278  22AF03    LD      (#03AF),HL ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
E27B  CDF5D7    CALL    #D7F5 ; {FORSR} <GetFlowPtr>
E27E  C24ED8    JP      NZ,#D84E ; NFERRO
E281  F9        LD      SP,HL
E282  D5        PUSH    DE
E283  7E        LD      A,(HL)
E284  23        INC     HL
E285  F5        PUSH    AF
E286  D5        PUSH    DE
E287  CD11ED    CALL    #ED11 ; FLOATHL {OPKOP} <FLoadFromMem> [PHLTFP]
E28A  E3        EX      (SP),HL
E28B  E5        PUSH    HL
E28C  CD8CEA    CALL    #EA8C ; HLPLUSFLOAT {ADD2} [ADDPHL]
E28F  E1        POP     HL
E290  CD2BED    CALL    #ED2B ; HLFLOAT {OPTRAN} <FCopyToMem> [FPTHL]
E293  E1        POP     HL
E294  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
E297  E5        PUSH    HL
E298  CD4DED    CALL    #ED4D ; CPFLOATBCDE {VORZ1} <FCompare> [CMPNUM]
E29B  E1        POP     HL
E29C  C1        POP     BC
E29D  90        SUB     B
E29E  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
E2A1  2809      JR      Z,#E2AC         ; (9)
E2A3  EB        EX      DE,HL
E2A4  224703    LD      (#0347),HL ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
E2A7  69        LD      L,C
E2A8  60        LD      H,B
E2A9  C34ADD    JP      #DD4A
E2AC  F9        LD      SP,HL
E2AD  2AAF03    LD      HL,(#03AF) ; {CUSTMT} <PROG_PTR_TEMP> [BRKLIN]
E2B0  7E        LD      A,(HL)
E2B1  FE2C      CP      ','
E2B3  C24EDD    JP      NZ,#DD4E
E2B6  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E2B9  CD75E2    CALL    #E275
; [Não retorna para cá; sai para [RUNCNT] ou laço.]

; {SNALY2} [GETNUM]
E2BC  CDD0E2    CALL    #E2D0 ; EVAL @FRMEVL {SNALY} <EvalExpression> [EVAL]
; STR?TI : Gera erro de tipo incompatível
; se o tipo for string.
; {SNALY3} [TSTNUM] 
; A instrução abaixo oculta a instrução
; ; NUM?TI : Gera erro de tipo incompatível
; ; se o tipo for numérico.
; ; @CHKSTR {SNALY4} [TSTSTR]
; E2C0  37        SCF
; que só pode ser atingida por jump.
E2BF  F637      OR      #37
; {SNALY5} [CHKTYP]
E2C1  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE]
E2C4  8F        ADC     A,A
E2C5  B7        OR      A
E2C6  E8        RET     PE

; TIERRO
; @TMERR {TMER}
E2C7  1E18      LD      E,#18 ; erro "TI"
; {TMER1}
E2C9  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; EVALPAR: Avalia expressão iniciada com parênteses.
; @FRMPRN {SNALY6} [OPNPAR]
E2CC  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E2CF  28        DB      '('
; EVAL: Avalia uma expressão.
; @FRMEVL {SNALY} <EvalExpression> [EVAL]
E2D0  2B        DEC     HL
E2D1  1600      LD      D,#00 ; Valor de precedência no início da avaliação = 0.
; @LPOPER {SNALY7} [EVAL1]
; Avalia expressão até encontrar um operador com precedência menor do que D.
E2D3  D5        PUSH    DE ; Preserva valor de precedência.
E2D4  0E01      LD      C,#01 ; Verifica um nível de pilha.
E2D6  CD27D8    CALL    #D827 ; @GETSTK {TMEMO} <CheckEnoughVarSpace> [CHKSTK]
E2D9  CD44E3    CALL    #E344 ; @EVAL {SNLY13} <EvalTerm> [OPRND] ; Obtém um operando.
; @TSTOP {SNALY8} [EVAL2]
E2DC  22B103    LD      (#03B1),HL ; {NTOKPT} [NXTOPR] ; Preserva endereço do próximo operador.
; @RETAOP {SNALY9} <ArithParse> [EVAL3]
E2DF  2AB103    LD      HL,(#03B1) ; {NTOKPT} [NXTOPR] ; Restaura endereço do próximo operador.
E2E2  C1        POP     BC ; Valor de precedência e operador.
E2E3  78        LD      A,B ; Valor de precedência.
E2E4  FE78      CP      #78 ; "AND" ou "OR"?
E2E6  D4BFE2    CALL    NC,#E2BF ; STR?TI {SNALY3} [TSTNUM] ; Não: Garante que é um número.
E2E9  7E        LD      A,(HL) ; Obtém próximo operador/função.
; Os operadores de comparação podem ser usados isolados ("=", "<", ">")
; ou combinados ("<=", "=<", ">=", "=>", "<>").
; A partir daqui, enquanto houver tokens ">", "=" e "<" em sequência no programa,
; ativa com XOR os bits 0, 1 e 2 do registrador D, que ao final conterá
; um valor correspondente à combinação dos tokens encontrados.
E2EA  1600      LD      D,#00 ; Zera D para iniciar combinação de operadores de comparação.
; {SNLY10} [RLTLP]
E2EC  D6C5      SUB     #C5 ; token ">"
E2EE  3815      JR      C,#E305 ; {SNLY11} [FOPRND]
E2F0  FE03      CP      #03 ; Está entre ">", "=", "<"?
E2F2  3011      JR      NC,#E305 ; {SNLY11} [FOPRND]
E2F4  FE01      CP      #01 ; CF se ">", ZF se "="
E2F6  17        RLA     ; Bit 0 indica ">", bit 1 indica "=", bit 2 indica "<".
E2F7  AA        XOR     D ; Aplica bit a D com XOR. Se um mesmo operador foi informado duas vezes (p.ex. "=="), um bit será desativado...
E2F8  BA        CP      D ; ...e o valor de D vai diminuir.
E2F9  57        LD      D,A
E2FA  DA48D8    JP      C,#D848 ; SNERRO @SNERR ; Se valor de D diminuiu, houve duplicidade: Emite erro de sintaxe.
E2FD  22A803    LD      (#03A8),HL ; {LBYTEX} [CUROPR] ; Salva endereço do token atual.
E300  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E303  18E7      JR      #E2EC; {SNLY10} [RLTLP]

; {SNLY11} [FOPRND]
E305  7A        LD      A,D ; Houve operadores de comparação?
E306  B7        OR      A
E307  C200E4    JP      NZ,#E400 ; {SNLY24} [TSTRED] ; Sim, desvia.
E30A  7E        LD      A,(HL) ; Obtém token do operador.
E30B  22A803    LD      (#03A8),HL ; {LBYTEX} [CUROPR] ; Preserva endereço do operador.
E30E  D6BE      SUB     #BE ; token "+"
E310  D8        RET     C
E311  FE07      CP      #07 ; É + - * / ^ AND OR?
E313  D0        RET     NC ; Não: retorna.
E314  5F        LD      E,A ; Armazena operador codificado (0 ~ 7) em E.
E315  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE] ; Obtém tipo de dado.
E318  3D        DEC     A ; $ff = numérico, $00 = string.
E319  B3        OR      E ; Ativa flag Z apenas se operador for "+" e tipo de dado for string.
E31A  7B        LD      A,E
E31B  CA23E8    JP      Z,#E823 ; {STRSNA} [CONCAT] ; Se for, desvia para concatenação de strings.
E31E  07        RLCA    ; DE = 3 * operador codificado.
E31F  83        ADD     A,E
E320  5F        LD      E,A
E321  2157D7    LD      HL,#D757 ; @OPTAB {ADRTB3} <KW_ARITH_OP_FNS> [PRITAB]
E324  19        ADD     HL,DE ; Localiza endereço na tabela de operadores.
E325  78        LD      A,B ; Precedência do operador anterior.
E326  56        LD      D,(HL) ; Obtém precedência do operador atual.
E327  BA        CP      D
E328  D0        RET     NC ; Retorna se a precedência anterior for maior ou igual à atual.
E329  23        INC     HL ; HL aponta para o endereço da rotina do operador.
E32A  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM] ; Garante que operando é numérico.
; {SNLY12} [STKTHS]
E32D  C5        PUSH    BC ; Preserva precedência e token do operador anterior.
E32E  01DFE2    LD      BC,#E2DF ; @RETAOP {SNALY9} <ArithParse> [EVAL3] ; Forja retorno para quando uma precedência menor for encontrada.
E331  C5        PUSH    BC
E332  43        LD      B,E ; Preserva operador.
E333  4A        LD      C,D ; Preserva precedência.
E334  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP] ; Preserva operando.
E337  58        LD      E,B ; Restaura operador.
E338  51        LD      D,C ; Restaura precedência.
E339  4E        LD      C,(HL) ; BC aponta para a rotina do operador.
E33A  23        INC     HL
E33B  46        LD      B,(HL)
E33C  23        INC     HL
E33D  C5        PUSH    BC ; Preserva endereço da rotina do operador.
E33E  2AA803    LD      HL,(#03A8) ; {LBYTEX} [CUROPR] ; Restaura endereço do operador atual.
E341  C3D3E2    JP      #E2D3 ; @LPOPER {SNALY7} [EVAL1] ; Laço até encontrar uma precedência menor.

; @EVAL {SNLY13} <EvalTerm> [OPRND]
; Obtém um operando em uma expressão (ou uma subexpressão entre parênteses).
E344  AF        XOR     A ; Tipo inicial assumido = numérico.
E345  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
E348  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; {MOER}
E34B  1E24      LD      E,#24 ; erro "FO"
E34D  CA56D8    JP      Z,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR] ; ?FO ERRO se instrução acabou.
E350  DAEFED    JP      C,#EDEF ; {VALNRM} <FIn>  [ASCTFP] ; É dígito: interpreta literal numérico.
E353  CDDCDE    CALL    #DEDC ; @ISLET {CLETST} <CharIsAlpha> [CHKLTR]
E356  D292E3    JP      NC,#E392 ; {SNLY17} <EvalVarTerm> [CONVAR] ; é letra: interpreta variável/matriz.
E359  FEBE      CP      #BE ; token "+"
E35B  28E7      JR      Z,#E344 ; @EVAL {SNLY13} <EvalTerm> [OPRND] ; operador '+' unário: ignora e recomeça do próximo caracter.
E35D  FE2E      CP      '.'
E35F  CAEFED    JP      Z,#EDEF ; {VALNRM} <FIn> [ASCTFP] ; é ponto: interpreta literal numérico.
E362  FEBF      CP      #BF ; token "-"
E364  281B      JR      Z,#E381 ; {SNLY15} <EvalMinusTerm> [MINUS] ; operador '-' unário.
E366  FE22      CP      '"'
E368  CAF6E6    JP      Z,#E6F6 ; {SOPRND} [QTSTR] ; é string
E36B  FEBB      CP      #BB ; token "NOT"
E36D  CA5FE4    JP      Z,#E45F ; {NOT} [EVNOT]
E370  FEB8      CP      #B8 ; token "FN"
E372  CA65E6    JP      Z,#E665 ; {FN} [DOFN]
E375  D6C8      SUB     #C8 ; primeiro token de função ("SGN").
E377  302A      JR      NC,#E3A3 ; @NTMRND {SNLY19} <EvalInlineFn> [FNOFST] ; Avalia função.
; @PARCHK {SNLY14} <EvalBracketed> [EVLPAR]
; Avalia expressão entre parênteses.
E379  CDCCE2    CALL    #E2CC ; EVALPAR @FRMPRN {SNALY6} [OPNPAR] ; Consome abre-parêntese e primeiro argumento.
E37C  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E37F  29        DB      ')'
E380  C9        RET

; {SNLY15} <EvalMinusTerm> [MINUS]
; Avalia operador "menos" unário (-expr).
E381  167D      LD      D,#7D ; Precedência de "-" = 125.
E383  CDD3E2    CALL    #E2D3 ; @LPOPER {SNALY7} [EVAL1] ; Avalia até encontrar uma precedência menor.
E386  2AB103    LD      HL,(#03B1) ; {NTOKPT} [NXTOPR] ; Obtém endereço do próximo operador.
E389  E5        PUSH    HL ; Preserva endereço do próximo operador.
E38A  CDFCEC    CALL    #ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
; @LABBCK {SNLY16} [RETNUM]
; Checa se FLOAT contém valor numérico e retorna.
E38D  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E390  E1        POP     HL ; Restaura endereço do próximo operador.
E391  C9        RET

; {SNLY17} <EvalVarTerm> [CONVAR]
; Avalia variável/matriz.
E392  CD84E4    CALL    #E484 ; @PTRGET {DIM1} <GetVar> [GETVAR] ; Obtém endereço da variável em DE.
; {SNLY18} [FRMEVL]
E395  E5        PUSH    HL ; Preserva ponteiro de interpretação do BASIC.
E396  EB        EX      DE,HL ; Endereço da variável em HL.
E397  22BF03    LD      (#03BF),HL ; @FACLO {WRA1} <FACCUM> [FPREG] ; Preserva endereço da variável.
E39A  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE]
E39D  B7        OR      A ; É tipo numérico?
E39E  CC11ED    CALL    Z,#ED11 ; FLOATHL {OPKOP} <FLoadFromMem> [PHLTFP] ; Sim: Move conteúdo para FLOAT.
E3A1  E1        POP     HL ; Restaura ponteiro de interpretação do BASIC.
E3A2  C9        RET

; @NTMRND {SNLY19} <EvalInlineFn> [FNOFST]
; Avalia função do BASIC.
; A já contem o valor do token da função subtraído
; de $C8 (o valor do primeiro token de função).
E3A3  0600      LD      B,#00 ; BC = 2 * A (posição relativa do endereço da função na tabela de endereços).
E3A5  07        RLCA
E3A6  4F        LD      C,A
E3A7  C5        PUSH    BC ; Salva na pilha.
E3A8  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E3AB  79        LD      A,C
E3AC  FE29      CP      #29 ; Desvia se não for MID$, LEFT$ ou RIGHT$.
E3AE  3818      JR      C,#E3C8 ; @OKNORM {SNLY29} [FNVAL]

; @{
; A maioria das funções recebe um só argumento.
; O endereço de retorno dessas funções é uma pequena rotina
; que checa se VALTYP é 0 (numérico) e desempilha
; o ponteiro de texto. Então funções normais que retornam strings (i.e. CHR$)
; devem desempilhar o endereço de retorno de @LABBCK e desempilhar o
; ponteiro de texto e então retornar para @FRMEVL.
;
; As funções "engraçadas" podem receber mais de um argumento,
; o primeiro dos quais deve ser string, e o segundo dos quais
; deve ser um número entre 0 e 256. O ponteiro de texto é
; passado para estas funções a fim de que argumentos adicionais
; possam ser lidos. O ponteiro de texto é passado em [D,E].
; O fecha-parêntese deve ser checado e o retorno é diretamente
; para @FRMEVL com [H,L] contendo o ponteiro de texto apontando para além do ")".
; O ponteiro para o descritor do argumento string
; é armazenado na pilha sob o valor do argumento
; inteiro (2 bytes).
; }

;
; Prepara avaliação de MID$, LEFT$, RIGHT$.
E3B0  CDCCE2    CALL    #E2CC ; EVALPAR @FRMPRN {SNALY6} [OPNPAR] ; Consome abre-parêntese e primeiro argumento.
E3B3  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E3B6  2C        DB      ','
E3B7  CDC0E2    CALL    #E2C0 ; NUM?TI @CHKSTR {SNALY4} [TSTSTR]
E3BA  EB        EX      DE,HL
E3BB  2ABF03    LD      HL,(#03BF) ; @FACLO {WRA1} <FACCUM> [FPREG]
E3BE  E3        EX      (SP),HL
E3BF  E5        PUSH    HL
E3C0  EB        EX      DE,HL
E3C1  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
E3C4  EB        EX      DE,HL
E3C5  E3        EX      (SP),HL ; Recupera posição relativa do endereço da função na tabela de endereços.
E3C6  1808      JR      #E3D0 ; @FINGO {SNLY21} [GOFUNC]

; @OKNORM {SNLY29} [FNVAL]
; Prepara avaliação das demais funções.
E3C8  CD79E3    CALL    #E379 ; @PARCHK {SNLY14} <EvalBracketed> [EVLPAR] ; Avalia parâmetro seguido de ")".
E3CB  E3        EX      (SP),HL ; Recupera posição relativa do endereço da função na tabela de endereços.
E3CC  118DE3    LD      DE,#E38D ; @LABBCK {SNLY16} [RETNUM] ; Forja retorno para teste de valor numérico.
E3CF  D5        PUSH    DE

; @FINGO {SNLY21} [GOFUNC]
; Salta para rotina que interpreta a função.
E3D0  0161D5    LD      BC,#D561 ; @FUNDSP {ADRTB2} <KW_INLINE_FNS> [FNCTAB]
; @DISPAT
E3D3  09        ADD     HL,BC
E3D4  4E        LD      C,(HL)
E3D5  23        INC     HL
E3D6  66        LD      H,(HL)
E3D7  69        LD      L,C
E3D8  E9        JP      (HL)

; BOR:
; @ORO {OR}
; A instrução abaixo oculta a instrução
; ; BAND:
; ; @ANDO {AND}
; E3DA  AF        XOR     A
; que só pode ser atingida por jump.
E3D9  F6AF      OR      #AF
E3DB  F5        PUSH    AF
E3DC  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E3DF  CDF0DE    CALL    #DEF0 ; {EPRVL3} [DEINT]
E3E2  F1        POP     AF
E3E3  EB        EX      DE,HL
E3E4  C1        POP     BC
E3E5  E3        EX      (SP),HL
E3E6  EB        EX      DE,HL
E3E7  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
E3EA  F5        PUSH    AF
E3EB  CDF0DE    CALL    #DEF0 ; {EPRVL3} [DEINT]
E3EE  F1        POP     AF
E3EF  C1        POP     BC
E3F0  79        LD      A,C
E3F1  212FE6    LD      HL,#E62F ; FLOATAC {FRE2} [ACPASS]
E3F4  2005      JR      NZ,#E3FB ; {SNLY23} [POR1]
E3F6  A3        AND     E
E3F7  4F        LD      C,A
E3F8  78        LD      A,B
E3F9  A2        AND     D
E3FA  E9        JP      (HL)

; {SNLY23} [POR1]
E3FB  B3        OR      E
E3FC  4F        LD      C,A
E3FD  78        LD      A,B
E3FE  B2        OR      D
E3FF  E9        JP      (HL)
;
; {SNLY24} [TSTRED]
E400  2112E4    LD      HL,#E412 ; {SNLY25} [CMPLOG]
E403  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE]
E406  1F        RRA
E407  7A        LD      A,D
E408  17        RLA
E409  5F        LD      E,A
E40A  1664      LD      D,#64 ; 100, precedência relacional.
E40C  78        LD      A,B
E40D  BA        CP      D
E40E  D0        RET     NC
E40F  C32DE3    JP      #E32D ; {SNLY12} [STKTHS]

; {SNLY25} [CMPLOG]
E412  14E4      DW      #E414 ; {SNLY26} [CMPLG1]
; {SNLY26} [CMPLG1]
E414  79        LD      A,C
E415  B7        OR      A
E416  1F        RRA
E417  C1        POP     BC
E418  D1        POP     DE
E419  F5        PUSH    AF
E41A  CDC1E2    CALL    #E2C1 ; {SNALY5} [CHKTYP]
E41D  2155E4    LD      HL,#E455 ; {SNLY28} [CMPRES]
E420  E5        PUSH    HL
E421  CA4DED    JP      Z,#ED4D ; CPFLOATBCDE {VORZ1} <FCompare> [CMPNUM]
E424  AF        XOR     A
E425  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
E428  D5        PUSH    DE
E429  CD6FE8    CALL    #E86F; POPTMPSTR @FREFAC {STRZS1} [GSTRCU]
E42C  7E        LD      A,(HL)
E42D  23        INC     HL
E42E  23        INC     HL
E42F  4E        LD      C,(HL)
E430  23        INC     HL
E431  46        LD      B,(HL)
E432  D1        POP     DE
E433  C5        PUSH    BC
E434  F5        PUSH    AF
E435  CD73E8    CALL    #E873 ; {STRZS3} [GSTRDE]
E438  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
E43B  F1        POP     AF
E43C  57        LD      D,A
E43D  E1        POP     HL
; {SNLY27} [CMPSTR]
E43E  7B        LD      A,E
E43F  B2        OR      D
E440  C8        RET     Z
E441  7A        LD      A,D
E442  D601      SUB     #01
E444  D8        RET     C
E445  AF        XOR     A
E446  BB        CP      E
E447  3C        INC     A
E448  D0        RET     NC
E449  15        DEC     D
E44A  1D        DEC     E
E44B  0A        LD      A,(BC)
E44C  BE        CP      (HL)
E44D  23        INC     HL
E44E  03        INC     BC
E44F  28ED      JR      Z,#E43E ; {SNLY27} [CMPSTR]
E451  3F        CCF
E452  C3DEEC    JP      #ECDE ; {TSGNM2} [FLGDIF]

; {SNLY28} [CMPRES]
E455  3C        INC     A
E456  8F        ADC     A,A
E457  C1        POP     BC
E458  A0        AND     B
E459  C6FF      ADD     A,#FF
E45B  9F        SBC     A,A
E45C  C3E5EC    JP      #ECE5 ; {SGN0} <FCharToFloat> [FLGREL]

; {NOT} [EVNOT]
; Avalia NOT.
E45F  165A      LD      D,#5A
E461  CDD3E2    CALL    #E2D3 ; @LPOPER {SNALY7} [EVAL1]
E464  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E467  CDF0DE    CALL    #DEF0 ; {EPRVL3} [DEINT]
E46A  7B        LD      A,E
E46B  2F        CPL
E46C  4F        LD      C,A
E46D  7A        LD      A,D
E46E  2F        CPL
E46F  CD2FE6    CALL    #E62F ; FLOATAC {FRE2} [ACPASS]
E472  C1        POP     BC
E473  C3DFE2    JP      #E2DF ; @RETAOP {SNALY9} <ArithParse> [EVAL3]

; Laço da instrução DIM. Verifica se
; há mais uma matriz a dimensionar.
; @DIMCON {DIM0} [DIMRET]
E476  2B        DEC     HL
E477  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E47A  C8        RET     Z
E47B  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E47E  2C        DB      ','

; BDIM
; @DIM {DIM} [DIM]
; Forja retorno.
E47F  0176E4    LD      BC,#E476 ; @DIMCON {DIM0} [DIMRET]
E482  C5        PUSH    BC
; A instrução abaixo oculta a instrução
; @PTRGET {DIM1} <GetVar> [GETVAR]: ; Obtém o endereço do valor de uma variável em DE.
; E484  AF        XOR     A ; Estamos avaliando, não dimensionando.
; que só pode ser atingida por jump.
E483  F6AF      OR      #AF ; Estamos dimensionando, não avaliando.
; @PTRGT1
E485  328F03    LD      (#038F),A ; @DIMFLG {LOCCRE} <DIM_OR_EVAL> [LCRFLG]
; Primeira letra em B.
E488  46        LD      B,(HL)
; @PTRGT2 {DIM2} [GTFNAM]
; Se não for letra, SN ERRO.
E489  CDDCDE    CALL    #DEDC ; @ISLET {CLETST} <CharIsAlpha> [CHKLTR]
E48C  DA48D8    JP      C,#D848 ; SNERRO @SNERR
; Assume inicialmente 2ª letra ausente
; (=#00).
E48F  AF        XOR     A
E490  4F        LD      C,A
; Assume inicialmente tipo numérico.
E491  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
; Próximo caracter é alfanumérico?
E494  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E497  3805      JR      C,#E49E ; @ISSEC {DIM3} [SVNAM2]
E499  CDDCDE    CALL    #DEDC ; @ISLET {CLETST} <CharIsAlpha> [CHKLTR]
E49C  380B      JR      C,#E4A9 ; @NOSEC {DIM5} [CHARTY]
; @ISSEC {DIM3} [SVNAM2]
; Sim: Armazena em C e ignora caracteres
; alfanuméricos seguintes.
E49E  4F        LD      C,A
; \EATEM {DIM4} [ENDNAM]
E49F  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E4A2  38FB      JR      C,#E49F ; \EATEM {DIM4} [ENDNAM]
E4A4  CDDCDE    CALL    #DEDC ; @ISLET {CLETST} <CharIsAlpha> [CHKLTR]
E4A7  30F6      JR      NC,#E49F ; \EATEM {DIM4} [ENDNAM]
; @NOSEC {DIM5} [CHARTY]
; Próximo caracter é "$"?
E4A9  D624      SUB     '$'
E4AB  200A      JR      NZ,#E4B7 ; \NOTSTR {DIM6} [NOTSTR]
; Sim: Assume tipo string e soma
; #80 ao código ASCII do 2º caracter.
E4AD  3C        INC     A ; A = 1 (tipo string).
E4AE  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
E4B1  0F        RRCA    ; A = 128.
E4B2  81        ADD     A,C
E4B3  4F        LD      C,A
E4B4  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; \NOTSTR {DIM6} [NOTSTR]
; Desvia se matriz ($03AC contém 1).
E4B7  3AAC03    LD      A,(#03AC) ; @SUBFLG {FORFLG} [FORFLG]
E4BA  3D        DEC     A
E4BB  CA4FE5    JP      Z,#E54F ; @ERSFIN {DIM16} [ARLDSV]
; Desvia se FN XX e o próximo caracter é "(".
E4BE  F2C7E4    JP      P,#E4C7 ; @NOARYS {DIM7} [NSCFOR]
E4C1  7E        LD      A,(HL)
E4C2  D628      SUB     '('
E4C4  CA28E5    JP      Z,#E528 ; @ISARY {DIM14} [SBSCPT]
; @NOARYS {DIM7} [NSCFOR]
E4C7  AF        XOR     A
E4C8  32AC03    LD      (#03AC),A ; @SUBFLG {FORFLG} [FORFLG]
E4CB  E5        PUSH    HL
; Procura o nome da variável na área
; de variáveis.
; DE = início da área de matrizes.
E4CC  2AB903    LD      HL,(#03B9) ; @ARYTAB {DVARPT} <VAR_ARRAY_BASE> [VAREND]
E4CF  EB        EX      DE,HL
; HL = início da área de variáveis.
E4D0  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
; @LOPFND {DIM8} [FNDVAR]
E4D3  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E4D6  2810      JR      Z,#E4E8 ; @NOTFNS {DIM10} [CFEVAL]
E4D8  79        LD      A,C
E4D9  96        SUB     (HL)
E4DA  23        INC     HL
E4DB  2002      JR      NZ,#E4DF ; {DIM9} [FNTHR]
E4DD  78        LD      A,B
E4DE  96        SUB     (HL)
; {DIM9} [FNTHR]
E4DF  23        INC     HL
; Desvia se encontrou a variável.
E4E0  2838      JR      Z,#E51A ; @FNDITV {DIM12} [RETADR]
E4E2  23        INC     HL
E4E3  23        INC     HL
E4E4  23        INC     HL
E4E5  23        INC     HL
E4E6  18EB      JR      #E4D3 ; @LOPFND {DIM8} [FNDVAR]

; @NOTFNS {DIM10} [CFEVAL]
; Terminou a busca e não encontrou o nome da variável.

; Se foi chamado de #E392 {SNLY17} <EvalVarTerm> [CONVAR],
; desvia para não criar a variável.
E4E8  E1        POP     HL ; Recupera ponteiro de execução do BASIC em HL.
E4E9  E3        EX      (SP),HL ; Preserva ponteiro, recupera endereço de retorno em HL.
E4EA  D5        PUSH    DE ; Preserva endereço do byte seguinte ao fim da área de variáveis.
E4EB  1195E3    LD      DE,#E395 ; @RETVAR \ISVRET-1 {SNLY17+3} <EvalVarTerm+3> [CONVAR+3].
E4EE  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E4F1  D1        POP     DE
E4F2  2829      JR      Z,#E51D ; RSTFLOAT @ZERO \LDZR {DIM13} [RETNUL]
E4F4  E3        EX      (SP),HL ;
E4F5  E5        PUSH    HL
; Avança a área de matrizes em 6 bytes,
; para dar espaço para um novo
; descritor na área de variáveis.
E4F6  C5        PUSH    BC
E4F7  010600    LD      BC,#0006
E4FA  2ABB03    LD      HL,(#03BB) ; {FSLPTR} <VAR_TOP> [ARREND]
E4FD  E5        PUSH    HL
E4FE  09        ADD     HL,BC
E4FF  C1        POP     BC
E500  E5        PUSH    HL
E501  CD16D8    CALL    #D816 ; {LININ} <CopyMemoryUp> [MOVUP]
E504  E1        POP     HL
; Atualiza ponteiros do início da
; área de matrizes e da área livre.
E505  22BB03    LD      (#03BB),HL ; {FSLPTR} <VAR_TOP> [ARREND]
E508  60        LD      H,B
E509  69        LD      L,C
E50A  22B903    LD      (#03B9),HL ; @ARYTAB {DVARPT} <VAR_ARRAY_BASE> [VAREND]
; {DIM11} [ZEROLP]
; Zera o novo descritor.
E50D  2B        DEC     HL
E50E  3600      LD      (HL),#00
E510  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E513  20F8      JR      NZ,#E50D ; {DIM11} [ZEROLP]
; Armazena o nome da variável.
E515  D1        POP     DE
E516  73        LD      (HL),E
E517  23        INC     HL
E518  72        LD      (HL),D
E519  23        INC     HL
; DE termina apontando para o primeiro
; byte de dados do descritor.
; C?B?
;        ^DE

; @FNDITV {DIM12} [RETADR]
E51A  EB        EX      DE,HL
E51B  E1        POP     HL
E51C  C9        RET

; RSTFLOAT: Põe em FLOAT string nula
; ou numérico zero.
; @ZERO \LDZR {DIM13} [RETNUL]
; Já se chega aqui com A = 0.
E51D  32C203    LD      (#03C2),A ; {WRA1+3} <FACCUM+3> [FPEXP] ; Número/tamanho da string = 0.
E520  21E9D7    LD      HL,#D7E9 ; Endereço de um byte 0 na ROM.
E523  22BF03    LD      (#03BF),HL ; @FACLO {WRA1} <FACCUM> [FPREG]
E526  E1        POP     HL ; Recupera ponto de interpretação do BASIC.
E527  C9        RET     ; Continua a avaliação da expressão.

; @ISARY {DIM14} [SBSCPT]
; Empilha (#038F) ; @DIMFLG {LOCCRE} <DIM_OR_EVAL> [LCRFLG]
E528  E5        PUSH    HL
E529  2A8F03    LD      HL,(#038F) ; @DIMFLG {LOCCRE} <DIM_OR_EVAL> [LCRFLG]
E52C  E3        EX      (SP),HL
; Zera D.
E52D  57        LD      D,A
; {DIM15} [SCPTLP]
E52E  D5        PUSH    DE
E52F  C5        PUSH    BC
E530  CDE4DE    CALL    #DEE4 ; {EPRVAL} [FPSINT]
E533  C1        POP     BC
E534  F1        POP     AF
E535  EB        EX      DE,HL
E536  E3        EX      (SP),HL
E537  E5        PUSH    HL
E538  EB        EX      DE,HL
E539  3C        INC     A
E53A  57        LD      D,A
E53B  7E        LD      A,(HL)
E53C  FE2C      CP      ','
E53E  28EE      JR      Z,#E52E ; {DIM15} [SCPTLP]
E540  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E543  29        DB      ')'
E544  22B103    LD      (#03B1),HL ; {NTOKPT} [NXTOPR]
E547  E1        POP     HL
E548  228F03    LD      (#038F),HL ; @DIMFLG {LOCCRE} <DIM_OR_EVAL> [LCRFLG]
E54B  1E00      LD      E,#00
E54D  D5        PUSH    DE
; A instrução abaixo oculta as
; instuções
; ; @ERSFIN {DIM16} [ARLDSV]
; E54F  E5        PUSH    HL
; E550  F5        PUSH    AF
; que só podem ser atingidas por jump.
E54E  11E5F5    LD      DE,#F5E5
; HL aponta para o inicio da área de matrizes.
E551  2AB903    LD      HL,(#03B9) ; @ARYTAB {DVARPT} <VAR_ARRAY_BASE> [VAREND]
; A instrução abaixo oculta a
; instrução
; {DIM17} <FindArray> [FNDARY]
; E555  19        ADD     HL,DE
; que só pode ser atingida por jump.
E554  3E19      LD      A,#19
; DE aponta para a área livre após as matrizes.
E556  EB        EX      DE,HL
E557  2ABB03    LD      HL,(#03BB) ; {FSLPTR} <VAR_TOP> [ARREND]
E55A  EB        EX      DE,HL
; Desvia se HL chegou ao fim da área de matrizes.
E55B  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E55E  2824      JR      Z,#E584 ; {DIM19} <AllocArray> [CREARY]
; Encontramos a matriz procurada (nome em BC)?
E560  7E        LD      A,(HL)
E561  B9        CP      C
E562  23        INC     HL
E563  2002      JR      NZ,#E567 ; {DIM18} [NXTARY]
E565  7E        LD      A,(HL)
E566  B8        CP      B
; {DIM18} [NXTARY]
E567  23        INC     HL
; DE contém o tamanho da matriz atual.
E568  5E        LD      E,(HL)
E569  23        INC     HL
E56A  56        LD      D,(HL)
E56B  23        INC     HL
; Se não é a que procuramos, tenta a próxima.
E56C  20E7      JR      NZ,#E555 ; {DIM17} <FindArray> [FNDARY]
; Emite MR ERRO se estamos dimensionando matriz já existente.
E56E  3A8F03    LD      A,(#038F) ; @DIMFLG {LOCCRE} <DIM_OR_EVAL> [LCRFLG]
E571  B7        OR      A
E572  C251D8    JP      NZ,#D851 ; MRERRO {DDER} [DDERR]
;
E575  F1        POP     AF
E576  44        LD      B,H
E577  4D        LD      C,L
E578  CA18EC    JP      Z,#EC18 ; POPHLRET {DIM121} [POPHRT]
;
E57B  96        SUB     (HL)
E57C  CADEE5    JP      Z,#E5DE ; {DIM23} [FINDEL]

; IIERRO:
; {BSER} [BSERR]
; {OMER} [OMERR]
E57F  1E10      LD      E,#10 ; erro "II"
E581  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; {DIM19} <AllocArray> [CREARY]
E584  110400    LD      DE,#0004
E587  F1        POP     AF
E588  CAF6DE    JP      Z,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
E58B  71        LD      (HL),C
E58C  23        INC     HL
E58D  70        LD      (HL),B
E58E  23        INC     HL
E58F  4F        LD      C,A
E590  CD27D8    CALL    #D827 ; @GETSTK {TMEMO} <CheckEnoughVarSpace> [CHKSTK]
E593  23        INC     HL
E594  23        INC     HL
E595  22A803    LD      (#03A8),HL ; {LBYTEX} [CUROPR]
E598  71        LD      (HL),C
E599  23        INC     HL
E59A  3A8F03    LD      A,(#038F) ; @DIMFLG {LOCCRE} <DIM_OR_EVAL> [LCRFLG]
E59D  17        RLA
E59E  79        LD      A,C
; {DIM20} [CRARLP]
E59F  010B00    LD      BC,#000B ; Default 10 + 1 dimensões.
E5A2  3002      JR      NC,#E5A6 ; {DIM21} [DEFSIZ]
E5A4  C1        POP     BC
E5A5  03        INC     BC
; {DIM21} [DEFSIZ]
E5A6  71        LD      (HL),C
E5A7  23        INC     HL
E5A8  70        LD      (HL),B
E5A9  23        INC     HL
E5AA  F5        PUSH    AF
E5AB  E5        PUSH    HL
E5AC  CDBEED    CALL    #EDBE ; {FESRCH} [MLDEBC]
E5AF  EB        EX      DE,HL
E5B0  E1        POP     HL
E5B1  F1        POP     AF
E5B2  3D        DEC     A
E5B3  20EA      JR      NZ,#E59F ; {DIM20} [CRARLP]
E5B5  F5        PUSH    AF
E5B6  42        LD      B,D
E5B7  4B        LD      C,E
E5B8  EB        EX      DE,HL
E5B9  19        ADD     HL,DE
E5BA  DA7FE5    JP      C,#E57F ; IIERRO {OMER} [OMERR]
E5BD  CD30D8    CALL    #D830 ; {TMEMO1} [ENFMEM]
E5C0  22BB03    LD      (#03BB),HL ; {FSLPTR} <VAR_TOP> [ARREND]
; {DIM22} <InitElements> [ZERARY]
E5C3  2B        DEC     HL
E5C4  3600      LD      (HL),#00
E5C6  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E5C9  20F8      JR      NZ,#E5C3 ; {DIM22} <InitElements> [ZERARY]
E5CB  03        INC     BC
E5CC  57        LD      D,A
E5CD  2AA803    LD      HL,(#03A8) ; {LBYTEX} [CUROPR]
E5D0  5E        LD      E,(HL)
E5D1  EB        EX      DE,HL
E5D2  29        ADD     HL,HL
E5D3  09        ADD     HL,BC
E5D4  EB        EX      DE,HL
E5D5  2B        DEC     HL
E5D6  2B        DEC     HL
E5D7  73        LD      (HL),E
E5D8  23        INC     HL
E5D9  72        LD      (HL),D
E5DA  23        INC     HL
E5DB  F1        POP     AF
E5DC  3823      JR      C,#E601 ; {DIM25} [ENDDIM]
; {DIM23} [FINDEL]
E5DE  47        LD      B,A
E5DF  4F        LD      C,A
E5E0  7E        LD      A,(HL)
E5E1  23        INC     HL
; O byte a seguir oculta a instrução seguinte.
E5E2  16        DB      #16
; {DIM24} [FNDELP]
E5E3  E1        POP     HL
E5E4  5E        LD      E,(HL)
E5E5  23        INC     HL
E5E6  56        LD      D,(HL)
E5E7  23        INC     HL
E5E8  E3        EX      (SP),HL
E5E9  F5        PUSH    AF
E5EA  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E5ED  D27FE5    JP      NC,#E57F ; IIERRO {BSER} [BSERR]
E5F0  E5        PUSH    HL
E5F1  CDBEED    CALL    #EDBE ; {FESRCH} [MLDEBC]
E5F4  D1        POP     DE
E5F5  19        ADD     HL,DE
E5F6  F1        POP     AF
E5F7  3D        DEC     A
E5F8  44        LD      B,H
E5F9  4D        LD      C,L
E5FA  20E7      JR      NZ,#E5E3 ; {DIM24} [FNDELP]
E5FC  29        ADD     HL,HL
E5FD  29        ADD     HL,HL
E5FE  C1        POP     BC
E5FF  09        ADD     HL,BC
E600  EB        EX      DE,HL
; {DIM25} [ENDDIM]
E601  2AB103    LD      HL,(#03B1) ; {NTOKPT} [NXTOPR]
E604  C9        RET

; BFRE
; {FRE} [FRE]
; DE = início da área livre após
; matrizes.
E605  2ABB03    LD      HL,(#03BB) ; {FSLPTR} <VAR_TOP> [ARREND]
E608  EB        EX      DE,HL
; HL = SP.
E609  210000    LD      HL,#0000
E60C  39        ADD     HL,SP
; Parâmetro é numérico?
E60D  3A9003    LD      A,(#0390) ; @VALTYP {DATYPE} [TYPE]
E610  B7        OR      A
E611  280D      JR      Z,#E620 ; {FRE1} [FRENUM]
; Não: Compacta área de strings.
E613  CD6FE8    CALL    #E86F ; POPTMPSTR @FREFAC {STRZS1} [GSTRCU]
E616  CD75E7    CALL    #E775 ; @GARBA2 {STROP4} [GARBGE] ; Coleta de lixo.
; DE = base da área de strings - 1.
E619  2A4503    LD      HL,(#0345) ; {STDPTR} <STACK_TOP> [STRSPC]
E61C  EB        EX      DE,HL
; HL = ponto atual da área de strings.
E61D  2AA603    LD      HL,(#03A6) ; {SWAPTR} [STRBOT]
; {FRE1} [FRENUM]
; FLOAT = HL - DE e retorna.
E620  7D        LD      A,L
E621  93        SUB     E
E622  5F        LD      E,A
E623  7C        LD      A,H
E624  9A        SBC     A,D
E625  57        LD      D,A
; FLOAT = DE e retorna.
E626  AF        XOR     A
E627  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
E62A  0698      LD      B,#80+24 ; 24 bits.
E62C  C3EAEC    JP      #ECEA ; FLOATBADE {SGN1} <FCharToFloat+5> [RETINT]

; FLOATAC:
; {FRE2} [ACPASS]
E62F  41        LD      B,C
; FLOATAB:
; {FRE3} [ABPASS]
E630  50        LD      D,B
E631  1E00      LD      E,#00
E633  219003    LD      HL,#0390 ; @VALTYP {DATYPE} [TYPE]
E636  73        LD      (HL),E
E637  0690      LD      B,#80+16 ; 16 bits.
E639  C3EAEC    JP      #ECEA ; FLOATBADE {SGN1} <FCharToFloat+5> [RETINT]

; BPOS:
; {POS} [POS]
E63C  3A8E03    LD      A,(#038E) ; {CURPOS} [CURPOS]
; FLOATA:
; @SNGFLT {POS1} [PASSA]
E63F  47        LD      B,A
E640  AF        XOR     A
E641  18ED      JR      #E630 ; FLOATAB {FRE3} [ABPASS]

; BDEF:
E643  CDB0E6    CALL    #E6B0
; Previne uso em modo direto.
E646  CDA2E6    CALL    #E6A2 ; [IDTEST]
; Forja retorno para BDATA.
E649  01C2DF    LD      BC,#DFC2 ; BDATA {DATA} <Data> [DATA]
E64C  C5        PUSH    BC
;
E64D  D5        PUSH    DE
E64E  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E651  28        DB      '('
E652  CD84E4    CALL    #E484 ; @PTRGET {DIM1} <GetVar> [GETVAR]
E655  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E658  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E65B  29        DB      ')'
E65C  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E65F  C6        DB      #C6 ; token "="
E660  44        LD      B,H
E661  4D        LD      C,L
E662  E3        EX      (SP),HL
E663  1838      JR      #E69D           ; (56)

; {FN} [DOFN]
; Avalia FN.
E665  CDB0E6    CALL    #E6B0
E668  D5        PUSH    DE
E669  CD79E3    CALL    #E379 ; @PARCHK {SNLY14} <EvalBracketed> [EVLPAR]
E66C  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E66F  E3        EX      (SP),HL
E670  5E        LD      E,(HL)
E671  23        INC     HL
E672  56        LD      D,(HL)
E673  23        INC     HL
E674  7E        LD      A,(HL)
E675  23        INC     HL
E676  66        LD      H,(HL)
E677  6F        LD      L,A
E678  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E67B  CA54D8    JP      Z,#D854 ; FIERRO
E67E  4E        LD      C,(HL)
E67F  23        INC     HL
E680  46        LD      B,(HL)
E681  23        INC     HL
E682  C5        PUSH    BC
E683  4E        LD      C,(HL)
E684  23        INC     HL
E685  46        LD      B,(HL)
E686  C5        PUSH    BC
E687  2B        DEC     HL
E688  2B        DEC     HL
E689  2B        DEC     HL
E68A  E5        PUSH    HL
E68B  D5        PUSH    DE
E68C  CD2BED    CALL    #ED2B ; HLFLOAT {OPTRAN} <FCopyToMem> [FPTHL]
E68F  E1        POP     HL
E690  CDBCE2    CALL    #E2BC ; {SNALY2} [GETNUM]
E693  2B        DEC     HL
E694  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E697  C248D8    JP      NZ,#D848 ; SNERRO @SNERR
E69A  E1        POP     HL
E69B  D1        POP     DE
E69C  C1        POP     BC
E69D  71        LD      (HL),C
E69E  23        INC     HL
E69F  70        LD      (HL),B
E6A0  184D      JR      #E6EF           ; (77)

; Previne modo programado.
; [IDTEST]:
E6A2  E5        PUSH    HL
E6A3  2A4703    LD      HL,(#0347) ; @CURLIN {CULINO} <CURRENT_LINE> [LINEAT]
E6A6  23        INC     HL
E6A7  7C        LD      A,H
E6A8  B5        OR      L
E6A9  E1        POP     HL
E6AA  C0        RET     NZ

; DIERRO
E6AB  1E16      LD      E,#16 ; erro "DI"
E6AD  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

;
E6B0  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E6B3  B8        DB      #B8 ; token "FN"
E6B4  3E80      LD      A,#80
E6B6  32AC03    LD      (#03AC),A ; @SUBFLG {FORFLG} [FORFLG]
; B = 1ª letra + #80.
E6B9  B6        OR      (HL)
E6BA  47        LD      B,A
E6BB  CD89E4    CALL    #E489 ; @PTRGT2 {DIM2} [GTFNAM]
E6BE  C3BFE2    JP      #E2BF ; STR?TI {SNALY3} [TSTNUM]

; BSTR$
; @STR$ {STR_} [STR]
E6C1  CDBFE2    CALL    #E2BF ; STR?TI {SNALY3} [TSTNUM]
E6C4  CD96EE    CALL    #EE96 ; STRFLOAT @FOUT {NUMKON} [NUMASC] ; Converte número em texto em #03C4.
; @STR$1
E6C7  CDF5E6    CALL    #E6F5 ; NEWSTRREC @STRLIT {SLEN0} [CRTST]
E6CA  CD6FE8    CALL    #E86F ; POPTMPSTR @FREFAC {STRZS1} [GSTRCU]
E6CD  01C9E8    LD      BC,#E8C9 ; @FINBCK {CHR_1} [TOPOOL] ; Forja retorno.
E6D0  C5        PUSH    BC
; @STRCPY {STR_1} [SAVSTR]
E6D1  7E        LD      A,(HL) ; A = Tamanho da string.
E6D2  23        INC     HL
E6D3  23        INC     HL
E6D4  E5        PUSH    HL
E6D5  CD4CE7    CALL    #E74C ; ALOCA @GETSPA {STROP} [TESTR] ; Há espaço suficiente?
E6D8  E1        POP     HL
E6D9  4E        LD      C,(HL) ; BC = Endereço da string.
E6DA  23        INC     HL
E6DB  46        LD      B,(HL)
E6DC  CDE9E6    CALL    #E6E9 ; {SADTB1} [CRTMST]
E6DF  E5        PUSH    HL
E6E0  6F        LD      L,A
E6E1  CD63E8    CALL    #E863 ; {STRMV1} [TOSTRA] ; ; Copia L bytes de BC para DE. (Move para área de strings.)
E6E4  D1        POP     DE
E6E5  C9        RET

; {STADTB} [MKTMST]
; Aloca A bytes e cria em #03A2 {STRDAT} [TMPSTR]
; um registro de string para essa área.
; No final HL = #03A2, DE = endereço do conteúdo da string.
E6E6  CD4CE7    CALL    #E74C ; ALOCA @GETSPA {STROP} [TESTR]

; Cria em #03A2 {STRDAT} [TMPSTR] um registro de string para a
; string de comprimento A apontada por DE.
; {SADTB1} [CRTMST]
E6E9  21A203    LD      HL,#03A2 ; {STRDAT} [TMPSTR]
E6EC  E5        PUSH    HL
E6ED  77        LD      (HL),A
E6EE  23        INC     HL
E6EF  23        INC     HL
E6F0  73        LD      (HL),E
E6F1  23        INC     HL
E6F2  72        LD      (HL),D
E6F3  E1        POP     HL
E6F4  C9        RET

; NEWSTRREC: Cria em $03A2 {STRDAT} [TMPSTR]
; um novo registro de string temporário para
; a string apontada por HL, transferindo-o
; depois para a pilha de registros de strings
; temporários (3 registros de 4 bytes a partir
; de $0396 {LSPTBG} [TMSTPL]).
; Se a pilha estiver cheia emite "?CC ERRO".
; A string apontada por HL termina em aspas
; ou #00.
; Ao final:
; * $0390 @VALTYP {DATYPE} [TYPE] recebe 1, indicando
; tipo string.
; * Os dois primeiros bytes de $3BF FLOAT
; @FACLO {WRA1} <FACCUM> [FPREG] apontam para o
; registro temporário de string recém
; inserido na pilha.
; * HL (ponteiro de interpretação do BASIC)
; aponta para a posição seguinte ao fim da
; string. Se tiver terminado em aspas, pula
; também caracteres de espaço que porventura
; houver na sequência.
; * A contém o caracter sob o ponteiro de
; interpretação do BASIC.
; @STRLIT {SLEN0} [CRTST]
E6F5  2B        DEC     HL

; Avalia literal string terminada com 0
; ou aspas a partir de HL + 1.
; {SOPRND} [QTSTR]: 
; B e D: Delimitadores.
E6F6  0622      LD      B,'"'
; Avalia literal string terminada com 0
; ou caracter em B a partir de HL + 1.
E6F8  50        LD      D,B

; Avalia literal string terminada com 0
; ou pelos caracteres em B ou D
; a partir de HL + 1.
; {STRLEN} [DTSTR]
E6F9  E5        PUSH    HL ; Empilha endereço inicial da string - 1.
E6FA  0EFF      LD      C,-1 ; Contador do tamanho da string.
; Avança até delimitador.
; {SLEN} [QTSTLP]
E6FC  23        INC     HL
E6FD  7E        LD      A,(HL)
; {SLEN1}
E6FE  0C        INC     C
E6FF  B7        OR      A
E700  2806      JR      Z,#E708 ; {SLEN2} [CRTSTE]
E702  BA        CP      D
E703  2803      JR      Z,#E708 ; {SLEN2} [CRTSTE]
E705  B8        CP      B
E706  20F4      JR      NZ,#E6FC ; {SLEN} [QTSTLP]
; Avança ponteiro de interpretação se a string terminou com aspas.
; {SLEN2} [CRTSTE]
E708  FE22      CP      '"'
E70A  CCA0DD    CALL    Z,#DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; Cria descritor em #03A2 {STRDAT} [TMPSTR].
E70D  E3        EX      (SP),HL ; Empilha ponteiro de interpretação e restaura endereço inicial da string - 1 em HL.
E70E  23        INC     HL
E70F  EB        EX      DE,HL ; DE = endereço inicial da string.
E710  79        LD      A,C ; A = tamanho da string.
E711  CDE9E6    CALL    #E6E9 ; {SADTB1} [CRTMST]; Cria registro temporário em #03A2 {STRDAT} [TMPSTR].
; Empilha o registro temporário em #03A2 na pilha de descritores de strings. (Destrói FLOAT.)
; {SLEN3} [TSTOPL]
E714  11A203    LD      DE,#03A2 ; {STRDAT} [TMPSTR] ; DE = registro temporário recém criado.
E717  2A9403    LD      HL,(#0394) ; {SPTPTR} [TMSTPT] ; HL = end. próximo espaço livre para registro de string.
E71A  22BF03    LD      (#03BF),HL ; @FACLO {WRA1} <FACCUM> [FPREG] ; Será o ponteiro para o novo registro. Reserva.
; Assume tipo string.
E71D  3E01      LD      A,#01
E71F  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
; Copia o registro recém criado para pilha de descritores.
E722  CD2EED    CALL    #ED2E ; LD4HLDE {OPTRN1}
; Se HL e DE são iguais, significa que a área para strings
; temporárias já está repleta. Gerar erro "CC" adiante.
E725  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
; Atualiza ponteiro.
E728  229403    LD      (#0394),HL ; {SPTPTR} [TMSTPT]
E72B  E1        POP     HL ; Restaura ponteiro de interpretação.
E72C  7E        LD      A,(HL) ; Obtém caracter em A.
E72D  C0        RET     NZ ; Retorna se tudo acabou bem.

; Gera erro "CC".
; {STER}
E72E  1E1E      LD      E,#1E ; erro "CC"
; {STER1}
E730  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; {TEXTO0} <PrintString-1> [PRNUMS]
E733  23        INC     HL
; PRINTSTRHL: Imprime a string apontada por HL,
; criando primeiramente um registro de string
; para ela.
; {TEXTO} <PrintString> [PRS]
E734  CDF5E6    CALL    #E6F5 ; NEWSTRREC @STRLIT {SLEN0} [CRTST]
; {TEXTO1} [PRS1]
E737  CD6FE8    CALL    #E86F ; POPTMPSTR @FREFAC {STRZS1} [GSTRCU]
E73A  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
E73D  1C        INC     E
; {TEXTO2} [PRSLP]
E73E  1D        DEC     E
E73F  C8        RET     Z
E740  0A        LD      A,(BC)
E741  CD1CDC    CALL    #DC1C ; PRINTAPOS {CHARO} <OutChar> [OUTC]
E744  FE0D      CP      #0D
E746  CCD1E0    CALL    Z,#E0D1 ; POSZERO {CRWDY3}
E749  03        INC     BC
E74A  18F2      JR      #E73E ; {TEXTO2} [PRSLP]

; ALOCA: Aloca A bytes na área de strings.
; O endereço da área alocada retorna em DE.
; @GETSPA {STROP} [TESTR]
E74C  B7        OR      A ; Testa se há espaço suficiente.
; A instrução abaixo oculta a instrução
; ; {STROP1} [GRBDON]
; E74E  POP       AF ; Coleta de lixo feita.
; que só pode ser atingida por jump.
E74D  0EF1      LD      C,#F1 ; Coleta de lixo não feita.
E74F  F5        PUSH    AF
; DE = base da área de strings - 1.
E750  2A4503    LD      HL,(#0345) ; {STDPTR} <STACK_TOP> [STRSPC]
E753  EB        EX      DE,HL
; HL = ponto atual da área de strings - A.
E754  2AA603    LD      HL,(#03A6) ; {SWAPTR} [STRBOT]
E757  2F        CPL
E758  4F        LD      C,A
E759  06FF      LD      B,#FF
E75B  09        ADD     HL,BC
E75C  23        INC     HL
; Desvia se HL < DE.
E75D  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E760  3807      JR      C,#E769 ; {STROP3} [TESTOS] ; Faz coleta de lixo se ainda não tiver sido feita, senão ?FC ERRO.
; Atualiza ponto atual da área de strings.
E762  22A603    LD      (#03A6),HL ; {SWAPTR} [STRBOT]
E765  23        INC     HL
E766  EB        EX      DE,HL ; Endereço da área alocada em DE.
; {STROP2} [POPAF]
E767  F1        POP     AF
E768  C9        RET
; {STROP3} [TESTOS]
E769  F1        POP     AF ; Coleta de lixo já foi feita?
E76A  1E1A      LD      E,#1A ; Sim, não há mais espaço: erro "FC".
E76C  CA56D8    JP      Z,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
E76F  BF        CP      A ; Indica que a coleta de lixo terá sido feita.
E770  F5        PUSH    AF
E771  014EE7    LD      BC,#E74E ; {STROP1} [GRBDON] ; Forja retorno para nova tentativa de alocação após a coleta de lixo.
E774  C5        PUSH    BC

; Coleta de lixo.
; @GARBA2 {STROP4} [GARBGE]
E775  2A9203    LD      HL,(#0392) ; {MEMSIZ} [LSTRAM]
E778  22A603    LD      (#03A6),HL ; {SWAPTR} [STRBOT]
E77B  210000    LD      HL,#0000
E77E  E5        PUSH    HL
E77F  2A4503    LD      HL,(#0345) ; {STDPTR} <STACK_TOP> [STRSPC]
E782  E5        PUSH    HL
E783  219603    LD      HL,#0396 ; {LSPTBG} [TMSTPL]
E786  EB        EX      DE,HL
E787  2A9403    LD      HL,(#0394) ; {SPTPTR} [TMSTPT]
E78A  EB        EX      DE,HL
E78B  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E78E  0186E7    LD      BC,#E786
E791  2042      JR      NZ,#E7D5        ; (66)
E793  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
E796  EB        EX      DE,HL
E797  2AB903    LD      HL,(#03B9) ; @ARYTAB {DVARPT} <VAR_ARRAY_BASE> [VAREND]
E79A  EB        EX      DE,HL
E79B  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E79E  280A      JR      Z,#E7AA         ; (10)
E7A0  7E        LD      A,(HL)
E7A1  23        INC     HL
E7A2  23        INC     HL
E7A3  B7        OR      A
E7A4  CDD8E7    CALL    #E7D8
E7A7  18ED      JR      #E796           ; (-19)
E7A9  C1        POP     BC
E7AA  EB        EX      DE,HL
E7AB  2ABB03    LD      HL,(#03BB) ; {FSLPTR} <VAR_TOP> [ARREND]
E7AE  EB        EX      DE,HL
E7AF  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E7B2  284A      JR      Z,#E7FE         ; (74)
E7B4  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
E7B7  7B        LD      A,E
E7B8  E5        PUSH    HL
E7B9  09        ADD     HL,BC
E7BA  B7        OR      A
E7BB  F2A9E7    JP      P,#E7A9
E7BE  22A803    LD      (#03A8),HL ; {LBYTEX} [CUROPR]
E7C1  E1        POP     HL
E7C2  4E        LD      C,(HL)
E7C3  0600      LD      B,#00
E7C5  09        ADD     HL,BC
E7C6  09        ADD     HL,BC
E7C7  23        INC     HL
E7C8  EB        EX      DE,HL
E7C9  2AA803    LD      HL,(#03A8) ; {LBYTEX} [CUROPR]
E7CC  EB        EX      DE,HL
E7CD  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E7D0  28D8      JR      Z,#E7AA         ; (-40)
E7D2  01C8E7    LD      BC,#E7C8
E7D5  C5        PUSH    BC
E7D6  F680      OR      #80
E7D8  7E        LD      A,(HL)
E7D9  23        INC     HL
E7DA  23        INC     HL
E7DB  5E        LD      E,(HL)
E7DC  23        INC     HL
E7DD  56        LD      D,(HL)
E7DE  23        INC     HL
E7DF  F0        RET     P
E7E0  B7        OR      A
E7E1  C8        RET     Z
E7E2  44        LD      B,H
E7E3  4D        LD      C,L
E7E4  2AA603    LD      HL,(#03A6) ; {SWAPTR} [STRBOT]
E7E7  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E7EA  60        LD      H,B
E7EB  69        LD      L,C
E7EC  D8        RET     C
E7ED  E1        POP     HL
E7EE  E3        EX      (SP),HL
E7EF  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL]
E7F2  E3        EX      (SP),HL
E7F3  E5        PUSH    HL
E7F4  60        LD      H,B
E7F5  69        LD      L,C
E7F6  D0        RET     NC
E7F7  C1        POP     BC
E7F8  F1        POP     AF
E7F9  F1        POP     AF
E7FA  E5        PUSH    HL
E7FB  D5        PUSH    DE
E7FC  C5        PUSH    BC
E7FD  C9        RET
E7FE  D1        POP     DE
E7FF  E1        POP     HL
E800  7D        LD      A,L
E801  B4        OR      H
E802  C8        RET     Z
E803  2B        DEC     HL
E804  46        LD      B,(HL)
E805  2B        DEC     HL
E806  4E        LD      C,(HL)
E807  E5        PUSH    HL
E808  2B        DEC     HL
E809  2B        DEC     HL
E80A  6E        LD      L,(HL)
E80B  2600      LD      H,#00
E80D  09        ADD     HL,BC
E80E  50        LD      D,B
E80F  59        LD      E,C
E810  2B        DEC     HL
E811  44        LD      B,H
E812  4D        LD      C,L
E813  2AA603    LD      HL,(#03A6) ; {SWAPTR} [STRBOT]
E816  CD19D8    CALL    #D819
E819  E1        POP     HL
E81A  71        LD      (HL),C
E81B  23        INC     HL
E81C  70        LD      (HL),B
E81D  69        LD      L,C
E81E  60        LD      H,B
E81F  2B        DEC     HL
E820  C378E7    JP      #E778

; {STRSNA} [CONCAT]
E823  C5        PUSH    BC ; Preserva valor de precedência e operador.
E824  E5        PUSH    HL ; Preserva ponteiro de interpretação do programa BASIC.
E825  2ABF03    LD      HL,(#03BF) ; FLOAT @FACLO {WRA1} <FACCUM> [FPREG] ; Obtém ponteiro para registro de string atual (1º operando).
E828  E3        EX      (SP),HL ; Preserva na pilha e restaura o ponteiro de interpretação do programa BASIC.
E829  CD44E3    CALL    #E344 ; @EVAL {SNLY13} <EvalTerm> [OPRND] ; Obtém operando seguinte ao operador "+" (ponteiro em FLOAT).
E82C  E3        EX      (SP),HL ; Preserva ponteiro de interpretação do programa BASIC e restaura o ponteiro para o registro de string do 1º operando.
E82D  CDC0E2    CALL    #E2C0 ; NUM?TI @CHKSTR {SNALY4} [TSTSTR] ; ?TI ERRO se 2º operando não for do tipo string.
E830  7E        LD      A,(HL) ; Obtém comprimento do 1º operando.
E831  E5        PUSH    HL ; Preserva ponteiro para registro de string do 1º operando.
E832  2ABF03    LD      HL,(#03BF) ; FLOAT @FACLO {WRA1} <FACCUM> [FPREG] ; Obtém ponteiro para registro de string do 2º operando, armazenado em FLOAT.
E835  E5        PUSH    HL ; Preserva ponteiro para registro de string do 2º operando.
E836  86        ADD     A,(HL) ; Soma os comprimentos dos dois operandos.
; {LSER}
E837  1E1C      LD      E,#1C ; erro "CL" ; Emite ?CL ERRO se comprimento resultante > 255.
E839  DA56D8    JP      C,#D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]
E83C  CDE6E6    CALL    #E6E6 ; {STADTB} [MKTMST] ; Aloca A bytes para nova string e cria registro de string em $03A2 {STRDAT} [TMPSTR].
E83F  D1        POP     DE ; Restaura ponteiro para registro de string do 2º operando.
E840  CD73E8    CALL    #E873 ; {STRZS3} [GSTRDE] ; [Move to string pool if needed]
E843  E3        EX      (SP),HL ; Preserva ponteiro para registro de string do 2º operando, restaura do 1º.
E844  CD72E8    CALL    #E872 ; {STRZS2} [GSTRHL] ; [Move to string pool if needed]
E847  E5        PUSH    HL ; Preserva ponteiro para registro de string do 1º operando.
E848  2AA403    LD      HL,(#03A4) ; {STRDAT+2}, [TMPSTR+2] ; Endereço do conteúdo da string temporária...
E84B  EB        EX      DE,HL ; ...em DE.
E84C  CD5AE8    CALL    #E85A ; {STRMOV} [SSTSA] ; Copia conteúdo da 1ª string para nova string.
E84F  CD5AE8    CALL    #E85A ; {STRMOV} [SSTSA] ; Copia conteúdo da 2ª string para nova string.
E852  21E2E2    LD      HL,#E2E2 ; {SNALY8+6} [EVAL2+6] ; Forja retorno ao laço de avaliação.
E855  E3        EX      (SP),HL
E856  E5        PUSH    HL
E857  C314E7    JP      #E714 ; {SLEN3} [TSTOPL] ; Empilha o registro temporário em #03A2 na pilha de descritores de strings.

; {STRMOV} [SSTSA]
E85A  E1        POP     HL ; Retira da pilha ponteiro para registro de string sob o endereço de retorno.
E85B  E3        EX      (SP),HL
E85C  7E        LD      A,(HL) ; A = comprimento da string.
E85D  23        INC     HL
E85E  23        INC     HL
E85F  4E        LD      C,(HL) ; BC = ponteiro para o conteúdo da string.
E860  23        INC     HL
E861  46        LD      B,(HL)
E862  6F        LD      L,A ; L = comprimento da string.
; {STRMV1} [TOSTRA]
; Copia L bytes de BC para DE.
E863  2C        INC     L
; {STRMV2} [TSALP]
E864  2D        DEC     L
E865  C8        RET     Z
E866  0A        LD      A,(BC)
E867  12        LD      (DE),A
E868  03        INC     BC
E869  13        INC     DE
E86A  18F8      JR      #E864 ; {STRMV2} [TSALP]

; {STRZSP} [GETSTR]
E86C  CDC0E2    CALL    #E2C0 ; NUM?TI @CHKSTR {SNALY4} [TSTSTR] ; Assegura que seja string.
; POPTMPSTR:
; Faz HL apontar para o último registro
; na pilha de registros de string temporários.
; Se os dois primeiros bytes de FLOAT
; estiverem apontando para esse mesmo registro,
; desempilha-o.
; @FREFAC {STRZS1} [GSTRCU]
E86F  2ABF03    LD      HL,(#03BF) ; FLOAT @FACLO {WRA1} <FACCUM> [FPREG] ; HL aponta para registro de string temporário "atual" (apontado pelos dois primeiros bytes de FLOAT). [Get current string]
; {STRZS2} [GSTRHL]
E872  EB        EX      DE,HL ; DE aponta para registro de string temporário "atual". [Save DE]
; {STRZS3} [GSTRDE]
E873  CD8CE8    CALL    #E88C ; {SPTSRH} [BAKTMP] ; HL aponta para o último registro de string temporária; obtém em BC o endereço do conteúdo dessa string; se DE = HL, desempilha essa string. [Was it last tmp-str?]
E876  EB        EX      DE,HL ; DE aponta para o último registro de string temporária (tenha sido desempilhado ou não); HL aponta para registro de string temporário "atual". [Restore DE]
E877  C0        RET     NZ ; Se não foi desempilhado, retorna. [No - Return]
; Se a string desempilhada foi a última a ter
; área alocada, libera a área correspondente.
E878  D5        PUSH    DE ; [Save string]
E879  50        LD      D,B ; [String block address to DE]
E87A  59        LD      E,C
E87B  1B        DEC     DE ; [Point to length]
E87C  4E        LD      C,(HL) ; [Get string length]
E87D  2AA603    LD      HL,(#03A6) ; {SWAPTR} [STRBOT] ; [Current bottom of string area]
E880  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL] ; [Last one in string area?]
E883  2005      JR      NZ,#E88A ; {STRZS4} [POPHL] ; [No - Return]
E885  47        LD      B,A ; [Clear B (A=0)]
E886  09        ADD     HL,BC ; [Remove string from str' area]
E887  22A603    LD      (#03A6),HL ; {SWAPTR} [STRBOT] ; [Save new bottom of str' area]
; {STRZS4} [POPHL]
E88A  E1        POP     HL
E88B  C9        RET

; Faz HL apontar para o último registro
; na pilha de registros de strings temporários.
; BC recebe o endereço do conteúdo dessa
; string.
; Se DE estiver apontando para esse
; mesmo registro, desempilha-o
; (e retorna com flag Z).
; {SPTSRH} [BAKTMP]
E88C  2A9403    LD      HL,(#0394) ; {SPTPTR} [TMSTPT] ; HL aponta para o próximo espaço livre na pilha de registros de string temporários.
E88F  2B        DEC     HL ; Decrementa para acessar o último registro.
E890  46        LD      B,(HL) ; BC = Endereço do conteúdo da última string temporária.
E891  2B        DEC     HL
E892  4E        LD      C,(HL)
E893  2B        DEC     HL
E894  2B        DEC     HL ; HL = endereço do último registro temporário na pilha.
E895  CD0BDC    CALL    #DC0B ; CP HL,DE {CPREG} <CompareHLDE> [CPDEHL] ; DE aponta para este último registro?
E898  C0        RET     NZ ; Sim
E899  229403    LD      (#0394),HL ; {SPTPTR} [TMSTPT]
E89C  C9        RET

; BLEN {LEN} [LEN]
; Forja retorno para FLOATA.
E89D  013FE6    LD      BC,#E63F ; FLOATA @SNGFLT {POS1} [PASSA]
E8A0  C5        PUSH    BC

; ALEN @LEN1 {LEN1} [GETLEN]
; Obtém em A o comprimento da string.

; Checa tipo string e desempilha se possível.
E8A1  CD6CE8    CALL    #E86C ; {STRZSP} [GETSTR]
; Define tipo numérico (e zera D).
E8A4  AF        XOR     A
E8A5  57        LD      D,A
E8A6  329003    LD      (#0390),A ; @VALTYP {DATYPE} [TYPE]
; Obtém o tamanho da string.
E8A9  7E        LD      A,(HL)
; Se o tamanho é zero, ativa Z.
E8AA  B7        OR      A
E8AB  C9        RET
;
; BASC
; Forja retorno para FLOATA.
; @ASC
E8AC  013FE6    LD      BC,#E63F ; FLOATA @SNGFLT {POS1} [PASSA]
E8AF  C5        PUSH    BC
; AASC @ASC2
; Obtém em A o código ASCII do 1º caracter
; da string. Se a string for vazia, produz
; "PI ERRO".
E8B0  CDA1E8    CALL    #E8A1 ; ALEN @LEN1 {LEN1} [GETLEN]
E8B3  CAF6DE    JP      Z,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
E8B6  23        INC     HL
E8B7  23        INC     HL
E8B8  5E        LD      E,(HL)
E8B9  23        INC     HL
E8BA  56        LD      D,(HL)
E8BB  1A        LD      A,(DE)
E8BC  C9        RET

; BCHR$
; @CHR$ {CHR_} [CHR]
E8BD  3E01      LD      A,#01 ; 1 byte a alocar.
E8BF  CDE6E6    CALL    #E6E6 ; {STADTB} [MKTMST] ; Aloca A bytes para nova string e cria registro de string em $03A2 {STRDAT} [TMPSTR].
E8C2  CD9CE9    CALL    #E99C ; {ARGVL2} [MAKINT] ; Converte ponto flutuante em inteiro 0~255 (A, E).
E8C5  2AA403    LD      HL,(#03A4) ; {STRDAT+2}, [TMPSTR+2] ; HL = Endereço do conteúdo da string.
;
E8C8  73        LD      (HL),E ; Coloca o caracter em E no conteúdo da string.
; @FINBCK {CHR_1} [TOPOOL]
E8C9  C1        POP     BC ; Desempilha retorno para @LABBCK {SNLY16} [RETNUM] teste de valor numérico.
E8CA  C314E7    JP      #E714 ; {SLEN3} [TSTOPL] ; Empilha o registro temporário em #03A2 na pilha de descritores de strings.

; BLEFT$
; @LEFT$ {LEFT_} [LEFT]
E8CD  CD4FE9    CALL    #E94F ; {STREND} [LFRGNM] ; Obtém número e ')'.
E8D0  AF        XOR     A ; Começa do primeiro byte da string.
; @LEFT3 {LEFT_1} [RIGHT1]
E8D1  E3        EX      (SP),HL ; Salva ponto de interpretação, obtém endereço do registro de string.
E8D2  4F        LD      C,A ; Posição inicial.
; @LEFT2 {LEFT_2} [MID1]
E8D3  E5        PUSH    HL
E8D4  7E        LD      A,(HL) ; Tamanho da string.
E8D5  B8        CP      B ; Se for menor do que B...
E8D6  3802      JR      C,#E8DA ; @ALLSTR {LEFT_3} [ALLFOL] ; Pega todos os caracteres seguintes.
E8D8  78        LD      A,B ; Novo comprimento.
; A instrução abaixo oculta a instrução
; ; @ALLSTR {LEFT_3} [ALLFOL]
; E8DA LD C,0 ; Primeiro byte da string.
; que só pode ser atingida por jump.
E8D9  110E00    LD      DE,#000E
E8DC  C5        PUSH    BC ; Salva posição na string.
E8DD  CD4CE7    CALL    #E74C ; ALOCA @GETSPA {STROP} [TESTR] ; Aloca espaço.
E8E0  C1        POP     BC ; Posição na string.
E8E1  E1        POP     HL ; Endereço do registro de string.
E8E2  E5        PUSH    HL ; Salva de novo.
E8E3  23        INC     HL
E8E4  23        INC     HL
E8E5  46        LD      B,(HL)
E8E6  23        INC     HL
E8E7  66        LD      H,(HL) ; HL = endereço do conteúdo da string.
E8E8  68        LD      L,B
E8E9  0600      LD      B,#00 ; BC = deslocamento do primeiro caracter.
E8EB  09        ADD     HL,BC ; HL = endereço do primeiro caracter.
E8EC  44        LD      B,H ; BC = HL.
E8ED  4D        LD      C,L
E8EE  CDE9E6    CALL    #E6E9 ; {SADTB1} [CRTMST] ; Cria registro temporário.
E8F1  6F        LD      L,A ; Comprimento da nova string.
E8F2  CD63E8    CALL    #E863 ; {STRMV1} [TOSTRA] ; Copia L bytes de BC para DE. (Move para a área de strings.)
E8F5  D1        POP     DE ; Limpa pilha.
E8F6  CD73E8    CALL    #E873 ; {STRZS3} [GSTRDE] ; [Move to string pool if needed.]
E8F9  C314E7    JP      #E714 ; {SLEN3} [TSTOPL] ; Empilha o registro temporário em #03A2 na pilha de descritores de strings.

; BRIGHT$
; {RGHT_} [RIGHT]
E8FC  CD4FE9    CALL    #E94F ; {STREND} [LFRGNM] ; Obtém número e ')'.
E8FF  D1        POP     DE ; [Get string length.]
E900  D5        PUSH    DE ; [And re-save.]
E901  1A        LD      A,(DE) ; Obtém comprimento.
E902  90        SUB     B ; Recua B bytes.
E903  18CC      JR      #E8D1; @LEFT3 {LEFT_1} [RIGHT1] ; Obtém substring.

; BMID$
; {MID_} [MID]
E905  EB        EX      DE,HL ; Obtém ponto de interpretação.
E906  7E        LD      A,(HL) ; Obtém próximo byte "," ou ")".
E907  CD54E9    CALL    #E954 ; {STRED1} [MIDNUM] ; Obtém número fornecido.
E90A  04        INC     B ; [Is it character zero?]
E90B  05        DEC     B
E90C  CAF6DE    JP      Z,#DEF6 ; PIERRO @FCERR {FCER} [FCERR] ; Sim, erro.
E90F  C5        PUSH    BC ; Salva posição inicial.
E910  1EFF      LD      E,#FF ; Toda a string.
E912  FE29      CP      ')' ; Foi fornecido comprimento?
E914  2807      JR      Z,#E91D ; {MID_1} [RSTSTR] ; Não: resto da string.
E916  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E919  2C        DB      ','
E91A  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT] ; Obtém inteiro 0-255.
; {MID_1} [RSTSTR]
E91D  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E920  29        DB      ')'
E921  F1        POP     AF ; Restaura posição inicial.
E922  E3        EX      (SP),HL ; Obtém string, salva ponto de interpretação.
E923  01D3E8    LD      BC,#E8D3 ; @LEFT2 {LEFT_2} [MID1] ; Forja retorno para continuação da rotina MID$.
E926  C5        PUSH    BC
E927  3D        DEC     A ; Posição inicial - 1.
E928  BE        CP      (HL) ; Compara com o tamanho.
E929  0600      LD      B,#00 ; 0 bytes de comprimento.
E92B  D0        RET     NC ; String nula se posição inicial for maior que o tamanho.
E92C  4F        LD      C,A ; Salva posição inicial - 1.
E92D  7E        LD      A,(HL) ; Obtém tamanho da string.
E92E  91        SUB     C ; Subtrai a posição inicial.
E92F  BB        CP      E ; Determina o tamanho da string resultante e cria a string.
E930  47        LD      B,A
E931  D8        RET     C
E932  43        LD      B,E
E933  C9        RET

; BVAL:
; Se a string for nula retorna zero.
E934  CDA1E8    CALL    #E8A1 ; ALEN @LEN1 {LEN1} [GETLEN]
E937  CAFDEA    JP      Z,#EAFD ; FLOAT0 {ADD12} <FZero> [RESZER]
;
E93A  5F        LD      E,A ; DE = tamanho da string.
E93B  23        INC     HL ; HL = endereço do conteúdo da string.
E93C  23        INC     HL
E93D  7E        LD      A,(HL)
E93E  23        INC     HL
E93F  66        LD      H,(HL)
E940  6F        LD      L,A
E941  E5        PUSH    HL ; Preserva endereço do conteúdo da string.
E942  19        ADD     HL,DE ; HL = endereço do fim da string + 1.
E943  46        LD      B,(HL) ; Preserva em B o byte após o conteúdo da string...
E944  72        LD      (HL),D ; ...e o substitui pelo terminador 0.
E945  E3        EX      (SP),HL ; Preserva o endereço do fim da string + 1 e recupera o endereço do início.
E946  C5        PUSH    BC ; Preserva o byte original após o conteúdo da string.
E947  7E        LD      A,(HL) ; A = primeiro caracter da string.
E948  CDEFED    CALL    #EDEF ; {VALNRM} <FIn> [ASCTFP]
E94B  C1        POP     BC ; Recupera em B byte original após o conteúdo da string.
E94C  E1        POP     HL ; Recupera o endereço do fim da string + 1.
E94D  70        LD      (HL),B ; Restaura o byte original após o conteúdo da string.
E94E  C9        RET

; {STREND} [LFRGNM]
E94F  EB        EX      DE,HL
E950  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E953  29        DB      ')'
;
E954  C1        POP     BC
E955  D1        POP     DE
E956  C5        PUSH    BC
E957  43        LD      B,E
E958  C9        RET

; BINP:
; {INP} [INP]
E959  CD9CE9    CALL    #E99C ; {ARGVL2} [MAKINT] ; Converte ponto flutuante em inteiro 0~255 (A, E).
E95C  323F03    LD      (#033F),A ; [INPORT]
E95F  CD3E03    CALL    #033E ; [INPSUB]
E962  C33FE6    JP      #E63F ; FLOATA @SNGFLT {POS1} [PASSA]
;
; BOUT:
; {OUT} [POUT]
E965  CD87E9    CALL    #E987 ; [SETIO]
E968  C30603    JP      #0306 ; [OUTSUB]
;
; BWAIT:
; {WAIT} [WAIT]
; WAIT A,B espera até que (INP(A) AND B) <> 0.
; WAIT A,B,C espera até que ((INP(A) XOR C) AND B) <> 0.
E96B  CD87E9    CALL    #E987 ; [SETIO]
E96E  F5        PUSH    AF
E96F  1E00      LD      E,#00
E971  2B        DEC     HL
E972  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E975  2807      JR      Z,#E97E ; {WAIT1} [NOXOR]
E977  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E97A  2C        DB      ','
E97B  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
; {WAIT1} [NOXOR]
E97E  C1        POP     BC
; {WAIT2} [WAITLP]
E97F  CD3E03    CALL    #033E
E982  AB        XOR     E
E983  A0        AND     B
E984  28F9      JR      Z,#E97F         ; (-7)
E986  C9        RET

; [SETIO]
E987  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
E98A  323F03    LD      (#033F),A ; [INPORT]
E98D  320703    LD      (#0307),A ; [OUTPORT]
E990  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
E993  2C        DB      ','
E994  1803      JR      #E999 ; @GETBYT {ARGVL1} [GETINT]

; Avalia uma expressão numérica positiva e obtém seu valor
; inteiro 0~255 em A. Caso contrário, produz "PI ERRO".
; {ARGVAL} <GetSubscript> [FNDNUM]
E996  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; @GETBYT {ARGVL1} [GETINT]
E999  CDBCE2    CALL    #E2BC ; {SNALY2} [GETNUM] ; Avalia expressão numérica.
; Converte ponto flutuante em inteiro 0~255 (A, E).
; {ARGVL2} [MAKINT]
E99C  CDEADE    CALL    #DEEA ; {EPRVL2} [DEPINT] ; Converte ponto flutuante positivo em inteiro (CDE).
E99F  7A        LD      A,D ; Obtém MSB do número.
E9A0  B7        OR      A ; Se não zero, emite PI ERRO.
E9A1  C2F6DE    JP      NZ,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
E9A4  2B        DEC     HL
E9A5  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
E9A8  7B        LD      A,E
E9A9  C9        RET

; BSAVE
E9AA  FE2A      CP      '*'
E9AC  2006      JR      NZ,#E9B4        ; (6)
; BSAVE*
E9AE  0601      LD      B,#01
E9B0  23        INC     HL
E9B1  C38ADE    JP      #DE8A
;
E9B4  CDE2E9    CALL    #E9E2 ; STRFN5
E9B7  E5        PUSH    HL
E9B8  EB        EX      DE,HL
; Início do bloco a salvar = início
; do programa BASIC.
E9B9  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
E9BC  22FB00    LD      (#00FB),HL ; STAR
; Forja retorno.
E9BF  01D7E9    LD      BC,#E9D7
E9C2  C5        PUSH    BC
; Fim do bloco a salvar = fim do
; programa BASIC.
E9C3  2AB703    LD      HL,(#03B7) ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
E9C6  22FD00    LD      (#00FD),HL ; ENDT
E9C9  EB        EX      DE,HL
E9CA  2B        DEC     HL
;
E9CB  23        INC     HL
E9CC  7E        LD      A,(HL)
E9CD  B7        OR      A
E9CE  20FB      JR      NZ,#E9CB        ; (-5)
E9D0  360D      LD      (HL),#0D
E9D2  0606      LD      B,#06
E9D4  C3B7C4    JP      #C4B7 ; TAPOUT

;
E9D7  E1        POP     HL
E9D8  2B        DEC     HL
E9D9  23        INC     HL
E9DA  7E        LD      A,(HL)
E9DB  FE0D      CP      #0D
E9DD  20FA      JR      NZ,#E9D9        ; (-6)
E9DF  3600      LD      (HL),#00
E9E1  C9        RET

; STRFN5:
; Armazena nome do arquivo a salvar
; em #018D (FILNAM).
; 5 caracteres alfanuméricos no máximo.
E9E2  C5        PUSH    BC
E9E3  D5        PUSH    DE
E9E4  0605      LD      B,#05
E9E6  118D01    LD      DE,#018D ; FILNAM
E9E9  2B        DEC     HL
;
E9EA  23        INC     HL
;
E9EB  7E        LD      A,(HL)
; Ignora espaços
E9EC  FE20      CP      ' '
E9EE  28FA      JR      Z,#E9EA         ; (-6)
E9F0  FE5B      CP      '' ; 'Z' + 1
E9F2  3018      JR      NC,#EA0C        ; (24)
E9F4  FE30      CP      '0'
E9F6  3814      JR      C,#EA0C         ; (20)
E9F8  FE3A      CP      ':' ; '9' + 1
E9FA  3804      JR      C,#EA00         ; (4)
E9FC  FE41      CP      'A'
E9FE  380C      JR      C,#EA0C         ; (12)
;
EA00  12        LD      (DE),A
EA01  23        INC     HL
EA02  13        INC     DE
EA03  05        DEC     B
EA04  20E5      JR      NZ,#E9EB        ; (-27)
; Adiciona um CR após o nome.
EA06  3E0D      LD      A,#0D
EA08  12        LD      (DE),A
EA09  D1        POP     DE
EA0A  C1        POP     BC
EA0B  C9        RET
;
EA0C  B7        OR      A
EA0D  20F7      JR      NZ,#EA06        ; (-9)
; Adiciona espaços ao final do nome
; até completar os 5 caracteres.
EA0F  3E20      LD      A,' '
;
EA11  12        LD      (DE),A
EA12  13        INC     DE
EA13  05        DEC     B
EA14  20FB      JR      NZ,#EA11        ; (-5)
EA16  18EE      JR      #EA06           ; (-18)

;
EA18  1E08      LD      E,#08 ; erro "PI"
EA1A  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; BLOAD
EA1D  FE2A      CP      '*'
EA1F  2004      JR      NZ,#EA25        ; (4)
; BLOAD*
EA21  23        INC     HL
EA22  C388DE    JP      #DE88
; Elimina programa atual.
EA25  22BF03    LD      (#03BF),HL ; @FACLO {WRA1} <FACCUM> [FPREG]
EA28  CDA2D9    CALL    #D9A2 ; NEW [CLRPTR]
EA2B  2ABF03    LD      HL,(#03BF) ; @FACLO {WRA1} <FACCUM> [FPREG]
; Coloca nome do programa em FILNAM.
EA2E  7E        LD      A,(HL)
EA2F  CDE2E9    CALL    #E9E2 ; STRFN5
; Ignora resto da linha(?).
EA32  7E        LD      A,(HL)
EA33  23        INC     HL
EA34  B7        OR      A
EA35  20FB      JR      NZ,#EA32        ; (-5)
; Acrescenta CR após o nome do arquivo.
EA37  360D      LD      (HL),#0D
EA39  0606      LD      B,#06
; Coloca início da área do BASIC em STAR.
EA3B  2A4903    LD      HL,(#0349) ; @TXTTAB {PSTBEG} <PROGRAM_BASE> [BASTXT]
EA3E  22FB00    LD      (#00FB),HL ; STAR
; Lê cabeçalho do arquivo.
EA41  CD62C1    CALL    #C162 ; TAPIN
; Compara nome do arquivo lido.
EA44  CD6DEA    CALL    #EA6D
; Se for diferente, ignora arquivo atual
; e espera o próximo.
EA47  20F8      JR      NZ,#EA41        ; (-8)
; Se for igual, lê o bloco de dados.
EA49  CD88C1    CALL    #C188 ; GET1
; Se deu falha, aguarda cabeçalho de novo.
EA4C  20F3      JR      NZ,#EA41        ; (-13)
; O último endereço gravado com dados da fita
; é o início da área de variáveis.
EA4E  22B703    LD      (#03B7),HL ; @VARTAB {SVARPT} <VAR_BASE> [PROGND]
; IMPRIME "OK".
EA51  CDC7E0    CALL    #E0C7 ; PRINTCRLF [PRNTCR]
EA54  21EAD7    LD      HL,#D7EA ; {OK} <szOK> [OKMSG]
EA57  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
; Se foi informado nome de arquivo no comando
; LOAD, terminar.
EA5A  3A8D01    LD      A,(#018D) ; FILNAM
EA5D  FE20      CP      #20
EA5F  C267D9    JP      NZ,#D967 ; {LIN10} <UpdateLinkedList> [SETPTR]
; Se arquivo não tinha nome, preparar para executar.
EA62  3E01      LD      A,#01
EA64  326103    LD      (#0361),A ; AUTOEXEC
EA67  324403    LD      (#0344),A ; {OUTFLG} [CTLOFG]
EA6A  C367D9    JP      #D967 ; {LIN10} <UpdateLinkedList> [SETPTR]
; FILCOM: Compara 5 bytes do nome do arquivo lido
; com o nome do arquivo que se quer ler.
EA6D  E5        PUSH    HL
EA6E  D5        PUSH    DE
EA6F  C5        PUSH    BC
EA70  218D01    LD      HL,#018D ; FILNAM
EA73  117F01    LD      DE,#017F ; OBUF
EA76  0605      LD      B,#05
EA78  1A        LD      A,(DE)
EA79  BE        CP      (HL)
EA7A  C285EA    JP      NZ,#EA85
EA7D  05        DEC     B
EA7E  CA85EA    JP      Z,#EA85
EA81  13        INC     DE
EA82  23        INC     HL
EA83  18F3      JR      #EA78           ; (-13)
;
EA85  C1        POP     BC
EA86  D1        POP     DE
EA87  E1        POP     HL
EA88  C9        RET

; FLOATPLUSHALF : FLOAT = 1/2 + FLOAT.
; {ADD1} <FAddOneHalf> [ROUND]
EA89  2166EF    LD      HL,#EF66 ; {SQRL} <ONE_HALF> [HALF] ; 1/2

; HLPLUSFLOAT : FLOAT = float@HL + FLOAT.
; {ADD2} [ADDPHL]
EA8C  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
EA8F  1809      JR      #EA9A ; BCDEPLUSFLOAT {ADD5} [FPADD]
; HLMINUSFLOAT : FLOAT = float@HL - FLOAT.
; {ADD3} [SUBPHL]
EA91  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
EA94  21        DB      #21
; O byte acima inicia uma instrução de 3 bytes,
; EA94  21C1D1    LD      HL,#D1C1
; ocultando as duas instruções subsequentes:
; BSUB:
; @FSUBT {MINUS} <FSub>
EA95  C1        POP     BC
EA96  D1        POP     DE

; BCDEMINUSFLOAT: FLOAT = BCDE - FLOAT.
; {ADD4} [SUBCDE]
EA97  CDFCEC    CALL    #ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
; BCDEPLUSFLOAT: FLOAT = BCDE + FLOAT.
; {ADD5} [FPADD]
EA9A  78        LD      A,B ; Se BCDE = 0...
EA9B  B7        OR      A
EA9C  C8        RET     Z ; retorna FLOAT.
EA9D  3AC203    LD      A,(#03C2) ; Se FLOAT = 0… {WRA1+3} <FACCUM+3> [FPEXP]
EAA0  B7        OR      A
EAA1  CA14ED    JP      Z,#ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE] ; retorna BCDE.
EAA4  90        SUB     B ; Se expoente de FLOAT < BCDE, swap FLOAT,BCDE.
EAA5  300C      JR      NC,#EAB3        ; (12)
EAA7  2F        CPL
EAA8  3C        INC     A
EAA9  EB        EX      DE,HL
EAAA  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
EAAD  EB        EX      DE,HL
EAAE  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
EAB1  C1        POP     BC
EAB2  D1        POP     DE
;
EAB3  FE19      CP      #19 ; Se a diferença entre os expoentes de FLOAT e BCDE
EAB5  D0        RET     NC ; for grande demais, retorna FLOAT.
EAB6  F5        PUSH    AF
EAB7  CD38ED    CALL    #ED38 ; {VORZ} <FUnpackMantissas>
EABA  67        LD      H,A
EABB  F1        POP     AF
EABC  CD5CEB    CALL    #EB5C
EABF  B4        OR      H
EAC0  21BF03    LD      HL,#03BF ; @FACLO {WRA1} <FACCUM> [FPREG]
EAC3  F2D9EA    JP      P,#EAD9
EAC6  CD3CEB    CALL    #EB3C ; {ADD19} [PLUCDE]
EAC9  D21BEB    JP      NC,#EB1B
EACC  23        INC     HL
EACD  34        INC     (HL)
EACE  CA37EB    JP      Z,#EB37 ; SEERRO
EAD1  2E01      LD      L,#01
EAD3  CD70EB    CALL    #EB70
EAD6  C31BEB    JP      #EB1B
;
EAD9  AF        XOR     A
EADA  90        SUB     B
EADB  47        LD      B,A
EADC  7E        LD      A,(HL)
EADD  9B        SBC     A,E
EADE  5F        LD      E,A
EADF  23        INC     HL
EAE0  7E        LD      A,(HL)
EAE1  9A        SBC     A,D
EAE2  57        LD      D,A
EAE3  23        INC     HL
EAE4  7E        LD      A,(HL)
EAE5  99        SBC     A,C
EAE6  4F        LD      C,A

; {ADD9} <FNormalise>
; Passa de CDE,B para CDH,L*2^B.
EAE7  DC48EB    CALL    C,#EB48 ; {ADD20} <FNegateInt>
; {ADD10} [BNORM]
EAEA  68        LD      L,B
EAEB  63        LD      H,E
EAEC  AF        XOR     A
; Enquanto C=0, desloca CDHL 8 bits para a
; esquerda (CDHL <-- DHL0) e B <-- B - 8.
EAED  47        LD      B,A
EAEE  79        LD      A,C
EAEF  B7        OR      A
EAF0  2018      JR      NZ,#EB0A        ; (24)
EAF2  4A        LD      C,D
EAF3  54        LD      D,H
EAF4  65        LD      H,L
EAF5  6F        LD      L,A
EAF6  78        LD      A,B
EAF7  D608      SUB     #08
EAF9  FEE0      CP      #E0 ; -32
EAFB  20F0      JR      NZ,#EAED        ; (-16)
; Se B = -32 (já deslocou CDHL quatro vezes),
; é zero.

; FLOAT0: {ADD12} <FZero> [RESZER]
; Carrega 0 em FLOAT.
EAFD  AF        XOR     A
; {ADD13} [SAVEXP]
EAFE  32C203    LD      (#03C2),A ; {WRA1+3} <FACCUM+3> [FPEXP]
EB01  C9        RET

; Desloca CDHL 1 bit para a esquerda e
; B <-- B - 1...
EB02  05        DEC     B
EB03  29        ADD     HL,HL
EB04  7A        LD      A,D
EB05  17        RLA
EB06  57        LD      D,A
EB07  79        LD      A,C
EB08  8F        ADC     A,A
EB09  4F        LD      C,A
; ...até que o bit 7 de C = 1.
EB0A  F202EB    JP      P,#EB02
; Agora estamos com (1,C)DHL*2^B.
; Passa para (1,C)DEB*2^A
EB0D  78        LD      A,B
EB0E  5C        LD      E,H
EB0F  45        LD      B,L
EB10  B7        OR      A
EB11  2808      JR      Z,#EB1B         ; (8)
; Se expoente (A) é diferente de zero,
; soma a (#03C2).
EB13  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
EB16  86        ADD     A,(HL)
EB17  77        LD      (HL),A
EB18  30E3      JR      NC,#EAFD ; FLOAT0 {ADD12} <FZero> [RESZER]
EB1A  C8        RET     Z
; Agora trabalhamos com (1,C)DEB*2^((#03C2)-129).
; Se o 7º bit de B está ligado, arredonda
; (1,C)DE para mais.
EB1B  78        LD      A,B
;
EB1C  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
EB1F  B7        OR      A
EB20  FC2DEB    CALL    M,#EB2D ; {ADD18} <FMantissaInc>
; Passa para (1,C)DE*2^(B-129), onde o 7º bit
; de C indica o sinal (0 = positivo).
EB23  46        LD      B,(HL)
EB24  23        INC     HL
EB25  7E        LD      A,(HL)
EB26  E680      AND     #80
EB28  A9        XOR     C
EB29  4F        LD      C,A
EB2A  C314ED    JP      #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]

; {ADD18} <FMantissaInc>
; Incrementa (1,C)DE (arredonda para mais).
EB2D  1C        INC     E
EB2E  C0        RET     NZ
EB2F  14        INC     D
EB30  C0        RET     NZ
EB31  0C        INC     C
EB32  C0        RET     NZ
;
EB33  0E80      LD      C,#80
EB35  34        INC     (HL)
EB36  C0        RET     NZ
; Gera erro "SE".
EB37  1E0A      LD      E,#0A ; erro "SE"
EB39  C356D8    JP      #D856 ; ERROE @ERROR {ERROO} <Error> [ERROR]

; {ADD19} [PLUCDE]
EB3C  7E        LD      A,(HL)
EB3D  83        ADD     A,E
EB3E  5F        LD      E,A
EB3F  23        INC     HL
EB40  7E        LD      A,(HL)
EB41  8A        ADC     A,D
EB42  57        LD      D,A
EB43  23        INC     HL
EB44  7E        LD      A,(HL)
EB45  89        ADC     A,C
EB46  4F        LD      C,A
EB47  C9        RET

; {ADD20} <FNegateInt>
; Inverte o sinal do futuro número de ponto flutuante.
EB48  21C303    LD      HL,#03C3 ; {SGNORS} [SGNRES]
EB4B  7E        LD      A,(HL)
EB4C  2F        CPL
EB4D  77        LD      (HL),A
; CDEB = -CDEB (para obter o valor absoluto).
EB4E  AF        XOR     A
EB4F  6F        LD      L,A
EB50  90        SUB     B
EB51  47        LD      B,A
EB52  7D        LD      A,L
EB53  9B        SBC     A,E
EB54  5F        LD      E,A
EB55  7D        LD      A,L
EB56  9A        SBC     A,D
EB57  57        LD      D,A
EB58  7D        LD      A,L
EB59  99        SBC     A,C
EB5A  4F        LD      C,A
EB5B  C9        RET
;
EB5C  0600      LD      B,#00
EB5E  D608      SUB     #08
EB60  3807      JR      C,#EB69         ; (7)
EB62  43        LD      B,E
EB63  5A        LD      E,D
EB64  51        LD      D,C
EB65  0E00      LD      C,#00
EB67  18F5      JR      #EB5E           ; (-11)
EB69  C609      ADD     A,#09
EB6B  6F        LD      L,A
EB6C  AF        XOR     A
EB6D  2D        DEC     L
EB6E  C8        RET     Z
EB6F  79        LD      A,C
EB70  1F        RRA
EB71  4F        LD      C,A
EB72  7A        LD      A,D
EB73  1F        RRA
EB74  57        LD      D,A
EB75  7B        LD      A,E
EB76  1F        RRA
EB77  5F        LD      E,A
EB78  78        LD      A,B
EB79  1F        RRA
EB7A  47        LD      B,A
EB7B  18EF      JR      #EB6C           ; (-17)

; {LOGL} [UNITY]
EB7D  00000081  DB      #00,#00,#00,#81 ; 1

; {LOGL1} [LOGTAB]
EB81  03        DB      #03
EB82  AA561980  DB      #AA,#56,#19,#80 ; 0,598979
EB86  F1227680  DB      #F1,#22,#76,#80 ; 0,961471
EB8A  45AA3882  DB      #45,#AA,#38,#82 ; 2,88539

; BLOG:
; ln (1+x) = (x - x^2/2 + x^3/3 - x^4/4 + ...), |x| < 1
; {LOG} [LOG]
EB8E  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
EB91  B7        OR      A
EB92  EAF6DE    JP      PE,#DEF6 ; PIERRO @FCERR {FCER} [FCERR]
EB95  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
EB98  7E        LD      A,(HL)
EB99  013580    LD      BC,#8035 ; SQR(1/2) (0,707107)
EB9C  11F304    LD      DE,#04F3
EB9F  90        SUB     B
EBA0  F5        PUSH    AF
EBA1  70        LD      (HL),B
EBA2  D5        PUSH    DE
EBA3  C5        PUSH    BC
EBA4  CD9AEA    CALL    #EA9A ; BCDEPLUSFLOAT {ADD5} [FPADD]
EBA7  C1        POP     BC
EBA8  D1        POP     DE
EBA9  04        INC     B ; SQR(2)
EBAA  CD2DEC    CALL    #EC2D ; DIVBCDEFLOAT {DIV1} [DVBCDE]
EBAD  217DEB    LD      HL,#EB7D ; {LOGL} [UNITY] ; 1
EBB0  CD91EA    CALL    #EA91 ; HLMINUSFLOAT {ADD3} [SUBPHL]
EBB3  2181EB    LD      HL,#EB81 ; {LOGL1} [LOGTAB]
EBB6  CD2FF0    CALL    #F02F ; {REIHE} [SUMSER]
EBB9  018080    LD      BC,#8080 ; -1/2 (-0,5)
EBBC  110000    LD      DE,#0000
EBBF  CD9AEA    CALL    #EA9A ; BCDEPLUSFLOAT {ADD5} [FPADD]
EBC2  F1        POP     AF
EBC3  CD6CEE    CALL    #EE6C ; {PLUS0} [RSCALE]
; {LOG1} [MULLN2]
EBC6  013180    LD      BC,#8031 ; 0,693147 = Ln(2)
EBC9  111872    LD      DE,#7218
EBCC  21        DB      #21
; O byte acima inicia uma instrução de 3 bytes,
; EBCC  21C1D1    LD      HL,#D1C1
; ocultando as duas instruções subsequentes.
; BMUL:
; @FMULTT {MUL} <FMul> [MULT]
EBCD  C1        POP     BC
EBCE  D1        POP     DE
; {MUL1} [FPMULT]
EBCF  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
EBD2  C8        RET     Z

; MULBCDEFLOAT: Multiplica BCDE por FLOAT.
EBD3  2E00      LD      L,#00
EBD5  CD92EC    CALL    #EC92
EBD8  79        LD      A,C
EBD9  32D103    LD      (#03D1),A
EBDC  EB        EX      DE,HL
EBDD  22D203    LD      (#03D2),HL
EBE0  010000    LD      BC,#0000
EBE3  50        LD      D,B
EBE4  58        LD      E,B
EBE5  21EAEA    LD      HL,#EAEA ; {ADD10} [BNORM]
EBE8  E5        PUSH    HL
EBE9  21F1EB    LD      HL,#EBF1
EBEC  E5        PUSH    HL
EBED  E5        PUSH    HL
EBEE  21BF03    LD      HL,#03BF ; @FACLO {WRA1} <FACCUM> [FPREG]
;
EBF1  7E        LD      A,(HL)
EBF2  23        INC     HL
EBF3  B7        OR      A
EBF4  2824      JR      Z,#EC1A         ; (36)
EBF6  E5        PUSH    HL
EBF7  2E08      LD      L,#08
;
EBF9  1F        RRA
EBFA  67        LD      H,A
EBFB  79        LD      A,C
EBFC  300B      JR      NC,#EC09        ; (11)
EBFE  E5        PUSH    HL
EBFF  2AD203    LD      HL,(#03D2)
EC02  19        ADD     HL,DE
EC03  EB        EX      DE,HL
EC04  E1        POP     HL
EC05  3AD103    LD      A,(#03D1)
EC08  89        ADC     A,C
EC09  1F        RRA
EC0A  4F        LD      C,A
EC0B  7A        LD      A,D
EC0C  1F        RRA
EC0D  57        LD      D,A
EC0E  7B        LD      A,E
EC0F  1F        RRA
EC10  5F        LD      E,A
EC11  78        LD      A,B
EC12  1F        RRA
EC13  47        LD      B,A
EC14  2D        DEC     L
EC15  7C        LD      A,H
EC16  20E1      JR      NZ,#EBF9        ; (-31)
; POPHLRET {DIM121} [POPHRT]
EC18  E1        POP     HL
EC19  C9        RET
;
EC1A  43        LD      B,E
EC1B  5A        LD      E,D
EC1C  51        LD      D,C
EC1D  4F        LD      C,A
EC1E  C9        RET

; DIVFLOAT10: {DIV0} <FDivByTen> [DIV10]
; Divide FLOAT por 10.

; PUSH FLOAT
EC1F  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
; FLOAT <-- 10.
EC22  012084    LD      BC,#8420
EC25  110000    LD      DE,#0000
EC28  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
; BDIV:
; @FDIVT {DIV} <FDiv>
EC2B  C1        POP     BC
EC2C  D1        POP     DE
; DIVBCDEFLOAT: Divide BDCE por FLOAT.
; {DIV1} [DVBCDE]
; Se FLOAT = 0, "DZ ERRO".
EC2D  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
EC30  CA4BD8    JP      Z,#D84B ; DZERRO {DIVER} <DivideByZero> [DZERR]
; Prepara divisão.
EC33  2EFF      LD      L,#FF
EC35  CD92EC    CALL    #EC92
; Corrige o expoente resultante, somando 2.
EC38  34        INC     (HL)
EC39  34        INC     (HL)
; Configura rotina na RAM para auxiliar
; no cálculo da divisão.
; DIVISOR = (#0312)(#030E)(#030A)
EC3A  2B        DEC     HL
EC3B  7E        LD      A,(HL)
EC3C  321203    LD      (#0312),A
EC3F  2B        DEC     HL
EC40  7E        LD      A,(HL)
EC41  320E03    LD      (#030E),A
EC44  2B        DEC     HL
EC45  7E        LD      A,(HL)
EC46  320A03    LD      (#030A),A
; BHL <-- CDE.
EC49  41        LD      B,C
EC4A  EB        EX      DE,HL
; CDE <-- 0, (#0315) <-- 0.
EC4B  AF        XOR     A
EC4C  4F        LD      C,A
EC4D  57        LD      D,A
EC4E  5F        LD      E,A
EC4F  321503    LD      (#0315),A
; Laço da divisão.
; PUSH BHL
EC52  E5        PUSH    HL
EC53  C5        PUSH    BC
; (#0315)BHL > DIVISOR?
EC54  7D        LD      A,L
EC55  CD0903    CALL    #0309
EC58  DE00      SBC     A,#00
EC5A  3F        CCF
EC5B  3007      JR      NC,#EC64        ; (7)
; Sim: (#0315)BHL <-- (#0315)BHL - DIVISOR.
EC5D  321503    LD      (#0315),A
; Descarta BHL empilhado.
EC60  F1        POP     AF
EC61  F1        POP     AF
; As instruções abaixo servem para ocultar
; as instruções:
; ; POP BHL
; EC64  C1        POP     BC
; EC65  E1        POP     HL
; que só podem ser atingidas pelo jump
; em #035B.
EC62  37        SCF
EC63  D2C1E1    JP      NC,#E1C1
;
EC66  79        LD      A,C
EC67  3C        INC     A
EC68  3D        DEC     A
EC69  1F        RRA
EC6A  FA1CEB    JP      M,#EB1C
EC6D  17        RLA
EC6E  7B        LD      A,E
EC6F  17        RLA
EC70  5F        LD      E,A
EC71  7A        LD      A,D
EC72  17        RLA
EC73  57        LD      D,A
EC74  79        LD      A,C
EC75  17        RLA
EC76  4F        LD      C,A
EC77  29        ADD     HL,HL
EC78  78        LD      A,B
EC79  17        RLA
EC7A  47        LD      B,A
EC7B  3A1503    LD      A,(#0315)
EC7E  17        RLA
EC7F  321503    LD      (#0315),A
EC82  79        LD      A,C
EC83  B2        OR      D
EC84  B3        OR      E
EC85  20CB      JR      NZ,#EC52        ; (-53)
EC87  E5        PUSH    HL
EC88  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
EC8B  35        DEC     (HL)
EC8C  E1        POP     HL
EC8D  20C3      JR      NZ,#EC52        ; (-61)
EC8F  C337EB    JP      #EB37 ; SEERRO
; Prepara multiplicação/divisão.
; Se BCDE = 0, FLOAT <-- 0.
EC92  78        LD      A,B
EC93  B7        OR      A
EC94  281F      JR      Z,#ECB5         ; (31)
; Se BCDE <> 0...
; Compara os expoentes para verificar se
; o número resultante de
; BCDE/FLOAT (quando L = #FF) ou de
; BCDE*FLOAT (quando L = #00) fica
; grande demais ("SE ERRO") ou pequeno
; demais (arredonda para zero).
; Caso contrário, armazena em (#03C2)
; o expoente resultante. (Ainda é preciso
; somar 2 a ele em caso de divisão.)
EC96  7D        LD      A,L
EC97  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
EC9A  AE        XOR     (HL)
EC9B  80        ADD     A,B
EC9C  47        LD      B,A
EC9D  1F        RRA
EC9E  A8        XOR     B
EC9F  78        LD      A,B
ECA0  F2B4EC    JP      P,#ECB4
ECA3  C680      ADD     A,#80
ECA5  77        LD      (HL),A
ECA6  CA18EC    JP      Z,#EC18 ; POPHLRET {DIM121} [POPHRT]
; Expoentes permitem continuar o cálculo.
; Restaura mantissas (1,...).
ECA9  CD38ED    CALL    #ED38 ; {VORZ} <FUnpackMantissas>
; Guarda em (#03C3) o sinal (invertido?)
; do produto da multiplicação/divisão.
ECAC  77        LD      (HL),A
; HL termina apontando para #03c2.
ECAD  2B        DEC     HL
ECAE  C9        RET

; {HIROU2} [OVTST1]
ECAF  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
ECB2  2F        CPL
ECB3  E1        POP     HL
;
ECB4  B7        OR      A
;
ECB5  E1        POP     HL
ECB6  F2FDEA    JP      P,#EAFD ; FLOAT0 {ADD12} <FZero> [RESZER]
ECB9  C337EB    JP      #EB37 ; SEERRO

; {HIROU5} <FMulByTen> [MLSP10]
ECBC  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
ECBF  78        LD      A,B
ECC0  B7        OR      A
ECC1  C8        RET     Z
ECC2  C602      ADD     A,#02
ECC4  DA37EB    JP      C,#EB37 ; SEERRO
ECC7  47        LD      B,A
ECC8  CD9AEA    CALL    #EA9A ; BCDEPLUSFLOAT {ADD5} [FPADD]
ECCB  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
ECCE  34        INC     (HL)
ECCF  C0        RET     NZ
ECD0  C337EB    JP      #EB37 ; SEERRO

; SGNFLOAT: Retorna em A o sinal do número
; de ponto flutuante armazenado em FLOAT:
; 0, 1 ou -1 (#FF).
; {TSGNM} <FTestSign> [TSTSGN]
ECD3  3AC203    LD      A,(#03C2) ; {WRA1+3} <FACCUM+3> [FPEXP]
ECD6  B7        OR      A
ECD7  C8        RET     Z
ECD8  3AC103    LD      A,(#03C1) ; {WRA1+2} <FACCUM+2> [FPREG+2]
ECDB  FE        DB      #FE ; "CP ..." ; Oculta a instrução seguinte.
; {TSGNM1} <InvSignToInt>
ECDC  2F        CPL
; <SignToInt>
ECDD  17        RLA
; {TSGNM2} [FLGDIF]
ECDE  9F        SBC     A,A
ECDF  C0        RET     NZ
ECE0  3C        INC     A
ECE1  C9        RET

; BSGN:
; {SGN} <Sgn>
ECE2  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
; {SGN0} <FCharToFloat> [FLGREL]
; "Converte o byte com sinal A em um número de ponto flutuante
; em FACCUM."
; "Obtém o valor char em A como um número de ponto flutuante
; não normalizado."
ECE5  0688      LD      B,#88 ; "i.e. 2^8"
ECE7  110000    LD      DE,#0000

; FLOATBADE: Normaliza o número de ponto
; flutuante em BADE e o carrega em FLOAT.
; (#03C2) <-- B, CDEB <-- ADE0
; {SGN1} <FCharToFloat+5> [RETINT]
ECEA  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
ECED  4F        LD      C,A
; "Põe o expoente de FACCUM em 2^8, em preparação para um
; salto para FNormalise."
ECEE  70        LD      (HL),B
ECEF  0600      LD      B,#00
; "Põe FTEMP em 0x80, outro passo de preparação para
; FNormalise."
ECF1  23        INC     HL
ECF2  3680      LD      (HL),#80
; "Põe o sinal no carry flag e salta para FNormalise."
ECF4  17        RLA
ECF5  C3E7EA    JP      #EAE7 ; {ADD9} <FNormalise>

; BABS:
; {ABS} <Abs>
; "Retorna se FACCUM já é positivo, senão cai em FNegate
; para fazê-lo positivo."
ECF8  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
ECFB  F0        RET     P

; NEGFLOAT: Inverte o sinal de FLOAT.
; {ABS1} <FNegate> [INVSGN]
ECFC  21C103    LD      HL,#03C1 ; {WRA1+2} <FACCUM+2> [FPREG+2]
ECFF  7E        LD      A,(HL)
ED00  EE80      XOR     #80
ED02  77        LD      (HL),A
ED03  C9        RET

; PUSHFLOAT: Empilha o número de ponto
; flutuante FLOAT na pilha do processador.
; {OPARST} <FPush> [STAKFP]
ED04  EB        EX      DE,HL
ED05  2ABF03    LD      HL,(#03BF) ; @FACLO {WRA1} <FACCUM> [FPREG]
ED08  E3        EX      (SP),HL
ED09  E5        PUSH    HL
ED0A  2AC103    LD      HL,(#03C1) ; {WRA1+2} <FACCUM+2> [FPREG+2]
ED0D  E3        EX      (SP),HL
ED0E  E5        PUSH    HL
ED0F  EB        EX      DE,HL
ED10  C9        RET

; FLOATHL: Carrega em FLOAT o número
; de ponto flutuante apontado por HL.
; {OPKOP} <FLoadFromMem> [PHLTFP]
ED11  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]

; FLOATBCDE: Copia o número de ponto
; flutuante em BCDE em FLOAT.
; {OPKOP1} <FLoadFromBCDE> [FPBCDE]
ED14  EB        EX      DE,HL
ED15  22BF03    LD      (#03BF),HL ; @FACLO {WRA1} <FACCUM> [FPREG]
ED18  60        LD      H,B
ED19  69        LD      L,C
ED1A  22C103    LD      (#03C1),HL ; {WRA1+2} <FACCUM+2> [FPREG+2]
ED1D  EB        EX      DE,HL
ED1E  C9        RET

; BCDEFLOAT: Copia o número de ponto
; flutuante em FLOAT para BCDE.
; {OPLAD0} <FCopyToBCDE> [BCDEFP]
ED1F  21BF03    LD      HL,#03BF ; @FACLO {WRA1} <FACCUM> [FPREG]

; BCDEHL: Copia para BCDE o número de
; ponto flutuante apontado por HL.
; {OPLAD} <FLoadBCDEFromMem> [LOADFP]
ED22  5E        LD      E,(HL)
ED23  23        INC     HL
ED24  56        LD      D,(HL)
ED25  23        INC     HL
ED26  4E        LD      C,(HL)
ED27  23        INC     HL
ED28  46        LD      B,(HL)
; {OPLAD1} <IncHL+Return> [INCHL]
ED29  23        INC     HL
ED2A  C9        RET

; HLFLOAT: Copia para o endereço apontado
; por HL o número de ponto flutuante
; armazenado em FLOAT.
; {OPTRAN} <FCopyToMem> [FPTHL]
ED2B  11BF03    LD      DE,#03BF ; @FACLO {WRA1} <FACCUM> [FPREG]
; LD4HLDE: Copia 4 bytes de (DE) para (HL).
; (HL)~(HL+3) <- (DE)~(DE+3)
; No fim, DE e HL estão incrementados em 4.
; {OPTRN1}
ED2E  0604      LD      B,#04
; {OPTRN2} <FCopyLoop>
ED30  1A        LD      A,(DE)
ED31  77        LD      (HL),A
ED32  13        INC     DE
ED33  23        INC     HL
ED34  05        DEC     B
ED35  20F9      JR      NZ,#ED30 ; {OPTRN2} <FCopyLoop>
ED37  C9        RET

; {VORZ} <FUnpackMantissas>
; Restaura os 1,... das mantissas de FLOAT
; e BCDE. Guarda em (#03C3) o sinal original
; de FLOAT. A fica com o sinal (invertido?)
; do resultado da multiplicação/divisão.

; "Desempacota as mantissas de FACCUM e BCDE. Isto é
; simples - apenas restauramos o bit mais significante
; ausente, invariavelmente um 1 (vide nota técnica).
; Infelizmente, fazer isto perde os bits de sinal de
; ambos os números empacotados.
; Para compensar isto, retorna-se uma combinação de
; ambos os sinais. Durante a função o sinal de FACC
; é negado e posteriormente XOR-ado com o sinal de
; BCDE, e retornado no bit 7 de A. O efeito disto é
; que quando a função retorna, A é positivo se os sinais
; eram diferentes, ou negativo se eram iguais.
; +------+--------+------+-----------+
; | FACC |  FACC  | BCDE | Resultado |
; |      | Negado |      | após XOR  |
; +------+--------+------+-----------+
; |  +   |   -    |  +   |     -     |
; |  +   |   -    |  -   |     +     |
; |  -   |   +    |  +   |     +     |
; |  -   |   +    |  -   |     -     |
; +------+--------+------+-----------+"
ED38  21C103    LD      HL,#03C1 ; {WRA1+2} <FACCUM+2> [FPREG+2]
ED3B  7E        LD      A,(HL)
ED3C  07        RLCA    ; "Move o sinal de FACCUM ao bit 0."
ED3D  37        SCF     ; "Seta o MSB da mantissa de FACCUM,"
ED3E  1F        RRA     ; "o sinal de FACCUM agora está no carry."
ED3F  77        LD      (HL),A
ED40  3F        CCF     ; "Nega o sinal de FACCUM."
ED41  1F        RRA     ; "O bit 7 de A agora é o sinal de FACCUM."
ED42  23        INC     HL ; "Armazena o sinal legado de FACCUM em FTEMP_SIGN."
ED43  23        INC     HL
ED44  77        LD      (HL),A
ED45  79        LD      A,C
ED46  07        RLCA    ; "Seta o MSB da mantissa de BCDE,"
ED47  37        SCF     ; "O sinal de BCDE agora está no carry."
ED48  1F        RRA
ED49  4F        LD      C,A
ED4A  1F        RRA     ; "O bit 7 de A agora é o sinal de BCDE"
ED4B  AE        XOR     (HL) ; "XOR-ado com FTEMP_SIGN."
ED4C  C9        RET

; CPFLOATBCDE: Compara o número de ponto
; flutuante em FLOAT com o número de ponto
; flutuante em BCDE:
; Se FLOAT > BCDE, retorna 1 em A.
; Se FLOAT = BCDE, retorna 0 em A.
; Se FLOAT < BCDE, retorna -1 em A.
; {VORZ1} <FCompare> [CMPNUM]

; Se BCDE = 0, retorna o sinal de FLOAT.
ED4D  78        LD      A,B
ED4E  B7        OR      A
ED4F  CAD3EC    JP      Z,#ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
; Forja retorno para #ECDC.
ED52  21DCEC    LD      HL,#ECDC ; {TSGNM1} <InvSignToInt>
ED55  E5        PUSH    HL
; Se FLOAT = 0, retorna o sinal de BCDE
; invertido.
ED56  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
ED59  79        LD      A,C
ED5A  C8        RET     Z
; Se FLOAT e BCDE têm sinais diferentes,
; retorna o sinal de BCDE invertido.
ED5B  21C103    LD      HL,#03C1 ; {WRA1+2} <FACCUM+2> [FPREG+2]
ED5E  AE        XOR     (HL)
ED5F  79        LD      A,C
ED60  F8        RET     M
; Se FLOAT e BCDE são iguais, retorna zero.
; "Chama função para testar igualdade. Se BCDE e FACCUM
; são iguais, então esta função não retornará aqui, mas ao
; chamador de FCompare."
ED61  CD67ED    CALL    #ED67 ; {CPOPER} <FIsEqual>
; Se forem diferentes (e de mesmo sinal)...
; "Não iguais. Colocamos o carry flag (indicando relação
; maior/menor) no bit 7 de A e então XOR-amos isso com
; ??? e retorna a [InvSignToInt]."
ED64  1F        RRA
ED65  A9        XOR     C
ED66  C9        RET

; {CPOPER} <FIsEqual>
; Se FLOAT e BCDE são iguais, retorna zero.
ED67  23        INC     HL
ED68  78        LD      A,B
ED69  BE        CP      (HL)
ED6A  C0        RET     NZ
ED6B  2B        DEC     HL
ED6C  79        LD      A,C
ED6D  BE        CP      (HL)
ED6E  C0        RET     NZ
ED6F  2B        DEC     HL
ED70  7A        LD      A,D
ED71  BE        CP      (HL)
ED72  C0        RET     NZ
ED73  2B        DEC     HL
ED74  7B        LD      A,E
ED75  96        SUB     (HL)
ED76  C0        RET     NZ
; "Igualdade, isto é, BCDE = FACCUM. Neste caso
; podemos perder os dois primeiros endereços da
; pilha e retornar ao chamador de FCompare."
ED77  E1        POP     HL ; "Perde [#ED61]"
ED78  E1        POP     HL ; "Perde [#ECDC]"
ED79  C9        RET     ; "Retorna ao chamador."

; {INTMOV} <FAsInteger> [FPINT]
; "Retorna a parte inteira de FACCUM em CDE."

; "Retorna com BCDE=0 se A=0."
ED7A  47        LD      B,A
ED7B  4F        LD      C,A
ED7C  57        LD      D,A
ED7D  5F        LD      E,A
ED7E  B7        OR      A
ED7F  C8        RET     Z
; "Preserva HL e copia FACCUM para BCDE."
ED80  E5        PUSH    HL
ED81  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
; "Desempacota a mantissa de FACCUM para obter o
; bit mais significativo oculto e obter o sinal
; de volta via um XOR para desfazer o que
; FUnpackMantissas fez com ele. Preserva o sinal
; em H."
ED84  CD38ED    CALL    #ED38 ; {VORZ} <FUnpackMantissas>
ED87  AE        XOR     (HL) ; "Obtém o sinal de volta."
ED88  67        LD      H,A
; "Se FACCUM era negativo então decrementa a
; mantissa (complemento de dois?)."
ED89  FC9EED    CALL    M,#ED9E ; {DEZERO} <FMantissaDec>
; "Desloca a mantissa em CDE em (24-B) casas.
; Isto coloca a parte inteira de FACCUM em CDE,
; o que é o objetivo da função."
ED8C  3E98      LD      A,#98 ; "Desloca a mantissa à direita"
ED8E  90        SUB     B ; "em (24-expoente) casas?"
ED8F  CD5CEB    CALL    #EB5C ; {ADD21} <FMantissaRtOnce> ; "POR QUÊ?"
; "Se o sinal do ponto flutuante for negativo
; (i.e., bit 7 de H = 1) então faz o complemento
; de dois de CDE para obter o inteiro com sinal.
; Fazemos o complemento de dois primeiro somando
; 1, então negando."
ED92  7C        LD      A,H
ED93  17        RLA
ED94  DC2DEB    CALL    C,#EB2D ; {ADD18} <FMantissaInc>
ED97  0600      LD      B,#00 ; "Necessário para FNegateInt."
ED99  DC48EB    CALL    C,#EB48 ; {ADD20} <FNegateInt>
; "Restaura HL e retorna com o resultado
; inteiro em CDE."
ED9C  E1        POP     HL
ED9D  C9        RET

; {DEZERO} <FMantissaDec>
; "Decrementa a mantissa em CDE."
ED9E  1B        DEC     DE
ED9F  7A        LD      A,D
EDA0  A3        AND     E
EDA1  3C        INC     A
EDA2  C0        RET     NZ
EDA3  0B        DEC     BC
EDA4  C9        RET

; BINT: Remove a parte fracional de FLOAT
; e retorna em A o byte menos significativo
; do valor inteiro.
; {INT} <Int> [INT]
; "Remove a parte fracional de FACCUM."

; Se o expoente for maior ou igual a 2^24,
; o número já é inteiro.
EDA5  21C203    LD      HL,#03C2 ; {WRA1+3} <FACCUM+3> [FPEXP]
EDA8  7E        LD      A,(HL)
EDA9  FE98      CP      #98
EDAB  3ABF03    LD      A,(#03BF) ; @FACLO {WRA1} <FACCUM> [FPREG]
EDAE  D0        RET     NC
EDAF  7E        LD      A,(HL)
; "Converte FACCUM em um inteiro em CDE.
; Ao retornar, HL aponta ao byte do expoente
; de FACCUM (i.e., FACCUM+3)."
EDB0  CD7AED    CALL    #ED7A ; {INTMOV} <FAsInteger> [FPINT]
; "Agora precisamos converter o inteiro em
; CDE em um valor de ponto flutuante apropriado.
; Para fazer isso primeiro setamos o expoente de
; FACCUM para 2^24."
EDB3  3698      LD      (HL),#98
EDB5  7B        LD      A,E
EDB6  F5        PUSH    AF ; Empilha o byte menos significativo para retornar.
EDB7  79        LD      A,C
EDB8  17        RLA
EDB9  CDE7EA    CALL    #EAE7 ; {ADD9} <FNormalise>
EDBC  F1        POP     AF
EDBD  C9        RET

; {FESRCH} [MLDEBC]
EDBE  210000    LD      HL,#0000
EDC1  78        LD      A,B
EDC2  B1        OR      C
EDC3  C8        RET     Z
EDC4  3E10      LD      A,#10
; {FESRH1}
EDC6  29        ADD     HL,HL
EDC7  DA7FE5    JP      C,#E57F ; IIERRO {BSER} [BSERR]
EDCA  EB        EX      DE,HL
EDCB  29        ADD     HL,HL
EDCC  EB        EX      DE,HL
EDCD  3004      JR      NC,#EDD3 ; {FESRH2}
EDCF  09        ADD     HL,BC
; {FESRH3}
EDD0  DA7FE5    JP      C,#E57F ; IIERRO {BSER} [BSERR]
; {FESRH2}
EDD3  3D        DEC     A
EDD4  20F0      JR      NZ,#EDC6 ; {FESRH1}
EDD6  C9        RET

; BPEEK:
EDD7  CDF0DE    CALL    #DEF0 ; {EPRVL3} [DEINT] 
EDDA  1A        LD      A,(DE)
EDDB  C33FE6    JP      #E63F ; FLOATA {INP1} [PASSA]

; BPOKE:
EDDE  CDBCE2    CALL    #E2BC ; {SNALY2} [GETNUM]
EDE1  CDF0DE    CALL    #DEF0 ; {EPRVL3} [DEINT]
EDE4  D5        PUSH    DE
EDE5  CD11DC    CALL    #DC11 ; CHKSYN @SYNCHR {CPSTX} <SyntaxCheck> [CHKSYN] @SYNCHR
EDE8  2C        DB      ','
EDE9  CD99E9    CALL    #E999 ; @GETBYT {ARGVL1} [GETINT]
EDEC  D1        POP     DE
EDED  12        LD      (DE),A
EDEE  C9        RET

; Interpreta literal numérico.
; {VALNRM} <FIn> [ASCTFP]
EDEF  FE2D      CP      '-'
EDF1  F5        PUSH    AF
EDF2  2805      JR      Z,#EDF9 ; {VALNR1} [CNVNUM]
EDF4  FE2B      CP      '+'
EDF6  2801      JR      Z,#EDF9 ; {VALNR1} [CNVNUM]
EDF8  2B        DEC     HL
; {VALNR1} [CNVNUM]
EDF9  CDFDEA    CALL    #EAFD ; FLOAT0 {ADD12} <FZero> [RESZER]
; "Seta B, D, E em 0 e C em 255."
EDFC  47        LD      B,A ; "B=contagem de casas fracionais."
EDFD  57        LD      D,A ; "D=sinal do expoente."
EDFE  5F        LD      E,A ; "E=expoente" de 10.
EDFF  2F        CPL
EE00  4F        LD      C,A ; "decimal_point_done ($ff=não, $00=sim)"

; {VALNR2} <FInLoop> [MANLP]
; "Este é o início do laço que processa um
; caracter ASCII de cada vez."

; "Obtém próximo caracter ASCII e se for um
; dígito (o que é determinado pelo carry flag)
; então salta para ProcessDigit."
EE01  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
EE04  384F      JR      C,#EE55 ; {VALN10} <ProcessDigit> [ADDIG]
; "Se temos um ponto decimal então salta para
; incrementar C e voltar para cá (a menos que
; já tenhamos encontrado um ponto decimal)."
EE06  FE2E      CP      '.'
EE08  2828      JR      Z,#EE32 ; {VALNR4} [DPOINT]
; "Se não for um 'E' indicando expoente então
; assume que atingimos o fim do número e salta
; para ScaleResult."
EE0A  FE45      CP      'E'
EE0C  2027      JR      NZ,#EE35 ; {VALNR5} <ScaleResult> [CONEXP]

; <GetExponent>
; "Um expoente decimal foi dado (p.ex. 'E+23').
; Aqui lemos esse valor de expoente (com sinal)
; em E. Neste bloco usamos D para conter o sinal
; do expoente ($FF para menos e $01 para positivo)
; enquanto iteramos lendo os dígitos."

; "Obtém o primeiro caracter do expoente (após
; o 'E')."
EE0E  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
; Checa se é '+' ou '-' (ASCII ou token) ou
; nenhum, e ajusta o sinal do expoente em D.
EE11  E5        PUSH    HL
EE12  2126EE    LD      HL,#EE26 ; {VALNR3} <NextExponentDigit> [EXPLP]
EE15  E3        EX      (SP),HL
; {SNLY22} [SGNEXP]
EE16  15        DEC     D
EE17  FEBF      CP      #BF ; token "-"
EE19  C8        RET     Z
EE1A  FE2D      CP      '-'
EE1C  C8        RET     Z
EE1D  14        INC     D
EE1E  FE2B      CP      '+'
EE20  C8        RET     Z
EE21  FEBE      CP      #BE ; token "+"
EE23  C8        RET     Z
EE24  F1        POP     AF
; "O sinal do expoente não foi dado, então é
; implicitamente positivo (D é 0 neste ponto).
; Decrementamos HL para obter o mesmo caracter
; de novo, sem saltar."
EE25  2B        DEC     HL
; {VALNR3} <NextExponentDigit> [EXPLP]
; "Se o próximo caracter for um dígito (do
; expoente), salta para lidar com ele."
EE26  CDA0DD    CALL    #DDA0 ; NEXTNSPC @CHRGTR {TCHAR} <NextChar> [GETCHR]
EE29  384C      JR      C,#EE77 ; {VALN11} <DoExponentDigit> [EDIGIT]
EE2B  14        INC     D
EE2C  2007      JR      NZ,#EE35 ; {VALNR5} <ScaleResult> [CONEXP]
; "D era $FF (i.e. expoente negativo) portanto
; E = 0 - E."
EE2E  AF        XOR     A
EE2F  93        SUB     E
EE30  5F        LD      E,A
; "C era $FF, então aqui ele se torna $01."
EE31  0C        INC     C
; {VALNR4} [DPOINT]
EE32  0C        INC     C
EE33  28CC      JR      Z,#EE01 ; {VALNR2} <FInLoop> [MANLP] ; "Se C agora é zero"

; {VALNR5} <ScaleResult> [CONEXP]
; "Acreditamos que já lemos todos os caracteres
; que compõem o número. Só falta escalar decimalmente
; nosso número em FACCUM com respeito à posição do
; ponto decimal e ao valor do expoente decimal em E."
EE35  E5        PUSH    HL
; "O número de posições decimais a deslocar é dado
; por E-B, isto é, o (E)xpoente menos o número de
; dígitos fracionais dados. A direção na qual deslocar
; também é dada por esta subtração, no flag de sinal.
; Ele é preservado no laço seguinte."
EE36  7B        LD      A,E
EE37  90        SUB     B
; {VALNR6} <DecimalLoop> [SCALMI]
; "Se estamos deslocando para cima (i.e., multiplicando
; por 10) então chamamos a função para fazer isso e
; saltamos para o fim do laço."
EE38  F44DEE    CALL    P,#EE4D ; {VALNR8} <DecimalShiftUp> [SCALPL]
EE3B  F244EE    JP      P,#EE44 ; {VALNR7} <DecimalLoopEnd> [ENDCON]
; "Se estamos deslocando para baixo (i.e., o flag de sinal
; está ativo) então chamamos a função para fazer isso e
; incrementamos A."
EE3E  F5        PUSH    AF
EE3F  CD1FEC    CALL    #EC1F ; DIVFLOAT10 {DIV0} <FDivByTen> [DIV10]
EE42  F1        POP     AF
EE43  3C        INC     A
; {VALNR7} <DecimalLoopEnd> [ENDCON]
; "Se A ainda não for zero então ainda há deslocamentos
; a fazer e iteramos. Senão restauramos o ponteiro do
; programa e retornamos."
EE44  20F2      JR      NZ,#EE38 ; {VALNR6} <DecimalLoop> [SCALMI]
EE46  D1        POP     DE
EE47  F1        POP     AF
EE48  CCFCEC    CALL    Z,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
EE4B  EB        EX      DE,HL
EE4C  C9        RET

; {VALNR8} <DecimalShiftUp> [SCALPL]
; "Função auxiliar para deslocar o resultado decimalmente
; uma casa acima. Só fazemos isso se A<>0, e no final
; decrementamos A antes de retornar."
EE4D  C8        RET     Z
; {VALNR9} <DecimalShiftUp> [MULTEN]
EE4E  F5        PUSH    AF
EE4F  CDBCEC    CALL    #ECBC ; {HIROU5} <FMulByTen> [MLSP10]
EE52  F1        POP     AF
EE53  3D        DEC     A
EE54  C9        RET

; {VALN10} <ProcessDigit> [ADDIG]
; "Processa um dígito ASCII. Multiplicamos o total
; atual por dez, então somamos o valor deste dígito
; a ele."

; "Preserva o expoente atual (DE) e copia o valor
; do dígito ASCII para D."
EE55  D5        PUSH    DE
EE56  57        LD      D,A
; "Incrementa o contador de dígitos fracionais em B.
; C é $FF se nenhum ponto decimal foi encontrado,
; e 0 se foi. Somar com o carry (que é setado antes
; de se saltar a este bloco) faz isto funcionar."
EE57  78        LD      A,B
EE58  89        ADC     A,C
EE59  47        LD      B,A
EE5A  C5        PUSH    BC
EE5B  E5        PUSH    HL
EE5C  D5        PUSH    DE
EE5D  CDBCEC    CALL    #ECBC ; {HIROU5} <FMulByTen> [MLSP10]
EE60  F1        POP     AF
EE61  D630      SUB     '0'
EE63  CD6CEE    CALL    #EE6C ; {PLUS0} [RSCALE]
EE66  E1        POP     HL
EE67  C1        POP     BC
EE68  D1        POP     DE
EE69  C301EE    JP      #EE01 ; {VALNR2} <FInLoop> [MANLP]

; {PLUS0} [RSCALE]
EE6C  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
EE6F  CDE5EC    CALL    #ECE5 ; {SGN0} <FCharToFloat> [FLGREL]
; BADD:
; @FADDT {PLUS} <FAdd> [PADD]
EE72  C1        POP     BC
EE73  D1        POP     DE
EE74  C39AEA    JP      #EA9A ; BCDEPLUSFLOAT {ADD5} [FPADD]

; {VALN11} <DoExponentDigit> [EDIGIT]
EE77  7B        LD      A,E
EE78  07        RLCA
EE79  07        RLCA
EE7A  83        ADD     A,E
EE7B  07        RLCA
EE7C  86        ADD     A,(HL)
EE7D  D630      SUB     '0'
EE7F  5F        LD      E,A
EE80  C326EE    JP      #EE26 ; {VALNR3} <NextExponentDigit> [EXPLP]

; Imprime " EM " seguido do valor numérico em HL.
; {INOUT} <PrintIN> [LINEIN]
EE83  E5        PUSH    HL
EE84  21E5D7    LD      HL,#D7E5 ; {IN} <szIn> [INMSG]
EE87  CD34E7    CALL    #E734 ; PRINTSTRHL {TEXTO} <PrintString> [PRS]
EE8A  E1        POP     HL
; PRINTHL: Imprime o valor numérico
; armazenado em HL.
; {NUMBO} <PrintInt> [PRNTHL]
EE8B  EB        EX      DE,HL
EE8C  AF        XOR     A
EE8D  0698      LD      B,#80+24 ; 24 bits.
EE8F  CDEAEC    CALL    #ECEA ; FLOATBADE {SGN1} <FCharToFloat+5> [RETINT]
; Imprime o número de ponto flutuante em
; FLOAT.
; Forja retorno para PRINTSTRHL-1.
EE92  2133E7    LD      HL,#E733 ; {TEXTO0} <PrintSz-1> [PRNUMS]
EE95  E5        PUSH    HL
; STRFLOAT: Monta em #03C4 a representação
; string de FLOAT.
; @FOUT {NUMKON} [NUMASC]
EE96  21C403    LD      HL,#03C4 ; {INTPRB} <FBUFFER> [PBUFF]
EE99  E5        PUSH    HL
; Verifica o sinal.
EE9A  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
; Se positivo ou zero, coloca um espaço no
; início.
EE9D  3620      LD      (HL),' '
EE9F  F2A4EE    JP      P,#EEA4 ; {NORM1} <DoZero> [SPCFST]
; Se negativo, coloca um "-" no início.
EEA2  362D      LD      (HL),'-'
; {NORM1} <DoZero> [SPCFST]
; Coloca um zero.
EEA4  23        INC     HL
EEA5  3630      LD      (HL),'0'
; Se o número for zero, termina.
EEA7  CA51EF    JP      Z,#EF51 ; {NORM12} <NullTerm-3> [JSTZER]
;
EEAA  E5        PUSH    HL
; Se for negativo, torna o número positivo.
; (Já imprimimos o sinal, agora ele não
; importa mais.)
EEAB  FCFCEC    CALL    M,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
;
EEAE  AF        XOR     A
EEAF  F5        PUSH    AF
EEB0  CD57EF    CALL    #EF57 ; {NORM14} <ToUnder1,000,000> [RNGTST]
; {NORM2} <ToOver100,000> [SIXDIG]
EEB3  014391    LD      BC,#9143 ; BCDE <- 99999.9
EEB6  11F84F    LD      DE,#4FF8
EEB9  CD4DED    CALL    #ED4D ; CPFLOATBCDE {VORZ1} <FCompare> [CMPNUM]
EEBC  B7        OR      A
EEBD  E2D0EE    JP      PO,#EED0 ; {NORM4} <PrepareToPrint> [INRNG]
EEC0  F1        POP     AF
EEC1  CD4EEE    CALL    #EE4E ; {VALNR9} <DecimalShiftUp> [MULTEN]
EEC4  F5        PUSH    AF
EEC5  18EC      JR      #EEB3 ; {NORM2} <ToOver100,000> [SIXDIG]

; STRFLOATEXP: Continuação de STRFLOAT,
; em que o número vai ser impresso em
; formato exponencial (1E+06).
; {NORM3} [GTSIXD]
EEC7  CD1FEC    CALL    #EC1F ; DIVFLOAT10 {DIV0} <FDivByTen> [DIV10]
EECA  F1        POP     AF
EECB  3C        INC     A
EECC  F5        PUSH    AF
EECD  CD57EF    CALL    #EF57 ; {NORM14} <ToUnder1,000,000> [RNGTST]
; {NORM4} <PrepareToPrint> [INRNG]
EED0  CD89EA    CALL    #EA89 ; FLOATPLUSHALF {ADD1} <FAddOneHalf> [ROUND]
EED3  3C        INC     A
EED4  CD7AED    CALL    #ED7A ; {INTMOV} <FAsInteger> [FPINT]
EED7  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
EEDA  010603    LD      BC,#0306 ; Faixa de 1E+06 a 1E+03.
EEDD  F1        POP     AF
EEDE  81        ADD     A,C
EEDF  3C        INC     A
EEE0  FAEBEE    JP      M,#EEEB ; {NORM5} [MAKNUM]
EEE3  FE08      CP      #08
EEE5  3004      JR      NC,#EEEB ; {NORM5} [MAKNUM]
EEE7  3C        INC     A
EEE8  47        LD      B,A
EEE9  3E02      LD      A,#02
; {NORM5} [MAKNUM]
EEEB  3D        DEC     A
EEEC  3D        DEC     A
EEED  E1        POP     HL
EEEE  F5        PUSH    AF
EEEF  116AEF    LD      DE,#EF6A ; {POF10} <DECIMAL_POWERS> [POWERS]
EEF2  05        DEC     B
EEF3  2006      JR      NZ,#EEFB ; {NORM6} [DIGTXT] 
EEF5  362E      LD      (HL),'.'
EEF7  23        INC     HL
EEF8  3630      LD      (HL),'0'
EEFA  23        INC     HL
; {NORM6} [DIGTXT]
EEFB  05        DEC     B
EEFC  362E      LD      (HL),'.'
EEFE  CC29ED    CALL    Z,#ED29 ; {OPLAD1} <IncHL+Return> [INCHL]
EF01  C5        PUSH    BC
EF02  E5        PUSH    HL
EF03  D5        PUSH    DE
EF04  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
EF07  E1        POP     HL
EF08  062F      LD      B,'0'-1
; {NORM7} [TRYAGN]
EF0A  04        INC     B
EF0B  7B        LD      A,E
EF0C  96        SUB     (HL)
EF0D  5F        LD      E,A
EF0E  23        INC     HL
EF0F  7A        LD      A,D
EF10  9E        SBC     A,(HL)
EF11  57        LD      D,A
EF12  23        INC     HL
EF13  79        LD      A,C
EF14  9E        SBC     A,(HL)
EF15  4F        LD      C,A
EF16  2B        DEC     HL
EF17  2B        DEC     HL
EF18  30F0      JR      NC,#EF0A ; {NORM7} [TRYAGN]
EF1A  CD3CEB    CALL    #EB3C ; {ADD19} [PLUCDE]
EF1D  23        INC     HL
EF1E  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
EF21  EB        EX      DE,HL
EF22  E1        POP     HL
EF23  70        LD      (HL),B
EF24  23        INC     HL
EF25  C1        POP     BC
EF26  0D        DEC     C
EF27  20D2      JR      NZ,#EEFB ; {NORM6} [DIGTXT]
EF29  05        DEC     B
EF2A  280B      JR      Z,#EF37 ; {NORM9} [DOEBIT]
; {NORM8} [SUPTLZ]
EF2C  2B        DEC     HL
EF2D  7E        LD      A,(HL)
EF2E  FE30      CP      '0'
EF30  28FA      JR      Z,#EF2C ; {NORM8} [SUPTLZ]
EF32  FE2E      CP      '.'
EF34  C429ED    CALL    NZ,#ED29 ; {OPLAD1} <IncHL+Return> [INCHL]
; {NORM9} [DOEBIT]
EF37  F1        POP     AF
EF38  281A      JR      Z,#EF54 ; {NORM13} <NullTerm> [NOENED]
EF3A  3645      LD      (HL),'E'
EF3C  23        INC     HL
EF3D  362B      LD      (HL),'+'
EF3F  F246EF    JP      P,#EF46 ; {NORM10} [OUTEXP]
EF42  362D      LD      (HL),'-'
EF44  2F        CPL
EF45  3C        INC     A
; {NORM10} [OUTEXP]
EF46  062F      LD      B,'0'-1
; {NORM11} [EXPTEN]
EF48  04        INC     B
EF49  D60A      SUB     10
EF4B  30FB      JR      NC,#EF48 ; {NORM11} [EXPTEN]
EF4D  C63A      ADD     A,'9'+1
EF4F  23        INC     HL
EF50  70        LD      (HL),B
; {NORM12} <NullTerm-3> [JSTZER]
EF51  23        INC     HL
EF52  77        LD      (HL),A
EF53  23        INC     HL
; {NORM13} <NullTerm> [NOENED]
EF54  71        LD      (HL),C
EF55  E1        POP     HL
EF56  C9        RET

; {NORM14} <ToUnder1,000,000> [RNGTST]
; BCDE <-- 999999.
EF57  017494    LD      BC,#9474
EF5A  11F723    LD      DE,#23F7
; Se FLOAT > 999999, escreve em formato
; exponencial (1E+06).
EF5D  CD4DED    CALL    #ED4D ; CPFLOATBCDE {VORZ1} <FCompare> [CMPNUM]
EF60  B7        OR      A
EF61  E1        POP     HL
EF62  E2C7EE    JP      PO,#EEC7 ; {NORM3} [GTSIXD]
EF65  E9        JP      (HL)

; {SQRL} <ONE_HALF> [HALF]
EF66  00000080  DB      #00,#00,#00,#80 ; 1/2 (0,5)

; Potências de 10.
; {POF10} <DECIMAL_POWERS> [POWERS]
EF6A  A08601    DB      #A0,#86,#01 ; 100.000
EF6D  102700    DB      #10,#27,#00 ; 10.000
EF70  E80300    DB      #E8,#03,#00 ; 1.000
EF73  640000    DB      #00,#64,#00 ; 100
EF76  0A0000    DB      #0A,#00,#00 ; 10
EF70  010000    DB      #01,#00,#00 ; 1

; {EXPO3} [NEGAFT]
EF7C  21FCEC    LD      HL,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
EF7F  E3        EX      (SP),HL
EF80  E9        JP      (HL)

; BSQR:
; sqr x = x^(1/2)
; {SQR} <Sqr> [SQR]
EF81  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
EF84  2166EF    LD      HL,#EF66 ; {SQRL} <ONE_HALF> [HALF] ; 1/2
EF87  CD11ED    CALL    #ED11 ; FLOATHL {OPKOP} <FLoadFromMem> [PHLTFP]

; BPOW:
; Potência.
; @FPWRT {EXPO} [POWER]
EF8A  C1        POP     BC ; Obtém a base.
EF8B  D1        POP     DE
EF8C  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
EF8F  78        LD      A,B
EF90  283C      JR      Z,#EFCE ; {EXP} [EXP]
EF92  F299EF    JP      P,#EF99 ; {EXPO1} [POWER1]
EF95  B7        OR      A
EF96  CA4BD8    JP      Z,#D84B ; DZERRO {DIVER} <DivideByZero> [DZERR]
; {EXPO1} [POWER1]
EF99  B7        OR      A
EF9A  CAFEEA    JP      Z,#EAFE ; {ADD13} [SAVEXP]
EF9D  D5        PUSH    DE
EF9E  C5        PUSH    BC
EF9F  79        LD      A,C
EFA0  F67F      OR      #7F
EFA2  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
EFA5  F2B6EF    JP      P,#EFB6 ; {EXPO2} [POWER2]
EFA8  D5        PUSH    DE
EFA9  C5        PUSH    BC
EFAA  CDA5ED    CALL    #EDA5 ; BINT {INT} <Int> [INT]
EFAD  C1        POP     BC
EFAE  D1        POP     DE
EFAF  F5        PUSH    AF
EFB0  CD4DED    CALL    #ED4D ; CPFLOATBCDE {VORZ1} <FCompare> [CMPNUM]
EFB3  E1        POP     HL
EFB4  7C        LD      A,H
EFB5  1F        RRA
; {EXPO2} [POWER2]
EFB6  E1        POP     HL
EFB7  22C103    LD      (#03C1),HL ; {WRA1+2} <FACCUM+2> [FPREG+2]
EFBA  E1        POP     HL
EFBB  22BF03    LD      (#03BF),HL ; FLOAT @FACLO {WRA1} <FACCUM> [FPREG]
EFBE  DC7CEF    CALL    C,#EF7C ; {EXPO3} [NEGAFT]
EFC1  CCFCEC    CALL    Z,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
EFC4  D5        PUSH    DE
EFC5  C5        PUSH    BC
EFC6  CD8EEB    CALL    #EB8E ; BLOG {LOG} [LOG]
EFC9  C1        POP     BC
EFCA  D1        POP     DE
EFCB  CDCFEB    CALL    #EBCF ; {MUL1} [FPMULT]

; BEXP:
; e^x = 1 + x + x^2/2! + x^3/3! + ...
; {EXP} [EXP]
EFCE  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
EFD1  013881    LD      BC,#8138 ; 1,4427 = 1/Ln(2).
EFD4  113BAA    LD      DE,#AA3B
EFD7  CDCFEB    CALL    #EBCF ; {MUL1} [FPMULT]
EFDA  3AC203    LD      A,(#03C2) ; {WRA1+3} <FACCUM+3> [FPEXP]
EFDD  FE88      CP      #80+8
EFDF  D2AFEC    JP      NC,#ECAF ; {HIROU2} [OVTST1]
EFE2  CDA5ED    CALL    #EDA5 ; BINT {INT} <Int> [INT]
EFE5  C680      ADD     A,#80
EFE7  C602      ADD     A,#02
EFE9  DAAFEC    JP      C,#ECAF ; {HIROU2} [OVTST1]
EFEC  F5        PUSH    AF
EFED  217DEB    LD      HL,#EB7D ; {LOGL} [UNITY] ; 1
EFF0  CD8CEA    CALL    #EA8C ; HLPLUSFLOAT {ADD2} [ADDPHL]
EFF3  CDC6EB    CALL    #EBC6 ; {LOG1} [MULLN2]
EFF6  F1        POP     AF
EFF7  C1        POP     BC
EFF8  D1        POP     DE
EFF9  F5        PUSH    AF
EFFA  CD97EA    CALL    #EA97 ; BCDEMINUSFLOAT {ADD4} [SUBCDE]
EFFD  CDFCEC    CALL    #ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
F000  210EF0    LD      HL,#F00E ; {EXPL} [EXPTAB]
F003  CD3EF0    CALL    #F03E ; {REIHE1} [SMSER1]
F006  110000    LD      DE,#0000
F009  C1        POP     BC
F00A  4A        LD      C,D
F00B  C3CFEB    JP      #EBCF ; {MUL1} [FPMULT]

; Dados para cálculo de EXP(X).
; {EXPL} [EXPTAB]
F00E  08        DB      #08
F00F  402E9474  DB      #40,#2E,#94,#74 ; -1,41416E-4 (-1/7! = -1/5040 (-1,98413E-4))
F013  704F2E77  DB      #70,#4F,#2E,#77 ; +1,32988E-3 (1/6! = +1/720 (+1,38889E-3))
F017  6E02887A  DB      #6E,#02,#88,#7A ; -8,30136E-3 (-1/5! = -1/120 (-8,33333E-3))
F01B  E6A02A7C  DB      #E6,#A0,#2A,#7C ; +0,0416574 (1/4! = +1/24 (+0,0416667))
F01F  50AAAA7E  DB      #50,#AA,#AA,#7E ; -0,166665 (-1/3! = -1/6 (-0,166667))
F023  FFFF7F7F  DB      #FF,#FF,#7F,#7F ; +0,5 (+1/2! = +1/2)
F027  00008081  DB      #00,#00,#80,#81 ; -1 (-1/1! = -1/1)
F02B  00000081  DB      #00,#00,#00,#81 ; +1 (+1/0! = +1/1)

; {Rotina para desenvolvimento de funções em série.}
; {REIHE} [SUMSER]
F02F  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
F032  11CDEB    LD      DE,#EBCD ; Forja retorno para BMUL @FMULTT {MUL} <FMul> [MULT]
F035  D5        PUSH    DE
F036  E5        PUSH    HL
F037  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP]
F03A  CDCFEB    CALL    #EBCF ; {MUL1} [FPMULT]
F03D  E1        POP     HL
; {REIHE1} [SMSER1]
F03E  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
F041  7E        LD      A,(HL)
F042  23        INC     HL
F043  CD11ED    CALL    #ED11 ; FLOATHL {OPKOP} <FLoadFromMem> [PHLTFP]
; O byte abaixo:
F046  06        DB      #06
; compõe com a instrução seguinte a instrução
; F046  06F1      LD      B,#F1
; , ocultando-a.
; {REIHE2} [SUMLP]
F047  F1        POP     AF
;
F048  C1        POP     BC
F049  D1        POP     DE
F04A  3D        DEC     A
F04B  C8        RET     Z
F04C  D5        PUSH    DE
F04D  C5        PUSH    BC
F04E  F5        PUSH    AF
F04F  E5        PUSH    HL
F050  CDCFEB    CALL    #EBCF ; {MUL1} [FPMULT]
F053  E1        POP     HL
F054  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
F057  E5        PUSH    HL
F058  CD9AEA    CALL    #EA9A ; BCDEPLUSFLOAT {ADD5} [FPADD]
F05B  E1        POP     HL
F05C  18E9      JR      #F047 ; {REIHE2} [SUMLP]

; BRND:
; {RND} <Rnd> [RND]
F05E  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN] ; Testa sinal de FLOAT. (A = $01, $00 ou $ff)
F061  211903    LD      HL,#0319 ; {RNDVR3} [SEED+2] ; Semente de número aleatório.
F064  FABEF0    JP      M,#F0BE ; {RND3} [RESEED] ; Negativo: Semeia de novo.
F067  213A03    LD      HL,#033A ; @RNDX {RNDVR4} [LSTRND] ; Último número aleatório.
F06A  CD11ED    CALL    #ED11 ; FLOATHL {OPKOP} <FLoadFromMem> [PHLTFP] ; Move último RND para FLOAT.
F06D  211903    LD      HL,#0319 ; {RNDVR3} [SEED+2] ; Obtém seletor da semente de número aleatório.
F070  C8        RET     Z ; Retorna se RND(0).
F071  86        ADD     A,(HL) ; Soma A ao seletor de semente número aleatório.
F072  E607      AND     #07 ; Restringe a 0~7.
F074  0600      LD      B,#00
F076  77        LD      (HL),A ; Atualiza seletor.
F077  23        INC     HL ; HL aponta para a tabela de coeficientes (8 números em ponto flutuante a partir de {RNDVR3+1} [SEED+3]).
F078  87        ADD     A,A ; BC = 4 * A.
F079  87        ADD     A,A
F07A  4F        LD      C,A
F07B  09        ADD     HL,BC ; HL aponta para o coeficiente selecionado.
F07C  CD22ED    CALL    #ED22 ; BCDEHL {OPLAD} <FLoadBCDEFromMem> [LOADFP]
F07F  CDCFEB    CALL    #EBCF ; {MUL1} [FPMULT] ; Multiplica FLOAT (último número aleatório) pelo coeficiente selecionado.
F082  3A1803    LD      A,(#0318) ; {RNDVR2} [SEED+1] ; Obtém o seletor de ...?
F085  3C        INC     A ; Próximo elemento.
F086  E603      AND     #03 ; Restringe a 0~3.
F088  0600      LD      B,#00
F08A  FE01      CP      #01 ; Se for zero, muda para 1. (Agora está na faixa 1~3.)
F08C  88        ADC     A,B
F08D  321803    LD      (#0318),A ; {RNDVR2} [SEED+1] ; Atualiza seletor.
F090  21C2F0    LD      HL,#F0C2 ; {RNDL-4} [RNDTAB-4] ; HL aponta para 4 bytes antes da tabela de adição (3 números em ponto flutuante).
F093  87        ADD     A,A ; BC = 4 * A.
F094  87        ADD     A,A
F095  4F        LD      C,A
F096  09        ADD     HL,BC ; HL aponta para o valor selecionado.
F097  CD8CEA    CALL    #EA8C ; HLPLUSFLOAT {ADD2} [ADDPHL] ; Soma a FLOAT o valor selecionado.
; {RND1} [RND1]
F09A  CD1FED    CALL    #ED1F ; BCDEFLOAT {OPLAD0} <FCopyToBCDE> [BCDEFP] ; Copia o valor de FLOAT para BCDE.
F09D  7B        LD      A,E ; Obtém LSB.
F09E  59        LD      E,C ; LSB = MSB.
F09F  EE4F      XOR     #4F ; %01001111 ; Remexe com os bits.
F0A1  4F        LD      C,A ; Novo MSB.
F0A2  3680      LD      (HL),#80 ; Define expoente.
F0A4  2B        DEC     HL ; Aponta ao MSB.
F0A5  46        LD      B,(HL) ; Obtém MSB.
F0A6  3680      LD      (HL),#80 ; Valor = -0.5.
F0A8  211703    LD      HL,#0317 ; {RNDVR1} [SEED] ; Semente de número aleatório.
F0AB  34        INC     (HL) ; Conta semente.
F0AC  7E        LD      A,(HL) ; Obtém semente.
F0AD  D6AB      SUB     #AB ; 171 ; A = A - 171.
F0AF  2004      JR      NZ,#F0B5 ; {RND2} [RND2] ; Se não deu 0, OK: Desvia.
F0B1  77        LD      (HL),A ; Atualiza semente.
F0B2  0C        INC     C ; Remexe
F0B3  15        DEC     D ; no
F0B4  1C        INC     E ; número.
; {RND2} [RND2]
F0B5  CDEAEA    CALL    #EAEA ; {ADD10} [BNORM] ; Normaliza número.
F0B8  213A03    LD      HL,#033A ; @RNDX {RNDVR4} [LSTRND] ; Preserva número aleatório gerado...
F0BB  C32BED    JP      #ED2B ; HLFLOAT {OPTRAN} <FCopyToMem> [FPTHL] ; ...e retorna.

; {RND3} [RESEED]
F0BE  77        LD      (HL),A ; Reinicia {RNDVR3} [SEED+2].
F0BF  2B        DEC     HL
F0C0  77        LD      (HL),A ; Reinicia {RNDVR2} [SEED+1].
F0C1  2B        DEC     HL
F0C2  77        LD      (HL),A ; Reinicia {RNDVR1} [SEED].
F0C3  C39AF0    JP      #F09A ; {RND1} [RND1]

; Dados para cálculo de RND(X).
; {RNDL} [RNDTAB]
F0C6  68B14668  DB      #68,#B1,#46,#68 ; 4,62618E-8
F0CA  99E99269  DB      #99,#E9,#92,#69 ; -6,84115E-8
F0CE  10D17568  DB      #10,#D1,#75,#68 ; 5,72337E-8

; BCOS
; cos x = sen (x + PI/2)
F0D2  211CF1    LD      HL,#F11C ; {COSL} [HALFPI] ; PI/2
F0D5  CD8CEA    CALL    #EA8C ; HLPLUSFLOAT {ADD2} [ADDPHL]

; BSIN
; sen x = x - x^3/3! + x^5/5! - x^7/7! + ...
F0D8  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
F0DB  014983    LD      BC,#8349 ; BCDE <-- 2*PI (6,28319)
F0DE  11DB0F    LD      DE,#0FDB
F0E1  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
F0E4  C1        POP     BC
F0E5  D1        POP     DE
F0E6  CD2DEC    CALL    #EC2D ; DIVBCDEFLOAT {DIV1} [DVBCDE]
F0E9  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
F0EC  CDA5ED    CALL    #EDA5 ; BINT {INT} <Int> [INT]
F0EF  C1        POP     BC
F0F0  D1        POP     DE
F0F1  CD97EA    CALL    #EA97 ; BCDEMINUSFLOAT {ADD4} [SUBCDE]
F0F4  2120F1    LD      HL,#F120 ; {SINL1} [QUARTR] ; 1/4
F0F7  CD91EA    CALL    #EA91 ; HLMINUSFLOAT {ADD3} [SUBPHL]
F0FA  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
F0FD  37        SCF
F0FE  F208F1    JP      P,#F108
F101  CD89EA    CALL    #EA89 ; FLOATPLUSHALF {ADD1} <FAddOneHalf> [ROUND]
F104  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
F107  B7        OR      A
F108  F5        PUSH    AF
F109  F4FCEC    CALL    P,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
F10C  2120F1    LD      HL,#F120 ; {SINL1} [QUARTR] ; 1/4
F10F  CD8CEA    CALL    #EA8C ; HLPLUSFLOAT {ADD2} [ADDPHL]
F112  F1        POP     AF
F113  D4FCEC    CALL    NC,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
F116  2124F1    LD      HL,#F124 ; {SINL} [SINTAB]
F119  C32FF0    JP      #F02F ; {REIHE} [SUMSER]

; {COSL} [HALFPI]
F11C  DB0F4981  DB      #DB,#0F,#49,#81 ; PI/2 (1,5708)

; {SINL1} [QUARTR]
F120  0000007F  DB      #00,#00,#00,#7F ; 1/4 (0,25)

; {SINL} [SINTAB]
; Dados para cálculo de SIN(X).
F124  05        DB      #05
F125  BAD71E86  DB      #BA,#D7,#1E,#86 ; 39,7107
F129  64269987  DB      #64,#26,#99,#87 ; -76,575
F12D  58342387  DB      #58,#34,#23,#87 ; 81,6022
F131  E05DA586  DB      #E0,#5D,#A5,#86 ; -41,3417
F135  DA0F4983  DB      #DA,#0F,#49,#83 ; 2*PI (6,28391)

; BTAN
; tg x = sen x / cos x
F139  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
F13C  CDD8F0    CALL    #F0D8 ; BSIN
F13F  C1        POP     BC
F140  E1        POP     HL
F141  CD04ED    CALL    #ED04 ; PUSHFLOAT {OPARST} <FPush> [STAKFP]
F144  EB        EX      DE,HL
F145  CD14ED    CALL    #ED14 ; FLOATBCDE {OPKOP1} <FLoadFromBCDE> [FPBCDE]
F148  CDD2F0    CALL    #F0D2 ; BCOS
F14B  C32BEC    JP      #EC2B ; BDIV @FDIVT {DIV} <FDiv>

; BATN
; arc tg x = x - x^3/3 + x^5/5 - x^7/7 + ...
F14E  CDD3EC    CALL    #ECD3 ; SGNFLOAT {TSGNM} <FTestSign> [TSTSGN]
F151  FC7CEF    CALL    M,#EF7C ; {EXPO3} [NEGAFT]
F154  FCFCEC    CALL    M,#ECFC ; NEGFLOAT {ABS1} <FNegate> [INVSGN]
F157  3AC203    LD      A,(#03C2) ; {WRA1+3} <FACCUM+3> [FPEXP]
F15A  FE81      CP      #81
F15C  380C      JR      C,#F16A         ; (12)
F15E  010081    LD      BC,#8100 ; BCDE <-- 1
F161  51        LD      D,C
F162  59        LD      E,C
F163  CD2DEC    CALL    #EC2D ; DIVBCDEFLOAT {DIV1} [DVBCDE]
F166  2191EA    LD      HL,#EA91 ; HLMINUSFLOAT {ADD3} [SUBPHL]
F169  E5        PUSH    HL
F16A  2174F1    LD      HL,#F174
F16D  CD2FF0    CALL    #F02F ; {REIHE} [SUMSER]
F170  211CF1    LD      HL,#F11C ; {COSL} [HALFPI] ; PI/2
F173  C9        RET

; Dados para cálculo de ATN(X).
F174  09        DB      #09
F175  4AD73B78  DB      #4A,#D7,#3B,#78 ; 0,00286623 (1/17 (0,0588235))
F179  026E847B  DB      #02,#6E,#84,#7B ; -0,0161657 (-1/15 (-0,0666667))
F17D  FEC12F7C  DB      #FE,#C1,#2F,#7C ; 0,0429096 (1/13 (0,0769231))
F181  74319A7D  DB      #74,#31,#9A,#7D ; -0,0752896 (-1/11 (-0,0909091))
F185  843D5A7D  DB      #84,#3D,#5A,#7D ; 0,106563 (1/9 (0,111111))
F189  C87F917E  DB      #C8,#7F,#91,#7E ; -0,142089 (-1/7 (-0,142857))
F18D  E4BB4C7E  DB      #E4,#BB,#4C,#7E ; 0,199936 (1/5 (0,2))
F191  6CAAAA7F  DB      #6C,#AA,#AA,#7F ; -0,333331 (-1/3 (0,333333))
F195  00000081  DB      #00,#00,#00,#81 ; 1

; CHKINVERSE: Checa se está em modo INVERSE.
; Caso afirmativo, alterna o 8º bit do
; caracter (salvo em caso de caracter de
; controle).
F199  3A5203    LD      A,(#0352)
F19C  B7        OR      A
F19D  C8        RET     Z
F19E  79        LD      A,C
F19F  FE20      CP      #20
F1A1  D8        RET     C
F1A2  EE80      XOR     #80
F1A4  4F        LD      C,A
F1A5  C9        RET
; (CHKPRINTER: Checa se é para imprimir na
; impressora.(?))
F1A6  4F        LD      C,A
F1A7  F5        PUSH    AF
F1A8  3A2801    LD      A,(#0128) ; PNTR
F1AB  B7        OR      A
F1AC  2807      JR      Z,#F1B5         ; (7)
F1AE  CDCBC0    CALL    #C0CB ; LPDRV
F1B1  FE02      CP      #02
F1B3  2006      JR      NZ,#F1BB        ; (6)
;
F1B5  CD99F1    CALL    #F199 ; CHKINVERSE
F1B8  CD97C8    CALL    #C897 ; CO
;
F1BB  F1        POP     AF
F1BC  C9        RET
;
; Valores para os registradores no DEBUG
F1BD  EE        DB      #EE ; E
F1BE  DD        DB      #DD ; D
F1BF  CC        DB      #CC ; C
F1C0  BB        DB      #BB ; B
F1C1  00        DB      #00 ;
F1C2  FB        DB      #FB ; I
F1C3  FF        DB      #FF ; F
F1C4  AA        DB      #AA ; A
F1C5  FFFF      DB      #FF,#FF ; IX
F1C7  FFFF      DB      #FF,#FF ; IY
F1C9  5306      DB      #53,#06 ; PC, HL
F1CB  EE        DB      #EE ; E'
F1CC  DD        DB      #DD ; D'
F1CD  CC        DB      #CC ; C'
F1CE  BB        DB      #BB ; B'
F1CF  00        DB      #00 ;
F1CF  FB        DB      #FB ; I'
F1CF  FF        DB      #FF ; F
F1CF  AA        DB      #AA ; A'
F1D3  0002      DB      #00,#02 ; SP, HL'
F1D5  D1        POP     DE
F1D6  C1        POP     BC
F1D7  F1        POP     AF
F1D8  F1        POP     AF
F1D9  DDE1      POP     IX
F1DB  FDE1      POP     IY
F1DD  08        EX      AF,AF'
F1DE  D9        EXX
F1DF  E1        POP     HL
F1E0  D1        POP     DE
F1E1  C1        POP     BC
F1E2  F1        POP     AF
F1E3  F1        POP     AF
F1E4  08        EX      AF,AF'
F1E5  D9        EXX
F1E6  E1        POP     HL
F1E7  F9        LD      SP,HL
F1E8  212900    LD      HL,#0029
F1EB  C35306    JP      #0653
F1EE  00        NOP
F1EF  00        NOP
F1F0  00        NOP
F1F1  00        NOP
F1F2  00        NOP
F1F3  00        NOP
F1F4  E1        POP     HL
F1F5  210000    LD      HL,#0000
F1F8  39        ADD     HL,SP
F1F9  225503    LD      (#0355),HL
F1FC  3E41      LD      A,#41
F1FE  320300    LD      (#0003),A
F201  31C000    LD      SP,#00C0
F204  3EC3      LD      A,#C3
F206  323000    LD      (#0030),A
F209  21F2F4    LD      HL,#F4F2
F20C  223100    LD      (#0031),HL
F20F  013700    LD      BC,#0037
F212  11C000    LD      DE,#00C0
F215  21BDF1    LD      HL,#F1BD
F218  EDB0      LDIR
F21A  180E      JR      #F22A           ; (14)
F21C  2A5503    LD      HL,(#0355)
F21F  F9        LD      SP,HL
F220  C38DD8    JP      #D88D ; {EDIT} [PRNTOK]
F223  31C000    LD      SP,#00C0
F226  CD0FF4    CALL    #F40F
F229  23        INC     HL
F22A  CD22F4    CALL    #F422
F22D  CD0FF4    CALL    #F40F
F230  3ECD      LD      A,#CD
F232  D8        RET     C
F233  F4FE0D    CALL    P,#0DFE
F236  28F2      JR      Z,#F22A         ; (-14)
F238  D641      SUB     #41
F23A  FA23F2    JP      M,#F223
F23D  0E02      LD      C,#02
F23F  112AF2    LD      DE,#F22A
F242  D5        PUSH    DE
F243  2155F2    LD      HL,#F255
F246  FE1A      CP      #1A
F248  F223F2    JP      P,#F223
F24B  5F        LD      E,A
F24C  1600      LD      D,#00
F24E  19        ADD     HL,DE
F24F  19        ADD     HL,DE
F250  7E        LD      A,(HL)
F251  23        INC     HL
F252  66        LD      H,(HL)
F253  6F        LD      L,A
F254  E9        JP      (HL)
F255  23        INC     HL
F256  F223F2    JP      P,#F223
F259  23        INC     HL
F25A  F289F2    JP      P,#F289
F25D  23        INC     HL
F25E  F2B4F2    JP      P,#F2B4
F261  C2F223    JP      NZ,#23F2
F264  F223F2    JP      P,#F223
F267  23        INC     HL
F268  F223F2    JP      P,#F223
F26B  23        INC     HL
F26C  F2FFF2    JP      P,#F2FF
F26F  23        INC     HL
F270  F223F2    JP      P,#F223
F273  23        INC     HL
F274  F20FF3    JP      P,#F30F
F277  46        LD      B,(HL)
F278  F3        DI
F279  20F3      JR      NZ,#F26E        ; (-13)
F27B  23        INC     HL
F27C  F223F2    JP      P,#F223
F27F  23        INC     HL
F280  F223F2    JP      P,#F223
F283  4B        LD      C,E
F284  F3        DI
F285  23        INC     HL
F286  F223F2    JP      P,#F223
F289  CD5CF4    CALL    #F45C
F28C  D1        POP     DE
F28D  E1        POP     HL
F28E  CD8BF4    CALL    #F48B
F291  CD2BF4    CALL    #F42B
F294  0E20      LD      C,#20
F296  CD15F4    CALL    #F415
F299  7E        LD      A,(HL)
F29A  CD30F4    CALL    #F430
F29D  CD6DF4    CALL    #F46D
F2A0  DA8BF4    JP      C,#F48B
F2A3  3A0F00    LD      A,(#000F) ; C40?80
F2A6  B7        OR      A
F2A7  7D        LD      A,L
F2A8  2804      JR      Z,#F2AE         ; (4)
F2AA  E60F      AND     #0F
F2AC  1802      JR      #F2B0           ; (2)
F2AE  E607      AND     #07
F2B0  20E2      JR      NZ,#F294        ; (-30)
F2B2  18DA      JR      #F28E           ; (-38)
F2B4  0C        INC     C
F2B5  CD5CF4    CALL    #F45C
F2B8  C1        POP     BC
F2B9  D1        POP     DE
F2BA  E1        POP     HL
F2BB  71        LD      (HL),C
F2BC  CD6DF4    CALL    #F46D
F2BF  30FA      JR      NC,#F2BB        ; (-6)
F2C1  C9        RET
F2C2  21D800    LD      HL,#00D8
F2C5  E3        EX      (SP),HL
F2C6  CDC9F4    CALL    #F4C9
F2C9  280A      JR      Z,#F2D5         ; (10)
F2CB  CD9BF4    CALL    #F49B
F2CE  EB        EX      DE,HL
F2CF  21F000    LD      HL,#00F0
F2D2  72        LD      (HL),D
F2D3  2B        DEC     HL
F2D4  73        LD      (HL),E
F2D5  3825      JR      C,#F2FC         ; (37)
F2D7  110200    LD      DE,#0002
F2DA  CD0FF4    CALL    #F40F
F2DD  2D        DEC     L
F2DE  CD95F4    CALL    #F495
F2E1  E5        PUSH    HL
F2E2  14        INC     D
F2E3  3803      JR      C,#F2E8         ; (3)
F2E5  1D        DEC     E
F2E6  20F2      JR      NZ,#F2DA        ; (-14)
F2E8  D223F2    JP      NC,#F223
F2EB  21F100    LD      HL,#00F1
F2EE  C1        POP     BC
F2EF  71        LD      (HL),C
F2F0  23        INC     HL
F2F1  70        LD      (HL),B
F2F2  23        INC     HL
F2F3  0A        LD      A,(BC)
F2F4  77        LD      (HL),A
F2F5  23        INC     HL
F2F6  3EF7      LD      A,#F7
F2F8  02        LD      (BC),A
F2F9  15        DEC     D
F2FA  20F2      JR      NZ,#F2EE        ; (-14)
F2FC  C322F4    JP      #F422
F2FF  0C        INC     C
F300  CD5CF4    CALL    #F45C
F303  C1        POP     BC
F304  D1        POP     DE
F305  E1        POP     HL
F306  7E        LD      A,(HL)
F307  02        LD      (BC),A
F308  03        INC     BC
F309  CD6DF4    CALL    #F46D
F30C  30F8      JR      NC,#F306        ; (-8)
F30E  C9        RET
F30F  CDD8F4    CALL    #F4D8
F312  FE0D      CP      #0D
F314  C223F2    JP      NZ,#F223
F317  CD22F4    CALL    #F422
F31A  CD22F4    CALL    #F422
F31D  C31CF2    JP      #F21C
F320  CD95F4    CALL    #F495
F323  D0        RET     NC
F324  CD22F4    CALL    #F422
F327  CD77F4    CALL    #F477
F32A  CD0FF4    CALL    #F40F
F32D  207E      JR      NZ,#F3AD        ; (126)
F32F  CD7CF4    CALL    #F47C
F332  CD0FF4    CALL    #F40F
F335  20CD      JR      NZ,#F304        ; (-51)
F337  C9        RET
F338  F43808    CALL    P,#0838
F33B  C8        RET     Z
F33C  EB        EX      DE,HL
F33D  CD9BF4    CALL    #F49B
F340  EB        EX      DE,HL
F341  73        LD      (HL),E
F342  D0        RET     NC
F343  23        INC     HL
F344  18DE      JR      #F324           ; (-34)
F346  21CBF3    LD      HL,#F3CB
F349  1803      JR      #F34E           ; (3)
F34B  21A0F3    LD      HL,#F3A0
F34E  CDC9F4    CALL    #F4C9
F351  3837      JR      C,#F38A         ; (55)
F353  0E0E      LD      C,#0E
F355  BE        CP      (HL)
F356  2809      JR      Z,#F361         ; (9)
F358  23        INC     HL
F359  23        INC     HL
F35A  23        INC     HL
F35B  0D        DEC     C
F35C  20F7      JR      NZ,#F355        ; (-9)
F35E  C323F2    JP      #F223
F361  CD07F4    CALL    #F407
F364  CD4BF4    CALL    #F44B
F367  CD0FF4    CALL    #F40F
F36A  2D        DEC     L
F36B  CDC9F4    CALL    #F4C9
F36E  D8        RET     C
F36F  2810      JR      Z,#F381         ; (16)
F371  E5        PUSH    HL
F372  C5        PUSH    BC
F373  CD9BF4    CALL    #F49B
F376  7D        LD      A,L
F377  12        LD      (DE),A
F378  F1        POP     AF
F379  B7        OR      A
F37A  FA80F3    JP      M,#F380
F37D  13        INC     DE
F37E  7C        LD      A,H
F37F  12        LD      (DE),A
F380  E1        POP     HL
F381  AF        XOR     A
F382  B6        OR      (HL)
F383  F8        RET     M
F384  78        LD      A,B
F385  FE0D      CP      #0D
F387  C8        RET     Z
F388  18DA      JR      #F364           ; (-38)
F38A  CD22F4    CALL    #F422
F38D  CD07F4    CALL    #F407
F390  AF        XOR     A
F391  B6        OR      (HL)
F392  F8        RET     M
F393  4E        LD      C,(HL)
F394  CD09F4    CALL    #F409
F397  CD0FF4    CALL    #F40F
F39A  3D        DEC     A
F39B  CD4BF4    CALL    #F44B
F39E  18ED      JR      #F38D           ; (-19)
F3A0  41        LD      B,C
F3A1  C7        RST     #0
F3A2  00        NOP
F3A3  42        LD      B,D
F3A4  C30043    JP      #4300
F3A7  C20044    JP      NZ,#4400
F3AA  C1        POP     BC
F3AB  00        NOP
F3AC  45        LD      B,L
F3AD  C0        RET     NZ
F3AE  00        NOP
F3AF  46        LD      B,(HL)
F3B0  C600      ADD     A,#00
F3B2  48        LD      C,B
F3B3  ED0049    IN0     B,(#49)         ; Z180 INSTRUCTION
F3B6  C5        PUSH    BC
F3B7  00        NOP
F3B8  4C        LD      C,H
F3B9  EC004D    CALL    PE,#4D00
F3BC  ED0158    OUT0    (#58),B         ; Z180 INSTRUCTION
F3BF  C9        RET
F3C0  0159CB    LD      BC,#CB59
F3C3  0150F0    LD      BC,#F050
F3C6  0153D7    LD      BC,#D753
F3C9  01FF41    LD      BC,#41FF
F3CC  D5        PUSH    DE
F3CD  00        NOP
F3CE  42        LD      B,D
F3CF  D1        POP     DE
F3D0  00        NOP
F3D1  43        LD      B,E
F3D2  D0        RET     NC
F3D3  00        NOP
F3D4  44        LD      B,H
F3D5  CF        RST     #8
F3D6  00        NOP
F3D7  45        LD      B,L
F3D8  CE00      ADC     A,#00
F3DA  46        LD      B,(HL)
F3DB  D40048    CALL    NC,#4800
F3DE  CD0049    CALL    #4900
F3E1  D300      OUT     (#00),A
F3E3  4C        LD      C,H
F3E4  CC004D    CALL    Z,#4D00
F3E7  CD0158    CALL    #5801
F3EA  C9        RET
F3EB  0159CB    LD      BC,#CB59
F3EE  0150F0    LD      BC,#F050
F3F1  0153D7    LD      BC,#D753
F3F4  01FF      DB      #01,#FF
;
F3F6  CD09C0    CALL    #C009 ; KEY?
F3F9  C8        RET     Z
F3FA  CD06C0    CALL    #C006 ; KEY
F3FD  FE03      CP      #03 ; CTRL+C
F3FF  CA23F2    JP      Z,#F223
F402  FE13      CP      #13 ; CTRL+S
F404  28F4      JR      Z,#F3FA         ; (-12)
F406  C9        RET
;
F407  0E20      LD      C,#20
;
F409  CDF6F3    CALL    #F3F6
F40C  C3A7F1    JP      #F1A7
;
F40F  E3        EX      (SP),HL
F410  4E        LD      C,(HL)
F411  23        INC     HL
F412  E3        EX      (SP),HL
F413  18F4      JR      #F409           ; (-12)
;
F415  3A0300    LD      A,(#0003)
F418  FE81      CP      #81
F41A  20ED      JR      NZ,#F409        ; (-19)
F41C  CDF6F3    CALL    #F3F6
F41F  C3CBC0    JP      #C0CB ; LPDRV
F422  CD0FF4    CALL    #F40F
F425  0D        DEC     C
F426  CD0FF4    CALL    #F40F
F429  0A        LD      A,(BC)
F42A  C9        RET
; PRINTHEXHL : Imprime HL em hexadecimal.
F42B  7C        LD      A,H
F42C  CD30F4    CALL    #F430
F42F  7D        LD      A,L
; PRINTHEXA : Imprime A em hexadecimal.
F430  F5        PUSH    AF
F431  0F        RRCA
F432  0F        RRCA
F433  0F        RRCA
F434  0F        RRCA
F435  CD41F4    CALL    #F441 ; HEXNIBBLE
F438  CD15F4    CALL    #F415
F43B  F1        POP     AF
F43C  CD41F4    CALL    #F441 ; HEXNIBBLE
F43F  18D4      JR      #F415           ; (-44)
; HEXNIBBLE : Retorna em C o caracter corresponde ao nibble
; menos significativo de A. Por exemplo, se A = #8B,
; retorna C = caracter "B".
F441  E60F      AND     #0F
F443  C690      ADD     A,#90
F445  27        DAA
F446  CE40      ADC     A,#40
F448  27        DAA
F449  4F        LD      C,A
F44A  C9        RET
;
F44B  23        INC     HL
F44C  5E        LD      E,(HL)
F44D  1600      LD      D,#00
F44F  23        INC     HL
F450  46        LD      B,(HL)
F451  23        INC     HL
F452  1A        LD      A,(DE)
F453  CD7CF4    CALL    #F47C
F456  05        DEC     B
F457  F8        RET     M
F458  1B        DEC     DE
F459  1A        LD      A,(DE)
F45A  1820      JR      #F47C           ; (32)
F45C  CD95F4    CALL    #F495
F45F  E3        EX      (SP),HL
F460  E5        PUSH    HL
F461  0D        DEC     C
F462  3004      JR      NC,#F468        ; (4)
F464  C223F2    JP      NZ,#F223
F467  C9        RET
F468  20F2      JR      NZ,#F45C        ; (-14)
F46A  C323F2    JP      #F223
F46D  23        INC     HL
F46E  7C        LD      A,H
F46F  B5        OR      L
F470  37        SCF
F471  C8        RET     Z
F472  7B        LD      A,E
F473  95        SUB     L
F474  7A        LD      A,D
F475  9C        SBC     A,H
F476  C9        RET
F477  7C        LD      A,H
F478  CD7CF4    CALL    #F47C
F47B  7D        LD      A,L
F47C  F5        PUSH    AF
F47D  0F        RRCA
F47E  0F        RRCA
F47F  0F        RRCA
F480  0F        RRCA
F481  CD85F4    CALL    #F485
F484  F1        POP     AF
F485  CD41F4    CALL    #F441
F488  C309F4    JP      #F409
F48B  0E0D      LD      C,#0D
F48D  CD15F4    CALL    #F415
F490  0E0A      LD      C,#0A
F492  C315F4    JP      #F415
F495  CDC9F4    CALL    #F4C9
F498  CA23F2    JP      Z,#F223
F49B  210000    LD      HL,#0000
F49E  47        LD      B,A
F49F  CDB7F4    CALL    #F4B7
F4A2  380B      JR      C,#F4AF         ; (11)
F4A4  29        ADD     HL,HL
F4A5  29        ADD     HL,HL
F4A6  29        ADD     HL,HL
F4A7  29        ADD     HL,HL
F4A8  B5        OR      L
F4A9  6F        LD      L,A
F4AA  CDD8F4    CALL    #F4D8
F4AD  18EF      JR      #F49E           ; (-17)
F4AF  78        LD      A,B
F4B0  CDCCF4    CALL    #F4CC
F4B3  C223F2    JP      NZ,#F223
F4B6  C9        RET
F4B7  D630      SUB     #30
F4B9  D8        RET     C
F4BA  C6E9      ADD     A,#E9
F4BC  D8        RET     C
F4BD  C606      ADD     A,#06
F4BF  F2C5F4    JP      P,#F4C5
F4C2  C607      ADD     A,#07
F4C4  D8        RET     C
F4C5  C60A      ADD     A,#0A
F4C7  B7        OR      A
F4C8  C9        RET
F4C9  CDD8F4    CALL    #F4D8
F4CC  FE20      CP      #20
F4CE  C8        RET     Z
F4CF  FE2C      CP      #2C
F4D1  C8        RET     Z
F4D2  FE0D      CP      #0D
F4D4  37        SCF
F4D5  C8        RET     Z
F4D6  3F        CCF
F4D7  C9        RET
F4D8  CD06C0    CALL    #C006 ; KEY
F4DB  C5        PUSH    BC
F4DC  CDE9F4    CALL    #F4E9
F4DF  FE03      CP      #03
F4E1  CA23F2    JP      Z,#F223
F4E4  CDA6F1    CALL    #F1A6
F4E7  C1        POP     BC
F4E8  C9        RET
F4E9  FE61      CP      #61
F4EB  F8        RET     M
F4EC  FE7B      CP      #7B
F4EE  F0        RET     P
F4EF  E6DF      AND     #DF
F4F1  C9        RET
F4F2  E5        PUSH    HL
F4F3  D5        PUSH    DE
F4F4  C5        PUSH    BC
F4F5  F5        PUSH    AF
F4F6  D1        POP     DE
F4F7  E5        PUSH    HL
F4F8  D5        PUSH    DE
F4F9  DDE5      PUSH    IX
F4FB  FDE5      PUSH    IY
F4FD  08        EX      AF,AF'
F4FE  D9        EXX
F4FF  E5        PUSH    HL
F500  D5        PUSH    DE
F501  C5        PUSH    BC
F502  F5        PUSH    AF
F503  D1        POP     DE
F504  E5        PUSH    HL
F505  D5        PUSH    DE
F506  08        EX      AF,AF'
F507  D9        EXX
F508  21D800    LD      HL,#00D8
F50B  EB        EX      DE,HL
F50C  211A00    LD      HL,#001A
F50F  39        ADD     HL,SP
F510  060C      LD      B,#0C
F512  EB        EX      DE,HL
F513  2B        DEC     HL
F514  72        LD      (HL),D
F515  2B        DEC     HL
F516  73        LD      (HL),E
F517  D1        POP     DE
F518  05        DEC     B
F519  20F8      JR      NZ,#F513        ; (-8)
F51B  C1        POP     BC
F51C  0B        DEC     BC
F51D  F9        LD      SP,HL
F51E  21F100    LD      HL,#00F1
F521  7E        LD      A,(HL)
F522  91        SUB     C
F523  23        INC     HL
F524  2004      JR      NZ,#F52A        ; (4)
F526  7E        LD      A,(HL)
F527  98        SBC     A,B
F528  280C      JR      Z,#F536         ; (12)
F52A  23        INC     HL
F52B  23        INC     HL
F52C  7E        LD      A,(HL)
F52D  91        SUB     C
F52E  23        INC     HL
F52F  2004      JR      NZ,#F535        ; (4)
F531  7E        LD      A,(HL)
F532  98        SBC     A,B
F533  2801      JR      Z,#F536         ; (1)
F535  03        INC     BC
F536  21EC00    LD      HL,#00EC
F539  73        LD      (HL),E
F53A  23        INC     HL
F53B  72        LD      (HL),D
F53C  2EEF      LD      L,#EF
F53E  71        LD      (HL),C
F53F  23        INC     HL
F540  70        LD      (HL),B
F541  C5        PUSH    BC
F542  CD0FF4    CALL    #F40F
F545  23        INC     HL
F546  E1        POP     HL
F547  CD77F4    CALL    #F477
F54A  21F100    LD      HL,#00F1
F54D  1602      LD      D,#02
F54F  4E        LD      C,(HL)
F550  AF        XOR     A
F551  77        LD      (HL),A
F552  23        INC     HL
F553  46        LD      B,(HL)
F554  77        LD      (HL),A
F555  23        INC     HL
F556  79        LD      A,C
F557  B0        OR      B
F558  2802      JR      Z,#F55C         ; (2)
F55A  7E        LD      A,(HL)
F55B  02        LD      (BC),A
F55C  23        INC     HL
F55D  15        DEC     D
F55E  20EF      JR      NZ,#F54F        ; (-17)
F560  C32AF2    JP      #F22A

