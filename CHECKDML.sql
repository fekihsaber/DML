--Creation de tables:
-- Create Customer table:
CREATE TABLE Customer (
    CustomerID VARCHAR2(20) PRIMARY KEY,
    CustomerName VARCHAR2(20) NOT NULL,
    CustomerTel INT
);

-- Create Product table:
CREATE TABLE Product (
    ProductID VARCHAR2(20) PRIMARY KEY,
    ProductName VARCHAR2(20) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0) -- Added constraint for positive value
);

-- Create Orders table:
CREATE TABLE Orders (
    CustomerID VARCHAR2(20),
    ProductID VARCHAR2(20),
    Quantity INT,
    TotalAmount INT,
    PRIMARY KEY (CustomerID, ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

--Insertion de donnees :


--Customer table:
INSERT INTO `customer`(`CustomerID`, `CustomerName`, `CustomerTel`)
VALUES ('C01','ALI','71321009');
INSERT INTO `customer`(`CustomerID`, `CustomerName`, `CustomerTel`) 
VALUES ('C02','ASMA','77345823')

--Product table:
INSERT INTO `product`(`ProductID`, `ProductName`,`Category`, `Price`)
VALUES ('P01','Samsung Galaxy S20','Smartphone','3299');
INSERT INTO `product`(`ProductID`, `ProductName`,`Category`, `Price`)
VALUES ('P02','ASUS Notebook','PC','4599')

--Orders table:
INSERT INTO `orders`(`CustomerID`, `ProductID`, `OrderDate`,`Quantity`, `TotalAmount`)
VALUES ('C01','P01','NULL','2','9198');
INSERT INTO `orders`(`CustomerID`, `ProductID`, `OrderDate`,`Quantity`, `TotalAmount`)
VALUES ('C02','P02','28/05/2020','1','3299')


