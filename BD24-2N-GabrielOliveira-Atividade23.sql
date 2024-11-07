select * from cliente;

select distinct nome_cliente from cliente;

select nome_cliente, cpf from cliente;

select nome_cliente, cpf from cliente where genero='Feminino';

select nome_cliente, cpf from cliente where genero='Feminino' order by nome_cliente desc;

select nome_cliente, salario from cliente where genero='Masculino' and salario < '3000';
