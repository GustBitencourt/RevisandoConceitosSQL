/*Chave Primaria Composta*/

select * from PedidoItem
alter table PedidoItem add constraint pk_pedidos primary key(CodigoPedido, CodigoProduto)


select * from Produtos
alter table Produtos add constraint pk_produtos primary key(Codigo) 


select * from Pedido
alter table Pedido add constraint pk_pedido primary key(Codigo) 