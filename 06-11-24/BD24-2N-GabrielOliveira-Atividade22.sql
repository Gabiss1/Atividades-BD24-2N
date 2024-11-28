select * from cliente;

Alter table cliente ADD column  genero VARCHAR(252);

Alter table cliente ADD column salario MONEY;

insert into cliente (id_cliente, nome_cliente, data_nasc, cpf, senha,
email, genero, salario) VALUES (4, 'Gabriel', '2006-04-18', '03797853421', 
'oilaria', 'gabrielgo@gmail.com', 'Masculino', 8732.95),
(5, 'Marcelo', '1986-08-28', '03537152001', 
'oilariaa', 'marcillo@gmail.com', 'Masculino', 2987.12),
(6, 'Maria', '2009-11-13', '46781133471', 
'oilariab', 'idioiu@gmail.com', 'Feminino', 3450.90)

Update cliente Set genero='Masculino',salario= 1934 where id_cliente = 1;
Update cliente Set genero='Masculino',salario= 2190 where id_cliente = 2;
Update cliente Set genero='Feminino',salario= 6890 where id_cliente = 3;