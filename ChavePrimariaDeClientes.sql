/*Adicionando Chave prim�ria*/

select * from Clientes

alter table Clientes add constraint pk_cliente primary key(Codigo) 