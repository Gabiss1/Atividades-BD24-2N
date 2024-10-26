CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nome_Usuario VARCHAR(252),
    Email VARCHAR(252),
    Data_Nascimento DATE,
    Senha VARCHAR(15),
    fk_Jogo_ID_Jogo INT
);

CREATE TABLE Jogo (
    ID_Jogo INT PRIMARY KEY,
    Nome_Jogo VARCHAR(252),
    Categoria_Jogo VARCHAR(252),
    Data_Lancamento DATE,
    Objetivo_Jogo VARCHAR(252)
);

CREATE TABLE Equipe (
    ID_Equipe INT PRIMARY KEY,
    Nome_Equipe VARCHAR(252),
    fk_Personagem_ID_Personagem INT
);

CREATE TABLE Ranking (
    ID_Ranking INT PRIMARY KEY,
    Pontos INT,
    fk_Partida_ID_Partida INT,
    fk_Equipe_ID_Equipe INT
);

CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY,
    Vida VARCHAR(252),
    Colete BOOLEAN,
    Dinheiro MONEY,
    Nome_Arma VARCHAR(252),
    fk_Usuario_ID_Usuario INT
);

CREATE TABLE Partida (
    ID_Partida INT PRIMARY KEY,
    Tempo_Jogo TIME,
    Objetivo_Pontos INT,
    Time VARCHAR(252),
    fk_Jogo_ID_Jogo INT,
    fk_Equipe_ID_Equipe INT
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Jogo_ID_Jogo)
    REFERENCES Jogo (ID_Jogo)
    ON DELETE RESTRICT;
 
ALTER TABLE Equipe ADD CONSTRAINT FK_Equipe_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Ranking ADD CONSTRAINT FK_Ranking_2
    FOREIGN KEY (fk_Partida_ID_Partida)
    REFERENCES Partida (ID_Partida)
    ON DELETE RESTRICT;
 
ALTER TABLE Ranking ADD CONSTRAINT FK_Ranking_3
    FOREIGN KEY (fk_Equipe_ID_Equipe)
    REFERENCES Equipe (ID_Equipe)
    ON DELETE RESTRICT;
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_2
    FOREIGN KEY (fk_Jogo_ID_Jogo)
    REFERENCES Jogo (ID_Jogo)
    ON DELETE RESTRICT;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_3
    FOREIGN KEY (fk_Equipe_ID_Equipe)
    REFERENCES Equipe (ID_Equipe)
    ON DELETE RESTRICT;