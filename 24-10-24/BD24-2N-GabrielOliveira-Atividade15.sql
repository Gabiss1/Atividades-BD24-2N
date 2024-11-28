CREATE TABLE Usuario (
    ID_User INT PRIMARY KEY,
    Username VARCHAR(252),
    Email VARCHAR(252),
    Contact VARCHAR(11),
    Birth_Date DATE,
    Password VARCHAR(10),
    fk_Plan_ID_Plan INT
);

CREATE TABLE Review (
    ID_Review INT PRIMARY KEY,
    Note INT,
    Comentary VARCHAR(252),
    fk_Content_ID_Content INT,
    fk_User_ID_User INT
);

CREATE TABLE Episode (
    ID_Episode INT PRIMARY KEY,
    Episode_Name INT,
    Episode_Length VARCHAR(252),
    Episode_Season INT,
    fk_Serie_fk_Content_ID_Content INT
);

CREATE TABLE Gender (
    ID_Gender INT PRIMARY KEY,
    Gender_Name VARCHAR(252),
    Gender_Description VARCHAR(252),
    fk_Content_ID_Content INT
);

CREATE TABLE Plan (
    ID_Plan INT PRIMARY KEY,
    Plan_Type VARCHAR(252),
    Price MONEY,
    Expiration_Date DATE
);

CREATE TABLE Caption (
    ID_Caption INT PRIMARY KEY,
    Linguagem VARCHAR(252),
    fk_Content_ID_Content INT
);

CREATE TABLE Conteudo (
    ID_Content INT PRIMARY KEY,
    Price MONEY
);

CREATE TABLE Serie (
    Serie_Name VARCHAR(252),
    Episode_Quantity INT,
    Season INT,
    Synopsis VARCHAR(252),
    fk_Content_ID_Content INT PRIMARY KEY
);

CREATE TABLE Movie (
    Movie_Name VARCHAR(252),
    Movie_Length TIME,
    Synopsis VARCHAR(252),
    fk_Content_ID_Content INT PRIMARY KEY
);

CREATE TABLE Whishlist (
    ID_Whishlist INT PRIMARY KEY,
    fk_User_ID_User INT,
    fk_Content_ID_Content INT
);

CREATE TABLE Visualizacao (
    Hour TIMESTAMP,
    ID_View INT PRIMARY KEY,
    Date DATE,
    fk_User_ID_User INT,
    fk_Content_ID_Content INT
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_User_2
    FOREIGN KEY (fk_Plan_ID_Plan)
    REFERENCES Plan (ID_Plan)
    ON DELETE RESTRICT;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_3
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES Usuario (ID_User)
    ON DELETE RESTRICT;
 
ALTER TABLE Episode ADD CONSTRAINT FK_Episode_2
    FOREIGN KEY (fk_Serie_fk_Content_ID_Content)
    REFERENCES Serie (fk_Content_ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Gender ADD CONSTRAINT FK_Gender_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Caption ADD CONSTRAINT FK_Caption_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content)
    ON DELETE CASCADE;
 
ALTER TABLE Movie ADD CONSTRAINT FK_Movie_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content)
    ON DELETE CASCADE;
 
ALTER TABLE Whishlist ADD CONSTRAINT FK_Whishlist_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES Usuario (ID_User);
 
ALTER TABLE Whishlist ADD CONSTRAINT FK_Whishlist_3
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content);
 
ALTER TABLE Visualizacao ADD CONSTRAINT FK_View_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES Usuario (ID_User);
 
ALTER TABLE Visualizacao ADD CONSTRAINT FK_View_3
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Conteudo (ID_Content);
	
select * from Usuario