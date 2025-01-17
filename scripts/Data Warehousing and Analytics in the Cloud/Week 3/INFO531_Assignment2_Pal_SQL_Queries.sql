-- Q1. Show the screenshot of a successful installation of MySQL Software and MySQL Workbench with the latest version on your machine. Show the screenshot of the database “Worker”created.

CREATE DATABASE Worker;

SHOW DATABASES;

-- Q2. Create the Department table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type & length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented. (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the Department table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.DEPARTMENT (
	DEPARTMENTID TINYINT NOT NULL,
    DEPARTMENTNM CHAR(30) NOT NULL,
    PRIMARY KEY (DEPARTMENTID));
	
INSERT INTO WORKER.DEPARTMENT
VALUES(1,'Research & Development'),
(2,'Production'),
(3,'IT Support'),
(4,'Operations'),
(5,'Customer Service'),
(6,'Purchasing'),
(7,'Sales & Marketing'),
(8,'Human Resource Management'),
(9,'Accounting and Finance'),
(10,'Legal');

SELECT * FROM WORKER.DEPARTMENT
ORDER BY DEPARTMENTID;

-- Q3. Create the Employee table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type and length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented (not in a graphical view). (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the Employee table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.EMPLOYEE (
	EMPLOYEEID INTEGER NOT NULL,
    DEPARTMENTID TINYINT NOT NULL,
    FIRSTNAME VARCHAR(20) NOT NULL,
    LASTNAME VARCHAR(20) NOT NULL,
    ADDRESS VARCHAR(50),
    PHONENUMBERTXT VARCHAR(15),
    HIREDATE DATE NOT NULL,
    PRIMARY KEY (EMPLOYEEID));
	
INSERT INTO WORKER.EMPLOYEE
VALUES(1,2,'Andy','Wong','345 South Street','(603) 555-6880','2001-01-15'),
(2,1,'John','Wilson','560 Broadway','(518) 555-6690','2017-03-19'),
(3,3,'Vivek','Pandey','15 Mineral Drive','(603) 555-4420','2003-11-15'),
(4,7,'Nola','Davis','15 Long Ave','(478) 555-8822','2016-03-23'),
(5,8,'Kathy','Cooper','15 Hatter Drive','(212) 555-9630','2011-11-18'),
(6,9,'Tom','Harper','64 Highland Street','(212) 555-7755','2010-04-11');

SELECT * FROM WORKER.EMPLOYEE
ORDER BY EMPLOYEEID;

-- Q4. Create the Equipment table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type & length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented. (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the Equipment table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.EQUIPMENT (
	EQUIPMENTID INTEGER NOT NULL,
    EQUIPMENTNAME VARCHAR(30) NOT NULL,
    EQUIPMENTCOSTAMOUNT DECIMAL(13,2),
    PRIMARY KEY (EQUIPMENTID));
	
INSERT INTO WORKER.EQUIPMENT
VALUES(1,'Notebook Computers',23.6),
(2,'Headsets',45.7),
(3,'Computer Monitor',67.8),
(4,'Multi-Function Printers',43.6),
(5,'Projector or a Big Screen TV',87.6),
(6,'Servers',54.3),
(7,'Internet Modem',99.8),
(8,'Cell Phone',33.4);

SELECT * FROM WORKER.EQUIPMENT
ORDER BY EQUIPMENTID;

-- Q5. Create the EmployeeEquipment table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type & length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented. (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the EmployeeEquipment table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.EMPLOYEEEQUIPMENT (
	EMPLOYEEID INTEGER NOT NULL,
	EQUIPMENTID INTEGER NOT NULL,
    PRIMARY KEY (EMPLOYEEID,EQUIPMENTID));
	
INSERT INTO WORKER.EMPLOYEEEQUIPMENT
VALUES(1,1),
(2,1),
(2,3),
(3,1),
(3,2),
(3,3),
(4,1),
(4,2),
(5,1),
(5,2),
(5,3),
(6,1),
(6,3);

SELECT * FROM WORKER.EMPLOYEEEQUIPMENT
ORDER BY EMPLOYEEID, EQUIPMENTID;

-- Q6. Create the Training table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type & length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented. (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the Training table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.TRAINING (
	TRAININGID INTEGER NOT NULL,
	TRAININGNAME VARCHAR(50) NOT NULL,
    PRIMARY KEY (TRAININGID));
	
INSERT INTO WORKER.TRAINING
VALUES(1,'COVID-19 Awareness and Protection Training'),
(2,'Code of Conduct Training'),
(3,'Safety Traning'),
(4,'Intro to Python'),
(5,'Machine Learning'),
(6,'Microsoft Certifications'),
(7,'Security and Privacy'),
(8,'Product Knowledge'),
(9,'Sales Skills'),
(10,'Employee Relations'),
(11,'Travel and Expense Management');

SELECT * FROM WORKER.TRAINING
ORDER BY TRAININGID;

-- Q7. Create the EmployeeTraining table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type & length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented. (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the EmployeeTraining table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.EMPLOYEETRAINING (
	EMPLOYEEID INTEGER NOT NULL,
	TRAININGID INTEGER NOT NULL,
    PRIMARY KEY (EMPLOYEEID,TRAININGID));
	
INSERT INTO WORKER.EMPLOYEETRAINING
VALUES(1,2),
(1,3),
(2,2),
(2,4),
(2,5),
(3,2),
(3,6),
(3,7),
(4,2),
(4,8),
(4,9),
(5,2),
(5,10),
(6,2),
(6,11);

SELECT * FROM WORKER.EMPLOYEETRAINING
ORDER BY EMPLOYEEID,TRAININGID;

-- Q8. Create the Trainer table in the Worker database (table must be based on Physical Model Provided in the Assignment folder). (a) Columns, Primary Key (PK), Data Type & length, and NULL/NOT NULL need to be implemented, as provided in the Physical Model. (b) Show the table definition (DDL) that you implemented. (c) Insert the complete set of data provided in the Excel file (uploaded in the Assignment folder) and show the insert statements used. (d) Retrieve the data from the Trainer table by using the SELECT * statement and order by PK column(s). Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

CREATE TABLE WORKER.TRAINER (
	TRAINERID INTEGER NOT NULL,
	TRAININGID INTEGER NOT NULL,
	TRAINERFIRSTNAME VARCHAR(20) NOT NULL,
	TRAINERLASTNAME VARCHAR(20),
    PRIMARY KEY (TRAINERID));
	
INSERT INTO WORKER.TRAINER
VALUES(1,1,'James','Smith'),
(2,1,'Johnny','Khor'),
(3,2,'Michael','Smith'),
(4,3,'Maria','Garcia'),
(5,4,'John',NULL),
(6,4,'Paul','Deitel'),
(7,5,'Mike','Taylor'),
(8,5,'Avinash','Navlani'),
(9,6,'Robert','Smith'),
(10,7,'Maria','Rodriguez'),
(11,8,'Mike','Donlon'),
(12,9,'Kathy','Corby'),
(13,10,'Mary','Garcia'),
(14,10,'Vanessa',NULL),
(15,11,'Jordan',NULL),
(16,11,'Maria','Hernandez');

SELECT * FROM WORKER.TRAINER
ORDER BY TRAINERID;

-- Q9. Retrieve the data from the Trainer table by using the SELECT * statement with filter, WHERE TrainerLastName IS NULL. Show the output. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

SELECT * FROM WORKER.TRAINER
WHERE TRAINERLASTNAME IS NULL
ORDER BY TRAINERID;

-- Q10. By using the SHOW tables statements, show the list of tables you have created in the Worker database. Show the screenshot of the execution of the above statements and results. Make sure you show the print screen of the complete set of the rows and columns. The rows must be ordered by PK column(s).

SHOW TABLES

-- Q11. Write a single-row subquery to display EmployeeID, FirstName, LastName, and HireDate of employees hired after employee Vivek Pandey. Sort the results by EmployeeID. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT EMPLOYEEID, FIRSTNAME, LASTNAME, HIREDATE
FROM WORKER.EMPLOYEE
WHERE HIREDATE > (SELECT HIREDATE FROM WORKER.EMPLOYEE WHERE FIRSTNAME = 'Vivek' AND LASTNAME = 'Pandey')

-- Q12. Write a query to display FirstName, LastName, and TrainingName for employee Tom Harper. Sort the results by TrainingName. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.FIRSTNAME, T1.LASTNAME, T3.TRAININGNAME
FROM WORKER.EMPLOYEE T1
LEFT JOIN WORKER.EMPLOYEETRAINING T2
ON T1.EMPLOYEEID = T2.EMPLOYEEID
LEFT JOIN WORKER.TRAINING T3
ON T2.TRAININGID = T3.TRAININGID
WHERE T1.FIRSTNAME = 'Tom' AND T1.LASTNAME = 'Harper'
ORDER BY T3.TRAININGNAME

-- Q13. Write a query to display the complete list of Trainings, and trainers (first and last name) available for each training. Sort the output by TrainingName and Trainers' first and last name. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.TRAININGNAME AS TRAINING, T2.TRAINERFIRSTNAME, T2.TRAINERLASTNAME
FROM WORKER.TRAINING T1
LEFT JOIN WORKER.TRAINER T2
ON T1.TRAININGID = T2.TRAININGID
ORDER BY T1.TRAININGNAME, T2.TRAINERFIRSTNAME, T2.TRAINERLASTNAME

-- Q14. Write a multiple-row subquery to display EmployeeID, FirstName, LastName, and HireDate of employees who work for the following departments: Accounting and Finance, IT Support, and Production. Sort the results by EmployeeID. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT EMPLOYEEID, FIRSTNAME, LASTNAME, HIREDATE
FROM WORKER.EMPLOYEE
WHERE DEPARTMENTID IN 
(SELECT DISTINCT DEPARTMENTID
FROM WORKER.DEPARTMENT
WHERE DEPARTMENTNM IN ('Accounting and Finance','IT Support', 'Production'))
ORDER BY EMPLOYEE.EMPLOYEEID 

-- Q15. Write a query to display the EmployeeID, FirstName, LastName, EquipmentName, and EquipmentCostAmount for one of the employees. Sort the results by EmployeeID. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.EMPLOYEEID, T1.FIRSTNAME, T1.LASTNAME, T3.EQUIPMENTNAME, T3.EQUIPMENTCOSTAMOUNT
FROM WORKER.EMPLOYEE T1
LEFT JOIN WORKER.EMPLOYEEEQUIPMENT T2
ON T1.EMPLOYEEID = T2.EMPLOYEEID 
LEFT JOIN WORKER.EQUIPMENT T3
ON T2.EQUIPMENTID = T3.EQUIPMENTID
WHERE T1.EMPLOYEEID=3
ORDER BY T1.EMPLOYEEID

-- Q16. Write a query to display the TrainingID, TrainingName, TrainerID, TrainerFirstName, and TrainerLastName with the trainers who did not provide their last name. Sort the results by TrainingID and TrainerID. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.TRAININGID, T2.TRAININGNAME, T1.TRAINERID, T1.TRAINERFIRSTNAME, T1.TRAINERLASTNAME
FROM WORKER.TRAINER T1
LEFT JOIN WORKER.TRAINING T2
ON T1.TRAININGID = T2.TRAININGID
WHERE TRAINERLASTNAME IS NULL
ORDER BY T1.TRAININGID, T1.TRAINERID

-- Q17. Write a query to display the distinct list of equipments used by the current employees. Sort the output by EquipmentName. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT DISTINCT T3.EQUIPMENTNAME
FROM WORKER.EMPLOYEE T1
LEFT JOIN WORKER.EMPLOYEEEQUIPMENT T2
ON T1.EMPLOYEEID = T2.EMPLOYEEID
LEFT JOIN WORKER.EQUIPMENT T3
ON T2.EQUIPMENTID = T3.EQUIPMENTID
ORDER BY T3.EQUIPMENTNAME 

-- Q18. Write a query to display the FirstName, LastName, TrainingName, and trainer(s) (with first and last name in two separate columns) for one of the employees. Sort the results by TrainingName and TrainerFirstName. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.EMPLOYEEID, T1.FIRSTNAME, T1.LASTNAME, T3.TRAININGNAME, T4.TRAINERFIRSTNAME, T4.TRAINERLASTNAME
FROM WORKER.EMPLOYEE T1
LEFT JOIN WORKER.EMPLOYEETRAINING T2
ON T1.EMPLOYEEID = T2.EMPLOYEEID
LEFT JOIN WORKER.TRAINING T3
ON T2.TRAININGID = T3.TRAININGID
LEFT JOIN WORKER.TRAINER T4
ON T3.TRAININGID = T4.TRAININGID
WHERE T1.EMPLOYEEID=3
ORDER BY T3.TRAININGNAME, T4.TRAINERFIRSTNAME

-- Q19. Write a query to display the EmployeeID, FirstName, LastName, DepartmentID, DepartmentName, EquipmentID, EquipmentName for all employees. Sort the results by EmployeeID, DepartmentID, and EquipmentID. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.EMPLOYEEID, T1.FIRSTNAME, T1.LASTNAME, T1.DEPARTMENTID, T2.DEPARTMENTNM, T3.EQUIPMENTID, T4.EQUIPMENTNAME
FROM WORKER.EMPLOYEE T1
LEFT JOIN WORKER.DEPARTMENT T2
ON T1.DEPARTMENTID = T2.DEPARTMENTID
LEFT JOIN WORKER.EMPLOYEEEQUIPMENT T3
ON T1.EMPLOYEEID = T3.EMPLOYEEID
LEFT JOIN WORKER.EQUIPMENT T4
ON T3.EQUIPMENTID = T4.EQUIPMENTID
ORDER BY T1.EMPLOYEEID, T1.DEPARTMENTID, T3.EQUIPMENTID

-- Q20. Write a query to display the EmployeeID, FirstName, LastName, DepartmentID, DepartmentName, TrainingID, TrainingName for all employees. Sort the results by EmployeeID, DepartmentID, and TrainingID. Make sure you show the print screen of the complete set of the rows, and columns as specified.

SELECT T1.EMPLOYEEID, T1.FIRSTNAME, T1.LASTNAME, T1.DEPARTMENTID, T2.DEPARTMENTNM, T3.TRAININGID, T4.TRAININGNAME
FROM WORKER.EMPLOYEE T1
LEFT JOIN WORKER.DEPARTMENT T2
ON T1.DEPARTMENTID = T2.DEPARTMENTID
LEFT JOIN WORKER.EMPLOYEETRAINING T3
ON T1.EMPLOYEEID = T3.EMPLOYEEID
LEFT JOIN WORKER.TRAINING T4
ON T3.TRAININGID = T4.TRAININGID
ORDER BY T1.EMPLOYEEID, T1.DEPARTMENTID, T3.TRAININGID