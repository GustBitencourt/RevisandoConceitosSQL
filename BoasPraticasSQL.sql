/*
Criando tabela Produtos
ean é o código de barras*/

CREATE TABLE Produtos(
	Codigo int not null,
	Descricao varchar(50) not null,
	Data_Validade datetime,
	Ean varchar(15),
	Ind_Inativo int not null default 0
);
/*Criando chave primaria de produtos*/
ALTER TABLE Produtos ADD CONSTRAINT Pk_Produtos PRIMARY KEY (Codigo);

/*Criando index para facilitar uma busca*/
CREATE INDEX Idx_Produtos_Ean On Produtos (Ean);


/*Inserindo Dados*/
INSERT INTO Produtos(Codigo, Descricao, Ean) VALUES (2, 'Nome do Produto 2', '12345678');


/*Consulta com where pra filtro*/
SELECT * FROM Produtos
WHERE Codigo = 2;

/*Consulta utilizando like a % faz com que complete a busca, buscando a informação onde for*/
SELECT * FROM Produtos
WHERE Descricao LIKE '%Produto%';

/*aqui count conta a quantidade de produtos*/
SELECT COUNT(*) AS Total_Produtos
	FROM Produtos;



/*Criando tabela loja com a PK já inclusa*/
CREATE TABLE Lojas(
	Codigo int not null,
	Nome varchar(50) not null,
	Ind_Inativo int not null default 0,

	CONSTRAINT LOJA_PK PRIMARY KEY(Codigo)
);

/*Inserindo dados em loja*/
INSERT INTO Lojas(Codigo, Nome) VALUES(1000, 'Filial Edu Chaves');
INSERT INTO Lojas(Codigo, Nome) VALUES(2000, 'Filial Pombal');
INSERT INTO Lojas(Codigo, Nome) VALUES(3000, 'Filial São Paulo');

SELECT Codigo, Nome FROM Lojas
WHERE Ind_Inativo = 0;


/*Tabela estoque com primary key composta*/
CREATE TABLE Estoque(
	Codigo_Produto int not null,
	Codigo_Filial int not null,
	Quantidade decimal not null default 0,

	CONSTRAINT ESTOQUE_PK PRIMARY KEY(Codigo_Produto, Codigo_Filial)
);

/*adicionando chave estrangeira em estoque vindo de produtos*/
ALTER TABLE Estoque ADD CONSTRAINT FK_ESTOQUE_PRODUTOS 
	FOREIGN KEY(Codigo_Produto)
	REFERENCES Produtos(Codigo);

/*adicionando chave estrangeira em estoque vindo de lojas*/
ALTER TABLE Estoque ADD CONSTRAINT FK_ESTOQUE_LOJAS
	FOREIGN KEY(Codigo_Filial)
	REFERENCES Lojas(Codigo);

/*inserindo dado no estoque*/
INSERT INTO Estoque(Codigo_Produto, Codigo_Filial, Quantidade) VALUES(1, 1000, 10);

SELECT * FROM Estoque E
	INNER JOIN Lojas L
	ON E.Codigo_Filial = L.Codigo
;

/*Inner join que trás código da filial e nome*/
SELECT E.Codigo_Filial, L.Nome 
	FROM Estoque E
	INNER JOIN Lojas L
	ON E.Codigo_Filial = L.Codigo
;

/*Inner join duplo*/
SELECT E.Codigo_Filial, 
		L.Nome, 
		E.Codigo_Produto, 
		P.Descricao, 
		E.Quantidade
	FROM Estoque E
	INNER JOIN Lojas L
		ON E.Codigo_Filial = L.Codigo
	INNER JOIN Produtos P
		ON E.Codigo_Produto = P.Codigo
;
