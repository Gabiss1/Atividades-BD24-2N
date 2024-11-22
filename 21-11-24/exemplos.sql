select nome_produto, nome_categoria from produto
left join categoria
on produto.id_categoria = categoria.id_categoria;

select * from categoria;
select * from produto;
select * from cliente;
select * from pedido;

insert into produto(id_produto, nome_produto, descricao, money, qtde_estoque)
values (4, 'Monster', 'Energético da marca Monster', 23.00, 40);

select nome_cliente, id_pedido from cliente
right join pedido 
on cliente.id_cliente = pedido.id_cliente;

select nome_produto, nome_categoria, id_pedido from produto
cross join categoria
cross join pedido;

select nome_produto, nome_categoria, id_pedido from produto
full outer join categoria
on produto.id_categoria = categoria.id_categoria
full outer join pedido
on produto.id_produto = pedido.id_produto;

update produto set id_categoria = null where id_produto = 4;

