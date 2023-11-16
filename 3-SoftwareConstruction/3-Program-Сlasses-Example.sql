-- Таблиця Користувач
CREATE TABLE Users (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Login VARCHAR(255) UNIQUE,
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255)
);

-- Таблиця Userdata
CREATE TABLE UserData (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Age INT,
    Country VARCHAR(255),
    Address VARCHAR(255)
);

-- Таблиця Officeworker
CREATE TABLE OfficeWorker (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255)
);

-- Таблиця Worker
CREATE TABLE Worker (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255)
);

-- Таблиця Requesttechnicalssues
CREATE TABLE RequestTechnicalIssues (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Goal VARCHAR(255),
    Date DATE,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);

-- Таблиця Requestproductavailability
CREATE TABLE RequestProductAvailability (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Goal VARCHAR(255),
    Date DATE,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);

-- Таблиця Answertotherequest
CREATE TABLE AnswerToRequest (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ResponseText VARCHAR(255),
    Date DATE,
    RequestID INT,
    FOREIGN KEY (RequestID) REFERENCES RequestTechnicalIssues(ID)
);


