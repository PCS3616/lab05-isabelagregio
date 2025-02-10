LD N 	;carrega o numero o qual sera calculado o fatorial
MM N  ;guarda o valor inicial do N em RES
SC FAT 	;chamada da subrotina
LD RES
MM RESFINAL 	;armazena o resultado final 
HM =0


@ /200
FAT     K /0000
	LD N 
	JZ FIM 
LOOP	MM PROV 
	ML RES
	MM RES 
	LD PROV
	SB UM 
	MM PROV
	JZ FIM 
	JP LOOP
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
