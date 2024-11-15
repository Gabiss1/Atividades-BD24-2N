/*select nome_ coluna from nome_tabela1
join nome_tabela2 on tabela1.coluna = tabela2.coluna
join nome_tabelaN on tabela1.coluna = tabelaN.coluna;

select id_pedido, nome_cliente, nome_produto, qntde_produto from produto
join pedido on pedido.id_produto = produto.id_produto
join cliente on pedido.id_cliente = cliente.id_cliente;
*/


select nome_produto, qntde_produto from produto
join pedido on pedido.id_produto = produto.id_produto
join cliente on pedido.id_cliente = 1 and pedido.id_cliente = cliente.id_cliente;

create table Categoria(
	ID_Categoria INT primary key,
	Nome_Categoria varchar(252) not null,
	Descricao_Categoria varchar(252) not null
);

insert into categoria (id_categoria, nome_categoria, descricao_categoria)
values (1, 'Hortifruti', 'Verduras e Frutas do mercado.'),
(2, 'Brinquedos', 'Objetos de recreação para pessoas ou animais.'),
(3, 'Bebidas', 'Substâncias líquidas ingeríveis, geralmente pela boca.');

insert into categoria (id_categoria, nome_categoria, descricao_categoria)
values (4, 'Material Escolar', 'Objetos usados nas escolas.');

alter table produto add column ID_Categoria int references Categoria(ID_Categoria);

update produto set id_categoria = 2 where id_produto = 1;
update produto set id_categoria = 3 where id_produto = 2;
update produto set id_categoria = 4 where id_produto = 3;

select nome_produto, qtde_estoque from produto
join categoria on produto.id_categoria = categoria.id_categoria and produto.id_categoria = 2;

select nome_cliente, id_pedido from pedido
join cliente on cliente.id_cliente = pedido.id_cliente
join produto on produto.id_produto = pedido.id_produto
join categoria on produto.id_categoria = categoria.id_categoria and produto.id_categoria = 2;

select nome_cliente, nome_produto from pedido
join produto on pedido.id_produto = produto.id_produto
join cliente on cliente.id_cliente = pedido.id_cliente and cliente.id_cliente=3;

select * from pedido;
select * from cliente;
select * from produto;
select * from categoria;