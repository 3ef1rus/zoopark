CREATE TABLE zooparkForTrade
(
    zooparkID INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    Name varchar(100) NOT NULL ,
    Adress varchar (100) NOT NULL,
    Number varchar (50) NOT NULL,
);
CREATE TABLE Exchanges
(
    exchangeID INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    [Whom give] varchar(100) NOT NULL ,
    [Whom take] varchar (100) NOT NULL,
    [Data exchange] varchar (50) NOT NULL,
    [Number exchange] varchar (50) NOT NULL,
    zooparkID INT REFERENCES Exchanges (zooparkID)
);
CREATE TABLE Mainzoopark
(
    zooparkID INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    [Adress] varchar(100) NOT NULL ,
    [Name] varchar (100) NOT NULL,
    [Cells] varchar (100) NOT NULL,
    exchangeID INT REFERENCES Exchanges (exchangeID),
    animalID INT REFERENCES Animal (animalID),
    employeeID INT REFERENCES Employee (employeeID)
);
CREATE TABLE Animal
(
    animalID INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    [Weigth] varchar(100) NOT NULL ,
    [Hight] varchar (100) NOT NULL,
    [Data join] varchar (100) NOT NULL,
    [Warm] boolean NOT NULL,
    [Move] boolean NOT NULL,
    exchangeID INT REFERENCES Exchanges (exchangeID)
    exchangeID INT REFERENCES Exchanges (exchangeID)
);
CREATE TABLE Employee
(
    employeeID INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    [Salarity] varchar(100) NOT NULL ,
    [Sex] varchar (100) NOT NULL,
    [Age] varchar (100) NOT NULL,
    [Experience] varchar (100) NOT NULL,
    [Full name] varchar (100) NOT NULL,
    exchangeID INT REFERENCES Exchanges (exchangeID)
    exchangeID INT REFERENCES Exchanges (exchangeID)
    exchangeID INT REFERENCES Exchanges (exchangeID)
);


GO