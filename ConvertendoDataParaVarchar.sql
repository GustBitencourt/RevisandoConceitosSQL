select *, CONVERT(varchar, DataSolicitacao)
from Pedido

/*Retorna o padr�o brasileiro*/
select *, CONVERT(varchar, DataSolicitacao, 103)
from Pedido