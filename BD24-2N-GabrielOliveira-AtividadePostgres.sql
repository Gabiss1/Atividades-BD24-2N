/* BD24-2N-GabrielOliveira-Atividade13: */

CREATE TABLE User (
    ID_User INT(3) PRIMARY KEY,
    Username VARCHAR(252),
    Email VARCHAR(252),
    Contact VARCHAR(11),
    Birth_Date DATE,
    Password VARCHAR(10),
    fk_Plan_ID_Plan INT(3)
);

CREATE TABLE Review (
    ID_Review INT(3) PRIMARY KEY,
    Note INT(252),
    Comentary VARCHAR(252),
    fk_Content_ID_Content INT(3),
    fk_User_ID_User INT(3)
);

CREATE TABLE Episode (
    ID_Episode INT(3) PRIMARY KEY,
    Episode_Name INT(252),
    Episode_Length VARCHAR(252),
    Episode_Season INT(252),
    fk_Serie_fk_Content_ID_Content INT(3)
);

CREATE TABLE Gender (
    ID_Gender INT(3) PRIMARY KEY,
    Gender_Name VARCHAR(252),
    Gender_Description VARCHAR(252),
    fk_Content_ID_Content INT(3)
);

CREATE TABLE Plan (
    ID_Plan INT(3) PRIMARY KEY,
    Plan_Type VARCHAR(252),
    Price MONEY,
    Expiration_Date DATE
);

CREATE TABLE Caption (
    ID_Caption INT(3) PRIMARY KEY,
    Language VARCHAR(252),
    fk_Content_ID_Content INT(3)
);

CREATE TABLE Content (
    ID_Content INT(3) PRIMARY KEY,
    Price MONEY
);

CREATE TABLE Serie (
    Serie_Name VARCHAR(252),
    Episode_Quantity INT(252),
    Season INT(252),
    Synopsis VARCHAR(252),
    fk_Content_ID_Content INT(3) PRIMARY KEY
);

CREATE TABLE Movie (
    Movie_Name VARCHAR(252),
    Movie_Length TIME,
    Synopsis VARCHAR(252),
    fk_Content_ID_Content INT(3) PRIMARY KEY
);

CREATE TABLE Whishlist (
    ID_Whishlist INT(3) PRIMARY KEY,
    fk_User_ID_User INT(3),
    fk_Content_ID_Content INT(3)
);

CREATE TABLE View (
    Hour TIMESTAMP,
    ID_View INT(3) PRIMARY KEY,
    Date DATE,
    fk_User_ID_User INT(3),
    fk_Content_ID_Content INT(3)
);
 
ALTER TABLE User ADD CONSTRAINT FK_User_2
    FOREIGN KEY (fk_Plan_ID_Plan)
    REFERENCES Plan (ID_Plan)
    ON DELETE RESTRICT;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_3
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User)
    ON DELETE RESTRICT;
 
ALTER TABLE Episode ADD CONSTRAINT FK_Episode_2
    FOREIGN KEY (fk_Serie_fk_Content_ID_Content)
    REFERENCES Serie (fk_Content_ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Gender ADD CONSTRAINT FK_Gender_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Caption ADD CONSTRAINT FK_Caption_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE CASCADE;
 
ALTER TABLE Movie ADD CONSTRAINT FK_Movie_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE CASCADE;
 
ALTER TABLE Whishlist ADD CONSTRAINT FK_Whishlist_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User);
 
ALTER TABLE Whishlist ADD CONSTRAINT FK_Whishlist_3
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content);
 
ALTER TABLE View ADD CONSTRAINT FK_View_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User);
 
ALTER TABLE View ADD CONSTRAINT FK_View_3
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content);