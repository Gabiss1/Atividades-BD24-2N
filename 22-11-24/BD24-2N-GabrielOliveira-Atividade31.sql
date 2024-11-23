create or replace view Produtos_comprados as 
select id_pedido as numero_pedido, nome_cliente, nome_produto, qntde_produto as Quantidade,
qntde_produto*money as fatura from pedido
join produto on produto.id_produto = pedido.id_produto
join cliente on cliente.id_cliente = pedido.id_cliente

select * from produtos_comprados

create or replace view Produtos_Categorias as 
select nome_produto, nome_categoria from produto
left join categoria
on categoria.id_categoria = produto.id_categoria;

select * from produtos_categorias

create or replace view Pedidos_Feitos as 
select id_pedido as Numero_pedido, nome_cliente from cliente
right join pedido 
on pedido.id_cliente = cliente.id_cliente;

select * from pedidos_feitos

create or replace view Usuarios_clientes as 
select id_pedido as numero_pedido, nome_cliente, nome_produto, qntde_produto from pedido
join produto on pedido.id_produto = produto.id_produto
right join cliente on pedido.id_cliente = cliente.id_cliente;

select * from usuarios_clientes