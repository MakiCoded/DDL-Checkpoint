CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY,
    LicensePlate VARCHAR(10) NOT NULL,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(20),
    VIN VARCHAR(17) NOT NULL
);

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    LicenseNumber VARCHAR(15) NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(2),
    ZipCode VARCHAR(10)
);

CREATE TABLE Trips (
    TripID INT PRIMARY KEY,
    VehicleID INT,
    DriverID INT,
    StartDate DATE,
    EndDate DATE,
    StartLocation VARCHAR(100),
    EndLocation VARCHAR(100),
    Distance INT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID) ON DELETE CASCADE,
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)ON DELETE CASCADE
);

CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY,
    VehicleID INT,
    MaintenanceDate DATE,
    Description VARCHAR(100),
    Cost DECIMAL(10, 2),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID) ON DELETE CASCADE
);

INSERT INTO Vehicles(VehicleID, LicensePlate, Make, Model, Year, Color, VIN)
VALUES 
    (1, 'ABC123', 'Toyota', 'Corolla', 2020, 'White', '1HGCM82633A004352'),
    (2, 'XYZ789', 'Ford', 'Fusion', 2018, 'Blue', '2HGCM82633A004353');

INSERT INTO Drivers(DriverID, FirstName, LastName, LicenseNumber, Phone, Address, City, State, ZipCode)
VALUES 
	(1, 'Michael', 'Smith', 'D1234567', '1234567890', '123 Main St', 'Anytown', 'CA', '12345'),
	(2, 'Sarah', 'Connor', 'D7654321', '0987654321', '456 Elm St', 'Otherville', 'NY', '54321');

INSERT INTO Trips(TripID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Distance)
VALUES
	(1, 1, 1, '2024-07-01', '2024-07-02', 'Los Angeles', 'San Francisco', '380'),
	
	(2, 2, 2, '2024-07-03', '2024-07-04', 'New York', 'Washington D.C.', '225');

INSERT INTO Maintenance(MaintenanceID, VehicleID, MaintenanceDate, Description, Cost)
VALUES 
	(1, 1, '2024-06-15','Oil change',  50.00),
	(2, 2, '2024-06-20', 'Tire replacement', 300.00);

UPDATE Maintenance
SET Cost = 350.00
WHERE MaintenanceID = 2

DELETE FROM Vehicles 
WHERE VehicleID = 1

INSERT INTO Trips(TripID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Distance)
VALUES
	(3, 2, 1, '2024-07-05', '2024-07-06', 'Boston', 'Philadelphia', '300' )

UPDATE Vehicles
SET Color = 'Red'
WHERE VehicleID = 2

INSERT INTO Maintenance(MaintenanceID, VehicleID, MaintenanceDate, Description, Cost)
VALUES 
	(3, 1, '2024-07-10', 'Brake inspection', 100.00);

UPDATE Drivers
SET Phone ='2223334444'
WHERE DriverID = 1

DELETE FROM Trips
WHERE TripID = 2