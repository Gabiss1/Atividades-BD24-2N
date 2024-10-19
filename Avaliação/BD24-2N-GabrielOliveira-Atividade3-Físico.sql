/* Lógico_Avaliacao: */

CREATE TABLE Usuario (
    ID_Usuario NUMERIC(3) PRIMARY KEY,
    Nome_Usuario VARCHAR(252),
    Email_Usuario VARCHAR(252),
    Contato_Usuario VARCHAR(252),
    Senha_Usuario VARCHAR(10),
    fk_Plano_ID_Plano NUMERIC(3)
);

CREATE TABLE Artista (
    ID_Artista NUMERIC(3) PRIMARY KEY,
    Nome_Artista VARCHAR(252),
    Descricao_Artista VARCHAR(252)
);

CREATE TABLE Genero (
    ID_Genero NUMERIC(3) PRIMARY KEY,
    Nome_Genero VARCHAR(252),
    Descricao_Genero VARCHAR(252),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);

CREATE TABLE Conteudo (
    ID_Conteudo NUMERIC(3) PRIMARY KEY,
    Nome_Conteudo VARCHAR(252),
    Data_Publicacao DATE,
    fk_Artista_ID_Artista NUMERIC(3)
);

CREATE TABLE Plano (
    ID_Plano NUMERIC(3) PRIMARY KEY,
    Nome_Plano VARCHAR(252),
    Preco VARCHAR(252)
);

CREATE TABLE Musica (
    Duracao_Musica VARCHAR(252),
    Letra_Musica VARCHAR(552),
    fk_Conteudo_ID_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Podcast (
    Duracao_Podcast VARCHAR(252),
    Descricao_Podcast VARCHAR(252),
    fk_Conteudo_ID_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Playlist_Tem (
    ID_Playlist NUMERIC(3) PRIMARY KEY,
    Nome_Playlist VARCHAR(252),
    Quantidade NUMERIC(252),
    fk_Conteudo_ID_Conteudo NUMERIC(3),
    fk_Usuario_ID_Usuario NUMERIC(3)
);

CREATE TABLE Album_Cria (
    ID_Album NUMERIC(3) PRIMARY KEY,
    Nome_Album VARCHAR(252),
    Descricao_Album VARCHAR(252),
    Quantidade_Conteudo NUMERIC(252),
    fk_Artista_ID_Artista NUMERIC(3),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);

CREATE TABLE Visualizacao_Acessa (
    ID_Visualizacao NUMERIC(3) PRIMARY KEY,
    Data DATE,
    Hora TIMESTAMP,
    fk_Usuario_ID_Usuario NUMERIC(3),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Plano_ID_Plano)
    REFERENCES Plano (ID_Plano)
    ON DELETE RESTRICT;
 
ALTER TABLE Genero ADD CONSTRAINT FK_Genero_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Conteudo ADD CONSTRAINT FK_Conteudo_2
    FOREIGN KEY (fk_Artista_ID_Artista)
    REFERENCES Artista (ID_Artista)
    ON DELETE RESTRICT;
 
ALTER TABLE Musica ADD CONSTRAINT FK_Musica_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Podcast ADD CONSTRAINT FK_Podcast_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Playlist_Tem ADD CONSTRAINT FK_Playlist_Tem_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE Playlist_Tem ADD CONSTRAINT FK_Playlist_Tem_3
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Album_Cria ADD CONSTRAINT FK_Album_Cria_2
    FOREIGN KEY (fk_Artista_ID_Artista)
    REFERENCES Artista (ID_Artista);
 
ALTER TABLE Album_Cria ADD CONSTRAINT FK_Album_Cria_3
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE Visualizacao_Acessa ADD CONSTRAINT FK_Visualizacao_Acessa_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Visualizacao_Acessa ADD CONSTRAINT FK_Visualizacao_Acessa_3
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);