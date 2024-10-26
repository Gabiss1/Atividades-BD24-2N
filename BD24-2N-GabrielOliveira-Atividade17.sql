CREATE TABLE Pedido (
	ID_Pedido SERIAL primary key,
	ID_Cliente INT not null references cliente(ID_Cliente),
	ID_Produto INT not null references produto(ID_Produto),
	Qtde smallint not null
)

CREATE TABLE Cliente (
	ID_Cliente INT primary key,
	Nome_cliente varchar(252) not null,
	Data_Nasc date not null,
	Email varchar(252) not null,
	CPF varchar(11) not null,
	Senha varchar(15) not null
);
CREATE TABLE Produto (
	ID_Produto INT primary key,
	Nome_Produto VARCHAR(30) NOT NULL,
	Descricao TEXT NULL,
	Preco numeric CHECK (PRECO > 0) NOT NULL,
	Qtde_Estoque SMALLINT DEFAULT 0
);



















