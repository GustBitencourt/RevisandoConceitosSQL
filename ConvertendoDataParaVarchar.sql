select *, CONVERT(varchar, DataSolicitacao)
from Pedido

/*Retorna o padrão brasileiro*/
select *, CONVERT(varchar, DataSolicitacao, 103)
from Pedido