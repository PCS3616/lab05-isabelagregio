LD N 	;carrega o numero o qual sera calculado o fatorial
JZ FAT_ZERO ;caso do fatorial de zero 
MM RES  ;guarda o valor inicial do N em RES
SC FAT 	;chamada da subrotina
MM RES 	;armazena o resultado final 
HM

FA_ZERO 
	LD UM 
	MM PROV
	LD N

FAT
	LD UM  	;comeca com 1
	MM PROV ;armazena o valor provisorio
	LD N 	;carrega N
LOOP
	JZ FIM  ;se for nulo termina
	ML RES 	;multiplica pelo valor acumulado 
	MM RES	;atualiza o valor acumulado 
	SB UM 	;subtrai um 
	JP LOOP ;chamada do loop
	
	
FIM 
	LD PROV ;valor final no acumulador
	RS FAT ;fim da subrotina
	
	HM 

; rotulos 
N K /0003
RES K /0001
UM  K  /0001
PROV K /0001


