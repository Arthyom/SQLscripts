SELECT DISTINCT City FROM Customers; 

SELECT * FROM Customers
WHERE CustomerID=1;

SELECT * FROM Customers
WHERE Country='Mexico';

SELECT * FROM Customers
WHERE Country='Germany'
AND City='Berlin'; 

SELECT * FROM Customers
ORDER BY Country; SELECT * FROM Customers
ORDER BY Country; 

SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway'); 

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway'); 

UPDATE Customers
SET ContactName='Alfred Schmidt', City='Hamburg'
WHERE CustomerName='Alfreds Futterkiste'; 

DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste' AND ContactName='Maria Anders'; 

 SELECT * FROM Customers
WHERE City IN ('Paris','London'); 

 SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE (Price BETWEEN 10 AND 20)
AND NOT CategoryID IN (1,2,3); 

SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'M'; 

SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;

SELECT CustomerName, Address+', '+City+', '+PostalCode+', '+Country AS Address
FROM Customers;

 SELECT CustomerName, CONCAT(Address,', ',City,', ',PostalCode,', ',Country) AS Address
FROM Customers;