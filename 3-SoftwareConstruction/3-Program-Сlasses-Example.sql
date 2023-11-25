CREATE OR REPLACE TYPE User_ AS OBJECT (
    ID NUMBER,
    Login VARCHAR2(50),
    Email VARCHAR2(50),
    Password VARCHAR2(50),
    MEMBER PROCEDURE display
);

CREATE TYPE User IS TABLE OF User_;

CREATE OR REPLACE TYPE RequestProductAvailability AS OBJECT (
    ID INT,
    Goal VARCHAR(50),
    RequestDate DATE,
    UserObj User_,
    MEMBER PROCEDURE display_info
);

CREATE OR REPLACE TYPE RequestTechnicalIssues AS OBJECT (
    ID INT,
    Goal VARCHAR(50),
    RequestDate DATE,
    UserObj User_,
    MEMBER PROCEDURE display_info
);

CREATE OR REPLACE TYPE AnswerToRequest AS OBJECT (
    ID INT,
    AnswerText VARCHAR(100),
    AnswerDate DATE,
    RequestObj RequestProductAvailability,
    MEMBER PROCEDURE display
);

CREATE OR REPLACE TYPE OfficeWorker AS OBJECT (
    ID INT,
    Name VARCHAR(100),
    MEMBER PROCEDURE display
); 

CREATE OR REPLACE TYPE Worker AS OBJECT (
    ID INT,
    Name VARCHAR(100),
    MEMBER PROCEDURE display
);
