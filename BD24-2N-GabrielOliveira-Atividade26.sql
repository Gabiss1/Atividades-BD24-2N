select sum(salario) from cliente;

select sum(money/3) from produto;

select avg(salario::numeric) from cliente group by genero;

select count(id_cliente) as Usuario_masculino, count(id_cliente) as Usuario from cliente group by genero;

select sum(money%90) from produto;