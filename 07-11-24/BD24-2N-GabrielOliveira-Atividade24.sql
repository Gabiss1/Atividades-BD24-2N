select * from produto;

select count (*) as quantidade_produtos from produto;

select count (*) as pedidos_cliente2 from pedido where id_cliente=2;

select count (*) as pedidos_produto1 from pedido where id_produto=1;

select count (distinct id_cliente) as clientes_diferentes from pedido;