select nome_cliente, id_pedido from cliente, pedido 
where pedido.id_cliente = cliente.id_cliente;

select nome_produto, qntde_produto from produto, pedido 
where pedido.id_produto = produto.id_produto;

select nome_cliente, id_pedido from cliente, pedido
where pedido.id_pedido = cliente.id_cliente and qntde_produto > 2;

select nome_cliente, nome_produto, qntde_produto, money*qntde_produto as total_compra
from cliente, pedido, produto
where pedido.id_cliente = cliente.id_cliente and pedido.id_produto = produto.id_produto;
