select count(id_produto), nome_categoria 
from categoria
left join produto
on produto.id_categoria = categoria.id_categoria
group by nome_categoria;


//2
select id_pedido, nome_cliente from cliente
right join pedido
on cliente.id_cliente = pedido.id_cliente or pedido.id_cliente = null

select nome_produto, nome_categoria from categoria
cross join produto 
where categoria.nome_categoria = 'Brinquedos'

select id_pedido, nome_categoria from produto
full outer join pedido
on produto.id_produto = pedido.id_produto
full outer join categoria
on categoria.id_categoria = produto.id_categoria


