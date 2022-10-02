CREATE TABLE zooparkForTrade
(
    zooparkID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    Name varchar(100) NOT NULL ,
    Adress varchar (100) NOT NULL,
    Number varchar (50) NOT NULL
);
CREATE TABLE Exchanges
(
    exchangeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Whom give] varchar(100) NOT NULL ,
    [Whom take] varchar (100) NOT NULL,
    [Date exchange] varchar (50) NOT NULL,
    [Number exchange] varchar (50) NOT NULL,
    zooparkID INT REFERENCES Exchanges (zooparkID)
);
CREATE TABLE Mainzoopark
(
    zooparkID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Adress] varchar(100) NOT NULL ,
    [Name] varchar (100) NOT NULL,
    [Cells] varchar (100) NOT NULL,
    exchangeID INT REFERENCES Exchanges (exchangeID),
    animalID INT REFERENCES Animal (animalID),
    employeeID INT REFERENCES Employee (employeeID)
);
CREATE TABLE Animal
(
    animalID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Weigth] varchar(100) NOT NULL ,
    [Hight] varchar (100) NOT NULL,
    [Date join] varchar (100) NOT NULL,
    [Warm] boolean NOT NULL,
    [Move] boolean NOT NULL,
    cellID INT REFERENCES Cells (cellID),
    passportID INT REFERENCES PassportAnimal (passportAnimaID)
);
CREATE TABLE Employee
(
    employeeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Salarity] varchar(100) NOT NULL ,
    [Sex] varchar (100) NOT NULL,
    [Age] varchar (100) NOT NULL,
    [Experience] varchar (100) NOT NULL,
    [Full name] varchar (100) NOT NULL,
    jobID INT REFERENCES Jobs (jobID),
    responsibilityID INT REFERENCES Responsibility (responsibilityID),
    interactionTypeID INT REFERENCES InteractionTypes (interactionTypeID)
);
CREATE TABLE Jobs
(
    jobID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Name] varchar(100) NOT NULL
);
CREATE TABLE Cells
(
    cellID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Number cell] varchar(100) NOT NULL,
    [Number animal] varchar(100) NOT NULL,
    [Warm] boolean NOT NULL,
    [Types animal] archar(100) NOT NULL
);
CREATE TABLE Responsibility
(
    responsibilityID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Date start] varchar(100) NOT NULL,
    [Date end] varchar(100) NOT NULL,
    [Warm] boolean NOT NULL,
    passportAnimaID INT REFERENCES PassportAnimal (passportAnimaID)
);
CREATE TABLE InteractionTypes
(
    interactionTypeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [InteractionTypes] varchar(100) NOT NULL
);
CREATE TABLE PassportAnimal
(
    passportAnimaID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    -- primary key column
    [Name] varchar(100) NOT NULL,
    [Sex] varchar(100) NOT NULL,
    [Parents] varchar(100) NOT NULL,
    [DataBirth] varchar(100) NOT NULL,
    [Childs] varchar(100) NOT NULL,
    [Number passport] varchar(100) NOT NULL,
    MedicalCardID INT REFERENCES MedicalCard (MedicalCardID),
    exchangeID INT REFERENCES Exchanges (exchangeID)
    -
);
    CREATE TABLE MedicalCard
    (
        medicalCardID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Сompatibility] varchar(100) NOT NULL,
        [Number Medical Card] varchar(100) NOT NULL,
        vaccinationID INT REFERENCES Vaccinations (vaccinationID),
        diseaseID INT REFERENCES Disease (diseaseID)
    );
    CREATE TABLE Vaccinations
    (
        vaccinationID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Name] varchar(100) NOT NULL,
        [Date] varchar(100) NOT NULL
    );
    CREATE TABLE Disease
    (
        diseaseID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Name] varchar(100) NOT NULL,
        [Date start] varchar(100) NOT NULL,
        [Date end] varchar(100) NOT NULL
    );
    CREATE TABLE Types
    (
        typeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Сompatibility] varchar(100) NOT NULL,
        [Special] varchar(100) NOT NULL,
        [Name type] varchar(100) NOT NULL,
        [Family] varchar(100) NOT NULL,
        foodTypeID INT REFERENCES FoodTypes (foodTypeID)
    );
    CREATE TABLE FoodTypes
    (
        foodTypeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Food type] varchar(100) NOT NULL,
        feedID INT REFERENCES Feeds (feedID)
    );
    CREATE TABLE Feeds
    (
        feedID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Name] varchar(100) NOT NULL,
        [Amount] varchar(100) NOT NULL,
        [Need] boolean NOT NULL,
        [Date receiving] varchar(100) NOT NULL,
        supplierID INT REFERENCES Suppliers (supplierID)
    );
    CREATE TABLE Suppliers
    (
        supplierID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
        -- primary key column
        [Name] varchar(100) NOT NULL,
        [Type feed] varchar(100) NOT NULL,
        [Delivery period] boolean NOT NULL,
        [Amount] varchar(100) NOT NULL,
        [Price] varchar(100) NOT NULL
    );
GO