select * from familia;
select * from personagem;
select * from contexto_sociocultural;
select * from tratamento;
select * from membro_familia;

INSERT INTO familia (ID_Familia, Nome_Familia, Qtde_Membros) 
VALUES (1, 'Armitage', 6);

INSERT INTO contexto_sociocultural (ID_Sociocultural, Nome_Contexto, Classe_Sociocultural, Descricao_Sociocultural)
VALUES (1, 'Privilegiada', 'Alta', 'Pessoa com grande poder aquisitivo e relvância social.');

INSERT INTO tratamento (ID_Tratamento, Nome_Tratamento, Descricao_Tratamento)
VALUES (1, 'Hipnose', 'Teste');

INSERT INTO personagem (ID_Personagem, nome_personagem, etnia_personagem, 
nome_vitima, nome_controlador, personagem_tipo, fk_id_tratamento,
fk_id_sociocultural)
VALUES (1, 'Rose', 'Branca', null, null, 1, 1, 1);

INSERT INTO membro_familia (id_membro_familia, funcao_membro, fk_id_familia, fk_id_personagem)
values (1, 'Raptora', 1, 1);

UPDATE tratamento SET fk_id_membro_familia = 1 WHERE id_tratamento = 1;