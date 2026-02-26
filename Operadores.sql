--PARA QUE SERVE OPERADORES MATEMÁTICOS 
--SERVEM PARA EXECULTAR OPERAÇÕES MATEMÁTICAS 
--MUITO UTILIZADOS PARA CRIAR COLUNAS CALCULADAS 



--(EXEMPLO 1)  CRIAÇÃO DE COLUNA CALCULADA 
-- CRIE UMA COLUNA CONTENDO A IDADE DO CLIENTE DA TABELA SALES.CUSTOMERS

SELECT *
FROM sales.customers
LIMIT 10


SELECT 
	email,
	birth_date,
	(current_date - birth_date) / 365 as idade_do_cliente
from sales.customers


--(EXEMPLO 2) UTILIZAÇÃO DA COLUNA CALCULADA NAS QUERIES 	
--LISTE OS 10 CLIENTES MAIS NOVOS DA TABELA CUSTOMERS 



SELECT 
	email,
	birth_date,
	(current_date - birth_date) / 365 as "idade do cliente"
from sales.customers
ORDER BY "idade do cliente"



--(EXEMPLO 3) CRIACAO DE COLUNA CALCULADA COM STRINGS 
--CRIE UMA COLUNA "Nome_completo" CONTENDO O NOME COMPLETO DO CLIENTE

SELECT 
	first_name || ' ' || last_name as Nome_completo
from sales.customers 