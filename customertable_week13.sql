CREATE DATABASE Customer;
CREATE TABLE tblCustomer(CustomerID INT(2), CustomerName CHAR(25), Municipal CHAR(25), City CHAR(25), SalaryInPeso INT(255), primary key(CustomerID));
INSERT INTO tblCustomer ( CustomerID, CustomerName , Municipal, City, SalaryInPeso) VALUE   
	('1', 'Gina De Leon', 'Apalit', 'Pampanga', '5000'), 
    ('2', 'Amara Luna', ' Mexico', 'Pampanga', '6000'),
    ('3','Lucila Maulon', 'Angat', 'Bulacan', '1000'),
    ('4', 'Rafael Santos', 'Lumban', 'Laguna', '4500'),
    ('5', 'Maricel Moran', 'Calumpit', 'Bulacan', '12000'),
    ('6', 'Antonio' , 'Santa Maria', 'Bulacan', '8500'),
    ('7', 'Hanna Moos', 'Alamnos', 'Laguna', '6000'),
    ('8', 'Fred Gregorio', 'Lumban', 'Laguna', '5000'),
    ('9', 'Maria Andre', 'Porac', 'Pampanga','1800'),
    ('10', 'Liza Ramos', 'Alaminos', 'Laguna', '14000');

SELECT Min(SalaryInPeso), Max(SalaryInPeso)
FROM tblcustomer;

SELECT *FROM tblcustomer
WHERE CITY = 'Pampanga';
-- select all records from pampanga city

-- select all records from pampanga city within porac
SELECT * FROM tblcustomer
WHERE  Municipal = 'Porac' AND City = 'Pampanga';
-- select all records either Apalit or Pampanga
SELECT * FROM tblcustomer 
WHERE Municipal = 'Apalit' OR City = 'Pampanga';
-- select all records that are not in the city of Pampanga
SELECT * FROM tblcustomer
WHERE NOT City = 'Pampanga';

SELECT MIN(SalaryInPeso)
FROM tblcustomer
WHERE City = 'Laguna';

SELECT MAX(SalaryInPeso)
FROM tblcustomer
WHERE City = 'Laguna';

SELECT * FROM tblcustomer
ORDER BY City, CustomerName ASC;

SELECT * FROM tblcustomer
ORDER BY City, CustomerName DESC;