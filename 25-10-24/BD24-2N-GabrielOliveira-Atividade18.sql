/* Zelda_Logico: */

CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY,
    Nome_Personagem VARCHAR(252),
    Descricao_Personagem VARCHAR(252),
    Afiliacao_Personagem VARCHAR(252),
    fk_Local_ID_Local INT
);

CREATE TABLE Item (
    ID_Item INT PRIMARY KEY,
    Nome_Item VARCHAR(252),
    Tipo_Item VARCHAR(252),
    Efeito_Item VARCHAR(252),
    Raridade_Item VARCHAR(252)
);

CREATE TABLE Local (
    ID_Local INT PRIMARY KEY,
    Nome_Local VARCHAR(252),
    Descricao_Local VARCHAR(252),
    Tipo_Local VARCHAR(252)
);

CREATE TABLE Inventario (
    Quantidade INT,
    fk_Personagem_ID_Personagem INT,
    fk_Item_ID_Item INT
);

CREATE TABLE Zora (
    Habilidade_Raca VARCHAR(252),
    Descricao_Habilidade VARCHAR(252),
    fk_Personagem_ID_Personagem INT PRIMARY KEY
);

CREATE TABLE Goron (
    Habilidade_Raca VARCHAR(252),
    Descricao_Habilidade VARCHAR(252),
    fk_Personagem_ID_Personagem INT PRIMARY KEY
);

CREATE TABLE Hylian (
    Habilidade_Raca VARCHAR(252),
    Descricao_Habilidade VARCHAR(252),
    fk_Personagem_ID_Personagem INT PRIMARY KEY
);

CREATE TABLE Relaciona (
    fk_Personagem_ID_Personagem INT,
    fk_Personagem_ID_Personagem_ INT,
    Tipo_Relacao VARCHAR(252)
);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Local_ID_Local)
    REFERENCES Local (ID_Local)
    ON DELETE RESTRICT;
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_1
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem);
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_2
    FOREIGN KEY (fk_Item_ID_Item)
    REFERENCES Item (ID_Item);
 
ALTER TABLE Zora ADD CONSTRAINT FK_Zora_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Goron ADD CONSTRAINT FK_Goron_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Hylian ADD CONSTRAINT FK_Hylian_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Relaciona ADD CONSTRAINT FK_Relaciona_1
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Relaciona ADD CONSTRAINT FK_Relaciona_2
    FOREIGN KEY (fk_Personagem_ID_Personagem_)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;