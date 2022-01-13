

create table Produtos
(
	Codigo int not null,
	Descricao varchar(200) not null,
	Nome varchar(100) not null,
	Preco float not null
)


create table Clientes
(
	Codigo int not null,
	Nome varchar(200) not null,
	TipoPessoa char(1) not null
)

create table Pedido
(
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null,
)


create table PedidoItem
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	Preco float not null,
	Quantidade int not null
)