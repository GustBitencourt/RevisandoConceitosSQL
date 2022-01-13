/*Adicionando Chave primária*/

select * from Clientes

alter table Clientes add constraint pk_cliente primary key(Codigo) 