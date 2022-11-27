
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
CREATE TABLE MedicalCard
(
    medicalCardID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Number Medical Card] varchar(100) NOT NULL,
    [Сompatibility] varchar(100) NOT NULL
);
CREATE TABLE Vaccinations
(
    vaccinationID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL
);
CREATE TABLE VaccinationsList
(
    vaccinationListID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Date] varchar(100) NOT NULL,
    idMedCard INT REFERENCES MedicalCard (medicalCardID),
    vaccinationID INT REFERENCES Vaccinations (vaccinationID)
);
CREATE TABLE Disease
(
    diseaseID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL,
);
CREATE TABLE DiseaseList
(
    diseaseListID INT NOT NULL PRIMARY KEY IDENTITY,
    [Disease period] varchar(100) NOT NULL,
    idMedCard INT REFERENCES MedicalCard (medicalCardID),
    diseaseID INT REFERENCES Disease (diseaseID)
);
CREATE TABLE Jobs
(
    jobID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Name] varchar(100) NOT NULL
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
    [Compatibility] varchar(100) NOT NULL,
    [Special] varchar(100) NOT NULL,
    [Family] varchar(100) NOT NULL,
    foodTypeID INT REFERENCES FoodTypes (foodTypeID)
);
CREATE TABLE InteractionFamilyList
(
    interactionFamilyListID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    employeeID INT REFERENCES Employee (employeeID),
    typeID INT REFERENCES Types (typeID)
);

CREATE TABLE Cells
(
    cellID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Number cell] varchar(100) NOT NULL,
    [Amount animals] varchar(100) NOT NULL,
    [Warm] varchar (100) NOT NULL
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
CREATE TABLE ResponsibilityList
(
    responsibilityListID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    employeeID INT REFERENCES Employee (employeeID),
    responsibilityID INT REFERENCES Responsibility (responsibilityID)
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
    passportAnimaID INT REFERENCES PassportAnimal (passportAnimaID)
);
CREATE TABLE ListAnimalTypeInCell
(
    listAnimalTypeInCellID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    cellID INT REFERENCES Cells (cellID),
    typeID INT REFERENCES Types (typeID)
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
CREATE TABLE Access
(
    accessID INT NOT NULL PRIMARY KEY IDENTITY,
    -- primary key column
    [Access] varchar(100) NOT NULL,
    employeeID INT REFERENCES Employee (employeeID),
    typeID INT REFERENCES Types (typeID)
);
CREATE TABLE EmployeeHistory
(
    EmployeeHistoryId INT NOT NULL IDENTITY PRIMARY KEY,
    Operation NVARCHAR(200) NOT NULL,
    CreateAt DATETIME NOT NULL DEFAULT GETDATE()
);

CREATE TABLE Users
(
    userID INT NOT NULL IDENTITY PRIMARY KEY,
    login_user VARCHAR(50) NOT NULL,
    password_user VARCHAR(50) NOT NULL
);

CREATE TABLE Admins
(
    adminID INT NOT NULL IDENTITY PRIMARY KEY,
    login_admin VARCHAR(50) NOT NULL,
    password_admin VARCHAR(50) NOT NULL
);
GO