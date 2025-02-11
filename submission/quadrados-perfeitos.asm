LD N
MM PROX
LOOP    LD I ; contador i do somatorio
	ML DOIS
	AD UM ; calcula o proximo impar 
	AD PROX ; soma com o numero que estava armazenado
	MM PROX ;atualiza o valor para o proximo loop
	
	LD I  
	AD UM ; incremnta o contador i 
	MM I
	
	LD PTR 
	AD OP_MM ; monta a instrucao de armazaenamento 
	MM ARMAZENA ; executa a instrucao montada
	LD PROX
ARMAZENA K /0000


	LD PTR 
	AD DOIS ; atualiza o endereco onde sera armazenado o proximo resultado 
	MM PTR
	
	LD PROX
	SB LIM
	JZ FIM
	JP LOOP
FIM HM =0




@ /300
N K /0000

@ /302
I K /0000

@ /304
PROX K /0000



@ /306
PTR K /0102

@ /308 
OP_MM K /9000


;constantes 
@ /200
UM K /0001

@ /202
DOIS K /0002

@ /204
LIM K /0F81

@ /100
INICIO K /0000





