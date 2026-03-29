-- DROP DATABASE IF EXISTS
DROP DATABASE IF EXISTS BloodManagement;

-- CREATE DATABASE
CREATE DATABASE BloodManagement;
USE BloodManagement;

-- =========================
-- TABLE: bloodDonorTable
-- =========================
CREATE TABLE bloodDonorTable (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(30) NOT NULL,
    `Gender` VARCHAR(10) NOT NULL,
    `Address` VARCHAR(50) NOT NULL,
    `Date` DATE NOT NULL,
    `BloodGroup` VARCHAR(10) NOT NULL,
    `EID` VARCHAR(50) NOT NULL,
    `QTY` INT NOT NULL,
    `Amount` DOUBLE NOT NULL,
    PRIMARY KEY (`Id`)
);

-- =========================
-- TABLE: EMPTable
-- =========================
CREATE TABLE EMPTable (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(30) NOT NULL,
    `EID` INT NOT NULL,
    `CONTACT` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`Id`),
    UNIQUE KEY (`EID`)
);

-- =========================
-- TABLE: RECIEVERTable
-- =========================
CREATE TABLE RECIEVERTable (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Date` DATE NOT NULL,
    `Name` VARCHAR(35) NOT NULL,
    `BloodGroup` VARCHAR(10) NOT NULL,
    `Gender` VARCHAR(10) NOT NULL,
    `Contact` VARCHAR(15) NOT NULL,
    `DoctorName` VARCHAR(30) NOT NULL,
    `EID` INT NOT NULL,
    `AMount` INT NOT NULL,
    `QTY` INT NOT NULL,
    PRIMARY KEY (`Id`),
    KEY (`EID`),
    CONSTRAINT fk_employee FOREIGN KEY (`EID`)
        REFERENCES EMPTable (`EID`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- =========================
-- TABLE: DoctorTable
-- =========================
CREATE TABLE DoctorTable (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(30) NOT NULL,
    `CONTACT` VARCHAR(30) NOT NULL,
    `Address` VARCHAR(200),
    PRIMARY KEY (`Id`)
);

-- =========================
-- TABLE: InventoryTable
-- =========================
CREATE TABLE InventoryTable (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `BloodGroup` VARCHAR(30) NOT NULL,
    `Qty` INT NOT NULL,
    PRIMARY KEY (`Id`)
);

-- =========================
-- TABLE: TransactionTable
-- =========================
CREATE TABLE TransactionTable (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Amount` INT NOT NULL,
    `EName` VARCHAR(30) NOT NULL,
    `Description` VARCHAR(200) NOT NULL,
    `TYP` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`Id`)
);

-- =========================
-- INSERT DUMMY DATA
-- =========================

-- EMPTable
INSERT INTO EMPTable (`Name`, `EID`, `CONTACT`) VALUES
('Shivshankar Mali', 101, '9876543210'),
('Amit Patil', 102, '9123456780'),
('Rohit Sharma', 103, '9988776655');

-- DoctorTable
INSERT INTO DoctorTable (`Name`, `CONTACT`, `Address`) VALUES
('Dr. Mehta', '9001122334', 'Pune City Hospital'),
('Dr. Joshi', '9011223344', 'Ruby Hall Clinic');

-- bloodDonorTable
INSERT INTO bloodDonorTable 
(`Name`, `Gender`, `Address`, `Date`, `BloodGroup`, `EID`, `QTY`, `Amount`) VALUES
('Rahul Deshmukh', 'Male', 'Pune', '2026-03-01', 'A+', '101', 2, 1000),
('Sneha Kulkarni', 'Female', 'Mumbai', '2026-03-05', 'B+', '102', 1, 500),
('Ankit Verma', 'Male', 'Nashik', '2026-03-10', 'O+', '103', 3, 1500);

-- InventoryTable
INSERT INTO InventoryTable (`BloodGroup`, `Qty`) VALUES
('A+', 10),
('B+', 8),
('O+', 15),
('AB+', 5);

-- RECIEVERTable
INSERT INTO RECIEVERTable
(`Date`, `Name`, `BloodGroup`, `Gender`, `Contact`, `DoctorName`, `EID`, `AMount`, `QTY`) VALUES
('2026-03-12', 'Priya Shah', 'A+', 'Female', '9090909090', 'Dr. Mehta', 101, 1200, 2),
('2026-03-15', 'Karan Singh', 'O+', 'Male', '8080808080', 'Dr. Joshi', 102, 1800, 3);

-- TransactionTable
INSERT INTO TransactionTable (`Amount`, `EName`, `Description`, `TYP`) VALUES
(1000, 'Shivshankar Mali', 'Blood donation payment', 'Credit'),
(1200, 'Amit Patil', 'Blood issued to patient', 'Debit'),
(1500, 'Rohit Sharma', 'Inventory update', 'Credit');