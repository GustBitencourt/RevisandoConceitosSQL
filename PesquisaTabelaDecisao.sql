/*Tabela de decisao na pesquisa*/

select *,
	case
		when TipoPessoa = 'J' then 'Júridica'
		when TipoPessoa = 'F' then 'Fisica'
		else 'Indefinido'
	end
from Clientes
