CREATE TABLE Containers (
    ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    Number INT,
    Type NVARCHAR(100),
    Length DECIMAL(10, 2),
    Width DECIMAL(10, 2),
    Height DECIMAL(10, 2),
    Weight DECIMAL(10, 2),
    IsEmpty BIT,
    ArrivalDate DATETIME
);
