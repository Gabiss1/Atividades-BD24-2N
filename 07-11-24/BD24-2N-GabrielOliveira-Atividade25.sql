select * from pedido;

select avg(Money::numeric) as Preco_Medio from produto;

select avg(qntde_produto) as media_produtos_pedido from pedido;

alter table pedido add column Qntde_Produto int;
update pedido set qntde_produto=7 where id_pedido=4;
update pedido set qntde_produto=38 where id_pedido=2;
update pedido set qntde_produto=14 where id_pedido=5;

select avg(salario::numeric) as Media_salarial from cliente;

select avg(num_pedidos) from (select id_cliente, count (id_pedido) as num_pedidos 
from pedido group by id_cliente) as quantidade_pedidos;