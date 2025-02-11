LD N 	;carrega o numero o qual sera calculado o fatorial
MM N  ;guarda o valor inicial do N em RES
SC FAT 	;chamada da subrotina
LD RES
MM RESFINAL 	;armazena o resultado final 
HM =0


@ /200
FAT     K /0000
	LD N 
	JZ FIM  ; trata em especial o caso do fatorial de zero
LOOP	MM PROV 
	ML RES ;multiplica pelo proximo valor na sequencia do fatorial 
	MM RES 
	LD PROV
	SB UM 
	MM PROV
	JZ FIM ; pula para o fim 
	JP LOOP ; volta para o loop 
FIM 	RS FAT

; rotulos 
@ /100
N  K /0003

@ /020
RES K /0001 ;reserva uma posicao da memoria para armazenar o resultado final 

@ /024
PROV K /0001 ;resultado provisorio

@ /022 
UM K /0001

@ /102
RESFINAL K /0001
