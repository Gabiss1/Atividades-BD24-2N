select sum(salario) from cliente;

select sum(money/3) from produto;

select avg(salario::numeric) from cliente group by genero;

select count (case when genero = 'Feminino' then 1 end) as usuarios_femininos,
count(case when genero = 'Masculino' then 1 end) as usuarios_masculinos
from cliente;

select sum(money%90) from produto;