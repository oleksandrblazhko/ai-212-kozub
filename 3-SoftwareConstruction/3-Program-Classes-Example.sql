CREATE TABLE Users (
    ID INT PRIMARY KEY,
    login VARCHAR2(50),
    email VARCHAR2(255),
    password VARCHAR2(255)
);
-- RequestProductAvailability table
CREATE TABLE ReequestProductAvailability (
    ID INT PRIMARY KEY,
    Goal VARCHAR2(50),
    RequestDate DATE,
    userID INT,
    CONSTRAINT fk_user_product_availability FOREIGN KEY (UserID) REFERENCES Users(ID)
);
CREATE TABLE ReequestTechnicalIssues (
    ID INT PRIMARY KEY,
    Goal VARCHAR2(50),
    RequestDate DATE,
    UserID INT,
    CONSTRAINT fk_user_technical_issues FOREIGN KEY (UserID) REFERENCES Users(ID)
);
-- AnswerToRequest table
CREATE TABLE AnnswerToRequest (
    ID INT PRIMARY KEY,
    AnswerText VARCHAR2(100),
    AnswerDate DATE,
    RequestID INT,
    CONSTRAINT fk_request_answer FOREIGN KEY (RequestID) REFERENCES ReequestProductAvailability(ID)
);
-- Officeworker table
CREATE TABLE Officeworker_ (
    ID INT PRIMARY KEY,
    name VARCHAR2(100)
);
-- Worker table
CREATE TABLE Worker_ (
    ID INT PRIMARY KEY,
    name VARCHAR2(100)
);
