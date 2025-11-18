-- Part 1
CREATE TABLE Cars (
  CarID INTEGER PRIMARY KEY,
  Brand TEXT NOT NULL,
  Model TEXT NOT NULL,
  Year INTEGER NOT NULL,
  DailyPrice REAL NOT NULL
);

CREATE TABLE Customers (
  CustomerID INTEGER PRIMARY KEY,
  FullName TEXT NOT NULL,
  Email TEXT UNIQUE,
  Phone TEXT
);

CREATE TABLE Rentals (
  RentalID INTEGER PRIMARY KEY,
  CarID INTEGER NOT NULL,
  CustomerID INTEGER NOT NULL,
  StartDate TEXT NOT NULL,  
  EndDate TEXT NOT NULL,
  TotalCost REAL NOT NULL,
  FOREIGN KEY (CarID) REFERENCES Cars(CarID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (FullName, Email, Phone) VALUES
('John Smith', 'john.smith@example.com', '555-1001'),
('Emily Johnson', 'emily.j@example.com', '555-1002'),
('Michael Brown', 'm.brown@example.com', '555-1003'),
('Sarah Davis', 'sarah.davis@example.com', '555-1004'),
('David Wilson', 'david.w@example.com', '555-1005'),
('Olivia Martinez', 'olivia.m@example.com', '555-1006');
INSERT INTO Cars (Brand, Model, Year, DailyPrice) VALUES
('Toyota', 'Corolla', 2020, 45.00),
('Honda', 'Civic', 2019, 50.00),
('Ford', 'Mustang', 2021, 120.00),
('Chevrolet', 'Malibu', 2018, 40.00),
('BMW', 'X5', 2022, 150.00),
('Audi', 'A4', 2020, 90.00),
('Hyundai', 'Elantra', 2017, 35.00),
('Kia', 'Sportage', 2019, 55.00);
INSERT INTO Rentals (CarID, CustomerID, StartDate, EndDate, TotalCost) VALUES
(1, 1, '2024-01-01', '2024-01-05', 45 * 4),
(2, 2, '2024-01-03', '2024-01-06', 50 * 3),
(3, 3, '2024-01-10', '2024-01-12', 120 * 2),
(4, 4, '2024-02-01', '2024-02-04', 40 * 3),
(5, 5, '2024-02-10', '2024-02-13', 150 * 3),
(6, 6, '2024-02-15', '2024-02-17', 90 * 2),
(7, 1, '2024-03-01', '2024-03-03', 35 * 2),
(8, 2, '2024-03-05', '2024-03-08', 55 * 3),
(1, 3, '2024-03-10', '2024-03-12', 45 * 2),
(5, 4, '2024-03-15', '2024-03-18', 150 * 3);

SELECT *
FROM Cars
ORDER BY DailyPrice DESC;

SELECT *
FROM Customers
WHERE FullName LIKE '%a%';

SELECT *
FROM Rentals
WHERE StartDate >= date('now', '-30 days');

SELECT *
FROM Rentals
WHERE StartDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);





