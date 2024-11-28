INSERT INTO cliente (id_cliente, nome_cliente, data_nasc, cpf, senha, email) 
values (1, 'Marcelo', '1995-01-15', '03256782171',
'oieutu', 'marcelo123@gmail.com'),
(2, 'João', '1997-07-25', '49286772174',
'oieutu2', 'joaozin123@gmail.com'),
(3, 'Larissa', '1996-02-10', '23276122171',
'oieutu3', 'larissa123@gmail.com');

INSERT INTO produto (id_produto, nome_produto, descricao, "money", qtde_estoque)
values (1, 'Bola', 'Objeto redondo que pode ser chutado, arremessado, etc.',
25.00, 35),
(2, 'Garrafa de Água', 'Garrafa com conteúdo líquido que pode ser ingerido ou usado de várias formas.',
2.50, 120),
(3, 'Caneta', 'Artefato composto de vários elemnetos que serve para fazer marcações em n superfícies',
4.99, 15);

INSERT INTO pedido (id_pedido, id_cliente, id_produto)
values (1, 1, 2), (2, 1, 3), (3, 2, 1), (4, 3, 1),
(5, 3, 1);

select nome_produto, qtde_estoque from produto;

UPDATE produto SET qtde_estoque = 32 WHERE id_produto = 1;
UPDATE produto SET qtde_estoque = 119 WHERE id_produto = 2;
UPDATE produto SET qtde_estoque = 14 WHERE id_produto = 3;

DELETE FROM pedido WHERE id_pedido = 1;
DELETE FROM pedido WHERE id_pedido = 3;

/* POSSO INSERIR MAIS DE UM REGISTRO POR VEZ USANDO ',' DEPOIS

UPDATE NOME-TABELA SET COLUNA = NOVA-QNT WHERE COLUNA = ESPECIFICACAO

DELETE FROM NOME-TABELA WHERE COLUNA = ESPECIFICACAO */