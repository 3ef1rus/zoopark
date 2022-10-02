use zoopark;
CREATE TABLE ZooparkForTrade
(
    zooparkID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL ,
    [Adress] varchar (100) NOT NULL,
    [Number] varchar (50) NOT NULL
);
CREATE TABLE Suppliers
(
    supplierID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL,
    [Type feed] varchar(100) NOT NULL,
    [Delivery period] varchar (100) NOT NULL,
    [Amount] varchar(100) NOT NULL,
    [Price] varchar(100) NOT NULL
);
CREATE TABLE Vaccinations
(
    vaccinationID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL
);
CREATE TABLE Disease
(
    diseaseID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL,
);
CREATE TABLE InteractionFamily
(
    interactionFamilyID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Interaction Family] varchar(100) NOT NULL
);
CREATE TABLE Jobs
(
    jobID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL
);
CREATE TABLE Cells
(
    cellID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Number cell] varchar(100) NOT NULL,
    [Amount animals] varchar(100) NOT NULL,
    [Warm] varchar (100) NOT NULL,
    [Types animal] varchar (500) NOT NULL
);
CREATE TABLE Exchanges
(
    exchangeID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Number exchange] varchar (50) NOT NULL,
    [Whom give] varchar(100) NOT NULL ,
    [Whom take] varchar (100) NOT NULL,
    [Date exchange] varchar (50) NOT NULL,
    zooparkID INT REFERENCES ZooparkForTrade (zooparkID)
);
CREATE TABLE MedicalCard
(
    medicalCardID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Number Medical Card] varchar(100) NOT NULL,
    [Сompatibility] varchar(100) NOT NULL,
    [Date Vaccinations] varchar(100) NOT NULL,
    [Disease period] varchar(100) NOT NULL,
    vaccinationID INT REFERENCES Vaccinations (vaccinationID),
    diseaseID INT REFERENCES Disease (diseaseID)
);
CREATE TABLE Feeds
(
    feedID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL,
    [Amount] varchar(100) NOT NULL,
    [Need] varchar (100) NOT NULL,
    [Date receiving] varchar(100) NOT NULL,
    supplierID INT REFERENCES Suppliers (supplierID)
);
CREATE TABLE FoodTypes
(
    foodTypeID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Food type] varchar(100) NOT NULL,
    feedID INT REFERENCES Feeds (feedID)
);
CREATE TABLE Types
(
    typeID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name type] varchar(100) NOT NULL,
    [Сompatibility] varchar(100) NOT NULL,
    [Special] varchar(100) NOT NULL,
    [Family] varchar(100) NOT NULL,
    foodTypeID INT REFERENCES FoodTypes (foodTypeID)
);
CREATE TABLE PassportAnimal
(
    passportAnimaID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Number passport] varchar(100) NOT NULL,
    [Name] varchar(100) NOT NULL,
    [Sex] varchar(100) NOT NULL,
    [Parents] varchar(100) NOT NULL,
    [Data Birth] varchar(100) NOT NULL,
    [Childs] varchar(100) NOT NULL,
    MedicalCardID INT REFERENCES MedicalCard (MedicalCardID),
    typeID INT REFERENCES Types (typeID)
);
CREATE TABLE Responsibility
(
    responsibilityID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Date start] varchar(100) NOT NULL,
    [Date end] varchar(100) NOT NULL,
    passportAnimaID INT REFERENCES PassportAnimal (passportAnimaID)
);
CREATE TABLE Employee
(
    employeeID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Full name] varchar (100) NOT NULL,
    [Salarity] varchar(100) NOT NULL ,
    [Sex] varchar (100) NOT NULL,
    [Age] varchar (100) NOT NULL,
    [Experience] varchar (100) NOT NULL,
    jobID INT REFERENCES Jobs (jobID),
    responsibilityID INT REFERENCES Responsibility (responsibilityID),
    interactionFamilyID INT REFERENCES InteractionFamily (interactionFamilyID)
);
CREATE TABLE Animal
(
    animalID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Weigth] varchar(100) NOT NULL ,
    [Hight] varchar (100) NOT NULL,
    [Date join] varchar (100) NOT NULL,
    [Warm] varchar (100) NOT NULL,
    [Move] varchar (100) NOT NULL,
    cellID INT REFERENCES Cells (cellID),
    passportID INT REFERENCES PassportAnimal (passportAnimaID)
);
CREATE TABLE Mainzoopark
(
    zooparkID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Adress] varchar(100) NOT NULL ,
    [Name] varchar (100) NOT NULL,
    [Cells] varchar (100) NOT NULL,
    exchangeID INT REFERENCES Exchanges (exchangeID),
    animalID INT REFERENCES Animal (animalID),
    employeeID INT REFERENCES Employee (employeeID)
);
GO