/*EXEMPLOS JOIN*/

/*Tras todas as informações da tabela a direita e esquerda*/
select *
from Clientes cli
inner join Pedido ped
on cli.Codigo * ped.CodigoCliente

/*A preferencia de informação é a tabela da esquerda*/
select *
from Clientes cli
left join Pedido ped
on cli.Codigo * ped.CodigoCliente

/*A preferencia de informação é a tabela da direita*/
select *
from Clientes cli
right join Pedido ped
on cli.Codigo * ped.CodigoCliente