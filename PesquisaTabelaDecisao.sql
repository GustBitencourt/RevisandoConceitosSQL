/*Tabela de decisao na pesquisa*/

select *,
	case
		when TipoPessoa = 'J' then 'J�ridica'
		when TipoPessoa = 'F' then 'Fisica'
		else 'Indefinido'
	end
from Clientes
