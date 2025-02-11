GD /000 ;dois digitos de x
SB SUB
MM X 
GD /000  ;leitura dos espacos
MM SPACE 
GD /000 ;dois digitos de y
SB SUB
MM Y	
AD X ; soma dos dois valores
MM PROV 
ML MUL ;pega o digito menos siginificativo 
SB SUBA ; se for maior o resultado da positivo
JN PULA  ; se for menor pula essa parte 
LD PROV 
SB SUBA
AD ADD
AD SUB
JP FIM
PULA LD PROV
     AD SUB
     JP FIM 
FIM  PD /100 ;finaliza o programa
     HM =0
     



@ /100
X K =0

@ /102
SPACE K =0

@ /104
Y K =0

@ /106 
SUB K /3030

@ /108 
PROV K =0

@ /10A
MUL K /0010

@ /10C
SUBA K /000A

@ /10E
ADD K /0100
