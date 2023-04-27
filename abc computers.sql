CREATE DATABASE ABC_Computer;
CREATE TABLE COMPUTER(
	Serial_number INT(7),
	Make CHAR(12), 
	Model VARCHAR(24),
	ProcessorType VARCHAR(24),
	ProcessorSpeed INT(4),
	MainMemory VARCHAR(15), 
	DiskSize VARCHAR(15)
    ,PRIMARY KEY (Serial_number));

INSERT INTO COMPUTER(Serial_Number, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize) 
VALUE ('9871234', 'HP','Pavilion 500 -210qe','Intel i5 - 4530', '3.00', '6.0 Gbytes','1.0 Tbytes' );

INSERT INTO COMPUTER(Serial_Number, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize) 
VALUE ('987125','HP','Pavilion 500 -210qe',	'Intel i5 - 4531',	'3.00',	'6.0 Gbytes','1.0 Tbytes');

INSERT INTO COMPUTER(Serial_Number, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize) 
VALUE ('6541001','DELL','OptiPlex 9020','Intel i5 - 4532','3.00','6.0 Gbytes','1.0 Tbytes');

INSERT INTO COMPUTER(Serial_Number, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize) 
VALUE ('6541002','DELL','OptiPlex 9021','Intel i5 - 4533','3.00','6.0 Gbyte','1.0 Tbytes');

ALTER TABLE Computer ADD Graphics TEXT(40) NOT NULL COMMENT 'Must be all "Integrated Intel HD Graphics 4600";

UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE Serial_Number= 9871234;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE Serial_Number= 9871235;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE Serial_Number= 6541001;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE Serial_Number= 6541002;

ALTER TABLE computer DROP ProcessorSpeed;






    
