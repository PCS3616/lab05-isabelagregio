LD N 	;carrega o numero o qual sera calculado o fatorial
MM RES  ;guarda o valor inicial do N em RES
SC FAT 	;chamada da subrotina
MM RES 	;armazena o resultado final 
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

@ /102
RES K /0001 ;reserva uma posicao da memoria para armazenar o resultado final 

@ /104 
PROV K /0001 ;resultado provisorio

@ /106 
UM K /0001
